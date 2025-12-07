uint64_t static SyncService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADD8, &qword_1E6609BE0);
  sub_1E65D7F18();
  type metadata accessor for LiveSyncService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E5DF599C(&v5, v2 + 112);
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_1E6609C40;
  *(v3 + 24) = v2;
  *a1 = &unk_1E6609BF0;
  a1[1] = v2;
  a1[2] = &unk_1E6609C00;
  a1[3] = v2;
  a1[4] = &unk_1E6609C10;
  a1[5] = v2;
  a1[6] = &unk_1E6609C20;
  a1[7] = v2;
  a1[8] = &unk_1E6609C30;
  a1[9] = v2;
  a1[10] = &unk_1E6609C50;
  a1[11] = v3;
  return swift_retain_n();
}

uint64_t sub_1E5E038A8()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for ToastAction(uint64_t a1)
{
  result = qword_1EE2DB4C8;
  if (!qword_1EE2DB4C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5E03974(uint64_t a1)
{
  sub_1E5E03AA8();
  if (v1 <= 0x3F)
  {
    sub_1E5E039E8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E5E039E8(uint64_t a1)
{
  if (!qword_1EE2D9870[0])
  {
    type metadata accessor for ToastResource(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, qword_1EE2D9870);
    }
  }
}

uint64_t type metadata accessor for ToastResource(uint64_t a1)
{
  result = qword_1EE2DAED0;
  if (!qword_1EE2DAED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5E03AA8()
{
  result = qword_1EE2D4810;
  if (!qword_1EE2D4810)
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &qword_1EE2D4810);
  }

  return result;
}

uint64_t sub_1E5E03AD8(uint64_t a1)
{
  result = sub_1E5DEF56C();
  if (v2 <= 0x3F)
  {
    result = sub_1E65DBB88();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t static UpNextQueueService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFD8, &qword_1E660ABB0);
  sub_1E65D7F18();
  type metadata accessor for LiveUpNextQueueClientService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = *&v4[5];
  sub_1E5DF599C(v4, v2 + 128);
  *a1 = &unk_1E660FB98;
  a1[1] = v2;
  a1[2] = &unk_1E660FBA8;
  a1[3] = v2;
  a1[4] = &unk_1E660FBB8;
  a1[5] = v2;
  return swift_retain_n();
}

uint64_t WindowSceneObserver.init()()
{
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BA10, &qword_1E660DF80);
  *(v0 + 48) = sub_1E65E17A8();
  return v0;
}

uint64_t static WorkoutPlanService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD00, &unk_1E660EBA0);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD08, &qword_1E6609600);
  sub_1E65D7F18();
  type metadata accessor for LiveWorkoutPlanService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = *&v5[5];
  sub_1E5DF599C(v5, v2 + 128);
  sub_1E5DF599C(&v4, v2 + 168);
  *a1 = &unk_1E6609610;
  a1[1] = v2;
  a1[2] = &unk_1E6609620;
  a1[3] = v2;
  a1[4] = &unk_1E6609630;
  a1[5] = v2;
  a1[6] = &unk_1E6609640;
  a1[7] = v2;
  a1[8] = &unk_1E6609650;
  a1[9] = v2;
  a1[10] = &unk_1E6609660;
  a1[11] = v2;
  a1[12] = &unk_1E6609670;
  a1[13] = v2;
  a1[14] = &unk_1E6609680;
  a1[15] = v2;
  a1[16] = &unk_1E6609690;
  a1[17] = v2;
  a1[18] = &unk_1E66096A0;
  a1[19] = v2;
  a1[20] = &unk_1E66096B0;
  a1[21] = v2;
  a1[22] = &unk_1E66096C0;
  a1[23] = v2;
  a1[24] = &unk_1E66096D0;
  a1[25] = v2;
  a1[26] = &unk_1E66096E0;
  a1[27] = v2;
  a1[28] = &unk_1E66096F0;
  a1[29] = v2;
  a1[30] = &unk_1E6609700;
  a1[31] = v2;
  a1[32] = &unk_1E6609710;
  a1[33] = v2;
  a1[34] = &unk_1E6609720;
  a1[35] = v2;
  a1[36] = &unk_1E6609730;
  a1[37] = v2;
  a1[38] = &unk_1E6609740;
  a1[39] = v2;
  return swift_retain_n();
}

uint64_t sub_1E5E03F70(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = sub_1E65DDF08();
      v11 = v5;
      v12 = sub_1E5E041A4();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
      (*(*(v5 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CABE8], v5);
      LOBYTE(v5) = sub_1E65DAF58();
      __swift_destroy_boxed_opaque_existential_1(v10);
      if ((v5 & 1) == 0)
      {
        v4 = sub_1E5E04260(&unk_1F5FA8AA0);
LABEL_15:
        swift_arrayDestroy();
        return v4;
      }

      v3 = &unk_1F5FA8A30;
    }

    else
    {
      v1 = sub_1E65DDF08();
      v11 = v1;
      v12 = sub_1E5E041A4();
      v2 = __swift_allocate_boxed_opaque_existential_1(v10);
      (*(*(v1 - 8) + 104))(v2, *MEMORY[0x1E69CABE8], v1);
      LOBYTE(v1) = sub_1E65DAF58();
      __swift_destroy_boxed_opaque_existential_1(v10);
      if (v1)
      {
        v3 = &unk_1F5FA8940;
      }

      else
      {
        v3 = &unk_1F5FA89C0;
      }
    }

LABEL_14:
    v4 = sub_1E5E04260(v3);
    goto LABEL_15;
  }

  if (a1 != 2)
  {
    v7 = sub_1E65DDF08();
    v11 = v7;
    v12 = sub_1E5E041A4();
    v8 = __swift_allocate_boxed_opaque_existential_1(v10);
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x1E69CABE8], v7);
    LOBYTE(v7) = sub_1E65DAF58();
    __swift_destroy_boxed_opaque_existential_1(v10);
    if (v7)
    {
      v3 = &unk_1F5FA8B00;
    }

    else
    {
      v3 = &unk_1F5FA8B80;
    }

    goto LABEL_14;
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1E5E041A4()
{
  result = qword_1EE2D6AF0;
  if (!qword_1EE2D6AF0)
  {
    sub_1E65DDF08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D6AF0);
  }

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

uint64_t sub_1E5E04260(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072028, &qword_1E65EA490);
  v3 = sub_1E65E6888();
  v4 = 0;
  v5 = v3 + 56;
  v26 = v1;
  v27 = a1 + 32;
  while (2)
  {
    v6 = (v27 + 16 * v4);
    v7 = v6[1];
    v29 = *v6;
    sub_1E65E6D28();
    if (v7 > 2)
    {
      if (v7 == 3 || v7 == 4 || v7 == 5)
      {
        goto LABEL_15;
      }
    }

    else if (v7 <= 2)
    {
      goto LABEL_15;
    }

    MEMORY[0x1E694D7C0](v29, v7);
LABEL_15:
    sub_1E65E5D78();

    result = sub_1E65E6D78();
    v9 = ~(-1 << *(v3 + 32));
    v10 = result & v9;
    v11 = (result & v9) >> 6;
    v12 = *(v5 + 8 * v11);
    v13 = 1 << (result & v9);
    if ((v13 & v12) == 0)
    {
      goto LABEL_59;
    }

    v28 = v4;
    do
    {
      v14 = (*(v3 + 48) + 16 * v10);
      v15 = *v14;
      v16 = v14[1];
      if (v16 > 2)
      {
        if (v16 == 3)
        {
          v17 = 0xE600000000000000;
          v18 = 0x686372616573;
          if (v7 <= 2)
          {
            goto LABEL_43;
          }

          goto LABEL_35;
        }

        if (v16 != 4)
        {
          if (v16 == 5)
          {
            v17 = 0xE500000000000000;
            v18 = 0x736E616C70;
            if (v7 <= 2)
            {
              goto LABEL_43;
            }

            goto LABEL_35;
          }

          goto LABEL_32;
        }

        v17 = 0xE600000000000000;
        v18 = 0x7478654E7075;
        if (v7 <= 2)
        {
LABEL_43:
          if (v7)
          {
            if (v7 == 1)
            {
              v19 = 0xE600000000000000;
              if (v18 != 0x756F59726F66)
              {
                goto LABEL_56;
              }
            }

            else
            {
              if (v7 != 2)
              {
                goto LABEL_50;
              }

              v19 = 0xE700000000000000;
              if (v18 != 0x7972617262696CLL)
              {
                goto LABEL_56;
              }
            }
          }

          else
          {
            v19 = 0xE700000000000000;
            if (v18 != 0x65726F6C707865)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_55;
        }
      }

      else
      {
        if (!v16)
        {
          v17 = 0xE700000000000000;
          v18 = 0x65726F6C707865;
          if (v7 <= 2)
          {
            goto LABEL_43;
          }

          goto LABEL_35;
        }

        if (v16 != 1)
        {
          if (v16 == 2)
          {
            v17 = 0xE700000000000000;
            v18 = 0x7972617262696CLL;
            if (v7 <= 2)
            {
              goto LABEL_43;
            }

            goto LABEL_35;
          }

LABEL_32:

          MEMORY[0x1E694D7C0](v15, v16);
          v18 = 0x7974696C61646F6DLL;
          v17 = 0xE90000000000003ALL;
          if (v7 <= 2)
          {
            goto LABEL_43;
          }

          goto LABEL_35;
        }

        v17 = 0xE600000000000000;
        v18 = 0x756F59726F66;
        if (v7 <= 2)
        {
          goto LABEL_43;
        }
      }

LABEL_35:
      switch(v7)
      {
        case 3:
          v19 = 0xE600000000000000;
          if (v18 != 0x686372616573)
          {
            goto LABEL_56;
          }

          break;
        case 4:
          v19 = 0xE600000000000000;
          if (v18 != 0x7478654E7075)
          {
            goto LABEL_56;
          }

          break;
        case 5:
          v19 = 0xE500000000000000;
          if (v18 != 0x736E616C70)
          {
            goto LABEL_56;
          }

          break;
        default:
LABEL_50:
          v20 = v18;
          MEMORY[0x1E694D7C0](v29, v7);
          v19 = 0xE90000000000003ALL;
          if (v20 != 0x7974696C61646F6DLL)
          {
            goto LABEL_56;
          }

          break;
      }

LABEL_55:
      if (v17 == v19)
      {
        sub_1E5E0476C(v15, v16);

LABEL_4:
        sub_1E5E0476C(v29, v7);
        v1 = v26;
        v4 = v28;
        goto LABEL_5;
      }

LABEL_56:
      v21 = sub_1E65E6C18();
      sub_1E5E0476C(v15, v16);

      if (v21)
      {
        goto LABEL_4;
      }

      v10 = (v10 + 1) & v9;
      v11 = v10 >> 6;
      v12 = *(v5 + 8 * (v10 >> 6));
      v13 = 1 << v10;
    }

    while ((v12 & (1 << v10)) != 0);
    v1 = v26;
    v4 = v28;
LABEL_59:
    *(v5 + 8 * v11) = v12 | v13;
    v22 = (*(v3 + 48) + 16 * v10);
    *v22 = v29;
    v22[1] = v7;
    v23 = *(v3 + 16);
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (!v24)
    {
      *(v3 + 16) = v25;
LABEL_5:
      if (++v4 == v1)
      {
        return v3;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5E0476C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t type metadata accessor for AppRouter(uint64_t a1)
{
  result = qword_1EE2D7398;
  if (!qword_1EE2D7398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5E047CC(uint64_t a1)
{
  result = type metadata accessor for NavigationControllerRoutingContext(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AppComposer(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t type metadata accessor for NavigationControllerRoutingContext(uint64_t a1)
{
  result = qword_1EE2D7A58;
  if (!qword_1EE2D7A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5E0497C(uint64_t a1)
{
  type metadata accessor for NavigationController();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AppComposer(319);
    if (v2 <= 0x3F)
    {
      sub_1E5E04B54();
      if (v3 <= 0x3F)
      {
        sub_1E5E05158(319);
        if (v4 <= 0x3F)
        {
          sub_1E5E051BC();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1E5E04A6C()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1E5E1CE4C;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0x2928657461746F72, 0xE800000000000000, sub_1E5E05220, v2, v4);
}

unint64_t sub_1E5E04B54()
{
  result = qword_1EE2DA888[0];
  if (!qword_1EE2DA888[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EE2DA888);
  }

  return result;
}

uint64_t sub_1E5E04BB4(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v25 = sub_1E65E4F38();
  v27 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1E65E4F68();
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  v11 = type metadata accessor for JournalRotator(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a2 + *(MEMORY[0x1EEE9AC00](v11 - 8) + 32));
  sub_1E5E057B0(a2, v14);
  (*(v8 + 16))(v10, v22, v7);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v13 + *(v8 + 80) + v15) & ~*(v8 + 80);
  v17 = swift_allocObject();
  sub_1E5E05814(v14, v17 + v15);
  (*(v8 + 32))(v17 + v16, v10, v7);
  aBlock[4] = sub_1E5E05AF4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5E05AB0;
  aBlock[3] = &block_descriptor_13;
  v18 = _Block_copy(aBlock);
  sub_1E65E4F48();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1E5DFA51C(&qword_1EE2D4A00, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078770, &unk_1E65EAB00);
  sub_1E5E05A4C();
  v19 = v25;
  sub_1E65E6738();
  MEMORY[0x1E694DDE0](0, v6, v4, v18);
  _Block_release(v18);
  (*(v27 + 8))(v4, v19);
  (*(v24 + 8))(v6, v26);
}

uint64_t sub_1E5E04FCC()
{
  v1 = (type metadata accessor for JournalRotator(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0 + v2;
  v8 = v1[7];
  v9 = sub_1E65D74E8();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);

  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

void sub_1E5E05158(uint64_t a1)
{
  if (!qword_1EE2D9410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072038, &qword_1E65F08E0);
    v1 = sub_1E65E6668();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D9410);
    }
  }
}

unint64_t sub_1E5E051BC()
{
  result = qword_1EE2D4550;
  if (!qword_1EE2D4550)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE2D4550);
  }

  return result;
}

void sub_1E5E05224(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1 < 2u)
  {
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = sub_1E65E5C48();
    v5 = [v3 stringForKey_];

    if (v5)
    {
      v6 = sub_1E65E5C78();
      v8 = v7;

      RootItem.init(rawValue:)(v6, v8, &v11);
      v9 = v12;
      if (v12 == 6)
      {
        v10 = 0;
      }

      else
      {
        v10 = v11;
      }

      goto LABEL_8;
    }

LABEL_6:
    v10 = 0;
    v9 = 6;
LABEL_8:
    *a2 = v10;
    a2[1] = v9;
    return;
  }

  if (a1 == 3)
  {
    goto LABEL_6;
  }

  sub_1E65E69D8();
  __break(1u);
}

uint64_t sub_1E5E05374(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

id JournalRotator.journalMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for JournalRotator(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E62FD160(0);
  if (v6 == 2 || (v6 & 1) == 0)
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v17 = sub_1E65E3B68();
    __swift_project_value_buffer(v17, qword_1EE2EA2A0);
    v18 = sub_1E65E3B48();
    v19 = sub_1E65E6338();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1E5DE9000, v18, v19, "Actions logging not enabled", v20, 2u);
      MEMORY[0x1E694F1C0](v20, -1, -1);
    }

    v21 = *MEMORY[0x1E6999AF8];
    v22 = sub_1E65E4CE8();
    v23 = *(*(v22 - 8) + 104);

    return v23(a1, v21, v22);
  }

  else
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v7 = sub_1E65E3B68();
    __swift_project_value_buffer(v7, qword_1EE2EA2A0);
    v8 = v1;
    sub_1E5E057B0(v1, v5);
    v9 = sub_1E65E3B48();
    v10 = sub_1E65E6338();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v32 = v12;
      *v11 = 136315138;
      sub_1E65D74E8();
      sub_1E5DFA51C(&qword_1EE2D71E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v13 = sub_1E65E6BC8();
      v15 = v14;
      sub_1E5E05BCC(v5);
      v16 = sub_1E5DFD4B0(v13, v15, &v32);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1E5DE9000, v9, v10, "Actions logging enabled in %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1E694F1C0](v12, -1, -1);
      MEMORY[0x1E694F1C0](v11, -1, -1);
    }

    else
    {

      sub_1E5E05BCC(v5);
    }

    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078148, &qword_1E65FB680) + 48);
    v26 = *(v3 + 20);
    v27 = sub_1E65D74E8();
    (*(*(v27 - 8) + 16))(a1, v8 + v26, v27);
    v31 = *(v8 + *(v3 + 24));
    *(a1 + v25) = v31;
    v28 = *MEMORY[0x1E6999B00];
    v29 = sub_1E65E4CE8();
    (*(*(v29 - 8) + 104))(a1, v28, v29);
    v30 = v31;

    return v30;
  }
}

uint64_t sub_1E5E057B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalRotator(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5E05814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalRotator(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1E5E05A4C()
{
  result = qword_1EE2D4840;
  if (!qword_1EE2D4840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078770, &unk_1E65EAB00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4840);
  }

  return result;
}

uint64_t sub_1E5E05AB0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1E5E05AF4()
{
  v1 = *(type metadata accessor for JournalRotator(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0) - 8);
  v5 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1E5DFD5C8(v0 + v2, v5);
}

uint64_t sub_1E5E05BCC(uint64_t a1)
{
  v2 = type metadata accessor for JournalRotator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5E05C28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E5E05C90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079358, &qword_1E66014C0);
    v3 = sub_1E65E6A28();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1E6215038(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

unint64_t sub_1E5E05D8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0795D0, &qword_1E6601700);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0794C8, &qword_1E6601610);
    v7 = sub_1E65E6A28();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v9, v5, &qword_1ED0795D0, &qword_1E6601700);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1E6215038(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1E65DBD88();
      result = sub_1E5E24EEC(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, MEMORY[0x1E699D2D0]);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E05F74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079280, &qword_1E6601410);
    v3 = sub_1E65E6A28();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1E6215038(v5, v6);
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

unint64_t sub_1E5E06078(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0795C8, &qword_1E66016F8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079278, &qword_1E6601408);
    v7 = sub_1E65E6A28();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v9, v5, &qword_1ED0795C8, &qword_1E66016F8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1E6215038(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1E65DBED8();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E06264(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0794D0, &qword_1E6601618);
    v3 = sub_1E65E6A28();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      sub_1E5E06368(v7);
      result = sub_1E6215038(v5, v6);
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

unint64_t sub_1E5E06368(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_1E5E06378(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0795C0, &qword_1E66016F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079380, &qword_1E66014E8);
    v7 = sub_1E65E6A28();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v9, v5, &qword_1ED0795C0, &qword_1E66016F0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1E6215038(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1E65DFA08();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E06564(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0795B8, &qword_1E66016E8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079480, &qword_1E66015C8);
    v7 = sub_1E65E6A28();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v9, v5, &qword_1ED0795B8, &qword_1E66016E8);
      v12 = *v5;
      v11 = v5[1];
      result = sub_1E6215038(*v5, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E0675C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0795B0, &qword_1E66016E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0792F8, &qword_1E6601478);
    v7 = sub_1E65E6A28();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v9, v5, &qword_1ED0795B0, &qword_1E66016E0);
      result = sub_1E6416E74(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_1E65DAFD8();
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E06988(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0795A8, &qword_1E66016D8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079518, &qword_1E6601650);
    v7 = sub_1E65E6A28();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v9, v5, &qword_1ED0795A8, &qword_1E66016D8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1E6215038(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1E65E31D8();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E06B74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0795A0, &qword_1E66016D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0793A8, &qword_1E6601510);
    v7 = sub_1E65E6A28();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v9, v5, &qword_1ED0795A0, &qword_1E66016D0);
      result = sub_1E6416E08(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1E65E0B48();
      sub_1E5E24EEC(v5, v14 + *(*(v15 - 8) + 72) * v13, MEMORY[0x1E699DD40]);
      v16 = v7[7];
      v17 = sub_1E65E0D48();
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E06D90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079578, &qword_1E66016A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0792F0, &qword_1E6601470);
    v7 = sub_1E65E6A28();
    v23 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v8, v5, &qword_1ED079578, &qword_1E66016A8);
      v11 = *v5;
      v10 = *(v5 + 1);
      v12 = v5[16];
      result = sub_1E6416FB4(*v5, v10, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v7[6] + 24 * result;
      *v16 = v11;
      *(v16 + 8) = v10;
      *(v16 + 16) = v12;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, &v5[v23], v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v8 += v9;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E06FB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079570, &qword_1E66016A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0792D8, &qword_1E6601458);
    v7 = sub_1E65E6A28();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v9, v5, &qword_1ED079570, &qword_1E66016A0);
      v12 = *v5;
      v11 = v5[1];
      result = sub_1E6215038(*v5, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076308, &qword_1E65F53D8);
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E071AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079568, &qword_1E6601698);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0792E0, &qword_1E6601460);
    v7 = sub_1E65E6A28();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v9, v5, &qword_1ED079568, &qword_1E6601698);
      v12 = *v5;
      v11 = v5[1];
      result = sub_1E6215038(*v5, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762E8, &qword_1E65F53C8);
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E073A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079560, &qword_1E6601690);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0792D0, &qword_1E6601450);
    v7 = sub_1E65E6A28();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v9, v5, &qword_1ED079560, &qword_1E6601690);
      v12 = *v5;
      v11 = v5[1];
      result = sub_1E6215038(*v5, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762C8, &qword_1E65F53B8);
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E0759C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079558, &qword_1E6601688);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079350, &qword_1E66014B8);
    v7 = sub_1E65E6A28();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v9, v5, &qword_1ED079558, &qword_1E6601688);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1E6215038(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1E65E2498();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E07788()
{
  result = qword_1EE2D9670;
  if (!qword_1EE2D9670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9670);
  }

  return result;
}

unint64_t sub_1E5E077DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079550, &qword_1E6601680);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079338, &qword_1E66014A0);
    v7 = sub_1E65E6A28();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v9, v5, &qword_1ED079550, &qword_1E6601680);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1E6215038(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1E65E3508();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E079C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079548, &qword_1E6601678);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0793D8, &qword_1E6601540);
    v7 = sub_1E65E6A28();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v9, v5, &qword_1ED079548, &qword_1E6601678);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1E6215038(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1E65E2F28();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E07BB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079540, &qword_1E6601670);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0793F8, &qword_1E6601560);
    v7 = sub_1E65E6A28();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v9, v5, &qword_1ED079540, &qword_1E6601670);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1E6215038(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1E65E3468();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1E5E07DA0(uint64_t a1, unint64_t a2)
{
  if (a2 != 6)
  {
    return sub_1E5E0476C(a1, a2);
  }

  return a1;
}

void sub_1E5E07DB0(uint64_t a1)
{
  type metadata accessor for BrowsingIdentity(319);
  if (v1 <= 0x3F)
  {
    sub_1E623E358(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1E5E07EDC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1E65DE668();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745E0, &qword_1E65F0F90);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_13;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[10];
    goto LABEL_13;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[11]) = (a2 - 1);
    return result;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0746C8, &qword_1E65F0FB0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[12];
    goto LABEL_13;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0746E8, &qword_1E65F0FB8);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[13];
    goto LABEL_13;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074858, &qword_1E65F1008);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[18];
    goto LABEL_13;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741C8, &qword_1E65EFB48);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[19];
    goto LABEL_13;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[20];
    goto LABEL_13;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F68, &qword_1E65EA398);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[21];
    goto LABEL_13;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[22];
    goto LABEL_13;
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E68, &qword_1E65EA160);
  if (*(*(v27 - 8) + 84) == a3)
  {
    v10 = v27;
    v14 = *(v27 - 8);
    v15 = a4[23];
    goto LABEL_13;
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0749A0, &qword_1E65F1038);
  if (*(*(v28 - 8) + 84) == a3)
  {
    v10 = v28;
    v14 = *(v28 - 8);
    v15 = a4[26];
    goto LABEL_13;
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0);
  if (*(*(v29 - 8) + 84) == a3)
  {
    v10 = v29;
    v14 = *(v29 - 8);
    v15 = a4[27];
    goto LABEL_13;
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD8, &unk_1E65F84F0);
  if (*(*(v30 - 8) + 84) == a3)
  {
    v10 = v30;
    v14 = *(v30 - 8);
    v15 = a4[29];
    goto LABEL_13;
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741F0, &unk_1E65EFC10);
  if (*(*(v31 - 8) + 84) == a3)
  {
    v10 = v31;
    v14 = *(v31 - 8);
    v15 = a4[31];
    goto LABEL_13;
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072800, &qword_1E65EBDF8);
  if (*(*(v32 - 8) + 84) == a3)
  {
    v10 = v32;
    v14 = *(v32 - 8);
    v15 = a4[36];
    goto LABEL_13;
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
  if (*(*(v33 - 8) + 84) == a3)
  {
    v10 = v33;
    v14 = *(v33 - 8);
    v15 = a4[38];
    goto LABEL_13;
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074B30, &qword_1E65F1088);
  if (*(*(v34 - 8) + 84) == a3)
  {
    v10 = v34;
    v14 = *(v34 - 8);
    v15 = a4[42];
    goto LABEL_13;
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BD8, &qword_1E65F10B0);
  if (*(*(v35 - 8) + 84) == a3)
  {
    v10 = v35;
    v14 = *(v35 - 8);
    v15 = a4[45];
    goto LABEL_13;
  }

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BF8, &qword_1E65F10B8);
  if (*(*(v36 - 8) + 84) == a3)
  {
    v10 = v36;
    v14 = *(v36 - 8);
    v15 = a4[46];
    goto LABEL_13;
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C28, &qword_1E65F10C0);
  if (*(*(v37 - 8) + 84) == a3)
  {
    v10 = v37;
    v14 = *(v37 - 8);
    v15 = a4[47];
    goto LABEL_13;
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C70, &qword_1E65F10D0);
  if (*(*(v38 - 8) + 84) == a3)
  {
    v10 = v38;
    v14 = *(v38 - 8);
    v15 = a4[49];
    goto LABEL_13;
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
  if (*(*(v39 - 8) + 84) == a3)
  {
    v10 = v39;
    v14 = *(v39 - 8);
    v15 = a4[50];
    goto LABEL_13;
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074068, &qword_1E65EF228);
  if (*(*(v40 - 8) + 84) == a3)
  {
    v10 = v40;
    v14 = *(v40 - 8);
    v15 = a4[51];
    goto LABEL_13;
  }

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F98, &qword_1E65EF138);
  if (*(*(v41 - 8) + 84) == a3)
  {
    v10 = v41;
    v14 = *(v41 - 8);
    v15 = a4[53];
    goto LABEL_13;
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CF0, &qword_1E65F10D8);
  if (*(*(v42 - 8) + 84) == a3)
  {
    v10 = v42;
    v14 = *(v42 - 8);
    v15 = a4[54];
    goto LABEL_13;
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073560, &qword_1E65ED560);
  if (*(*(v43 - 8) + 84) == a3)
  {
    v10 = v43;
    v14 = *(v43 - 8);
    v15 = a4[55];
    goto LABEL_13;
  }

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074D30, &qword_1E65F10E0);
  if (*(*(v44 - 8) + 84) == a3)
  {
    v10 = v44;
    v14 = *(v44 - 8);
    v15 = a4[56];
    goto LABEL_13;
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745B0, &qword_1E65F0F38);
  if (*(*(v45 - 8) + 84) == a3)
  {
    v10 = v45;
    v14 = *(v45 - 8);
    v15 = a4[57];
    goto LABEL_13;
  }

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DB0, &qword_1E65F10F8);
  if (*(*(v46 - 8) + 84) == a3)
  {
    v10 = v46;
    v14 = *(v46 - 8);
    v15 = a4[59];
    goto LABEL_13;
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DD0, &qword_1E65F1100);
  if (*(*(v47 - 8) + 84) == a3)
  {
    v10 = v47;
    v14 = *(v47 - 8);
    v15 = a4[60];
    goto LABEL_13;
  }

  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DF8, &qword_1E65F1110);
  if (*(*(v48 - 8) + 84) == a3)
  {
    v10 = v48;
    v14 = *(v48 - 8);
    v15 = a4[65];
    goto LABEL_13;
  }

  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E28, &qword_1E65F1118);
  if (*(*(v49 - 8) + 84) == a3)
  {
    v10 = v49;
    v14 = *(v49 - 8);
    v15 = a4[66];
    goto LABEL_13;
  }

  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128);
  if (*(*(v50 - 8) + 84) == a3)
  {
    v10 = v50;
    v14 = *(v50 - 8);
    v15 = a4[69];
    goto LABEL_13;
  }

  v51 = sub_1E65E39E8();
  if (*(*(v51 - 8) + 84) == a3)
  {
    v10 = v51;
    v14 = *(v51 - 8);
    v15 = a4[70];
    goto LABEL_13;
  }

  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E80, &qword_1E65F1130);
  if (*(*(v52 - 8) + 84) == a3)
  {
    v10 = v52;
    v14 = *(v52 - 8);
    v15 = a4[71];
    goto LABEL_13;
  }

  v53 = sub_1E65E1D58();
  if (*(*(v53 - 8) + 84) == a3)
  {
    v10 = v53;
    v14 = *(v53 - 8);
    v15 = a4[72];
    goto LABEL_13;
  }

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
  if (*(*(v54 - 8) + 84) == a3)
  {
    v10 = v54;
    v14 = *(v54 - 8);
    v15 = a4[73];
    goto LABEL_13;
  }

  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074EE0, &qword_1E65F1148);
  if (*(*(v55 - 8) + 84) == a3)
  {
    v10 = v55;
    v14 = *(v55 - 8);
    v15 = a4[74];
    goto LABEL_13;
  }

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F00, &unk_1E66062A0);
  if (*(*(v56 - 8) + 84) == a3)
  {
    v10 = v56;
    v14 = *(v56 - 8);
    v15 = a4[75];
    goto LABEL_13;
  }

  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  if (*(*(v57 - 8) + 84) == a3)
  {
    v10 = v57;
    v14 = *(v57 - 8);
    v15 = a4[77];
    goto LABEL_13;
  }

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FB8, &qword_1E65EF148);
  if (*(*(v58 - 8) + 84) == a3)
  {
    v10 = v58;
    v14 = *(v58 - 8);
    v15 = a4[80];
    goto LABEL_13;
  }

  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FC0, &qword_1E65EF150);
  v60 = *(*(v59 - 8) + 56);
  v61 = a1 + a4[84];

  return v60(v61, a2, a2, v59);
}

uint64_t sub_1E5E08E80(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E65DE668();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745E0, &qword_1E65F0F90);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[10];
    goto LABEL_13;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v19 = *(a1 + a3[11]);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0746C8, &qword_1E65F0FB0);
    if (*(*(v20 - 8) + 84) == a2)
    {
      v8 = v20;
      v12 = *(v20 - 8);
      v13 = a3[12];
      goto LABEL_13;
    }

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0746E8, &qword_1E65F0FB8);
    if (*(*(v21 - 8) + 84) == a2)
    {
      v8 = v21;
      v12 = *(v21 - 8);
      v13 = a3[13];
      goto LABEL_13;
    }

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074858, &qword_1E65F1008);
    if (*(*(v22 - 8) + 84) == a2)
    {
      v8 = v22;
      v12 = *(v22 - 8);
      v13 = a3[18];
      goto LABEL_13;
    }

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741C8, &qword_1E65EFB48);
    if (*(*(v23 - 8) + 84) == a2)
    {
      v8 = v23;
      v12 = *(v23 - 8);
      v13 = a3[19];
      goto LABEL_13;
    }

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
    if (*(*(v24 - 8) + 84) == a2)
    {
      v8 = v24;
      v12 = *(v24 - 8);
      v13 = a3[20];
      goto LABEL_13;
    }

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F68, &qword_1E65EA398);
    if (*(*(v25 - 8) + 84) == a2)
    {
      v8 = v25;
      v12 = *(v25 - 8);
      v13 = a3[21];
      goto LABEL_13;
    }

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
    if (*(*(v26 - 8) + 84) == a2)
    {
      v8 = v26;
      v12 = *(v26 - 8);
      v13 = a3[22];
      goto LABEL_13;
    }

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E68, &qword_1E65EA160);
    if (*(*(v27 - 8) + 84) == a2)
    {
      v8 = v27;
      v12 = *(v27 - 8);
      v13 = a3[23];
      goto LABEL_13;
    }

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0749A0, &qword_1E65F1038);
    if (*(*(v28 - 8) + 84) == a2)
    {
      v8 = v28;
      v12 = *(v28 - 8);
      v13 = a3[26];
      goto LABEL_13;
    }

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0);
    if (*(*(v29 - 8) + 84) == a2)
    {
      v8 = v29;
      v12 = *(v29 - 8);
      v13 = a3[27];
      goto LABEL_13;
    }

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD8, &unk_1E65F84F0);
    if (*(*(v30 - 8) + 84) == a2)
    {
      v8 = v30;
      v12 = *(v30 - 8);
      v13 = a3[29];
      goto LABEL_13;
    }

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741F0, &unk_1E65EFC10);
    if (*(*(v31 - 8) + 84) == a2)
    {
      v8 = v31;
      v12 = *(v31 - 8);
      v13 = a3[31];
      goto LABEL_13;
    }

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072800, &qword_1E65EBDF8);
    if (*(*(v32 - 8) + 84) == a2)
    {
      v8 = v32;
      v12 = *(v32 - 8);
      v13 = a3[36];
      goto LABEL_13;
    }

    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
    if (*(*(v33 - 8) + 84) == a2)
    {
      v8 = v33;
      v12 = *(v33 - 8);
      v13 = a3[38];
      goto LABEL_13;
    }

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074B30, &qword_1E65F1088);
    if (*(*(v34 - 8) + 84) == a2)
    {
      v8 = v34;
      v12 = *(v34 - 8);
      v13 = a3[42];
      goto LABEL_13;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BD8, &qword_1E65F10B0);
    if (*(*(v35 - 8) + 84) == a2)
    {
      v8 = v35;
      v12 = *(v35 - 8);
      v13 = a3[45];
      goto LABEL_13;
    }

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BF8, &qword_1E65F10B8);
    if (*(*(v36 - 8) + 84) == a2)
    {
      v8 = v36;
      v12 = *(v36 - 8);
      v13 = a3[46];
      goto LABEL_13;
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C28, &qword_1E65F10C0);
    if (*(*(v37 - 8) + 84) == a2)
    {
      v8 = v37;
      v12 = *(v37 - 8);
      v13 = a3[47];
      goto LABEL_13;
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C70, &qword_1E65F10D0);
    if (*(*(v38 - 8) + 84) == a2)
    {
      v8 = v38;
      v12 = *(v38 - 8);
      v13 = a3[49];
      goto LABEL_13;
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
    if (*(*(v39 - 8) + 84) == a2)
    {
      v8 = v39;
      v12 = *(v39 - 8);
      v13 = a3[50];
      goto LABEL_13;
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074068, &qword_1E65EF228);
    if (*(*(v40 - 8) + 84) == a2)
    {
      v8 = v40;
      v12 = *(v40 - 8);
      v13 = a3[51];
      goto LABEL_13;
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F98, &qword_1E65EF138);
    if (*(*(v41 - 8) + 84) == a2)
    {
      v8 = v41;
      v12 = *(v41 - 8);
      v13 = a3[53];
      goto LABEL_13;
    }

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CF0, &qword_1E65F10D8);
    if (*(*(v42 - 8) + 84) == a2)
    {
      v8 = v42;
      v12 = *(v42 - 8);
      v13 = a3[54];
      goto LABEL_13;
    }

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073560, &qword_1E65ED560);
    if (*(*(v43 - 8) + 84) == a2)
    {
      v8 = v43;
      v12 = *(v43 - 8);
      v13 = a3[55];
      goto LABEL_13;
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074D30, &qword_1E65F10E0);
    if (*(*(v44 - 8) + 84) == a2)
    {
      v8 = v44;
      v12 = *(v44 - 8);
      v13 = a3[56];
      goto LABEL_13;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745B0, &qword_1E65F0F38);
    if (*(*(v45 - 8) + 84) == a2)
    {
      v8 = v45;
      v12 = *(v45 - 8);
      v13 = a3[57];
      goto LABEL_13;
    }

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DB0, &qword_1E65F10F8);
    if (*(*(v46 - 8) + 84) == a2)
    {
      v8 = v46;
      v12 = *(v46 - 8);
      v13 = a3[59];
      goto LABEL_13;
    }

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DD0, &qword_1E65F1100);
    if (*(*(v47 - 8) + 84) == a2)
    {
      v8 = v47;
      v12 = *(v47 - 8);
      v13 = a3[60];
      goto LABEL_13;
    }

    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DF8, &qword_1E65F1110);
    if (*(*(v48 - 8) + 84) == a2)
    {
      v8 = v48;
      v12 = *(v48 - 8);
      v13 = a3[65];
      goto LABEL_13;
    }

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E28, &qword_1E65F1118);
    if (*(*(v49 - 8) + 84) == a2)
    {
      v8 = v49;
      v12 = *(v49 - 8);
      v13 = a3[66];
      goto LABEL_13;
    }

    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128);
    if (*(*(v50 - 8) + 84) == a2)
    {
      v8 = v50;
      v12 = *(v50 - 8);
      v13 = a3[69];
      goto LABEL_13;
    }

    v51 = sub_1E65E39E8();
    if (*(*(v51 - 8) + 84) == a2)
    {
      v8 = v51;
      v12 = *(v51 - 8);
      v13 = a3[70];
      goto LABEL_13;
    }

    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E80, &qword_1E65F1130);
    if (*(*(v52 - 8) + 84) == a2)
    {
      v8 = v52;
      v12 = *(v52 - 8);
      v13 = a3[71];
      goto LABEL_13;
    }

    v53 = sub_1E65E1D58();
    if (*(*(v53 - 8) + 84) == a2)
    {
      v8 = v53;
      v12 = *(v53 - 8);
      v13 = a3[72];
      goto LABEL_13;
    }

    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
    if (*(*(v54 - 8) + 84) == a2)
    {
      v8 = v54;
      v12 = *(v54 - 8);
      v13 = a3[73];
      goto LABEL_13;
    }

    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074EE0, &qword_1E65F1148);
    if (*(*(v55 - 8) + 84) == a2)
    {
      v8 = v55;
      v12 = *(v55 - 8);
      v13 = a3[74];
      goto LABEL_13;
    }

    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F00, &unk_1E66062A0);
    if (*(*(v56 - 8) + 84) == a2)
    {
      v8 = v56;
      v12 = *(v56 - 8);
      v13 = a3[75];
      goto LABEL_13;
    }

    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
    if (*(*(v57 - 8) + 84) == a2)
    {
      v8 = v57;
      v12 = *(v57 - 8);
      v13 = a3[77];
      goto LABEL_13;
    }

    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FB8, &qword_1E65EF148);
    if (*(*(v58 - 8) + 84) == a2)
    {
      v8 = v58;
      v12 = *(v58 - 8);
      v13 = a3[80];
      goto LABEL_13;
    }

    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FC0, &qword_1E65EF150);
    v60 = *(*(v59 - 8) + 48);
    v61 = a1 + a3[84];

    return v60(v61, a2, v59);
  }
}

uint64_t sub_1E5E09E10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5E09E70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E5E09ED0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0792A8, &qword_1E6601438);
    v3 = sub_1E65E6A28();
    for (i = a1 + 32; ; i += 56)
    {
      sub_1E5DFD1CC(i, v14, &qword_1ED0794B8, &qword_1E6601600);
      v5 = v14[0];
      result = sub_1E5E008AC(v14[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v8 = (v3[7] + 48 * result);
      v9 = v15;
      v10 = v17;
      v8[1] = v16;
      v8[2] = v10;
      *v8 = v9;
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

unint64_t sub_1E5E09FFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B880, &qword_1E660D300);
    v3 = sub_1E65E6A28();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1E5E1B97C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1E5E0A0F0(uint64_t a1)
{
  v1 = sub_1E65DDE68();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D7F18();
  if (v74 < 2u)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A558, &unk_1E6606AA0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1E6606A90;
    v6 = type metadata accessor for WelcomeAcknowledgementDetour(0);
    swift_allocObject();

    v8 = sub_1E5E0ACD8(v7);

    *(v5 + 56) = v6;
    *(v5 + 64) = &off_1F5FAEAF0;
    *(v5 + 32) = v8;
    v9 = type metadata accessor for MetricEnterEventDetour();
    v10 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
    sub_1E65D7F18();
    *(v10 + 16) = v74;
    sub_1E65D7F18();
    *(v10 + 32) = v74;
    *(v5 + 96) = v9;
    *(v5 + 104) = &protocol witness table for MetricEnterEventDetour;
    *(v5 + 72) = v10;
    v11 = type metadata accessor for AnalyticsConsentDetour(0);
    swift_allocObject();

    v13 = sub_1E5E0B19C(v12);

    *(v5 + 136) = v11;
    *(v5 + 144) = &off_1F5FAE148;
    *(v5 + 112) = v13;
    v14 = type metadata accessor for NotificationsConsentDetour(0);
    swift_allocObject();

    v16 = sub_1E5E0B5F4(v15);
    *(v5 + 176) = v14;
    *(v5 + 184) = &off_1F5FB0060;
    *(v5 + 152) = v16;
    v17 = type metadata accessor for AccountUpgradeDetour(0);
    v18 = swift_allocObject();
    swift_defaultActor_initialize();
    v19 = OBJC_IVAR____TtC10Blackbeard20AccountUpgradeDetour_state;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
    (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
    (*(v2 + 104))(v4, *MEMORY[0x1E69CAB30], v1);
    LOBYTE(v74) = 0;
    sub_1E65DDC88();
    *(v5 + 216) = v17;
    *(v5 + 224) = &off_1F5FC45F8;
    *(v5 + 192) = v18;
    *(v5 + 256) = &type metadata for SiriSessionDetour;
    *(v5 + 264) = &off_1F5FC23D8;
    v21 = type metadata accessor for SharePlaySessionDetour(0);
    v22 = objc_allocWithZone(v21);

    v24 = sub_1E5E0BB1C(v23);

    *(v5 + 296) = v21;
    *(v5 + 304) = &off_1F5FA9D98;
    *(v5 + 272) = v24;
    v25 = type metadata accessor for AudioLanguageEngagementSheetDetour(0);
    v26 = swift_allocObject();
    swift_defaultActor_initialize();
    v27 = OBJC_IVAR____TtC10Blackbeard34AudioLanguageEngagementSheetDetour_state;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EE0, &qword_1E65EA1E0);
    v29 = *(*(v28 - 8) + 56);
    v29(v26 + v27, 1, 1, v28);
    *(v5 + 336) = v25;
    *(v5 + 344) = &off_1F5FA98C8;
    *(v5 + 312) = v26;
    v30 = type metadata accessor for OnboardingDetour(0);
    v31 = swift_allocObject();
    swift_defaultActor_initialize();
    v29(v31 + OBJC_IVAR____TtC10Blackbeard16OnboardingDetour_state, 1, 1, v28);
    *(v31 + OBJC_IVAR____TtC10Blackbeard16OnboardingDetour_hasPresentedOnboardingThisLaunch) = 0;
    *(v5 + 376) = v30;
    *(v5 + 384) = &off_1F5FBED90;
    *(v5 + 352) = v31;
    v32 = type metadata accessor for PersonalizationPrivacyConsentDetour(0);
    swift_allocObject();

    v34 = sub_1E5E0C25C(v33);

    *(v5 + 416) = v32;
    *(v5 + 424) = &off_1F5FA96E8;
    *(v5 + 392) = v34;
    v35 = type metadata accessor for MetricAccountEventDetour();
    v36 = swift_allocObject();
    sub_1E65D7F18();
    *(v36 + 16) = v74;
    sub_1E65D7F18();
    *(v36 + 32) = v74;
    *(v5 + 456) = v35;
    *(v5 + 464) = &protocol witness table for MetricAccountEventDetour;
    *(v5 + 432) = v36;
    v37 = type metadata accessor for AwardToastDetour();
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v5 + 496) = v37;
    *(v5 + 504) = &off_1F5FC5370;
    *(v5 + 472) = v38;
    *(v5 + 536) = &type metadata for PurchaseDetour;
    v39 = (v5 + 544);
LABEL_5:
    *v39 = &off_1F5FB4F60;
    return v5;
  }

  if (v74 == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A558, &unk_1E6606AA0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1E6606A80;
    v40 = type metadata accessor for WelcomeAcknowledgementDetour(0);
    swift_allocObject();

    v42 = sub_1E5E0ACD8(v41);

    *(v5 + 56) = v40;
    *(v5 + 64) = &off_1F5FAEAF0;
    *(v5 + 32) = v42;
    v43 = type metadata accessor for MetricEnterEventDetour();
    v44 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
    sub_1E65D7F18();
    *(v44 + 16) = v74;
    sub_1E65D7F18();
    *(v44 + 32) = v74;
    *(v5 + 96) = v43;
    *(v5 + 104) = &protocol witness table for MetricEnterEventDetour;
    *(v5 + 72) = v44;
    v45 = type metadata accessor for RemoteDisplayDetour();
    swift_allocObject();

    v47 = sub_1E627F0D4(v46);

    *(v5 + 136) = v45;
    *(v5 + 144) = &off_1F5FB7130;
    *(v5 + 112) = v47;
    v48 = type metadata accessor for RemoteBrowsingDetour();
    v49 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v5 + 176) = v48;
    *(v5 + 184) = &off_1F5FBF0A0;
    *(v5 + 152) = v49;
    swift_allocObject();

    v51 = sub_1E5E0ACD8(v50);

    *(v5 + 216) = v40;
    *(v5 + 224) = &off_1F5FAEAF0;
    *(v5 + 192) = v51;
    v52 = type metadata accessor for AnalyticsConsentDetour(0);
    swift_allocObject();

    v54 = sub_1E5E0B19C(v53);

    *(v5 + 256) = v52;
    *(v5 + 264) = &off_1F5FAE148;
    *(v5 + 232) = v54;
    *(v5 + 296) = &type metadata for RemoteBrowsingSiriSessionDetour;
    *(v5 + 304) = &off_1F5FB7070;
    v55 = type metadata accessor for SharePlaySessionDetour(0);
    v56 = objc_allocWithZone(v55);

    v58 = sub_1E5E0BB1C(v57);

    *(v5 + 336) = v55;
    *(v5 + 344) = &off_1F5FA9D98;
    *(v5 + 312) = v58;
    v59 = type metadata accessor for AudioLanguageEngagementSheetDetour(0);
    v60 = swift_allocObject();
    swift_defaultActor_initialize();
    v61 = OBJC_IVAR____TtC10Blackbeard34AudioLanguageEngagementSheetDetour_state;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EE0, &qword_1E65EA1E0);
    v63 = *(*(v62 - 8) + 56);
    v63(v60 + v61, 1, 1, v62);
    *(v5 + 376) = v59;
    *(v5 + 384) = &off_1F5FA98C8;
    *(v5 + 352) = v60;
    v64 = type metadata accessor for OnboardingDetour(0);
    v65 = swift_allocObject();
    swift_defaultActor_initialize();
    v63(v65 + OBJC_IVAR____TtC10Blackbeard16OnboardingDetour_state, 1, 1, v62);
    *(v65 + OBJC_IVAR____TtC10Blackbeard16OnboardingDetour_hasPresentedOnboardingThisLaunch) = 0;
    *(v5 + 416) = v64;
    *(v5 + 424) = &off_1F5FBED90;
    *(v5 + 392) = v65;
    v66 = type metadata accessor for PersonalizationPrivacyConsentDetour(0);
    swift_allocObject();

    v68 = sub_1E5E0C25C(v67);

    *(v5 + 456) = v66;
    *(v5 + 464) = &off_1F5FA96E8;
    *(v5 + 432) = v68;
    v69 = type metadata accessor for MetricAccountEventDetour();
    v70 = swift_allocObject();
    sub_1E65D7F18();
    *(v70 + 16) = v74;
    sub_1E65D7F18();
    *(v70 + 32) = v74;
    *(v5 + 496) = v69;
    *(v5 + 504) = &protocol witness table for MetricAccountEventDetour;
    *(v5 + 472) = v70;
    v71 = type metadata accessor for AwardToastDetour();
    v72 = swift_allocObject();
    *(v72 + 16) = 0;
    *(v5 + 536) = v71;
    *(v5 + 544) = &off_1F5FC5370;
    *(v5 + 512) = v72;
    *(v5 + 576) = &type metadata for PurchaseDetour;
    v39 = (v5 + 584);
    goto LABEL_5;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

void sub_1E5E0AB08(uint64_t a1)
{
  type metadata accessor for WelcomeAcknowledgementDetour.State(319);
  if (v1 <= 0x3F)
  {
    sub_1E5DF0444();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1E5E0AC00(uint64_t a1)
{
  sub_1E5E0AC58(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1E5E0AC58(uint64_t a1)
{
  if (!qword_1EE2D47F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    type metadata accessor for RouteDestination(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D47F8);
    }
  }
}

uint64_t sub_1E5E0ACD8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E65DDE68();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v8 = OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour_state;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  (*(*(v9 - 8) + 56))(v2 + v8, 1, 1, v9);
  v10 = *(v5 + 104);
  v10(v7, *MEMORY[0x1E69CAB98], v4);
  LOBYTE(v12[0]) = 1;
  sub_1E65DDC88();
  v10(v7, *MEMORY[0x1E69CAB60], v4);
  LOBYTE(v12[0]) = 0;
  sub_1E65DDC88();
  *(v2 + OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour_dependencies) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  *(v2 + OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour_eventHub) = v12[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBC0, &qword_1E65F1460);
  sub_1E65D7F18();
  sub_1E5DF599C(v12, v2 + OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour_subscriptionCache);
  sub_1E65DDEB8();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v2 + OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour_subscriptionToken) = sub_1E65DDEA8();
  swift_getObjectType();
  sub_1E65DE1B8();
  swift_allocObject();
  swift_weakInit();
  sub_1E65DDDF8();

  __swift_destroy_boxed_opaque_existential_1(v12);
  return v2;
}

uint64_t sub_1E5E0B010()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_1E5E0B08C(uint64_t a1)
{
  type metadata accessor for AnalyticsConsentDetour.State(319);
  if (v1 <= 0x3F)
  {
    sub_1E5DF0444();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1E5E0B19C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E65DDE68();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v8 = OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour_state;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  (*(*(v9 - 8) + 56))(v2 + v8, 1, 1, v9);
  v10 = *(v5 + 104);
  v10(v7, *MEMORY[0x1E69CAB70], v4);
  LOBYTE(v15[0]) = 1;
  sub_1E65DDC88();
  v10(v7, *MEMORY[0x1E69CAB90], v4);
  LOBYTE(v15[0]) = 0;
  sub_1E65DDC88();
  *(v2 + OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour_dependencies) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  v11 = v15[1];
  v12 = (v2 + OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour_eventHub);
  *v12 = v15[0];
  v12[1] = v11;
  sub_1E65DDEB8();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v2 + OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour_subscriptionToken) = sub_1E65DDEA8();
  swift_getObjectType();
  sub_1E65DE138();
  swift_allocObject();
  swift_weakInit();
  sub_1E65DDDF8();

  __swift_destroy_boxed_opaque_existential_1(v15);
  return v2;
}

uint64_t sub_1E5E0B494()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_1E5E0B50C(uint64_t a1)
{
  type metadata accessor for NotificationsConsentDetour.State(319);
  if (v1 <= 0x3F)
  {
    sub_1E5DF0444();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1E5E0B5F4(uint64_t a1)
{
  v10 = a1;
  v2 = sub_1E65DDE68();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v6 = OBJC_IVAR____TtC10Blackbeard26NotificationsConsentDetour_state;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = *(v3 + 104);
  v8(v5, *MEMORY[0x1E69CAB80], v2);
  v13 = 1;
  sub_1E65DDC88();
  v8(v5, *MEMORY[0x1E69CAB68], v2);
  v12 = 0;
  sub_1E65DDC88();
  v8(v5, *MEMORY[0x1E69CABA0], v2);
  v11 = 1;
  sub_1E65DDC88();
  *(v1 + OBJC_IVAR____TtC10Blackbeard26NotificationsConsentDetour_dependencies) = v10;
  return v1;
}

void sub_1E5E0B85C(uint64_t a1)
{
  type metadata accessor for AccountUpgradeDetour.State(319);
  if (v1 <= 0x3F)
  {
    sub_1E5DF0444();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1E5E0B974(uint64_t a1)
{
  result = type metadata accessor for SharePlaySessionDetour.State(319);
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

uint64_t sub_1E5E0BA2C(uint64_t a1)
{
  sub_1E5E0BA84(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1E5E0BA84(uint64_t a1)
{
  if (!qword_1EE2D70F8)
  {
    sub_1E65D8D48();
    type metadata accessor for AppComposer(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2D70F8);
    }
  }
}

id sub_1E5E0BB1C(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_state;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722E0, &qword_1E65EAAA0);
  (*(*(v5 - 8) + 56))(&v2[v4], 1, 1, v5);
  *&v2[OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  v6 = &v2[OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_eventHub];
  *&v2[OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_eventHub] = v11[1];
  v7 = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) init];
  *&v7[OBJC_IVAR____TtC10Blackbeard24MarketingPurchaseHandler_eventHub + 8] = *(v6 + 1);
  swift_unknownObjectWeakAssign();
  v8 = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) init];
  *&v2[OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_dynamicOfferCoordinator] = v8;
  *&v8[OBJC_IVAR____TtC10Blackbeard32MarketingDynamicOfferCoordinator_eventHub + 8] = *(v6 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v9 = [objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator()) init];

  *&v2[OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_webUserInterfaceCoordinator] = v9;
  v11[0].receiver = v2;
  v11[0].super_class = type metadata accessor for SharePlaySessionDetour(0);
  return [(objc_super *)v11 init];
}

uint64_t sub_1E5E0BEB0(uint64_t a1)
{
  result = type metadata accessor for AudioLanguageEngagementSheetDetour.State(319);
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

void sub_1E5E0BF4C(uint64_t a1)
{
  if (!qword_1EE2D4800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED071EE8, &qword_1E65F59D0);
    type metadata accessor for RouteDestination(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2D4800);
    }
  }
}

uint64_t sub_1E5E0BFF0(uint64_t a1)
{
  sub_1E5E0BF4C(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1E5E0C088(uint64_t a1)
{
  result = type metadata accessor for OnboardingDetour.State(319);
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

void sub_1E5E0C16C(uint64_t a1)
{
  type metadata accessor for PersonalizationPrivacyConsentDetour.State(319);
  if (v1 <= 0x3F)
  {
    sub_1E5DF0444();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1E5E0C25C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E65DDE68();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v8 = OBJC_IVAR____TtC10Blackbeard35PersonalizationPrivacyConsentDetour_state;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  (*(*(v9 - 8) + 56))(v2 + v8, 1, 1, v9);
  v10 = *(v5 + 104);
  v10(v7, *MEMORY[0x1E69CABA8], v4);
  LOBYTE(v15[0]) = 1;
  sub_1E65DDC88();
  v10(v7, *MEMORY[0x1E69CABB8], v4);
  LOBYTE(v15[0]) = 0;
  sub_1E65DDC88();
  *(v2 + OBJC_IVAR____TtC10Blackbeard35PersonalizationPrivacyConsentDetour_dependencies) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  v11 = v15[1];
  v12 = (v2 + OBJC_IVAR____TtC10Blackbeard35PersonalizationPrivacyConsentDetour_eventHub);
  *v12 = v15[0];
  v12[1] = v11;
  sub_1E65DDEB8();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v2 + OBJC_IVAR____TtC10Blackbeard35PersonalizationPrivacyConsentDetour_subscriptionToken) = sub_1E65DDEA8();
  swift_getObjectType();
  sub_1E65DE2B8();
  swift_allocObject();
  swift_weakInit();
  sub_1E65DDDF8();

  __swift_destroy_boxed_opaque_existential_1(v15);
  return v2;
}

uint64_t sub_1E5E0C554()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5E0C5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = type metadata accessor for AppComposer(0);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for NavigationControllerRoutingContext(0);
  MEMORY[0x1EEE9AC00](v46);
  v10 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A4D0, &qword_1E6606798);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v47 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v45 - v17;
  *(a4 + OBJC_IVAR____TtC10Blackbeard9AppRouter_routingContexts) = MEMORY[0x1E69E7CC8];
  *(a4 + OBJC_IVAR____TtC10Blackbeard9AppRouter_changeObserver) = 0;
  type metadata accessor for TaskScheduler(0);
  v19 = swift_allocObject();
  swift_defaultActor_initialize();
  v20 = OBJC_IVAR____TtC10Blackbeard13TaskScheduler_state;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726D0, &qword_1E65EBAB0);
  (*(*(v21 - 8) + 56))(v19 + v20, 1, 1, v21);
  *(v19 + OBJC_IVAR____TtC10Blackbeard13TaskScheduler_scheduledTasks) = MEMORY[0x1E69E7CC0];
  *(v19 + OBJC_IVAR____TtC10Blackbeard13TaskScheduler_vouchers) = MEMORY[0x1E69E7CD0];
  *(v19 + OBJC_IVAR____TtC10Blackbeard13TaskScheduler_scheduledTaskLifetimeTotal) = 0;
  v22 = *(a2 + 16);
  v48 = a3;
  if (v22)
  {
    sub_1E5DFAA48(a1, v18, type metadata accessor for AppComposer);
    v23 = type metadata accessor for RouteDetourResolver(0);
    v24 = &v18[*(v23 + 20)];
    *v24 = a3;
    *(v24 + 1) = &off_1F5FB2698;
    *&v18[*(v23 + 24)] = a2;
    (*(*(v23 - 8) + 56))(v18, 0, 1, v23);
    swift_unknownObjectRetain();
  }

  else
  {

    v23 = type metadata accessor for RouteDetourResolver(0);
    (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  }

  v25 = swift_allocObject();
  *(v25 + 24) = *(a1 + *(v49 + 32) + 8);
  swift_unknownObjectWeakInit();
  v26 = type metadata accessor for PresentationPublisher();
  v27 = objc_allocWithZone(v26);
  v28 = &v27[OBJC_IVAR____TtC10Blackbeard21PresentationPublisher_publishPresentationAction];
  *v28 = sub_1E6347630;
  v28[1] = v25;
  v54.receiver = v27;
  v54.super_class = v26;
  *(a4 + 16) = objc_msgSendSuper2(&v54, sel_init);
  v29 = [objc_allocWithZone(type metadata accessor for NavigationController()) init];
  v49 = a1;
  sub_1E5DFAA48(a1, v50, type metadata accessor for AppComposer);
  sub_1E5DFD1CC(v18, v16, &qword_1ED07A4D0, &qword_1E6606798);
  type metadata accessor for RouteDetourResolver(0);
  v30 = *(*(v23 - 8) + 48);
  if (v30(v16, 1, v23) == 1)
  {
    sub_1E5DFE50C(v16, &qword_1ED07A4D0, &qword_1E6606798);
    v51 = 0u;
    v52 = 0u;
    v53 = 0;
  }

  else
  {
    *(&v52 + 1) = v23;
    v53 = &off_1F5FB48B8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v51);
    sub_1E5DFAC50(v16, boxed_opaque_existential_1, type metadata accessor for RouteDetourResolver);
  }

  v32 = *(a4 + 16);
  v33 = sub_1E5E0E7A0(&unk_1EE2DB030, type metadata accessor for TaskScheduler, &unk_1E65EBAD0);
  *v10 = v29;
  v34 = v46;
  sub_1E5DFAC50(v50, v10 + *(v46 + 20), type metadata accessor for AppComposer);
  v35 = (v10 + v34[6]);
  *v35 = v19;
  v35[1] = v33;
  v36 = v10 + v34[7];
  v37 = v52;
  *v36 = v51;
  *(v36 + 1) = v37;
  *(v36 + 4) = v53;
  *(v10 + v34[8]) = v32;
  sub_1E5DFAC50(v10, a4 + OBJC_IVAR____TtC10Blackbeard9AppRouter_offlineRoutingContext, type metadata accessor for NavigationControllerRoutingContext);
  v38 = (a4 + OBJC_IVAR____TtC10Blackbeard9AppRouter_taskScheduler);
  *v38 = v19;
  v38[1] = v33;
  v39 = v49;
  sub_1E5DFAA48(v49, a4 + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer, type metadata accessor for AppComposer);
  v40 = v47;
  sub_1E5DFD1CC(v18, v47, &qword_1ED07A4D0, &qword_1E6606798);
  if (v30(v40, 1, v23) == 1)
  {
    swift_unknownObjectRetain();

    sub_1E5DFE50C(v18, &qword_1ED07A4D0, &qword_1E6606798);

    sub_1E5E09E70(v39, type metadata accessor for AppComposer);
    sub_1E5DFE50C(v40, &qword_1ED07A4D0, &qword_1E6606798);
    v51 = 0u;
    v52 = 0u;
    v53 = 0;
  }

  else
  {
    *(&v52 + 1) = v23;
    v53 = &off_1F5FB48B8;
    v41 = __swift_allocate_boxed_opaque_existential_1(&v51);
    sub_1E5DFAC50(v40, v41, type metadata accessor for RouteDetourResolver);
    swift_unknownObjectRetain();

    sub_1E5DFE50C(v18, &qword_1ED07A4D0, &qword_1E6606798);
    sub_1E5E09E70(v39, type metadata accessor for AppComposer);
  }

  v42 = a4 + OBJC_IVAR____TtC10Blackbeard9AppRouter_detourResolver;
  v43 = v52;
  *v42 = v51;
  *(v42 + 16) = v43;
  *(v42 + 32) = v53;
  return a4;
}

uint64_t sub_1E5E0CCD4()
{
  MEMORY[0x1E694F2D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t type metadata accessor for RouteDetourResolver(uint64_t a1)
{
  result = qword_1EE2D9900;
  if (!qword_1EE2D9900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5E0CD5C(uint64_t a1)
{
  type metadata accessor for AppComposer(319);
  if (v1 <= 0x3F)
  {
    sub_1E5E0CDF8();
    if (v2 <= 0x3F)
    {
      sub_1E5E0CE58(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1E5E0CDF8()
{
  result = qword_1EE2D8FB0;
  if (!qword_1EE2D8FB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE2D8FB0);
  }

  return result;
}

void sub_1E5E0CE58(uint64_t a1)
{
  if (!qword_1EE2D4898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076D10, &unk_1E65F7FB0);
    v1 = sub_1E65E5FB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D4898);
    }
  }
}

uint64_t sub_1E5E0CEFC(uint64_t a1)
{
  result = type metadata accessor for TaskScheduler.State(319);
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

void sub_1E5E0CFB4(uint64_t a1)
{
  if (!qword_1EE2DB108[0])
  {
    type metadata accessor for TaskScheduler.ScheduledTask(255);
    sub_1E65D76F8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0726D8, &unk_1E65EBAC0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, qword_1EE2DB108);
    }
  }
}

uint64_t sub_1E5E0D04C(uint64_t a1)
{
  sub_1E5E0CFB4(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1E5E0D0C4(uint64_t a1)
{
  sub_1E5E0D158();
  if (v1 <= 0x3F)
  {
    sub_1E5E0D1A8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1E5E0D158()
{
  result = qword_1EE2D4448;
  if (!qword_1EE2D4448)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE2D4448);
  }

  return result;
}

void sub_1E5E0D1A8(uint64_t a1)
{
  if (!qword_1EE2D47E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07B740, &qword_1E65ED600);
    v1 = sub_1E65E6008();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2D47E8);
    }
  }
}

uint64_t sub_1E5E0D234(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E5E0D2F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AppComposer(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

char *sub_1E5E0D3F8()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC10Blackbeard20NavigationController_pictureInPictureSurrogate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC10Blackbeard20NavigationController_palette] = 0;
  *&v0[OBJC_IVAR____TtC10Blackbeard20NavigationController_paletteViewController] = 0;
  v2 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
  {
    sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CD0];
  }

  *&v0[OBJC_IVAR____TtC10Blackbeard20NavigationController_menuCommands] = v3;
  *&v0[OBJC_IVAR____TtC10Blackbeard20NavigationController_pendingPresentation] = v2;
  v25.receiver = v0;
  v25.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, 0, 0);
  v5 = qword_1EE2D7178;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE2EA110;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = objc_allocWithZone(BBMenuCommand);
  aBlock[4] = sub_1E64C3A54;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E638D4E4;
  aBlock[3] = &block_descriptor_22;
  v11 = _Block_copy(aBlock);
  v23[4] = sub_1E64C3A5C;
  v23[5] = v9;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1E5E05AB0;
  v23[3] = &block_descriptor_11;
  v12 = _Block_copy(v23);

  v13 = [v10 initWithSelector:v7 requireEnabled:v11 handler:v12];
  _Block_release(v11);
  _Block_release(v12);

  swift_beginAccess();
  sub_1E5E0DD94(v23, v13);
  swift_endAccess();

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v14 = sub_1E65E3B68();
  __swift_project_value_buffer(v14, qword_1EE2EA2A0);
  v15 = sub_1E65E3B48();
  v16 = sub_1E65E6338();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 141558274;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2080;
    v23[0] = v6;
    v19 = sub_1E65E5CE8();
    v21 = sub_1E5DFD4B0(v19, v20, aBlock);

    *(v17 + 14) = v21;
    _os_log_impl(&dword_1E5DE9000, v15, v16, "[%{mask.hash}s] init", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1E694F1C0](v18, -1, -1);
    MEMORY[0x1E694F1C0](v17, -1, -1);
  }

  return v6;
}

uint64_t sub_1E5E0D80C()
{
  MEMORY[0x1E694F2D0](v0 + 16);

  return swift_deallocObject();
}

void sub_1E5E0D844()
{
  v0 = sub_1E65E5C48();
  v1 = NSSelectorFromString(v0);

  qword_1EE2EA110 = v1;
}

uint64_t sub_1E5E0D894(uint64_t *a1)
{
  v2 = *(sub_1E65D74E8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E636B280(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1E5E0D93C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1E5E0D93C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E65E6BA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1E65D74E8();
        v6 = sub_1E65E5F98();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1E65D74E8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1E62FD674(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E5E0DA6C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E5E0DA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v42 = sub_1E65D74E8();
  v9 = *(v42 - 8);
  v10 = MEMORY[0x1EEE9AC00](v42);
  v47 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v37 = a2;
  if (a3 != a2)
  {
    v50 = &v35 - v16;
    v17 = *a4;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v20 = *(v18 + 56);
    v48 = v19;
    v49 = (v18 - 8);
    v21 = (v17 + v20 * (a3 - 1));
    v43 = -v20;
    v44 = (v18 + 16);
    v22 = a1 - a3;
    v45 = v17;
    v46 = v18;
    v36 = v20;
    v23 = v17 + v20 * a3;
    v24 = v4;
    while (2)
    {
      v40 = v21;
      v41 = a3;
      v38 = v23;
      v39 = v22;
      v25 = v42;
      while (1)
      {
        v26 = v50;
        v27 = v48;
        v48(v50, v23, v25);
        v27(v14, v21, v25);
        v28 = sub_1E5DF7E0C(v26, v14);
        v51 = v24;
        if (v24)
        {
          v34 = *v49;
          (*v49)(v14, v25);
          return (v34)(v26, v25);
        }

        v29 = v28;
        v30 = *v49;
        (*v49)(v14, v25);
        result = (v30)(v26, v25);
        if ((v29 & 1) == 0)
        {
          break;
        }

        if (!v45)
        {
          __break(1u);
          return result;
        }

        v31 = *v44;
        v32 = v47;
        (*v44)(v47, v23, v25);
        swift_arrayInitWithTakeFrontToBack();
        result = v31(v21, v32, v25);
        v21 += v43;
        v23 += v43;
        v33 = __CFADD__(v22++, 1);
        v24 = v51;
        if (v33)
        {
          goto LABEL_11;
        }
      }

      v24 = v51;
LABEL_11:
      a3 = v41 + 1;
      v21 = &v40[v36];
      v22 = v39 - 1;
      v23 = v38 + v36;
      if (v41 + 1 != v37)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1E5E0DD4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5E0DD94(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1E65E67D8();

    if (v9)
    {

      sub_1E5E0DFF4();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1E65E67C8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1E60F8A0C(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1E6101E00(v20 + 1);
    }

    v18 = v8;
    sub_1E6102028(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1E5E0DFF4();
  v11 = sub_1E65E6598();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1E5E0E224(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1E65E65A8();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

unint64_t sub_1E5E0DFF4()
{
  result = qword_1EE2D46A0;
  if (!qword_1EE2D46A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2D46A0);
  }

  return result;
}

unint64_t sub_1E5E0E080(uint64_t a1)
{
  sub_1E65E5C78();
  sub_1E65E6D28();
  sub_1E65E5D78();
  v2 = sub_1E65E6D78();

  return sub_1E5E0E120(a1, v2);
}

unint64_t sub_1E5E0E120(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1E65E5C78();
      v8 = v7;
      if (v6 == sub_1E65E5C78() && v8 == v9)
      {
        break;
      }

      v11 = sub_1E65E6C18();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void sub_1E5E0E224(unint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E6101E00(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1E610BB00();
      goto LABEL_12;
    }

    sub_1E5E0E384(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_1E65E6598();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1E5E0DFF4();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1E65E65A8();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1E65E6C58();
  __break(1u);
}

uint64_t sub_1E5E0E384(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072010, &qword_1E65EA478);
  result = sub_1E65E6868();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_1E65E6598();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1E5E0E5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppComposer(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E5E0E67C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AppEnvironment(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AppDataItemResolver(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1E5E0E7A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5E0E7E8(uint64_t a1)
{
  result = sub_1E5E0E840(&qword_1EE2DB040, type metadata accessor for TaskScheduler, &unk_1E65EBAEC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E5E0E840(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_28Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);
  swift_unknownObjectRelease();

  v89 = v0 + ((v92 + 40) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);
  v89 = v0 + ((v92 + 16) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_57Tm()
{
  v96 = type metadata accessor for AppComposer(0);
  v94 = *(*(v96 - 1) + 80);
  v92 = *(*(v96 - 1) + 64);
  v93 = (v94 + 16) & ~v94;
  v95 = v0;
  v89 = v0 + v93;

  v1 = v0 + v93 + v96[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v96[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v96[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v96[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  __swift_destroy_boxed_opaque_existential_1((v95 + ((v92 + v93 + 7) & 0xFFFFFFFFFFFFFFF8)));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_25Tm()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);
  v89 = v0 + ((v92 + 16) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_3Tm()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);
  v89 = v0 + ((v92 + 16) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_28Tm_0()
{
  v96 = type metadata accessor for AppComposer(0);
  v94 = *(*(v96 - 1) + 80);
  v92 = *(*(v96 - 1) + 64);

  v95 = v0;
  v93 = (v94 + 24) & ~v94;
  v89 = v0 + v93;

  v1 = v0 + v93 + v96[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v96[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v96[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v96[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  __swift_destroy_boxed_opaque_existential_1((v95 + ((v92 + v93 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{
  v1 = sub_1E65E43E8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroy_21Tm()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroy_67Tm()
{
  v96 = type metadata accessor for AppComposer(0);
  v94 = *(*(v96 - 1) + 80);
  v92 = *(*(v96 - 1) + 64);
  v93 = (v94 + 16) & ~v94;
  v95 = v0;
  v89 = v0 + v93;

  v1 = v0 + v93 + v96[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v96[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v96[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v96[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  __swift_destroy_boxed_opaque_existential_1((v95 + ((v93 + v92 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{
  v1 = sub_1E65DD0A8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_4()
{
  v1 = (type metadata accessor for AppEnvironment(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  swift_unknownObjectRelease();
  v3 = v1[8];
  v4 = type metadata accessor for AccountService();
  (*(v4[-1].Description + 1))(v2 + v3, v4);
  v5 = v1[9];
  v6 = type metadata accessor for AppStateService();
  (*(v6[-1].Description + 1))(v2 + v5, v6);
  v7 = v1[10];
  v8 = type metadata accessor for ArchivedSessionService();
  (*(v8[-1].Description + 1))(v2 + v7, v8);
  v9 = v1[11];
  v10 = type metadata accessor for AssetService();
  (*(v10[-1].Description + 1))(v2 + v9, v10);
  v11 = v1[12];
  v12 = type metadata accessor for AwardsService();
  (*(v12[-1].Description + 1))(v2 + v11, v12);
  v13 = v1[13];
  v14 = type metadata accessor for BookmarkService();
  (*(v14[-1].Description + 1))(v2 + v13, v14);
  v15 = v1[14];
  v16 = type metadata accessor for CatalogService();
  (*(v16[-1].Description + 1))(v2 + v15, v16);
  v17 = v1[15];
  v18 = type metadata accessor for ConfigurationService();
  (*(v18[-1].Description + 1))(v2 + v17, v18);
  v19 = v1[16];
  v20 = type metadata accessor for ContentAvailabilityService();
  (*(v20[-1].Description + 1))(v2 + v19, v20);
  v21 = v1[17];
  v22 = type metadata accessor for EngagementService();
  (*(v22[-1].Description + 1))(v2 + v21, v22);
  v23 = v1[18];
  v24 = type metadata accessor for HealthDataService();
  (*(v24[-1].Description + 1))(v2 + v23, v24);
  v25 = v1[19];
  v26 = type metadata accessor for InteropService();
  (*(v26[-1].Description + 1))(v2 + v25, v26);
  v27 = v1[20];
  v28 = type metadata accessor for LocalizationService();
  (*(v28[-1].Description + 1))(v2 + v27, v28);
  v29 = v1[21];
  v30 = type metadata accessor for MarketingService();
  (*(v30[-1].Description + 1))(v2 + v29, v30);
  v31 = v1[22];
  v32 = type metadata accessor for MetricService();
  (*(v32[-1].Description + 1))(v2 + v31, v32);
  v33 = v1[23];
  v34 = type metadata accessor for PersonalizationService();
  (*(v34[-1].Description + 1))(v2 + v33, v34);
  v35 = v1[24];
  v36 = type metadata accessor for PlayerService();
  (*(v36[-1].Description + 1))(v2 + v35, v36);
  v37 = v1[25];
  v38 = type metadata accessor for PrivacyPreferenceService();
  (*(v38[-1].Description + 1))(v2 + v37, v38);
  v39 = v1[26];
  v40 = type metadata accessor for RecommendationService();
  (*(v40[-1].Description + 1))(v2 + v39, v40);
  v41 = v1[27];
  v42 = type metadata accessor for RemoteBrowsingService();
  (*(v42[-1].Description + 1))(v2 + v41, v42);
  v43 = v1[28];
  v44 = type metadata accessor for SearchService();
  (*(v44[-1].Description + 1))(v2 + v43, v44);
  v45 = v1[29];
  v46 = type metadata accessor for ServiceSubscriptionService();
  (*(v46[-1].Description + 1))(v2 + v45, v46);
  v47 = v1[30];
  v48 = type metadata accessor for SessionService();
  (*(v48[-1].Description + 1))(v2 + v47, v48);
  v49 = v1[31];
  v50 = type metadata accessor for SharePlayService();
  (*(v50[-1].Description + 1))(v2 + v49, v50);
  v51 = v1[32];
  v52 = type metadata accessor for SiriService();
  (*(v52[-1].Description + 1))(v2 + v51, v52);
  v53 = v1[33];
  v54 = type metadata accessor for SyncService();
  (*(v54[-1].Description + 1))(v2 + v53, v54);

  v55 = v1[35];
  QueueService = type metadata accessor for UpNextQueueService();
  (*(QueueService[-1].Description + 1))(v2 + v55, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v2 + v1[36]));

  v57 = v1[38];
  v58 = type metadata accessor for WorkoutPlanService();
  (*(v58[-1].Description + 1))(v2 + v57, v58);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_5()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for CatalogService();
  Description = v1[-1].Description;
  v3 = (*(Description + 80) + 16) & ~*(Description + 80);
  v4 = Description[8];
  v5 = type metadata accessor for ArchivedSessionService();
  v6 = v5[-1].Description;
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (Description[1])(v0 + v3, v1);
  v6[1](v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_7()
{
  v1 = sub_1E65DB748();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v97 = type metadata accessor for AppComposer(0);
  v96 = *(*(v97 - 1) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v93 = v0 + ((v3 + v4 + v96) & ~v96);

  v5 = v93 + v97[5];
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment(0);
  v7 = v6[6];
  v95 = type metadata accessor for AccountService();
  v94 = *(v95[-1].Description + 1);
  v94(v5 + v7, v95);
  v8 = v6[7];
  v92 = type metadata accessor for AppStateService();
  v91 = *(v92[-1].Description + 1);
  v91(v5 + v8, v92);
  v9 = v6[8];
  v90 = type metadata accessor for ArchivedSessionService();
  v89 = *(v90[-1].Description + 1);
  v89(v5 + v9, v90);
  v10 = v6[9];
  v88 = type metadata accessor for AssetService();
  v87 = *(v88[-1].Description + 1);
  v87(v5 + v10, v88);
  v11 = v6[10];
  v86 = type metadata accessor for AwardsService();
  v85 = *(v86[-1].Description + 1);
  v85(v5 + v11, v86);
  v12 = v6[11];
  v84 = type metadata accessor for BookmarkService();
  v83 = *(v84[-1].Description + 1);
  v83(v5 + v12, v84);
  v13 = v6[12];
  v82 = type metadata accessor for CatalogService();
  v81 = *(v82[-1].Description + 1);
  v81(v5 + v13, v82);
  v14 = v6[13];
  v80 = type metadata accessor for ConfigurationService();
  v79 = *(v80[-1].Description + 1);
  v79(v5 + v14, v80);
  v15 = v6[14];
  v78 = type metadata accessor for ContentAvailabilityService();
  v77 = *(v78[-1].Description + 1);
  v77(v5 + v15, v78);
  v16 = v6[15];
  v76 = type metadata accessor for EngagementService();
  v75 = *(v76[-1].Description + 1);
  v75(v5 + v16, v76);
  v17 = v6[16];
  v74 = type metadata accessor for HealthDataService();
  v73 = *(v74[-1].Description + 1);
  v73(v5 + v17, v74);
  v18 = v6[17];
  v72 = type metadata accessor for InteropService();
  v71 = *(v72[-1].Description + 1);
  v71(v5 + v18, v72);
  v19 = v6[18];
  v70 = type metadata accessor for LocalizationService();
  v69 = *(v70[-1].Description + 1);
  v69(v5 + v19, v70);
  v20 = v6[19];
  v68 = type metadata accessor for MarketingService();
  v67 = *(v68[-1].Description + 1);
  v67(v5 + v20, v68);
  v21 = v6[20];
  v66 = type metadata accessor for MetricService();
  v65 = *(v66[-1].Description + 1);
  v65(v5 + v21, v66);
  v22 = v6[21];
  v64 = type metadata accessor for PersonalizationService();
  v63 = *(v64[-1].Description + 1);
  v63(v5 + v22, v64);
  v23 = v6[22];
  v62 = type metadata accessor for PlayerService();
  v61 = *(v62[-1].Description + 1);
  v61(v5 + v23, v62);
  v24 = v6[23];
  v60 = type metadata accessor for PrivacyPreferenceService();
  v59 = *(v60[-1].Description + 1);
  v59(v5 + v24, v60);
  v25 = v6[24];
  v58 = type metadata accessor for RecommendationService();
  v57 = *(v58[-1].Description + 1);
  v57(v5 + v25, v58);
  v26 = v6[25];
  v56 = type metadata accessor for RemoteBrowsingService();
  v55 = *(v56[-1].Description + 1);
  v55(v5 + v26, v56);
  v27 = v6[26];
  v54 = type metadata accessor for SearchService();
  v53 = *(v54[-1].Description + 1);
  v53(v5 + v27, v54);
  v28 = v6[27];
  v52 = type metadata accessor for ServiceSubscriptionService();
  v51 = *(v52[-1].Description + 1);
  v51(v5 + v28, v52);
  v29 = v6[28];
  v45 = type metadata accessor for SessionService();
  v50 = *(v45[-1].Description + 1);
  v50(v5 + v29, v45);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v49 = *(v31[-1].Description + 1);
  v49(v5 + v30, v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v48 = *(v33[-1].Description + 1);
  v48(v5 + v32, v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v47 = *(v35[-1].Description + 1);
  v47(v5 + v34, v35);

  v36 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v46 = *(QueueService[-1].Description + 1);
  v46(v5 + v36, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v5 + v6[34]));

  v38 = v6[36];
  v39 = type metadata accessor for WorkoutPlanService();
  v44 = *(v39[-1].Description + 1);
  v44(v5 + v38, v39);

  v40 = v93 + v97[7];

  v41 = v40 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v94(v41 + v6[6], v95);
  v91(v41 + v6[7], v92);
  v89(v41 + v6[8], v90);
  v87(v41 + v6[9], v88);
  v85(v41 + v6[10], v86);
  v83(v41 + v6[11], v84);
  v81(v41 + v6[12], v82);
  v79(v41 + v6[13], v80);
  v77(v41 + v6[14], v78);
  v75(v41 + v6[15], v76);
  v73(v41 + v6[16], v74);
  v71(v41 + v6[17], v72);
  v69(v41 + v6[18], v70);
  v67(v41 + v6[19], v68);
  v65(v41 + v6[20], v66);
  v63(v41 + v6[21], v64);
  v61(v41 + v6[22], v62);
  v59(v41 + v6[23], v60);
  v57(v41 + v6[24], v58);
  v55(v41 + v6[25], v56);
  v53(v41 + v6[26], v54);
  v51(v41 + v6[27], v52);
  v50(v41 + v6[28], v45);
  v49(v41 + v6[29], v31);
  v48(v41 + v6[30], v33);
  v47(v41 + v6[31], v35);

  v46(v41 + v6[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v41 + v6[34]));

  v44(v41 + v6[36], v39);
  swift_unknownObjectRelease();
  if (*(v93 + v97[9] + 8) >= 0xCuLL)
  {
  }

  v42 = (v93 + v97[10]);
  if (v42[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_8()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);
  v89 = v0 + ((v92 + 16) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_9()
{
  v1 = (type metadata accessor for AppEnvironment(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8);
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80)) & ~*(v5 + 80);
  swift_unknownObjectRelease();
  v7 = v0 + v2;
  swift_unknownObjectRelease();
  v8 = v1[8];
  v9 = type metadata accessor for AccountService();
  (*(v9[-1].Description + 1))(v7 + v8, v9);
  v10 = v1[9];
  v11 = type metadata accessor for AppStateService();
  (*(v11[-1].Description + 1))(v7 + v10, v11);
  v12 = v1[10];
  v13 = type metadata accessor for ArchivedSessionService();
  (*(v13[-1].Description + 1))(v7 + v12, v13);
  v14 = v1[11];
  v15 = type metadata accessor for AssetService();
  (*(v15[-1].Description + 1))(v7 + v14, v15);
  v16 = v1[12];
  v17 = type metadata accessor for AwardsService();
  (*(v17[-1].Description + 1))(v7 + v16, v17);
  v18 = v1[13];
  v19 = type metadata accessor for BookmarkService();
  (*(v19[-1].Description + 1))(v7 + v18, v19);
  v20 = v1[14];
  v21 = type metadata accessor for CatalogService();
  (*(v21[-1].Description + 1))(v7 + v20, v21);
  v22 = v1[15];
  v23 = type metadata accessor for ConfigurationService();
  (*(v23[-1].Description + 1))(v7 + v22, v23);
  v24 = v1[16];
  v25 = type metadata accessor for ContentAvailabilityService();
  (*(v25[-1].Description + 1))(v7 + v24, v25);
  v26 = v1[17];
  v27 = type metadata accessor for EngagementService();
  (*(v27[-1].Description + 1))(v7 + v26, v27);
  v28 = v1[18];
  v29 = type metadata accessor for HealthDataService();
  (*(v29[-1].Description + 1))(v7 + v28, v29);
  v30 = v1[19];
  v31 = type metadata accessor for InteropService();
  (*(v31[-1].Description + 1))(v7 + v30, v31);
  v32 = v1[20];
  v33 = type metadata accessor for LocalizationService();
  (*(v33[-1].Description + 1))(v7 + v32, v33);
  v34 = v1[21];
  v35 = type metadata accessor for MarketingService();
  (*(v35[-1].Description + 1))(v7 + v34, v35);
  v36 = v1[22];
  v37 = type metadata accessor for MetricService();
  (*(v37[-1].Description + 1))(v7 + v36, v37);
  v38 = v1[23];
  v39 = type metadata accessor for PersonalizationService();
  (*(v39[-1].Description + 1))(v7 + v38, v39);
  v40 = v1[24];
  v41 = type metadata accessor for PlayerService();
  (*(v41[-1].Description + 1))(v7 + v40, v41);
  v42 = v1[25];
  v43 = type metadata accessor for PrivacyPreferenceService();
  (*(v43[-1].Description + 1))(v7 + v42, v43);
  v44 = v1[26];
  v45 = type metadata accessor for RecommendationService();
  (*(v45[-1].Description + 1))(v7 + v44, v45);
  v46 = v1[27];
  v47 = type metadata accessor for RemoteBrowsingService();
  (*(v47[-1].Description + 1))(v7 + v46, v47);
  v48 = v1[28];
  v49 = type metadata accessor for SearchService();
  (*(v49[-1].Description + 1))(v7 + v48, v49);
  v50 = v1[29];
  v51 = type metadata accessor for ServiceSubscriptionService();
  (*(v51[-1].Description + 1))(v7 + v50, v51);
  v52 = v1[30];
  v53 = type metadata accessor for SessionService();
  (*(v53[-1].Description + 1))(v7 + v52, v53);
  v54 = v1[31];
  v55 = type metadata accessor for SharePlayService();
  (*(v55[-1].Description + 1))(v7 + v54, v55);
  v56 = v1[32];
  v57 = type metadata accessor for SiriService();
  (*(v57[-1].Description + 1))(v7 + v56, v57);
  v58 = v1[33];
  v59 = type metadata accessor for SyncService();
  (*(v59[-1].Description + 1))(v7 + v58, v59);

  v60 = v1[35];
  QueueService = type metadata accessor for UpNextQueueService();
  (*(QueueService[-1].Description + 1))(v7 + v60, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v7 + v1[36]));

  v62 = v1[38];
  v63 = type metadata accessor for WorkoutPlanService();
  (*(v63[-1].Description + 1))(v7 + v62, v63);
  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t objectdestroy_149Tm()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);

  v89 = v0 + ((v92 + 32) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_359Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_10()
{
  v89 = type metadata accessor for AppComposer(0);
  v92 = *(*(v89 - 1) + 80);
  swift_unknownObjectRelease();

  v93 = v0 + ((v92 + 104) & ~v92);

  v1 = v93 + v89[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v93 + v89[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v93 + v89[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v93 + v89[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_11(void (*a1)(void, void))
{
  v98 = type metadata accessor for AppComposer(0);
  v95 = *(*(v98 - 1) + 80);
  v93 = *(*(v98 - 1) + 64);
  swift_unknownObjectRelease();
  v97 = v1;
  v94 = (v95 + 32) & ~v95;
  v90 = v1 + v94;

  v2 = v1 + v94 + v98[5];
  swift_unknownObjectRelease();
  v3 = type metadata accessor for AppEnvironment(0);
  v4 = v3[6];
  v92 = type metadata accessor for AccountService();
  v91 = *(v92[-1].Description + 1);
  v91(v2 + v4, v92);
  v5 = v3[7];
  v89 = type metadata accessor for AppStateService();
  v88 = *(v89[-1].Description + 1);
  v88(v2 + v5, v89);
  v6 = v3[8];
  v87 = type metadata accessor for ArchivedSessionService();
  v86 = *(v87[-1].Description + 1);
  v86(v2 + v6, v87);
  v7 = v3[9];
  v85 = type metadata accessor for AssetService();
  v84 = *(v85[-1].Description + 1);
  v84(v2 + v7, v85);
  v8 = v3[10];
  v83 = type metadata accessor for AwardsService();
  v82 = *(v83[-1].Description + 1);
  v82(v2 + v8, v83);
  v9 = v3[11];
  v81 = type metadata accessor for BookmarkService();
  v80 = *(v81[-1].Description + 1);
  v80(v2 + v9, v81);
  v10 = v3[12];
  v79 = type metadata accessor for CatalogService();
  v78 = *(v79[-1].Description + 1);
  v78(v2 + v10, v79);
  v11 = v3[13];
  v77 = type metadata accessor for ConfigurationService();
  v76 = *(v77[-1].Description + 1);
  v76(v2 + v11, v77);
  v12 = v3[14];
  v75 = type metadata accessor for ContentAvailabilityService();
  v74 = *(v75[-1].Description + 1);
  v74(v2 + v12, v75);
  v13 = v3[15];
  v73 = type metadata accessor for EngagementService();
  v72 = *(v73[-1].Description + 1);
  v72(v2 + v13, v73);
  v14 = v3[16];
  v71 = type metadata accessor for HealthDataService();
  v70 = *(v71[-1].Description + 1);
  v70(v2 + v14, v71);
  v15 = v3[17];
  v69 = type metadata accessor for InteropService();
  v68 = *(v69[-1].Description + 1);
  v68(v2 + v15, v69);
  v16 = v3[18];
  v67 = type metadata accessor for LocalizationService();
  v66 = *(v67[-1].Description + 1);
  v66(v2 + v16, v67);
  v17 = v3[19];
  v65 = type metadata accessor for MarketingService();
  v64 = *(v65[-1].Description + 1);
  v64(v2 + v17, v65);
  v18 = v3[20];
  v63 = type metadata accessor for MetricService();
  v62 = *(v63[-1].Description + 1);
  v62(v2 + v18, v63);
  v19 = v3[21];
  v61 = type metadata accessor for PersonalizationService();
  v60 = *(v61[-1].Description + 1);
  v60(v2 + v19, v61);
  v20 = v3[22];
  v59 = type metadata accessor for PlayerService();
  v58 = *(v59[-1].Description + 1);
  v58(v2 + v20, v59);
  v21 = v3[23];
  v57 = type metadata accessor for PrivacyPreferenceService();
  v56 = *(v57[-1].Description + 1);
  v56(v2 + v21, v57);
  v22 = v3[24];
  v55 = type metadata accessor for RecommendationService();
  v54 = *(v55[-1].Description + 1);
  v54(v2 + v22, v55);
  v23 = v3[25];
  v53 = type metadata accessor for RemoteBrowsingService();
  v52 = *(v53[-1].Description + 1);
  v52(v2 + v23, v53);
  v24 = v3[26];
  v51 = type metadata accessor for SearchService();
  v50 = *(v51[-1].Description + 1);
  v50(v2 + v24, v51);
  v25 = v3[27];
  v49 = type metadata accessor for ServiceSubscriptionService();
  v48 = *(v49[-1].Description + 1);
  v48(v2 + v25, v49);
  v26 = v3[28];
  v42 = type metadata accessor for SessionService();
  v47 = *(v42[-1].Description + 1);
  v47(v2 + v26, v42);
  v27 = v3[29];
  v28 = type metadata accessor for SharePlayService();
  v46 = *(v28[-1].Description + 1);
  v46(v2 + v27, v28);
  v29 = v3[30];
  v30 = type metadata accessor for SiriService();
  v45 = *(v30[-1].Description + 1);
  v45(v2 + v29, v30);
  v31 = v3[31];
  v32 = type metadata accessor for SyncService();
  v44 = *(v32[-1].Description + 1);
  v44(v2 + v31, v32);

  v33 = v3[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v43 = *(QueueService[-1].Description + 1);
  v43(v2 + v33, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v2 + v3[34]));

  v35 = v3[36];
  v36 = type metadata accessor for WorkoutPlanService();
  v41 = *(v36[-1].Description + 1);
  v41(v2 + v35, v36);

  v37 = v90 + v98[7];

  v38 = v37 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v91(v38 + v3[6], v92);
  v88(v38 + v3[7], v89);
  v86(v38 + v3[8], v87);
  v84(v38 + v3[9], v85);
  v82(v38 + v3[10], v83);
  v80(v38 + v3[11], v81);
  v78(v38 + v3[12], v79);
  v76(v38 + v3[13], v77);
  v74(v38 + v3[14], v75);
  v72(v38 + v3[15], v73);
  v70(v38 + v3[16], v71);
  v68(v38 + v3[17], v69);
  v66(v38 + v3[18], v67);
  v64(v38 + v3[19], v65);
  v62(v38 + v3[20], v63);
  v60(v38 + v3[21], v61);
  v58(v38 + v3[22], v59);
  v56(v38 + v3[23], v57);
  v54(v38 + v3[24], v55);
  v52(v38 + v3[25], v53);
  v50(v38 + v3[26], v51);
  v48(v38 + v3[27], v49);
  v47(v38 + v3[28], v42);
  v46(v38 + v3[29], v28);
  v45(v38 + v3[30], v30);
  v44(v38 + v3[31], v32);

  v43(v38 + v3[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v38 + v3[34]));

  v41(v38 + v3[36], v36);
  swift_unknownObjectRelease();
  if (*(v90 + v98[9] + 8) >= 0xCuLL)
  {
  }

  v39 = (v90 + v98[10]);
  if (v39[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  a1(*(v97 + ((v94 + v93 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v97 + ((v94 + v93 + 7) & 0xFFFFFFFFFFFFFFF8) + 8));

  __swift_destroy_boxed_opaque_existential_1((v97 + ((((v94 + v93 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_12(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_13()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_14()
{
  v1 = type metadata accessor for PageMetricsClick(0);
  v2 = (*(*(v1 - 1) + 80) + 120) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  v4 = sub_1E65D9D78();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = v1[5];
  v7 = sub_1E65D8C68();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);
  v8 = v1[6];
  v9 = sub_1E65D74E8();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = v1[8];
  v12 = sub_1E65DA208();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v3 + v11, v12);
  }

  v14 = v1[14];
  v15 = sub_1E65D8F28();
  (*(*(v15 - 8) + 8))(v3 + v14, v15);
  v16 = v1[15];
  v17 = sub_1E65D9908();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v3 + v16, 1, v17))
  {
    (*(v18 + 8))(v3 + v16, v17);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_15(uint64_t (*a1)(void))
{
  v14 = a1(0);
  v2 = *(v14 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v13 = sub_1E65D7848();
  v5 = *(v13 - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = type metadata accessor for LocalizationService();
  Description = v8[-1].Description;
  v10 = (v6 + v7 + *(Description + 80)) & ~*(Description + 80);
  v11 = (Description[8] + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v1 + v3, v14);
  (*(v5 + 8))(v1 + v6, v13);
  (Description[1])(v1 + v10, v8);
  __swift_destroy_boxed_opaque_existential_1((v1 + v11));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_16()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_17(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  (*(*(v3 - 8) + 8))(v2 + ((*(*(v3 - 8) + 80) + 56) & ~*(*(v3 - 8) + 80)), v3);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_18()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_19()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_20()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_21()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_22()
{
  v1 = sub_1E65DAEB8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_23()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_24()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_25()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_26()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E1A2A0()
{
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E5E1A2D8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E5E1A318()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1((v0 + 152));
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E5E1A360()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E5E1A3A8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 168));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E5E1A3F0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E5E1A428()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 120));

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E5E1A470()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E5E1A4C8()
{
  v1 = OBJC_IVAR____TtC26FitnessLocalizationService23LiveLocalizationService_currentLocale;
  v2 = sub_1E65D7848();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC26FitnessLocalizationService23LiveLocalizationService_storefrontLocalizer));

  return swift_deallocClassInstance();
}

uint64_t sub_1E5E1A594()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 128));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E5E1A5D4()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 128));
  __swift_destroy_boxed_opaque_existential_1((v0 + 168));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E5E1A61C(uint64_t a1)
{
  v2 = type metadata accessor for OnboardingDetailCache.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5E1A678()
{
  sub_1E5E1A61C(v0 + OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_state);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_recommendationClient));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_networkEvaluator));

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E5E1A6F8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);
  __swift_destroy_boxed_opaque_existential_1(v0 + 26);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E5E1A748()
{
  sub_1E5E1A774();

  return MEMORY[0x1EEE6DEF0](v0);
}

void *sub_1E5E1A774()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  __swift_destroy_boxed_opaque_existential_1(v0 + 20);
  __swift_destroy_boxed_opaque_existential_1(v0 + 25);
  __swift_destroy_boxed_opaque_existential_1(v0 + 30);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 37);
  __swift_destroy_boxed_opaque_existential_1(v0 + 42);
  __swift_destroy_boxed_opaque_existential_1(v0 + 47);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1E5E1A7DC()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t WindowSceneObserver.__deallocating_deinit()
{
  sub_1E5E1A858(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

void *sub_1E5E1A858(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t type metadata accessor for EngagementMessagePresenter(uint64_t a1)
{
  result = qword_1EE2D85A8;
  if (!qword_1EE2D85A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

ValueMetadata *sub_1E5E1A900(uint64_t a1)
{
  result = type metadata accessor for AccountService();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for EngagementService();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for MetricService();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ServiceSubscriptionService();
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1E5E1AA90(uint64_t a1)
{
  Description = type metadata accessor for EngagementService()[-1].Description;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(Description + 80) + 32) & ~*(Description + 80));
  v8 = *(v7 + Description[8]);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E5E1ACA4(a1, v5, v6, v7, v8);
}

uint64_t sub_1E5E1ABA8()
{
  v1 = EngagementService.registerPlacement.getter();
  *(v0 + 32) = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1E602F734;
  v4 = *(v0 + 56);

  return v6(v4);
}

uint64_t sub_1E5E1ACA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E5E1ABA8, 0, 0);
}

uint64_t EngagementService.registerPlacement.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1E5E1ACF8(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 26) = a1;
  v3 = sub_1E65E3B68();
  *(v2 + 40) = v3;
  *(v2 + 48) = *(v3 - 8);
  *(v2 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5E1ADBC, v1, 0);
}

uint64_t sub_1E5E1ADBC()
{
  v22 = v0;
  sub_1E65DE2D8();
  v1 = sub_1E65E3B48();
  v2 = sub_1E65E6338();
  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = *(v0 + 40);
    v6 = *(v0 + 26);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    *(v0 + 25) = v6;
    v9 = sub_1E65E5CE8();
    v11 = sub_1E5DFD4B0(v9, v10, &v21);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1E5DE9000, v1, v2, "Registering %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E694F1C0](v8, -1, -1);
    MEMORY[0x1E694F1C0](v7, -1, -1);

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    v13 = *(v0 + 48);
    v12 = *(v0 + 56);
    v14 = *(v0 + 40);

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v0 + 32);
  v16 = *(v0 + 26);
  v17 = sub_1E5E1B028();
  v18 = swift_task_alloc();
  *(v0 + 64) = v18;
  *(v18 + 16) = v15;
  *(v18 + 24) = v16;
  v19 = swift_task_alloc();
  *(v0 + 72) = v19;
  *v19 = v0;
  v19[1] = sub_1E6595FAC;

  return MEMORY[0x1EEE6DE38](v0 + 16, v15, v17, 0xD000000000000012, 0x80000001E6619E50, sub_1E5E1B62C, v18, &type metadata for EngagementPlacement);
}

unint64_t sub_1E5E1B028()
{
  result = qword_1EE2D58A0;
  if (!qword_1EE2D58A0)
  {
    type metadata accessor for EngagementPlacementRegistry();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D58A0);
  }

  return result;
}

void *sub_1E5E1B07C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC10Blackbeard29SubscriptionPurchasePresenter_state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079C40, &qword_1E66038C8);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 16) = 0;
  *&v4[v10] = v11;
  sub_1E5DF650C(a1, &v4[OBJC_IVAR____TtC10Blackbeard29SubscriptionPurchasePresenter_accountProvider]);
  *&v4[OBJC_IVAR____TtC10Blackbeard29SubscriptionPurchasePresenter_bag] = a2;
  v12 = &v4[OBJC_IVAR____TtC10Blackbeard29SubscriptionPurchasePresenter_eventHub];
  *v12 = a3;
  *(v12 + 1) = a4;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

uint64_t sub_1E5E1B18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - v7;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  v9 = *(a2 + 176);
  if (*(v9 + 16) && (v10 = sub_1E5E1B97C(a3), (v11 & 1) != 0))
  {
    v12 = *(v9 + 56) + 16 * v10;
    v13 = *v12;
    v14 = *(v12 + 8);
    swift_endAccess();
    if (v14 < 0)
    {
      v32 = v13;
      v33 = v14 & 1;
      v30 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B898, &qword_1E660D328);
      return sub_1E65E5FF8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B890, &qword_1E660D320);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B898, &qword_1E660D328);
      v16 = *(v15 - 8);
      v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1E65EA670;
      (*(v16 + 16))(v18 + v17, a1, v15);
      v32 = v13;

      sub_1E659AB20(v18);
      v19 = v32;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *(a2 + 176);
      *(a2 + 176) = 0x8000000000000000;
      sub_1E5E1B714(v19, 0, a3, isUniquelyReferenced_nonNull_native);
      *(a2 + 176) = v31;
      return swift_endAccess();
    }
  }

  else
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B890, &qword_1E660D320);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B898, &qword_1E660D328);
    v23 = *(v22 - 8);
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1E65EA670;
    (*(v23 + 16))(v25 + v24, a1, v22);
    swift_beginAccess();
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(a2 + 176);
    *(a2 + 176) = 0x8000000000000000;
    sub_1E5E1B714(v25, 0, a3, v26);
    *(a2 + 176) = v31;
    swift_endAccess();
    v27 = sub_1E65E60A8();
    (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
    v28 = sub_1E5E1B028();
    v29 = swift_allocObject();
    *(v29 + 16) = a2;
    *(v29 + 24) = v28;
    *(v29 + 32) = a2;
    *(v29 + 40) = a3;
    swift_retain_n();
    sub_1E64B80F8(0, 0, v8, &unk_1E660D338, v29);
  }
}

uint64_t type metadata accessor for ToastPresenter(uint64_t a1)
{
  result = qword_1EE2DA840;
  if (!qword_1EE2DA840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5E1B638(uint64_t a1)
{
  result = type metadata accessor for AppComposer(319);
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

void sub_1E5E1B714(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1E5E1B97C(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1E5E1BA14(v16, a4 & 1);
      v11 = sub_1E5E1B97C(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_1E65E6C68();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1E659A6F8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    *(v21[6] + v11) = a3;
    v25 = v21[7] + 16 * v11;
    *v25 = a1;
    *(v25 + 8) = a2;
    v26 = v21[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v21[2] = v27;
      return;
    }

    goto LABEL_15;
  }

  v22 = v21[7] + 16 * v11;
  v23 = *v22;
  *v22 = a1;
  v24 = *(v22 + 8);
  *(v22 + 8) = a2;

  sub_1E659B884(v23, v24);
}

uint64_t sub_1E5E1B880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC10Blackbeard14ToastPresenter_state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079D28, &unk_1E6603DC0);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = 0;
  *(v5 + v11) = v12;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_dismissTask) = 0;
  sub_1E5E1BCD8(a1, v5 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_composer, type metadata accessor for AppComposer);
  v13 = (v5 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_itemRoutingContext);
  *v13 = a4;
  v13[1] = a5;
  v14 = (v5 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_scheduler);
  *v14 = a2;
  v14[1] = a3;
  return v5;
}

unint64_t sub_1E5E1B97C(uint64_t a1)
{
  sub_1E65E6D28();
  sub_1E65DB7F8();
  sub_1E65E5D78();

  v2 = sub_1E65E6D78();

  return sub_1E5E1BD40(a1, v2);
}

uint64_t sub_1E5E1BA14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B888, &qword_1E660D310);
  v34 = v4;
  result = sub_1E65E6A18();
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
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      if ((v34 & 1) == 0)
      {
        sub_1E659B890(v23, v24);
      }

      sub_1E65E6D28();
      sub_1E65DB7F8();
      sub_1E65E5D78();

      result = sub_1E65E6D78();
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
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
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

uint64_t sub_1E5E1BCD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E5E1BD40(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1E65DB7F8();
      v8 = v7;
      if (v6 == sub_1E65DB7F8() && v8 == v9)
      {
        break;
      }

      v11 = sub_1E65E6C18();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1E5E1BE54(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFA78C;

  return sub_1E5E1C304(a1, v4, v5, v6, v7);
}

char *sub_1E5E1BF18(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1E65D7848();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65DEEA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0756B8, &qword_1E65F1C68);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v26[-1] - v13;
  v26[3] = type metadata accessor for NavigationControllerRoutingContext(0);
  v26[4] = &off_1F5FA9B10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  sub_1E5E1D484(a1, boxed_opaque_existential_1, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E62CC524(7, v26, v14);
  v16 = *a2;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
  {

    sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
    v17 = v24;
  }

  else
  {

    v17 = MEMORY[0x1E69E7CD0];
  }

  (*(v9 + 104))(v11, *MEMORY[0x1E699CE18], v8);
  v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0756C0, &qword_1E65F1C70));
  v19 = sub_1E6274AF4(v14, v17, MEMORY[0x1E69E7CC0], v11, 0, 0, 0, 0, 0, 0, 0, v16, nullsub_1, 0);

  swift_getKeyPath();
  v20 = v19;
  sub_1E65E4EC8();

  sub_1E65DF548();
  (*(v5 + 8))(v7, v4);
  v21 = sub_1E65E5C48();

  [v20 setTitle_];

  v22 = [*&v20[qword_1EE2D9180] navigationItem];
  [v22 setLargeTitleDisplayMode_];

  __swift_destroy_boxed_opaque_existential_1(v26);
  return v20;
}

uint64_t type metadata accessor for WorkoutPlanArtworkViewRepresentable(uint64_t a1)
{
  result = qword_1EE2D7818;
  if (!qword_1EE2D7818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5E1C304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 121) = a5;
  *(v5 + 56) = a4;
  v7 = sub_1E65E3B68();
  *(v5 + 64) = v7;
  *(v5 + 72) = *(v7 - 8);
  *(v5 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5E1C3CC, a4, 0);
}

uint64_t sub_1E5E1C3CC()
{
  v1 = v0[7];
  v2 = v1[17];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v2);
  v4 = sub_1E65DB7F8();
  v6 = v5;
  v0[11] = v5;
  v7 = v1[19];
  v8 = v1[20];
  v11 = (*(v3 + 8) + **(v3 + 8));
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_1E6596858;

  return v11(v4, v6, v7, v8, v2, v3);
}

uint64_t sub_1E5E1C534(uint64_t a1)
{
  result = sub_1E65D76F8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E5E1C5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E60ABB70;

  return sub_1E5E1C668(a1, a2, a3, a4);
}

uint64_t sub_1E5E1C668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B8A0, &qword_1E660D430);
  v5[24] = v6;
  v5[25] = *(v6 - 8);
  v5[26] = swift_task_alloc();
  v7 = sub_1E65E3B68();
  v5[27] = v7;
  v5[28] = *(v7 - 8);
  v5[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5E1C798, 0, 0);
}

uint64_t sub_1E5E1C798()
{
  v1 = v0;
  v3 = v0[28];
  v2 = v0[29];
  v21 = v0 + 2;
  v22 = v0 + 18;
  v4 = v0[27];
  v23 = v0[26];
  v5 = v0[25];
  v6 = v1[24];
  v20 = v1[23];
  sub_1E65DE2D8();
  sub_1E65E3B18();
  (*(v3 + 8))(v2, v4);
  sub_1E5E1CB40(MEMORY[0x1E69E7CC0]);
  v7 = objc_allocWithZone(MEMORY[0x1E698C900]);
  v8 = sub_1E65E5C48();
  v9 = sub_1E65E5AF8();

  v10 = [v7 initWithPlacement:v8 context:v9];
  v1[30] = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E65EA660;
  *(v11 + 32) = v10;
  v12 = objc_allocWithZone(MEMORY[0x1E698C8E0]);
  v13 = v10;
  v14 = sub_1E65E5C48();
  sub_1E5DEF738(0, &qword_1EE2D4590, 0x1E698C900);
  v15 = sub_1E65E5EF8();

  v16 = [v12 initWithServiceType:v14 placementInfo:v15];
  v1[31] = v16;

  v17 = [v20 enqueueMessageEvent_];
  v1[32] = v17;
  v1[2] = v1;
  v1[7] = v22;
  v1[3] = sub_1E659BB30;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  sub_1E5DEF738(0, &unk_1EE2D4558, 0x1E698C8E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
  sub_1E65E5FD8();
  (*(v5 + 32))(boxed_opaque_existential_1, v23, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1E659BE38;
  v1[13] = &block_descriptor_25;
  [v17 resultWithCompletion_];
  (*(v5 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x1EEE6DEC8](v21);
}

unint64_t sub_1E5E1CB40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077270, &unk_1E660D440);
    v3 = sub_1E65E6A28();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E659C76C(v4, v13);
      result = sub_1E6417048(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1E6121EB8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_1E5E1CC5C()
{
  result = qword_1EE2D9680;
  if (!qword_1EE2D9680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9680);
  }

  return result;
}

unint64_t sub_1E5E1CCB8()
{
  result = qword_1EE2D9698;
  if (!qword_1EE2D9698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9698);
  }

  return result;
}

uint64_t sub_1E5E1CE4C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1E62FE89C;
  }

  else
  {

    v2 = sub_1E5E1CF68;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5E1CF84()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1E64B9C94;
  }

  else
  {
    v2 = sub_1E6115FB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5E1D0B8(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1E5E1D180(uint64_t a1)
{
  result = sub_1E65D7848();
  if (v3 <= 0x3F)
  {
    v10 = 0;
    v14 = result;
    result = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      v11 = 0;
      v5 = result;
      v15 = result;
      result = swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        v12 = 0;
        v16 = result;
        v8[0] = v5;
        v8[1] = result;
        v9 = *(a1 + 32);
        type metadata accessor for ContextMenuViewModifier.LoadState(255, v8);
        result = sub_1E65E4A98();
        if (v7 <= 0x3F)
        {
          v13 = 0;
          v17 = result;
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E5E1D27C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D2E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D34C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D3B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D41C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D484(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D4EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D5BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D624(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D68C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D6F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D75C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D7C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D82C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D8FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D964(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D9CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DA34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DA9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DB04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DB6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DBD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DC3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DCA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DD0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DD74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DDDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DE44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DEAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppComposer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5E1DF10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DF78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DFE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E048(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E0B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E118(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E1E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E2B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E320(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E388(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E3F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E458(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E4C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E528(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E5F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E660(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E6C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E730(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E798(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E800(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E8D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E9A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1EA08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1EA70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1EAD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1EB40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1EBCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5E1EC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077730, &unk_1E65EA310);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EF8, &unk_1E65FA470);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_1E65E4FD8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  if (qword_1EE2D49E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1E65E5018();
  __swift_project_value_buffer(v11, qword_1EE2D49E8);
  v12 = sub_1E65E2E78();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1E65E4728();
  sub_1E5DFE50C(v6, &unk_1ED077730, &unk_1E65EA310);
  return sub_1E5DFE50C(v9, &qword_1ED071EF8, &unk_1E65FA470);
}

uint64_t sub_1E5E1EE1C()
{
  v0 = sub_1E65E5178();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1E65E4FF8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1E65E5018();
  __swift_allocate_value_buffer(v2, qword_1EE2D49E8);
  __swift_project_value_buffer(v2, qword_1EE2D49E8);
  v3 = sub_1E65E5C48();
  v4 = sub_1E65E5C48();
  v5 = [objc_opt_self() bagForProfile:v3 profileVersion:v4];

  sub_1E65E5168();
  sub_1E5E1EF9C();
  sub_1E65E4FE8();
  return sub_1E65E5008();
}

unint64_t sub_1E5E1EF9C()
{
  result = qword_1EE2DBC50[0];
  if (!qword_1EE2DBC50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2DBC50);
  }

  return result;
}

uint64_t sub_1E5E1F010(uint64_t a1)
{
  result = sub_1E65DEEA8();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1E5E1F1BC(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(&v4 - v1);
  return sub_1E65E4058();
}

unint64_t sub_1E5E1F2A4()
{
  result = qword_1EE2D4BC0;
  if (!qword_1EE2D4BC0)
  {
    sub_1E65E43B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4BC0);
  }

  return result;
}

unint64_t sub_1E5E1F2FC()
{
  result = qword_1EE2D4850;
  if (!qword_1EE2D4850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074280, &qword_1E65EFF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4850);
  }

  return result;
}

uint64_t sub_1E5E1F360@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v7);
  sub_1E5DFE50C(v4, &qword_1ED071F78, &unk_1E65EA3F0);
  v8 = sub_1E65D7848();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v7, v8);
  }

  sub_1E65D77C8();
  result = (v10)(v7, 1, v8);
  if (result != 1)
  {
    return sub_1E5DFE50C(v7, &qword_1ED071F80, &unk_1E65F4310);
  }

  return result;
}

uint64_t sub_1E5E1F544@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - v5;
  v7 = sub_1E65D7848();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5DFD1CC(v2, v6, &qword_1ED071F78, &unk_1E65EA3F0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    v13 = *(v8 + 32);
    v13(v10, v6, v7);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5DFE50C(v6, &qword_1ED071F78, &unk_1E65EA3F0);
LABEL_8:
    v15 = 1;
    return (*(v8 + 56))(a1, v15, 1, v7);
  }

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075378, &qword_1E65F1A00) + 48);
  v13 = *(v8 + 32);
  v13(v10, v6, v7);
  v14 = sub_1E65D76A8();
  (*(*(v14 - 8) + 8))(&v6[v12], v14);
LABEL_6:
  v13(a1, v10, v7);
  v15 = 0;
  return (*(v8 + 56))(a1, v15, 1, v7);
}

void sub_1E5E1F788(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1E5E1F7F4(a3);
}

id sub_1E5E1F7F4(unint64_t a1)
{
  v15.receiver = v1;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_willMoveToParentViewController_, a1);
  result = [v1 parentViewController];
  if (!result)
  {
    if (!a1)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (a1)
  {
LABEL_15:
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v5 = result;
      v4 = *&v1[qword_1EE2D9140];
      if (v4 >> 62)
      {
        goto LABEL_34;
      }

      v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_18;
    }

    return result;
  }

  v4 = *&v1[qword_1EE2D9140];
  if (v4 >> 62)
  {
    v5 = sub_1E65E67C8();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    a1 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E694E2D0](a1, v4);
      }

      else
      {
        if (a1 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v6 = *(v4 + 8 * a1 + 32);
      }

      v7 = v6;
      v8 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        break;
      }

      [*&v6[OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController] removeFromParentViewController];

      ++a1;
      if (v8 == v5)
      {
        goto LABEL_28;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      v9 = sub_1E65E67C8();
LABEL_18:
      v14 = a1;

      if (!v9)
      {
        break;
      }

      v10 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1E694E2D0](v10, v4);
        }

        else
        {
          if (v10 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v11 = *(v4 + 8 * v10 + 32);
        }

        v12 = v11;
        a1 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        [*&v11[OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController] setParentViewController_];

        ++v10;
        if (a1 == v9)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
    }

LABEL_27:
  }

  else
  {
LABEL_28:

    return (*&v1[qword_1EE2D9108])(v13);
  }
}

uint64_t sub_1E5E1FA80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppComposer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5E1FAE4()
{
  v1 = *(v0 + 32);

  sub_1E65E4EE8();
  sub_1E5E263A0(v1, type metadata accessor for AppAction);

  return MEMORY[0x1EEE6DFA0](sub_1E5E012CC, 0, 0);
}

void WindowSceneObserver.bounds.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 effectiveGeometry];
    v6 = [v5 coordinateSpace];

    [v6 bounds];
    v14 = v7;
    v15 = v8;
    v13 = v9;
    v16 = v10;

    swift_unknownObjectRelease();
    *&v12 = v13;
    *&v11 = v14;
    *(&v11 + 1) = v15;
    *(&v12 + 1) = v16;
  }

  else
  {
    v11 = 0uLL;
    v12 = 0uLL;
  }

  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v3 == 0;
}

uint64_t sub_1E5E1FC4C()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v0 = sub_1E65E3B68();
  __swift_project_value_buffer(v0, qword_1EE2EA2A0);
  sub_1E65E3B18();
  sub_1E5E20198(2, v30);
  v1 = v31;
  v2 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v2 + 16))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_1E5E20198(0, v30);
  v3 = v31;
  v4 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v4 + 16))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_1E5E20198(15, v30);
  v5 = v31;
  v6 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v6 + 8))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_1E5E20198(22, v30);
  v7 = v31;
  v8 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v8 + 8))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_1E5E20198(3, v30);
  v9 = v31;
  v10 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v10 + 8))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_1E5E20198(24, v30);
  v11 = v31;
  v12 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v12 + 8))(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_1E5E20198(26, v30);
  v13 = v31;
  v14 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v14 + 8))(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v30);
  v15 = sub_1E65DDF08();
  v31 = v15;
  v32 = sub_1E5E041A4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(v15 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CABF8], v15);
  LOBYTE(v15) = sub_1E65DAF58();
  __swift_destroy_boxed_opaque_existential_1(v30);
  if (v15)
  {
    sub_1E5E20198(4, v30);
    v17 = v31;
    v18 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    (*(v18 + 8))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1(v30);
    sub_1E5E20198(5, v30);
    v19 = v31;
    v20 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    (*(v20 + 8))(v19, v20);
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  sub_1E5E20198(11, v30);
  v21 = v31;
  v22 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v22 + 8))(v21, v22);
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_1E5E20198(8, v30);
  v23 = v31;
  v24 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v24 + 8))(v23, v24);
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_1E5E20198(1, v30);
  v25 = v31;
  v26 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v26 + 8))(v25, v26);
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_1E5E20198(20, v30);
  v27 = v31;
  v28 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v28 + 8))(v27, v28);
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t _s10Blackbeard12AppSizeClassO11canvasWidthAC12CoreGraphics7CGFloatV_tcfC_0(double a1)
{
  if (a1 <= 374.0)
  {
    return 0;
  }

  if (a1 <= 460.0)
  {
    return 1;
  }

  if (a1 > 1194.0)
  {
    v1 = 5;
  }

  else
  {
    v1 = 4;
  }

  if (a1 > 981.0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 3;
  }

  if (a1 > 726.0)
  {
    return v2;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1E5E20198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OBJC_IVAR____TtC10Blackbeard16AppStateResolver_resolvers;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_1E64290E4(a1), (v8 & 1) != 0))
  {
    sub_1E635A034(*(v6 + 56) + 48 * v7, v10);
    v11[0] = v10[0];
    v11[1] = v10[1];
    v11[2] = v10[2];
  }

  else
  {
    swift_endAccess();
    sub_1E5E2029C(a1, v11);
    sub_1E635A034(v11, v10);
    swift_beginAccess();
    sub_1E64075B0(v10, a1);
  }

  swift_endAccess();
  sub_1E5DF650C(v11, a2);
  return sub_1E635A06C(v11);
}

uint64_t sub_1E5E2029C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = OBJC_IVAR____TtC10Blackbeard16AppStateResolver_resolvers;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_1E64290E4(a1), (v8 & 1) != 0))
  {
    sub_1E635A034(*(v6 + 56) + 48 * v7, v11);
    v9 = v11[1];
    *a2 = v11[0];
    *(a2 + 1) = v9;
    *(a2 + 2) = v11[2];
    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    switch(a1)
    {
      case 1:
        result = sub_1E6370194(a2);
        break;
      case 2:
        result = sub_1E5FC564C(a2);
        break;
      case 3:
        result = sub_1E61281E0(a2);
        break;
      case 4:
        result = sub_1E60267F8(a2);
        break;
      case 5:
        result = sub_1E5FAC608(a2);
        break;
      case 6:
        result = sub_1E63CA394(a2);
        break;
      case 7:
        result = sub_1E608537C(a2);
        break;
      case 8:
        result = sub_1E6060D28(a2);
        break;
      case 9:
        result = sub_1E64616D0(a2);
        break;
      case 10:
        result = sub_1E63D132C(a2);
        break;
      case 11:
        result = sub_1E602B6BC(a2);
        break;
      case 12:
        result = sub_1E636B310(a2);
        break;
      case 13:
        result = sub_1E63FFE64(a2);
        break;
      case 14:
        result = sub_1E6186428(a2);
        break;
      case 15:
        result = sub_1E5E20534(a2);
        break;
      case 16:
        result = sub_1E616E60C(a2);
        break;
      case 17:
        result = sub_1E616BAEC(a2);
        break;
      case 18:
        result = sub_1E64521C0(a2);
        break;
      case 19:
        result = sub_1E60EB890(a2);
        break;
      case 20:
        result = sub_1E61C6D40(a2);
        break;
      case 21:
        result = sub_1E642B340(a2);
        break;
      case 22:
        result = sub_1E6396E04(a2);
        break;
      case 23:
        result = sub_1E6314DF0(a2);
        break;
      case 24:
        result = sub_1E612E624(a2);
        break;
      case 25:
        result = sub_1E64F3DE0(a2);
        break;
      case 26:
        result = sub_1E617FE94(a2);
        break;
      case 27:
        result = sub_1E64D80D0(a2);
        break;
      default:
        result = sub_1E6001E7C(a2);
        break;
    }
  }

  return result;
}

uint64_t sub_1E5E20534@<X0>(uint64_t *a1@<X8>)
{
  v34 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v29 - v3;
  v30 = type metadata accessor for ContentAvailabilityService();
  Description = v30[-1].Description;
  v5 = Description[8];
  MEMORY[0x1EEE9AC00](v30);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078788, &qword_1E65FD608);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v31 = v9;
  v32 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v12 = sub_1E65E3B68();
  __swift_project_value_buffer(v12, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v13 = OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v14 = v1 + *(type metadata accessor for AppEnvironment(0) + 56);
  swift_getKeyPath();
  v29 = v1;
  v15 = v14 + v13;
  v16 = v30;
  (Description[2])(&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v30);
  v17 = (*(Description + 80) + 16) & ~*(Description + 80);
  v18 = swift_allocObject();
  (Description[4])(v18 + v17, &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16);

  sub_1E65E4E08();
  v19 = v34;
  v34[3] = v6;
  v19[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  v21 = *(v7 + 16);
  v21(boxed_opaque_existential_1, v11, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1E65EA670;
  v23 = sub_1E65E60A8();
  v24 = v33;
  (*(*(v23 - 8) + 56))(v33, 1, 1, v23);
  v25 = v32;
  v21(v32, v11, v6);
  v26 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  *(v27 + 4) = v29;
  (*(v7 + 32))(&v27[v26], v25, v6);

  *(v22 + 32) = sub_1E6059EAC(0, 0, v24, &unk_1E65FD648, v27);
  result = (*(v7 + 8))(v11, v6);
  v19[5] = v22;
  return result;
}

uint64_t sub_1E5E209A8()
{
  v1 = type metadata accessor for ContentAvailabilityService();
  (*(v1[-1].Description + 1))(v0 + ((*(v1[-1].Description + 80) + 16) & ~*(v1[-1].Description + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E20A30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078788, &qword_1E65FD608);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t *sub_1E5E20BC8(uint64_t *result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 8);
  v4 = *result;
  v5 = v3;
  if (v2)
  {
    return v2(&v4);
  }

  return result;
}

uint64_t sub_1E5E20C10(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  v32 = a7;
  v31 = a6;
  v30[2] = a5;
  v33 = a2;
  v13 = a10;
  v34 = a9;
  v14 = sub_1E65E3B68();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v18 = sub_1E65E3B48();
  v19 = sub_1E65E6338();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v30[1] = a8;
    v21 = v20;
    v22 = swift_slowAlloc();
    v30[0] = a10;
    v23 = v22;
    v35 = v22;
    *v21 = 134218498;
    *(v21 + 4) = a3;
    *(v21 + 12) = 2080;
    v24 = sub_1E65E68B8();
    v26 = sub_1E5DFD4B0(v24, v25, &v35);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2048;
    *(v21 + 24) = v32;
    _os_log_impl(&dword_1E5DE9000, v18, v19, "Finished P->A conversion: %ld:%s:%lu", v21, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v27 = v23;
    v13 = v30[0];
    MEMORY[0x1E694F1C0](v27, -1, -1);
    MEMORY[0x1E694F1C0](v21, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  v35 = a1;
  if (v33)
  {
    v28 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(v34, v13);
    return sub_1E65E5FE8();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(v34, v13);
    return sub_1E65E5FF8();
  }
}