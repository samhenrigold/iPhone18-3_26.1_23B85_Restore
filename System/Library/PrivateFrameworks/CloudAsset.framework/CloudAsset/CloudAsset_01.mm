uint64_t sub_22E6E1B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  sub_22E6D376C(v9);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v10);
  v12 = v26 - v11;
  sub_22E6D3568(a3, v26 - v11, &qword_27DA6C9A8, &qword_22E72C030);
  type metadata accessor for TaskPriority();
  v13 = sub_22E6E3FC4(v12);

  if (v13 == 1)
  {
    sub_22E6D3510(v12, &qword_27DA6C9A8, &qword_22E72C030);
  }

  else
  {
    TaskPriority.rawValue.getter();
    v14 = sub_22E6E3EE0();
    v15(v14);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      sub_22E6E3F04();
      v24 = swift_task_create();

      sub_22E6D3510(a3, &qword_27DA6C9A8, &qword_22E72C030);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22E6D3510(a3, &qword_27DA6C9A8, &qword_22E72C030);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  sub_22E6E3F04();
  return swift_task_create();
}

uint64_t sub_22E6E1E8C()
{
  sub_22E6E3D08();
  v0 = swift_task_alloc();
  v1 = sub_22E6E3C38(v0);
  *v1 = v2;
  v1[1] = sub_22E6E1F30;

  return AssetStreamHandle.inputStream(for:)();
}

uint64_t sub_22E6E1F30()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v1 = *v0;
  sub_22E6E3C94();
  *v2 = v1;

  sub_22E6E3AD8();

  return v3();
}

unint64_t sub_22E6E2074()
{
  result = qword_27DA6C920;
  if (!qword_27DA6C920)
  {
    sub_22E6CF2AC(&qword_27DA6C5E0, &unk_22E7273C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C920);
  }

  return result;
}

uint64_t sub_22E6E20F0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22E6CF978();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22E6E2148(uint64_t a1, uint64_t a2)
{
  v3 = sub_22E6D3778();
  v4(v3);
  sub_22E6CF978();
  v5 = sub_22E6D368C();
  v6(v5);
  return a2;
}

uint64_t sub_22E6E21A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22E6D3778();
  v4(v3);
  sub_22E6CF978();
  v5 = sub_22E6D368C();
  v6(v5);
  return a2;
}

unint64_t sub_22E6E21F8()
{
  result = qword_27DA6C938;
  if (!qword_27DA6C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C938);
  }

  return result;
}

uint64_t sub_22E6E224C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_22E6E2294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, NSURL *a3@<X8>)
{
  v4 = v3;
  URL._bridgeToObjectiveC()(a3);
  v8 = v7;
  if (a2)
  {
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [v4 initWithURL:v8 options:v9.super.isa];

  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 8))(a1, v11);
  return v10;
}

uint64_t sub_22E6E2370(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22E6E2468;

  return v6(a1);
}

uint64_t sub_22E6E2468()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v1 = *v0;
  sub_22E6E3C94();
  *v2 = v1;

  sub_22E6E3AD8();

  return v3();
}

void *sub_22E6E254C(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_22E6CF1CC(&qword_27DA6CA28, &qword_22E727858);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_22E706AF0(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_22E6E2644(void *a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  (*(v7 + 32))(&a3[OBJC_IVAR____TtC10CloudAsset10PlayerItem_id], v9, v6);
  *&a3[OBJC_IVAR____TtC10CloudAsset10PlayerItem_resourceLoaderDelegate] = a2;
  v10 = type metadata accessor for PlayerItem(0);
  v27.receiver = a3;
  v27.super_class = v10;
  v11 = objc_msgSendSuper2(&v27, sel_initWithAsset_automaticallyLoadedAssetKeys_, a1, 0);
  v12 = qword_27DA6C480;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_22E6E3578(v14, qword_27DA6D870);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    (*(v7 + 16))(v9, v13 + OBJC_IVAR____TtC10CloudAsset10PlayerItem_id, v6);
    sub_22E6E224C(&qword_27DA6C948, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v7 + 8))(v9, v6);
    v23 = sub_22E706BF8(v20, v22, &v26);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_22E6C9000, v15, v16, "initialize PlayerItem with id %s", v18, 0xCu);
    sub_22E6CF2F4(v19);
    MEMORY[0x2318ED210](v19, -1, -1);
    MEMORY[0x2318ED210](v18, -1, -1);
  }

  else
  {
  }

  return v13;
}

id sub_22E6E2924(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for UTType();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22E6CF1CC(&qword_27DA6CA30, &unk_22E727860);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v20[3] = type metadata accessor for AssetStreamHandle(0);
  v20[4] = &protocol witness table for AssetStreamHandle;
  v11 = sub_22E6DA66C(v20);
  sub_22E6E2148(a1, v11);
  sub_22E6E3808(v20, &a4[OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_assetStreamHandle]);
  static UTType.data.getter();
  UTType.init(filenameExtension:conformingTo:)();
  sub_22E6E386C(v10, &a4[OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_type]);
  sub_22E6E38DC(0, &qword_27DA6CA38, 0x277CE6440);
  sub_22E6CF1CC(&qword_27DA6CA40, &unk_22E72C400);
  sub_22E6E391C();
  v12 = Dictionary.init(dictionaryLiteral:)();
  sub_22E6CF1CC(&qword_27DA6CA50, &unk_22E727870);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = v12;
  *&a4[OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_protectedTaskMapping] = v13;
  if (qword_27DA6C448 != -1)
  {
    swift_once();
  }

  v14 = _os_activity_create(&dword_22E6C9000, "asset-streaming/loading-request-handler", qword_27DA6CDA0, OS_ACTIVITY_FLAG_DEFAULT);
  sub_22E6CF1CC(&qword_27DA6CA58, &unk_22E727880);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = v14;
  *&a4[OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_protectedActivity] = v15;
  v19.receiver = a4;
  v19.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v19, sel_init);
  sub_22E6CF2F4(v20);
  return v16;
}

unint64_t sub_22E6E2BC0()
{
  result = qword_27DA6C968;
  if (!qword_27DA6C968)
  {
    sub_22E6CF2AC(&qword_27DA6C960, &qword_22E7273D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C968);
  }

  return result;
}

void sub_22E6E2C24(void *a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  *&a5[OBJC_IVAR____TtC10CloudAsset18AssetExportSession_delegate] = a4;
  v9 = a4;
  v10 = MEMORY[0x2318EC5C0](a2, a3);
  v12.receiver = a5;
  v12.super_class = type metadata accessor for AssetExportSession();
  v11 = objc_msgSendSuper2(&v12, sel_initWithAsset_presetName_, a1, v10);

  if (v11)
  {
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_22E6E2CD4()
{
  result = qword_27DA6C978;
  if (!qword_27DA6C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C978);
  }

  return result;
}

uint64_t sub_22E6E2D28(uint64_t a1)
{
  v1 = type metadata accessor for AssetStreamHandle(0);
  sub_22E6E3A38(v1);
  v2 = type metadata accessor for Asset(0);
  sub_22E6E3A38(v2);
  v3 = type metadata accessor for Credential(0);
  sub_22E6E3A38(v3);
  v4 = type metadata accessor for UUID();
  sub_22E6E3A38(v4);
  v5 = sub_22E6CF1CC(&qword_27DA6C9B8, &qword_22E727408);
  sub_22E6D376C(v5);
  v6 = swift_task_alloc();
  *(v17 + 16) = v6;
  *v6 = v17;
  v6[1] = sub_22E6E1F30;
  sub_22E6E3F68();

  return sub_22E6E0B34(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_22E6E2FF4(uint64_t a1)
{
  result = type metadata accessor for Asset(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Credential(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for AssetStreamHandle.RangeReadersCache();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22E6E30A8(uint64_t a1)
{
  result = type metadata accessor for Asset(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Credential(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for URL();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_22E6E31D0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22E6E31F4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22E6E3248(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_22E6E32A4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetStreamHandle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

__n128 sub_22E6E33BC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22E6E33D0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22E6E3410(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

unint64_t sub_22E6E3474()
{
  result = qword_27DA6C9C0;
  if (!qword_27DA6C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C9C0);
  }

  return result;
}

unint64_t sub_22E6E34CC()
{
  result = qword_27DA6C9C8;
  if (!qword_27DA6C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C9C8);
  }

  return result;
}

unint64_t sub_22E6E3524()
{
  result = qword_27DA6C9D0;
  if (!qword_27DA6C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C9D0);
  }

  return result;
}

uint64_t sub_22E6E3578(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_22E6E35B0(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_22E6E35C0(uint64_t a1, uint64_t a2)
{
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x2318EC630](3943982, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t *sub_22E6E3658(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_22E6E36BC()
{
  sub_22E6E3F34();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_22E6E3C38(v6);
  *v7 = v8;
  v7[1] = sub_22E6E1F30;

  return sub_22E6DDAC8(v2, v3, v4, v5);
}

uint64_t sub_22E6E3770()
{
  sub_22E6E3D08();
  v0 = swift_task_alloc();
  v1 = sub_22E6E3C38(v0);
  *v1 = v2;
  v3 = sub_22E6E3D14(v1);

  return v4(v3);
}

uint64_t sub_22E6E3808(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22E6E386C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6CF1CC(&qword_27DA6CA30, &unk_22E727860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E6E38DC(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_22E6E391C()
{
  result = qword_27DA6CA48;
  if (!qword_27DA6CA48)
  {
    sub_22E6E38DC(255, &qword_27DA6CA38, 0x277CE6440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CA48);
  }

  return result;
}

uint64_t sub_22E6E3A18(uint64_t a1)
{

  return swift_once();
}

void sub_22E6E3B00()
{

  JUMPOUT(0x2318ED210);
}

uint64_t sub_22E6E3BE8()
{

  return MEMORY[0x2821FF2B0](0x712D65646F636564, 0xEC00000065756575, v2, v1, v0, 0);
}

void sub_22E6E3C48()
{

  JUMPOUT(0x2318ED210);
}

uint64_t sub_22E6E3C74(uint64_t a1)
{

  return swift_once();
}

void sub_22E6E3CC8()
{

  JUMPOUT(0x2318ED210);
}

void sub_22E6E3CE4()
{

  JUMPOUT(0x2318ED210);
}

uint64_t sub_22E6E3D60()
{

  return swift_slowAlloc();
}

uint64_t sub_22E6E3D7C()
{
}

uint64_t sub_22E6E3D98(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_22E6E3DB4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return sub_22E706BF8(a1, a2, va);
}

uint64_t sub_22E6E3DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

uint64_t sub_22E6E3DE4()
{

  return swift_slowAlloc();
}

void sub_22E6E3E38(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_log_type_t a15)
{

  _os_log_impl(a1, v15, a15, a4, v16, 0x20u);
}

uint64_t sub_22E6E3E5C()
{
}

uint64_t sub_22E6E3E74(uint64_t a1)
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_22E6E3E8C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_22E706BF8(a1, a2, va);
}

uint64_t sub_22E6E3EA4()
{

  return swift_task_alloc();
}

uint64_t sub_22E6E3F84()
{
}

uint64_t sub_22E6E3FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return MEMORY[0x2821FCEB0](a1, v4, a3, a4, v5);
}

uint64_t sub_22E6E3FC4(uint64_t a1)
{

  return sub_22E6CF550(a1, 1, v1);
}

uint64_t sub_22E6E3FDC()
{
}

void sub_22E6E403C(uint64_t a1)
{
  sub_22E6E4350(319, &qword_27DA6CA70, type metadata accessor for CloudAssets_Signal.Event, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for Signal.Event(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Signal.Event(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Signal.Event(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_22E6E41B0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22E6E41CC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

void sub_22E6E4244(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_22E6E4350(319, &qword_27DA6CA98, type metadata accessor for CloudAssets_Asset, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22E6E4350(319, &qword_27DA6CAA0, type metadata accessor for CloudAssets_Credential, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22E6E4350(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22E6E441C(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_22E6E4350(319, &qword_27DA6CAB8, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22E6E4530(uint64_t a1)
{
  sub_22E6E4350(319, &qword_27DA6CAD0, type metadata accessor for CloudAssets_Asset, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      sub_22E6E4350(319, &qword_27DA6CAA0, type metadata accessor for CloudAssets_Credential, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22E6E4664(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_22E6E4350(319, &qword_27DA6CAE8, type metadata accessor for CloudAssets_Asset.ID, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22E6E4350(319, &qword_27DA6CAF0, type metadata accessor for CloudAssets_Asset.Protector, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22E6E47E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for UnknownStorage();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22E6E4884(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22E6E490C@<X0>(void *a1@<X8>)
{
  sub_22E6EB478(a1);
  *(v1 + 32) = xmmword_22E7263B0;
  *(v1 + 48) = xmmword_22E7263B0;
  type metadata accessor for CloudAssets_Asset.ID(0);
  return UnknownStorage.init()();
}

uint64_t sub_22E6E494C@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_22E7263B0;
  a1[1] = xmmword_22E7263B0;
  type metadata accessor for CloudAssets_Asset.Protector(0);
  return UnknownStorage.init()();
}

uint64_t sub_22E6E498C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for CloudAssets_Asset(0);
  UnknownStorage.init()();
  v1 = type metadata accessor for CloudAssets_Asset.ID(0);
  sub_22E6EB550(v1);
  type metadata accessor for CloudAssets_Asset.Protector(0);
  v2 = sub_22E6EB3B4();

  return sub_22E6CF58C(v2, v3, v4, v5);
}

uint64_t sub_22E6E4A00@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = xmmword_22E7263B0;
  *(a1 + 24) = xmmword_22E7263B0;
  type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(0);
  UnknownStorage.init()();
  type metadata accessor for CloudAssets_Credential(0);
  v1 = sub_22E6EB3B4();

  return sub_22E6CF58C(v1, v2, v3, v4);
}

uint64_t sub_22E6E4A74@<X0>(void *a1@<X8>)
{
  sub_22E6EB478(a1);
  type metadata accessor for CloudAssets_AssetStreamHandle(0);
  UnknownStorage.init()();
  v1 = type metadata accessor for CloudAssets_Asset(0);
  sub_22E6EB550(v1);
  type metadata accessor for CloudAssets_Credential(0);
  v2 = sub_22E6EB3B4();

  return sub_22E6CF58C(v2, v3, v4, v5);
}

uint64_t sub_22E6E4AE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22E6CF1CC(&qword_27DA6C930, &unk_22E727910);
  sub_22E6D376C(v3);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for CloudAssets_Credential(0);
  sub_22E6EB1A8(v1 + *(v7 + 32));
  v8 = type metadata accessor for Google_Protobuf_Timestamp();
  sub_22E6EB438(v6, 1, v8);
  if (!v9)
  {
    return (*(*(v8 - 8) + 32))(a1, v6, v8);
  }

  Google_Protobuf_Timestamp.init()();
  result = sub_22E6EB438(v6, 1, v8);
  if (!v9)
  {
    return sub_22E6D3510(v6, &qword_27DA6C930, &unk_22E727910);
  }

  return result;
}

uint64_t sub_22E6E4C10@<X0>(void *a1@<X8>)
{
  sub_22E6EB478(a1);
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  type metadata accessor for CloudAssets_Credential(0);
  UnknownStorage.init()();
  type metadata accessor for Google_Protobuf_Timestamp();
  v3 = sub_22E6EB3B4();

  return sub_22E6CF58C(v3, v4, v5, v6);
}

BOOL sub_22E6E4C80(_BOOL8 result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_22E6E4CA4(uint64_t a1@<X8>)
{
  sub_22E6E4C6C();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_22E6E4CF4(uint64_t a1@<X8>)
{
  sub_22E6E4C6C();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

BOOL sub_22E6E4D2C@<W0>(_BOOL8 *a1@<X8>)
{
  result = sub_22E6E4C80(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

Swift::Int sub_22E6E4D68(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  sub_22E6E4F5C();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_22E6E4DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6EB204();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int sub_22E6E4E20(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  sub_22E6E4F5C();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_22E6E4E9C()
{
  result = qword_27DA6CB18;
  if (!qword_27DA6CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CB18);
  }

  return result;
}

unint64_t sub_22E6E4EF4()
{
  result = qword_27DA6CB20;
  if (!qword_27DA6CB20)
  {
    sub_22E6CF2AC(&qword_27DA6CB28, qword_22E727A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CB20);
  }

  return result;
}

unint64_t sub_22E6E4F5C()
{
  result = qword_27DA6CB30;
  if (!qword_27DA6CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CB30);
  }

  return result;
}

unint64_t sub_22E6E4FB4()
{
  result = qword_27DA6CB38;
  if (!qword_27DA6CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CB38);
  }

  return result;
}

uint64_t sub_22E6E5008@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  type metadata accessor for CloudAssets_Signal.Event(0);
  return UnknownStorage.init()();
}

uint64_t sub_22E6E504C@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for CloudAssets_Signal(0);
  return UnknownStorage.init()();
}

uint64_t sub_22E6E508C()
{
  v0 = type metadata accessor for _NameMap();
  sub_22E6E3658(v0, qword_27DA797E0);
  sub_22E6E3578(v0, qword_27DA797E0);
  sub_22E6CF1CC(&qword_27DA6CC58, &qword_22E728630);
  v1 = (sub_22E6CF1CC(&qword_27DA6CC60, &qword_22E728638) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22E727890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "protector";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "size";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_22E6E5290()
{
  sub_22E6EB2C0();
  while (1)
  {
    result = sub_22E6EB4A8();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_22E6EB3E0();
        dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
        break;
      case 2:
        v7 = sub_22E6EB2AC();
        sub_22E6E53C0(v7, v8, v9, v10);
        break;
      case 1:
        v3 = sub_22E6EB2AC();
        sub_22E6E530C(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_22E6E530C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CloudAssets_Asset(0);
  type metadata accessor for CloudAssets_Asset.ID(0);
  sub_22E6EA83C(&qword_27DA6C678, type metadata accessor for CloudAssets_Asset.ID, &unk_22E7285B8);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_22E6E53C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CloudAssets_Asset(0);
  type metadata accessor for CloudAssets_Asset.Protector(0);
  sub_22E6EA83C(&qword_27DA6C6A8, type metadata accessor for CloudAssets_Asset.Protector, &unk_22E728540);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_22E6E5474()
{
  sub_22E6EB2D4();
  sub_22E6EB3D4();
  result = sub_22E6E5504(v2, v3, v4, v5);
  if (!v0)
  {
    v7 = sub_22E6EB340();
    sub_22E6E56D8(v7, v8, v9, v10);
    if (*v1)
    {
      sub_22E6EB3C8();
      sub_22E6EB3D4();
      dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)();
    }

    type metadata accessor for CloudAssets_Asset(0);
    return sub_22E6EB31C();
  }

  return result;
}

uint64_t sub_22E6E5504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_22E6CF1CC(&qword_27DA6C738, &unk_22E727970);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for CloudAssets_Asset.ID(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CloudAssets_Asset(0);
  sub_22E6EB1A8(a1 + *(v11 + 24));
  if (sub_22E6CF550(v7, 1, v8) == 1)
  {
    return sub_22E6D3510(v7, &qword_27DA6C738, &unk_22E727970);
  }

  sub_22E6EB0F4(v7);
  sub_22E6EA83C(&qword_27DA6C678, type metadata accessor for CloudAssets_Asset.ID, &unk_22E7285B8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_22E6EB150(v10, type metadata accessor for CloudAssets_Asset.ID);
}

uint64_t sub_22E6E56D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_22E6CF1CC(&qword_27DA6C740, &unk_22E726B00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for CloudAssets_Asset.Protector(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CloudAssets_Asset(0);
  sub_22E6EB1A8(a1 + *(v11 + 28));
  if (sub_22E6CF550(v7, 1, v8) == 1)
  {
    return sub_22E6D3510(v7, &qword_27DA6C740, &unk_22E726B00);
  }

  sub_22E6EB0F4(v7);
  sub_22E6EA83C(&qword_27DA6C6A8, type metadata accessor for CloudAssets_Asset.Protector, &unk_22E728540);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_22E6EB150(v10, type metadata accessor for CloudAssets_Asset.Protector);
}

void sub_22E6E58AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22E6EB570();
  v14 = v13;
  v16 = v15;
  v62 = type metadata accessor for CloudAssets_Asset.Protector(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v17);
  sub_22E6CF9C8();
  v58 = (v19 - v18);
  v20 = sub_22E6CF1CC(&qword_27DA6C740, &unk_22E726B00);
  sub_22E6D376C(v20);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v21);
  sub_22E6EB4DC();
  v59 = v22;
  v60 = sub_22E6CF1CC(&qword_27DA6CC68, &qword_22E728640);
  sub_22E6CF978();
  sub_22E6D374C();
  MEMORY[0x28223BE20](v23);
  sub_22E6EB4DC();
  v63 = v24;
  type metadata accessor for CloudAssets_Asset.ID(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v25);
  sub_22E6CF9C8();
  v28 = v27 - v26;
  v29 = sub_22E6CF1CC(&qword_27DA6C738, &unk_22E727970);
  sub_22E6D376C(v29);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v30);
  v32 = &v57 - v31;
  v33 = sub_22E6CF1CC(&qword_27DA6CC70, &qword_22E728648) - 8;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v34);
  v35 = sub_22E6EB4E8();
  v61 = type metadata accessor for CloudAssets_Asset(v35);
  v36 = *(v61 + 24);
  v37 = *(v33 + 56);
  v64 = v16;
  sub_22E6EB1A8(v16 + v36);
  sub_22E6EB1A8(v14 + v36);
  sub_22E6EB2FC(v12);
  if (v38)
  {
    sub_22E6EB2FC(v12 + v37);
    if (v38)
    {
      sub_22E6D3510(v12, &qword_27DA6C738, &unk_22E727970);
      goto LABEL_11;
    }

LABEL_9:
    v39 = &qword_27DA6CC70;
    v40 = &qword_22E728648;
    v41 = v12;
LABEL_28:
    sub_22E6D3510(v41, v39, v40);
    goto LABEL_29;
  }

  sub_22E6EB1A8(v12);
  sub_22E6EB2FC(v12 + v37);
  if (v38)
  {
    sub_22E6EB150(v32, type metadata accessor for CloudAssets_Asset.ID);
    goto LABEL_9;
  }

  sub_22E6EB0F4(v12 + v37);
  v42 = sub_22E6E6444();
  sub_22E6EB150(v28, type metadata accessor for CloudAssets_Asset.ID);
  sub_22E6EB150(v32, type metadata accessor for CloudAssets_Asset.ID);
  sub_22E6D3510(v12, &qword_27DA6C738, &unk_22E727970);
  if ((v42 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_11:
  v43 = *(v61 + 28);
  v44 = *(v60 + 48);
  v46 = v63;
  v45 = v64;
  sub_22E6EB588(v64 + v43);
  sub_22E6EB588(v14 + v43);
  sub_22E6EB438(v46, 1, v62);
  if (v38)
  {
    sub_22E6EB2FC(v46 + v44);
    if (v38)
    {
      sub_22E6D3510(v46, &qword_27DA6C740, &unk_22E726B00);
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v50 = v59;
  sub_22E6EB1A8(v46);
  sub_22E6EB2FC(v46 + v44);
  if (v51)
  {
    sub_22E6EB150(v50, type metadata accessor for CloudAssets_Asset.Protector);
LABEL_21:
    v39 = &qword_27DA6CC68;
    v40 = &qword_22E728640;
LABEL_27:
    v41 = v46;
    goto LABEL_28;
  }

  v52 = v46 + v44;
  v53 = v58;
  sub_22E6EB0F4(v52);
  if ((MEMORY[0x2318EC160](*v50, v50[1], *v53, v53[1]) & 1) == 0 || (MEMORY[0x2318EC160](v50[2], v50[3], v53[2], v53[3]) & 1) == 0)
  {
    sub_22E6EB150(v53, type metadata accessor for CloudAssets_Asset.Protector);
    sub_22E6EB150(v50, type metadata accessor for CloudAssets_Asset.Protector);
    v39 = &qword_27DA6C740;
    v40 = &unk_22E726B00;
    goto LABEL_27;
  }

  type metadata accessor for UnknownStorage();
  sub_22E6EB280();
  sub_22E6EA83C(v54, v55, MEMORY[0x277D216D0]);
  v56 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_22E6EB150(v53, type metadata accessor for CloudAssets_Asset.Protector);
  sub_22E6EB150(v50, type metadata accessor for CloudAssets_Asset.Protector);
  sub_22E6D3510(v46, &qword_27DA6C740, &unk_22E726B00);
  if ((v56 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_16:
  if (*v45 != *v14)
  {
LABEL_29:
    v49 = 0;
    goto LABEL_30;
  }

  type metadata accessor for UnknownStorage();
  sub_22E6EB280();
  sub_22E6EA83C(v47, v48, MEMORY[0x277D216D0]);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
LABEL_30:
  sub_22E6EB4FC(v49);
  sub_22E6EB538();
}

uint64_t sub_22E6E5E78(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6EA83C(&qword_27DA6CC28, type metadata accessor for CloudAssets_Asset, &unk_22E7282B0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22E6E5F18(uint64_t a1)
{
  v2 = sub_22E6EA83C(&qword_27DA6C6C8, type metadata accessor for CloudAssets_Asset, &unk_22E7284C8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22E6E5FE0(uint64_t a1, uint64_t a2)
{
  sub_22E6EA83C(&qword_27DA6C6C8, type metadata accessor for CloudAssets_Asset, &unk_22E7284C8);

  return Message.hash(into:)();
}

uint64_t sub_22E6E607C()
{
  v0 = type metadata accessor for _NameMap();
  sub_22E6E3658(v0, qword_27DA79808);
  sub_22E6E3578(v0, qword_27DA79808);
  sub_22E6CF1CC(&qword_27DA6CC58, &qword_22E728630);
  v1 = (sub_22E6CF1CC(&qword_27DA6CC60, &qword_22E728638) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22E7278A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "partition";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "owner_id";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "signature";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "reference_signature";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_22E6E62CC()
{
  sub_22E6EB2C0();
  while (1)
  {
    result = sub_22E6EB4A8();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        sub_22E6EB3E0();
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
      case 3:
      case 4:
        sub_22E6EB3E0();
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22E6E6360()
{
  sub_22E6EB2D4();
  sub_22E6EB2E8();
  if (!v1 || (sub_22E6EB298(), result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v0))
  {
    sub_22E6EB2E8();
    if (!v3 || (sub_22E6EB298(), result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v0))
    {
      v4 = sub_22E6EB48C();
      if (sub_22E6DBB80(v4, v5) || (sub_22E6EB48C(), sub_22E6EB298(), result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)(), !v0))
      {
        v6 = sub_22E6EB48C();
        if (sub_22E6DBB80(v6, v7) || (sub_22E6EB48C(), sub_22E6EB298(), result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)(), !v0))
        {
          type metadata accessor for CloudAssets_Asset.ID(0);
          return sub_22E6EB31C();
        }
      }
    }
  }

  return result;
}

uint64_t sub_22E6E6444()
{
  sub_22E6EB450();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v4 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (MEMORY[0x2318EC160](v1[4], v1[5], v0[4], v0[5]) & 1) == 0 || (MEMORY[0x2318EC160](v1[6], v1[7], v0[6], v0[7]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CloudAssets_Asset.ID(0);
  type metadata accessor for UnknownStorage();
  sub_22E6EB280();
  v7 = sub_22E6EA83C(v5, v6, MEMORY[0x277D216D0]);
  return sub_22E6EB380(v7) & 1;
}

uint64_t sub_22E6E6548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22E6E65BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22E6E6684(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6EA83C(&qword_27DA6CC18, type metadata accessor for CloudAssets_Asset.ID, &unk_22E7281C0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22E6E6724(uint64_t a1)
{
  v2 = sub_22E6EA83C(&qword_27DA6C678, type metadata accessor for CloudAssets_Asset.ID, &unk_22E7285B8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22E6E67EC(uint64_t a1, uint64_t a2)
{
  sub_22E6EA83C(&qword_27DA6C678, type metadata accessor for CloudAssets_Asset.ID, &unk_22E7285B8);

  return Message.hash(into:)();
}

uint64_t sub_22E6E6894(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x2318EC630](a2, a3);
  *a4 = 0xD000000000000011;
  *a5 = 0x800000022E72CFA0;
  return result;
}

uint64_t sub_22E6E6900()
{
  v0 = type metadata accessor for _NameMap();
  sub_22E6E3658(v0, qword_27DA79830);
  sub_22E6E3578(v0, qword_27DA79830);
  sub_22E6CF1CC(&qword_27DA6CC58, &qword_22E728630);
  v1 = (sub_22E6CF1CC(&qword_27DA6CC60, &qword_22E728638) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22E7278B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "security_key";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "privacy_key";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_22E6E6AC8()
{
  sub_22E6EB2C0();
  while (1)
  {
    result = sub_22E6EB4A8();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      sub_22E6EB3E0();
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t sub_22E6E6B24()
{
  v2 = *v0;
  v3 = v0[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v4 = v2;
      v5 = v2 >> 32;
      goto LABEL_6;
    case 2uLL:
      v4 = *(v2 + 16);
      v5 = *(v2 + 24);
LABEL_6:
      if (v4 != v5)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      sub_22E6EB298();
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (!v1)
      {
LABEL_8:
        v7 = v0[2];
        v8 = v0[3];
        switch(v8 >> 62)
        {
          case 1uLL:
            v9 = v7;
            v10 = v7 >> 32;
            goto LABEL_13;
          case 2uLL:
            v9 = *(v7 + 16);
            v10 = *(v7 + 24);
LABEL_13:
            if (v9 != v10)
            {
              goto LABEL_14;
            }

            goto LABEL_15;
          case 3uLL:
            goto LABEL_15;
          default:
            if ((v8 & 0xFF000000000000) == 0)
            {
              goto LABEL_15;
            }

LABEL_14:
            sub_22E6EB298();
            result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
            if (!v1)
            {
LABEL_15:
              type metadata accessor for CloudAssets_Asset.Protector(0);
              result = sub_22E6EB31C();
            }

            break;
        }
      }

      return result;
  }
}

uint64_t sub_22E6E6C3C()
{
  sub_22E6EB450();
  if ((MEMORY[0x2318EC160](*v2, v1[1], *v0, v0[1]) & 1) == 0 || (MEMORY[0x2318EC160](v1[2], v1[3], v0[2], v0[3]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CloudAssets_Asset.Protector(0);
  type metadata accessor for UnknownStorage();
  sub_22E6EB280();
  v5 = sub_22E6EA83C(v3, v4, MEMORY[0x277D216D0]);
  return sub_22E6EB380(v5) & 1;
}

uint64_t sub_22E6E6D54(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6EA83C(&qword_27DA6CC20, type metadata accessor for CloudAssets_Asset.Protector, &unk_22E7280D0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22E6E6DF4(uint64_t a1)
{
  v2 = sub_22E6EA83C(&qword_27DA6C6A8, type metadata accessor for CloudAssets_Asset.Protector, &unk_22E728540);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22E6E6EBC(uint64_t a1, uint64_t a2)
{
  sub_22E6EA83C(&qword_27DA6C6A8, type metadata accessor for CloudAssets_Asset.Protector, &unk_22E728540);

  return Message.hash(into:)();
}

uint64_t sub_22E6E6F3C()
{
  v0 = type metadata accessor for _NameMap();
  sub_22E6E3658(v0, qword_27DA79848);
  sub_22E6E3578(v0, qword_27DA79848);
  sub_22E6CF1CC(&qword_27DA6CC58, &qword_22E728630);
  v1 = (sub_22E6CF1CC(&qword_27DA6CC60, &qword_22E728638) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22E7278A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "tenant_name";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "requestor_id";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "access_token";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "expiration_date";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_22E6E717C()
{
  sub_22E6EB2C0();
  while (1)
  {
    result = sub_22E6EB4A8();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        sub_22E6EB3E0();
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
      case 4:
        v3 = sub_22E6EB2AC();
        sub_22E6E720C(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22E6E720C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CloudAssets_Credential(0);
  type metadata accessor for Google_Protobuf_Timestamp();
  sub_22E6EA83C(&qword_27DA6CC50, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_22E6E72C0()
{
  sub_22E6EB2D4();
  sub_22E6EB2E8();
  if (!v1 || (sub_22E6EB298(), result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v0))
  {
    sub_22E6EB2E8();
    if (!v3 || (sub_22E6EB298(), result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v0))
    {
      sub_22E6EB2E8();
      if (!v4 || (sub_22E6EB298(), result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v0))
      {
        v5 = sub_22E6EB340();
        result = sub_22E6E737C(v5, v6, v7, v8);
        if (!v0)
        {
          type metadata accessor for CloudAssets_Credential(0);
          return sub_22E6EB31C();
        }
      }
    }
  }

  return result;
}

uint64_t sub_22E6E737C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_22E6CF1CC(&qword_27DA6C930, &unk_22E727910);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Google_Protobuf_Timestamp();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CloudAssets_Credential(0);
  sub_22E6EB1A8(a1 + *(v12 + 32));
  if (sub_22E6CF550(v7, 1, v8) == 1)
  {
    return sub_22E6D3510(v7, &qword_27DA6C930, &unk_22E727910);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_22E6EA83C(&qword_27DA6CC50, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return (*(v9 + 8))(v11, v8);
}

void sub_22E6E7588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22E6EB570();
  v19 = v18;
  v21 = v20;
  v22 = type metadata accessor for Google_Protobuf_Timestamp();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  sub_22E6CF9C8();
  v26 = v25 - v24;
  v27 = sub_22E6CF1CC(&qword_27DA6C930, &unk_22E727910);
  sub_22E6D376C(v27);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v28);
  v30 = &v47 - v29;
  v31 = sub_22E6CF1CC(&qword_27DA6CC80, &qword_22E728650);
  sub_22E6CF978();
  sub_22E6D374C();
  MEMORY[0x28223BE20](v32);
  v34 = &v47 - v33;
  v35 = *v21 == *v19 && v21[1] == v19[1];
  if (!v35 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  v36 = v21[2] == v19[2] && v21[3] == v19[3];
  if (!v36 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  v37 = v21[4] == v19[4] && v21[5] == v19[5];
  if (!v37 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  v48 = v23;
  v47 = type metadata accessor for CloudAssets_Credential(0);
  v38 = *(v47 + 32);
  v39 = *(v31 + 48);
  sub_22E6EB5A0(v21 + v38);
  sub_22E6EB5A0(v19 + v38);
  sub_22E6EB438(v34, 1, v22);
  if (v35)
  {
    sub_22E6EB438(&v34[v39], 1, v22);
    if (v35)
    {
      sub_22E6D3510(v34, &qword_27DA6C930, &unk_22E727910);
LABEL_28:
      type metadata accessor for UnknownStorage();
      sub_22E6EB280();
      sub_22E6EA83C(v45, v46, MEMORY[0x277D216D0]);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  sub_22E6EB1A8(v34);
  sub_22E6EB438(&v34[v39], 1, v22);
  if (v40)
  {
    (*(v48 + 8))(v30, v22);
LABEL_24:
    sub_22E6D3510(v34, &qword_27DA6CC80, &qword_22E728650);
    goto LABEL_25;
  }

  v42 = v48;
  (*(v48 + 32))(v26, &v34[v39], v22);
  sub_22E6EA83C(&qword_27DA6CC88, MEMORY[0x277D21570], MEMORY[0x277D21578]);
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = *(v42 + 8);
  v44(v26, v22);
  v44(v30, v22);
  sub_22E6D3510(v34, &qword_27DA6C930, &unk_22E727910);
  if (v43)
  {
    goto LABEL_28;
  }

LABEL_25:
  v41 = 0;
LABEL_26:
  sub_22E6EB4FC(v41);
  sub_22E6EB538();
}

uint64_t sub_22E6E7988(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6EA83C(&qword_27DA6CC48, type metadata accessor for CloudAssets_Credential, &unk_22E727FE0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22E6E7A28(uint64_t a1)
{
  v2 = sub_22E6EA83C(&qword_27DA6CBA0, type metadata accessor for CloudAssets_Credential, &unk_22E7282E8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22E6E7AF0(uint64_t a1, uint64_t a2)
{
  sub_22E6EA83C(&qword_27DA6CBA0, type metadata accessor for CloudAssets_Credential, &unk_22E7282E8);

  return Message.hash(into:)();
}

uint64_t sub_22E6E7B70()
{
  v0 = type metadata accessor for _NameMap();
  sub_22E6E3658(v0, qword_27DA79860);
  sub_22E6E3578(v0, qword_27DA79860);
  sub_22E6CF1CC(&qword_27DA6CC58, &qword_22E728630);
  v1 = (sub_22E6CF1CC(&qword_27DA6CC60, &qword_22E728638) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22E7278A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "assets";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "storage_reference";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "credential";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "storage_reference_signature";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_22E6E7DC0()
{
  sub_22E6EB2C0();
  while (1)
  {
    result = sub_22E6EB4A8();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = sub_22E6EB2AC();
        sub_22E6E8860(v3, v4, v5, v6, v7, &qword_27DA6C6C8, v8, v9);
        break;
      case 2:
      case 4:
        sub_22E6EB3E0();
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        break;
      case 3:
        v10 = sub_22E6EB2AC();
        sub_22E6E7EBC(v10, v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22E6E7EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for CloudAssets_Credential(0);
  sub_22E6EB420();
  sub_22E6EA83C(v5, v6, &unk_22E7282E8);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_22E6E7F64()
{
  sub_22E6EB2D4();
  if (!*(*v0 + 16) || (type metadata accessor for CloudAssets_Asset(0), sub_22E6EA83C(&qword_27DA6C6C8, type metadata accessor for CloudAssets_Asset, &unk_22E7284C8), sub_22E6EB3C8(), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v4 = sub_22E6EB48C();
    if (sub_22E6DBB80(v4, v5) || (sub_22E6EB48C(), sub_22E6EB298(), result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)(), !v1))
    {
      v6 = sub_22E6EB340();
      result = sub_22E6E9CA0(v6, v7, v8, v9, v10, 3);
      if (!v1)
      {
        if (!sub_22E6DBB80(*(v2 + 24), *(v2 + 32)))
        {
          sub_22E6EB298();
          dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        }

        type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(0);
        return sub_22E6EB31C();
      }
    }
  }

  return result;
}

uint64_t sub_22E6E8374()
{
  type metadata accessor for UnknownStorage();
  sub_22E6CF978();
  v0 = sub_22E6EB498();

  return v1(v0);
}

uint64_t sub_22E6E83D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  type metadata accessor for UnknownStorage();
  sub_22E6CF978();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t sub_22E6E8474(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6EA83C(&qword_27DA6CC30, type metadata accessor for CloudAssets_SimultaneousDownloadableAssets, &unk_22E727EF0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22E6E8514(uint64_t a1)
{
  v2 = sub_22E6EA83C(&qword_27DA6C758, type metadata accessor for CloudAssets_SimultaneousDownloadableAssets, &unk_22E728450);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22E6E85DC(uint64_t a1, uint64_t a2)
{
  sub_22E6EA83C(&qword_27DA6C758, type metadata accessor for CloudAssets_SimultaneousDownloadableAssets, &unk_22E728450);

  return Message.hash(into:)();
}

uint64_t sub_22E6E865C()
{
  v0 = type metadata accessor for _NameMap();
  sub_22E6E3658(v0, qword_27DA79878);
  sub_22E6E3578(v0, qword_27DA79878);
  sub_22E6CF1CC(&qword_27DA6CC58, &qword_22E728630);
  v1 = (sub_22E6CF1CC(&qword_27DA6CC60, &qword_22E728638) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22E726B10;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "events";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_22E6E87C8()
{
  sub_22E6EB2C0();
  while (1)
  {
    result = sub_22E6EB4A8();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = sub_22E6EB2AC();
      sub_22E6E8860(v3, v4, v5, v6, v7, &qword_27DA6CB58, v8, v9);
    }
  }

  return result;
}

uint64_t sub_22E6E8860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  a5(0);
  sub_22E6EA83C(a6, a7, a8);
  return dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
}

uint64_t sub_22E6E88FC()
{
  sub_22E6EB2D4();
  if (!*(*v0 + 16) || (type metadata accessor for CloudAssets_Signal.Event(0), sub_22E6EA83C(&qword_27DA6CB58, type metadata accessor for CloudAssets_Signal.Event, &unk_22E727CA8), sub_22E6EB3C8(), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    type metadata accessor for CloudAssets_Signal(0);
    return sub_22E6EB31C();
  }

  return result;
}

uint64_t sub_22E6E8A68()
{
  type metadata accessor for UnknownStorage();
  sub_22E6CF978();
  v0 = sub_22E6EB498();

  return v1(v0);
}

uint64_t sub_22E6E8ACC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  type metadata accessor for UnknownStorage();
  sub_22E6CF978();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t sub_22E6E8B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6EA83C(&qword_27DA6CC40, type metadata accessor for CloudAssets_Signal, &unk_22E727E00);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22E6E8C08(uint64_t a1)
{
  v2 = sub_22E6EA83C(&qword_27DA6CB78, type metadata accessor for CloudAssets_Signal, &unk_22E728360);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22E6E8CD0(uint64_t a1, uint64_t a2)
{
  sub_22E6EA83C(&qword_27DA6CB78, type metadata accessor for CloudAssets_Signal, &unk_22E728360);

  return Message.hash(into:)();
}

uint64_t sub_22E6E8D50()
{
  v0 = type metadata accessor for _NameMap();
  sub_22E6E3658(v0, qword_27DA79890);
  sub_22E6E3578(v0, qword_27DA79890);
  sub_22E6CF1CC(&qword_27DA6CC58, &qword_22E728630);
  v1 = (sub_22E6CF1CC(&qword_27DA6CC60, &qword_22E728638) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22E7278B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "STORAGE_CONTAINER_UPLOAD_START";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ALL_UPLOADS_FINISH";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_22E6E8F3C()
{
  result = MEMORY[0x2318EC630](0x746E6576452ELL, 0xE600000000000000);
  qword_27DA798A8 = 0xD000000000000012;
  unk_27DA798B0 = 0x800000022E72D010;
  return result;
}

uint64_t sub_22E6E8FA4()
{
  v0 = type metadata accessor for _NameMap();
  sub_22E6E3658(v0, qword_27DA798B8);
  sub_22E6E3578(v0, qword_27DA798B8);
  sub_22E6CF1CC(&qword_27DA6CC58, &qword_22E728630);
  v1 = (sub_22E6CF1CC(&qword_27DA6CC60, &qword_22E728638) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22E7278B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "container_index";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_22E6E9174()
{
  sub_22E6EB2C0();
  while (1)
  {
    result = sub_22E6EB4A8();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_22E6EB3E0();
      dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
    }

    else if (result == 1)
    {
      v3 = sub_22E6EB2AC();
      sub_22E6E91D8(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_22E6E9240()
{
  sub_22E6EB2D4();
  if (!*v0 || (sub_22E6EB204(), sub_22E6EB3C8(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    if (!*(v2 + 16) || (sub_22E6EB3C8(), sub_22E6EB3D4(), result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v1))
    {
      type metadata accessor for CloudAssets_Signal.Event(0);
      return sub_22E6EB31C();
    }
  }

  return result;
}

uint64_t sub_22E6E92F8(uint64_t a1)
{
  sub_22E6EB450();
  v5 = *v3;
  v6 = *v4;
  if (*(v3 + 8))
  {
    v5 = *v3 != 0;
  }

  if (*(v4 + 8) == 1)
  {
    if (v6)
    {
      if (v5 != 1)
      {
        return 0;
      }
    }

    else if (v5)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  if (*(v2 + 16) == *(v1 + 16))
  {
    type metadata accessor for CloudAssets_Signal.Event(0);
    type metadata accessor for UnknownStorage();
    sub_22E6EB280();
    v9 = sub_22E6EA83C(v7, v8, MEMORY[0x277D216D0]);
    return sub_22E6EB380(v9) & 1;
  }

  return 0;
}

uint64_t sub_22E6E93F0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v7 = *a4;

  return v7;
}

uint64_t sub_22E6E9478(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6EA83C(&qword_27DA6CC98, type metadata accessor for CloudAssets_Signal.Event, &unk_22E727C70);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22E6E9518(uint64_t a1)
{
  v2 = sub_22E6EA83C(&qword_27DA6CB58, type metadata accessor for CloudAssets_Signal.Event, &unk_22E727CA8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22E6E95E0(uint64_t a1, uint64_t a2)
{
  sub_22E6EA83C(&qword_27DA6CB58, type metadata accessor for CloudAssets_Signal.Event, &unk_22E727CA8);

  return Message.hash(into:)();
}

uint64_t sub_22E6E9660()
{
  v0 = type metadata accessor for _NameMap();
  sub_22E6E3658(v0, qword_27DA798D0);
  sub_22E6E3578(v0, qword_27DA798D0);
  sub_22E6CF1CC(&qword_27DA6CC58, &qword_22E728630);
  v1 = (sub_22E6CF1CC(&qword_27DA6CC60, &qword_22E728638) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22E7278A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "asset";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "credential";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "type";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "applicationID";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_22E6E98A0()
{
  sub_22E6EB2C0();
  while (1)
  {
    result = sub_22E6EB4A8();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = sub_22E6EB2AC();
        sub_22E6E994C(v3, v4, v5, v6);
        break;
      case 2:
        v7 = sub_22E6EB2AC();
        sub_22E6E7EBC(v7, v8, v9, v10, v11);
        break;
      case 3:
      case 4:
        sub_22E6EB3E0();
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22E6E994C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CloudAssets_AssetStreamHandle(0);
  type metadata accessor for CloudAssets_Asset(0);
  sub_22E6EA83C(&qword_27DA6C6C8, type metadata accessor for CloudAssets_Asset, &unk_22E7284C8);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_22E6E9A00()
{
  sub_22E6EB2D4();
  sub_22E6EB3D4();
  result = sub_22E6E9ACC(v1, v2, v3, v4);
  if (!v0)
  {
    v6 = sub_22E6EB340();
    sub_22E6E9CA0(v6, v7, v8, v9, v10, 2);
    sub_22E6EB2E8();
    if (v11)
    {
      sub_22E6EB298();
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    sub_22E6EB2E8();
    if (v12)
    {
      sub_22E6EB298();
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    type metadata accessor for CloudAssets_AssetStreamHandle(0);
    return sub_22E6EB31C();
  }

  return result;
}

uint64_t sub_22E6E9ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_22E6CF1CC(&unk_27DA6C910, &unk_22E726D20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for CloudAssets_Asset(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CloudAssets_AssetStreamHandle(0);
  sub_22E6EB1A8(a1 + *(v11 + 28));
  if (sub_22E6CF550(v7, 1, v8) == 1)
  {
    return sub_22E6D3510(v7, &unk_27DA6C910, &unk_22E726D20);
  }

  sub_22E6EB0F4(v7);
  sub_22E6EA83C(&qword_27DA6C6C8, type metadata accessor for CloudAssets_Asset, &unk_22E7284C8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_22E6EB150(v10, type metadata accessor for CloudAssets_Asset);
}

uint64_t sub_22E6E9CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v21[0] = a6;
  v21[1] = a3;
  v21[3] = a4;
  v8 = sub_22E6CF1CC(&qword_27DA6C7A8, &unk_22E7273B0);
  sub_22E6D376C(v8);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v9);
  v11 = v21 - v10;
  v12 = type metadata accessor for CloudAssets_Credential(0);
  sub_22E6CF978();
  MEMORY[0x28223BE20](v13);
  sub_22E6CF9C8();
  v16 = v15 - v14;
  v17 = a5(0);
  sub_22E6EB1A8(a1 + *(v17 + 32));
  if (sub_22E6CF550(v11, 1, v12) == 1)
  {
    return sub_22E6D3510(v11, &qword_27DA6C7A8, &unk_22E7273B0);
  }

  sub_22E6EB0F4(v11);
  sub_22E6EB420();
  sub_22E6EA83C(v19, v20, &unk_22E7282E8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_22E6EB150(v16, type metadata accessor for CloudAssets_Credential);
}

Swift::Int sub_22E6EA32C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  sub_22E6EA83C(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_22E6EA3D4()
{
  type metadata accessor for UnknownStorage();
  sub_22E6CF978();
  v0 = sub_22E6EB498();

  return v1(v0);
}

uint64_t sub_22E6EA438(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  type metadata accessor for UnknownStorage();
  sub_22E6CF978();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t sub_22E6EA4D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6EA83C(&qword_27DA6CC38, type metadata accessor for CloudAssets_AssetStreamHandle, &unk_22E727B80);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22E6EA574@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = sub_22E6E3578(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_22E6EA610(uint64_t a1)
{
  v2 = sub_22E6EA83C(&qword_27DA6C928, type metadata accessor for CloudAssets_AssetStreamHandle, &unk_22E7283D8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22E6EA6D8(uint64_t a1, uint64_t a2)
{
  sub_22E6EA83C(&qword_27DA6C928, type metadata accessor for CloudAssets_AssetStreamHandle, &unk_22E7283D8);

  return Message.hash(into:)();
}

Swift::Int sub_22E6EA754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_22E6EA83C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22E6EB0F4(uint64_t a1)
{
  sub_22E6EB450();
  v3(0);
  sub_22E6CF978();
  (*(v4 + 32))(v1, v2);
  return v1;
}

uint64_t sub_22E6EB150(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22E6CF978();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22E6EB1A8(uint64_t a1)
{
  sub_22E6EB450();
  sub_22E6CF1CC(v3, v4);
  sub_22E6CF978();
  (*(v5 + 16))(v1, v2);
  return v1;
}

unint64_t sub_22E6EB204()
{
  result = qword_27DA6CCA0;
  if (!qword_27DA6CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CCA0);
  }

  return result;
}

uint64_t sub_22E6EB31C()
{

  return MEMORY[0x28217E158](v2, v1, v0);
}

uint64_t sub_22E6EB36C@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_22E6EB380(uint64_t a1)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_22E6EB45C()
{

  return type metadata accessor for UnknownStorage();
}

void sub_22E6EB478(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
}

uint64_t sub_22E6EB4A8()
{

  return MEMORY[0x28217E258](v1, v0);
}

uint64_t sub_22E6EB4C0()
{

  return type metadata accessor for UnknownStorage();
}

uint64_t sub_22E6EB550(uint64_t a1)
{

  return sub_22E6CF58C(v1 + v2, 1, 1, a1);
}

uint64_t sub_22E6EB588(uint64_t a1)
{

  return sub_22E6EB1A8(a1);
}

uint64_t sub_22E6EB5A0(uint64_t a1)
{

  return sub_22E6EB1A8(a1);
}

uint64_t sub_22E6EB5B8()
{
  sub_22E6E3D08();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22E6EB668;
  sub_22E6ECB44();

  return sub_22E6EB764();
}

uint64_t sub_22E6EB668()
{
  sub_22E6E3D08();
  sub_22E6E3E08();
  v2 = *v1;
  sub_22E6E3C94();
  *v3 = v2;

  v5 = *(v2 + 8);
  if (!v0)
  {
    v4 = sub_22E6ECB44();
  }

  return v5(v4);
}

uint64_t sub_22E6EB764()
{
  v1[6] = v0;
  v2 = sub_22E6CF1CC(&qword_27DA6CCB0, &unk_22E72C3F0);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_22E6CF1CC(&qword_27DA6D950, qword_22E728670);
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[14] = v4;
  *v4 = v1;
  v4[1] = sub_22E6EB8F8;

  return AssetStreamHandle.inputStream(for:)();
}

uint64_t sub_22E6EB8F8()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  sub_22E6ECB14();
  *v3 = v2;
  v4 = *v1;
  sub_22E6E3C94();
  *v5 = v4;
  *(v6 + 120) = v0;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22E6EB9F4()
{
  sub_22E6E3F34();
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  type metadata accessor for Asset(0);
  v0[2] = Data._Representation.init(capacity:)();
  v0[3] = v5;
  (*(v4 + 16))(v1, v2, v3);
  sub_22E6ECB20(&qword_27DA6CCB8, &qword_27DA6D950, qword_22E728670);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  sub_22E6ECA88(&qword_27DA6CCC0, &qword_27DA6CCB0, &unk_22E72C3F0);
  swift_task_alloc();
  sub_22E6ECB74();
  v0[16] = v6;
  *v6 = v7;
  v8 = sub_22E6ECAE0(v6);

  return MEMORY[0x282200308](v8);
}

uint64_t sub_22E6EBB08()
{
  sub_22E6E3D08();

  sub_22E6E3AD8();

  return v0();
}

uint64_t sub_22E6EBB80()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v3 = v2;
  sub_22E6ECB14();
  *v4 = v3;
  v5 = *v1;
  sub_22E6E3C94();
  *v6 = v5;
  v3[17] = v0;

  if (v0)
  {
    (*(v3[8] + 8))(v3[9], v3[7]);
    sub_22E6CFBBC(v3[2], v3[3]);
  }

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22E6EBC9C()
{
  sub_22E6E3F34();
  if (v0[5] >> 60 == 15)
  {
    v1 = v0[13];
    v2 = v0[10];
    v3 = v0[11];
    (*(v0[8] + 8))(v0[9], v0[7]);
    (*(v3 + 8))(v1, v2);
    sub_22E6EC710(v0[4], v0[5]);

    v4 = sub_22E6ECB80();

    return v5(v4);
  }

  else
  {
    sub_22E6ECB44();
    Data.append(_:)();
    v7 = sub_22E6ECB44();
    sub_22E6EC710(v7, v8);
    sub_22E6ECA88(&qword_27DA6CCC0, &qword_27DA6CCB0, &unk_22E72C3F0);
    swift_task_alloc();
    sub_22E6ECB74();
    v0[16] = v9;
    *v9 = v10;
    v11 = sub_22E6ECAE0(v9);

    return MEMORY[0x282200308](v11);
  }
}

uint64_t sub_22E6EBDF8()
{
  sub_22E6E3D08();
  (*(v0[11] + 8))(v0[13], v0[10]);

  sub_22E6E3AD8();

  return v1();
}

uint64_t StreamHandle.readAll(in:)()
{
  sub_22E6ECBA4();
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  v1[9] = sub_22E6CF1CC(&qword_27DA6CCB0, &unk_22E72C3F0);
  sub_22E6ECB98();
  v1[10] = v4;
  v1[11] = swift_task_alloc();
  v1[12] = sub_22E6CF1CC(&qword_27DA6D950, qword_22E728670);
  sub_22E6ECB98();
  v1[13] = v5;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  sub_22E6ECB98();
  swift_task_alloc();
  sub_22E6ECB74();
  v1[16] = v6;
  *v6 = v7;
  v8 = sub_22E6ECB50(v6);

  return v9(v8);
}

uint64_t sub_22E6EC078()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  sub_22E6ECB14();
  *v3 = v2;
  v4 = *v1;
  sub_22E6E3C94();
  *v5 = v4;
  *(v6 + 136) = v0;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22E6EC174()
{
  sub_22E6E3F34();
  (*(v0[7] + 8))(v0[6]);
  v0[2] = Data._Representation.init(capacity:)();
  v0[3] = v1;
  v2 = sub_22E6ECB44();
  v3(v2);
  sub_22E6ECB20(&qword_27DA6CCB8, &qword_27DA6D950, qword_22E728670);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  sub_22E6ECA88(&qword_27DA6CCC0, &qword_27DA6CCB0, &unk_22E72C3F0);
  swift_task_alloc();
  sub_22E6ECB74();
  v0[18] = v4;
  *v4 = v5;
  v6 = sub_22E6ECAAC(v4);

  return MEMORY[0x282200308](v6);
}

uint64_t sub_22E6EC28C()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v3 = v2;
  sub_22E6ECB14();
  *v4 = v3;
  v5 = *v1;
  sub_22E6E3C94();
  *v6 = v5;
  v3[19] = v0;

  if (v0)
  {
    (*(v3[10] + 8))(v3[11], v3[9]);
    sub_22E6CFBBC(v3[2], v3[3]);
  }

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22E6EC3A8()
{
  sub_22E6E3F34();
  if (v0[5] >> 60 == 15)
  {
    v1 = v0[15];
    v2 = v0[12];
    v3 = v0[13];
    (*(v0[10] + 8))(v0[11], v0[9]);
    (*(v3 + 8))(v1, v2);
    sub_22E6EC710(v0[4], v0[5]);

    v4 = sub_22E6ECB80();

    return v5(v4);
  }

  else
  {
    sub_22E6ECB44();
    Data.append(_:)();
    v7 = sub_22E6ECB44();
    sub_22E6EC710(v7, v8);
    sub_22E6ECA88(&qword_27DA6CCC0, &qword_27DA6CCB0, &unk_22E72C3F0);
    swift_task_alloc();
    sub_22E6ECB74();
    v0[18] = v9;
    *v9 = v10;
    v11 = sub_22E6ECAAC(v9);

    return MEMORY[0x282200308](v11);
  }
}

uint64_t sub_22E6EC504()
{
  sub_22E6E3D08();
  (*(v0[13] + 8))(v0[15], v0[12]);

  sub_22E6E3AD8();

  return v1();
}

uint64_t sub_22E6EC594()
{
  sub_22E6E3D08();

  sub_22E6E3AD8();

  return v0();
}

uint64_t sub_22E6EC60C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22E6ECA84;

  return StreamHandle.readAll(in:)();
}

uint64_t sub_22E6EC6C8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22E6CF2AC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22E6EC710(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22E6CFBBC(result, a2);
  }

  return result;
}

uint64_t dispatch thunk of StreamHandle.inputStream(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22E6ECB98();
  swift_task_alloc();
  sub_22E6ECB74();
  *(v5 + 16) = v6;
  *v6 = v7;
  v8 = sub_22E6ECB50(v6);

  return v9(v8);
}

uint64_t dispatch thunk of StreamHandle.readAll(in:)()
{
  sub_22E6ECBA4();
  sub_22E6ECB98();
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22E6EC98C;

  return v8(v4, v3, v1, v0);
}

uint64_t sub_22E6EC98C()
{
  sub_22E6E3D08();
  sub_22E6E3E08();
  v1 = *v0;
  sub_22E6E3C94();
  *v2 = v1;

  v3 = sub_22E6ECB44();

  return v4(v3);
}

uint64_t sub_22E6ECA88(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277D858D0];

  return sub_22E6EC6C8(a1, a2, a3, v4);
}

uint64_t sub_22E6ECB20(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277D858E0];

  return sub_22E6EC6C8(a1, a2, a3, v4);
}

BOOL sub_22E6ECBC4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = a1 != 0;
  if ((a2 & 1) == 0)
  {
    v4 = a1;
  }

  v5 = a3 != 0;
  if ((a4 & 1) == 0)
  {
    v5 = a3;
  }

  return v4 == v5;
}

uint64_t static DownloadRequestMessage.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (a1[1])
  {
    if (a2[1])
    {
      goto LABEL_6;
    }
  }

  else if ((a2[1] & 1) == 0)
  {
LABEL_6:
    j__swift_bridgeObjectRetain(*a2);
    j__swift_bridgeObjectRetain(v2);
    v5 = sub_22E6F3AB0();
    v4 = sub_22E6ECDD8(v5, v6);
    goto LABEL_7;
  }

  j__swift_bridgeObjectRetain(*a2);
  j__swift_bridgeObjectRetain(v2);
  v4 = 0;
LABEL_7:
  j__swift_bridgeObjectRelease(v2);
  j__swift_bridgeObjectRelease(v3);
  return v4 & 1;
}

uint64_t sub_22E6ECCD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!*v4)
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 - 1) != *(v4 - 1))
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_22E6ECD4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_22E6ECDD8(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for AssetDownloadRequest(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v175 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v178 = *(v8 + 72);
  v179 = &v175 - v9;
  v189 = v7;
  while (2)
  {
    sub_22E6F3698(v14, v10, type metadata accessor for AssetDownloadRequest);
    if (!v11)
    {
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
      goto LABEL_292;
    }

    v181 = v14;
    v182 = v11;
    v180 = v15;
    sub_22E6F3698(v15, v7, type metadata accessor for AssetDownloadRequest);
    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_275;
    }

    v16 = v12;
    v17 = v4[5];
    v18 = *&v10[v17];
    v19 = *&v10[v17 + 8];
    v20 = &v189[v17];
    v21 = v18 == *v20 && v19 == *(v20 + 1);
    if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_275;
    }

    if ((static URL.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_275;
    }

    v22 = v4[7];
    v187 = &v189[v22];
    v188 = &v10[v22];
    if ((static URL.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_275;
    }

    v23 = type metadata accessor for Asset.ID(0);
    v24 = v23[5];
    v25 = *&v188[v24];
    v26 = *&v188[v24 + 8];
    v27 = &v187[v24];
    v28 = v25 == *v27 && v26 == *(v27 + 1);
    if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_275;
    }

    v29 = v23[6];
    v30 = &v188[v29];
    v31 = *&v188[v29];
    v32 = *&v188[v29 + 8];
    v33 = &v187[v29];
    v34 = v32 >> 62;
    v36 = *v33;
    v35 = v33[1];
    v37 = HIDWORD(*v30);
    v38 = v35 >> 62;
    if (v28)
    {
      v40 = 0;
      if (!v31)
      {
        if (v32 == 0xC000000000000000)
        {
          v39 = v35 >> 62 == 3;
          v28 = v38 == 3;
        }

        else
        {
          v39 = 0;
          v28 = 0;
        }

        if (v39)
        {
          v40 = 0;
          if (!v36)
          {
            v28 = v35 == 0xC000000000000000;
            if (v35 == 0xC000000000000000)
            {
              goto LABEL_72;
            }
          }
        }
      }
    }

    else
    {
      v40 = 0;
      switch(v34)
      {
        case 0uLL:
          v40 = BYTE6(v32);
          break;
        case 1uLL:
          v28 = v37 == v31;
          if (__OFSUB__(v37, v31))
          {
            goto LABEL_289;
          }

          v40 = v37 - v31;
          break;
        case 2uLL:
          v42 = *(v31 + 16);
          v41 = *(v31 + 24);
          v43 = __OFSUB__(v41, v42);
          v40 = v41 - v42;
          v28 = v40 == 0;
          if (!v43)
          {
            break;
          }

          goto LABEL_288;
        case 3uLL:
          break;
        default:
LABEL_314:
          JUMPOUT(0);
      }
    }

    switch(v38)
    {
      case 1uLL:
        LODWORD(v44) = HIDWORD(v36) - v36;
        if (__OFSUB__(HIDWORD(v36), v36))
        {
          goto LABEL_279;
        }

        v44 = v44;
LABEL_44:
        if (v40 != v44)
        {
          goto LABEL_275;
        }

        v28 = v40 == 1;
        if (v40 < 1)
        {
          goto LABEL_72;
        }

        break;
      case 2uLL:
        v46 = *(v36 + 16);
        v45 = *(v36 + 24);
        v43 = __OFSUB__(v45, v46);
        v44 = v45 - v46;
        if (!v43)
        {
          goto LABEL_44;
        }

        goto LABEL_278;
      case 3uLL:
        if (v40)
        {
          goto LABEL_275;
        }

        goto LABEL_72;
      default:
        v44 = BYTE6(v35);
        goto LABEL_44;
    }

    v47 = v36 >> 32;
    switch(v34)
    {
      case 1:
        v177 = v4;
        if (v31 >> 32 < v31)
        {
          goto LABEL_298;
        }

        v52 = v31;
        sub_22E6CFB64(v36, v35);
        sub_22E6CFB64(v36, v35);
        sub_22E6CFB64(v36, v35);
        v50 = __DataStorage._bytes.getter();
        if (!v50)
        {
          goto LABEL_64;
        }

        v53 = __DataStorage._offset.getter();
        if (__OFSUB__(v52, v53))
        {
          goto LABEL_305;
        }

        v50 += v52 - v53;
LABEL_64:
        MEMORY[0x2318EBFC0]();
        v16 = v12;
        sub_22E6F2044(__s1, v50, v36, v35);
        sub_22E6CFBBC(v36, v35);
        sub_22E6CFBBC(v36, v35);
        sub_22E6CFBBC(v36, v35);
        v4 = v177;
        if ((__s1[0] & 1) == 0)
        {
          goto LABEL_275;
        }

        break;
      case 2:
        v177 = v4;
        v48 = *(v31 + 16);
        v49 = *(v31 + 24);
        sub_22E6CFB64(v36, v35);
        sub_22E6CFB64(v36, v35);
        sub_22E6CFB64(v36, v35);
        v50 = __DataStorage._bytes.getter();
        if (!v50)
        {
          goto LABEL_54;
        }

        v51 = __DataStorage._offset.getter();
        if (__OFSUB__(v48, v51))
        {
          goto LABEL_304;
        }

        v50 += v48 - v51;
LABEL_54:
        if (!__OFSUB__(v49, v48))
        {
          goto LABEL_64;
        }

        goto LABEL_299;
      case 3:
        memset(__s1, 0, 14);
        if (!v38)
        {
          goto LABEL_66;
        }

        if (v38 == 2)
        {
          goto LABEL_70;
        }

        if (v47 >= v36)
        {
          goto LABEL_69;
        }

        goto LABEL_311;
      default:
        LOWORD(__s1[0]) = v31;
        BYTE2(__s1[0]) = BYTE2(v31);
        BYTE3(__s1[0]) = BYTE3(v31);
        BYTE4(__s1[0]) = v37;
        BYTE5(__s1[0]) = BYTE5(v31);
        BYTE6(__s1[0]) = BYTE6(v31);
        HIBYTE(__s1[0]) = HIBYTE(v31);
        LOWORD(__s1[1]) = v32;
        BYTE2(__s1[1]) = BYTE2(v32);
        BYTE3(__s1[1]) = BYTE3(v32);
        BYTE4(__s1[1]) = BYTE4(v32);
        BYTE5(__s1[1]) = BYTE5(v32);
        if (v38)
        {
          if (v38 == 1)
          {
            if (v47 < v36)
            {
              goto LABEL_310;
            }

LABEL_69:
            sub_22E6CFB64(v36, v35);
            sub_22E6CFB64(v36, v35);
            v54 = v35 & 0x3FFFFFFFFFFFFFFFLL;
            v55 = v36;
            v56 = v36 >> 32;
          }

          else
          {
LABEL_70:
            v57 = *(v36 + 16);
            v58 = *(v36 + 24);
            sub_22E6CFB64(v36, v35);
            sub_22E6CFB64(v36, v35);
            v54 = v35 & 0x3FFFFFFFFFFFFFFFLL;
            v55 = v57;
            v56 = v58;
          }

          v59 = sub_22E6F239C(v55, v56, v54, __s1);
          sub_22E6CFBBC(v36, v35);
          sub_22E6CFBBC(v36, v35);
          if ((v59 & 1) == 0)
          {
            goto LABEL_275;
          }
        }

        else
        {
LABEL_66:
          __s2 = v36;
          v191 = v35;
          v192 = BYTE2(v35);
          v193 = BYTE3(v35);
          v194 = BYTE4(v35);
          v195 = BYTE5(v35);
          if (memcmp(__s1, &__s2, BYTE6(v35)))
          {
            goto LABEL_275;
          }
        }

        break;
    }

LABEL_72:
    v60 = v23[7];
    v61 = &v188[v60];
    v62 = *&v188[v60];
    v63 = *&v188[v60 + 8];
    v64 = &v187[v60];
    v65 = v63 >> 62;
    v67 = *v64;
    v66 = v64[1];
    v68 = HIDWORD(*v61);
    v69 = v66 >> 62;
    if (v28)
    {
      v71 = 0;
      if (!v62 && v63 == 0xC000000000000000 && v66 >> 62 == 3)
      {
        v71 = 0;
        if (!v67 && v66 == 0xC000000000000000)
        {
          goto LABEL_122;
        }
      }
    }

    else
    {
      v71 = 0;
      switch(v65)
      {
        case 0uLL:
          v71 = BYTE6(v63);
          break;
        case 1uLL:
          if (__OFSUB__(v68, v62))
          {
            goto LABEL_291;
          }

          v71 = v68 - v62;
          break;
        case 2uLL:
          v73 = *(v62 + 16);
          v72 = *(v62 + 24);
          v43 = __OFSUB__(v72, v73);
          v71 = v72 - v73;
          if (!v43)
          {
            break;
          }

          goto LABEL_290;
        case 3uLL:
          break;
        default:
          goto LABEL_314;
      }
    }

    switch(v69)
    {
      case 1uLL:
        LODWORD(v74) = HIDWORD(v67) - v67;
        if (__OFSUB__(HIDWORD(v67), v67))
        {
          goto LABEL_280;
        }

        v74 = v74;
LABEL_97:
        if (v71 != v74)
        {
          goto LABEL_275;
        }

        if (v71 < 1)
        {
          goto LABEL_122;
        }

        break;
      case 2uLL:
        v76 = *(v67 + 16);
        v75 = *(v67 + 24);
        v43 = __OFSUB__(v75, v76);
        v74 = v75 - v76;
        if (!v43)
        {
          goto LABEL_97;
        }

        goto LABEL_281;
      case 3uLL:
        if (v71)
        {
          goto LABEL_275;
        }

        goto LABEL_122;
      default:
        v74 = BYTE6(v66);
        goto LABEL_97;
    }

    switch(v65)
    {
      case 1:
        if (v62 >> 32 < v62)
        {
          goto LABEL_300;
        }

        v80 = v4;
        v85 = v62;
        sub_22E6CFB64(v67, v66);
        sub_22E6CFB64(v67, v66);
        sub_22E6CFB64(v67, v66);
        v83 = __DataStorage._bytes.getter();
        if (!v83)
        {
          goto LABEL_116;
        }

        v86 = __DataStorage._offset.getter();
        if (__OFSUB__(v85, v86))
        {
          goto LABEL_307;
        }

        v83 += v85 - v86;
LABEL_116:
        MEMORY[0x2318EBFC0]();
        sub_22E6F2044(__s1, v83, v67, v66);
        sub_22E6CFBBC(v67, v66);
        sub_22E6CFBBC(v67, v66);
        sub_22E6CFBBC(v67, v66);
        if ((__s1[0] & 1) == 0)
        {
          goto LABEL_275;
        }

        v4 = v80;
        break;
      case 2:
        v80 = v4;
        v81 = *(v62 + 16);
        v82 = *(v62 + 24);
        sub_22E6CFB64(v67, v66);
        sub_22E6CFB64(v67, v66);
        sub_22E6CFB64(v67, v66);
        v83 = __DataStorage._bytes.getter();
        if (!v83)
        {
          goto LABEL_107;
        }

        v84 = __DataStorage._offset.getter();
        if (__OFSUB__(v81, v84))
        {
          goto LABEL_306;
        }

        v83 += v81 - v84;
LABEL_107:
        if (!__OFSUB__(v82, v81))
        {
          goto LABEL_116;
        }

        goto LABEL_301;
      case 3:
        memset(__s1, 0, 14);
        sub_22E6CFB64(v67, v66);
        sub_22E6CFB64(v67, v66);
        sub_22E6F2044(&__s2, __s1, v67, v66);
        sub_22E6CFBBC(v67, v66);
        sub_22E6CFBBC(v67, v66);
        if ((__s2 & 1) == 0)
        {
          goto LABEL_275;
        }

        break;
      default:
        LOWORD(__s1[0]) = v62;
        BYTE2(__s1[0]) = BYTE2(v62);
        BYTE3(__s1[0]) = BYTE3(v62);
        BYTE4(__s1[0]) = v68;
        BYTE5(__s1[0]) = BYTE5(v62);
        BYTE6(__s1[0]) = BYTE6(v62);
        HIBYTE(__s1[0]) = HIBYTE(v62);
        LOWORD(__s1[1]) = v63;
        BYTE2(__s1[1]) = BYTE2(v63);
        BYTE3(__s1[1]) = BYTE3(v63);
        BYTE4(__s1[1]) = BYTE4(v63);
        BYTE5(__s1[1]) = BYTE5(v63);
        if (v69)
        {
          if (v69 == 1)
          {
            if (v67 >> 32 < v67)
            {
              goto LABEL_312;
            }

            sub_22E6CFB64(v67, v66);
            sub_22E6CFB64(v67, v66);
            v77 = v66 & 0x3FFFFFFFFFFFFFFFLL;
            v78 = v67;
            v79 = v67 >> 32;
          }

          else
          {
            v87 = *(v67 + 16);
            v88 = *(v67 + 24);
            sub_22E6CFB64(v67, v66);
            sub_22E6CFB64(v67, v66);
            v77 = v66 & 0x3FFFFFFFFFFFFFFFLL;
            v78 = v87;
            v79 = v88;
          }

          v89 = sub_22E6F239C(v78, v79, v77, __s1);
          sub_22E6CFBBC(v67, v66);
          sub_22E6CFBBC(v67, v66);
          if ((v89 & 1) == 0)
          {
            goto LABEL_275;
          }
        }

        else
        {
          __s2 = v67;
          v191 = v66;
          v192 = BYTE2(v66);
          v193 = BYTE3(v66);
          v194 = BYTE4(v66);
          v195 = BYTE5(v66);
          if (memcmp(__s1, &__s2, BYTE6(v66)))
          {
            goto LABEL_275;
          }
        }

        break;
    }

LABEL_122:
    v90 = type metadata accessor for Asset(0);
    v91 = *(v90 + 20);
    v92 = *&v188[v91];
    v93 = *&v188[v91 + 8];
    v95 = *&v188[v91 + 16];
    v94 = *&v188[v91 + 24];
    v96 = &v187[v91];
    v98 = *v96;
    v97 = v96[1];
    v99 = v93 >> 62;
    v101 = v96[2];
    v100 = v96[3];
    v185 = v101;
    v186 = v100;
    v102 = v97 >> 62;
    v183 = v90;
    v184 = v92;
    if (v21)
    {
      v107 = 0;
      if (!v92 && v93 == 0xC000000000000000 && v97 >> 62 == 3)
      {
        v107 = 0;
        if (!v98 && v97 == 0xC000000000000000)
        {
          v104 = v93;
          sub_22E6CFB64(0, 0xC000000000000000);
          sub_22E6CFB64(v95, v94);
          v105 = 0;
          v106 = 0xC000000000000000;
LABEL_155:
          sub_22E6CFB64(v105, v106);
          sub_22E6CFB64(v185, v186);
          goto LABEL_174;
        }
      }
    }

    else
    {
      v107 = 0;
      switch(v99)
      {
        case 0uLL:
          v107 = BYTE6(v93);
          break;
        case 1uLL:
          if (__OFSUB__(HIDWORD(v92), v92))
          {
            goto LABEL_295;
          }

          v107 = HIDWORD(v92) - v92;
          break;
        case 2uLL:
          v109 = *(v92 + 16);
          v108 = *(v92 + 24);
          v43 = __OFSUB__(v108, v109);
          v107 = v108 - v109;
          if (!v43)
          {
            break;
          }

          goto LABEL_294;
        case 3uLL:
          break;
        default:
          goto LABEL_314;
      }
    }

    switch(v102)
    {
      case 1uLL:
        LODWORD(v110) = HIDWORD(v98) - v98;
        if (__OFSUB__(HIDWORD(v98), v98))
        {
          goto LABEL_282;
        }

        v110 = v110;
LABEL_147:
        if (v107 != v110)
        {
          goto LABEL_275;
        }

        if (v107 < 1)
        {
LABEL_154:
          v115 = v92;
          v104 = v93;
          sub_22E6CFB64(v115, v93);
          sub_22E6CFB64(v95, v94);
          v105 = v98;
          v106 = v97;
          goto LABEL_155;
        }

        break;
      case 2uLL:
        v112 = *(v98 + 16);
        v111 = *(v98 + 24);
        v43 = __OFSUB__(v111, v112);
        v110 = v111 - v112;
        if (!v43)
        {
          goto LABEL_147;
        }

        goto LABEL_283;
      case 3uLL:
        if (v107)
        {
          goto LABEL_275;
        }

        goto LABEL_154;
      default:
        v110 = BYTE6(v97);
        goto LABEL_147;
    }

    switch(v99)
    {
      case 1:
        v176 = v94;
        v177 = v4;
        if (v92 >> 32 < v92)
        {
          goto LABEL_302;
        }

        sub_22E6CFB64(v98, v97);
        sub_22E6CFB64(v98, v97);
        sub_22E6CFB64(v92, v93);
        v175 = v95;
        sub_22E6CFB64(v95, v176);
        sub_22E6CFB64(v98, v97);
        sub_22E6CFB64(v185, v186);
        sub_22E6CFB64(v98, v97);
        v119 = __DataStorage._bytes.getter();
        if (!v119)
        {
          goto LABEL_168;
        }

        v122 = __DataStorage._offset.getter();
        if (__OFSUB__(v92, v122))
        {
          goto LABEL_309;
        }

        v119 += v92 - v122;
LABEL_168:
        v104 = v93;
        MEMORY[0x2318EBFC0]();
        sub_22E6F2044(__s1, v119, v98, v97);
        sub_22E6CFBBC(v98, v97);
        sub_22E6CFBBC(v98, v97);
        sub_22E6CFBBC(v98, v97);
        v94 = v176;
        v4 = v177;
        v95 = v175;
        if ((__s1[0] & 1) == 0)
        {
          goto LABEL_274;
        }

        goto LABEL_174;
      case 2:
        v177 = v4;
        v116 = v94;
        v118 = *(v92 + 16);
        v117 = *(v92 + 24);
        sub_22E6CFB64(v98, v97);
        sub_22E6CFB64(v98, v97);
        sub_22E6CFB64(v92, v93);
        v175 = v95;
        v176 = v116;
        sub_22E6CFB64(v95, v116);
        sub_22E6CFB64(v98, v97);
        sub_22E6CFB64(v185, v186);
        sub_22E6CFB64(v98, v97);
        v119 = __DataStorage._bytes.getter();
        if (!v119)
        {
          goto LABEL_159;
        }

        v120 = __DataStorage._offset.getter();
        if (__OFSUB__(v118, v120))
        {
          goto LABEL_308;
        }

        v119 += v118 - v120;
LABEL_159:
        if (!__OFSUB__(v117, v118))
        {
          goto LABEL_168;
        }

        goto LABEL_303;
      case 3:
        memset(__s1, 0, 14);
        sub_22E6CFB64(v98, v97);
        v121 = v92;
        v104 = v93;
        sub_22E6CFB64(v121, v93);
        sub_22E6CFB64(v95, v94);
        sub_22E6CFB64(v98, v97);
        sub_22E6CFB64(v185, v186);
        sub_22E6CFB64(v98, v97);
        sub_22E6F2044(&__s2, __s1, v98, v97);
        sub_22E6CFBBC(v98, v97);
        sub_22E6CFBBC(v98, v97);
        if ((__s2 & 1) == 0)
        {
          goto LABEL_274;
        }

        goto LABEL_174;
      default:
        __s1[0] = v92;
        LOWORD(__s1[1]) = v93;
        BYTE2(__s1[1]) = BYTE2(v93);
        BYTE3(__s1[1]) = BYTE3(v93);
        BYTE4(__s1[1]) = BYTE4(v93);
        BYTE5(__s1[1]) = BYTE5(v93);
        if (!v102)
        {
          __s2 = v98;
          v191 = v97;
          v192 = BYTE2(v97);
          v193 = BYTE3(v97);
          v194 = BYTE4(v97);
          v195 = BYTE5(v97);
          v123 = v92;
          v104 = v93;
          sub_22E6CFB64(v123, v93);
          sub_22E6CFB64(v95, v94);
          sub_22E6CFB64(v98, v97);
          sub_22E6CFB64(v185, v186);
          if (memcmp(__s1, &__s2, BYTE6(v97)))
          {
            goto LABEL_274;
          }

LABEL_174:
          v127 = v185;
          v126 = v186;
          v128 = MEMORY[0x2318EC160](v95, v94, v185, v186);
          sub_22E6CFBBC(v98, v97);
          sub_22E6CFBBC(v127, v126);
          sub_22E6CFBBC(v184, v104);
          sub_22E6CFBBC(v95, v94);
          v10 = v179;
          if ((v128 & 1) == 0 || *&v188[*(v183 + 24)] != *&v187[*(v183 + 24)])
          {
            goto LABEL_275;
          }

          v129 = v4[8];
          v130 = &v179[v129];
          v131 = v179[v129 + 16];
          v132 = &v189[v129];
          if (v131)
          {
            if (!v132[16])
            {
              goto LABEL_275;
            }
          }

          else
          {
            if (v132[16])
            {
              goto LABEL_275;
            }

            if (*v130 != *v132 || *(v130 + 1) != *(v132 + 1))
            {
              goto LABEL_275;
            }
          }

          if ((static URL.== infix(_:_:)() & 1) == 0)
          {
            goto LABEL_275;
          }

          v134 = v4[10];
          v135 = &v10[v134];
          v136 = &v189[v134];
          v137 = *&v10[v134] == *&v189[v134] && *&v10[v134 + 8] == *&v189[v134 + 8];
          if (!v137 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_275;
          }

          v138 = *(v135 + 2) == *(v136 + 2) && *(v135 + 3) == *(v136 + 3);
          if (!v138 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_275;
          }

          v139 = *(v135 + 4) == *(v136 + 4) && *(v135 + 5) == *(v136 + 5);
          if (!v139 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_275;
          }

          type metadata accessor for Credential(0);
          if ((static Date.== infix(_:_:)() & 1) == 0)
          {
            goto LABEL_275;
          }

          v140 = v4[11];
          v141 = *&v10[v140];
          v142 = *&v10[v140 + 8];
          v143 = &v189[v140];
          v144 = *v143;
          v145 = v143[1];
          v146 = v142 >> 62;
          if (v142 >> 62 != 3)
          {
            if (v146 == 2)
            {
              v150 = *(v141 + 16);
              v149 = *(v141 + 24);
              v43 = __OFSUB__(v149, v150);
              v147 = v149 - v150;
              if (!v43)
              {
                goto LABEL_220;
              }
            }

            else
            {
              if (v146 != 1)
              {
                v147 = BYTE6(v142);
                goto LABEL_220;
              }

              LODWORD(v147) = HIDWORD(v141) - v141;
              if (!__OFSUB__(HIDWORD(v141), v141))
              {
                v147 = v147;
LABEL_220:
                switch(v145 >> 62)
                {
                  case 1uLL:
                    LODWORD(v151) = HIDWORD(v144) - v144;
                    if (__OFSUB__(HIDWORD(v144), v144))
                    {
                      goto LABEL_284;
                    }

                    v151 = v151;
LABEL_229:
                    if (v147 == v151)
                    {
                      if (v147 < 1)
                      {
                        goto LABEL_232;
                      }

                      sub_22E6CFB64(v144, v145);
                      if (sub_22E6F21B0(v141, v142, v144, v145))
                      {
                        goto LABEL_232;
                      }
                    }

                    goto LABEL_275;
                  case 2uLL:
                    v153 = *(v144 + 16);
                    v152 = *(v144 + 24);
                    v43 = __OFSUB__(v152, v153);
                    v151 = v152 - v153;
                    if (!v43)
                    {
                      goto LABEL_229;
                    }

                    goto LABEL_285;
                  case 3uLL:
                    if (v147)
                    {
                      goto LABEL_275;
                    }

                    goto LABEL_232;
                  default:
                    v151 = BYTE6(v145);
                    goto LABEL_229;
                }
              }

LABEL_292:
              __break(1u);
            }

            __break(1u);
LABEL_294:
            __break(1u);
LABEL_295:
            __break(1u);
LABEL_296:
            __break(1u);
LABEL_297:
            __break(1u);
LABEL_298:
            __break(1u);
LABEL_299:
            __break(1u);
LABEL_300:
            __break(1u);
LABEL_301:
            __break(1u);
LABEL_302:
            __break(1u);
LABEL_303:
            __break(1u);
LABEL_304:
            __break(1u);
LABEL_305:
            __break(1u);
LABEL_306:
            __break(1u);
LABEL_307:
            __break(1u);
LABEL_308:
            __break(1u);
LABEL_309:
            __break(1u);
LABEL_310:
            __break(1u);
LABEL_311:
            __break(1u);
LABEL_312:
            __break(1u);
LABEL_313:
            __break(1u);
          }

          v147 = 0;
          if (v141)
          {
            goto LABEL_220;
          }

          if (v142 != 0xC000000000000000 || v145 >> 62 != 3)
          {
            goto LABEL_220;
          }

          v147 = 0;
          if (v144 || v145 != 0xC000000000000000)
          {
            goto LABEL_220;
          }

LABEL_232:
          v154 = v4[12];
          v155 = *&v10[v154];
          v156 = *&v10[v154 + 8];
          v157 = &v189[v154];
          v158 = *v157;
          v159 = v157[1];
          v160 = v156 >> 62;
          if (v156 >> 62 != 3)
          {
            if (v160 == 2)
            {
              v164 = *(v155 + 16);
              v163 = *(v155 + 24);
              v43 = __OFSUB__(v163, v164);
              v161 = v163 - v164;
              if (v43)
              {
                goto LABEL_296;
              }
            }

            else if (v160 == 1)
            {
              LODWORD(v161) = HIDWORD(v155) - v155;
              if (__OFSUB__(HIDWORD(v155), v155))
              {
                goto LABEL_297;
              }

              v161 = v161;
            }

            else
            {
              v161 = BYTE6(v156);
            }

LABEL_250:
            switch(v159 >> 62)
            {
              case 1uLL:
                LODWORD(v165) = HIDWORD(v158) - v158;
                if (__OFSUB__(HIDWORD(v158), v158))
                {
                  goto LABEL_286;
                }

                v165 = v165;
LABEL_259:
                if (v161 == v165)
                {
                  if (v161 < 1)
                  {
                    goto LABEL_262;
                  }

                  sub_22E6CFB64(v158, v159);
                  if (sub_22E6F21B0(v155, v156, v158, v159))
                  {
                    goto LABEL_262;
                  }
                }

                goto LABEL_275;
              case 2uLL:
                v167 = *(v158 + 16);
                v166 = *(v158 + 24);
                v43 = __OFSUB__(v166, v167);
                v165 = v166 - v167;
                if (!v43)
                {
                  goto LABEL_259;
                }

                goto LABEL_287;
              case 3uLL:
                if (v161)
                {
                  goto LABEL_275;
                }

                goto LABEL_262;
              default:
                v165 = BYTE6(v159);
                goto LABEL_259;
            }
          }

          v161 = 0;
          if (v155)
          {
            goto LABEL_250;
          }

          if (v156 != 0xC000000000000000 || v159 >> 62 != 3)
          {
            goto LABEL_250;
          }

          v161 = 0;
          if (v158 || v159 != 0xC000000000000000)
          {
            goto LABEL_250;
          }

LABEL_262:
          v168 = v4[13];
          v169 = &v10[v168];
          v170 = *&v10[v168 + 8];
          v7 = v189;
          v171 = &v189[v168];
          v172 = *(v171 + 1);
          if (v170)
          {
            if (!v172)
            {
              goto LABEL_275;
            }

            v173 = *v169 == *v171 && v170 == v172;
            if (!v173 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_275;
            }

            v7 = v189;
            sub_22E6F3700(v189, type metadata accessor for AssetDownloadRequest);
            sub_22E6F3700(v10, type metadata accessor for AssetDownloadRequest);
          }

          else
          {
            sub_22E6F3700(v189, type metadata accessor for AssetDownloadRequest);
            sub_22E6F3700(v10, type metadata accessor for AssetDownloadRequest);
            if (v172)
            {
              return 0;
            }
          }

          v12 = v16;
          v15 = v180 + v178;
          v14 = v181 + v178;
          result = 1;
          v11 = v182 - 1;
          if (v182 == 1)
          {
            return result;
          }

          continue;
        }

        v176 = v94;
        if (v102 == 1)
        {
          if (v98 >> 32 < v98)
          {
            goto LABEL_313;
          }

          sub_22E6CFB64(v98, v97);
          v113 = v92;
          v104 = v93;
          sub_22E6CFB64(v113, v93);
          sub_22E6CFB64(v95, v176);
          sub_22E6CFB64(v98, v97);
          sub_22E6CFB64(v185, v186);
          sub_22E6CFB64(v98, v97);
          v114 = sub_22E6F239C(v98, v98 >> 32, v97 & 0x3FFFFFFFFFFFFFFFLL, __s1);
          sub_22E6CFBBC(v98, v97);
          sub_22E6CFBBC(v98, v97);
          v94 = v176;
        }

        else
        {
          v124 = *(v98 + 16);
          v177 = *(v98 + 24);
          sub_22E6CFB64(v98, v97);
          v125 = v92;
          v104 = v93;
          sub_22E6CFB64(v125, v93);
          v94 = v176;
          sub_22E6CFB64(v95, v176);
          sub_22E6CFB64(v98, v97);
          sub_22E6CFB64(v185, v186);
          sub_22E6CFB64(v98, v97);
          v114 = sub_22E6F239C(v124, v177, v97 & 0x3FFFFFFFFFFFFFFFLL, __s1);
          sub_22E6CFBBC(v98, v97);
          sub_22E6CFBBC(v98, v97);
        }

        if (v114)
        {
          goto LABEL_174;
        }

LABEL_274:
        sub_22E6CFBBC(v98, v97);
        sub_22E6CFBBC(v185, v186);
        sub_22E6CFBBC(v184, v104);
        sub_22E6CFBBC(v95, v94);
        v10 = v179;
LABEL_275:
        sub_22E6F3700(v189, type metadata accessor for AssetDownloadRequest);
        sub_22E6F3700(v10, type metadata accessor for AssetDownloadRequest);
        return 0;
    }
  }
}

void sub_22E6EE424()
{
  sub_22E6EB570();
  v2 = v1;
  v4 = v3;
  v568 = *MEMORY[0x277D85DE8];
  v557 = type metadata accessor for AssetSkeleton(0);
  sub_22E6F3904();
  MEMORY[0x28223BE20](v5);
  sub_22E6F38F4();
  v558 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v549 - v9;
  v11 = *(v4 + 16);
  if (v11 != *(v2 + 16) || !v11 || v4 == v2)
  {
    goto LABEL_312;
  }

  v556 = 0;
  sub_22E6F38E4();
  v13 = v4 + v12;
  v14 = v2 + v12;
  v550 = *(v15 + 72);
  while (2)
  {
    sub_22E6F3698(v13, v10, type metadata accessor for AssetSkeleton);
    if (!v11)
    {
      __break(1u);
LABEL_314:
      __break(1u);
LABEL_315:
      __break(1u);
LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);
LABEL_319:
      __break(1u);
LABEL_320:
      __break(1u);
LABEL_321:
      __break(1u);
LABEL_322:
      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
LABEL_325:
      __break(1u);
LABEL_326:
      __break(1u);
LABEL_327:
      __break(1u);
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      __break(1u);
LABEL_335:
      __break(1u);
LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
LABEL_339:
      __break(1u);
LABEL_340:
      __break(1u);
LABEL_341:
      __break(1u);
LABEL_342:
      __break(1u);
LABEL_343:
      __break(1u);
LABEL_344:
      __break(1u);
LABEL_345:
      __break(1u);
LABEL_346:
      __break(1u);
LABEL_347:
      __break(1u);
LABEL_348:
      __break(1u);
LABEL_349:
      __break(1u);
LABEL_350:
      __break(1u);
LABEL_351:
      __break(1u);
LABEL_352:
      __break(1u);
    }

    v552 = v13;
    v553 = v11;
    sub_22E6F38C0();
    v551 = v14;
    sub_22E6F3698(v14, v558, v16);
    sub_22E6F3AB0();
    if ((static URL.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_311;
    }

    v17 = type metadata accessor for Asset.ID(0);
    v18 = *(v17 + 20);
    v19 = *&v10[v18];
    v20 = *&v10[v18 + 8];
    v21 = (v558 + v18);
    v22 = v19 == *v21 && v20 == v21[1];
    if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_311;
    }

    v23 = *(v17 + 24);
    v24 = *&v10[v23];
    v25 = *&v10[v23 + 8];
    v26 = (v558 + v23);
    v27 = v25 >> 62;
    v29 = *v26;
    v28 = v26[1];
    v30 = v28 >> 62;
    if (v22)
    {
      if (v24)
      {
        v31 = 0;
      }

      else
      {
        v31 = v25 == 0xC000000000000000;
      }

      if (v31 && v28 >> 62 == 3 && !v29 && v28 == 0xC000000000000000)
      {
        goto LABEL_63;
      }

      v34 = 0;
    }

    else
    {
      v34 = 0;
      switch(v27)
      {
        case 0uLL:
          v34 = BYTE6(v25);
          break;
        case 1uLL:
          if (__OFSUB__(HIDWORD(v24), v24))
          {
            goto LABEL_326;
          }

          v34 = HIDWORD(v24) - v24;
          break;
        case 2uLL:
          v36 = *(v24 + 16);
          v35 = *(v24 + 24);
          v37 = __OFSUB__(v35, v36);
          v34 = v35 - v36;
          if (!v37)
          {
            break;
          }

          goto LABEL_327;
        case 3uLL:
          break;
        default:
          goto LABEL_355;
      }
    }

    v38 = BYTE6(v28);
    switch(v30)
    {
      case 1uLL:
        LODWORD(v39) = HIDWORD(v29) - v29;
        if (__OFSUB__(HIDWORD(v29), v29))
        {
          goto LABEL_315;
        }

        v39 = v39;
LABEL_41:
        if (v34 != v39)
        {
          goto LABEL_311;
        }

        if (v34 < 1)
        {
          goto LABEL_63;
        }

        break;
      case 2uLL:
        v41 = *(v29 + 16);
        v40 = *(v29 + 24);
        v37 = __OFSUB__(v40, v41);
        v39 = v40 - v41;
        if (!v37)
        {
          goto LABEL_41;
        }

        goto LABEL_314;
      case 3uLL:
        if (v34)
        {
          goto LABEL_311;
        }

        goto LABEL_63;
      default:
        v39 = BYTE6(v28);
        goto LABEL_41;
    }

    v0 = v29;
    v42 = v29 >> 32;
    v43 = v29 >> 8;
    v44 = v29 >> 16;
    v45 = v29 >> 24;
    v46 = v29 >> 40;
    v47 = HIWORD(v29);
    v48 = HIBYTE(v29);
    v49 = v28 >> 8;
    switch(v27)
    {
      case 1:
        sub_22E6F3A64();
        if (v60 != v37)
        {
          goto LABEL_336;
        }

        v61 = sub_22E6F3808();
        sub_22E6CFB64(v61, v62);
        v63 = sub_22E6F3808();
        sub_22E6CFB64(v63, v64);
        v65 = sub_22E6F3808();
        sub_22E6CFB64(v65, v66);
        v56 = sub_22E6F3A3C();
LABEL_54:
        v67 = v556;
        v68 = sub_22E6F22D0(v56, v57, v58, v29, v28);
        goto LABEL_61;
      case 2:
        v50 = sub_22E6F3808();
        sub_22E6CFB64(v50, v51);
        v52 = sub_22E6F3808();
        sub_22E6CFB64(v52, v53);
        v54 = sub_22E6F3808();
        sub_22E6CFB64(v54, v55);
        v56 = sub_22E6F3A30();
        goto LABEL_54;
      case 3:
        sub_22E6F3964();
        if (!v59)
        {
          goto LABEL_55;
        }

        if (v59 == 2)
        {
          goto LABEL_59;
        }

        if (v42 >= v29)
        {
          goto LABEL_58;
        }

        goto LABEL_345;
      default:
        v565 = v24;
        LOWORD(v566) = v25;
        BYTE2(v566) = BYTE2(v25);
        HIBYTE(v566) = BYTE3(v25);
        LOBYTE(v567) = BYTE4(v25);
        HIBYTE(v567) = BYTE5(v25);
        if (v30)
        {
          if (v30 == 1)
          {
            if (v42 < v29)
            {
              goto LABEL_344;
            }

LABEL_58:
            v77 = sub_22E6F3808();
            sub_22E6CFB64(v77, v78);
            v79 = sub_22E6F3808();
            sub_22E6CFB64(v79, v80);
            sub_22E6F3AA4();
            v81 = sub_22E6F3A3C();
          }

          else
          {
LABEL_59:
            v85 = sub_22E6F3808();
            sub_22E6CFB64(v85, v86);
            v87 = sub_22E6F3808();
            sub_22E6CFB64(v87, v88);
            sub_22E6F3AA4();
            v81 = sub_22E6F3A30();
          }

          v67 = v556;
          v68 = sub_22E6F239C(v81, v82, v83, v84);
LABEL_61:
          v0 = v68;
          v89 = sub_22E6F3808();
          sub_22E6CFBBC(v89, v90);
          v91 = sub_22E6F3808();
          sub_22E6CFBBC(v91, v92);
          v556 = v67;
          if (v67)
          {
            goto LABEL_354;
          }

          if ((v0 & 1) == 0)
          {
            goto LABEL_311;
          }
        }

        else
        {
LABEL_55:
          LOBYTE(v559) = v29;
          sub_22E6F3994(v49, v48, v38, v47, v46, v45, v44, v43);
          LOBYTE(v560) = v28;
          HIBYTE(v560) = v69;
          v561 = v70;
          v562 = v71;
          v563 = v72;
          v564 = v73;
          v74 = sub_22E6F394C();
          if (memcmp(v74, v75, v76))
          {
            goto LABEL_311;
          }
        }

        break;
    }

LABEL_63:
    sub_22E6F3928();
    sub_22E6F3A20();
    if (v22)
    {
      v98 = 0;
      if (!v94 && v0 == 0xC000000000000000 && v93 >= 3)
      {
        v98 = 0;
        if (!v28 && v17 == 0xC000000000000000)
        {
          goto LABEL_110;
        }
      }
    }

    else
    {
      v98 = 0;
      switch(v96)
      {
        case 0:
          v98 = BYTE6(v0);
          break;
        case 1:
          if (__OFSUB__(v95, v94))
          {
            goto LABEL_328;
          }

          v98 = v95 - v94;
          break;
        case 2:
          v100 = *(v94 + 16);
          v99 = *(v94 + 24);
          v37 = __OFSUB__(v99, v100);
          v98 = v99 - v100;
          if (!v37)
          {
            break;
          }

          goto LABEL_329;
        case 3:
          break;
        default:
          goto LABEL_355;
      }
    }

    v101 = BYTE6(v17);
    switch(v93)
    {
      case 1uLL:
        LODWORD(v102) = HIDWORD(v28) - v28;
        if (__OFSUB__(HIDWORD(v28), v28))
        {
          goto LABEL_317;
        }

        v102 = v102;
LABEL_88:
        if (v98 != v102)
        {
          goto LABEL_311;
        }

        if (v98 < 1)
        {
          goto LABEL_110;
        }

        break;
      case 2uLL:
        v104 = *(v28 + 16);
        v103 = *(v28 + 24);
        v37 = __OFSUB__(v103, v104);
        v102 = v103 - v104;
        if (!v37)
        {
          goto LABEL_88;
        }

        goto LABEL_316;
      case 3uLL:
        if (v98)
        {
          goto LABEL_311;
        }

        goto LABEL_110;
      default:
        v102 = BYTE6(v17);
        goto LABEL_88;
    }

    v105 = v28 >> 32;
    v106 = v28 >> 8;
    v107 = v28 >> 16;
    v108 = v28 >> 24;
    v109 = v28 >> 40;
    v110 = HIWORD(v28);
    v111 = HIBYTE(v28);
    v112 = v17 >> 8;
    switch(v96)
    {
      case 1:
        sub_22E6F3A64();
        if (v60 != v37)
        {
          goto LABEL_339;
        }

        v135 = sub_22E6F3798();
        sub_22E6CFB64(v135, v136);
        v137 = sub_22E6F3798();
        sub_22E6CFB64(v137, v138);
        v139 = sub_22E6F3798();
        sub_22E6CFB64(v139, v140);
        v127 = sub_22E6F3844();
LABEL_101:
        v141 = sub_22E6F3A48(v127, v128, v129);
        goto LABEL_108;
      case 2:
        v105 = *(v94 + 16);
        v121 = sub_22E6F3798();
        sub_22E6CFB64(v121, v122);
        v123 = sub_22E6F3798();
        sub_22E6CFB64(v123, v124);
        v125 = sub_22E6F3798();
        sub_22E6CFB64(v125, v126);
        v127 = sub_22E6F38D8();
        goto LABEL_101;
      case 3:
        sub_22E6F3964();
        if (!v130)
        {
          goto LABEL_102;
        }

        if (v130 == 2)
        {
          v131 = sub_22E6F3798();
          sub_22E6CFB64(v131, v132);
          v133 = sub_22E6F3798();
          sub_22E6CFB64(v133, v134);
          v117 = sub_22E6F37E0();
        }

        else
        {
          if (v105 < v28)
          {
            goto LABEL_347;
          }

          v150 = sub_22E6F3798();
          sub_22E6CFB64(v150, v151);
          v152 = sub_22E6F3798();
          sub_22E6CFB64(v152, v153);
          v117 = sub_22E6F37F4();
        }

        goto LABEL_107;
      default:
        LOWORD(v565) = v94;
        BYTE2(v565) = BYTE2(v94);
        BYTE3(v565) = BYTE3(v94);
        BYTE4(v565) = v95;
        BYTE5(v565) = BYTE5(v94);
        BYTE6(v565) = BYTE6(v94);
        HIBYTE(v565) = HIBYTE(v94);
        LOWORD(v566) = v0;
        BYTE2(v566) = BYTE2(v0);
        HIBYTE(v566) = BYTE3(v0);
        LOBYTE(v567) = BYTE4(v0);
        HIBYTE(v567) = BYTE5(v0);
        if (v93)
        {
          if (v93 == 1)
          {
            if (v105 < v28)
            {
              goto LABEL_346;
            }

            v113 = sub_22E6F3798();
            sub_22E6CFB64(v113, v114);
            v115 = sub_22E6F3798();
            sub_22E6CFB64(v115, v116);
            v117 = sub_22E6F3844();
          }

          else
          {
            v154 = sub_22E6F3798();
            sub_22E6CFB64(v154, v155);
            v156 = sub_22E6F3798();
            sub_22E6CFB64(v156, v157);
            v117 = sub_22E6F38D8();
          }

LABEL_107:
          v105 = v556;
          v141 = sub_22E6F239C(v117, v118, v119, v120);
LABEL_108:
          v158 = v141;
          v159 = sub_22E6F3798();
          sub_22E6CFBBC(v159, v160);
          v161 = sub_22E6F3798();
          sub_22E6CFBBC(v161, v162);
          v556 = v105;
          if (v105)
          {
            goto LABEL_354;
          }

          if ((v158 & 1) == 0)
          {
            goto LABEL_311;
          }
        }

        else
        {
LABEL_102:
          LOBYTE(v559) = v28;
          sub_22E6F3994(v112, v111, v101, v110, v109, v108, v107, v106);
          LOBYTE(v560) = v17;
          HIBYTE(v560) = v142;
          v561 = v143;
          v562 = v144;
          v563 = v145;
          v564 = v146;
          v147 = sub_22E6F394C();
          if (memcmp(v147, v148, v149))
          {
            goto LABEL_311;
          }
        }

        break;
    }

LABEL_110:
    v163 = type metadata accessor for Asset(0);
    v164 = *(v163 + 20);
    v166 = *&v10[v164];
    v165 = *&v10[v164 + 8];
    v168 = *&v10[v164 + 16];
    v167 = *&v10[v164 + 24];
    v169 = (v558 + v164);
    v170 = *v169;
    v0 = v169[1];
    v171 = v165 >> 62;
    v173 = v169[2];
    v172 = v169[3];
    v174 = v0 >> 62;
    v554 = v163;
    if (v22)
    {
      v182 = 0;
      if (!v166 && v165 == 0xC000000000000000 && v0 >> 62 == 3)
      {
        v182 = 0;
        if (!v170 && v0 == 0xC000000000000000)
        {
          v176 = sub_22E6F3958();
          sub_22E6CFB64(v176, v177);
          v178 = sub_22E6F39CC();
          sub_22E6CFB64(v178, v179);
          v180 = sub_22E6F3958();
LABEL_143:
          sub_22E6CFB64(v180, v181);
          v214 = sub_22E6E3F40();
          sub_22E6CFB64(v214, v215);
          goto LABEL_159;
        }
      }
    }

    else
    {
      v182 = 0;
      switch(v171)
      {
        case 0uLL:
          v182 = BYTE6(v165);
          break;
        case 1uLL:
          if (__OFSUB__(HIDWORD(v166), v166))
          {
            goto LABEL_331;
          }

          v182 = HIDWORD(v166) - v166;
          break;
        case 2uLL:
          v184 = *(v166 + 16);
          v183 = *(v166 + 24);
          v37 = __OFSUB__(v183, v184);
          v182 = v183 - v184;
          if (!v37)
          {
            break;
          }

          goto LABEL_330;
        case 3uLL:
          break;
        default:
          goto LABEL_355;
      }
    }

    switch(v174)
    {
      case 1uLL:
        LODWORD(v185) = HIDWORD(v170) - v170;
        if (__OFSUB__(HIDWORD(v170), v170))
        {
          goto LABEL_319;
        }

        v185 = v185;
LABEL_135:
        if (v182 != v185)
        {
          goto LABEL_311;
        }

        if (v182 < 1)
        {
LABEL_142:
          v210 = sub_22E6F382C();
          sub_22E6CFB64(v210, v211);
          v212 = sub_22E6F39CC();
          sub_22E6CFB64(v212, v213);
          v180 = sub_22E6F37B8();
          goto LABEL_143;
        }

        break;
      case 2uLL:
        v187 = *(v170 + 16);
        v186 = *(v170 + 24);
        v37 = __OFSUB__(v186, v187);
        v185 = v186 - v187;
        if (!v37)
        {
          goto LABEL_135;
        }

        goto LABEL_318;
      case 3uLL:
        if (v182)
        {
          goto LABEL_311;
        }

        goto LABEL_142;
      default:
        v185 = BYTE6(v0);
        goto LABEL_135;
    }

    v555 = v167;
    v188 = v170 >> 32;
    v189 = v170 >> 8;
    v190 = v170 >> 16;
    v191 = v170 >> 24;
    v192 = v170 >> 40;
    v193 = HIWORD(v170);
    switch(v171)
    {
      case 1:
        if (v166 >> 32 < v166)
        {
          goto LABEL_340;
        }

        v247 = sub_22E6F37B8();
        sub_22E6CFB64(v247, v248);
        v249 = sub_22E6F37B8();
        sub_22E6CFB64(v249, v250);
        v251 = sub_22E6F382C();
        sub_22E6CFB64(v251, v252);
        v253 = sub_22E6F3988();
        sub_22E6CFB64(v253, v254);
        v255 = sub_22E6F37B8();
        sub_22E6CFB64(v255, v256);
        v257 = sub_22E6E3F40();
        sub_22E6CFB64(v257, v258);
        v259 = sub_22E6F37B8();
        sub_22E6CFB64(v259, v260);
        v231 = sub_22E6F3844();
LABEL_150:
        v261 = v556;
        v262 = sub_22E6F22D0(v231, v232, v233, v170, v0);
        goto LABEL_157;
      case 2:
        v217 = sub_22E6F37B8();
        sub_22E6CFB64(v217, v218);
        v219 = sub_22E6F37B8();
        sub_22E6CFB64(v219, v220);
        v221 = sub_22E6F382C();
        sub_22E6CFB64(v221, v222);
        v223 = sub_22E6F3988();
        sub_22E6CFB64(v223, v224);
        v225 = sub_22E6F37B8();
        sub_22E6CFB64(v225, v226);
        v227 = sub_22E6E3F40();
        sub_22E6CFB64(v227, v228);
        v229 = sub_22E6F37B8();
        sub_22E6CFB64(v229, v230);
        v231 = sub_22E6F38D8();
        goto LABEL_150;
      case 3:
        sub_22E6F3964();
        if (!v234)
        {
          goto LABEL_151;
        }

        if (v234 == 2)
        {
          v235 = sub_22E6F37B8();
          sub_22E6CFB64(v235, v236);
          v237 = sub_22E6F382C();
          sub_22E6CFB64(v237, v238);
          v239 = sub_22E6F3988();
          sub_22E6CFB64(v239, v240);
          v241 = sub_22E6F37B8();
          sub_22E6CFB64(v241, v242);
          v243 = sub_22E6E3F40();
          sub_22E6CFB64(v243, v244);
          v245 = sub_22E6F37B8();
          sub_22E6CFB64(v245, v246);
          v206 = sub_22E6F37E0();
        }

        else
        {
          if (v188 < v170)
          {
            goto LABEL_349;
          }

          v272 = sub_22E6F37B8();
          sub_22E6CFB64(v272, v273);
          v274 = sub_22E6F382C();
          sub_22E6CFB64(v274, v275);
          v276 = sub_22E6F3988();
          sub_22E6CFB64(v276, v277);
          v278 = sub_22E6F37B8();
          sub_22E6CFB64(v278, v279);
          v280 = sub_22E6E3F40();
          sub_22E6CFB64(v280, v281);
          v282 = sub_22E6F37B8();
          sub_22E6CFB64(v282, v283);
          v206 = sub_22E6F37F4();
        }

        goto LABEL_156;
      default:
        v565 = v166;
        LOWORD(v566) = v165;
        BYTE2(v566) = BYTE2(v165);
        HIBYTE(v566) = BYTE3(v165);
        LOBYTE(v567) = BYTE4(v165);
        HIBYTE(v567) = BYTE5(v165);
        if (!v174)
        {
LABEL_151:
          LOBYTE(v559) = v170;
          sub_22E6F37C4(v163, v193, v192, v191, v190, v189);
          HIBYTE(v559) = v263;
          LOBYTE(v560) = v0;
          sub_22E6F3814();
          v264 = sub_22E6F382C();
          sub_22E6CFB64(v264, v265);
          v167 = v555;
          sub_22E6CFB64(v168, v555);
          v266 = sub_22E6F37B8();
          sub_22E6CFB64(v266, v267);
          v268 = sub_22E6E3F40();
          sub_22E6CFB64(v268, v269);
          v270 = sub_22E6F394C();
          if (memcmp(v270, v271, BYTE6(v0)))
          {
            goto LABEL_310;
          }

          goto LABEL_159;
        }

        if (v174 == 1)
        {
          v549 = &v565 + BYTE6(v165);
          if (v188 < v170)
          {
            goto LABEL_348;
          }

          v194 = sub_22E6F37B8();
          sub_22E6CFB64(v194, v195);
          v196 = sub_22E6F382C();
          sub_22E6CFB64(v196, v197);
          v198 = sub_22E6F3988();
          sub_22E6CFB64(v198, v199);
          v200 = sub_22E6F37B8();
          sub_22E6CFB64(v200, v201);
          v202 = sub_22E6E3F40();
          sub_22E6CFB64(v202, v203);
          v204 = sub_22E6F37B8();
          sub_22E6CFB64(v204, v205);
          v206 = sub_22E6F3844();
        }

        else
        {
          v549 = *(v170 + 24);
          v284 = sub_22E6F37B8();
          sub_22E6CFB64(v284, v285);
          v286 = sub_22E6F382C();
          sub_22E6CFB64(v286, v287);
          v288 = sub_22E6F3988();
          sub_22E6CFB64(v288, v289);
          v290 = sub_22E6F37B8();
          sub_22E6CFB64(v290, v291);
          v292 = sub_22E6E3F40();
          sub_22E6CFB64(v292, v293);
          v294 = sub_22E6F37B8();
          sub_22E6CFB64(v294, v295);
          v206 = sub_22E6F3A90();
        }

LABEL_156:
        v261 = v556;
        v262 = sub_22E6F239C(v206, v207, v208, v209);
LABEL_157:
        v296 = v262;
        v297 = sub_22E6F37B8();
        sub_22E6CFBBC(v297, v298);
        v299 = sub_22E6F37B8();
        sub_22E6CFBBC(v299, v300);
        v556 = v261;
        if (v261)
        {
          goto LABEL_354;
        }

        v167 = v555;
        if (v296)
        {
LABEL_159:
          v301 = v167 >> 62;
          v302 = v172 >> 62;
          if (v216)
          {
            v312 = 0;
            if (!v168 && v167 == 0xC000000000000000 && v172 >> 62 == 3)
            {
              v312 = 0;
              if (!v173 && v172 == 0xC000000000000000)
              {
                v304 = sub_22E6F37B8();
                sub_22E6CFBBC(v304, v305);
                v306 = sub_22E6F3958();
                sub_22E6CFBBC(v306, v307);
                v308 = sub_22E6F382C();
                sub_22E6CFBBC(v308, v309);
                v310 = sub_22E6F3958();
LABEL_192:
                sub_22E6CFBBC(v310, v311);
                v332 = v554;
                goto LABEL_211;
              }
            }
          }

          else
          {
            v312 = 0;
            switch(v301)
            {
              case 0uLL:
                v312 = BYTE6(v167);
                break;
              case 1uLL:
                if (__OFSUB__(HIDWORD(v168), v168))
                {
                  goto LABEL_333;
                }

                v312 = HIDWORD(v168) - v168;
                break;
              case 2uLL:
                v314 = *(v168 + 16);
                v313 = *(v168 + 24);
                v37 = __OFSUB__(v313, v314);
                v312 = v313 - v314;
                if (!v37)
                {
                  break;
                }

                goto LABEL_332;
              case 3uLL:
                break;
              default:
                goto LABEL_355;
            }
          }

          switch(v302)
          {
            case 1uLL:
              LODWORD(v315) = HIDWORD(v173) - v173;
              if (__OFSUB__(HIDWORD(v173), v173))
              {
                goto LABEL_320;
              }

              v315 = v315;
LABEL_184:
              if (v312 != v315)
              {
                goto LABEL_310;
              }

              if (v312 < 1)
              {
LABEL_191:
                v326 = sub_22E6F37B8();
                sub_22E6CFBBC(v326, v327);
                v328 = sub_22E6E3F40();
                sub_22E6CFBBC(v328, v329);
                v330 = sub_22E6F382C();
                sub_22E6CFBBC(v330, v331);
                v310 = sub_22E6F39CC();
                goto LABEL_192;
              }

              v555 = v167;
              switch(v301)
              {
                case 1:
                  v549 = v10;
                  if (v168 >> 32 < v168)
                  {
                    goto LABEL_341;
                  }

                  v333 = v165;
                  v356 = sub_22E6E3F40();
                  sub_22E6CFB64(v356, v357);
                  v358 = sub_22E6E3F40();
                  sub_22E6CFB64(v358, v359);
                  v360 = sub_22E6E3F40();
                  sub_22E6CFB64(v360, v361);
                  v340 = v555;
                  v341 = sub_22E6F3844();
LABEL_199:
                  v167 = v556;
                  v362 = sub_22E6F22D0(v341, v342, v343, v173, v172);
                  v556 = v167;
                  if (v167)
                  {
                    goto LABEL_353;
                  }

                  v363 = v362;
                  v364 = sub_22E6F37B8();
                  sub_22E6CFBBC(v364, v365);
                  v366 = sub_22E6E3F40();
                  sub_22E6CFBBC(v366, v367);
                  sub_22E6CFBBC(v166, v333);
                  sub_22E6CFBBC(v168, v340);
                  v368 = sub_22E6E3F40();
                  sub_22E6CFBBC(v368, v369);
                  v370 = sub_22E6E3F40();
                  sub_22E6CFBBC(v370, v371);
                  v332 = v554;
                  v10 = v549;
                  if ((v363 & 1) == 0)
                  {
                    goto LABEL_311;
                  }

                  goto LABEL_211;
                case 2:
                  v549 = v10;
                  v333 = v165;
                  v334 = sub_22E6E3F40();
                  sub_22E6CFB64(v334, v335);
                  v336 = sub_22E6E3F40();
                  sub_22E6CFB64(v336, v337);
                  v338 = sub_22E6E3F40();
                  sub_22E6CFB64(v338, v339);
                  v340 = v555;
                  v341 = sub_22E6F38D8();
                  goto LABEL_199;
                case 3:
                  sub_22E6F3964();
                  if (!v351)
                  {
                    LOBYTE(v559) = v173;
                    sub_22E6F37C4(v344, v345, v346, v347, v348, v349);
                    HIBYTE(v559) = v372;
                    LOBYTE(v560) = v172;
                    sub_22E6F3814();
                    v373 = sub_22E6E3F40();
                    sub_22E6CFB64(v373, v374);
                    v375 = sub_22E6F394C();
                    v167 = memcmp(v375, v376, BYTE6(v172));
                    v377 = sub_22E6F37B8();
                    sub_22E6CFBBC(v377, v378);
                    v379 = sub_22E6E3F40();
                    sub_22E6CFBBC(v379, v380);
                    v381 = sub_22E6F382C();
                    sub_22E6CFBBC(v381, v382);
                    v383 = sub_22E6F3988();
                    sub_22E6CFBBC(v383, v384);
                    v385 = sub_22E6E3F40();
                    sub_22E6CFBBC(v385, v386);
                    v332 = v554;
                    if (v167)
                    {
                      goto LABEL_311;
                    }

                    goto LABEL_211;
                  }

                  if (v351 == 2)
                  {
                    v352 = sub_22E6E3F40();
                    sub_22E6CFB64(v352, v353);
                    v354 = sub_22E6E3F40();
                    sub_22E6CFB64(v354, v355);
                    v322 = sub_22E6F37E0();
                  }

                  else
                  {
                    if (v350 < v173)
                    {
                      goto LABEL_351;
                    }

                    v402 = sub_22E6E3F40();
                    sub_22E6CFB64(v402, v403);
                    v404 = sub_22E6E3F40();
                    sub_22E6CFB64(v404, v405);
                    v322 = sub_22E6F37F4();
                  }

                  goto LABEL_209;
                default:
                  v565 = v168;
                  v167 = v555;
                  v566 = v555;
                  v567 = WORD2(v555);
                  if (v302)
                  {
                    if (v302 == 1)
                    {
                      v549 = &v565 + BYTE6(v555);
                      if (v173 >> 32 < v173)
                      {
                        goto LABEL_350;
                      }

                      v318 = sub_22E6E3F40();
                      sub_22E6CFB64(v318, v319);
                      v320 = sub_22E6E3F40();
                      sub_22E6CFB64(v320, v321);
                      v322 = sub_22E6F3844();
                    }

                    else
                    {
                      v549 = *(v173 + 24);
                      v406 = sub_22E6E3F40();
                      sub_22E6CFB64(v406, v407);
                      v408 = sub_22E6E3F40();
                      sub_22E6CFB64(v408, v409);
                      v322 = sub_22E6F3A90();
                    }

LABEL_209:
                    v167 = v556;
                    v410 = sub_22E6F239C(v322, v323, v324, v325);
                    v556 = v167;
                    if (v167)
                    {
LABEL_353:
                      v545 = sub_22E6E3F40();
                      sub_22E6CFBBC(v545, v546);
                      v547 = sub_22E6E3F40();
                      sub_22E6CFBBC(v547, v548);
LABEL_354:

                      __break(1u);
LABEL_355:
                      JUMPOUT(0);
                    }

                    v411 = v410;
                    v412 = sub_22E6F37B8();
                    sub_22E6CFBBC(v412, v413);
                    v414 = sub_22E6E3F40();
                    sub_22E6CFBBC(v414, v415);
                    v416 = sub_22E6F382C();
                    sub_22E6CFBBC(v416, v417);
                    v418 = sub_22E6F3988();
                    sub_22E6CFBBC(v418, v419);
                    v420 = sub_22E6E3F40();
                    sub_22E6CFBBC(v420, v421);
                    v422 = sub_22E6E3F40();
                    sub_22E6CFBBC(v422, v423);
                    v332 = v554;
                    if ((v411 & 1) == 0)
                    {
                      goto LABEL_311;
                    }
                  }

                  else
                  {
                    LOBYTE(v559) = v173;
                    sub_22E6F37C4(HIBYTE(v173), SBYTE6(v173), SBYTE5(v173), SBYTE3(v173), SBYTE2(v173), SBYTE1(v173));
                    HIBYTE(v559) = v387;
                    LOBYTE(v560) = v172;
                    sub_22E6F3814();
                    v388 = sub_22E6E3F40();
                    sub_22E6CFB64(v388, v389);
                    v390 = sub_22E6F394C();
                    v392 = v166;
                    v166 = v168;
                    v168 = v10;
                    v393 = v165;
                    v394 = memcmp(v390, v391, BYTE6(v172));
                    v395 = sub_22E6F37B8();
                    sub_22E6CFBBC(v395, v396);
                    v397 = sub_22E6E3F40();
                    sub_22E6CFBBC(v397, v398);
                    v399 = v393;
                    v10 = v168;
                    sub_22E6CFBBC(v392, v399);
                    sub_22E6CFBBC(v166, v167);
                    v400 = sub_22E6E3F40();
                    sub_22E6CFBBC(v400, v401);
                    v332 = v554;
                    if (v394)
                    {
                      goto LABEL_311;
                    }
                  }

                  break;
              }

              break;
            case 2uLL:
              v317 = *(v173 + 16);
              v316 = *(v173 + 24);
              v37 = __OFSUB__(v316, v317);
              v315 = v316 - v317;
              if (!v37)
              {
                goto LABEL_184;
              }

              goto LABEL_321;
            case 3uLL:
              if (v312)
              {
                goto LABEL_310;
              }

              goto LABEL_191;
            default:
              v315 = BYTE6(v172);
              goto LABEL_184;
          }

LABEL_211:
          if (*&v10[*(v332 + 24)] != *(v558 + *(v332 + 24)))
          {
            goto LABEL_311;
          }

          sub_22E6F3928();
          sub_22E6F3A20();
          if (v22)
          {
            v429 = 0;
            if (!v425 && v0 == 0xC000000000000000 && v424 >= 3)
            {
              v429 = 0;
              if (!v168 && v166 == 0xC000000000000000)
              {
                goto LABEL_255;
              }
            }
          }

          else
          {
            v429 = 0;
            switch(v427)
            {
              case 0:
                v429 = BYTE6(v0);
                break;
              case 1:
                LODWORD(v429) = v426 - v425;
                if (__OFSUB__(v426, v425))
                {
                  goto LABEL_335;
                }

                v429 = v429;
                break;
              case 2:
                v431 = *(v425 + 16);
                v430 = *(v425 + 24);
                v37 = __OFSUB__(v430, v431);
                v429 = v430 - v431;
                if (!v37)
                {
                  break;
                }

                goto LABEL_334;
              case 3:
                break;
              default:
                goto LABEL_355;
            }
          }

          switch(v424)
          {
            case 1uLL:
              LODWORD(v432) = HIDWORD(v168) - v168;
              if (__OFSUB__(HIDWORD(v168), v168))
              {
                goto LABEL_323;
              }

              v432 = v432;
LABEL_237:
              if (v429 != v432)
              {
                goto LABEL_311;
              }

              if (v429 < 1)
              {
                goto LABEL_255;
              }

              break;
            case 2uLL:
              v434 = *(v168 + 16);
              v433 = *(v168 + 24);
              v37 = __OFSUB__(v433, v434);
              v432 = v433 - v434;
              if (!v37)
              {
                goto LABEL_237;
              }

              goto LABEL_322;
            case 3uLL:
              if (v429)
              {
                goto LABEL_311;
              }

              goto LABEL_255;
            default:
              v432 = BYTE6(v166);
              goto LABEL_237;
          }

          switch(v427)
          {
            case 1:
              sub_22E6F3A64();
              if (v60 != v37)
              {
                goto LABEL_342;
              }

              v462 = sub_22E6F3798();
              sub_22E6CFB64(v462, v463);
              v464 = sub_22E6F3798();
              sub_22E6CFB64(v464, v465);
              v466 = sub_22E6F3798();
              sub_22E6CFB64(v466, v467);
              v449 = sub_22E6F3844();
LABEL_248:
              v468 = sub_22E6F3A48(v449, v450, v451);
              v556 = v167;
              v469 = sub_22E6F3798();
              sub_22E6CFBBC(v469, v470);
              v471 = sub_22E6F3798();
              sub_22E6CFBBC(v471, v472);
              goto LABEL_254;
            case 2:
              v167 = *(v425 + 16);
              v443 = sub_22E6F3798();
              sub_22E6CFB64(v443, v444);
              v445 = sub_22E6F3798();
              sub_22E6CFB64(v445, v446);
              v447 = sub_22E6F3798();
              sub_22E6CFB64(v447, v448);
              v449 = sub_22E6F38D8();
              goto LABEL_248;
            case 3:
              sub_22E6F3964();
              if (v452)
              {
                if (v452 == 2)
                {
                  v454 = sub_22E6F3798();
                  sub_22E6CFB64(v454, v455);
                  v456 = sub_22E6F3798();
                  sub_22E6CFB64(v456, v457);
                  v458 = sub_22E6F37E0();
                }

                else
                {
                  if (v168 >> 32 < v168)
                  {
                    goto LABEL_352;
                  }

                  v476 = sub_22E6F3798();
                  sub_22E6CFB64(v476, v477);
                  v478 = sub_22E6F3798();
                  sub_22E6CFB64(v478, v479);
                  v458 = sub_22E6F37F4();
                }

                v167 = v556;
                v468 = sub_22E6F239C(v458, v459, v460, v461);
                v480 = sub_22E6F3798();
                sub_22E6CFBBC(v480, v481);
                v482 = sub_22E6F3798();
                sub_22E6CFBBC(v482, v483);
                v556 = v167;
                if (v167)
                {
                  goto LABEL_354;
                }

LABEL_254:
                if ((v468 & 1) == 0)
                {
                  goto LABEL_311;
                }
              }

              else
              {
                LOWORD(v559) = v168;
                BYTE2(v559) = BYTE2(v168);
                BYTE3(v559) = BYTE3(v168);
                BYTE4(v559) = v453;
                BYTE5(v559) = BYTE5(v168);
                BYTE6(v559) = BYTE6(v168);
                HIBYTE(v559) = HIBYTE(v168);
                v560 = v166;
                v561 = BYTE2(v166);
                sub_22E6F3A00(SBYTE5(v166));
                v473 = sub_22E6F394C();
                if (memcmp(v473, v474, v475))
                {
                  goto LABEL_311;
                }
              }

              break;
            default:
              LOWORD(v565) = v425;
              BYTE2(v565) = BYTE2(v425);
              BYTE3(v565) = BYTE3(v425);
              BYTE4(v565) = v426;
              BYTE5(v565) = BYTE5(v425);
              BYTE6(v565) = BYTE6(v425);
              HIBYTE(v565) = HIBYTE(v425);
              LOWORD(v566) = v0;
              BYTE2(v566) = BYTE2(v0);
              HIBYTE(v566) = BYTE3(v0);
              LOBYTE(v567) = BYTE4(v0);
              HIBYTE(v567) = BYTE5(v0);
              v435 = sub_22E6F3798();
              sub_22E6CFB64(v435, v436);
              v437 = sub_22E6F3798();
              sub_22E6CFB64(v437, v438);
              v167 = v556;
              sub_22E6F2044(&v559, &v565, v168, v166);
              v556 = v167;
              v439 = sub_22E6F3798();
              sub_22E6CFBBC(v439, v440);
              v441 = sub_22E6F3798();
              sub_22E6CFBBC(v441, v442);
              if ((v559 & 1) == 0)
              {
                goto LABEL_311;
              }

              break;
          }

LABEL_255:
          sub_22E6F3928();
          sub_22E6F3A20();
          if (v22)
          {
            v489 = 0;
            if (!v485 && v0 == 0xC000000000000000 && v484 >= 3)
            {
              v489 = 0;
              if (!v168 && v166 == 0xC000000000000000)
              {
                goto LABEL_291;
              }
            }
          }

          else
          {
            v489 = 0;
            switch(v487)
            {
              case 0:
                v489 = BYTE6(v0);
                break;
              case 1:
                LODWORD(v489) = v486 - v485;
                if (__OFSUB__(v486, v485))
                {
                  goto LABEL_337;
                }

                v489 = v489;
                break;
              case 2:
                v491 = *(v485 + 16);
                v490 = *(v485 + 24);
                v37 = __OFSUB__(v490, v491);
                v489 = v490 - v491;
                if (!v37)
                {
                  break;
                }

                goto LABEL_338;
              case 3:
                break;
              default:
                goto LABEL_355;
            }
          }

          switch(v484)
          {
            case 1uLL:
              LODWORD(v492) = HIDWORD(v168) - v168;
              if (__OFSUB__(HIDWORD(v168), v168))
              {
                goto LABEL_324;
              }

              v492 = v492;
LABEL_280:
              if (v489 != v492)
              {
                goto LABEL_311;
              }

              if (v489 >= 1)
              {
                switch(v487)
                {
                  case 1:
                    sub_22E6F3A64();
                    if (v60 != v37)
                    {
                      goto LABEL_343;
                    }

                    v519 = sub_22E6F3798();
                    sub_22E6CFB64(v519, v520);
                    v521 = sub_22E6F3798();
                    sub_22E6CFB64(v521, v522);
                    v523 = sub_22E6F3798();
                    sub_22E6CFB64(v523, v524);
                    v507 = sub_22E6F3844();
LABEL_290:
                    v525 = sub_22E6F3A48(v507, v508, v509);
                    v556 = v167;
                    v526 = sub_22E6F3798();
                    sub_22E6CFBBC(v526, v527);
                    v528 = sub_22E6F3798();
                    sub_22E6CFBBC(v528, v529);
                    if (v525)
                    {
                      goto LABEL_291;
                    }

                    goto LABEL_311;
                  case 2:
                    v167 = *(v485 + 16);
                    v501 = sub_22E6F3798();
                    sub_22E6CFB64(v501, v502);
                    v503 = sub_22E6F3798();
                    sub_22E6CFB64(v503, v504);
                    v505 = sub_22E6F3798();
                    sub_22E6CFB64(v505, v506);
                    v507 = sub_22E6F38D8();
                    goto LABEL_290;
                  case 3:
                    sub_22E6F3964();
                    v510 = sub_22E6F3798();
                    sub_22E6CFB64(v510, v511);
                    v512 = sub_22E6F3798();
                    sub_22E6CFB64(v512, v513);
                    v500 = sub_22E6F3A10();
                    goto LABEL_286;
                  default:
                    LOWORD(v565) = v485;
                    BYTE2(v565) = BYTE2(v485);
                    BYTE3(v565) = BYTE3(v485);
                    BYTE4(v565) = v486;
                    BYTE5(v565) = BYTE5(v485);
                    BYTE6(v565) = BYTE6(v485);
                    HIBYTE(v565) = HIBYTE(v485);
                    LOWORD(v566) = v0;
                    BYTE2(v566) = BYTE2(v0);
                    HIBYTE(v566) = BYTE3(v0);
                    LOBYTE(v567) = BYTE4(v0);
                    HIBYTE(v567) = BYTE5(v0);
                    v495 = sub_22E6F3798();
                    sub_22E6CFB64(v495, v496);
                    v497 = sub_22E6F3798();
                    sub_22E6CFB64(v497, v498);
                    v499 = &v559;
                    v500 = &v565;
LABEL_286:
                    v514 = v556;
                    sub_22E6F2044(v499, v500, v168, v166);
                    v556 = v514;
                    v515 = sub_22E6F3798();
                    sub_22E6CFBBC(v515, v516);
                    v517 = sub_22E6F3798();
                    sub_22E6CFBBC(v517, v518);
                    if ((v559 & 1) == 0)
                    {
                      goto LABEL_311;
                    }

                    goto LABEL_291;
                }
              }

              break;
            case 2uLL:
              v494 = *(v168 + 16);
              v493 = *(v168 + 24);
              v37 = __OFSUB__(v493, v494);
              v492 = v493 - v494;
              if (!v37)
              {
                goto LABEL_280;
              }

              goto LABEL_325;
            case 3uLL:
              if (v489)
              {
                goto LABEL_311;
              }

              break;
            default:
              v492 = BYTE6(v166);
              goto LABEL_280;
          }

LABEL_291:
          v530 = *(v557 + 28);
          v531 = &v10[v530];
          v532 = (v558 + v530);
          v533 = *&v10[v530] == *(v558 + v530) && *&v10[v530 + 8] == *(v558 + v530 + 8);
          if (!v533 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_311;
          }

          v534 = *(v531 + 2) == v532[2] && *(v531 + 3) == v532[3];
          if (!v534 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_311;
          }

          v535 = *(v531 + 4) == v532[4] && *(v531 + 5) == v532[5];
          if (!v535 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_311;
          }

          type metadata accessor for Credential(0);
          v536 = static Date.== infix(_:_:)();
          sub_22E6F3700(v558, type metadata accessor for AssetSkeleton);
          sub_22E6F3700(v10, type metadata accessor for AssetSkeleton);
          if ((v536 & 1) == 0)
          {
            goto LABEL_312;
          }

          v11 = v553 - 1;
          v14 = v551 + v550;
          v13 = v552 + v550;
          if (v553 == 1)
          {
            goto LABEL_312;
          }

          continue;
        }

LABEL_310:
        v537 = sub_22E6F37B8();
        sub_22E6CFBBC(v537, v538);
        v539 = sub_22E6E3F40();
        sub_22E6CFBBC(v539, v540);
        v541 = sub_22E6F382C();
        sub_22E6CFBBC(v541, v542);
        v543 = sub_22E6F39CC();
        sub_22E6CFBBC(v543, v544);
LABEL_311:
        sub_22E6F3700(v558, type metadata accessor for AssetSkeleton);
        sub_22E6F3700(v10, type metadata accessor for AssetSkeleton);
LABEL_312:
        sub_22E6EB538();
        return;
    }
  }
}

void sub_22E6EFD24()
{
  sub_22E6EB570();
  v1 = v0;
  v3 = v2;
  v318 = *MEMORY[0x277D85DE8];
  v308 = type metadata accessor for AssetUploadRequest(0);
  sub_22E6F3904();
  MEMORY[0x28223BE20](v4);
  sub_22E6F38F4();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v297 - v9;
  v11 = *(v3 + 16);
  if (v11 != *(v1 + 16) || !v11 || v3 == v1)
  {
    goto LABEL_169;
  }

  sub_22E6F38E4();
  v13 = v3 + v12;
  v14 = v1 + v12;
  v301 = *(v15 + 72);
  v302 = 0;
  while (2)
  {
    sub_22E6F3698(v13, v10, type metadata accessor for AssetUploadRequest);
    sub_22E6F3698(v14, v7, type metadata accessor for AssetUploadRequest);
    sub_22E6F382C();
    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_168;
    }

    v16 = v308[5];
    v17 = *&v10[v16];
    v18 = *&v10[v16 + 8];
    v19 = (v7 + v16);
    v20 = v17 == *v19 && v18 == v19[1];
    if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_168;
    }

    v22 = v308[9];
    v23 = *&v10[v22];
    v24 = *&v10[v22 + 8];
    v25 = *&v10[v22 + 16];
    v26 = *&v10[v22 + 24];
    v27 = (v7 + v22);
    v29 = *v27;
    v28 = v27[1];
    v30 = v24 >> 62;
    v32 = v27[2];
    v31 = v27[3];
    v33 = v28 >> 62;
    v306 = v31;
    v307 = v25;
    v303 = v23;
    v304 = v24;
    v305 = v28;
    if (v21)
    {
      v41 = 0;
      if (!v23 && v24 == 0xC000000000000000 && v28 >> 62 == 3)
      {
        v41 = 0;
        if (!v29 && v28 == 0xC000000000000000)
        {
          v35 = sub_22E6F3958();
          sub_22E6CFB64(v35, v36);
          v37 = sub_22E6F3838();
          sub_22E6CFB64(v37, v38);
          v39 = sub_22E6F3958();
          sub_22E6CFB64(v39, v40);
LABEL_51:
          sub_22E6CFB64(v32, v31);
          goto LABEL_52;
        }
      }
    }

    else
    {
      v41 = 0;
      switch(v30)
      {
        case 0uLL:
          v41 = BYTE6(v24);
          break;
        case 1uLL:
          if (__OFSUB__(HIDWORD(v23), v23))
          {
            goto LABEL_175;
          }

          v41 = HIDWORD(v23) - v23;
          break;
        case 2uLL:
          v43 = *(v23 + 16);
          v42 = *(v23 + 24);
          v44 = __OFSUB__(v42, v43);
          v41 = v42 - v43;
          if (!v44)
          {
            break;
          }

          goto LABEL_174;
        case 3uLL:
          break;
        default:
          goto LABEL_202;
      }
    }

    v45 = BYTE6(v28);
    switch(v33)
    {
      case 1uLL:
        LODWORD(v46) = HIDWORD(v29) - v29;
        if (__OFSUB__(HIDWORD(v29), v29))
        {
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
        }

        v46 = v46;
LABEL_39:
        if (v41 != v46)
        {
          goto LABEL_168;
        }

        if (v41 < 1)
        {
LABEL_50:
          sub_22E6CFB64(v23, v24);
          v62 = sub_22E6F3838();
          sub_22E6CFB64(v62, v63);
          v64 = sub_22E6F3970();
          sub_22E6CFB64(v64, v65);
          v31 = v306;
          goto LABEL_51;
        }

        break;
      case 2uLL:
        v48 = *(v29 + 16);
        v47 = *(v29 + 24);
        v44 = __OFSUB__(v47, v48);
        v46 = v47 - v48;
        if (!v44)
        {
          goto LABEL_39;
        }

        goto LABEL_171;
      case 3uLL:
        if (v41)
        {
          goto LABEL_168;
        }

        goto LABEL_50;
      default:
        v46 = BYTE6(v28);
        goto LABEL_39;
    }

    switch(v30)
    {
      case 1:
        v298 = v32;
        v299 = v14;
        v300 = v13;
        v147 = v23 >> 32;
        if (v23 >> 32 < v23)
        {
          goto LABEL_178;
        }

        v297 = v23;
        v148 = v23;
        sub_22E6CFB64(v29, v305);
        v149 = sub_22E6F397C();
        sub_22E6CFB64(v149, v150);
        sub_22E6CFB64(v148, v304);
        v151 = sub_22E6F3838();
        sub_22E6CFB64(v151, v152);
        v153 = sub_22E6F397C();
        sub_22E6CFB64(v153, v154);
        sub_22E6CFB64(v298, v306);
        v155 = sub_22E6F397C();
        sub_22E6CFB64(v155, v156);
        if (__DataStorage._bytes.getter())
        {
          v157 = __DataStorage._offset.getter();
          v158 = v297;
          if (__OFSUB__(v297, v157))
          {
            goto LABEL_183;
          }
        }

        else
        {
          v158 = v297;
        }

        v203 = v147 - v158;
        MEMORY[0x2318EBFC0]();
        v204 = sub_22E6F3778();
        sub_22E6F3ADC(v204, v205);
        v302 = v203;
        v206 = sub_22E6F3850();
        sub_22E6CFBBC(v206, v207);
        v208 = sub_22E6F3850();
        sub_22E6CFBBC(v208, v209);
        v210 = sub_22E6F3850();
        sub_22E6CFBBC(v210, v211);
        v14 = v299;
        v13 = v300;
        v32 = v298;
        if ((v312 & 1) == 0)
        {
          goto LABEL_167;
        }

        goto LABEL_52;
      case 2:
        v297 = v11;
        v299 = v14;
        v300 = v13;
        v107 = *(v23 + 16);
        v106 = *(v23 + 24);
        v108 = v23;
        v109 = v24;
        sub_22E6CFB64(v29, v305);
        v110 = sub_22E6F39B4();
        sub_22E6CFB64(v110, v111);
        sub_22E6CFB64(v108, v109);
        v112 = sub_22E6F3838();
        sub_22E6CFB64(v112, v113);
        v114 = sub_22E6F39B4();
        sub_22E6CFB64(v114, v115);
        v298 = v32;
        sub_22E6CFB64(v32, v306);
        v116 = sub_22E6F39B4();
        sub_22E6CFB64(v116, v117);
        if (__DataStorage._bytes.getter() && __OFSUB__(v107, __DataStorage._offset.getter()))
        {
          goto LABEL_182;
        }

        if (__OFSUB__(v106, v107))
        {
          goto LABEL_179;
        }

        MEMORY[0x2318EBFC0]();
        v118 = sub_22E6F3778();
        sub_22E6F3ADC(v118, v119);
        v302 = v106 - v107;
        v120 = sub_22E6F3850();
        sub_22E6CFBBC(v120, v121);
        v122 = sub_22E6F3850();
        sub_22E6CFBBC(v122, v123);
        v124 = sub_22E6F3850();
        sub_22E6CFBBC(v124, v125);
        v14 = v299;
        v13 = v300;
        v11 = v297;
        v32 = v298;
        if ((v312 & 1) == 0)
        {
          goto LABEL_167;
        }

        goto LABEL_52;
      case 3:
        sub_22E6F3964();
        v126 = v29;
        v127 = v26;
        v129 = v128;
        v131 = v130;
        sub_22E6CFB64(v126, v130);
        v132 = v129;
        v133 = v307;
        sub_22E6CFB64(v132, v304);
        v134 = v133;
        v26 = v127;
        v135 = v127;
        v29 = v126;
        sub_22E6CFB64(v134, v135);
        sub_22E6CFB64(v126, v131);
        v136 = sub_22E6F3A84();
        sub_22E6CFB64(v136, v137);
        sub_22E6CFB64(v126, v131);
        v138 = sub_22E6F3A10();
        v139 = v126;
        v140 = v32;
        v141 = v302;
        sub_22E6F2044(v142, v138, v139, v131);
        v302 = v141;
        v32 = v140;
        v143 = sub_22E6F397C();
        sub_22E6CFBBC(v143, v144);
        v145 = sub_22E6F397C();
        sub_22E6CFBBC(v145, v146);
        if ((v309 & 1) == 0)
        {
          goto LABEL_167;
        }

        goto LABEL_52;
      default:
        v312 = v23;
        v313 = v24;
        v314 = BYTE2(v24);
        v315 = BYTE3(v24);
        v316 = BYTE4(v24);
        v317 = BYTE5(v24);
        if (!v33)
        {
          v309 = v29;
          v310 = v305;
          v311 = BYTE2(v305);
          sub_22E6F3A00(SBYTE5(v305));
          sub_22E6CFB64(v224, v225);
          v226 = sub_22E6F3838();
          sub_22E6CFB64(v226, v227);
          v228 = sub_22E6F397C();
          sub_22E6CFB64(v228, v229);
          v230 = sub_22E6F3A84();
          sub_22E6CFB64(v230, v231);
          v232 = sub_22E6F394C();
          if (memcmp(v232, v233, v45))
          {
            goto LABEL_167;
          }

          goto LABEL_52;
        }

        v298 = v32;
        v299 = v14;
        v300 = v13;
        if (v33 == 1)
        {
          v49 = v306;
          if (v29 >> 32 < v29)
          {
            goto LABEL_186;
          }

          sub_22E6CFB64(v29, v305);
          sub_22E6CFB64(v303, v304);
          v50 = sub_22E6F3838();
          sub_22E6CFB64(v50, v51);
          v52 = sub_22E6F39B4();
          sub_22E6CFB64(v52, v53);
          sub_22E6CFB64(v298, v49);
          v54 = __DataStorage._bytes.getter();
          if (v54)
          {
            v55 = __DataStorage._offset.getter();
            if (__OFSUB__(v29, v55))
            {
              goto LABEL_191;
            }

            v54 += v29 - v55;
          }

          v56 = v305 & 0x3FFFFFFFFFFFFFFFLL;
          v57 = MEMORY[0x2318EBFC0]();
          if (!v54)
          {
            goto LABEL_195;
          }

          v58 = sub_22E6F3B5C(v57, (v29 >> 32) - v29);
          v59 = sub_22E6F39B4();
          sub_22E6CFBBC(v59, v60);
          v14 = v299;
          v13 = v300;
        }

        else
        {
          v234 = *(v29 + 24);
          v297 = *(v29 + 16);
          v235 = v23;
          v236 = v24;
          v237 = v305;
          sub_22E6CFB64(v29, v305);
          sub_22E6CFB64(v235, v236);
          v238 = sub_22E6F3838();
          sub_22E6CFB64(v238, v239);
          v240 = sub_22E6E3F40();
          sub_22E6CFB64(v240, v241);
          sub_22E6CFB64(v298, v306);
          v242 = __DataStorage._bytes.getter();
          if (v242)
          {
            v243 = v242;
            v244 = __DataStorage._offset.getter();
            v245 = v297;
            if (__OFSUB__(v297, v244))
            {
              goto LABEL_190;
            }

            v246 = &v297[v243 - v244];
            v247 = v305;
          }

          else
          {
            v246 = 0;
            v247 = v237;
            v245 = v297;
          }

          v44 = __OFSUB__(v234, v245);
          v271 = v234 - v245;
          if (v44)
          {
            goto LABEL_187;
          }

          v56 = v247 & 0x3FFFFFFFFFFFFFFFLL;
          v272 = MEMORY[0x2318EBFC0]();
          v14 = v299;
          if (!v246)
          {
            __break(1u);
LABEL_195:
            __break(1u);
LABEL_196:
            __break(1u);
LABEL_197:
            __break(1u);
LABEL_198:
            v292 = sub_22E6F39C0();
            sub_22E6CFBBC(v292, v293);
            v294 = v11;
LABEL_201:
            sub_22E6CFBBC(v294, v56);
            __break(1u);
LABEL_202:
            JUMPOUT(0);
          }

          if (v272 >= v271)
          {
            v273 = v271;
          }

          else
          {
            v273 = v272;
          }

          v58 = memcmp(&v312, v246, v273);
          sub_22E6CFBBC(v29, v247);
          v13 = v300;
        }

        v32 = v298;
        if (!v58)
        {
LABEL_52:
          v66 = v26 >> 62;
          v67 = v306 >> 62;
          if (v61)
          {
            v75 = 0;
            if (!v307 && v26 == 0xC000000000000000 && v306 >> 62 == 3)
            {
              v75 = 0;
              if (!v32 && v306 == 0xC000000000000000)
              {
                v69 = sub_22E6F3970();
                sub_22E6CFBBC(v69, v70);
                v71 = sub_22E6F3958();
                sub_22E6CFBBC(v71, v72);
                sub_22E6CFBBC(v303, v304);
                v73 = sub_22E6F3958();
LABEL_90:
                sub_22E6CFBBC(v73, v74);
                goto LABEL_91;
              }
            }
          }

          else
          {
            v75 = 0;
            switch(v66)
            {
              case 0uLL:
                v75 = BYTE6(v26);
                break;
              case 1uLL:
                if (__OFSUB__(HIDWORD(v307), v307))
                {
                  goto LABEL_176;
                }

                v75 = HIDWORD(v307) - v307;
                break;
              case 2uLL:
                v77 = *(v307 + 16);
                v76 = *(v307 + 24);
                v44 = __OFSUB__(v76, v77);
                v75 = v76 - v77;
                if (!v44)
                {
                  break;
                }

                goto LABEL_177;
              case 3uLL:
                break;
              default:
                goto LABEL_202;
            }
          }

          v78 = BYTE6(v306);
          switch(v67)
          {
            case 1uLL:
              LODWORD(v79) = HIDWORD(v32) - v32;
              if (__OFSUB__(HIDWORD(v32), v32))
              {
                goto LABEL_172;
              }

              v79 = v79;
LABEL_77:
              if (v75 != v79)
              {
                goto LABEL_167;
              }

              if (v75 < 1)
              {
LABEL_89:
                v95 = sub_22E6F3970();
                sub_22E6CFBBC(v95, v96);
                v97 = sub_22E6F3A84();
                sub_22E6CFBBC(v97, v98);
                sub_22E6CFBBC(v303, v304);
                v73 = sub_22E6F3838();
                goto LABEL_90;
              }

              switch(v66)
              {
                case 1:
                  v297 = v29;
                  v196 = v32;
                  v299 = v14;
                  v300 = v13;
                  v197 = v307 >> 32;
                  if (v307 >> 32 < v307)
                  {
                    goto LABEL_180;
                  }

                  v198 = v307;
                  sub_22E6CFB64(v196, v306);
                  v199 = sub_22E6F3850();
                  sub_22E6CFB64(v199, v200);
                  v201 = sub_22E6F3850();
                  sub_22E6CFB64(v201, v202);
                  if (__DataStorage._bytes.getter() && __OFSUB__(v198, __DataStorage._offset.getter()))
                  {
                    goto LABEL_185;
                  }

                  v212 = v307;
                  v56 = v26 & 0x3FFFFFFFFFFFFFFFLL;
                  MEMORY[0x2318EBFC0]();
                  v213 = sub_22E6F3778();
                  sub_22E6F3AFC(v213, v214);
                  v215 = sub_22E6F3850();
                  sub_22E6CFBBC(v215, v216);
                  v302 = v197 - v198;
                  if (v197 != v198)
                  {
                    v295 = sub_22E6F3850();
                    sub_22E6CFBBC(v295, v296);
                    v294 = v196;
                    goto LABEL_201;
                  }

                  sub_22E6CFBBC(v297, v305);
                  v217 = sub_22E6F3850();
                  sub_22E6CFBBC(v217, v218);
                  sub_22E6CFBBC(v303, v304);
                  sub_22E6CFBBC(v212, v26);
                  v219 = v312;
                  v220 = sub_22E6F39B4();
                  sub_22E6CFBBC(v220, v221);
                  v222 = sub_22E6F39B4();
                  sub_22E6CFBBC(v222, v223);
                  v14 = v299;
                  v13 = v300;
                  if ((v219 & 1) == 0)
                  {
                    goto LABEL_168;
                  }

                  goto LABEL_91;
                case 2:
                  v159 = v29;
                  v297 = v11;
                  v299 = v14;
                  v300 = v13;
                  v160 = v32;
                  v161 = *(v307 + 16);
                  v162 = *(v307 + 24);
                  v163 = sub_22E6F39C0();
                  sub_22E6CFB64(v163, v164);
                  v165 = sub_22E6F39C0();
                  sub_22E6CFB64(v165, v166);
                  v167 = v160;
                  v168 = sub_22E6F39C0();
                  sub_22E6CFB64(v168, v169);
                  if (__DataStorage._bytes.getter() && __OFSUB__(v161, __DataStorage._offset.getter()))
                  {
                    goto LABEL_184;
                  }

                  v11 = v297;
                  v44 = __OFSUB__(v162, v161);
                  v170 = v162 - v161;
                  if (v44)
                  {
                    goto LABEL_181;
                  }

                  v56 = v26 & 0x3FFFFFFFFFFFFFFFLL;
                  MEMORY[0x2318EBFC0]();
                  v171 = sub_22E6F3778();
                  sub_22E6F3AFC(v171, v172);
                  v173 = sub_22E6F3850();
                  sub_22E6CFBBC(v173, v174);
                  v14 = v299;
                  v302 = v170;
                  if (v170)
                  {
                    sub_22E6CFBBC(v167, v26 & 0x3FFFFFFFFFFFFFFFLL);
                    v294 = v167;
                    goto LABEL_201;
                  }

                  sub_22E6CFBBC(v159, v305);
                  sub_22E6CFBBC(v167, v26 & 0x3FFFFFFFFFFFFFFFLL);
                  sub_22E6CFBBC(v303, v304);
                  v175 = sub_22E6F3838();
                  sub_22E6CFBBC(v175, v176);
                  v177 = v312;
                  v178 = sub_22E6F3A3C();
                  sub_22E6CFBBC(v178, v179);
                  v180 = sub_22E6F3A3C();
                  sub_22E6CFBBC(v180, v181);
                  v13 = v300;
                  if ((v177 & 1) == 0)
                  {
                    goto LABEL_168;
                  }

                  break;
                case 3:
                  v297 = v11;
                  sub_22E6F3964();
                  v56 = v306;
                  sub_22E6CFB64(v32, v306);
                  sub_22E6CFB64(v32, v56);
                  v182 = sub_22E6F3A10();
                  v183 = v32;
                  v11 = v32;
                  v184 = v302;
                  sub_22E6F2044(v185, v182, v183, v56);
                  v302 = v184;
                  if (v184)
                  {
                    goto LABEL_198;
                  }

                  v186 = sub_22E6F3970();
                  sub_22E6CFBBC(v186, v187);
                  v188 = sub_22E6F39C0();
                  sub_22E6CFBBC(v188, v189);
                  sub_22E6CFBBC(v303, v304);
                  v190 = sub_22E6F3838();
                  sub_22E6CFBBC(v190, v191);
                  v192 = sub_22E6F39C0();
                  sub_22E6CFBBC(v192, v193);
                  v194 = sub_22E6F39C0();
                  sub_22E6CFBBC(v194, v195);
                  v11 = v297;
                  if ((v309 & 1) == 0)
                  {
                    goto LABEL_168;
                  }

                  goto LABEL_91;
                default:
                  v312 = v307;
                  v313 = v26;
                  v314 = BYTE2(v26);
                  v315 = BYTE3(v26);
                  v316 = BYTE4(v26);
                  v317 = BYTE5(v26);
                  if (v67)
                  {
                    v299 = v14;
                    v300 = v13;
                    v298 = v32;
                    if (v67 == 1)
                    {
                      v82 = v32;
                      v83 = v32 >> 32;
                      if (v83 < v82)
                      {
                        goto LABEL_188;
                      }

                      v84 = v82;
                      sub_22E6CFB64(v82, v306);
                      v85 = __DataStorage._bytes.getter();
                      if (v85)
                      {
                        v86 = __DataStorage._offset.getter();
                        if (__OFSUB__(v84, v86))
                        {
                          goto LABEL_193;
                        }

                        v85 += v84 - v86;
                      }

                      v87 = v306;
                      v56 = v306 & 0x3FFFFFFFFFFFFFFFLL;
                      v88 = MEMORY[0x2318EBFC0]();
                      if (!v85)
                      {
                        goto LABEL_197;
                      }

                      v89 = sub_22E6F3B5C(v88, v83 - v84);
                      v90 = sub_22E6F3970();
                      sub_22E6CFBBC(v90, v91);
                      v92 = v298;
                      sub_22E6CFBBC(v298, v87);
                      sub_22E6CFBBC(v303, v304);
                      v93 = sub_22E6F3838();
                      sub_22E6CFBBC(v93, v94);
                      sub_22E6CFBBC(v92, v87);
                      v14 = v299;
                      v13 = v300;
                      if (v89)
                      {
                        goto LABEL_168;
                      }
                    }

                    else
                    {
                      v297 = v11;
                      v263 = v32;
                      v264 = *(v32 + 16);
                      v265 = *(v263 + 24);
                      v266 = v306;
                      sub_22E6CFB64(v263, v306);
                      v267 = __DataStorage._bytes.getter();
                      if (v267)
                      {
                        v268 = v267;
                        v269 = __DataStorage._offset.getter();
                        if (__OFSUB__(v264, v269))
                        {
                          goto LABEL_192;
                        }

                        v11 = (v264 - v269 + v268);
                        v270 = v306;
                      }

                      else
                      {
                        v11 = 0;
                        v270 = v266;
                      }

                      v44 = __OFSUB__(v265, v264);
                      v274 = v265 - v264;
                      if (v44)
                      {
                        goto LABEL_189;
                      }

                      v56 = v270 & 0x3FFFFFFFFFFFFFFFLL;
                      v275 = MEMORY[0x2318EBFC0]();
                      v14 = v299;
                      if (!v11)
                      {
                        goto LABEL_196;
                      }

                      if (v275 >= v274)
                      {
                        v276 = v274;
                      }

                      else
                      {
                        v276 = v275;
                      }

                      v277 = memcmp(&v312, v11, v276);
                      v278 = sub_22E6F3970();
                      sub_22E6CFBBC(v278, v279);
                      v280 = sub_22E6F3A30();
                      sub_22E6CFBBC(v280, v281);
                      sub_22E6CFBBC(v303, v304);
                      v282 = sub_22E6F3838();
                      sub_22E6CFBBC(v282, v283);
                      v284 = sub_22E6F3A30();
                      sub_22E6CFBBC(v284, v285);
                      v13 = v300;
                      v11 = v297;
                      if (v277)
                      {
                        goto LABEL_168;
                      }
                    }
                  }

                  else
                  {
                    LOWORD(v309) = v32;
                    BYTE2(v309) = BYTE2(v32);
                    BYTE3(v309) = BYTE3(v32);
                    BYTE4(v309) = BYTE4(v32);
                    BYTE5(v309) = BYTE5(v32);
                    v248 = HIBYTE(v32);
                    BYTE6(v309) = BYTE6(v32);
                    v297 = v11;
                    v249 = v32;
                    v250 = v306;
                    HIBYTE(v309) = v248;
                    v310 = v306;
                    v311 = BYTE2(v306);
                    sub_22E6F3A00(SBYTE5(v306));
                    v251 = sub_22E6F39CC();
                    sub_22E6CFB64(v251, v252);
                    v253 = sub_22E6F394C();
                    v255 = memcmp(v253, v254, v78);
                    v256 = sub_22E6F3970();
                    sub_22E6CFBBC(v256, v257);
                    v258 = sub_22E6F39CC();
                    sub_22E6CFBBC(v258, v259);
                    sub_22E6CFBBC(v303, v304);
                    v260 = sub_22E6F3838();
                    sub_22E6CFBBC(v260, v261);
                    v262 = v249;
                    v11 = v297;
                    sub_22E6CFBBC(v262, v250);
                    if (v255)
                    {
                      goto LABEL_168;
                    }
                  }

                  goto LABEL_91;
              }

              break;
            case 2uLL:
              v81 = *(v32 + 16);
              v80 = *(v32 + 24);
              v44 = __OFSUB__(v80, v81);
              v79 = v80 - v81;
              if (!v44)
              {
                goto LABEL_77;
              }

              goto LABEL_173;
            case 3uLL:
              if (v75)
              {
                goto LABEL_167;
              }

              goto LABEL_89;
            default:
              v79 = BYTE6(v306);
              goto LABEL_77;
          }

LABEL_91:
          v99 = v308[10];
          v100 = &v10[v99];
          v101 = (v7 + v99);
          v102 = *&v10[v99] == *(v7 + v99) && *&v10[v99 + 8] == *(v7 + v99 + 8);
          if (!v102 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_168;
          }

          v103 = *(v100 + 2) == v101[2] && *(v100 + 3) == v101[3];
          if (!v103 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_168;
          }

          v104 = *(v100 + 4) == v101[4] && *(v100 + 5) == v101[5];
          if (!v104 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_168;
          }

          type metadata accessor for Credential(0);
          v105 = static Date.== infix(_:_:)();
          sub_22E6F3700(v7, type metadata accessor for AssetUploadRequest);
          sub_22E6F3700(v10, type metadata accessor for AssetUploadRequest);
          if ((v105 & 1) == 0)
          {
            goto LABEL_169;
          }

          v14 += v301;
          v13 += v301;
          if (!--v11)
          {
            goto LABEL_169;
          }

          continue;
        }

LABEL_167:
        v286 = sub_22E6F3970();
        sub_22E6CFBBC(v286, v287);
        v288 = sub_22E6F3A84();
        sub_22E6CFBBC(v288, v289);
        sub_22E6CFBBC(v303, v304);
        v290 = sub_22E6F3838();
        sub_22E6CFBBC(v290, v291);
LABEL_168:
        sub_22E6F3700(v7, type metadata accessor for AssetUploadRequest);
        sub_22E6F3700(v10, type metadata accessor for AssetUploadRequest);
LABEL_169:
        sub_22E6EB538();
        return;
    }
  }
}

uint64_t sub_22E6F0D80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudAssets_Asset(0) - 8;
  MEMORY[0x28223BE20](v4);
  sub_22E6F38F4();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = v28 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v26 = 1;
    }

    else
    {
      sub_22E6F38E4();
      v13 = a1 + v12;
      v14 = a2 + v12;
      v16 = *(v15 + 72);
      do
      {
        sub_22E6F3698(v13, v10, type metadata accessor for CloudAssets_Asset);
        sub_22E6F3698(v14, v7, type metadata accessor for CloudAssets_Asset);
        v17 = sub_22E6F3AB0();
        sub_22E6E58AC(v17, v18, v19, v20, v21, v22, v23, v24, v28[0], v28[1], v28[2], v28[3]);
        v26 = v25;
        sub_22E6F3700(v7, type metadata accessor for CloudAssets_Asset);
        sub_22E6F3700(v10, type metadata accessor for CloudAssets_Asset);
        if ((v26 & 1) == 0)
        {
          break;
        }

        v14 += v16;
        v13 += v16;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v26 = 0;
  }

  return v26 & 1;
}

void sub_22E6F0F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22E6EB570();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  type metadata accessor for CloudAssets_Signal.Event(0);
  sub_22E6F3904();
  MEMORY[0x28223BE20](v26);
  sub_22E6F38F4();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = *(v25 + 16);
  if (v33 == *(v23 + 16) && v33 && v25 != v23)
  {
    sub_22E6F38E4();
    v35 = v25 + v34;
    v36 = v23 + v34;
    v38 = *(v37 + 72);
    while (1)
    {
      v39 = sub_22E6F3798();
      sub_22E6F3698(v39, v40, v41);
      v42 = sub_22E6F3844();
      sub_22E6F3698(v42, v43, v44);
      v45 = *v32;
      v46 = *v29;
      if (v32[8])
      {
        v45 = *v32 != 0;
      }

      if (*(v29 + 8) == 1)
      {
        if (v46)
        {
          if (v45 != 1)
          {
            break;
          }
        }

        else if (v45)
        {
          break;
        }
      }

      else if (v45 != v46)
      {
        break;
      }

      if (*(v32 + 2) != *(v29 + 16))
      {
        break;
      }

      type metadata accessor for UnknownStorage();
      sub_22E6F3650(&qword_27DA6CC78, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v47 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_22E6F3700(v29, type metadata accessor for CloudAssets_Signal.Event);
      sub_22E6F3700(v32, type metadata accessor for CloudAssets_Signal.Event);
      if (v47)
      {
        v36 += v38;
        v35 += v38;
        if (--v33)
        {
          continue;
        }
      }

      goto LABEL_20;
    }

    sub_22E6F3700(v29, type metadata accessor for CloudAssets_Signal.Event);
    v48 = sub_22E6F382C();
    sub_22E6F3700(v48, v49);
  }

LABEL_20:
  sub_22E6EB538();
}

uint64_t sub_22E6F1190(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7165526863746162 && a2 == 0xED00007374736575;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65526D6165727473 && a2 == 0xEE00737473657571)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22E6F1268(char a1)
{
  if (a1)
  {
    return 0x65526D6165727473;
  }

  else
  {
    return 0x7165526863746162;
  }
}

uint64_t sub_22E6F12B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7374736575716572 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22E6F1354@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22E6CFE14();
  *a1 = result & 1;
  return result;
}

uint64_t sub_22E6F1380(uint64_t a1)
{
  v2 = sub_22E6F190C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6F13BC(uint64_t a1)
{
  v2 = sub_22E6F190C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E6F1400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E6F1190(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E6F1428(uint64_t a1)
{
  v2 = sub_22E6F1864();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6F1464(uint64_t a1)
{
  v2 = sub_22E6F1864();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E6F14A0(uint64_t a1)
{
  v2 = sub_22E6F18B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6F14DC(uint64_t a1)
{
  v2 = sub_22E6F18B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DownloadRequestMessage.encode(to:)(void *a1)
{
  sub_22E6CF1CC(&qword_27DA6CCC8, &qword_22E7286B0);
  sub_22E6CF988();
  v29 = v4;
  v30 = v3;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  sub_22E6CF1CC(&qword_27DA6CCD0, &qword_22E7286B8);
  sub_22E6CF988();
  v27 = v9;
  v28 = v8;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v32 = sub_22E6CF1CC(&qword_27DA6CCD8, &qword_22E7286C0);
  sub_22E6CF988();
  sub_22E6D374C();
  MEMORY[0x28223BE20](v13);
  v31 = *v1;
  v14 = *(v1 + 8);
  sub_22E6CF214(a1, a1[3]);
  sub_22E6F1864();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v14)
  {
    LOBYTE(v33) = 1;
    sub_22E6F18B8();
    sub_22E6F3B1C(&type metadata for DownloadRequestMessage.StreamRequestsCodingKeys, &v33);
    v33 = v31;
    sub_22E6CF1CC(&qword_27DA6CCF0, &qword_22E7286C8);
    sub_22E6F3878();
    sub_22E6F2F84(v15, v16, v17, MEMORY[0x277D83948]);
    v18 = v30;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v29 + 8))(v7, v18);
  }

  else
  {
    LOBYTE(v33) = 0;
    sub_22E6F190C();
    sub_22E6F3B1C(&type metadata for DownloadRequestMessage.BatchRequestsCodingKeys, &v33);
    v33 = v31;
    sub_22E6CF1CC(&qword_27DA6CCF0, &qword_22E7286C8);
    sub_22E6F3878();
    sub_22E6F2F84(v19, v20, v21, MEMORY[0x277D83948]);
    v22 = v28;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v27 + 8))(v12, v22);
  }

  v23 = sub_22E6F3798();
  return v24(v23);
}

unint64_t sub_22E6F1864()
{
  result = qword_27DA6CCE0;
  if (!qword_27DA6CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CCE0);
  }

  return result;
}

unint64_t sub_22E6F18B8()
{
  result = qword_27DA6CCE8;
  if (!qword_27DA6CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CCE8);
  }

  return result;
}

unint64_t sub_22E6F190C()
{
  result = qword_27DA6CD00;
  if (!qword_27DA6CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CD00);
  }

  return result;
}

uint64_t DownloadRequestMessage.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  MEMORY[0x2318ECB90](*(v1 + 8));

  return sub_22E6F2604(a1, v3);
}

Swift::Int DownloadRequestMessage.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x2318ECB90](v2);
  sub_22E6F2604(v4, v1);
  return Hasher._finalize()();
}

void DownloadRequestMessage.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  sub_22E6CF1CC(&qword_27DA6CD08, &qword_22E7286D0);
  sub_22E6CF988();
  v50 = v3;
  v51 = v4;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22E6CF1CC(&qword_27DA6CD10, &qword_22E7286D8);
  sub_22E6CF988();
  v49 = v7;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v8);
  v10 = v48 - v9;
  v11 = sub_22E6CF1CC(&qword_27DA6CD18, &unk_22E7286E0);
  sub_22E6CF988();
  v52 = v12;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v13);
  v15 = v48 - v14;
  sub_22E6CF214(a1, a1[3]);
  sub_22E6F1864();
  v16 = v54;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    goto LABEL_10;
  }

  v48[2] = v6;
  v48[3] = v10;
  v54 = a1;
  v17 = v53;
  v18 = KeyedDecodingContainer.allKeys.getter();
  sub_22E6F2500(v18, 0);
  if (v21 == v22 >> 1)
  {
    v23 = v15;
LABEL_9:
    v33 = type metadata accessor for DecodingError();
    swift_allocError();
    v35 = v34;
    sub_22E6CF1CC(&qword_27DA6CD20, &qword_22E729070);
    *v35 = &type metadata for DownloadRequestMessage;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v52 + 8))(v23, v11);
    a1 = v54;
LABEL_10:
    sub_22E6CF2F4(a1);
    return;
  }

  v48[1] = 0;
  if (v21 >= (v22 >> 1))
  {
    __break(1u);
  }

  else
  {
    v24 = *(v20 + v21);
    sub_22E6F35D4(v21 + 1, v22 >> 1, v19, v20, v21, v22);
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    if (v26 != v28 >> 1)
    {
      v23 = v15;
      goto LABEL_9;
    }

    v29 = v24;
    if (v24)
    {
      LODWORD(v49) = v24;
      LOBYTE(v55) = 1;
      sub_22E6F18B8();
      sub_22E6F3B3C(&type metadata for DownloadRequestMessage.StreamRequestsCodingKeys, &v55);
      sub_22E6CF1CC(&qword_27DA6CCF0, &qword_22E7286C8);
      sub_22E6F3890();
      sub_22E6F2F84(v30, v31, v32, MEMORY[0x277D83978]);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v39 = sub_22E6F397C();
      v40(v39);
      v41 = sub_22E6F3918();
      v42(v41);
      v43 = v55;
      v29 = v49;
    }

    else
    {
      LOBYTE(v55) = 0;
      sub_22E6F190C();
      sub_22E6F3B3C(&type metadata for DownloadRequestMessage.BatchRequestsCodingKeys, &v55);
      sub_22E6CF1CC(&qword_27DA6CCF0, &qword_22E7286C8);
      sub_22E6F3890();
      sub_22E6F2F84(v36, v37, v38, MEMORY[0x277D83978]);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v44 = sub_22E6F3A70();
      v45(v44);
      v46 = sub_22E6F3918();
      v47(v46);
      v43 = v55;
      v17 = v53;
    }

    *v17 = v43;
    *(v17 + 8) = v29;
    sub_22E6CF2F4(v54);
  }
}

Swift::Int sub_22E6F1FB4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x2318ECB90](v3);
  sub_22E6F2604(v5, v2);
  return Hasher._finalize()();
}

void sub_22E6F2044(uint64_t *__return_ptr a1@<X8>, char *__s1@<X0>, uint64_t a4@<X2>, unint64_t a5@<X3>)
{
  v17 = *MEMORY[0x277D85DE8];
  switch(a5 >> 62)
  {
    case 1uLL:
      v10 = a4 >> 32;
      if (a4 >> 32 < a4)
      {
        __break(1u);
      }

      v9 = a4;
      goto LABEL_9;
    case 2uLL:
      v9 = *(a4 + 16);
      v10 = *(a4 + 24);
LABEL_9:
      v8 = sub_22E6F239C(v9, v10, a5 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v5)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        v8 = 1;
LABEL_10:
        *a1 = v8 & 1;
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
      }

      return;
    default:
      __s2 = a4;
      v12 = a5;
      v13 = BYTE2(a5);
      v14 = BYTE3(a5);
      v15 = BYTE4(a5);
      v16 = BYTE5(a5);
      if (!__s1)
      {
        goto LABEL_13;
      }

      v8 = memcmp(__s1, &__s2, BYTE6(a5)) == 0;
      goto LABEL_10;
  }
}

uint64_t sub_22E6F21B0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = result;
  switch(a2 >> 62)
  {
    case 1uLL:
      v16 = result >> 32;
      if (result >> 32 >= result)
      {
        v17 = result;
        sub_22E6CFB64(a3, a4);
        v12 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v13 = v17;
        v14 = v16;
        goto LABEL_8;
      }

      __break(1u);
      return result;
    case 2uLL:
      v11 = *(result + 16);
      v10 = *(result + 24);
      sub_22E6CFB64(a3, a4);
      v12 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v13 = v11;
      v14 = v10;
LABEL_8:
      v15 = sub_22E6F22D0(v13, v14, v12, a3, a4);
      goto LABEL_9;
    case 3uLL:
      sub_22E6CFB64(a3, a4);
      v9 = 0;
      v8 = 0;
      goto LABEL_5;
    default:
      sub_22E6CFB64(a3, a4);
      v8 = a2 & 0xFFFFFFFFFFFFFFLL;
      v9 = v7;
LABEL_5:
      v15 = sub_22E6F2454(v9, v8, a3, a4);
LABEL_9:
      v18 = v15;
      sub_22E6CFBBC(a3, a4);
      return v18 & 1;
  }
}

char *sub_22E6F22D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x2318EBFC0]();
  sub_22E6F2044(&v13, v11, a4, a5);
  sub_22E6CFBBC(a4, a5);
  if (!v5)
  {
    v12 = v13;
  }

  return (v12 & 1);
}

char *sub_22E6F239C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = MEMORY[0x2318EBFC0]();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 == a4)
  {
    return 1;
  }

  else
  {
    return (memcmp(a4, v8, v11) == 0);
  }
}

uint64_t sub_22E6F2454(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  __s1 = a1;
  v12 = WORD2(a2);
  v11 = a2;
  sub_22E6F2044(&v9, &__s1, a3, a4);
  sub_22E6CFBBC(a3, a4);
  if (!v4)
  {
    v7 = v9;
  }

  return v7 & 1;
}

void sub_22E6F2500(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_22E6F37A4();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_22E6F2538()
{
  sub_22E6F3ABC();
  if (v0)
  {
    v2 = (v1 + 40);
    do
    {
      if (*v2)
      {
        MEMORY[0x2318ECB90](1);
      }

      else
      {
        v3 = *(v2 - 1);
        MEMORY[0x2318ECB90](0);
        MEMORY[0x2318ECBB0](v3);
      }

      v2 += 16;
      --v0;
    }

    while (v0);
  }
}

void sub_22E6F259C()
{
  sub_22E6F3ABC();
  if (v0)
  {
    v2 = v1 + 40;
    do
    {

      String.hash(into:)();

      v2 += 16;
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_22E6F2604(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AssetDownloadRequest(0);
  v4 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x2318ECB90](v7);
  if (v7)
  {
    v9 = v3[6];
    v41 = &v6[v3[5]];
    v42 = v9;
    v10 = &v6[v3[7]];
    v11 = type metadata accessor for Asset.ID(0);
    v12 = v11[6];
    v39 = &v10[v11[5]];
    v38 = &v10[v12];
    v37 = &v10[v11[7]];
    v13 = type metadata accessor for Asset(0);
    v14 = *(v13 + 20);
    v15 = *(v13 + 24);
    v40 = v10;
    v35 = &v10[v14];
    v36 = v15;
    v16 = v3[9];
    v33 = &v6[v3[8]];
    v34 = v16;
    v17 = *(type metadata accessor for Credential(0) + 28);
    v18 = v3[12];
    v31 = &v6[v3[11]];
    v32 = v17;
    v30 = &v6[v18];
    v19 = &v6[v3[13]];
    v20 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v28 = *(v4 + 72);
    v29 = v19;
    v43 = v6;
    do
    {
      v44 = v7;
      sub_22E6F3698(v20, v6, type metadata accessor for AssetDownloadRequest);
      type metadata accessor for UUID();
      sub_22E6F3650(&qword_27DA6C5F0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      dispatch thunk of Hashable.hash(into:)();
      String.hash(into:)();
      type metadata accessor for URL();
      sub_22E6F3650(&qword_27DA6C5F8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      dispatch thunk of Hashable.hash(into:)();
      v21 = v40;
      dispatch thunk of Hashable.hash(into:)();
      String.hash(into:)();
      Data.hash(into:)();
      Data.hash(into:)();
      v23 = *(v35 + 2);
      v22 = *(v35 + 3);
      sub_22E6CFB64(v23, v22);
      Data.hash(into:)();
      Data.hash(into:)();
      sub_22E6CFBBC(v23, v22);
      MEMORY[0x2318ECB90](*&v21[v36]);
      if (v33[16] == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v25 = *v33;
        v24 = *(v33 + 1);
        Hasher._combine(_:)(1u);
        MEMORY[0x2318ECB90](v25);
        MEMORY[0x2318ECB90](v24);
      }

      v6 = v43;
      dispatch thunk of Hashable.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      type metadata accessor for Date();
      sub_22E6F3650(&qword_27DA6C768, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      dispatch thunk of Hashable.hash(into:)();
      Data.hash(into:)();
      Data.hash(into:)();
      v26 = v44;
      if (*(v29 + 1))
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = sub_22E6F3700(v6, type metadata accessor for AssetDownloadRequest);
      v20 += v28;
      v7 = v26 - 1;
    }

    while (v7);
  }

  return result;
}

void sub_22E6F2A6C()
{
  sub_22E6EB570();
  v1 = v0;
  v2 = type metadata accessor for AssetSkeleton(0);
  sub_22E6CF988();
  MEMORY[0x28223BE20](v3);
  v27 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v1 + 16);
  MEMORY[0x2318ECB90](v5);
  if (v5)
  {
    v6 = type metadata accessor for Asset.ID(0);
    v7 = v6[6];
    v8 = v27;
    v26 = &v27[v6[5]];
    v25 = &v27[v7];
    v24 = &v27[v6[7]];
    v9 = type metadata accessor for Asset(0);
    v10 = *(v9 + 24);
    v11 = &v8[*(v9 + 20)];
    v12 = *(v2 + 24);
    v22[3] = &v8[*(v2 + 20)];
    v23 = v10;
    v22[2] = &v8[v12];
    type metadata accessor for Credential(0);
    sub_22E6F39E4();
    v22[0] = v13;
    v22[1] = v14;
    v15 = v27;
    do
    {
      sub_22E6F38C0();
      v28 = v16;
      sub_22E6F3698(v1, v15, v17);
      type metadata accessor for URL();
      sub_22E6F38A8();
      sub_22E6F3650(&qword_27DA6C5F8, v18, MEMORY[0x277CC9270]);
      dispatch thunk of Hashable.hash(into:)();
      sub_22E6F39D8();
      String.hash(into:)();
      sub_22E6F39D8();
      Data.hash(into:)();
      sub_22E6F39D8();
      Data.hash(into:)();
      v20 = *(v11 + 2);
      v19 = *(v11 + 3);
      sub_22E6CFB64(v20, v19);
      Data.hash(into:)();
      sub_22E6F393C();
      Data.hash(into:)();
      sub_22E6CFBBC(v20, v19);
      MEMORY[0x2318ECB90](*(v15 + v23));
      sub_22E6F39D8();
      Data.hash(into:)();
      sub_22E6F39D8();
      Data.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      type metadata accessor for Date();
      sub_22E6F385C();
      sub_22E6F3650(&qword_27DA6C768, v21, MEMORY[0x277CC9588]);
      dispatch thunk of Hashable.hash(into:)();
      sub_22E6F3700(v15, v28);
      v1 += v22[0];
      --v5;
    }

    while (v5);
  }

  sub_22E6EB538();
}

void sub_22E6F2CF8()
{
  sub_22E6EB570();
  v1 = v0;
  v2 = type metadata accessor for AssetUploadRequest(0);
  sub_22E6CF988();
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 16);
  MEMORY[0x2318ECB90](v6);
  if (v6)
  {
    v7 = v2[6];
    v25 = &v5[v2[5]];
    v26 = v7;
    v8 = v2[7];
    v23 = v2[8];
    v24 = v8;
    type metadata accessor for Credential(0);
    sub_22E6F39E4();
    v21 = v9;
    v22 = v10;
    do
    {
      v27 = type metadata accessor for AssetUploadRequest;
      v11 = sub_22E6F39CC();
      sub_22E6F3698(v11, v12, v13);
      type metadata accessor for UUID();
      sub_22E6F3650(&qword_27DA6C5F0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      dispatch thunk of Hashable.hash(into:)();
      sub_22E6F39D8();
      String.hash(into:)();
      type metadata accessor for URL();
      sub_22E6F38A8();
      sub_22E6F3650(&qword_27DA6C5F8, v14, MEMORY[0x277CC9270]);
      sub_22E6F393C();
      dispatch thunk of Hashable.hash(into:)();
      sub_22E6F393C();
      dispatch thunk of Hashable.hash(into:)();
      sub_22E6F393C();
      dispatch thunk of Hashable.hash(into:)();
      v15 = sub_22E6F37B8();
      sub_22E6CFB64(v15, v16);
      Data.hash(into:)();
      Data.hash(into:)();
      v17 = sub_22E6F37B8();
      sub_22E6CFBBC(v17, v18);
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      type metadata accessor for Date();
      sub_22E6F385C();
      sub_22E6F3650(&qword_27DA6C768, v19, MEMORY[0x277CC9588]);
      dispatch thunk of Hashable.hash(into:)();
      sub_22E6F3700(v5, v27);
      v1 += v21;
      --v6;
    }

    while (v6);
  }

  sub_22E6EB538();
}

uint64_t sub_22E6F2F84(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22E6CF2AC(&qword_27DA6CCF0, &qword_22E7286C8);
    sub_22E6F3650(a2, type metadata accessor for AssetDownloadRequest, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22E6F3024()
{
  result = qword_27DA6CD30;
  if (!qword_27DA6CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CD30);
  }

  return result;
}

uint64_t sub_22E6F3084(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22E6F30C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

_BYTE *storeEnumTagSinglePayload for DownloadRequestMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_22E6F3210(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22E6F32C0()
{
  result = qword_27DA6CD38;
  if (!qword_27DA6CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CD38);
  }

  return result;
}

unint64_t sub_22E6F3318()
{
  result = qword_27DA6CD40;
  if (!qword_27DA6CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CD40);
  }

  return result;
}

unint64_t sub_22E6F3370()
{
  result = qword_27DA6CD48;
  if (!qword_27DA6CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CD48);
  }

  return result;
}

unint64_t sub_22E6F33C8()
{
  result = qword_27DA6CD50;
  if (!qword_27DA6CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CD50);
  }

  return result;
}

unint64_t sub_22E6F3420()
{
  result = qword_27DA6CD58;
  if (!qword_27DA6CD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CD58);
  }

  return result;
}

unint64_t sub_22E6F3478()
{
  result = qword_27DA6CD60;
  if (!qword_27DA6CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CD60);
  }

  return result;
}

unint64_t sub_22E6F34D0()
{
  result = qword_27DA6CD68;
  if (!qword_27DA6CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CD68);
  }

  return result;
}

unint64_t sub_22E6F3528()
{
  result = qword_27DA6CD70;
  if (!qword_27DA6CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CD70);
  }

  return result;
}

unint64_t sub_22E6F3580()
{
  result = qword_27DA6CD78;
  if (!qword_27DA6CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CD78);
  }

  return result;
}

uint64_t sub_22E6F35D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_22E6F3650(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22E6F3698(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22E6F3700(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22E6F37C4(uint64_t a1, char a2, char a3, char a4, char a5, char a6)
{
  *(v7 - 125) = a6;
  *(v7 - 124) = a5;
  *(v7 - 123) = a4;
  *(v7 - 122) = v6;
  *(v7 - 121) = a3;
  *(v7 - 120) = a2;
}

void sub_22E6F3814()
{
  *(v5 - 117) = v4;
  *(v5 - 116) = v3;
  *(v5 - 115) = v2;
  *(v5 - 114) = v1;
  *(v5 - 113) = v0;
}

void sub_22E6F3994(uint64_t a1, char a2, uint64_t a3, char a4, char a5, char a6, char a7, char a8)
{
  *(v9 - 125) = a8;
  *(v9 - 124) = a7;
  *(v9 - 123) = a6;
  *(v9 - 122) = v8;
  *(v9 - 121) = a5;
  *(v9 - 120) = a4;
  *(v9 - 119) = a2;
}

void sub_22E6F3A00(char a1@<W8>)
{
  *(v3 - 115) = v2;
  *(v3 - 114) = v1;
  *(v3 - 113) = a1;
}

char *sub_22E6F3A48(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22E6F22D0(a1, a2, a3, v4, v3);
}

void sub_22E6F3ABC()
{

  JUMPOUT(0x2318ECB90);
}

void sub_22E6F3ADC(char *a1@<X0>, uint64_t *a3@<X8>)
{
  v6 = *(v4 - 160);

  sub_22E6F2044(a3, a1, v3, v6);
}

void sub_22E6F3AFC(char *a1@<X0>, uint64_t *a3@<X8>)
{
  v6 = *(v4 - 152);

  sub_22E6F2044(a3, a1, v3, v6);
}

uint64_t sub_22E6F3B1C(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_22E6F3B3C(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_22E6F3B5C@<X0>(int64_t a1@<X0>, int64_t a2@<X8>)
{
  if (a1 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  return memcmp((v3 - 112), v2, v5);
}

uint64_t sub_22E6F3BA8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  v9 = v8;
  if (v7)
  {
    sub_22E6F4BD4(a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), a4, a3);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return sub_22E6CF58C(a4, v10, 1, v9);
}

uint64_t sub_22E6F3C60()
{
  sub_22E6E3BDC();
  v1[2] = v2;
  v1[3] = v0;
  sub_22E6CF1CC(&qword_27DA6CD80, qword_22E728BB8);
  v1[4] = sub_22E6E3EA4();
  v3 = sub_22E6F4C64();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22E6F3CE8(uint64_t a1)
{
  v2 = *(*(v1 + 24) + 112);
  *(v1 + 40) = v2;
  return sub_22E6F4C34(a1, v2);
}

uint64_t sub_22E6F3D04()
{
  sub_22E6E3BDC();
  v1 = v0[3];
  v0[6] = *(v0[5] + 112);

  return MEMORY[0x2822009F8](sub_22E6F3D78, v1, 0);
}

uint64_t sub_22E6F3D78()
{
  sub_22E6E3BDC();
  v1 = v0[4];
  sub_22E6F3BA8(v0[6], type metadata accessor for AssetSkeleton, type metadata accessor for AssetSkeleton, v1);

  v2 = type metadata accessor for AssetSkeleton(0);
  result = sub_22E6CF550(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_22E6F46E8(v0[4], v0[2], type metadata accessor for AssetSkeleton);

    sub_22E6E3AD8();

    return v4();
  }

  return result;
}

uint64_t sub_22E6F3E5C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_22E6F4C34(a1, v1);
}

uint64_t sub_22E6F3E74(uint64_t a1)
{
  v2 = *(*(v1 + 24) + 112);
  *(v1 + 32) = v2;
  return sub_22E6F4C34(a1, v2);
}

uint64_t sub_22E6F3E90()
{
  sub_22E6E3D08();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = OBJC_IVAR____TtC10CloudAsset23AssetsUploadCoordinator__signals;
  sub_22E6CF1CC(&qword_27DA6C7B0, &unk_22E726D30);
  sub_22E6D901C();
  (*(v4 + 16))(v2, v1 + v3);
  sub_22E6E3AD8();

  return v5();
}

uint64_t sub_22E6F3F34()
{
  sub_22E6E3BDC();
  v1[4] = v2;
  v1[5] = v0;
  v1[6] = sub_22E6CF1CC(&qword_27DA6C7C8, &unk_22E727340);
  v1[7] = sub_22E6E3EA4();
  sub_22E6CF1CC(&qword_27DA6CD88, &unk_22E728BE0);
  v1[8] = sub_22E6E3EA4();
  v3 = sub_22E6CF1CC(&qword_27DA6CD90, qword_22E72CA80);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = sub_22E6E3EA4();
  v4 = sub_22E6CF1CC(&qword_27DA6C7B8, &unk_22E727290);
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = sub_22E6E3EA4();
  v5 = sub_22E6F4C64();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22E6F40B0(uint64_t a1)
{
  v2 = *(*(v1 + 40) + 112);
  *(v1 + 120) = v2;
  return sub_22E6F4C34(a1, v2);
}

uint64_t sub_22E6F40CC()
{
  sub_22E6E3BDC();
  (*(v0[13] + 16))(v0[14], v0[15] + OBJC_IVAR____TtC10CloudAsset23AssetsUploadCoordinator__results, v0[12]);
  v1 = sub_22E6F4C64();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_22E6F4148()
{
  sub_22E6E3D08();
  v1 = v0[5];
  v2 = MEMORY[0x2318EC7E0](v0[12]);
  v4 = sub_22E6F4600(v2, v3);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_22E6F420C;
  v6 = v0[8];
  v7 = v0[9];

  return MEMORY[0x2822005A8](v6, v1, v4, v7, v0 + 2);
}

uint64_t sub_22E6F420C()
{
  sub_22E6E3BDC();
  v2 = *v1;
  sub_22E6E3C94();
  *v3 = v2;

  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_22E6F4548;
  }

  else
  {
    v5 = sub_22E6F4314;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22E6F4314()
{
  v1 = v0[8];
  if (sub_22E6CF550(v1, 1, v0[6]) == 1)
  {
    v3 = v0[13];
    v2 = v0[14];
    v4 = v0[12];
    (*(v0[10] + 8))(v0[11], v0[9]);
    sub_22E6D0784();
    swift_allocError();
    swift_willThrow();
    (*(v3 + 8))(v2, v4);
LABEL_5:

    sub_22E6E3AD8();
    goto LABEL_7;
  }

  sub_22E6F4678(v1, v0[7]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[11];
  v9 = v0[12];
  v10 = v0[9];
  v11 = v0[10];
  if (EnumCaseMultiPayload == 1)
  {
    v0[3] = *v0[7];
    sub_22E6CF1CC(&qword_27DA6C7C0, qword_22E726DC0);
    swift_willThrowTypedImpl();
    (*(v11 + 8))(v8, v10);
    (*(v7 + 8))(v6, v9);
    goto LABEL_5;
  }

  v13 = v0[7];
  v14 = v0[4];
  (*(v11 + 8))(v0[11], v0[9]);
  (*(v7 + 8))(v6, v9);
  sub_22E6F46E8(v13, v14, type metadata accessor for Asset);

  sub_22E6E3AD8();
LABEL_7:

  return v12();
}

uint64_t sub_22E6F4548()
{
  sub_22E6E3D08();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v2 + 8))(v1, v3);

  sub_22E6E3AD8();

  return v4();
}

unint64_t sub_22E6F4600(uint64_t a1, uint64_t a2)
{
  result = qword_27DA6CD98;
  if (!qword_27DA6CD98)
  {
    type metadata accessor for AssetUploadCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CD98);
  }

  return result;
}

uint64_t sub_22E6F4678(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6CF1CC(&qword_27DA6C7C8, &unk_22E727340);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E6F46E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22E6D901C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t AssetUploadCoordinator.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AssetUploadCoordinator.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t dispatch thunk of AssetUploadCoordinator.assetSkeleton.getter()
{
  sub_22E6E3D08();
  sub_22E6F4C54();
  v0 = swift_task_alloc();
  v1 = sub_22E6E3C38(v0);
  *v1 = v2;
  v3 = sub_22E6F4C40(v1);

  return v4(v3);
}

uint64_t sub_22E6F48E8()
{
  sub_22E6E3BDC();
  v1 = *v0;
  sub_22E6E3C94();
  *v2 = v1;

  sub_22E6E3AD8();

  return v3();
}

uint64_t dispatch thunk of AssetUploadCoordinator.signals.getter()
{
  sub_22E6E3D08();
  sub_22E6F4C54();
  v0 = swift_task_alloc();
  v1 = sub_22E6E3C38(v0);
  *v1 = v2;
  v3 = sub_22E6F4C40(v1);

  return v4(v3);
}

uint64_t dispatch thunk of AssetUploadCoordinator.result()()
{
  sub_22E6E3D08();
  sub_22E6F4C54();
  v0 = swift_task_alloc();
  v1 = sub_22E6E3C38(v0);
  *v1 = v2;
  v3 = sub_22E6F4C40(v1);

  return v4(v3);
}

uint64_t sub_22E6F4BD4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22E6D901C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22E6F4C74()
{
  qword_27DA6CDA0 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t sub_22E6F4CBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746163696C707061 && a2 == 0xEE007344496E6F69)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22E6F4D60(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000022E72D230 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22E6F4E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E6F4CBC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22E6F4E2C(uint64_t a1)
{
  v2 = sub_22E6F51C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6F4E68(uint64_t a1)
{
  v2 = sub_22E6F51C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E6F4EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E6F4D60(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22E6F4ED4(uint64_t a1)
{
  v2 = sub_22E6F516C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6F4F10(uint64_t a1)
{
  v2 = sub_22E6F516C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SimultaneousTransferError.encode(to:)(void *a1)
{
  sub_22E6CF1CC(&qword_27DA6CDA8, &qword_22E728C70);
  sub_22E6CF988();
  v18 = v3;
  v19 = v4;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22E6CF1CC(&qword_27DA6CDB0, &qword_22E728C78);
  sub_22E6CF988();
  v8 = v7;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  v12 = *v1;
  sub_22E6CF214(a1, a1[3]);
  sub_22E6F516C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_22E6F51C0();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v20 = v12;
  sub_22E6CF1CC(&qword_27DA6C8B8, &qword_22E728C80);
  sub_22E6F5778(&qword_27DA6CDC8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  v13 = v18;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v14 = sub_22E6F5BF0();
  v15(v14, v13);
  return (*(v8 + 8))(v11, v6);
}

unint64_t sub_22E6F516C()
{
  result = qword_27DA6CDB8;
  if (!qword_27DA6CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CDB8);
  }

  return result;
}

unint64_t sub_22E6F51C0()
{
  result = qword_27DA6CDC0;
  if (!qword_27DA6CDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CDC0);
  }

  return result;
}

void SimultaneousTransferError.hash(into:)()
{
  MEMORY[0x2318ECB90](0);

  sub_22E6F259C();
}

Swift::Int SimultaneousTransferError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x2318ECB90](0);
  sub_22E6F259C();
  return Hasher._finalize()();
}

void SimultaneousTransferError.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v39 = a2;
  v4 = sub_22E6CF1CC(&qword_27DA6CDD0, &qword_22E728C88);
  sub_22E6CF988();
  v37 = v5;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = sub_22E6CF1CC(&qword_27DA6CDD8, &unk_22E728C90);
  sub_22E6CF988();
  v38 = v10;
  sub_22E6D374C();
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  sub_22E6CF214(a1, a1[3]);
  sub_22E6F516C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    goto LABEL_8;
  }

  v35 = v8;
  v36 = a1;
  v14 = v39;
  v15 = KeyedDecodingContainer.allKeys.getter();
  sub_22E6F2500(v15, 0);
  v18 = v9;
  if (v16 == v17 >> 1)
  {
LABEL_7:
    v27 = type metadata accessor for DecodingError();
    swift_allocError();
    v29 = v28;
    sub_22E6CF1CC(&qword_27DA6CD20, &qword_22E729070);
    *v29 = &type metadata for SimultaneousTransferError;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    v30 = sub_22E6F5BF0();
    v31(v30, v18);
    a1 = v36;
LABEL_8:
    v33 = a1;
    goto LABEL_9;
  }

  if (v16 < (v17 >> 1))
  {
    sub_22E6F3764();
    v20 = v19;
    v22 = v21;
    swift_unknownObjectRelease();
    v23 = v20 == v22 >> 1;
    v24 = v37;
    if (v23)
    {
      v25 = v14;
      sub_22E6F51C0();
      v26 = v35;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_22E6CF1CC(&qword_27DA6C8B8, &qword_22E728C80);
      sub_22E6F5778(&qword_27DA6CDE0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v32 = v38;
      swift_unknownObjectRelease();
      (*(v24 + 8))(v26, v4);
      (*(v32 + 8))(v13, v9);
      *v25 = v40;
      v33 = v36;
LABEL_9:
      sub_22E6CF2F4(v33);
      return;
    }

    v18 = v9;
    goto LABEL_7;
  }

  __break(1u);
}