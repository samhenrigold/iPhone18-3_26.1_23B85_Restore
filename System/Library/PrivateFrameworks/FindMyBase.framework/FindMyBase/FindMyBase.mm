uint64_t NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v6 = sub_1DF6322FC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(v7 + 16))(v10, a1, v6, v8);
  v12 = MEMORY[0x1E12D9570](v11);
  v13 = [objc_opt_self() defaultManager];
  v14 = sub_1DF63313C();

  objc_autoreleasePoolPop(v12);
  result = (*(v7 + 8))(v10, v6);
  *a4 = v14;
  return result;
}

uint64_t DirectorySequence.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D50, &qword_1DF63AAE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  if (*v1)
  {
    v6 = *v1;
    v7 = MEMORY[0x1E12D9570]();
    sub_1DF59BE48(v6, v1, v5);
    objc_autoreleasePoolPop(v7);

    return sub_1DF5A3C48(v5, a1);
  }

  else
  {
    v9 = sub_1DF6322FC();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }
}

uint64_t sub_1DF59B960(uint64_t a1, void *a2)
{
  v4 = sub_1DF6322FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getErrorValue();
  v8 = Error.domain.getter(v28[2], v28[3]);
  v10 = v9;
  if (v8 == sub_1DF63298C() && v10 == v11)
  {

LABEL_8:
    swift_getErrorValue();
    if (Error.code.getter(v27[2], v27[3]) == 260)
    {
      return 1;
    }

    goto LABEL_9;
  }

  v13 = sub_1DF63394C();

  if (v13)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (qword_1ED8E5958 != -1)
  {
    swift_once();
  }

  v14 = sub_1DF6326AC();
  __swift_project_value_buffer(v14, qword_1ED8E69A0);
  (*(v5 + 16))(v7, a1, v4);
  v15 = a2;
  v16 = sub_1DF63268C();
  v17 = sub_1DF63316C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    v28[0] = v27[0];
    *v18 = 141558531;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    sub_1DF5F9E38();
    v20 = sub_1DF6338DC();
    v22 = v21;
    (*(v5 + 8))(v7, v4);
    v23 = sub_1DF59EEC8(v20, v22, v28);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2112;
    v24 = sub_1DF63227C();
    *(v18 + 24) = v24;
    *v19 = v24;
    _os_log_impl(&dword_1DF59A000, v16, v17, "ERROR: URL: %{private,mask.hash}s error: %@", v18, 0x20u);
    sub_1DF59CB50(v19, &qword_1ECE42AF0, &qword_1DF63ABC0);
    MEMORY[0x1E12D9D80](v19, -1, -1);
    v25 = v27[0];
    __swift_destroy_boxed_opaque_existential_1(v27[0]);
    MEMORY[0x1E12D9D80](v25, -1, -1);
    MEMORY[0x1E12D9D80](v18, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return 1;
}

uint64_t Error.domain.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v7, a1, v4);
  v8 = sub_1DF6338FC();
  if (v8)
  {
    v9 = v8;
    (*(v3 + 8))(v6, a1);
  }

  else
  {
    v9 = swift_allocError();
    (*(v3 + 32))(v10, v6, a1);
  }

  v11 = sub_1DF63227C();

  v12 = [v11 domain];
  v13 = sub_1DF63298C();

  return v13;
}

uint64_t sub_1DF59BE48@<X0>(void *a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D50, &qword_1DF63AAE0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v17 - v8;
  if ([a1 nextObject])
  {
    sub_1DF63339C();
    swift_unknownObjectRelease();
    sub_1DF5A27C4(v17, v18);
    sub_1DF5A27C4(v18, v17);
    v10 = sub_1DF6322FC();
    v11 = swift_dynamicCast();
    v12 = *(*(v10 - 8) + 56);
    if (v11)
    {
      v13 = *(v10 - 8);
      v12(v9, 0, 1, v10);
      (*(v13 + 32))(a3, v9, v10);
      return (v12)(a3, 0, 1, v10);
    }

    v12(v9, 1, 1, v10);
    sub_1DF59CB50(v9, &qword_1ECE42D50, &qword_1DF63AAE0);
  }

  v15 = *a2;
  *a2 = 0;

  v16 = sub_1DF6322FC();
  return (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
}

const char *Feature.FindMy.feature.getter()
{
  result = "AirlineTravelV2";
  switch(*v0)
  {
    case 1:
      result = "AirPods_Pairing_With_FindMyBluetooth";
      break;
    case 2:
      result = "AlphaWasp";
      break;
    case 3:
      result = "AOP2";
      break;
    case 4:
      result = "BA_AirPods";
      break;
    case 5:
      result = "BA_AirPods_Multipart_UI";
      break;
    case 6:
      result = "BA_LPEM";
      break;
    case 7:
      result = "BA_Power_Off";
      break;
    case 8:
      result = "Beep_On_Move";
      break;
    case 9:
      result = "CowardlyCarrot";
      break;
    case 0xA:
      result = "BT_RSSI_Finding";
      break;
    case 0xB:
      result = "Item_Sharing";
      break;
    case 0xC:
      result = "Fences_Migration";
      break;
    case 0xD:
      result = "FernFlower";
      break;
    case 0xE:
      result = "FM_NiftyCurve";
      break;
    case 0xF:
      result = "MagneticCow";
      break;
    case 0x10:
      result = "ManagedCBPeripheral";
      break;
    case 0x11:
      result = "Network_Scaling_Improvements";
      break;
    case 0x12:
      result = "FM_Beacons_Optimizations";
      break;
    case 0x13:
      result = "FM_OwnerProactive";
      break;
    case 0x14:
      result = "RedStripe";
      break;
    case 0x15:
      result = "Separation_Alerts";
      break;
    case 0x16:
      result = "SPPlaySound";
      break;
    case 0x17:
      result = "SPPlaySoundAll";
      break;
    case 0x18:
      result = "SPPlaySoundNonOwner";
      break;
    case 0x19:
      result = "SmilingWheel";
      break;
    case 0x1A:
      result = "Springfield_Integration";
      break;
    case 0x1B:
      result = "Tribeca";
      break;
    case 0x1C:
      result = "TrustedNowUsesReferenceClock";
      break;
    case 0x1D:
      result = "UT_Precision_Finding";
      break;
    case 0x1E:
      result = "Secure_Locations_Migration";
      break;
    case 0x1F:
      result = "FlyingUnicorn";
      break;
    case 0x20:
      result = "LineUp";
      break;
    case 0x21:
      result = "Woof";
      break;
    case 0x22:
      result = "EmotionalKiwi";
      break;
    case 0x23:
      result = "SquaredPear";
      break;
    case 0x24:
      result = "GorgeousCherry";
      break;
    case 0x25:
      result = "ModernRose";
      break;
    case 0x26:
      result = "RobustBird";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DF59C3C8(uint64_t a1)
{
  result = sub_1DF6325AC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DF59C434(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DF59C4AC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DF59C4E4(uint64_t a1)
{
  if (!qword_1ED8E5CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42AC8, &qword_1DF638F38);
    v1 = sub_1DF63327C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8E5CC0);
    }
  }
}

void sub_1DF59C548(uint64_t a1)
{
  sub_1DF6325AC();
  if (v1 <= 0x3F)
  {
    sub_1DF59C4E4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t WorkItemQueue.__allocating_init(identifier:)(uint64_t a1)
{
  v2 = sub_1DF6325AC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DF63255C();
  v8 = v7;
  (*(v3 + 16))(v5, a1, v2);
  v11 = 2;
  type metadata accessor for WorkItemQueue(0);
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v9 = swift_allocObject();
  WorkItemQueue.init(name:identifier:warningOptions:)(v6, v8, v5, &v11);
  (*(v3 + 8))(a1, v2);
  return v9;
}

void sub_1DF59C7B4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1DF59C800(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DF59C868()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ED8E6A30);
  v1 = __swift_project_value_buffer(v0, qword_1ED8E6A30);
  if (qword_1ED8E5CD8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED8E69F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t type metadata accessor for WorkItemQueue.WorkItem(uint64_t a1)
{
  result = qword_1ED8E5E60;
  if (!qword_1ED8E5E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DF59C9B4(uint64_t a1)
{
  sub_1DF6325AC();
  if (v1 <= 0x3F)
  {
    sub_1DF59CAEC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1DF59CAEC(uint64_t a1)
{
  if (!qword_1ED8E5CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B10, &qword_1DF639268);
    v1 = sub_1DF63327C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8E5CC8);
    }
  }
}

uint64_t sub_1DF59CB50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
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

uint64_t sub_1DF59CC14()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ED8E69F0);
  __swift_project_value_buffer(v0, qword_1ED8E69F0);
  return sub_1DF63269C();
}

uint64_t sub_1DF59CC98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DF59CD00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DF59CD48(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AA8, &qword_1DF638F18);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF59D6D0, v1, 0);
}

uint64_t sub_1DF59CE0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AA8, &qword_1DF638F18);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_1DF6325AC();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B48, &qword_1DF6393A8);
  swift_allocObject();
  result = sub_1DF633C4C();
  qword_1ED8E6070 = result;
  return result;
}

uint64_t sub_1DF59CEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[45] = a2;
  v3[46] = a3;
  v5 = sub_1DF6325AC();
  v3[47] = v5;
  v3[48] = *(v5 - 8);
  v3[49] = swift_task_alloc();
  v6 = sub_1DF6335AC();
  v3[50] = v6;
  v3[51] = *(v6 - 8);
  v3[52] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B38, &qword_1DF639350);
  v3[53] = v7;
  v3[54] = *(v7 - 8);
  v3[55] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF59D98C, a3, 0);
}

uint64_t sub_1DF59D0A0(uint64_t a1)
{
  result = sub_1DF6325AC();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_1DF59D160()
{
  type metadata accessor for DarwinNotificationHandler();
  v0 = swift_allocObject();
  result = DarwinNotificationHandler.init()();
  qword_1ED8E5C10 = v0;
  return result;
}

uint64_t sub_1DF59D1C0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DF5DA28C;

  return v6(a1);
}

uint64_t sub_1DF59D2C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DF59D3BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF59D2C4;

  return sub_1DF59D1C0(a1, v4);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_0(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1DF59D530(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AC8, &qword_1DF638F38) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DF59D2C4;

  return sub_1DF59D634(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1DF59D634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1DF59D2C4;

  return sub_1DF59CD48(a5);
}

uint64_t sub_1DF59D6D0()
{
  if (qword_1ED8E6078 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_id;
  v6 = sub_1DF6325AC();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v1, v3 + v5, v6);
  (*(v7 + 56))(v1, 0, 1, v6);
  v8 = swift_task_alloc();
  v0[6] = v8;
  v8[2] = v4;
  v8[3] = v3;
  v8[4] = v2;
  v9 = sub_1DF59CD00(&qword_1ED8E5E20, type metadata accessor for WorkItemQueue, &protocol conformance descriptor for WorkItemQueue);
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_1DF5D6F08;
  v11 = v0[5];

  return MEMORY[0x1EEE6DE98](v10, v11, &unk_1DF639348, v8, v3, v9, 0xD00000000000001ELL, 0x80000001DF634DE0);
}

uint64_t sub_1DF59D8D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DF59D2C4;

  return sub_1DF59CEEC(a1, v4, v5);
}

uint64_t sub_1DF59D98C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AC8, &qword_1DF638F38);
  sub_1DF632F1C();
  v1 = sub_1DF59CD00(&qword_1ED8E5E20, type metadata accessor for WorkItemQueue, &protocol conformance descriptor for WorkItemQueue);
  v2 = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_queueDepth;
  v0[56] = v1;
  v0[57] = v2;
  v3 = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_currentWorkItem;
  v0[58] = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions;
  v0[59] = v3;
  v4 = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name;
  v0[60] = OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_flushing;
  v0[61] = v4;
  v0[62] = 0;
  v5 = v0[46];
  v6 = swift_task_alloc();
  v0[63] = v6;
  *v6 = v0;
  v6[1] = sub_1DF5ACBAC;
  v7 = v0[53];

  return MEMORY[0x1EEE6D9C8](v0 + 37, v5, v1, v7);
}

uint64_t sub_1DF59DAF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v10 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v43 - v12;
  v13 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v48 = v10;
  result = sub_1DF63372C();
  v15 = result;
  if (*(v13 + 16))
  {
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v44 = v6;
    v45 = (v11 + 16);
    v46 = v13;
    v47 = v11;
    v49 = (v11 + 32);
    v22 = result + 64;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(v13 + 56);
      v30 = (*(v13 + 48) + 16 * v28);
      v32 = *v30;
      v31 = v30[1];
      v33 = *(v47 + 72);
      v34 = v29 + v33 * v28;
      if (v48)
      {
        (*v49)(v50, v34, v51);
      }

      else
      {
        (*v45)(v50, v34, v51);
      }

      sub_1DF633A6C();
      sub_1DF632ACC();
      result = sub_1DF633AAC();
      v35 = -1 << *(v15 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v22 + 8 * v37);
          if (v41 != -1)
          {
            v23 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v24 = (*(v15 + 48) + 16 * v23);
      *v24 = v32;
      v24[1] = v31;
      result = (*v49)(*(v15 + 56) + v33 * v23, v50, v51);
      ++*(v15 + 16);
      v13 = v46;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v9 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v13 + 32);
    v9 = v44;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v9 = v15;
  return result;
}

uint64_t sub_1DF59DE7C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  v11 = a5[7];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  result = (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a4, v12);
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t type metadata accessor for Keychain.Item(uint64_t a1)
{
  result = qword_1ED8E4C00;
  if (!qword_1ED8E4C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DF59DFB8()
{
  v0 = SecTaskCreateFromSelf(0);
  if (!v0)
  {
    v19 = 0u;
    v20 = 0u;
LABEL_8:
    sub_1DF59CB50(&v19, &qword_1ECE436C0, &qword_1DF6393D0);
    v4 = 0;
    goto LABEL_9;
  }

  v1 = v0;
  v2 = sub_1DF63295C();
  v3 = SecTaskCopyValueForEntitlement(v1, v2, 0);

  if (!v3)
  {
    v19 = 0u;
    v20 = 0u;

    goto LABEL_8;
  }

  *(&v20 + 1) = swift_getObjectType();

  *&v19 = v3;
  if (swift_dynamicCast())
  {
    v4 = v18;
  }

  else
  {
    v4 = 0;
  }

LABEL_9:
  v5 = SecTaskCreateFromSelf(0);
  if (v5)
  {
    v6 = v5;
    v7 = sub_1DF63295C();
    v8 = SecTaskCopyValueForEntitlement(v6, v7, 0);

    if (v8)
    {
      *(&v20 + 1) = swift_getObjectType();

      *&v19 = v8;
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE425C0, &qword_1DF637D10);
      if (swift_dynamicCast())
      {
        v9 = v17;
      }

      else
      {
        v9 = 0;
      }

      if (v4)
      {
        goto LABEL_20;
      }

      if (v9)
      {
      }

      goto LABEL_23;
    }

    v19 = 0u;
    v20 = 0u;

    if (*(&v20 + 1))
    {
      goto LABEL_16;
    }
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  sub_1DF59CB50(&v19, &qword_1ECE436C0, &qword_1DF6393D0);
  if (v4)
  {
LABEL_20:
  }

LABEL_23:
  if (qword_1ED8E4A68 != -1)
  {
    swift_once();
  }

  v11 = sub_1DF6326AC();
  __swift_project_value_buffer(v11, qword_1ED8E6928);
  v12 = sub_1DF63268C();
  v13 = sub_1DF63317C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v19 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1DF59EEC8(0xD000000000000016, 0x80000001DF636290, &v19);
    _os_log_impl(&dword_1DF59A000, v12, v13, "Must have %s or keychain-access-groups entitlement.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1E12D9D80](v15, -1, -1);
    MEMORY[0x1E12D9D80](v14, -1, -1);
  }

  sub_1DF63085C();
  swift_allocError();
  *v16 = 0;
  *(v16 + 4) = 1;
  return swift_willThrow();
}

void *DarwinNotificationHandler.init()()
{
  v1 = v0;
  swift_defaultActor_initialize();
  v2 = MEMORY[0x1E69E7CC0];
  v1[14] = sub_1DF5C87A0(MEMORY[0x1E69E7CC0]);
  v1[15] = sub_1DF5C89AC(v2);
  v1[16] = sub_1DF59E49C(v2);
  if (qword_1ED8E5C20 != -1)
  {
    swift_once();
  }

  v3 = sub_1DF6326AC();
  __swift_project_value_buffer(v3, qword_1ED8E5C28);

  v4 = sub_1DF63268C();
  v5 = sub_1DF63315C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;

    v8 = sub_1DF5C54E0();
    v10 = v9;

    v11 = sub_1DF59EEC8(v8, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1DF59A000, v4, v5, "Instantiated %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E12D9D80](v7, -1, -1);
    MEMORY[0x1E12D9D80](v6, -1, -1);
  }

  return v1;
}

unint64_t sub_1DF59E49C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A50, &qword_1DF638CC8);
    v3 = sub_1DF63373C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1DF59F358(v5, v6, sub_1DF5A3D44);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1DF59E5B4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  if (qword_1ED8E5BE8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v3, qword_1ED8E5BF0);
  v6 = *(*(v3 - 8) + 16);

  return v6(v4, v5, v3);
}

uint64_t sub_1DF59E678()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ED8E5BF0);
  __swift_project_value_buffer(v0, qword_1ED8E5BF0);
  return sub_1DF63269C();
}

uint64_t sub_1DF59E6F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42990, &qword_1DF6389A8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v68 = &v63 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42998, &unk_1DF6389B0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v63 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429A0, &qword_1DF63E290);
  v74 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v67 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v63 - v12;
  v13 = sub_1DF63298C();
  v15 = v14;
  swift_beginAccess();
  v16 = v2;
  v17 = v2[14];
  v18 = *(v17 + 16);
  v69 = a1;
  if (v18)
  {

    v19 = sub_1DF59F358(v13, v15, sub_1DF5A3D44);
    if (v20)
    {
      v21 = v19;

      v22 = v71;
      (*(v74 + 16))(v73, *(v17 + 56) + *(v74 + 72) * v21, v71);

      v24 = v22;
      v25 = v70;
      goto LABEL_10;
    }
  }

  if (qword_1ED8E5C20 != -1)
  {
    swift_once();
  }

  v72 = v7;
  v26 = sub_1DF6326AC();
  __swift_project_value_buffer(v26, qword_1ED8E5C28);

  v27 = sub_1DF63268C();
  v28 = sub_1DF63318C();

  v29 = os_log_type_enabled(v27, v28);
  v66 = a2;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v76[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1DF59EEC8(v13, v15, v76);
    _os_log_impl(&dword_1DF59A000, v27, v28, "Creating base AsyncStream for DarwinNotification name: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x1E12D9D80](v31, -1, -1);
    MEMORY[0x1E12D9D80](v30, -1, -1);
  }

  v25 = v70;
  v63 = v15;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v34 = v16;
  *(&v63 - 4) = v16;
  *(&v63 - 3) = v13;
  v35 = MEMORY[0x1E69E8650];
  *(&v63 - 2) = v36;
  v65 = *v35;
  v64 = *(v8 + 104);
  v70 = ((v8 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000);
  v64(v25, v33);
  v37 = v67;
  sub_1DF632F4C();
  v38 = v74;
  v39 = *(v74 + 16);
  v40 = v13;
  v41 = v73;
  v24 = v71;
  v39(v73, v37, v71);
  v42 = v68;
  v43 = v41;
  v13 = v40;
  v39(v68, v43, v24);
  (*(v38 + 56))(v42, 0, 1, v24);
  swift_beginAccess();
  v44 = v63;

  v45 = v42;
  v16 = v34;
  v15 = v44;
  sub_1DF5C5644(v45, v40, v44);
  swift_endAccess();

  v46 = CFNotificationCenterGetDarwinNotifyCenter();
  v47 = v69;
  CFNotificationCenterAddObserver(v46, v16, sub_1DF5C74CC, v69, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v23 = (*(v38 + 8))(v37, v24);
LABEL_10:
  v48 = MEMORY[0x1EEE9AC00](v23);
  *(&v63 - 4) = v16;
  *(&v63 - 3) = v13;
  *(&v63 - 2) = v15;
  v49(v25, v48);
  sub_1DF632F4C();
  swift_beginAccess();
  v50 = v16[16];
  if (*(v50 + 16))
  {

    v51 = sub_1DF59F358(v13, v15, sub_1DF5A3D44);
    v52 = &unk_1ED8E5000;
    if (v53)
    {
      v54 = *(*(v50 + 56) + 8 * v51);

      v55 = *(v54 + 16);
    }

    else
    {

      v55 = 0;
    }
  }

  else
  {
    v55 = 0;
    v52 = &unk_1ED8E5000;
  }

  if (v52[388] != -1)
  {
    swift_once();
  }

  v56 = sub_1DF6326AC();
  __swift_project_value_buffer(v56, qword_1ED8E5C28);

  v57 = sub_1DF63268C();
  v58 = sub_1DF63318C();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v75 = v60;
    *v59 = 136315394;
    v61 = sub_1DF59EEC8(v13, v15, &v75);

    *(v59 + 4) = v61;
    *(v59 + 12) = 2048;
    *(v59 + 14) = v55;
    _os_log_impl(&dword_1DF59A000, v57, v58, "Creating sub AsyncStream for DarwinNotification name: [%s], count: %ld", v59, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x1E12D9D80](v60, -1, -1);
    MEMORY[0x1E12D9D80](v59, -1, -1);
  }

  else
  {
  }

  return (*(v74 + 8))(v73, v24);
}

unint64_t sub_1DF59EEC8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DF5A0C8C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1DF5A0B98(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_1DF59EFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A48, &qword_1DF638CC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42940, &qword_1DF638930);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  swift_beginAccess();

  sub_1DF5C5824(v9, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1DF59F19C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void), uint64_t *a7, uint64_t *a8)
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_1DF59F184(a2, a3);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      a5();
      goto LABEL_9;
    }

    a6();
    v24 = sub_1DF59F184(a2, a3);
    if ((v22 & 1) == (v25 & 1))
    {
      v18 = v24;
      goto LABEL_9;
    }

LABEL_17:
    result = sub_1DF6339EC();
    __break(1u);
    return result;
  }

LABEL_9:
  v26 = a7;
  v27 = *v11;
  if (v22)
  {
    v28 = v27[7];
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, a8);
    v30 = *(v29 - 8);
    v31 = *(v30 + 40);
    v32 = v29;
    v33 = v28 + *(v30 + 72) * v18;

    return v31(v33, a1, v32);
  }

  else
  {
    sub_1DF59DE7C(v18, a2, a3, a1, v27, a7, a8);
  }
}

uint64_t sub_1DF59F358(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1DF633A6C();
  sub_1DF632ACC();
  v5 = sub_1DF633AAC();

  return a3(a1, a2, v5);
}

uint64_t sub_1DF59F3DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DF59F184(a2, a3);
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
      sub_1DF5A1F40(v16, a4 & 1);
      v11 = sub_1DF59F184(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1DF6339EC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1DF5DE6A8();
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

void sub_1DF59F558(uint64_t a1)
{
  sub_1DF63252C();
  if (v1 <= 0x3F)
  {
    sub_1DF59F604();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DF59F604()
{
  if (!qword_1ED8E4BF8)
  {
    v0 = sub_1DF63327C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8E4BF8);
    }
  }
}

id sub_1DF59F654(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1DF59F794(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1DF5A2AA8();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1DF59F8AC(v13, a3 & 1);
    v8 = sub_1DF59F794(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_1DF6339EC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v19);

    return sub_1DF5A27C4(a1, v19);
  }

  else
  {
    sub_1DF5A29F8(v8, a2, a1, v18);

    return a2;
  }
}

unint64_t sub_1DF59F794(uint64_t a1)
{
  sub_1DF633A6C();
  type metadata accessor for CFString(0);
  sub_1DF5A27C8(&unk_1ED8E4BB0, 255, type metadata accessor for CFString, &unk_1DF6381A8);
  sub_1DF63265C();
  v2 = sub_1DF633AAC();

  return sub_1DF5A28E8(a1, v2);
}

uint64_t sub_1DF59F8AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429E0, &qword_1DF638C10);
  result = sub_1DF63372C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_1DF5A5660(v21, v31);
      }

      else
      {
        sub_1DF5A0B98(v21, v31);
        v22 = v20;
      }

      sub_1DF633A6C();
      type metadata accessor for CFString(0);
      sub_1DF5A2A60(&unk_1ED8E4BB0, type metadata accessor for CFString, &unk_1DF6381A8);
      sub_1DF63265C();
      result = sub_1DF633AAC();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_1DF5A5660(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

double sub_1DF59FBA0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1DF59F794(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DF5A2AA8();
      v9 = v11;
    }

    sub_1DF5A27C4(*(v9 + 56) + 32 * v7, a2);
    sub_1DF62EA64(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1DF59FC40(uint64_t a1, int a2)
{
  result[1] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE437F0, &qword_1DF63E0F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v103 - v9);
  v114 = type metadata accessor for Keychain.Item(0);
  v112 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v12 = (&v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v113 = &v103 - v14;
  v116 = a1;
  result[0] = 0;
  v15 = *(a1 + 16);
  v108 = v2;
  v105 = a2;
  if (v15)
  {
    v16 = *MEMORY[0x1E697B260];

    v17 = sub_1DF59F794(v16);
    if (v18)
    {
      sub_1DF5A0B98(*(a1 + 56) + 32 * v17, &v119);
      if (swift_dynamicCast())
      {
        v20 = v118[0];
        v19 = v118[1];
        v21 = *MEMORY[0x1E697B268];
        if (v20 == sub_1DF632A2C() && v19 == v22)
        {

LABEL_68:
          v109 = 1;
          goto LABEL_9;
        }

        v101 = sub_1DF63394C();

        if (v101)
        {
          goto LABEL_68;
        }
      }
    }
  }

  else
  {
  }

  v109 = 0;
LABEL_9:
  v23 = *MEMORY[0x1E697AFF8];
  if (*(a1 + 16) && (v24 = sub_1DF59F794(*MEMORY[0x1E697AFF8]), (v25 & 1) != 0))
  {
    sub_1DF5A0B98(*(a1 + 56) + 32 * v24, &v119);
    sub_1DF59CB50(&v119, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  else
  {
    v119 = 0u;
    v120 = 0u;
    sub_1DF59CB50(&v119, &qword_1ECE436C0, &qword_1DF6393D0);
    v26 = *MEMORY[0x1E697B008];
    type metadata accessor for CFString(0);
    *(&v120 + 1) = v27;
    *&v119 = v26;
    sub_1DF5A27C4(&v119, v118);
    v28 = v23;
    v29 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117[0] = v116;
    sub_1DF59F654(v118, v28, isUniquelyReferenced_nonNull_native);

    a1 = v117[0];
    v116 = v117[0];
  }

  v31 = *MEMORY[0x1E697B310];
  if (*(a1 + 16) && (v32 = sub_1DF59F794(*MEMORY[0x1E697B310]), (v33 & 1) != 0))
  {
    sub_1DF5A0B98(*(a1 + 56) + 32 * v32, &v119);
  }

  else
  {
    v119 = 0u;
    v120 = 0u;
    sub_1DF59CB50(&v119, &qword_1ECE436C0, &qword_1DF6393D0);
    v34 = *MEMORY[0x1E695E4D0];
    if (*MEMORY[0x1E695E4D0])
    {
      type metadata accessor for CFBoolean(0);
      *(&v120 + 1) = v35;
      *&v119 = v34;
      sub_1DF5A27C4(&v119, v118);
      v36 = v31;
      v37 = v34;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v117[0] = v116;
      sub_1DF59F654(v118, v36, v38);

      v116 = v117[0];
      goto LABEL_20;
    }

    v39 = v31;
    sub_1DF59FBA0(v39, &v119);
  }

  sub_1DF59CB50(&v119, &qword_1ECE436C0, &qword_1DF6393D0);
LABEL_20:
  if (qword_1ED8E4C60 != -1)
  {
    goto LABEL_73;
  }

  while (1)
  {
    v40 = sub_1DF6326AC();
    v111 = __swift_project_value_buffer(v40, qword_1ED8E4C68);
    v41 = sub_1DF63268C();
    v42 = sub_1DF63318C();
    v43 = os_log_type_enabled(v41, v42);
    v107 = v12;
    v106 = v7;
    v110 = v40;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v119 = v45;
      *v44 = 136315138;
      swift_beginAccess();
      type metadata accessor for CFString(0);
      sub_1DF5A2C28(&qword_1ED8E4BA8, type metadata accessor for CFString, &unk_1DF638164);

      v46 = sub_1DF63284C();
      v48 = v47;

      v49 = sub_1DF59EEC8(v46, v48, &v119);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_1DF59A000, v41, v42, "SecItemCopyMatching() query: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1E12D9D80](v45, -1, -1);
      MEMORY[0x1E12D9D80](v44, -1, -1);
    }

    swift_beginAccess();
    v50 = v116;
    type metadata accessor for CFString(0);
    sub_1DF5A2C28(&qword_1ED8E4BA8, type metadata accessor for CFString, &unk_1DF638164);

    v51 = sub_1DF63282C();

    v52 = SecItemCopyMatching(v51, result);

    v53 = sub_1DF63268C();
    v12 = sub_1DF63318C();
    if (os_log_type_enabled(v53, v12))
    {
      v54 = swift_slowAlloc();
      *v54 = 67109120;
      *(v54 + 4) = v52;
      _os_log_impl(&dword_1DF59A000, v53, v12, "SecItemCopyMatching() status: %d", v54, 8u);
      MEMORY[0x1E12D9D80](v54, -1, -1);
    }

    if (v52)
    {
      if (qword_1ED8E4A68 != -1)
      {
        swift_once();
      }

      v55 = __swift_project_value_buffer(v110, qword_1ED8E6928);
      v56 = sub_1DF63268C();
      v57 = sub_1DF63316C();
      if (os_log_type_enabled(v56, v57))
      {
        v55 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *&v119 = v58;
        *v55 = 67109378;
        *(v55 + 4) = v52;
        *(v55 + 8) = 2082;
        v59 = SecCopyErrorMessageString(v52, 0);
        if (v59)
        {
          v60 = v59;
          v61 = sub_1DF63298C();
          v63 = v62;
        }

        else
        {
          v63 = 0xE90000000000003ELL;
          v61 = 0x6E776F6E6B6E753CLL;
        }

        v98 = sub_1DF59EEC8(v61, v63, &v119);

        *(v55 + 10) = v98;
        _os_log_impl(&dword_1DF59A000, v56, v57, "SecItemCopyMatching error: %d [%{public}s]", v55, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v58);
        MEMORY[0x1E12D9D80](v58, -1, -1);
        MEMORY[0x1E12D9D80](v55, -1, -1);
      }

      sub_1DF63085C();
      swift_allocError();
      *v99 = v52;
      *(v99 + 4) = 0;
      swift_willThrow();
      goto LABEL_71;
    }

    if (!v109)
    {
      if (result[0] && (*&v119 = result[0], swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43810, &qword_1DF63E260), (swift_dynamicCast() & 1) != 0))
      {
        v65 = v118[0];
      }

      else
      {
        v65 = sub_1DF5C9488(MEMORY[0x1E69E7CC0]);
      }

      v79 = *(v65 + 16);

      if (v79 && (v80 = *MEMORY[0x1E697B3C0], v81 = sub_1DF59F794(*MEMORY[0x1E697B3C0]), (v82 & 1) != 0))
      {
        sub_1DF5A0B98(*(v65 + 56) + 32 * v81, &v119);
        sub_1DF59CB50(&v119, &qword_1ECE436C0, &qword_1DF6393D0);
        *(&v120 + 1) = MEMORY[0x1E69E6158];
        *&v119 = 0x455443414445523CLL;
        *(&v119 + 1) = 0xEA00000000003E44;
        sub_1DF5A27C4(&v119, v118);
        v83 = v80;
        v84 = swift_isUniquelyReferenced_nonNull_native();
        v115 = v65;
        sub_1DF59F654(v118, v83, v84);
      }

      else
      {
        v119 = 0u;
        v120 = 0u;
        sub_1DF59CB50(&v119, &qword_1ECE436C0, &qword_1DF6393D0);
      }

      v85 = sub_1DF63268C();
      v86 = sub_1DF63318C();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v104 = v50;
        v89 = v88;
        *&v119 = v88;
        *v87 = 136315138;

        v90 = sub_1DF63284C();
        v92 = v91;

        v93 = sub_1DF59EEC8(v90, v92, &v119);

        *(v87 + 4) = v93;
        _os_log_impl(&dword_1DF59A000, v85, v86, "SecItemCopyMatching() result: %s", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v89);
        v94 = v89;
        v50 = v104;
        MEMORY[0x1E12D9D80](v94, -1, -1);
        MEMORY[0x1E12D9D80](v87, -1, -1);
      }

      v95 = v107;
      v55 = v106;

      sub_1DF5A0D98(v96, v55);
      if ((*(v112 + 48))(v55, 1, v114) == 1)
      {

        sub_1DF59CB50(v55, &qword_1ECE437F0, &qword_1DF63E0F0);
        sub_1DF63085C();
        swift_allocError();
        *v97 = 1;
        *(v97 + 4) = 1;
        swift_willThrow();
      }

      else
      {
        sub_1DF5A325C(v55, v95);
        if ((v105 & 1) == 0)
        {

          sub_1DF5A32D0(v65, v50);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE428F0, &unk_1DF6388D8);
        v100 = (*(v112 + 80) + 32) & ~*(v112 + 80);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_1DF638990;
        sub_1DF5A325C(v95, v55 + v100);
      }

      goto LABEL_71;
    }

    if (result[0] && (*&v119 = result[0], swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43820, &qword_1DF63E270), (swift_dynamicCast() & 1) != 0))
    {
      v64 = v118[0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43818, &qword_1DF63E268);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1DF638990;
      *(v64 + 32) = sub_1DF5C9488(MEMORY[0x1E69E7CC0]);
    }

    v66 = sub_1DF63268C();
    v67 = sub_1DF63318C();

    v68 = os_log_type_enabled(v66, v67);
    v104 = v50;
    if (v68)
    {
      v69 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v119 = v12;
      *v69 = 136315138;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43810, &qword_1DF63E260);
      v71 = MEMORY[0x1E12D8510](v64, v70);
      v73 = sub_1DF59EEC8(v71, v72, &v119);

      *(v69 + 4) = v73;
      _os_log_impl(&dword_1DF59A000, v66, v67, "SecItemCopyMatching() result: %s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1E12D9D80](v12, -1, -1);
      MEMORY[0x1E12D9D80](v69, -1, -1);
    }

    v7 = *(v64 + 16);
    if (!v7)
    {
      break;
    }

    v74 = 0;
    v75 = (v112 + 48);
    v55 = MEMORY[0x1E69E7CC0];
    while (v74 < *(v64 + 16))
    {

      sub_1DF5A0D98(v76, v10);
      if ((*v75)(v10, 1, v114) == 1)
      {
        sub_1DF59CB50(v10, &qword_1ECE437F0, &qword_1DF63E0F0);
      }

      else
      {
        sub_1DF5A325C(v10, v113);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_1DF5C16F8(0, *(v55 + 16) + 1, 1, v55);
        }

        v78 = *(v55 + 16);
        v77 = *(v55 + 24);
        v12 = (v78 + 1);
        if (v78 >= v77 >> 1)
        {
          v55 = sub_1DF5C16F8((v77 > 1), v78 + 1, 1, v55);
        }

        *(v55 + 16) = v12;
        sub_1DF5A325C(v113, v55 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v78);
      }

      if (v7 == ++v74)
      {
        goto LABEL_70;
      }
    }

    __break(1u);
LABEL_73:
    swift_once();
  }

  v55 = MEMORY[0x1E69E7CC0];
LABEL_70:

LABEL_71:

  swift_unknownObjectRelease();
  return v55;
}

uint64_t sub_1DF5A0B98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DF5A0BF4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  return sub_1DF63269C();
}

unint64_t sub_1DF5A0C8C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1DF5A819C(a5, a6);
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
    result = sub_1DF63350C();
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

uint64_t sub_1DF5A0D98@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D00, &qword_1DF63B250);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v105 = v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v107 = v92 - v7;
  v8 = sub_1DF63252C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v104 = v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v106 = v92 - v12;
  v13 = *MEMORY[0x1E697B3C0];
  v14 = *(a1 + 2);

  if (v14 && (v15 = sub_1DF59F794(v13), (v16 & 1) != 0))
  {
    sub_1DF5A0B98(*(a1 + 7) + 32 * v15, &v111);
    sub_1DF59CB50(&v111, &qword_1ECE436C0, &qword_1DF6393D0);
    *(&v112 + 1) = MEMORY[0x1E69E6158];
    *&v111 = 0x455443414445523CLL;
    *(&v111 + 1) = 0xEA00000000003E44;
    sub_1DF5A27C4(&v111, &v109);
    v17 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = a1;
    sub_1DF59F654(&v109, v17, isUniquelyReferenced_nonNull_native);

    v19 = v108;
  }

  else
  {
    v111 = 0u;
    v112 = 0u;
    sub_1DF59CB50(&v111, &qword_1ECE436C0, &qword_1DF6393D0);
    v19 = a1;
  }

  if (qword_1ED8E4C60 != -1)
  {
    swift_once();
  }

  v101 = sub_1DF6326AC();
  __swift_project_value_buffer(v101, qword_1ED8E4C68);
  v20 = sub_1DF63268C();
  v21 = sub_1DF63318C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v102 = v8;
    v103 = v9;
    v24 = a2;
    v25 = v23;
    *&v111 = v23;
    *v22 = 136315138;
    type metadata accessor for CFString(0);
    v26 = v13;
    sub_1DF5A2C28(&qword_1ED8E4BA8, type metadata accessor for CFString, &unk_1DF638164);

    v27 = sub_1DF63284C();
    v29 = v28;

    v30 = sub_1DF59EEC8(v27, v29, &v111);
    v13 = v26;

    *(v22 + 4) = v30;
    _os_log_impl(&dword_1DF59A000, v20, v21, "Creating Keychain.Item from cfDictionary: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v31 = v25;
    a2 = v24;
    v8 = v102;
    v9 = v103;
    MEMORY[0x1E12D9D80](v31, -1, -1);
    MEMORY[0x1E12D9D80](v22, -1, -1);
  }

  if (*(a1 + 2))
  {
    v32 = sub_1DF59F794(*MEMORY[0x1E697ACF0]);
    if (v33)
    {
      sub_1DF5A0B98(*(a1 + 7) + 32 * v32, &v111);
      if (swift_dynamicCast())
      {
        v35 = v109;
        v34 = v110;
        v36 = v110 >> 62;
        if (v110 >> 62 == 3)
        {
          if (!v109 && v110 == 0xC000000000000000)
          {
            v37 = 0;
            v38 = 0xC000000000000000;
LABEL_24:
            sub_1DF5B33C0(v37, v38);
            goto LABEL_25;
          }

LABEL_23:
          v37 = v109;
          v38 = v110;
          goto LABEL_24;
        }

        if (v36)
        {
          if (v36 == 1)
          {
            LODWORD(v39) = HIDWORD(v109) - v109;
            if (!__OFSUB__(HIDWORD(v109), v109))
            {
              v39 = v39;
              goto LABEL_22;
            }

            __break(1u);
LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

          v41 = *(v109 + 16);
          v40 = *(v109 + 24);
          v42 = __OFSUB__(v40, v41);
          v39 = v40 - v41;
          if (v42)
          {
            goto LABEL_79;
          }
        }

        else
        {
          v39 = BYTE6(v110);
        }

LABEL_22:
        if (v39)
        {
          goto LABEL_29;
        }

        goto LABEL_23;
      }
    }
  }

LABEL_25:
  if (*(a1 + 2))
  {
    v43 = sub_1DF59F794(v13);
    if (v44)
    {
      sub_1DF5A0B98(*(a1 + 7) + 32 * v43, &v111);
      if (swift_dynamicCast())
      {
        v35 = v109;
        v34 = v110;
LABEL_29:
        if (!*(a1 + 2))
        {
          goto LABEL_41;
        }

        goto LABEL_32;
      }
    }
  }

  v35 = 0;
  v34 = 0xF000000000000000;
  if (!*(a1 + 2))
  {
LABEL_41:
    sub_1DF5C3890(v35, v34);

LABEL_45:

    v55 = type metadata accessor for Keychain.Item(0);
    return (*(*(v55 - 8) + 56))(a2, 1, 1, v55);
  }

LABEL_32:
  v45 = sub_1DF59F794(*MEMORY[0x1E697AC30]);
  if ((v46 & 1) == 0)
  {
    goto LABEL_41;
  }

  sub_1DF5A0B98(*(a1 + 7) + 32 * v45, &v111);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1DF5C3890(v35, v34);
LABEL_44:

    goto LABEL_45;
  }

  if (!*(a1 + 2) || (v99 = v109, v47 = *MEMORY[0x1E697AE88], v100 = v110, v48 = sub_1DF59F794(v47), (v49 & 1) == 0))
  {
    sub_1DF5C3890(v35, v34);

    goto LABEL_44;
  }

  sub_1DF5A0B98(*(a1 + 7) + 32 * v48, &v111);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1DF5C3890(v35, v34);

    goto LABEL_45;
  }

  v98 = v110;
  if (!*(a1 + 2) || (v97 = v109, v50 = sub_1DF59F794(*MEMORY[0x1E697ACD0]), (v51 & 1) == 0))
  {
    sub_1DF5C3890(v35, v34);

    v52 = v107;
    (*(v9 + 56))(v107, 1, 1, v8);
    goto LABEL_48;
  }

  v93 = v13;
  v96 = a2;
  sub_1DF5A0B98(*(a1 + 7) + 32 * v50, &v111);
  v52 = v107;
  v53 = swift_dynamicCast();
  v54 = *(v9 + 56);
  v102 = v9 + 56;
  v95 = v54;
  (v54)(v52, v53 ^ 1u, 1, v8);
  v94 = *(v9 + 48);
  if (v94(v52, 1, v8) == 1)
  {
    sub_1DF5C3890(v35, v34);

    a2 = v96;
LABEL_48:
    v57 = v52;
LABEL_49:
    sub_1DF59CB50(v57, &qword_1ECE42D00, &qword_1DF63B250);
    goto LABEL_45;
  }

  v58 = *(v9 + 32);
  v92[1] = v9 + 32;
  v107 = v58;
  (v58)(v106, v52, v8);
  if (!*(a1 + 2) || (v59 = sub_1DF59F794(*MEMORY[0x1E697ADD0]), (v60 & 1) == 0))
  {
    sub_1DF5C3890(v35, v34);

    (*(v9 + 8))(v106, v8);
    v61 = v105;
    (v95)(v105, 1, 1, v8);
    goto LABEL_55;
  }

  sub_1DF5A0B98(*(a1 + 7) + 32 * v59, &v111);
  v61 = v105;
  v62 = swift_dynamicCast();
  (v95)(v61, v62 ^ 1u, 1, v8);
  if (v94(v61, 1, v8) == 1)
  {
    (*(v9 + 8))(v106, v8);
    sub_1DF5C3890(v35, v34);

LABEL_55:
    a2 = v96;
    v57 = v61;
    goto LABEL_49;
  }

  (v107)(v104, v61, v8);
  v63 = *(a1 + 2);
  a2 = v96;
  v92[0] = v19;
  v103 = v9;
  if (!v63)
  {
    goto LABEL_63;
  }

  v64 = sub_1DF59F794(*MEMORY[0x1E697ABD0]);
  v65 = v93;
  if (v66)
  {
    sub_1DF5A0B98(*(a1 + 7) + 32 * v64, &v111);
    if (swift_dynamicCast())
    {
      v68 = v109;
      v67 = v110;
      goto LABEL_70;
    }
  }

  if (*(a1 + 2))
  {

    v69 = sub_1DF59F794(v65);
    if (v70)
    {
      sub_1DF5A0B98(*(a1 + 7) + 32 * v69, &v111);
      sub_1DF59CB50(&v111, &qword_1ECE436C0, &qword_1DF6393D0);
      *(&v112 + 1) = MEMORY[0x1E69E6158];
      *&v111 = 0x455443414445523CLL;
      *(&v111 + 1) = 0xEA00000000003E44;
      sub_1DF5A27C4(&v111, &v109);
      v71 = v65;
      v72 = swift_isUniquelyReferenced_nonNull_native();
      v108 = a1;
      sub_1DF59F654(&v109, v71, v72);

      v105 = v108;
      goto LABEL_65;
    }
  }

  else
  {
LABEL_63:
  }

  v111 = 0u;
  v112 = 0u;
  sub_1DF59CB50(&v111, &qword_1ECE436C0, &qword_1DF6393D0);
  v105 = a1;
LABEL_65:
  v102 = v8;
  if (qword_1ECE425B0 != -1)
  {
LABEL_80:
    swift_once();
  }

  __swift_project_value_buffer(v101, qword_1ECE437D8);
  v73 = sub_1DF63268C();
  v74 = sub_1DF63316C();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v95 = v75;
    v101 = swift_slowAlloc();
    *&v111 = v101;
    *v75 = 136315138;
    type metadata accessor for CFString(0);
    sub_1DF5A2C28(&qword_1ED8E4BA8, type metadata accessor for CFString, &unk_1DF638164);

    v76 = sub_1DF63284C();
    v78 = v77;

    v79 = sub_1DF59EEC8(v76, v78, &v111);

    v80 = v95;
    *(v95 + 1) = v79;
    v81 = v80;
    _os_log_impl(&dword_1DF59A000, v73, v74, "Missing kSecAttrAccessGroup from %s", v80, 0xCu);
    v82 = v101;
    __swift_destroy_boxed_opaque_existential_1(v101);
    MEMORY[0x1E12D9D80](v82, -1, -1);
    MEMORY[0x1E12D9D80](v81, -1, -1);
  }

  else
  {
  }

  v68 = 0;
  v67 = 0xE000000000000000;
  v8 = v102;
LABEL_70:
  if (!*(a1 + 2) || (v83 = sub_1DF59F794(*MEMORY[0x1E697ABD8]), (v84 & 1) == 0))
  {
    sub_1DF5C3890(v35, v34);

    goto LABEL_76;
  }

  sub_1DF5A0B98(*(a1 + 7) + 32 * v83, &v111);

  if ((swift_dynamicCast() & 1) == 0 || (sub_1DF5A2D44(v109, v110, &v111), v85 = v111, v111 == 3))
  {
    sub_1DF5C3890(v35, v34);
LABEL_76:

    v86 = *(v103 + 8);
    v86(v104, v8);
    v86(v106, v8);
    goto LABEL_45;
  }

  *a2 = v68;
  a2[1] = v67;
  v87 = v98;
  a2[2] = v97;
  a2[3] = v87;
  v88 = v100;
  a2[4] = v99;
  a2[5] = v88;
  v89 = type metadata accessor for Keychain.Item(0);
  v90 = v107;
  (v107)(a2 + v89[7], v106, v8);
  (v90)(a2 + v89[8], v104, v8);

  *(a2 + v89[9]) = v85;
  v91 = (a2 + v89[10]);
  *v91 = v35;
  v91[1] = v34;
  return (*(*(v89 - 1) + 56))(a2, 0, 1, v89);
}

uint64_t sub_1DF5A1BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42940, &qword_1DF638930);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27[-1] - v10;
  swift_beginAccess();
  if (*(*(a2 + 128) + 16) && (, sub_1DF59F358(a3, a4, sub_1DF5A3D44), v13 = v12, , (v13 & 1) != 0))
  {
    v14 = sub_1DF5A4B04(v28);
    v16 = sub_1DF5A4BCC(v27, a3, a4);
    if (*v15)
    {
      v17 = v15;
      (*(v9 + 16))(v11, a1, v8);
      v18 = *v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v17 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_1DF5A501C(0, v18[2] + 1, 1, v18);
        *v17 = v18;
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_1DF5A501C((v20 > 1), v21 + 1, 1, v18);
        *v17 = v18;
      }

      v18[2] = v21 + 1;
      (*(v9 + 32))(v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, v11, v8);
      (v16)(v27, 0);
      return (v14)(v28, 0);
    }

    else
    {
      (v16)(v27, 0);
      return (v14)(v28, 0);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42938, &qword_1DF638C80);
    v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1DF638990;
    (*(v9 + 16))(v24 + v23, a1, v8);
    swift_beginAccess();

    v25 = swift_isUniquelyReferenced_nonNull_native();
    v27[0] = *(a2 + 128);
    *(a2 + 128) = 0x8000000000000000;
    sub_1DF59F3DC(v24, a3, a4, v25);

    *(a2 + 128) = v27[0];
    return swift_endAccess();
  }
}

uint64_t sub_1DF5A1F40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A50, &qword_1DF638CC8);
  v34 = v4;
  result = sub_1DF63372C();
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

      sub_1DF633A6C();
      sub_1DF632ACC();
      result = sub_1DF633AAC();
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

uint64_t static Keychain.data(account:service:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE437F0, &qword_1DF63E0F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v50 - v10;
  v12 = type metadata accessor for Keychain.Item(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF59DFB8();
  if (v4)
  {
    return a4;
  }

  v51 = v13;
  v52 = v15;
  v16 = *MEMORY[0x1E697AE88];
  v17 = MEMORY[0x1E69E6158];
  v56 = MEMORY[0x1E69E6158];
  *&v55 = a3;
  *(&v55 + 1) = a4;
  sub_1DF5A27C4(&v55, v54);

  v18 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = v18;
  sub_1DF59F654(v54, v16, isUniquelyReferenced_nonNull_native);
  v20 = v53;
  v21 = *MEMORY[0x1E697AC30];
  v56 = v17;
  *&v55 = a1;
  *(&v55 + 1) = a2;
  sub_1DF5A27C4(&v55, v54);

  v22 = swift_isUniquelyReferenced_nonNull_native();
  v53 = v20;
  sub_1DF59F654(v54, v21, v22);
  v23 = v53;
  v24 = *MEMORY[0x1E697B260];
  v25 = *MEMORY[0x1E697B270];
  type metadata accessor for CFString(0);
  v56 = v26;
  *&v55 = v25;
  sub_1DF5A27C4(&v55, v54);
  v27 = v25;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v53 = v23;
  sub_1DF59F654(v54, v24, v28);
  v29 = v53;
  v57 = v53;
  v30 = *MEMORY[0x1E697B318];
  v31 = *MEMORY[0x1E695E4D0];
  if (*MEMORY[0x1E695E4D0])
  {
    type metadata accessor for CFBoolean(0);
    v33 = v32;
    v56 = v32;
    *&v55 = v31;
    sub_1DF5A27C4(&v55, v54);
    v34 = v31;
    v35 = v30;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v53 = v29;
    sub_1DF59F654(v54, v35, v36);

    v37 = v53;
    v38 = *MEMORY[0x1E697B390];
    v56 = v33;
    *&v55 = v34;
    sub_1DF5A27C4(&v55, v54);
    v39 = v38;
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v53 = v37;
    sub_1DF59F654(v54, v39, v40);

    v57 = v53;
  }

  else
  {
    v41 = v30;
    sub_1DF59FBA0(v41, v54);

    sub_1DF59CB50(v54, &qword_1ECE436C0, &qword_1DF6393D0);
    v42 = *MEMORY[0x1E697B390];
    sub_1DF59FBA0(v42, v54);

    sub_1DF59CB50(v54, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  v43 = *MEMORY[0x1E697AEB0];
  sub_1DF59FBA0(v43, &v55);

  result = sub_1DF59CB50(&v55, &qword_1ECE436C0, &qword_1DF6393D0);
  v46 = v51;
  v45 = v52;
  if (*MEMORY[0x1E697AEA8])
  {
    v47 = *MEMORY[0x1E697AEA8];
    sub_1DF59FBA0(v47, &v55);

    sub_1DF59CB50(&v55, &qword_1ECE436C0, &qword_1DF6393D0);
    v48 = sub_1DF59FC40(v57, 0);

    if (*(v48 + 16))
    {
      sub_1DF5A39C0(v48 + ((*(v46 + 80) + 32) & ~*(v46 + 80)), v11);

      (*(v46 + 56))(v11, 0, 1, v12);
    }

    else
    {

      (*(v46 + 56))(v11, 1, 1, v12);
    }

    if ((*(v46 + 48))(v11, 1, v12) == 1)
    {
      sub_1DF59CB50(v11, &qword_1ECE437F0, &qword_1DF63E0F0);
      return 0;
    }

    else
    {
      sub_1DF5A325C(v11, v45);
      v49 = v45 + *(v12 + 40);
      a4 = *v49;
      sub_1DF5A3A80(*v49, *(v49 + 8));
      sub_1DF5A3A24(v45);
    }

    return a4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF5A27C8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF5A2858(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DF5A28E8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1DF5A27C8(&unk_1ED8E4BB0, 255, type metadata accessor for CFString, &unk_1DF6381A8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1DF63264C();

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

uint64_t sub_1DF5A29F8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1DF5A27C4(a3, a4[7] + 32 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1DF5A2A60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1DF5A2AA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE429E0, &qword_1DF638C10);
  v2 = *v0;
  v3 = sub_1DF63371C();
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
        sub_1DF5A0B98(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1DF5A5660(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

uint64_t sub_1DF5A2C28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DF5A2C70(uint64_t a1, uint64_t a2)
{
  sub_1DF633A6C();
  swift_getWitnessTable();
  sub_1DF63265C();
  return sub_1DF633AAC();
}

uint64_t sub_1DF5A2CD8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1DF63264C();
}

void sub_1DF5A2D44(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *MEMORY[0x1E697AC20];
  if (sub_1DF632A2C() == a1 && v7 == a2)
  {
    goto LABEL_18;
  }

  v9 = sub_1DF63394C();

  if (v9)
  {
    goto LABEL_19;
  }

  v10 = *MEMORY[0x1E697AC28];
  if (sub_1DF632A2C() == a1 && v11 == a2)
  {
LABEL_18:

LABEL_19:

    v18 = 0;
LABEL_20:
    *a3 = v18;
    return;
  }

  v13 = sub_1DF63394C();

  if (v13)
  {
    goto LABEL_19;
  }

  v14 = *MEMORY[0x1E697ABE0];
  if (sub_1DF632A2C() == a1 && v15 == a2)
  {
    goto LABEL_23;
  }

  v17 = sub_1DF63394C();

  if (v17)
  {
    goto LABEL_24;
  }

  v19 = *MEMORY[0x1E697ABE8];
  if (sub_1DF632A2C() == a1 && v20 == a2)
  {
LABEL_23:

LABEL_24:

    v18 = 1;
    goto LABEL_20;
  }

  v21 = sub_1DF63394C();

  if (v21)
  {
    goto LABEL_24;
  }

  if (*MEMORY[0x1E697ABF8])
  {
    v22 = *MEMORY[0x1E697ABF8];
    if (sub_1DF632A2C() == a1 && v23 == a2)
    {
LABEL_29:

LABEL_31:

      v18 = 2;
      goto LABEL_20;
    }

    v24 = sub_1DF63394C();

    if (v24)
    {
      goto LABEL_31;
    }

    if (*MEMORY[0x1E697AC08])
    {
      v25 = *MEMORY[0x1E697AC08];
      if (sub_1DF632A2C() != a1 || v26 != a2)
      {
        v27 = sub_1DF63394C();

        if ((v27 & 1) == 0)
        {
          if (qword_1ED8E4A88 != -1)
          {
            swift_once();
          }

          v28 = sub_1DF6326AC();
          __swift_project_value_buffer(v28, qword_1ED8E4A90);

          v29 = sub_1DF63268C();
          v30 = sub_1DF63316C();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v34 = v32;
            *v31 = 136315138;
            v33 = sub_1DF59EEC8(a1, a2, &v34);

            *(v31 + 4) = v33;
            _os_log_impl(&dword_1DF59A000, v29, v30, "Unexpected raw DataProtectionClass: %s", v31, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v32);
            MEMORY[0x1E12D9D80](v32, -1, -1);
            MEMORY[0x1E12D9D80](v31, -1, -1);
          }

          else
          {
          }

          v18 = 3;
          goto LABEL_20;
        }

        goto LABEL_31;
      }

      goto LABEL_29;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1DF5A30F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DF63252C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF5A31B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DF63252C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DF5A325C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Keychain.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF5A32C0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_1DF5A32D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v5 = *MEMORY[0x1E697ACF0];
    v6 = sub_1DF59F794(*MEMORY[0x1E697ACF0]);
    if (v7)
    {
      sub_1DF5A0B98(*(a1 + 56) + 32 * v6, &v58);
      v8 = MEMORY[0x1E6969080];
      if (swift_dynamicCast())
      {
        v9 = *(&v57[0] + 1);
        v10 = *&v57[0];
        v11 = *(&v57[0] + 1) >> 62;
        if (*(&v57[0] + 1) >> 62 == 3)
        {
          if (v57[0] == __PAIR128__(0xC000000000000000, 0))
          {
            sub_1DF5B33C0(0, 0xC000000000000000);
            return;
          }

          goto LABEL_25;
        }

        if (v11)
        {
          if (v11 == 1)
          {
            LODWORD(v12) = DWORD1(v57[0]) - LODWORD(v57[0]);
            if (!__OFSUB__(DWORD1(v57[0]), v57[0]))
            {
              v12 = v12;
              goto LABEL_13;
            }

            __break(1u);
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          v14 = *(*&v57[0] + 16);
          v13 = *(*&v57[0] + 24);
          v15 = __OFSUB__(v13, v14);
          v12 = v13 - v14;
          if (v15)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v12 = BYTE14(v57[0]);
        }

LABEL_13:
        if (!v12)
        {
LABEL_25:
          sub_1DF5B33C0(*&v57[0], *(&v57[0] + 1));
          return;
        }

        v16 = *MEMORY[0x1E697B3C0];
        v59 = v8;
        v58 = v57[0];
        sub_1DF5A27C4(&v58, v57);
        sub_1DF5A3A94(v10, v9);
        v17 = MEMORY[0x1E69E7CC8];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1DF59F654(v57, v16, isUniquelyReferenced_nonNull_native);
        v59 = v8;
        v58 = xmmword_1DF6385D0;
        sub_1DF5A27C4(&v58, v57);
        v19 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DF59F654(v57, v5, v19);
        v20 = v17;
        if (*(a2 + 16) && (v21 = *MEMORY[0x1E697AE88], v22 = sub_1DF59F794(*MEMORY[0x1E697AE88]), (v23 & 1) != 0) && (sub_1DF5A0B98(*(a2 + 56) + 32 * v22, &v58), (swift_dynamicCast() & 1) != 0))
        {
          v24 = *(&v57[0] + 1);
          if (*(a2 + 16))
          {
            v25 = *&v57[0];
            v26 = *MEMORY[0x1E697AC30];
            v27 = sub_1DF59F794(*MEMORY[0x1E697AC30]);
            if (v28)
            {
              sub_1DF5A0B98(*(a2 + 56) + 32 * v27, &v58);
              if (swift_dynamicCast())
              {
                v29 = v57[0];
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43828, &qword_1DF63E278);
                inited = swift_initStackObject();
                *(inited + 32) = v21;
                *(inited + 16) = xmmword_1DF63E0E0;
                v56 = v25;
                *(inited + 40) = v25;
                *(inited + 48) = v24;
                *(inited + 56) = v26;
                *(inited + 64) = v29;
                v31 = v21;

                v32 = v26;

                v33 = sub_1DF5C9388(inited);
                swift_setDeallocating();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE43830, &unk_1DF63E280);
                swift_arrayDestroy();
                v34 = sub_1DF62CC3C(v33);

                v2 = sub_1DF62F940(v34, v20);

                if (!v2)
                {
                  if (qword_1ED8E4A68 != -1)
                  {
                    swift_once();
                  }

                  v49 = sub_1DF6326AC();
                  __swift_project_value_buffer(v49, qword_1ED8E6928);

                  v36 = sub_1DF63268C();
                  v50 = sub_1DF63318C();

                  if (!os_log_type_enabled(v36, v50))
                  {
                    sub_1DF5B33C0(v10, v9);

                    goto LABEL_33;
                  }

                  v51 = swift_slowAlloc();
                  v52 = swift_slowAlloc();
                  *&v58 = v52;
                  *v51 = 136315394;
                  v53 = sub_1DF59EEC8(v56, v24, &v58);

                  *(v51 + 4) = v53;
                  *(v51 + 12) = 2080;
                  v54 = sub_1DF59EEC8(v29, *(&v29 + 1), &v58);

                  *(v51 + 14) = v54;
                  _os_log_impl(&dword_1DF59A000, v36, v50, "SecItemCopyMatching item migration success. s:%s, a: %s.", v51, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x1E12D9D80](v52, -1, -1);
                  v48 = v51;
                  goto LABEL_31;
                }

                if (qword_1ED8E4A68 == -1)
                {
LABEL_22:
                  v35 = sub_1DF6326AC();
                  __swift_project_value_buffer(v35, qword_1ED8E6928);
                  v36 = sub_1DF63268C();
                  v37 = sub_1DF63316C();
                  if (!os_log_type_enabled(v36, v37))
                  {
LABEL_32:
                    sub_1DF5B33C0(v10, v9);
LABEL_33:

                    return;
                  }

                  v38 = swift_slowAlloc();
                  v39 = swift_slowAlloc();
                  *&v58 = v39;
                  *v38 = 67109378;
                  *(v38 + 4) = v2;
                  *(v38 + 8) = 2082;
                  v40 = SecCopyErrorMessageString(v2, 0);
                  if (v40)
                  {
                    v41 = v40;
                    v42 = sub_1DF63298C();
                    v44 = v43;
                  }

                  else
                  {
                    v44 = 0xE90000000000003ELL;
                    v42 = 0x6E776F6E6B6E753CLL;
                  }

                  v55 = sub_1DF59EEC8(v42, v44, &v58);

                  *(v38 + 10) = v55;
                  _os_log_impl(&dword_1DF59A000, v36, v37, "SecItemCopyMatching item migration error: %d [%{public}s]", v38, 0x12u);
                  __swift_destroy_boxed_opaque_existential_1(v39);
                  MEMORY[0x1E12D9D80](v39, -1, -1);
                  v48 = v38;
LABEL_31:
                  MEMORY[0x1E12D9D80](v48, -1, -1);
                  goto LABEL_32;
                }

LABEL_45:
                swift_once();
                goto LABEL_22;
              }
            }
          }
        }

        else
        {
        }

        if (qword_1ED8E4A68 != -1)
        {
          swift_once();
        }

        v45 = sub_1DF6326AC();
        __swift_project_value_buffer(v45, qword_1ED8E6928);
        v36 = sub_1DF63268C();
        v46 = sub_1DF63316C();
        if (!os_log_type_enabled(v36, v46))
        {
          goto LABEL_32;
        }

        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_1DF59A000, v36, v46, "SecItemCopyMatching item migration error: missing account and service.", v47, 2u);
        v48 = v47;
        goto LABEL_31;
      }
    }
  }
}

uint64_t sub_1DF5A39C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Keychain.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF5A3A24(uint64_t a1)
{
  v2 = type metadata accessor for Keychain.Item(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF5A3A80(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DF5A3A94(result, a2);
  }

  return result;
}

uint64_t sub_1DF5A3A94(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

id Error.code.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v7, a1, v4);
  v8 = sub_1DF6338FC();
  if (v8)
  {
    v9 = v8;
    (*(v3 + 8))(v6, a1);
  }

  else
  {
    v9 = swift_allocError();
    (*(v3 + 32))(v10, v6, a1);
  }

  v11 = sub_1DF63227C();

  v12 = [v11 code];
  return v12;
}

uint64_t sub_1DF5A3C48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D50, &qword_1DF63AAE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::UInt64 __swiftcall convertToNanoseconds(_:)(Swift::UInt64 result)
{
  if (qword_1ECE42378 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (is_mul_ok(result, qword_1ECE42380))
  {
    if (HIDWORD(qword_1ECE42380))
    {
      return result * qword_1ECE42380 / HIDWORD(qword_1ECE42380);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1DF5A3D44(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1DF63394C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1DF5A3DFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10FindMyBase11Entitlement_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_So15NSXPCConnectionCSbIeghHgd_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t FM.XPCSession.init(service:)(uint64_t a1)
{
  v3 = sub_1DF6325AC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v1 + qword_1ED8E5D70) = 0;
  sub_1DF63259C();
  (*(v4 + 32))(v1 + qword_1ED8E6A28, v6, v3);
  v7 = v1 + qword_1ED8E6A20;
  v8 = *(a1 + 80);
  *(v7 + 64) = *(a1 + 64);
  *(v7 + 80) = v8;
  *(v7 + 96) = *(a1 + 96);
  v9 = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 16) = v9;
  v10 = *(a1 + 48);
  *(v7 + 32) = *(a1 + 32);
  *(v7 + 48) = v10;
  return v1;
}

uint64_t FM.XPCSession.__allocating_init(service:)(uint64_t a1)
{
  v2 = swift_allocObject();
  FM.XPCSession.init(service:)(a1);
  return v2;
}

uint64_t dispatch thunk of FM.XPCSession.resume()()
{
  v4 = (*(*v0 + 184) + **(*v0 + 184));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DF59D2C4;

  return v4();
}

uint64_t sub_1DF5A410C()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DF5A4304;

  return sub_1DF5A419C();
}

uint64_t sub_1DF5A41BC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + qword_1ED8E5D70);
  if (v2)
  {
    v3 = *(v1 + qword_1ED8E5D70);
  }

  else
  {
    v4 = (v1 + qword_1ED8E6A20);
    v5 = *(v1 + qword_1ED8E6A20 + 16);
    v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
    v7 = sub_1DF63295C();
    v8 = [v6 initWithMachServiceName:v7 options:v5];

    [v8 setExportedInterface_];
    [v8 setExportedObject_];
    [v8 setRemoteObjectInterface_];
    v9 = *(v1 + qword_1ED8E5D70);
    *(v1 + qword_1ED8E5D70) = v8;
    v3 = v8;

    v2 = 0;
  }

  v12 = *(v0 + 8);
  v10 = v2;

  return v12(v3);
}

uint64_t sub_1DF5A4304(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DF5A441C, v2, 0);
}

uint64_t sub_1DF5A441C()
{
  v1 = *(v0 + 32);
  [v1 resume];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t dispatch thunk of FM.XPCSession.connection.getter()
{
  v4 = (*(*v0 + 144) + **(*v0 + 144));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DF5A459C;

  return v4();
}

uint64_t sub_1DF5A459C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1DF5A4698()
{
  if (qword_1ED8E5C08 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED8E5C10;
  *(v0 + 40) = qword_1ED8E5C10;

  return MEMORY[0x1EEE6DFA0](sub_1DF5A4998, v1, 0);
}

uint64_t sub_1DF5A4734(uint64_t a1)
{
  if (qword_1ED8E60C0 != -1)
  {
    a1 = swift_once();
  }

  v1 = off_1ED8E60C8;
  v16 = 0x7365547265646E75;
  v17 = 0xE900000000000074;
  v2 = *(off_1ED8E60C8 + 2);
  MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock(v2 + 4);
  sub_1DF5A4B88(&v15);
  os_unfair_lock_unlock(v2 + 4);
  v4 = v15;
  if (v15 == 2)
  {
    has_internal_content = os_variant_has_internal_content();
    if (has_internal_content)
    {
      v6 = [objc_opt_self() processInfo];
      v7 = [v6 environment];

      v8 = sub_1DF63283C();
      if (*(v8 + 16))
      {
        sub_1DF59F184(0xD00000000000001BLL, 0x80000001DF635420);
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v15 = v10 & 1;
    v11 = *(v1 + 2);
    MEMORY[0x1EEE9AC00](has_internal_content);
    MEMORY[0x1EEE9AC00](v12);
    os_unfair_lock_lock(v11 + 4);
    sub_1DF5A5000(&v14);
    os_unfair_lock_unlock(v11 + 4);
    v4 = v14;
  }

  return v4 & 1;
}

uint64_t sub_1DF5A4998()
{
  v1 = *(v0 + 16);
  v2 = sub_1DF63295C();
  sub_1DF59E6F8(v2, v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DF5A4A14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43090, &unk_1DF63AF20);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A80, qword_1DF638E00);
  result = swift_allocObject();
  *(result + 16) = 0;
  v2 = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = result;
  *(v0 + 24) = v2;
  off_1ED8E60C8 = v0;
  return result;
}

uint64_t sub_1DF5A4B54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DF5A4C54(*(v1 + 16), **(v1 + 24), *(*(v1 + 24) + 8));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_1DF5A4B88@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t (*sub_1DF5A4BCC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1DF5A4D28(v6, a2, a3);
  return sub_1DF5A5544;
}

uint64_t sub_1DF5A4C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 24);
  if (*(v6 + 16) && (v7 = sub_1DF59F184(a2, a3), (v8 & 1) != 0))
  {
    sub_1DF5A0B98(*(v6 + 56) + 32 * v7, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE436C0, &qword_1DF6393D0);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 2;
  }
}

void (*sub_1DF5A4D28(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1DF5A4FD8(v7);
  v7[9] = sub_1DF5A4E14(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1DF5A5670;
}

uint64_t sub_1DF5A4DD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DF5A5210(*(v1 + 16), **(v1 + 24), *(*(v1 + 24) + 8), **(v1 + 32));
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

void (*sub_1DF5A4E14(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1DF59F358(a2, a3, sub_1DF5A3D44);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1DF5DE6A8();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1DF5A1F40(v18, a4 & 1);
    v13 = sub_1DF59F358(a2, a3, sub_1DF5A3D44);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1DF6339EC();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1DF5A5AE4;
}

void *sub_1DF5A4F94@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t (*sub_1DF5A4FD8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1DF5A5B98;
}

void *sub_1DF5A501C(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42938, &qword_1DF638C80);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42940, &qword_1DF638930) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42940, &qword_1DF638930) - 8);
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

uint64_t sub_1DF5A5210(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  v9 = *(a1 + 24);
  if (*(v9 + 16) && (v10 = sub_1DF59F184(a2, a3), (v11 & 1) != 0))
  {
    sub_1DF5A0B98(*(v9 + 56) + 32 * v10, &v30);
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE436C0, &qword_1DF6393D0);
  v12 = MEMORY[0x1E69E6370];
  if (swift_dynamicCast())
  {
    v13 = v32[0];
    if (qword_1ED8E5958 != -1)
    {
      swift_once();
    }

    v14 = sub_1DF6326AC();
    __swift_project_value_buffer(v14, qword_1ED8E69A0);

    v15 = sub_1DF63268C();
    v16 = sub_1DF63314C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32[0] = v18;
      *v17 = 141559043;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      LOBYTE(v30) = v13 & 1;
      v19 = sub_1DF632A3C();
      v21 = sub_1DF59EEC8(v19, v20, v32);
      v32[4] = v4;
      v22 = v21;

      *(v17 + 14) = v22;
      *(v17 + 22) = 2082;
      *&v30 = a2;
      *(&v30 + 1) = a3;

      v23 = sub_1DF632A3C();
      v25 = sub_1DF59EEC8(v23, v24, v32);

      *(v17 + 24) = v25;
      *(v17 + 32) = 2160;
      *(v17 + 34) = 1752392040;
      *(v17 + 42) = 2081;
      LOBYTE(v30) = a4 & 1;
      v26 = sub_1DF632A3C();
      v28 = sub_1DF59EEC8(v26, v27, v32);

      *(v17 + 44) = v28;
      _os_log_impl(&dword_1DF59A000, v15, v16, "Some other thread already stored value %{private,mask.hash}s for '%{public}s' -- ignoring computed value: %{private,mask.hash}s", v17, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v18, -1, -1);
      MEMORY[0x1E12D9D80](v17, -1, -1);
    }

    a4 = v13;
  }

  else
  {
    *(&v31 + 1) = v12;
    LOBYTE(v30) = a4 & 1;
    swift_beginAccess();

    sub_1DF5A5590(&v30, a2, a3);
    swift_endAccess();
  }

  return a4 & 1;
}

void sub_1DF5A5544(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1DF5A5590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1DF5A5660(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1DF5A56D0(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1DF59CB50(a1, &qword_1ECE436C0, &qword_1DF6393D0);
    sub_1DF62DCA8(a2, a3, v9);

    return sub_1DF59CB50(v9, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  return result;
}

_OWORD *sub_1DF5A5660(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1DF5A5670(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t sub_1DF5A56D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DF59F184(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1DF5DEF94();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1DF5A5BA4(v16, a4 & 1);
    v11 = sub_1DF59F184(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1DF6339EC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_1DF5A27C4(a1, v22);
  }

  else
  {
    sub_1DF5A5BCC(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1DF5A5820(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v7;
  result = sub_1DF63372C();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v8 + 56) + 32 * v23;
      if (v36)
      {
        a5(v27, v38);
      }

      else
      {
        sub_1DF5A0B98(v27, v38);
      }

      sub_1DF633A6C();
      sub_1DF632ACC();
      result = sub_1DF633AAC();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      result = (a5)(v38, *(v10 + 56) + 32 * v18);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v6 = v10;
  return result;
}

void sub_1DF5A5AE4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_1DF62F18C(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_1DF5C9A54(*(v7 + 48) + 16 * v6);
    sub_1DF62E014(v6, v7);
  }

  free(v1);
}

uint64_t sub_1DF5A5BCC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1DF5A27C4(a4, a5[7] + 32 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1DF5A5C3C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v5;
  *(v4 + 48) = v2;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1DF5AC10C;
  v7 = *(v0 + 56);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v10, 0, 0, v8, v9, sub_1DF5A5DEC, v4, v7);
}

uint64_t sub_1DF5A5D2C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  type metadata accessor for OnceCheckedContinuation(0, a6, v11, MEMORY[0x1E69E7288]);
  swift_allocObject();

  sub_1DF5A5E64(a1, a2, a3);
  a4();
}

void *sub_1DF5A5E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *v3;
  v19 = a3;
  v6 = v18[10];
  v7 = v18[11];
  v8 = v18[12];
  v9 = sub_1DF632E4C();
  v10 = sub_1DF63327C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  (*(*(v9 - 8) + 56))(&v18 - v13, 1, 1, v9, v12);
  v15 = sub_1DF5A610C(v14, v10);
  (*(v11 + 8))(v14, v10);
  v3[2] = v15;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v24 = a1;

  sub_1DF5A61A8(sub_1DF5A6260, v20, v15);

  v16 = v19;
  v3[3] = a2;
  v3[4] = v16;
  return v3;
}

uint64_t sub_1DF5A6090(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1DF6334FC();
  return sub_1DF6334EC();
}

uint64_t sub_1DF5A6110@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

void sub_1DF5A61A8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t sub_1DF5A6280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1DF632E4C();
  v8 = sub_1DF63327C();
  (*(*(v8 - 8) + 8))(a1, v8);
  v9 = *(v7 - 8);
  (*(v9 + 16))(a1, a2, v7);
  return (*(v9 + 56))(a1, 0, 1, v7);
}

uint64_t XPCClient.proxy(errorHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v10 = (*(a5 + 16) + **(a5 + 16));
  v8 = swift_task_alloc();
  v5[5] = v8;
  *v8 = v5;
  v8[1] = sub_1DF5A6498;

  return v10(a4, a5);
}

uint64_t sub_1DF5A6498(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DF5A6598, 0, 0);
}

void sub_1DF5A6598()
{
  if (v0[6])
  {
    v1 = swift_task_alloc();
    v0[7] = v1;
    *v1 = v0;
    v1[1] = sub_1DF5A663C;
    v2 = v0[3];
    v3 = v0[4];
    v4 = v0[2];

    sub_1DF5A6778(v4, v2, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DF5A663C()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF5BDFB4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DF5A6778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[16] = *(*v3 + 80);
  v5 = sub_1DF63327C();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[20] = v6;
  *v6 = v4;
  v6[1] = sub_1DF5A6CFC;

  return sub_1DF5A419C();
}

uint64_t sub_1DF5A6910(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_1DF632E9C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a2;
  v9[6] = v4;

  v10 = a2;
  sub_1DF623C34(0, 0, v7, &unk_1DF63DAC8, v9);

  return 1;
}

uint64_t sub_1DF5A6A60()
{
  v1 = [*(v0 + 168) remoteObjectInterface];
  if (v1)
  {
    v2 = *(v0 + 168);
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);

    *(v0 + 48) = v4;
    *(v0 + 56) = v3;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1DF614148;
    *(v0 + 40) = &block_descriptor_0;
    v5 = _Block_copy((v0 + 16));

    v6 = [v2 remoteObjectProxyWithErrorHandler_];
    _Block_release(v5);
    sub_1DF63339C();
    swift_unknownObjectRelease();
    if (swift_dynamicCast())
    {
      v7 = *(v0 + 152);
      v8 = *(v0 + 128);
      v9 = *(v0 + 96);

      v10 = *(v8 - 8);
      (*(v10 + 56))(v7, 0, 1, v8);
      (*(v10 + 32))(v9, v7, v8);

      v11 = *(v0 + 8);
      goto LABEL_7;
    }

    v14 = *(v0 + 144);
    v13 = *(v0 + 152);
    v15 = *(v0 + 136);
    v12 = 1;
    (*(*(*(v0 + 128) - 8) + 56))(v13, 1, 1);
    (*(v14 + 8))(v13, v15);
  }

  else
  {
    v12 = 0;
  }

  sub_1DF6149F4();
  swift_allocError();
  v16 = *(v0 + 168);
  *v17 = v12;
  swift_willThrow();

  v11 = *(v0 + 8);
LABEL_7:

  return v11();
}

uint64_t sub_1DF5A6CFC(uint64_t a1)
{
  v2 = *(*v1 + 120);
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DF5A6A60, v2, 0);
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

uint64_t sub_1DF5A6E54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF59D2C8;

  return sub_1DF5A6F1C(a1, v4, v5, v6, v7);
}

uint64_t sub_1DF5A6F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 648) = a5;
  *(v5 + 640) = a4;

  return MEMORY[0x1EEE6DFA0](sub_1DF5A6FB0, a4, 0);
}

uint64_t sub_1DF5A6FB0()
{
  v1 = *(v0 + 640);
  swift_beginAccess();
  *(v0 + 656) = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1DF5A7064, 0, 0);
}

uint64_t sub_1DF5A7064()
{
  v76 = v0;
  v75[1] = *MEMORY[0x1E69E9840];
  v1 = [*(v0 + 648) serviceName];
  v2 = *(v0 + 656);
  if (!v1)
  {
    goto LABEL_9;
  }

  v3 = v1;
  v4 = sub_1DF63298C();
  v6 = v5;

  if (!*(v2 + 16))
  {

    goto LABEL_9;
  }

  v7 = sub_1DF59F184(v4, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_9:

    if (qword_1ED8E4D08 != -1)
    {
      swift_once();
    }

    v22 = sub_1DF6326AC();
    __swift_project_value_buffer(v22, qword_1ED8E6988);

    v23 = sub_1DF63268C();
    v24 = sub_1DF63316C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 640);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v75[0] = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_1DF59EEC8(*(v25 + 112), *(v25 + 120), v75);
      _os_log_impl(&dword_1DF59A000, v23, v24, "XPCSessionManager(%{public}s: Not accepting connection since a service description is not registered", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1E12D9D80](v27, -1, -1);
      MEMORY[0x1E12D9D80](v26, -1, -1);
    }

    [*(v0 + 648) invalidate];
    goto LABEL_14;
  }

  v10 = *(v0 + 648);
  sub_1DF5A7C1C(*(*(v0 + 656) + 56) + 112 * v7, v0 + 128);

  v11 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v11;
  *(v0 + 112) = *(v0 + 224);
  v12 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v12;
  v13 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v13;
  sub_1DF5A7C78(v0 + 16, v0 + 240);
  sub_1DF59CC98(v0 + 64, v0 + 440, &unk_1ECE43730, &qword_1DF63DAD0);
  [v10 auditToken];
  v14 = xpc_copy_code_signing_identity_for_token();
  if (!v14)
  {
    sub_1DF624F50();
    swift_allocError();
    swift_willThrow();
    sub_1DF59CB50(v0 + 440, &unk_1ECE43730, &qword_1DF63DAD0);
    sub_1DF5A84F8(v0 + 16);
    sub_1DF5A8528(v0 + 240);
    v28 = *(v0 + 8);
    goto LABEL_15;
  }

  v15 = v14;
  v16 = sub_1DF632B2C();
  v18 = v17;
  MEMORY[0x1E12D9D80](v15, -1, -1);
  sub_1DF59CC98(v0 + 440, v0 + 520, &unk_1ECE43730, &qword_1DF63DAD0);
  if (!*(v0 + 544))
  {
    sub_1DF59CB50(v0 + 520, &unk_1ECE43730, &qword_1DF63DAD0);
    goto LABEL_20;
  }

  sub_1DF5A7D18((v0 + 520), v0 + 480);
  v19 = *(v0 + 504);
  v20 = *(v0 + 512);
  v21 = __swift_project_boxed_opaque_existential_1((v0 + 480), v19);
  if (NSXPCConnection.hasEntitlement<A>(_:)(v21, v19, v20))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 480));
LABEL_20:
    v30 = (v0 + 344);
    v31 = (v0 + 392);
    if (qword_1ED8E4D08 != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 648);
    v33 = sub_1DF6326AC();
    __swift_project_value_buffer(v33, qword_1ED8E6988);

    v34 = v32;

    v35 = sub_1DF63268C();
    v36 = sub_1DF63318C();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = *(v0 + 648);
      v38 = *(v0 + 640);
      v39 = swift_slowAlloc();
      v73 = v16;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v75[0] = v41;
      *v39 = 136446722;
      v42 = *(v38 + 112);
      v43 = *(v38 + 120);
      v31 = (v0 + 392);
      v30 = (v0 + 344);
      *(v39 + 4) = sub_1DF59EEC8(v42, v43, v75);
      *(v39 + 12) = 2114;
      *(v39 + 14) = v37;
      *v40 = v37;
      *(v39 + 22) = 2080;
      v44 = v37;
      v45 = sub_1DF59EEC8(v73, v18, v75);

      *(v39 + 24) = v45;
      _os_log_impl(&dword_1DF59A000, v35, v36, "XPCSessionManager(%{public}s: New XPC connection: %{public}@ from %s", v39, 0x20u);
      sub_1DF59CB50(v40, &qword_1ECE42AF0, &qword_1DF63ABC0);
      MEMORY[0x1E12D9D80](v40, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v41, -1, -1);
      MEMORY[0x1E12D9D80](v39, -1, -1);
    }

    else
    {
    }

    v46 = *(v0 + 648);
    [v46 setExportedInterface_];
    [v46 setExportedObject_];
    [v46 setRemoteObjectInterface_];
    v47 = swift_allocObject();
    swift_weakInit();
    v48 = swift_allocObject();
    *(v48 + 16) = v47;
    *(v48 + 24) = v46;
    *(v0 + 376) = sub_1DF6252D8;
    *(v0 + 384) = v48;
    *(v0 + 344) = MEMORY[0x1E69E9820];
    *(v0 + 352) = 1107296256;
    *(v0 + 360) = sub_1DF6126B8;
    *(v0 + 368) = &block_descriptor_2;
    v49 = _Block_copy(v30);
    v50 = v46;

    [v50 setInterruptionHandler_];
    _Block_release(v49);
    v51 = swift_allocObject();
    swift_weakInit();
    v52 = swift_allocObject();
    *(v52 + 16) = v51;
    *(v52 + 24) = v50;
    *(v0 + 424) = sub_1DF625350;
    *(v0 + 432) = v52;
    *(v0 + 392) = MEMORY[0x1E69E9820];
    *(v0 + 400) = 1107296256;
    *(v0 + 408) = sub_1DF6126B8;
    *(v0 + 416) = &block_descriptor_33;
    v53 = _Block_copy(v31);
    v54 = v50;

    [v54 setInvalidationHandler_];
    _Block_release(v53);
    v55 = *(v0 + 328);
    *(v0 + 664) = v55;
    if (v55)
    {
      *(v0 + 672) = *(v0 + 336);

      v74 = (v55 + *v55);
      v56 = swift_task_alloc();
      *(v0 + 680) = v56;
      *v56 = v0;
      v56[1] = sub_1DF5A83CC;
      v57 = *(v0 + 648);

      return v74(v57);
    }

    [*(v0 + 648) resume];
    sub_1DF59CB50(v0 + 440, &unk_1ECE43730, &qword_1DF63DAD0);
    sub_1DF5A84F8(v0 + 16);
    sub_1DF5A8528(v0 + 240);
    goto LABEL_14;
  }

  [*(v0 + 648) invalidate];
  if (qword_1ED8E4D08 != -1)
  {
    swift_once();
  }

  v58 = *(v0 + 648);
  v59 = sub_1DF6326AC();
  __swift_project_value_buffer(v59, qword_1ED8E6988);
  sub_1DF625388(v0 + 480, v0 + 560);

  v60 = v58;

  v61 = sub_1DF63268C();
  v62 = sub_1DF63318C();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = *(v0 + 648);
    v64 = *(v0 + 640);
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v75[0] = v67;
    *v65 = 136446978;
    *(v65 + 4) = sub_1DF59EEC8(*(v64 + 112), *(v64 + 120), v75);
    *(v65 + 12) = 2114;
    *(v65 + 14) = v63;
    *v66 = v63;
    *(v65 + 22) = 2080;
    v68 = v63;
    v69 = sub_1DF59EEC8(v16, v18, v75);

    *(v65 + 24) = v69;
    *(v65 + 32) = 2080;
    __swift_project_boxed_opaque_existential_1((v0 + 560), *(v0 + 584));
    sub_1DF632CAC();
    v70 = *(v0 + 624);
    v71 = *(v0 + 632);
    __swift_destroy_boxed_opaque_existential_1((v0 + 560));
    v72 = sub_1DF59EEC8(v70, v71, v75);

    *(v65 + 34) = v72;
    _os_log_impl(&dword_1DF59A000, v61, v62, "XPCSessionManager(%{public}s: Ignoring unentitled XPC connection: %{public}@ from %s [Missing %s entitlement]", v65, 0x2Au);
    sub_1DF59CB50(v66, &qword_1ECE42AF0, &qword_1DF63ABC0);
    MEMORY[0x1E12D9D80](v66, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v67, -1, -1);
    MEMORY[0x1E12D9D80](v65, -1, -1);

    sub_1DF59CB50(v0 + 440, &unk_1ECE43730, &qword_1DF63DAD0);
    sub_1DF5A84F8(v0 + 16);
  }

  else
  {

    sub_1DF59CB50(v0 + 440, &unk_1ECE43730, &qword_1DF63DAD0);
    sub_1DF5A84F8(v0 + 16);
    __swift_destroy_boxed_opaque_existential_1((v0 + 560));
  }

  sub_1DF5A8528(v0 + 240);
  __swift_destroy_boxed_opaque_existential_1((v0 + 480));
LABEL_14:
  v28 = *(v0 + 8);
LABEL_15:

  return v28();
}

uint64_t sub_1DF5A7BDC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1DF5A7D18(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

BOOL NSXPCConnection.hasEntitlement<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DF632CAC();
  v3 = NSXPCConnection.hasEntitlement(_:)(v5);

  return v3;
}

Swift::Bool __swiftcall NSXPCConnection.hasEntitlement(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = sub_1DF63295C();
  v5 = [v1 valueForEntitlement_];

  if (v5)
  {
    sub_1DF63339C();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v15)
    {
      return 1;
    }
  }

  else
  {
    sub_1DF59CB50(v18, &qword_1ECE436C0, &qword_1DF6393D0);
  }

  if (qword_1ED8E5990 != -1)
  {
    swift_once();
  }

  v7 = sub_1DF6326AC();
  __swift_project_value_buffer(v7, qword_1ED8E69B8);
  v8 = v1;

  v9 = sub_1DF63268C();
  v10 = sub_1DF63316C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v18[0] = v13;
    *v11 = 138543618;
    *(v11 + 4) = v8;
    *v12 = v8;
    *(v11 + 12) = 2082;
    v14 = v8;
    *(v11 + 14) = sub_1DF59EEC8(countAndFlagsBits, object, v18);
    _os_log_impl(&dword_1DF59A000, v9, v10, "Connection %{public}@ does not have entitlement: [%{public}s]", v11, 0x16u);
    sub_1DF59CB50(v12, &qword_1ECE42AF0, &qword_1DF63ABC0);
    MEMORY[0x1E12D9D80](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E12D9D80](v13, -1, -1);
    MEMORY[0x1E12D9D80](v11, -1, -1);
  }

  return 0;
}

void *sub_1DF5A7FF8(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1DF5A8128(v5, 0);
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

  result = sub_1DF63350C();
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
        v10 = sub_1DF632B3C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1DF5A8128(v10, 0);
        result = sub_1DF63343C();
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

void *sub_1DF5A8128(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42980, &qword_1DF638970);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_1DF5A819C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1DF5A7FF8(a1, a2);
  sub_1DF5A81E8(&unk_1F5A93AE8);
  return v3;
}

uint64_t sub_1DF5A81E8(uint64_t result)
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

  result = sub_1DF5C48C8(result, v11, 1, v3);
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

uint64_t sub_1DF5A82D8()
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 720);
  sub_1DF5A83BC(*(v0 + 664), *(v0 + 672));
  v2 = &selRef_resume;
  if (!v1)
  {
    v2 = &selRef_invalidate;
  }

  [*(v0 + 648) *v2];
  sub_1DF59CB50(v0 + 440, &unk_1ECE43730, &qword_1DF63DAD0);
  sub_1DF5A84F8(v0 + 16);
  sub_1DF5A8528(v0 + 240);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DF5A83BC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DF5A83CC(char a1)
{
  *(*v1 + 720) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DF5A82D8, 0, 0);
}

uint64_t sub_1DF5A857C()
{
  (*(v0[12] + 16))(v0[13], v0[7], v0[5]);
  sub_1DF632C1C();
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  swift_getAssociatedConformanceWitness();
  sub_1DF63329C();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
    (*(v0[9] + 56))(v0[2], 1, 1, v0[8]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[10];
    v7 = v0[11];
    v8 = v0[8];
    v9 = v0[9];
    v10 = v0[3];
    v11 = *(v9 + 32);
    v0[17] = v11;
    v0[18] = (v9 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v11(v6, v7, v8);
    v14 = (v10 + *v10);
    v12 = swift_task_alloc();
    v0[19] = v12;
    *v12 = v0;
    v12[1] = sub_1DF5A8A7C;
    v13 = v0[10];

    return v14(v13);
  }
}

uint64_t sub_1DF5A87F4()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 80);
    v3 = *(v0 + 64);
    v4 = *(v0 + 16);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    v1(v4, v2, v3);
    v5 = 0;
LABEL_5:
    (*(*(v0 + 72) + 56))(*(v0 + 16), v5, 1, *(v0 + 64));

    v9 = *(v0 + 8);

    return v9();
  }

  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  v6 = *(v0 + 88);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  swift_getAssociatedConformanceWitness();
  sub_1DF63329C();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    v5 = 1;
    goto LABEL_5;
  }

  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  v13 = *(v0 + 64);
  v14 = *(v0 + 72);
  v15 = *(v0 + 24);
  v16 = *(v14 + 32);
  *(v0 + 136) = v16;
  *(v0 + 144) = (v14 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v16(v11, v12, v13);
  v19 = (v15 + *v15);
  v17 = swift_task_alloc();
  *(v0 + 152) = v17;
  *v17 = v0;
  v17[1] = sub_1DF5A8A7C;
  v18 = *(v0 + 80);

  return v19(v18);
}

uint64_t sub_1DF5A8A7C(char a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = sub_1DF5CB184;
  }

  else
  {
    *(v4 + 168) = a1 & 1;
    v5 = sub_1DF5A87F4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t *FM.XPCSession.init(connection:)(void *a1)
{
  v3 = *v1;
  v4 = sub_1DF6325AC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v1 + qword_1ED8E5D70) = 0;
  v8 = a1;
  v9 = [v8 serviceName];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1DF63298C();
    v13 = v12;

    if ([v8 exportedObject])
    {
      sub_1DF63339C();
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v25[0] = v23;
    v25[1] = v24;
    if (*(&v24 + 1))
    {
      sub_1DF5A8EB8();
      if (swift_dynamicCast())
      {
        v16 = v22[1];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      sub_1DF60EC44(v25);
      v16 = 0;
    }

    v17 = [v8 exportedInterface];
    v18 = [v8 remoteObjectInterface];

    sub_1DF63259C();
    (*(v5 + 32))(v1 + qword_1ED8E6A28, v7, v4);
    v19 = v1 + qword_1ED8E6A20;
    *v19 = v11;
    *(v19 + 1) = v13;
    *(v19 + 2) = 0;
    *(v19 + 3) = v16;
    *(v19 + 4) = v17;
    *(v19 + 5) = v18;
    *(v19 + 3) = 0u;
    *(v19 + 4) = 0u;
    *(v19 + 5) = 0u;
    *(v19 + 12) = 0;
    v20 = *(v1 + qword_1ED8E5D70);
    *(v1 + qword_1ED8E5D70) = v8;
  }

  else
  {

    type metadata accessor for FM.XPCSession(0, *(v3 + 80), v14, v15);
    swift_defaultActor_destroy();

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

unint64_t sub_1DF5A8EB8()
{
  result = qword_1ED8E49E0;
  if (!qword_1ED8E49E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8E49E0);
  }

  return result;
}

uint64_t dispatch thunk of XPCAcceptedClient.init(session:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DF5A902C;

  return v9(a1, a2, a3);
}

uint64_t sub_1DF5A902C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t XPCAcceptedClient.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(a2, a3);
  FM.XPCSession.hash(into:)(a1);
}

uint64_t FM.XPCSession.hash(into:)(uint64_t a1)
{
  sub_1DF6325AC();
  sub_1DF5A924C(&qword_1ED8E6150, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  return sub_1DF6328CC();
}

uint64_t sub_1DF5A9208(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DF6325AC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF5A924C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static XPCAcceptedClient.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for FM.XPCSession(0, AssociatedTypeWitness, v7, v8);
  v9 = *(a4 + 24);
  v10 = v9(a3, a4);
  v11 = v9(a3, a4);
  v12 = static FM.XPCSession.== infix(_:_:)(v10, v11);

  return v12 & 1;
}

uint64_t WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1DF6325AC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  type metadata accessor for WorkItemQueue.WorkItem(0);
  swift_allocObject();
  v16 = sub_1DF60D5E8(0, v14, &unk_1DF63B4E8, v15, a4, a5);

  (*(v11 + 8))(a1, v10);
  return v16;
}

{
  v10 = sub_1DF6325AC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  type metadata accessor for WorkItemQueue.WorkItem(0);
  swift_allocObject();
  v15 = sub_1DF60D5E8(0, v14, a2, a3, a4, a5);

  (*(v11 + 8))(a1, v10);
  return v15;
}

uint64_t sub_1DF5A9508()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *sub_1DF5A9544()
{
  if (qword_1ED8E6080 != -1)
  {
    swift_once();
  }

  result = sub_1DF633C5C();
  if (v3)
  {
    v2 = *(v0 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_visitedQueueIdentifiers);
    MEMORY[0x1EEE9AC00](result);
    os_unfair_lock_lock((v2 + 24));
    sub_1DF5B387C((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }

  return result;
}

uint64_t sub_1DF5A9620(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AD0, &qword_1DF638F40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AC0, &qword_1DF638F30);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = *(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_continuation);
  v13 = *(*v12 + *MEMORY[0x1E69E6B68] + 16);
  v14 = (*(*v12 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v12 + v14));
  sub_1DF59CC98(v12 + v13, v7, &qword_1ECE42AD0, &qword_1DF638F40);
  os_unfair_lock_unlock((v12 + v14));
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v15 = v31;
    sub_1DF59CB50(v7, &qword_1ECE42AD0, &qword_1DF638F40);
    if (qword_1ED8E5E40 != -1)
    {
      swift_once();
    }

    v16 = sub_1DF6326AC();
    __swift_project_value_buffer(v16, qword_1ED8E6A30);

    v17 = sub_1DF63268C();
    v18 = sub_1DF63317C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 136446466;
      v34 = 0xE100000000000000;
      v35 = v20;
      v32 = *v2;
      v33 = 91;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v21 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v21);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v22 = sub_1DF59EEC8(v33, v34, &v35);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2082;
      sub_1DF6325AC();
      sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v23 = sub_1DF6338DC();
      v25 = sub_1DF59EEC8(v23, v24, &v35);

      *(v19 + 14) = v25;
      _os_log_impl(&dword_1DF59A000, v17, v18, "%{public}s Attempted to enqueue workItem %{public}s after invalidation!", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v20, -1, -1);
      MEMORY[0x1E12D9D80](v19, -1, -1);
    }

    v26 = sub_1DF632E9C();
    v27 = v30;
    (*(*(v26 - 8) + 56))(v30, 1, 1, v26);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v15;
    v28[5] = v2;

    sub_1DF5CE7F8(0, 0, v27, &unk_1DF638F80, v28);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_1DF5A9F2C(v31, v11);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t dispatch thunk of WorkItemQueue.enqueue(_:)()
{
  return (*(*v0 + 320))();
}

{
  return (*(*v0 + 328))();
}

{
  return (*(*v0 + 336))();
}

uint64_t sub_1DF5A9BB0(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1DF59D2C8;

  return v5();
}

void OnceCheckedContinuation.resume(returning:)(uint64_t a1)
{
  v16 = a1;
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v15 - v4;
  v6 = sub_1DF632E4C();
  v7 = sub_1DF63327C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  v11 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v15 - v13;
  sub_1DF5AB778();
  if ((*(v11 + 48))(v10, 1, v6) == 1)
  {
    (*(v8 + 8))(v10, v7);
    sub_1DF5FDAC4();
  }

  else
  {
    (*(v11 + 32))(v14, v10, v6);
    (*(v3 + 16))(v5, v16, v2);
    sub_1DF632E3C();
    (*(v11 + 8))(v14, v6);
  }
}

uint64_t sub_1DF5A9F2C(uint64_t a1, uint64_t a2)
{
  v97 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B20, &qword_1DF6392F0);
  v95 = *(v4 - 8);
  v96 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v93 = v89 - v5;
  v94 = sub_1DF6335AC();
  v92 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v7 = v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DF6325AC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v89 - v13;
  if (qword_1ED8E6080 != -1)
  {
    swift_once();
  }

  sub_1DF633C5C();
  v15 = v100;
  if (!v100)
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  v102 = v15;
  v16 = v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_id;
  (*(v9 + 16))(v11, v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_id, v8);
  sub_1DF5AB4C0(v14, v11);
  v17 = (*(v9 + 8))(v14, v8);
  v18 = *(a1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_visitedQueueIdentifiers);
  MEMORY[0x1EEE9AC00](v17);
  v89[-2] = v16;
  os_unfair_lock_lock((v18 + 24));
  sub_1DF5AC0F0((v18 + 16), &v100);
  v91 = v8;
  os_unfair_lock_unlock((v18 + 24));

  v20 = *(a1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_assocatedQueueIdentifier);
  MEMORY[0x1EEE9AC00](v19);
  v89[-2] = v16;
  v21 = MEMORY[0x1E69E6B68];
  v22 = *(*v20 + *MEMORY[0x1E69E6B68] + 16);
  v23 = (*(*v20 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v20 + v23));
  sub_1DF5AC89C(v20 + v22);
  os_unfair_lock_unlock((v20 + v23));
  v24 = *(a1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_cancellationBlock);
  MEMORY[0x1EEE9AC00](v25);
  v89[-2] = &unk_1DF639300;
  v89[-1] = a1;

  os_unfair_lock_lock((v24 + 32));
  sub_1DF5AC8B8((v24 + 16));
  v90 = 0;
  os_unfair_lock_unlock((v24 + 32));

  v26 = &unk_1ED8E5000;
  if (*(a1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_itemType) > 1u)
  {
    if (*(a1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_itemType) == 2)
    {
      if (qword_1ED8E5E40 != -1)
      {
        swift_once();
      }

      v38 = sub_1DF6326AC();
      __swift_project_value_buffer(v38, qword_1ED8E6A30);

      v28 = sub_1DF63268C();
      v29 = sub_1DF63315C();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 136446722;
        v99 = v31;
        v100 = 91;
        v101 = 0xE100000000000000;
        v98 = *v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
        v39 = sub_1DF632A3C();
        MEMORY[0x1E12D82E0](v39);

        MEMORY[0x1E12D82E0](32, 0xE100000000000000);
        MEMORY[0x1E12D82E0](*(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
        MEMORY[0x1E12D82E0](93, 0xE100000000000000);
        v40 = sub_1DF59EEC8(v100, v101, &v99);

        *(v30 + 4) = v40;
        *(v30 + 12) = 2080;
        *(v30 + 14) = sub_1DF59EEC8(0xD000000000000018, 0x80000001DF634DC0, &v99);
        *(v30 + 22) = 2082;
        sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v41 = sub_1DF6338DC();
        v43 = sub_1DF59EEC8(v41, v42, &v99);

        *(v30 + 24) = v43;
        v26 = &unk_1ED8E5000;
        v37 = "%{public}s %s will insert item %{public}s [FLUSH BARRIER]";
        goto LABEL_24;
      }
    }

    else
    {
      if (qword_1ED8E5E40 != -1)
      {
        swift_once();
      }

      v50 = sub_1DF6326AC();
      __swift_project_value_buffer(v50, qword_1ED8E6A30);

      v28 = sub_1DF63268C();
      v29 = sub_1DF63315C();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 136446722;
        v99 = v31;
        v100 = 91;
        v101 = 0xE100000000000000;
        v98 = *v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
        v51 = sub_1DF632A3C();
        MEMORY[0x1E12D82E0](v51);

        MEMORY[0x1E12D82E0](32, 0xE100000000000000);
        MEMORY[0x1E12D82E0](*(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
        MEMORY[0x1E12D82E0](93, 0xE100000000000000);
        v52 = sub_1DF59EEC8(v100, v101, &v99);

        *(v30 + 4) = v52;
        *(v30 + 12) = 2080;
        *(v30 + 14) = sub_1DF59EEC8(0xD000000000000018, 0x80000001DF634DC0, &v99);
        *(v30 + 22) = 2082;
        sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v53 = sub_1DF6338DC();
        v55 = sub_1DF59EEC8(v53, v54, &v99);

        *(v30 + 24) = v55;
        v26 = &unk_1ED8E5000;
        v37 = "%{public}s %s will insert item %{public}s [TERMINATOR]";
        goto LABEL_24;
      }
    }
  }

  else if (*(a1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_itemType))
  {
    if (qword_1ED8E5E40 != -1)
    {
      swift_once();
    }

    v44 = sub_1DF6326AC();
    __swift_project_value_buffer(v44, qword_1ED8E6A30);

    v28 = sub_1DF63268C();
    v29 = sub_1DF63315C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 136446722;
      v99 = v31;
      v100 = 91;
      v101 = 0xE100000000000000;
      v98 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v45 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v45);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v46 = sub_1DF59EEC8(v100, v101, &v99);

      *(v30 + 4) = v46;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_1DF59EEC8(0xD000000000000018, 0x80000001DF634DC0, &v99);
      *(v30 + 22) = 2082;
      sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v47 = sub_1DF6338DC();
      v49 = sub_1DF59EEC8(v47, v48, &v99);

      *(v30 + 24) = v49;
      v26 = &unk_1ED8E5000;
      v37 = "%{public}s %s will insert item %{public}s [BARRIER]";
      goto LABEL_24;
    }
  }

  else
  {
    if (qword_1ED8E5E40 != -1)
    {
      swift_once();
    }

    v27 = sub_1DF6326AC();
    __swift_project_value_buffer(v27, qword_1ED8E6A30);

    v28 = sub_1DF63268C();
    v29 = sub_1DF63315C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 136446722;
      v99 = v31;
      v100 = 91;
      v101 = 0xE100000000000000;
      v98 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v32 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v32);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v33 = sub_1DF59EEC8(v100, v101, &v99);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_1DF59EEC8(0xD000000000000018, 0x80000001DF634DC0, &v99);
      *(v30 + 22) = 2082;
      sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v34 = sub_1DF6338DC();
      v36 = sub_1DF59EEC8(v34, v35, &v99);

      *(v30 + 24) = v36;
      v26 = &unk_1ED8E5000;
      v37 = "%{public}s %s will insert item %{public}s";
LABEL_24:
      _os_log_impl(&dword_1DF59A000, v28, v29, v37, v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v31, -1, -1);
      MEMORY[0x1E12D9D80](v30, -1, -1);
    }
  }

  v56 = sub_1DF63357C();
  v57 = *(a1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_enqueued);
  MEMORY[0x1EEE9AC00](v56);
  v91 = v7;
  v89[-2] = v7;
  v58 = *(*v57 + *v21 + 16);
  v59 = (*(*v57 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v57 + v59));
  v60 = v57 + v58;
  v61 = v90;
  sub_1DF5DA024(v60);
  os_unfair_lock_unlock((v57 + v59));
  v62 = *(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_queueDepth);
  os_unfair_lock_lock(v62 + 8);
  sub_1DF5DA040(&v62[4], &v100);
  os_unfair_lock_unlock(v62 + 8);
  v63 = v100;
  v64 = v101;
  v65 = v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions;
  if (*(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions) == 1)
  {
    if (v26[456] != -1)
    {
      swift_once();
    }

    v66 = sub_1DF6326AC();
    __swift_project_value_buffer(v66, qword_1ED8E6A30);

    v67 = sub_1DF63268C();
    v68 = sub_1DF63315C();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v90 = v64;
      v70 = v69;
      v71 = swift_slowAlloc();
      v89[1] = v61;
      v72 = v71;
      *v70 = 136446466;
      v99 = v71;
      v100 = 91;
      v101 = 0xE100000000000000;
      v98 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v73 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v73);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v74 = sub_1DF59EEC8(v100, v101, &v99);

      *(v70 + 4) = v74;
      v26 = &unk_1ED8E5000;
      *(v70 + 12) = 2048;
      *(v70 + 14) = v90;
      _os_log_impl(&dword_1DF59A000, v67, v68, "%{public}s enqueue queueDepth: %ld", v70, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v72);
      MEMORY[0x1E12D9D80](v72, -1, -1);
      v75 = v70;
      v64 = v90;
      MEMORY[0x1E12D9D80](v75, -1, -1);
    }
  }

  if ((v63 & 1) == 0 && *(v65 + 1) < v64)
  {
    if (v26[456] != -1)
    {
      swift_once();
    }

    v76 = sub_1DF6326AC();
    __swift_project_value_buffer(v76, qword_1ED8E6A30);

    v77 = sub_1DF63268C();
    v78 = sub_1DF63316C();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = v64;
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v80 = 136446466;
      v99 = v81;
      v100 = 91;
      v101 = 0xE100000000000000;
      v98 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v82 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v82);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v2 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v83 = sub_1DF59EEC8(v100, v101, &v99);

      *(v80 + 4) = v83;
      *(v80 + 12) = 2048;
      *(v80 + 14) = v79;
      _os_log_impl(&dword_1DF59A000, v77, v78, "%{public}s Excessive enqueue queueDepth: %ld", v80, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v81);
      MEMORY[0x1E12D9D80](v81, -1, -1);
      MEMORY[0x1E12D9D80](v80, -1, -1);
    }
  }

  v84 = backtrace(maxiumFrameCount:)(0x20uLL);
  v85 = *(a1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_callStack);
  MEMORY[0x1EEE9AC00](v84);
  v89[-2] = v86;
  os_unfair_lock_lock((v85 + 24));
  sub_1DF5B387C((v85 + 16));
  os_unfair_lock_unlock((v85 + 24));

  v100 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AC0, &qword_1DF638F30);
  v87 = v93;
  sub_1DF632EEC();
  (*(v95 + 8))(v87, v96);
  return (*(v92 + 8))(v91, v94);
}

uint64_t sub_1DF5AB4C0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1DF6325AC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1DF5A9208(&qword_1ED8E6150, MEMORY[0x1E69695B8]);
  v33 = a2;
  v11 = sub_1DF6328BC();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1DF5A9208(&qword_1ED8E4BF0, MEMORY[0x1E69695C8]);
      v21 = sub_1DF63292C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1DF5AB83C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

void sub_1DF5AB778()
{
  v1 = *v0;
  v2 = v0[2];
  v3[2] = *(*v0 + 80);
  v3[3] = *(v1 + 88);
  v3[4] = *(v1 + 96);
  sub_1DF632E4C();
  sub_1DF63327C();
  sub_1DF5A61A8(sub_1DF5ABAB8, v3, v2);
}

uint64_t sub_1DF5AB83C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1DF6325AC();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DF5FBF10(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1DF5FC638();
      goto LABEL_12;
    }

    sub_1DF5ABAD8(v11 + 1);
  }

  v13 = *v3;
  sub_1DF5A9208(&qword_1ED8E6150, MEMORY[0x1E69695B8]);
  v14 = sub_1DF6328BC();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1DF5A9208(&qword_1ED8E4BF0, MEMORY[0x1E69695C8]);
      v22 = sub_1DF63292C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1DF6339DC();
  __break(1u);
  return result;
}

uint64_t sub_1DF5ABAD8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1DF6325AC();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43098, &unk_1DF63AF30);
  v7 = sub_1DF63341C();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1DF5A9208(&qword_1ED8E6150, MEMORY[0x1E69695B8]);
      result = sub_1DF6328BC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1DF5ABDE0@<X0>(uint64_t a1@<X0>, uint64_t a5@<X8>)
{
  v7 = sub_1DF632E4C();
  v8 = sub_1DF63327C();
  (*(*(v8 - 8) + 32))(a5, a1, v8);
  return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
}

uint64_t sub_1DF5ABEB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1DF6325AC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  if (sub_1DF5AC248(a2, *a1))
  {
    type metadata accessor for WorkItemQueue.Error(0);
    sub_1DF60E5CC(&qword_1ECE42500, type metadata accessor for WorkItemQueue.Error, &protocol conformance descriptor for WorkItemQueue.Error);
    swift_allocError();
    v14 = v13;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B00, &qword_1DF6391B0);
    (*(*(v15 - 8) + 56))(v14, 1, 2, v15);
    return swift_willThrow();
  }

  else
  {
    (*(v7 + 16))(v9, a2, v6);
    sub_1DF5AB4C0(v12, v9);
    (*(v7 + 8))(v12, v6);
    *a3 = *a1;
  }
}

uint64_t OnceCheckedContinuation.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DF5AC10C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF5D32F0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DF5AC248(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DF6325AC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1DF5A9208(&qword_1ED8E6150, MEMORY[0x1E69695B8]), v7 = sub_1DF6328BC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
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
      sub_1DF5A9208(&qword_1ED8E4BF0, MEMORY[0x1E69695C8]);
      v15 = sub_1DF63292C();
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

uint64_t sub_1DF5AC438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AA8, &qword_1DF638F18);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v15 - v5;
  v7 = sub_1DF6325AC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF59CC98(a1, v6, &qword_1ECE42AA8, &qword_1DF638F18);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1DF59CB50(a1, &qword_1ECE42AA8, &qword_1DF638F18);
    sub_1DF59CB50(v6, &qword_1ECE42AA8, &qword_1DF638F18);
    (*(v8 + 16))(a1, a2, v7);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    type metadata accessor for WorkItemQueue.Error(0);
    sub_1DF60E5CC(&qword_1ECE42500, type metadata accessor for WorkItemQueue.Error, &protocol conformance descriptor for WorkItemQueue.Error);
    swift_allocError();
    v13 = v12;
    (*(v8 + 16))(v12, v10, v7);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B00, &qword_1DF6391B0);
    (*(*(v14 - 8) + 56))(v13, 0, 2, v14);
    swift_willThrow();
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_1DF5AC70C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_1DF5D80A8;
  }

  else
  {
    v4 = sub_1DF5AC838;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DF5AC838()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF5AC8D4()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_1DF5D795C;
  }

  else
  {
    v4 = sub_1DF5ACA94;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DF5ACA00(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    sub_1DF5A83BC(v6, a1[1]);
  }

  if (a2)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    v8 = &unk_1DF63B748;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a1 = v8;
  a1[1] = v7;
  return sub_1DF5A32C0(a2, a3);
}

uint64_t sub_1DF5ACA94()
{
  if (*(v0 + 168) == 1)
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 120);
    v4 = *(v0 + 96);
    v5 = swift_task_alloc();
    *(v0 + 128) = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B40, &qword_1DF6393A0);
    *v5 = v0;
    v5[1] = sub_1DF5AC8D4;

    return MEMORY[0x1EEE6DAC8](v0 + 168, v4, v3, v6);
  }
}

uint64_t sub_1DF5ACBAC()
{
  v1 = *(*v0 + 368);

  return MEMORY[0x1EEE6DFA0](sub_1DF5ACCBC, v1, 0);
}

void sub_1DF5ACCBC()
{
  v22 = v0;
  v1 = v0[37];
  v0[64] = v1;
  if (v1)
  {
    v2 = v0[62];
    v3 = *(v0[46] + v0[57]);
    os_unfair_lock_lock(v3 + 8);
    sub_1DF5DA150(&v3[4], v0 + 38);
    if (v2)
    {

      os_unfair_lock_unlock(v3 + 8);
    }

    else
    {
      v5 = v0[58];
      v6 = v0[46];
      os_unfair_lock_unlock(v3 + 8);
      if (*(v6 + v5))
      {
        v7 = v0[38];
        if (qword_1ED8E5E40 != -1)
        {
          swift_once();
        }

        v8 = sub_1DF6326AC();
        __swift_project_value_buffer(v8, qword_1ED8E6A30);

        v9 = sub_1DF63268C();
        v10 = sub_1DF63315C();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = v0[46];
          v12 = (v11 + v0[61]);
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v21 = v14;
          *v13 = 136446466;
          v0[35] = 91;
          v0[36] = 0xE100000000000000;
          v0[44] = *v11;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
          v15 = sub_1DF632A3C();
          MEMORY[0x1E12D82E0](v15);

          MEMORY[0x1E12D82E0](32, 0xE100000000000000);
          MEMORY[0x1E12D82E0](*v12, v12[1]);
          MEMORY[0x1E12D82E0](93, 0xE100000000000000);
          v16 = sub_1DF59EEC8(v0[35], v0[36], &v21);

          *(v13 + 4) = v16;
          *(v13 + 12) = 2048;
          *(v13 + 14) = v7;
          _os_log_impl(&dword_1DF59A000, v9, v10, "%{public}s dequeue queueDepth: %ld", v13, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v14);
          MEMORY[0x1E12D9D80](v14, -1, -1);
          MEMORY[0x1E12D9D80](v13, -1, -1);
        }
      }

      v17 = v0[52];
      sub_1DF63357C();
      v18 = *(v1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_started);
      *(swift_task_alloc() + 16) = v17;
      v19 = *(*v18 + *MEMORY[0x1E69E6B68] + 16);
      v20 = (*(*v18 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v18 + v20));
      sub_1DF5DA290(v18 + v19);
      v0[65] = 0;
      os_unfair_lock_unlock((v18 + v20));

      MEMORY[0x1EEE6DFA0](sub_1DF5AD210, v1, 0);
    }
  }

  else
  {
    (*(v0[54] + 8))(v0[55], v0[53]);

    v4 = v0[1];

    v4();
  }
}

void sub_1DF5AD0D0()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 80);

    MEMORY[0x1EEE6DFA0](sub_1DF5AD2A8, v3, 0);
  }
}

uint64_t sub_1DF5AD210()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 368);
  v3 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_isCancelled;
  swift_beginAccess();
  *(v0 + 608) = *(v1 + v3);

  return MEMORY[0x1EEE6DFA0](sub_1DF5AD2BC, v2, 0);
}

uint64_t sub_1DF5AD2BC()
{
  v116 = v0;
  if (*(v0 + 608))
  {
    if (qword_1ED8E5E40 != -1)
    {
      swift_once();
    }

    v1 = sub_1DF6326AC();
    __swift_project_value_buffer(v1, qword_1ED8E6A30);

    v2 = sub_1DF63268C();
    v3 = sub_1DF63318C();

    if (os_log_type_enabled(v2, v3))
    {
      v105 = *(v0 + 512);
      v5 = *(v0 + 384);
      v4 = *(v0 + 392);
      v6 = *(v0 + 368);
      v7 = *(v0 + 376);
      v8 = (v6 + *(v0 + 488));
      v9 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v114 = v109;
      *v9 = 136446466;
      *(v0 + 264) = 91;
      *(v0 + 272) = 0xE100000000000000;
      *(v0 + 344) = *v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v10 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v10);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*v8, v8[1]);
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v11 = sub_1DF59EEC8(*(v0 + 264), *(v0 + 272), &v114);

      *(v9 + 4) = v11;
      *(v9 + 12) = 2082;
      (*(v5 + 16))(v4, v105 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_id, v7);
      sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v12 = sub_1DF6338DC();
      v14 = v13;
      (*(v5 + 8))(v4, v7);
      v15 = sub_1DF59EEC8(v12, v14, &v114);

      *(v9 + 14) = v15;
      _os_log_impl(&dword_1DF59A000, v2, v3, "%{public}s workItem %{public}s is already cancelled -- skipping", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v109, -1, -1);
      MEMORY[0x1E12D9D80](v9, -1, -1);
    }

    v16 = *(v0 + 368);
    v17 = v16 + *(v0 + 464);
    v18 = (v16 + *(v0 + 488));
    sub_1DF632E5C();
    sub_1DF59CD00(&qword_1ED8E56F0, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v19 = swift_allocError();
    *(v0 + 592) = v19;
    sub_1DF6327FC();
    v20 = *v18;
    v21 = v18[1];
    v22 = *(v17 + 40);
    v23 = *(v17 + 8);
    v24 = *(v17 + 24);
    *(v0 + 160) = *v17;
    *(v0 + 168) = v23;
    *(v0 + 184) = v24;
    *(v0 + 200) = v22;
    v25 = swift_task_alloc();
    *(v0 + 600) = v25;
    *v25 = v0;
    v25[1] = sub_1DF5D74C8;
    v26 = v19;
    v27 = 1;
    v28 = v20;
    v29 = v21;
    v30 = v0 + 160;
    goto LABEL_31;
  }

  v31 = *(v0 + 512);
  *(*(v0 + 368) + *(v0 + 472)) = v31;

  if (*(v31 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_itemType) > 1u)
  {
    if (*(v31 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_itemType) == 2)
    {
      if (qword_1ED8E5E40 != -1)
      {
        swift_once();
      }

      v33 = sub_1DF6326AC();
      __swift_project_value_buffer(v33, qword_1ED8E6A30);

      v34 = sub_1DF63268C();
      v35 = sub_1DF63315C();

      if (os_log_type_enabled(v34, v35))
      {
        v106 = *(v0 + 512);
        v37 = *(v0 + 384);
        v36 = *(v0 + 392);
        v38 = *(v0 + 368);
        v39 = *(v0 + 376);
        v40 = (v38 + *(v0 + 488));
        v41 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v114 = v110;
        *v41 = 136446466;
        *(v0 + 232) = 91;
        *(v0 + 240) = 0xE100000000000000;
        *(v0 + 320) = *v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
        v42 = sub_1DF632A3C();
        MEMORY[0x1E12D82E0](v42);

        MEMORY[0x1E12D82E0](32, 0xE100000000000000);
        MEMORY[0x1E12D82E0](*v40, v40[1]);
        MEMORY[0x1E12D82E0](93, 0xE100000000000000);
        v43 = sub_1DF59EEC8(*(v0 + 232), *(v0 + 240), &v114);

        *(v41 + 4) = v43;
        *(v41 + 12) = 2082;
        (*(v37 + 16))(v36, v106 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_id, v39);
        sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v44 = sub_1DF6338DC();
        v46 = v45;
        (*(v37 + 8))(v36, v39);
        v47 = sub_1DF59EEC8(v44, v46, &v114);

        *(v41 + 14) = v47;
        _os_log_impl(&dword_1DF59A000, v34, v35, "%{public}s Consuming flush barrier %{public}s", v41, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12D9D80](v110, -1, -1);
        MEMORY[0x1E12D9D80](v41, -1, -1);
      }

      v48 = *(v0 + 368);
      v49 = v48 + *(v0 + 464);
      v50 = (v48 + *(v0 + 488));
      *(v48 + *(v0 + 480)) = 0;
      v51 = *v50;
      v52 = v50[1];
      v53 = *(v49 + 40);
      v54 = *(v49 + 8);
      v55 = *(v49 + 24);
      *(v0 + 64) = *v49;
      *(v0 + 72) = v54;
      *(v0 + 88) = v55;
      *(v0 + 104) = v53;
      v56 = swift_task_alloc();
      *(v0 + 576) = v56;
      *v56 = v0;
      v56[1] = sub_1DF5D71D0;
      v26 = 0;
      v27 = 0;
      v28 = v51;
      v29 = v52;
      v30 = v0 + 64;
      goto LABEL_31;
    }

    if (qword_1ED8E5E40 != -1)
    {
      swift_once();
    }

    v83 = sub_1DF6326AC();
    __swift_project_value_buffer(v83, qword_1ED8E6A30);

    v84 = sub_1DF63268C();
    v85 = sub_1DF63315C();

    if (os_log_type_enabled(v84, v85))
    {
      v108 = *(v0 + 512);
      v87 = *(v0 + 384);
      v86 = *(v0 + 392);
      v88 = *(v0 + 368);
      v89 = *(v0 + 376);
      v90 = (v88 + *(v0 + 488));
      v91 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v113 = v112;
      *v91 = 136446466;
      v114 = 91;
      v115 = 0xE100000000000000;
      *(v0 + 312) = *v88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v92 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v92);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*v90, v90[1]);
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v93 = sub_1DF59EEC8(v114, v115, &v113);

      *(v91 + 4) = v93;
      *(v91 + 12) = 2082;
      (*(v87 + 16))(v86, v108 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_id, v89);
      sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v94 = sub_1DF6338DC();
      v96 = v95;
      (*(v87 + 8))(v86, v89);
      v97 = sub_1DF59EEC8(v94, v96, &v113);

      *(v91 + 14) = v97;
      _os_log_impl(&dword_1DF59A000, v84, v85, "%{public}s Consuming terminator %{public}s", v91, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v112, -1, -1);
      MEMORY[0x1E12D9D80](v91, -1, -1);
    }

    v98 = *(v0 + 368);
    v99 = v98 + *(v0 + 464);
    v100 = (v98 + *(v0 + 488));
    v76 = *v100;
    v75 = v100[1];
    v101 = *(v99 + 40);
    v102 = *(v99 + 8);
    v103 = *(v99 + 24);
    *(v0 + 16) = *v99;
    v80 = v0 + 16;
    *(v0 + 24) = v102;
    *(v0 + 40) = v103;
    *(v0 + 56) = v101;
    v81 = swift_task_alloc();
    *(v0 + 584) = v81;
    *v81 = v0;
    v82 = sub_1DF5D72E0;
    goto LABEL_30;
  }

  if (*(v31 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_itemType))
  {
    if (qword_1ED8E5E40 != -1)
    {
      swift_once();
    }

    v57 = sub_1DF6326AC();
    __swift_project_value_buffer(v57, qword_1ED8E6A30);

    v58 = sub_1DF63268C();
    v59 = sub_1DF63315C();

    if (os_log_type_enabled(v58, v59))
    {
      v107 = *(v0 + 512);
      v61 = *(v0 + 384);
      v60 = *(v0 + 392);
      v62 = *(v0 + 368);
      v63 = *(v0 + 376);
      v64 = (v62 + *(v0 + 488));
      v65 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v114 = v111;
      *v65 = 136446466;
      *(v0 + 248) = 91;
      *(v0 + 256) = 0xE100000000000000;
      *(v0 + 328) = *v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v66 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v66);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*v64, v64[1]);
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v67 = sub_1DF59EEC8(*(v0 + 248), *(v0 + 256), &v114);

      *(v65 + 4) = v67;
      *(v65 + 12) = 2082;
      (*(v61 + 16))(v60, v107 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_id, v63);
      sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v68 = sub_1DF6338DC();
      v70 = v69;
      (*(v61 + 8))(v60, v63);
      v71 = sub_1DF59EEC8(v68, v70, &v114);

      *(v65 + 14) = v71;
      _os_log_impl(&dword_1DF59A000, v58, v59, "%{public}s Consuming barrier %{public}s", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v111, -1, -1);
      MEMORY[0x1E12D9D80](v65, -1, -1);
    }

    v72 = *(v0 + 368);
    v73 = v72 + *(v0 + 464);
    v74 = (v72 + *(v0 + 488));
    v76 = *v74;
    v75 = v74[1];
    v77 = *(v73 + 40);
    v78 = *(v73 + 8);
    v79 = *(v73 + 24);
    *(v0 + 112) = *v73;
    v80 = v0 + 112;
    *(v0 + 120) = v78;
    *(v0 + 136) = v79;
    *(v0 + 152) = v77;
    v81 = swift_task_alloc();
    *(v0 + 568) = v81;
    *v81 = v0;
    v82 = sub_1DF5D70C0;
LABEL_30:
    v81[1] = v82;
    v26 = 0;
    v27 = 0;
    v28 = v76;
    v29 = v75;
    v30 = v80;
LABEL_31:

    return sub_1DF6070F4(v26, v27, v28, v29, v30);
  }

  if (qword_1ED8E6080 != -1)
  {
    swift_once();
  }

  *(v0 + 528) = qword_1ED8E6A80;
  v32 = *(v0 + 512);

  return MEMORY[0x1EEE6DFA0](sub_1DF5AE9FC, v32, 0);
}

void sub_1DF5AE15C()
{
  v2 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 368);

    MEMORY[0x1EEE6DFA0](sub_1DF5AE7DC, v3, 0);
  }
}

uint64_t WorkItemQueue.WorkItem.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AA8, &qword_1DF638F18);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_1DF6325AC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v10 = *(v6 + 16);
  v32 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_id;
  v34 = &v30 - v11;
  v30 = v10;
  (v10)(v9);
  v33 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_assocatedQueueIdentifier;
  v12 = *(v0 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_assocatedQueueIdentifier);
  v13 = *(*v12 + *MEMORY[0x1E69E6B68] + 16);
  v14 = (*(*v12 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v12 + v14));
  sub_1DF59CC98(v12 + v13, v4, &qword_1ECE42AA8, &qword_1DF638F18);
  v15 = (*(v6 + 48))(v4, 1, v5);
  sub_1DF59CB50(v4, &qword_1ECE42AA8, &qword_1DF638F18);
  os_unfair_lock_unlock((v12 + v14));

  if ((*(v1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_completionAlreadyCalled) & 1) != 0 || v15 == 1)
  {
    v25 = *(v6 + 8);
  }

  else
  {
    if (qword_1ECE42508 != -1)
    {
      swift_once();
    }

    v16 = sub_1DF6326AC();
    __swift_project_value_buffer(v16, qword_1ECE4BD58);
    v17 = v31;
    v18 = v34;
    v30(v31, v34, v5);
    v19 = sub_1DF63268C();
    v20 = sub_1DF63317C();
    if (!os_log_type_enabled(v19, v20))
    {

      v25 = *(v6 + 8);
      v25(v17, v5);
      v28 = v18;
      goto LABEL_10;
    }

    v21 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v35 = v30;
    *v21 = 136446210;
    sub_1DF60E5CC(&unk_1ED8E4A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v22 = sub_1DF6338DC();
    v24 = v23;
    v25 = *(v6 + 8);
    v25(v17, v5);
    v26 = sub_1DF59EEC8(v22, v24, &v35);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_1DF59A000, v19, v20, "completion block never called for WorkItem: %{public}s!", v21, 0xCu);
    v27 = v30;
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1E12D9D80](v27, -1, -1);
    MEMORY[0x1E12D9D80](v21, -1, -1);
  }

  v28 = v34;
LABEL_10:
  v25(v28, v5);
  v25((v1 + v32), v5);

  sub_1DF5A83BC(*(v1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_completion), *(v1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_completion + 8));

  sub_1DF59CB50(v1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_cancelContinuation, &qword_1ECE42B28, &qword_1DF639308);
  sub_1DF5AE9D8(*(v1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_storedResult), *(v1 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_storedResult + 8));

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1DF5AE7DC()
{
  v1 = v0[70];
  v3 = v0[51];
  v2 = v0[52];
  v4 = v0[50];

  (*(v3 + 8))(v2, v4);
  v0[62] = v1;
  v5 = v0[56];
  v6 = v0[46];
  v7 = swift_task_alloc();
  v0[63] = v7;
  *v7 = v0;
  v7[1] = sub_1DF5ACBAC;
  v8 = v0[53];

  return MEMORY[0x1EEE6D9C8](v0 + 37, v6, v5, v8);
}

uint64_t sub_1DF5AE8C4()
{
  v1 = v0[65];
  v3 = v0[51];
  v2 = v0[52];
  v4 = v0[50];

  (*(v3 + 8))(v2, v4);
  v0[62] = v1;
  v5 = v0[56];
  v6 = v0[46];
  v7 = swift_task_alloc();
  v0[63] = v7;
  *v7 = v0;
  v7[1] = sub_1DF5ACBAC;
  v8 = v0[53];

  return MEMORY[0x1EEE6D9C8](v0 + 37, v6, v5, v8);
}

uint64_t WorkItemQueue.WorkItem.__deallocating_deinit()
{
  WorkItemQueue.WorkItem.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

void sub_1DF5AE9D8(void *result, char a2)
{
  if (a2 != -1)
  {
    sub_1DF5AE9F0(result, a2 & 1);
  }
}

void sub_1DF5AE9F0(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_1DF5AE9FC()
{
  v1 = v0[46];
  v2 = *(v0[64] + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_visitedQueueIdentifiers);
  os_unfair_lock_lock((v2 + 24));
  v0[67] = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));

  return MEMORY[0x1EEE6DFA0](sub_1DF5AEA8C, v1, 0);
}

uint64_t sub_1DF5AEA8C()
{
  v1 = v0[64];
  v2 = v0[56];
  v3 = v0[46];
  v0[42] = v0[67];
  v4 = swift_task_alloc();
  v0[68] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[69] = v5;
  *v5 = v0;
  v5[1] = sub_1DF5AE15C;

  return MEMORY[0x1EEE6DE98](v5, v0 + 42, &unk_1DF639360, v4, v3, v2, 0xD00000000000001ELL, 0x80000001DF634DE0);
}

uint64_t sub_1DF5AEBA4()
{
  v1 = *(v0 + 80);
  if (*(v1 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_flushing) == 1)
  {
    if (qword_1ED8E5E40 != -1)
    {
      swift_once();
    }

    v2 = sub_1DF6326AC();
    __swift_project_value_buffer(v2, qword_1ED8E6A30);

    v3 = sub_1DF63268C();
    v4 = sub_1DF63318C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 80);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v27 = v7;
      *v6 = 136446466;
      *(v0 + 64) = *v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v8 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v8);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*(v5 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v5 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v9 = sub_1DF59EEC8(91, 0xE100000000000000, &v27);

      *(v6 + 4) = v9;
      *(v6 + 12) = 2082;
      sub_1DF6325AC();
      sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v10 = sub_1DF6338DC();
      v12 = sub_1DF59EEC8(v10, v11, &v27);

      *(v6 + 14) = v12;
      _os_log_impl(&dword_1DF59A000, v3, v4, "%{public}s flushing workItem %{public}s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v7, -1, -1);
      MEMORY[0x1E12D9D80](v6, -1, -1);
    }

    v13 = *(v0 + 80);
    sub_1DF632E5C();
    sub_1DF59CD00(&qword_1ED8E56F0, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v14 = swift_allocError();
    *(v0 + 96) = v14;
    sub_1DF6327FC();
    v15 = *(v13 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name);
    v16 = *(v13 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8);
    v17 = *(v13 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions + 40);
    v18 = *(v13 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions + 8);
    v19 = *(v13 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions + 24);
    *(v0 + 16) = *(v13 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions);
    *(v0 + 24) = v18;
    *(v0 + 40) = v19;
    *(v0 + 56) = v17;
    v20 = swift_task_alloc();
    *(v0 + 104) = v20;
    *v20 = v0;
    v20[1] = sub_1DF5D784C;

    return sub_1DF6070F4(v14, 1, v15, v16, v0 + 16);
  }

  else
  {
    v22 = *(v0 + 88);
    v23 = *(v0 + 72);
    sub_1DF59CD00(&qword_1ED8E5E20, type metadata accessor for WorkItemQueue, &protocol conformance descriptor for WorkItemQueue);
    v24 = swift_task_alloc();
    *(v0 + 112) = v24;
    v24[2] = v23;
    v24[3] = v1;
    v24[4] = v22;
    v25 = swift_task_alloc();
    *(v0 + 120) = v25;
    *v25 = v0;
    v25[1] = sub_1DF5AD0D0;

    return MEMORY[0x1EEE6DD58](v25);
  }
}

uint64_t sub_1DF5AF094(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DF5AEBA4, v1, 0);
}

uint64_t sub_1DF5AF0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5AF244, a4, 0);
}

uint64_t sub_1DF5AF180(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DF59D2C4;

  return sub_1DF5AF0DC(a1, a2, v6, v7, v8);
}

uint64_t sub_1DF5AF244()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = sub_1DF632E9C();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v3;
  v7[6] = v2;

  sub_1DF5AF4B0(v1, &unk_1DF639388, v7);
  sub_1DF59CB50(v1, &qword_1ECE42C10, &qword_1DF63B260);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v3;
  v8[5] = v4;
  v8[6] = v2;

  sub_1DF5AF4B0(v1, &unk_1DF639398, v8);
  sub_1DF59CB50(v1, &qword_1ECE42C10, &qword_1DF63B260);
  v9 = sub_1DF59CD00(&qword_1ED8E5E20, type metadata accessor for WorkItemQueue, &protocol conformance descriptor for WorkItemQueue);
  v0[15] = v9;
  v10 = v0[12];
  v11 = swift_task_alloc();
  v0[16] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B40, &qword_1DF6393A0);
  *v11 = v0;
  v11[1] = sub_1DF5AC8D4;

  return MEMORY[0x1EEE6DAC8](v0 + 21, v10, v9, v12);
}

uint64_t sub_1DF5AF4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  sub_1DF59CC98(a1, v18 - v8, &qword_1ECE42C10, &qword_1DF63B260);
  v10 = sub_1DF632E9C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1DF59CB50(v9, &qword_1ECE42C10, &qword_1DF63B260);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1DF632E1C();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1DF632E8C();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_1DF5AF6A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF59D2C4;

  return sub_1DF5AF768(a1, v4, v5, v6, v7);
}

uint64_t sub_1DF5AF768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v7 = sub_1DF632E5C();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5AF82C, a4, 0);
}

uint64_t sub_1DF5AF82C()
{
  v1 = *(v0 + 64);
  v2 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_isCancelled;
  swift_beginAccess();
  *(v0 + 120) = *(v1 + v2);

  return MEMORY[0x1EEE6DFA0](sub_1DF5AF8B8, 0, 0);
}

uint64_t sub_1DF5AF8B8()
{
  v18 = v0;
  if (*(v0 + 120) == 1)
  {
    if (qword_1ED8E5E40 != -1)
    {
      swift_once();
    }

    v1 = sub_1DF6326AC();
    __swift_project_value_buffer(v1, qword_1ED8E6A30);

    v2 = sub_1DF63268C();
    v3 = sub_1DF63315C();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 72);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 136446466;
      v15 = v6;
      v16 = 91;
      v17 = 0xE100000000000000;
      *(v0 + 56) = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v7 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v7);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*(v4 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v4 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v8 = sub_1DF59EEC8(v16, v17, &v15);

      *(v5 + 4) = v8;
      *(v5 + 12) = 2082;
      sub_1DF6325AC();
      sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v9 = sub_1DF6338DC();
      v11 = sub_1DF59EEC8(v9, v10, &v15);

      *(v5 + 14) = v11;
      _os_log_impl(&dword_1DF59A000, v2, v3, "%{public}s is cancelled: %{public}s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v6, -1, -1);
      MEMORY[0x1E12D9D80](v5, -1, -1);
    }

    sub_1DF59CD00(&qword_1ED8E56F0, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    sub_1DF6327FC();
    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 64);

    return MEMORY[0x1EEE6DFA0](sub_1DF5AFC4C, v14, 0);
  }
}

uint64_t sub_1DF5AFC4C()
{
  v1 = *(v0 + 64);
  v2 = sub_1DF59CD00(&qword_1ED8E6020, type metadata accessor for WorkItemQueue.WorkItem, &protocol conformance descriptor for WorkItemQueue.WorkItem);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_1DF5AC70C;
  v4 = *(v0 + 64);
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, v1, v2, 0xD000000000000019, 0x80000001DF634E00, sub_1DF5AFED8, v4, v5);
}

uint64_t sub_1DF5AFD64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B28, &qword_1DF639308);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(a2 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_cancellationBlockNeeded);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  if (v7 != 1)
  {
    return sub_1DF632E3C();
  }

  v9 = *(v8 - 8);
  v10 = v8;
  (*(v9 + 16))(v6, a1, v8);
  (*(v9 + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_cancelContinuation;
  swift_beginAccess();
  sub_1DF5AFEE0(v6, a2 + v11);
  return swift_endAccess();
}

uint64_t sub_1DF5AFEE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B28, &qword_1DF639308);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF5AFF50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF59D2C4;

  return sub_1DF5B0018(a1, v4, v5, v6, v7);
}

uint64_t sub_1DF5B0018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DF5B0038, 0, 0);
}

uint64_t sub_1DF5B0038()
{
  v19 = v0;
  if (qword_1ED8E5E40 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF6326AC();
  v0[16] = __swift_project_value_buffer(v1, qword_1ED8E6A30);

  v2 = sub_1DF63268C();
  v3 = sub_1DF63315C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[14];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136446466;
    v16 = v6;
    v17 = 91;
    v18 = 0xE100000000000000;
    v0[13] = *v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
    v7 = sub_1DF632A3C();
    MEMORY[0x1E12D82E0](v7);

    MEMORY[0x1E12D82E0](32, 0xE100000000000000);
    MEMORY[0x1E12D82E0](*(v4 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v4 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    v8 = sub_1DF59EEC8(v17, v18, &v16);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    sub_1DF6325AC();
    sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v9 = sub_1DF6338DC();
    v11 = sub_1DF59EEC8(v9, v10, &v16);

    *(v5 + 14) = v11;
    _os_log_impl(&dword_1DF59A000, v2, v3, "%{public}s Start processing workItem: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v6, -1, -1);
    MEMORY[0x1E12D9D80](v5, -1, -1);
  }

  v15 = (*(v0[15] + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_block) + **(v0[15] + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_block));
  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = sub_1DF5B0468;
  v13 = v0[15];

  return v15(v13);
}

uint64_t sub_1DF5B03C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF59D2C8;

  return sub_1DF5A9BB0(a1, v4);
}

uint64_t sub_1DF5B0468()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF5B0598, 0, 0);
  }
}

uint64_t sub_1DF5B0598()
{
  v16 = v0;

  v1 = sub_1DF63268C();
  v2 = sub_1DF63315C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[14];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136446466;
    v13 = v5;
    v14 = 91;
    v15 = 0xE100000000000000;
    v0[12] = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
    v6 = sub_1DF632A3C();
    MEMORY[0x1E12D82E0](v6);

    MEMORY[0x1E12D82E0](32, 0xE100000000000000);
    MEMORY[0x1E12D82E0](*(v3 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v3 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    v7 = sub_1DF59EEC8(v14, v15, &v13);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2082;
    sub_1DF6325AC();
    sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v8 = sub_1DF6338DC();
    v10 = sub_1DF59EEC8(v8, v9, &v13);

    *(v4 + 14) = v10;
    _os_log_impl(&dword_1DF59A000, v1, v2, "%{public}s Done processing workItem: %{public}s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v5, -1, -1);
    MEMORY[0x1E12D9D80](v4, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = sub_1DF5B0B98;

  return sub_1DF5B0868();
}

uint64_t sub_1DF5B0868()
{
  v1[8] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B10, &qword_1DF639268);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42B28, &qword_1DF639308);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF5B09D4, v0, 0);
}

void OSAllocatedUnfairLock.callAsFunction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DF5B09A4(a1, a2, a3, a4, a5, sub_1DF5B0CA8);
}

{
  sub_1DF5B09A4(a1, a2, a3, a4, a5, sub_1DF61B2B8);
}

void sub_1DF5B09A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v6[2] = a4;
  v6[3] = a5;
  v6[4] = a1;
  v6[5] = a2;
  sub_1DF5A61A8(a6, v6, a3);
}

uint64_t sub_1DF5B09D4()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  *(v4 + OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_cancellationBlockNeeded) = 0;
  v5 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_cancelContinuation;
  swift_beginAccess();
  sub_1DF59CC98(v4 + v5, v1, &qword_1ECE42B28, &qword_1DF639308);
  v6 = (*(v3 + 48))(v1, 1, v2);
  v7 = v0[13];
  if (v6)
  {
    sub_1DF59CB50(v0[13], &qword_1ECE42B28, &qword_1DF639308);
  }

  else
  {
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[9];
    (*(v9 + 16))(v8, v0[13], v10);
    sub_1DF59CB50(v7, &qword_1ECE42B28, &qword_1DF639308);
    sub_1DF632E3C();
    (*(v9 + 8))(v8, v10);
  }

  v11 = v0[12];
  (*(v0[10] + 56))(v11, 1, 1, v0[9]);
  swift_beginAccess();
  sub_1DF5AFEE0(v11, v4 + v5);
  swift_endAccess();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1DF5B0B98()
{
  v1 = *(*v0 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1DF5B0CD0, v1, 0);
}

uint64_t sub_1DF5B0CD0()
{
  v1 = *(v0 + 120);
  v2 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_isCancelled;
  swift_beginAccess();
  *(v0 + 160) = *(v1 + v2);

  return MEMORY[0x1EEE6DFA0](sub_1DF5B0D5C, 0, 0);
}

uint64_t sub_1DF5B0D5C()
{
  v24 = v0;
  if (*(v0 + 160) & 1) != 0 || (sub_1DF632F6C())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {

    v3 = sub_1DF63268C();
    v4 = sub_1DF63315C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 112);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 136446466;
      v21 = v7;
      v22 = 91;
      v23 = 0xE100000000000000;
      *(v0 + 88) = *v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42AE8, &unk_1DF638F68);
      v8 = sub_1DF632A3C();
      MEMORY[0x1E12D82E0](v8);

      MEMORY[0x1E12D82E0](32, 0xE100000000000000);
      MEMORY[0x1E12D82E0](*(v5 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name), *(v5 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8));
      MEMORY[0x1E12D82E0](93, 0xE100000000000000);
      v9 = sub_1DF59EEC8(v22, v23, &v21);

      *(v6 + 4) = v9;
      *(v6 + 12) = 2082;
      sub_1DF6325AC();
      sub_1DF59CD00(&unk_1ED8E4A10, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v10 = sub_1DF6338DC();
      v12 = sub_1DF59EEC8(v10, v11, &v21);

      *(v6 + 14) = v12;
      _os_log_impl(&dword_1DF59A000, v3, v4, "%{public}s Completing workItem (.success): %{public}s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v7, -1, -1);
      MEMORY[0x1E12D9D80](v6, -1, -1);
    }

    v13 = *(v0 + 112);
    v15 = *(v13 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name);
    v14 = *(v13 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_name + 8);
    v16 = v13 + OBJC_IVAR____TtC10FindMyBase13WorkItemQueue_warningOptions;
    v17 = *(v16 + 40);
    v18 = *(v16 + 8);
    v19 = *(v16 + 24);
    *(v0 + 16) = *v16;
    *(v0 + 24) = v18;
    *(v0 + 40) = v19;
    *(v0 + 56) = v17;
    v20 = swift_task_alloc();
    *(v0 + 152) = v20;
    *v20 = v0;
    v20[1] = sub_1DF5B1664;

    return sub_1DF6070F4(0, 0, v15, v14, v0 + 16);
  }
}

id sub_1DF5B10E8(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_1DF5B1124()
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A00, &qword_1DF638C30);
  v1 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v41 - v2;
  v60 = sub_1DF6325AC();
  v3 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v52 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43270, &qword_1DF63B758);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v11 = OBJC_IVAR____TtCC10FindMyBase13WorkItemQueue8WorkItem_waiterContinuations;
  swift_beginAccess();
  v43 = v0;
  v42 = v11;
  v12 = *(v0 + v11);
  v13 = *(v12 + 64);
  v45 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v44 = (v14 + 63) >> 6;
  v48 = v1 + 16;
  v49 = v3 + 16;
  v47 = v3 + 32;
  v17 = (v1 + 32);
  v53 = v3;
  v54 = v1;
  v56 = (v3 + 8);
  v57 = (v1 + 8);
  v55 = v12;

  v19 = 0;
  v50 = v10;
  v51 = v7;
  v46 = (v1 + 32);
  if (v16)
  {
    while (1)
    {
      v20 = v19;
LABEL_12:
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v24 = v23 | (v20 << 6);
      v25 = v55;
      v26 = v52;
      v27 = v53;
      v28 = v60;
      (*(v53 + 16))(v52, *(v55 + 48) + *(v53 + 72) * v24, v60);
      v29 = v54;
      v30 = *(v25 + 56) + *(v54 + 72) * v24;
      v31 = v58;
      v32 = v59;
      (*(v54 + 16))(v58, v30, v59);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43278, &qword_1DF63B760);
      v34 = *(v33 + 48);
      v35 = *(v27 + 32);
      v7 = v51;
      v35(v51, v26, v28);
      v36 = v32;
      v17 = v46;
      (*(v29 + 32))(&v7[v34], v31, v36);
      (*(*(v33 - 8) + 56))(v7, 0, 1, v33);
      v22 = v20;
      v10 = v50;
LABEL_13:
      sub_1DF5F2268(v7, v10, &qword_1ECE43270, &qword_1DF63B758);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43278, &qword_1DF63B760);
      if ((*(*(v37 - 8) + 48))(v10, 1, v37) == 1)
      {
        break;
      }

      v38 = v58;
      v39 = v59;
      (*v17)(v58, &v10[*(v37 + 48)], v59);
      sub_1DF632E3C();
      (*v57)(v38, v39);
      result = (*v56)(v10, v60);
      v19 = v22;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    *(v43 + v42) = MEMORY[0x1E69E7CC8];
  }

  else
  {
LABEL_5:
    if (v44 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    else
    {
      v21 = v44;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v44)
      {
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43278, &qword_1DF63B760);
        (*(*(v40 - 8) + 56))(v7, 1, 1, v40);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v45 + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DF5B1664()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t withOnceCheckedThrowingContinuation<A>(function:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF5A5C3C, 0, 0);
}

uint64_t XPCAcceptedClient.proxy(errorHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF5B17AC, 0, 0);
}

uint64_t sub_1DF5B17AC()
{
  v0[8] = (*(v0[6] + 24))(v0[5]);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1DF5B1868;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_1DF5A6778(v4, v2, v3);
}

uint64_t sub_1DF5B1868()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF5BE018, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1DF5B19B0(uint64_t a1)
{
  sub_1DF633A6C();
  sub_1DF632ACC();
  return sub_1DF633AAC();
}

uint64_t sub_1DF5B19F8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DF63394C();
  }
}

uint64_t os_activity(name:block:)(char *a1, int a2, char a3, void (*a4)(void))
{
  v8 = *MEMORY[0x1E69E9840];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = hackyCreateActivity(_:dso:)(a1, a2, a3, &dword_1DF59A000);
  os_activity_scope_enter(v5, &state);
  a4();
  os_activity_scope_leave(&state);
  return swift_unknownObjectRelease();
}

os_activity_t hackyCreateActivity(_:dso:)(char *description, int a2, char a3, void *dso)
{
  if ((a3 & 1) == 0)
  {
    if (description)
    {
      if (dso)
      {
        if (qword_1ED8E5D80 == -1)
        {
LABEL_5:
          v5 = qword_1ED8E5D88;

          return _os_activity_create(dso, description, v5, OS_ACTIVITY_FLAG_DEFAULT);
        }

LABEL_19:
        v14 = dso;
        swift_once();
        dso = v14;
        goto LABEL_5;
      }

LABEL_28:
      result = sub_1DF6336EC();
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

  if (qword_1ED8E5D80 != -1)
  {
    v13 = dso;
    swift_once();
    dso = v13;
  }

  return _os_activity_create(dso, descriptiona, qword_1ED8E5D88, OS_ACTIVITY_FLAG_DEFAULT);
}

uint64_t sub_1DF5B1CE8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v5 = sub_1DF6327CC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DF63277C();
  v20 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF5A924C(&qword_1ED8E4D98, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1DF63276C();
  sub_1DF5A3A94(a1, a2);
  sub_1DF5B2A90(a1, a2, v8);
  sub_1DF5B33C0(a1, a2);
  sub_1DF63274C();
  (*(v6 + 8))(v8, v5);
  v26 = v9;
  v27 = sub_1DF5A924C(qword_1ED8E4DA0, MEMORY[0x1E69663E0], MEMORY[0x1E69663D0]);
  v12 = __swift_allocate_boxed_opaque_existential_1(&v24);
  v13 = v20;
  (*(v20 + 16))(v12, v11, v9);
  __swift_project_boxed_opaque_existential_1(&v24, v26);
  sub_1DF63222C();
  (*(v13 + 8))(v11, v9);
  v14 = v22;
  v15 = v23;
  __swift_destroy_boxed_opaque_existential_1(&v24);
  v24 = v14;
  v25 = v15;
  sub_1DF63238C();
  sub_1DF63239C();
  sub_1DF63238C();
  sub_1DF63239C();
  v16 = v24;
  v17 = v25;
  LODWORD(v20) = sub_1DF63238C();
  v19[7] = sub_1DF63238C();
  v19[6] = sub_1DF63238C();
  v19[5] = sub_1DF63238C();
  v19[4] = sub_1DF63238C();
  v19[3] = sub_1DF63238C();
  v19[2] = sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63238C();
  sub_1DF63257C();
  return sub_1DF5B33C0(v16, v17);
}

void sub_1DF5B2178(char *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = sub_1DF6325AC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v37 - v11;
  v4[3].opaque[0] = 0;
  v4[3].opaque[1] = 0;
  v39 = a3;
  v37 = a1;
  v38 = a2;
  v40 = v13;
  if (a3)
  {
    v11 = a1 >> 32;
    if (!(a1 >> 32))
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
        __break(1u);
        goto LABEL_26;
      }

      v11 = a1 >> 16;
      if (a1 >> 16 <= 0x10)
      {
        if (a1 <= 0x7F)
        {
          v14 = a1 + 1;
LABEL_9:
          v42 = (v14 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v14) >> 3))));
          goto LABEL_10;
        }

LABEL_19:
        v32 = (a1 & 0x3F) << 8;
        v33 = (a1 >> 6) + v32 + 33217;
        v34 = (v32 | (a1 >> 6) & 0x3F) << 8;
        v35 = (a1 >> 18) + ((v34 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
        v36 = (a1 >> 12) + v34 + 8487393;
        if (v11)
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

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_10:
  v42 = sub_1DF632AAC();
  v43 = v15;

  MEMORY[0x1E12D82E0](46, 0xE100000000000000);
  v16 = v42;
  v17 = v43;
  sub_1DF63259C();
  v18 = sub_1DF63255C();
  v20 = v19;
  (*(v9 + 8))(v12, v40);
  v42 = v16;
  v43 = v17;

  MEMORY[0x1E12D82E0](v18, v20);

  v21 = v43;
  v4[1].opaque[0] = v42;
  v4[1].opaque[1] = v21;
  sub_1DF632A7C();

  v22 = os_transaction_create();

  if (!v22)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v4[2].opaque[0] = v22;
  v4[2].opaque[1] = hackyCreateActivity(_:dso:)(v37, v38, v39, &dword_1DF59A000);
  swift_beginAccess();
  v23 = swift_unknownObjectRetain();
  os_activity_scope_enter(v23, v4 + 3);
  swift_endAccess();
  swift_unknownObjectRelease();
  if (qword_1ED8E5CE8 != -1)
  {
    swift_once();
  }

  v24 = sub_1DF6326AC();
  __swift_project_value_buffer(v24, qword_1ED8E6A08);

  v25 = sub_1DF63268C();
  v26 = sub_1DF63314C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 136446210;
    v41 = v28;
    v42 = 0x3A4E58545BLL;
    v43 = 0xE500000000000000;
    v29 = v4[1].opaque[0];
    v30 = v4[1].opaque[1];

    MEMORY[0x1E12D82E0](v29, v30);
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);

    v31 = sub_1DF59EEC8(v42, v43, &v41);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_1DF59A000, v25, v26, "Opened %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1E12D9D80](v28, -1, -1);
    MEMORY[0x1E12D9D80](v27, -1, -1);
  }
}

uint64_t NSXPCConnection.id.getter@<X0>(uint64_t a1@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = sub_1DF5B2644(&v6, &v7);
  v4 = v3;
  sub_1DF5B1CE8(v2, v3, a1);
  return sub_1DF5B33C0(v2, v4);
}

unint64_t sub_1DF5B2644(uint64_t a1, uint64_t a2)
{
  v7[3] = MEMORY[0x1E69E6888];
  v7[4] = MEMORY[0x1E696A050];
  v7[0] = a1;
  v7[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v7, MEMORY[0x1E69E6888]);
  v3 = *v2;
  if (*v2)
  {
    v4 = v2[1];
    v5 = &v4[-v3];
    if (v4 == v3)
    {
      v3 = 0;
    }

    else if (v5 <= 14)
    {
      v3 = sub_1DF5B2744(*v2, v4);
    }

    else
    {
      sub_1DF63215C();
      swift_allocObject();
      sub_1DF63210C();
      if (v5 >= 0x7FFFFFFF)
      {
        sub_1DF63233C();
        v3 = swift_allocObject();
        *(v3 + 16) = 0;
        *(v3 + 24) = v5;
      }

      else
      {
        v3 = v5 << 32;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v7);
  return v3;
}

unint64_t sub_1DF5B2744(_BYTE *a1, _BYTE *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_1DF5B32E8(v5);
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

uint64_t sub_1DF5B2828(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1DF5D7754;

  return v5();
}

uint64_t sub_1DF5B2910(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF59D2C4;

  return sub_1DF5B2828(a1, v4);
}

uint64_t sub_1DF5B29BC(uint64_t a1)
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
  v10[1] = sub_1DF59D2C8;

  return sub_1DF5B329C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1DF5B2A90(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1DF6327CC();
      sub_1DF5B3254(&qword_1ED8E4D98, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1DF63273C();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1DF626EA8(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1DF626EA8(v5, v6);
  }

  sub_1DF6327CC();
  sub_1DF5B3254(&qword_1ED8E4D98, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  return sub_1DF63273C();
}

uint64_t _s10FindMyBase11TransactionC9asyncTask4name5blockys12StaticStringV_yyYaYbctFZ_0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  if (qword_1ED8E6098 != -1)
  {
    swift_once();
  }

  sub_1DF633C5C();
  v13 = v38;
  if (v38)
  {
    if (qword_1ED8E5CE8 != -1)
    {
      swift_once();
    }

    v14 = sub_1DF6326AC();
    __swift_project_value_buffer(v14, qword_1ED8E6A08);

    v15 = sub_1DF63268C();
    v16 = sub_1DF63316C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v37 = a4;
      v18 = v17;
      v19 = swift_slowAlloc();
      v38 = v19;
      *v18 = 136446466;
      v20 = sub_1DF6334AC();
      v22 = sub_1DF59EEC8(v20, v21, &v38);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2082;
      v23 = *(v13 + 16);
      v24 = *(v13 + 24);

      v25 = sub_1DF59EEC8(v23, v24, &v38);

      *(v18 + 14) = v25;
      _os_log_impl(&dword_1DF59A000, v15, v16, "Transaction.asyncTask(name:) called with [%{public}s] when transaction [%{public}s] already exists!", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D9D80](v19, -1, -1);
      v26 = v18;
      a4 = v37;
      MEMORY[0x1E12D9D80](v26, -1, -1);
    }

    v27 = sub_1DF632E9C();
    (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = a4;
    v28[5] = a5;

    sub_1DF5CE7F8(0, 0, v12, &unk_1DF639B28, v28);
  }

  else
  {
    type metadata accessor for Transaction();
    swift_allocObject();
    sub_1DF5B2178(a1, a2, v7);
    v30 = v29;
    v31 = objc_opt_self();

    v32 = [v31 currentConnection];
    v33 = sub_1DF632E9C();
    (*(*(v33 - 8) + 56))(v12, 1, 1, v33);
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = v30;
    v34[5] = v32;
    v34[6] = a4;
    v34[7] = a5;

    v35 = v32;
    sub_1DF5CE7F8(0, 0, v12, &unk_1DF639B18, v34);
  }
}

uint64_t sub_1DF5B3070()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DF5B30C0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DF5B3104(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF59D2C4;

  return sub_1DF5B339C(a1, v4, v5, v6);
}

uint64_t sub_1DF5B31B8(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_1DF633C5C();
  return v4;
}

uint64_t sub_1DF5B320C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DF5B3254(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DF5B329C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF5B3414, 0, 0);
}

unint64_t sub_1DF5B32E8(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

_BYTE *sub_1DF5B3308@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_1DF5B2744(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1DF5C3068(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1DF5B357C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1DF5B339C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF5B3664, 0, 0);
}

uint64_t sub_1DF5B33C0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1DF5B3414()
{
  if (qword_1ED8E6098 != -1)
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
  v4[1] = sub_1DF5B5E48;
  v5 = *(v0 + 24);

  return MEMORY[0x1EEE6DE98](v5, v0 + 16, &unk_1DF639B38, v2, 0, 0, 0xD00000000000001CLL, 0x80000001DF634F90);
}

uint64_t sub_1DF5B357C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1DF63215C();
  swift_allocObject();
  result = sub_1DF63210C();
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1DF5B3664()
{
  if (qword_1ED8E60B0 != -1)
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
  v2[1] = sub_1DF5B5D14;
  v3 = *(v0 + 24);

  return MEMORY[0x1EEE6DE98](v3, v0 + 16, &unk_1DF639B48, v1, 0, 0, 0xD00000000000001CLL, 0x80000001DF634F90);
}

void valueOf(entitlement:)(uint64_t a3@<X8>)
{
  task = SecTaskCreateFromSelf(0);
  if (task)
  {
    v4 = sub_1DF63295C();
    v5 = SecTaskCopyValueForEntitlement(task, v4, 0);

    if (v5)
    {
      *(a3 + 24) = swift_getObjectType();

      *a3 = v5;
    }

    else
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

uint64_t sub_1DF5B387C(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
}

uint64_t DataProtocol.nullTerminatedUTF8String.getter(uint64_t a1, uint64_t a2)
{
  v31[5] = *MEMORY[0x1E69E9840];
  v4 = sub_1DF632A1C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = DataProtocol.nullTerminated.getter(a1, a2);
  v31[3] = MEMORY[0x1E6969080];
  v31[4] = MEMORY[0x1E6969078];
  v31[0] = v5;
  v31[1] = v6;
  v7 = __swift_project_boxed_opaque_existential_1(v31, MEMORY[0x1E6969080]);
  v8 = *v7;
  v9 = v7[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      memset(v29, 0, 14);
      v12 = v29;
      v11 = v29;
      goto LABEL_23;
    }

    v13 = *(v8 + 16);
    v14 = *(v8 + 24);
    v15 = sub_1DF63211C();
    if (v15)
    {
      v16 = sub_1DF63214C();
      v8 = v13 - v16;
      if (__OFSUB__(v13, v16))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v15 += v8;
    }

    v17 = __OFSUB__(v14, v13);
    v18 = v14 - v13;
    if (!v17)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v29[0] = *v7;
    LOWORD(v29[1]) = v9;
    BYTE2(v29[1]) = BYTE2(v9);
    BYTE3(v29[1]) = BYTE3(v9);
    BYTE4(v29[1]) = BYTE4(v9);
    BYTE5(v29[1]) = BYTE5(v9);
    v11 = v29 + BYTE6(v9);
    v12 = v29;
    goto LABEL_23;
  }

  v19 = v8;
  v20 = v8 >> 32;
  v18 = v20 - v19;
  if (v20 < v19)
  {
    __break(1u);
    goto LABEL_25;
  }

  v15 = sub_1DF63211C();
  if (v15)
  {
    v21 = sub_1DF63214C();
    if (!__OFSUB__(v19, v21))
    {
      v15 += v19 - v21;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v22 = sub_1DF63213C();
  if (v22 >= v18)
  {
    v23 = v18;
  }

  else
  {
    v23 = v22;
  }

  v24 = (v23 + v15);
  if (v15)
  {
    v11 = v24;
  }

  else
  {
    v11 = 0;
  }

  v12 = v15;
LABEL_23:
  sub_1DF5B3308(v12, v11, v30);
  v25 = v30[0];
  v26 = v30[1];
  __swift_destroy_boxed_opaque_existential_1(v31);
  sub_1DF6329EC();
  v27 = sub_1DF6329AC();
  sub_1DF5B33C0(v25, v26);
  return v27;
}

uint64_t DataProtocol.nullTerminated.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v31 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v28 = &v24 - v4;
  v5 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = sub_1DF63367C();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = sub_1DF63327C();
  v24 = *(v9 - 8);
  v25 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v33 = 0;
  sub_1DF63312C();
  v16 = *(v12 + 48);
  v17 = v16(v11, 1, v5);
  v29 = v2;
  if (v17 == 1)
  {
    sub_1DF6330FC();
    if (v16(v11, 1, v5) != 1)
    {
      (*(v24 + 8))(v11, v25);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v11, v5);
  }

  result = sub_1DF63292C();
  if (result)
  {
    (*(v12 + 16))(v8, v15, v5);
    v19 = v27;
    swift_getWitnessTable();
    v20 = v28;
    sub_1DF63311C();
    (*(v26 + 8))(v8, v19);
    v21 = v31;
    v22 = swift_getAssociatedConformanceWitness();
    v23 = sub_1DF5B3F7C(v20, v21, *(v22 + 8));
    (*(v30 + 8))(v20, v21);
    (*(v12 + 8))(v15, v5);
    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF5B3F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v30 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  (*(v17 + 16))(&v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42928, &qword_1DF638918);
  if (swift_dynamicCast())
  {
    sub_1DF5A7D18(v33, &v35);
    __swift_project_boxed_opaque_existential_1(&v35, v36);
    sub_1DF63222C();
    v33[0] = v32;
    __swift_destroy_boxed_opaque_existential_1(&v35);
    goto LABEL_34;
  }

  v34 = 0;
  memset(v33, 0, sizeof(v33));
  sub_1DF5C36A4(v33);
  sub_1DF632C4C();
  if (*(&v35 + 1) >> 60 != 15)
  {
    v33[0] = v35;
    goto LABEL_34;
  }

  v31 = v35;
  v18 = sub_1DF632C3C();
  *&v33[0] = sub_1DF5C2FC8(v18);
  *(&v33[0] + 1) = v19;
  MEMORY[0x1EEE9AC00](*&v33[0]);
  *(&v30 - 4) = a2;
  *(&v30 - 3) = a3;
  *(&v30 - 2) = a1;
  sub_1DF63235C();
  v20 = *&v9[*(TupleTypeMetadata2 + 48)];
  (*(v10 + 32))(v13, v9, AssociatedTypeWitness);
  v21 = *(&v33[0] + 1) >> 62;
  if ((*(&v33[0] + 1) >> 62) <= 1)
  {
    if (v21)
    {
      if (__OFSUB__(DWORD1(v33[0]), v33[0]))
      {
        goto LABEL_38;
      }

      if (v20 == DWORD1(v33[0]) - LODWORD(v33[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v20 == BYTE14(v33[0]))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v21 == 2)
  {
    v23 = *(*&v33[0] + 16);
    v22 = *(*&v33[0] + 24);
    v24 = __OFSUB__(v22, v23);
    v25 = v22 - v23;
    if (v24)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    if (v20 == v25)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (v21 == 2)
    {
      v26 = *(*&v33[0] + 24);
    }

    else if (v21 == 1)
    {
      v26 = *&v33[0] >> 32;
    }

    else
    {
      v26 = BYTE14(v33[0]);
    }

LABEL_31:
    if (v26 >= v20)
    {
      sub_1DF63234C();
LABEL_33:
      (*(v10 + 8))(v13, AssociatedTypeWitness);
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (v20)
  {
    v26 = 0;
    goto LABEL_31;
  }

LABEL_20:
  swift_getAssociatedConformanceWitness();
  *&v35 = 0;
  *(&v35 + 7) = 0;
  sub_1DF63329C();
  if (BYTE1(v32) == 1)
  {
    goto LABEL_28;
  }

  LOBYTE(v27) = 0;
  do
  {
    *(&v35 + v27) = v32;
    v27 = v27 + 1;
    if ((v27 >> 8))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v27 == 14)
    {
      *&v32 = v35;
      *(&v32 + 6) = *(&v35 + 6);
      sub_1DF63236C();
      LOBYTE(v27) = 0;
    }

    sub_1DF63329C();
  }

  while ((BYTE1(v32) & 1) == 0);
  if (v27)
  {
    *&v32 = v35;
    *(&v32 + 6) = *(&v35 + 6);
    sub_1DF63236C();
    sub_1DF5C3890(v31, *(&v31 + 1));
    goto LABEL_33;
  }

LABEL_28:
  (*(v10 + 8))(v13, AssociatedTypeWitness);
  sub_1DF5C3890(v31, *(&v31 + 1));
LABEL_34:
  v28 = v33[0];
  sub_1DF5A3A94(*&v33[0], *(&v33[0] + 1));
  sub_1DF5B33C0(v28, *(&v28 + 1));
  return v28;
}