uint64_t sub_1D8F6F754(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8F6F7D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1E && *(a1 + 41))
  {
    return (*a1 + 30);
  }

  v3 = ((*(a1 + 40) >> 1) & 0x1C | (*(a1 + 40) >> 6)) ^ 0x1F;
  if (v3 >= 0x1D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D8F6F824(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1D)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 30;
    if (a3 >= 0x1E)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1E)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_1D8F6F89C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 40) = *(result + 40) & 7 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0x80;
  }

  return result;
}

uint64_t sub_1D8F6F8E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8F6F934(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t ImplicitFollowsDecayEvent.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

uint64_t ImplicitFollowsDecayCoordinator.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*ImplicitFollowsDecayCoordinator.delegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 48);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D8F6FB48;
}

uint64_t ImplicitFollowsDecayCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  ImplicitFollowsDecayCoordinator.init()();
  return v0;
}

void *ImplicitFollowsDecayCoordinator.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v33 = v24 - v1;
  v34 = sub_1D9178DFC();
  v31 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v29 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7780, &qword_1D9198CD8);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v26 = v24 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7788, &unk_1D9198CE0);
  v32 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v30 = v24 - v5;
  v25 = sub_1D9178E0C();
  v6 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v24[0] = "episodeFirstAvailableDelta";
  sub_1D9177E3C();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1D8D017BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  v12 = v24[1];
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8090], v25);
  v25 = v11;
  v12[2] = sub_1D9178E4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7790, &qword_1D9198CF0);
  swift_allocObject();
  v12[3] = sub_1D91778DC();
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1D917935C())
  {
    v13 = sub_1D8FB23AC(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CD0];
  }

  v12[4] = v13;
  v12[6] = 0;
  swift_unknownObjectWeakInit();
  v36 = v12[3];
  sub_1D8CF48EC(&qword_1ECAB7798, &qword_1ECAB7790, &qword_1D9198CF0, MEMORY[0x1E695BF88]);

  v14 = v26;
  sub_1D9177C4C();

  v15 = v29;
  sub_1D9178DCC();
  v36 = v12[2];
  v16 = v36;
  v17 = sub_1D9178DBC();
  v18 = v33;
  (*(*(v17 - 8) + 56))(v33, 1, 1, v17);
  sub_1D8CF48EC(&qword_1ECAB77A0, &qword_1ECAB7780, &qword_1D9198CD8, MEMORY[0x1E695BDE0]);
  sub_1D8D02DF0();
  v19 = v16;
  v20 = v30;
  v21 = v28;
  sub_1D9177CFC();
  sub_1D8D08A50(v18, &qword_1ECAB4D70, &unk_1D918BCE0);

  (*(v31 + 8))(v15, v34);
  (*(v27 + 8))(v14, v21);
  swift_allocObject();
  swift_weakInit();
  sub_1D8CF48EC(&qword_1ECAB77A8, &qword_1ECAB7788, &unk_1D9198CE0, MEMORY[0x1E695BE50]);
  v22 = v35;
  sub_1D9177D9C();

  (*(v32 + 8))(v20, v22);
  swift_beginAccess();
  sub_1D917783C();
  swift_endAccess();

  return v12;
}

uint64_t sub_1D8F702A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D8F70300();
  }

  return result;
}

void sub_1D8F70300()
{
  v1 = v0;
  if (qword_1EDCD0FC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1EDCD0FC8);
  v3 = sub_1D9178D1C();
  v4 = sub_1D917741C();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D8CEC000, v4, v3, "Triggering new check for Max Implicit Follows limit.", v5, 2u);
    MEMORY[0x1DA72CB90](v5, -1, -1);
  }

  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 integerForKey_];

  v9[4] = sub_1D8F71014;
  v9[5] = v1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D8D591F0;
  v9[3] = &block_descriptor_47;
  v8 = _Block_copy(v9);

  [v7 asyncValueWithCompletion_];
  _Block_release(v8);
}

void sub_1D8F704C4(uint64_t a1, int a2, NSObject *a3, uint64_t a4)
{
  if (!a3)
  {
    if (a1)
    {
      aBlock = 0;
      sub_1D9178B7C();
    }

    if (qword_1EDCD0FC0 != -1)
    {
      swift_once();
    }

    v12 = sub_1D917744C();
    __swift_project_value_buffer(v12, qword_1EDCD0FC8);
    oslog = sub_1D917741C();
    v13 = sub_1D9178CFC();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D8CEC000, oslog, v13, "Unable to cast value for implicitly followed shows limit from the bag to an Int", v14, 2u);
      MEMORY[0x1DA72CB90](v14, -1, -1);
    }

    goto LABEL_12;
  }

  v5 = a3;
  if (qword_1EDCD0FC0 != -1)
  {
    swift_once();
  }

  v6 = sub_1D917744C();
  __swift_project_value_buffer(v6, qword_1EDCD0FC8);
  v7 = a3;
  oslog = sub_1D917741C();
  v8 = sub_1D9178CFC();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = sub_1D9176A5C();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_1D8CEC000, oslog, v8, "Failed to fetch implicit followed shows limit from the bag: %@", v9, 0xCu);
    sub_1D8D08A50(v10, &unk_1ECAB6C70, &unk_1D9188C30);
    MEMORY[0x1DA72CB90](v10, -1, -1);
    MEMORY[0x1DA72CB90](v9, -1, -1);

LABEL_12:
    v15 = oslog;

    goto LABEL_14;
  }

  v15 = a3;

LABEL_14:
}

void sub_1D8F708A4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  v9 = [a2 countOfObjectsInEntity:@"MTPodcast" predicate:a3];
  v10 = v9;
  if ((a4 & 0x8000000000000000) != 0 || v9 > a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9189070;
    *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E696AEB0]) initWithKey:@"lastDatePlayed" ascending:1];
    if (v10 < 0)
    {
      __break(1u);
      goto LABEL_22;
    }

    v16 = __OFSUB__(v10, a4);
    v17 = v10 - a4;
    if (v16)
    {
      __break(1u);
    }

    else
    {
      v18 = @"MTPodcast";
      sub_1D8F61018(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      v19 = sub_1D91785DC();

      v20 = [a2 objectsInEntity:v18 predicate:a3 sortDescriptors:v19 returnsObjectsAsFaults:0 limit:v17];

      if (!v20 || (sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620), v21 = sub_1D91785FC(), v20, v10 = sub_1D8FBEF14(v21), , !v10))
      {
LABEL_19:

        return;
      }

      if (qword_1EDCD0FC0 == -1)
      {
LABEL_13:
        v22 = sub_1D917744C();
        __swift_project_value_buffer(v22, qword_1EDCD0FC8);
        v23 = sub_1D9178D1C();
        v24 = sub_1D917741C();
        if (os_log_type_enabled(v24, v23))
        {
          v25 = swift_slowAlloc();
          *v25 = 134217984;
          *(v25 + 4) = v17;
          _os_log_impl(&dword_1D8CEC000, v24, v23, "Implicitly followed shows over the limit. Proceeding to evict %ld shows.", v25, 0xCu);
          MEMORY[0x1DA72CB90](v25, -1, -1);
        }

        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v26 = *(v8 + 48);
          ObjectType = swift_getObjectType();
          (*(v26 + 8))(v8, v10, a2, ObjectType, v26);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        [a2 saveInCurrentBlock];
        goto LABEL_19;
      }
    }

    swift_once();
    goto LABEL_13;
  }

  if (qword_1EDCD0FC0 != -1)
  {
LABEL_22:
    swift_once();
  }

  v11 = sub_1D917744C();
  __swift_project_value_buffer(v11, qword_1EDCD0FC8);
  v12 = sub_1D9178D1C();
  v13 = sub_1D917741C();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = v10;
    *(v14 + 12) = 2048;
    *(v14 + 14) = a4;
    _os_log_impl(&dword_1D8CEC000, v13, v12, "Not proceeding with eviction of implicitly followed shows -- Count of implicitly followed shows: %lu is not over the limit: %ld", v14, 0x16u);
    MEMORY[0x1DA72CB90](v14, -1, -1);
  }
}

uint64_t ImplicitFollowsDecayCoordinator.deinit()
{

  sub_1D8EB07F4(v0 + 40);
  return v0;
}

uint64_t ImplicitFollowsDecayCoordinator.__deallocating_deinit()
{

  sub_1D8EB07F4(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8F70D78(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 48) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1D8F70DDC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 48);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_1D8F71028;
}

void sub_1D8F70E74(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 48) = *(*a1 + 32);
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

unint64_t sub_1D8F70EFC()
{
  result = qword_1ECAB77B0;
  if (!qword_1ECAB77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB77B0);
  }

  return result;
}

uint64_t InterestModel.interestValueUpdatedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InterestModel(0) + 24);
  v4 = sub_1D9176E3C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InterestModel.init(adamID:interestValue:interestValueUpdatedDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a1;
  *(a3 + 8) = a4;
  v6 = *(type metadata accessor for InterestModel(0) + 24);
  v7 = sub_1D9176E3C();
  v8 = *(*(v7 - 8) + 32);

  return v8(a3 + v6, a2, v7);
}

uint64_t static InterestModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  type metadata accessor for InterestModel(0);

  return sub_1D9176DEC();
}

uint64_t sub_1D8F711B0(double *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return sub_1D9176DEC();
  }

  else
  {
    return 0;
  }
}

void *InterestObserverProvider.init(ctx:)(void *a1)
{
  v2 = sub_1D8D1F9D4(a1);

  return v2;
}

uint64_t sub_1D8F71264@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for MTInterest();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = [v5 adamID];
    [v5 interestValue];
    v9 = v8;
    v10 = [v5 lastUpdatedDate];
    v11 = type metadata accessor for InterestModel(0);
    sub_1D9176DFC();

    *a2 = v7;
    a2[1] = v9;
    v12 = *(*(v11 - 8) + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for InterestModel(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_1D8F713AC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 1;
  }

  type metadata accessor for InterestModel(0);
  return (sub_1D9176DEC() ^ 1) & 1;
}

uint64_t sub_1D8F71420(void *a1)
{
  v1 = a1;

  return RecommendationsMetadata.Shows.Metadata.init(from:)(v1);
}

uint64_t sub_1D8F71458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D9177E0C();
  v20 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9177E9C();
  v18 = *(v8 - 8);
  v19 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D8D52F10();
  v12 = sub_1D8D53120();
  v14 = (v11 || v12) | sub_1D8D53330();
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v15 = sub_1D9178E1C();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = (v14 & 1) == 0;
  aBlock[4] = sub_1D8F71B3C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_21_1;
  v17 = _Block_copy(aBlock);

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFBD18(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v10, v7, v17);
  _Block_release(v17);

  (*(v20 + 8))(v7, v5);
  return (*(v18 + 8))(v10, v19);
}

uint64_t InterestObserverProvider.deinit()
{

  return v0;
}

uint64_t InterestObserverProvider.__deallocating_deinit()
{
  InterestObserverProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t InterestRepository.init(interestStore:syncKeysRepository:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t InterestRepository.deinit()
{

  return v0;
}

uint64_t InterestRepository.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D8F71CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(v4 + 16) + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v19 = a3;
  v20 = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  v18 = a4;
  v11 = _Block_copy(aBlock);

  [v8 performBlock_];
  _Block_release(v11);
  v12 = *(v4 + 24);
  v13 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(v12 + v13, aBlock);
  v14 = v18;
  v15 = v19;
  __swift_project_boxed_opaque_existential_1(aBlock, v18);
  (*(v15 + 280))(1, v14, v15);
  return __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
}

uint64_t sub_1D8F71E2C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(v5 + 16) + 16);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;
  v21 = a4;
  v22 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  v20 = a5;
  v13 = _Block_copy(aBlock);

  [v10 performBlock_];
  _Block_release(v13);
  v14 = *(v5 + 24);
  v15 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
  swift_beginAccess();
  sub_1D8CFD9D8(v14 + v15, aBlock);
  v16 = v20;
  v17 = v21;
  __swift_project_boxed_opaque_existential_1(aBlock, v20);
  (*(v17 + 280))(1, v16, v17);
  return __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
}

Swift::Void __swiftcall InterestRepository.unsafeFavoriteExistingEntitledChannelsIfNeeded(entitledChannels:)(Swift::OpaquePointer entitledChannels)
{
  v2 = sub_1D9177E0C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9177E9C();
  v23 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v11 = [v9 BOOLForKey_];

  if ((v11 & 1) == 0)
  {
    if (entitledChannels._rawValue >> 62)
    {
      if (sub_1D917935C() >= 1)
      {
        goto LABEL_4;
      }
    }

    else if (*((entitledChannels._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_4:
      v22 = v3;
      InterestStore.unsafeFavoriteExistingEntitledChannelsIfNeeded(entitledChannels:)(entitledChannels);
      if (qword_1EDCD0990 != -1)
      {
        swift_once();
      }

      v12 = swift_allocObject();
      swift_weakInit();
      v29 = sub_1D8F72758;
      v30 = v12;
      aBlock = MEMORY[0x1E69E9820];
      v26 = 1107296256;
      v27 = sub_1D8CF5F60;
      v28 = &block_descriptor_34_0;
      v13 = _Block_copy(&aBlock);

      sub_1D9177E4C();
      v24 = MEMORY[0x1E69E7CC0];
      sub_1D8D123F8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
      sub_1D8D1D5B0();
      sub_1D91792CC();
      MEMORY[0x1DA72A400](0, v8, v5, v13);
      _Block_release(v13);
      (*(v22 + 8))(v5, v2);
LABEL_15:
      (*(v23 + 8))(v8, v6);

      return;
    }

    v14 = v3;
    if (qword_1EDCD0F40 != -1)
    {
      swift_once();
    }

    v15 = sub_1D917744C();
    __swift_project_value_buffer(v15, qword_1EDCD0F48);
    v16 = sub_1D917741C();
    v17 = sub_1D9178D1C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D8CEC000, v16, v17, "[Interests] No subscribed channels to sync for interests on first launch.", v18, 2u);
      MEMORY[0x1DA72CB90](v18, -1, -1);
    }

    if (qword_1EDCD0990 != -1)
    {
      swift_once();
    }

    v19 = swift_allocObject();
    swift_weakInit();
    v29 = sub_1D8F72750;
    v30 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_1D8CF5F60;
    v28 = &block_descriptor_30;
    v20 = _Block_copy(&aBlock);

    sub_1D9177E4C();
    v24 = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v8, v5, v20);
    _Block_release(v20);
    (*(v14 + 8))(v5, v2);
    goto LABEL_15;
  }
}

void sub_1D8F72524(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v1 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
    v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [v1 setBool:1 forKey:v2];
  }
}

void sub_1D8F725D4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 24);
    v3 = OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore;
    swift_beginAccess();
    sub_1D8CFD9D8(v2 + v3, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v5 + 280))(1, v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v6 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
    v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [v6 setBool:1 forKey:v7];
  }
}

void sub_1D8F7280C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 16);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;
  v14[4] = a4;
  v14[5] = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D8CF5F60;
  v14[3] = a5;
  v13 = _Block_copy(v14);

  [v10 performBlock_];
  _Block_release(v13);
}

void sub_1D8F72934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v12[4] = a3;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D8CF5F60;
  v12[3] = a4;
  v11 = _Block_copy(v12);

  [v8 performBlock_];
  _Block_release(v11);
}

Swift::Void __swiftcall InterestStore.unsafeFavoriteExistingEntitledChannelsIfNeeded(entitledChannels:)(Swift::OpaquePointer entitledChannels)
{
  v2 = sub_1D9176FBC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9176FDC();
  v81 = *(v6 - 1);
  v82 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v67 - v10;
  v12 = sub_1D9176E3C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v67 - v17;
  sub_1D9176FAC();
  (*(v3 + 104))(v5, *MEMORY[0x1E6969A48], v2);
  sub_1D9176E0C();
  sub_1D9176F9C();
  v19 = *(v13 + 8);
  v20 = v15;
  v21 = v12;
  v69 = v13 + 8;
  v68 = v19;
  v19(v20, v12);
  (*(v3 + 8))(v5, v2);
  (*(v81 + 8))(v8, v82);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D8CF5EF8(v11);
    if (qword_1ECAB0BF0 != -1)
    {
      goto LABEL_49;
    }

    goto LABEL_3;
  }

  (*(v13 + 32))(v18, v11, v12);
  v27 = v18;
  if (entitledChannels._rawValue >> 62)
  {
    v28 = sub_1D917935C();
    if (v28)
    {
      goto LABEL_8;
    }

LABEL_51:
    v68(v27, v21);
    return;
  }

  v28 = *((entitledChannels._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v28)
  {
    goto LABEL_51;
  }

LABEL_8:
  v29 = 0;
  v70 = 0;
  v78 = entitledChannels._rawValue & 0xC000000000000001;
  v71 = entitledChannels._rawValue + 32;
  v72 = entitledChannels._rawValue & 0xFFFFFFFFFFFFFF8;
  *&v26 = 134217984;
  v73 = v26;
  v76 = v12;
  rawValue = entitledChannels._rawValue;
  v74 = v28;
  v75 = v18;
  while (1)
  {
    if (v78)
    {
      v30 = MEMORY[0x1DA72AA90](v29, entitledChannels._rawValue);
    }

    else
    {
      if (v29 >= *(v72 + 16))
      {
        goto LABEL_48;
      }

      v30 = *&v71[8 * v29];
    }

    v31 = v30;
    if (__OFADD__(v29++, 1))
    {
      break;
    }

    v33 = [v30 podcasts];
    v82 = v31;
    if (v33)
    {
      v34 = v33;
      v35 = sub_1D8F46024();
      sub_1D8F74C20();
      v36 = sub_1D9178A9C();

      v80 = v29;
      v81 = v35;
      if ((v36 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_1D917931C();
        sub_1D9178B3C();
        v37 = v85;
        v38 = v86;
        v39 = v87;
        v40 = v88;
        v41 = v89;
      }

      else
      {
        v42 = -1 << *(v36 + 32);
        v38 = v36 + 56;
        v39 = ~v42;
        v43 = -v42;
        if (v43 < 64)
        {
          v44 = ~(-1 << v43);
        }

        else
        {
          v44 = -1;
        }

        v41 = v44 & *(v36 + 56);

        v40 = 0;
        v37 = v36;
      }

      v79 = v39;
      v45 = (v39 + 64) >> 6;
      do
      {
        if (v37 < 0)
        {
          v49 = sub_1D917938C();
          if (!v49 || (v83 = v49, swift_dynamicCast(), (v48 = v84) == 0))
          {
LABEL_36:
            sub_1D8D1B144(v37);

            v21 = v76;
            entitledChannels._rawValue = rawValue;
            v28 = v74;
            v27 = v75;
            v29 = v80;
            v31 = v82;
            goto LABEL_37;
          }
        }

        else
        {
          v46 = v40;
          v47 = v41;
          if (!v41)
          {
            while (1)
            {
              v40 = v46 + 1;
              if (__OFADD__(v46, 1))
              {
                break;
              }

              if (v40 >= v45)
              {
                goto LABEL_36;
              }

              v47 = *(v38 + 8 * v40);
              ++v46;
              if (v47)
              {
                goto LABEL_29;
              }
            }

            __break(1u);
            goto LABEL_47;
          }

LABEL_29:
          v41 = (v47 - 1) & v47;
          v48 = *(*(v37 + 48) + ((v40 << 9) | (8 * __clz(__rbit64(v47)))));
          if (!v48)
          {
            goto LABEL_36;
          }
        }

        v50 = [v48 subscribed];
      }

      while ((v50 & 1) == 0);
      v51 = sub_1D8D1B144(v37);
      MEMORY[0x1EEE9AC00](v51);
      v27 = v75;
      *(&v67 - 2) = v75;
      v52 = v70;
      sub_1D8F458E8(sub_1D8F74C78, (&v67 - 4), v36);
      v54 = v53;
      v70 = v52;

      if (v54)
      {
        v31 = v82;
        v55 = [v82 storeId];
        sub_1D8F733FC(v55 & ~(v55 >> 63), 0);
        v21 = v76;
        entitledChannels._rawValue = rawValue;
        v28 = v74;
        v29 = v80;
        goto LABEL_10;
      }

      v21 = v76;
      entitledChannels._rawValue = rawValue;
      v28 = v74;
      v29 = v80;
      v31 = v82;
      if (qword_1ECAB0BF0 != -1)
      {
        swift_once();
      }

      v65 = sub_1D917744C();
      __swift_project_value_buffer(v65, qword_1ECAB0BF8);
      v57 = v31;
      v58 = sub_1D917741C();
      v66 = sub_1D9178D1C();
      if (os_log_type_enabled(v58, v66))
      {
        v60 = swift_slowAlloc();
        *v60 = v73;
        *(v60 + 4) = [v57 storeId];

        v61 = v66;
        v62 = v58;
        v63 = "Existing channel %lld does not have at least one played episodes in the last 90 days.";
        goto LABEL_41;
      }
    }

    else
    {
LABEL_37:
      if (qword_1ECAB0BF0 != -1)
      {
        swift_once();
      }

      v56 = sub_1D917744C();
      __swift_project_value_buffer(v56, qword_1ECAB0BF8);
      v57 = v31;
      v58 = sub_1D917741C();
      v59 = sub_1D9178D1C();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = v73;
        *(v60 + 4) = [v57 storeId];

        v61 = v59;
        v62 = v58;
        v63 = "Existing channel %lld does not have at least one followed show. Not favoriting.";
LABEL_41:
        _os_log_impl(&dword_1D8CEC000, v62, v61, v63, v60, 0xCu);
        v64 = v60;
        v31 = v82;
        MEMORY[0x1DA72CB90](v64, -1, -1);

        goto LABEL_10;
      }
    }

LABEL_10:
    if (v29 == v28)
    {
      goto LABEL_51;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  swift_once();
LABEL_3:
  v22 = sub_1D917744C();
  __swift_project_value_buffer(v22, qword_1ECAB0BF8);
  v23 = sub_1D917741C();
  v24 = sub_1D9178CFC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1D8CEC000, v23, v24, "Unable to favorite existing entitled channels because could not get a date value for 90 days in the past.", v25, 2u);
    MEMORY[0x1DA72CB90](v25, -1, -1);
  }
}

uint64_t InterestStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D8F73388(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D8F733FC(a2, a3 & 1);
  }

  return result;
}

void sub_1D8F733FC(uint64_t a1, char a2)
{
  v5 = sub_1D9176E3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8F7381C(a1);
  if (v9)
  {
    v10 = v9;
    sub_1D8F73AEC(v9);
    sub_1D8F744F0(v10, &selRef_channelForStoreId_, &selRef_setChannel_, "Could not find channel for interest: %llu. Not configuring relationship to channel.", v29);
    if ((a2 & 1) != 0 || ([v10 interestValue], v11 == 0.0))
    {
      [v10 setInterestValue_];
      sub_1D9176E0C();
      v12 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
      (*(v6 + 8))(v8, v5);
      [v10 setLastUpdatedDate_];

      [*(v2 + 16) saveInCurrentBlock];
LABEL_5:

      return;
    }

    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v20 = sub_1D917744C();
    __swift_project_value_buffer(v20, qword_1ECAB0BF8);
    v10 = v10;
    v30 = sub_1D917741C();
    v21 = sub_1D9178CFC();

    if (os_log_type_enabled(v30, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31 = a1;
      v32 = v23;
      *v22 = 136315394;
      sub_1D8E40D20();
      v24 = sub_1D917927C();
      v26 = sub_1D8CFA924(v24, v25, &v32);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2048;
      [v10 interestValue];
      *(v22 + 14) = v27;
      _os_log_impl(&dword_1D8CEC000, v30, v21, "Cannot favorite interest: %s because the interestValue is not neutral. InterestValue: %f", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x1DA72CB90](v23, -1, -1);
      MEMORY[0x1DA72CB90](v22, -1, -1);

      goto LABEL_5;
    }
  }

  else
  {
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v13 = sub_1D917744C();
    __swift_project_value_buffer(v13, qword_1ECAB0BF8);
    v30 = sub_1D917741C();
    v14 = sub_1D9178CFC();
    if (os_log_type_enabled(v30, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = a1;
      v32 = v16;
      *v15 = 136315138;
      sub_1D8E40A10();
      v17 = sub_1D9179A4C();
      v19 = sub_1D8CFA924(v17, v18, &v32);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1D8CEC000, v30, v14, "Could not find or create interest for adamID: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1DA72CB90](v16, -1, -1);
      MEMORY[0x1DA72CB90](v15, -1, -1);

      return;
    }
  }

  v28 = v30;
}

void sub_1D8F7381C(uint64_t a1)
{
  v3 = sub_1D9176E3C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  NSManagedObjectContext.unsafeInterest(forAdamID:)(a1);
  if (!v8)
  {
    v9 = objc_opt_self();
    v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v11 = [v9 insertNewObjectForEntityForName:v10 inManagedObjectContext:v7];

    type metadata accessor for MTInterest();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = v12;
      [v12 setAdamID_];
      [v13 setInterestValue_];
      sub_1D9176E0C();
      v14 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
      (*(v4 + 8))(v6, v3);
      [v13 setLastUpdatedDate_];
    }

    else
    {

      if (qword_1ECAB0BF0 != -1)
      {
        swift_once();
      }

      v15 = sub_1D917744C();
      __swift_project_value_buffer(v15, qword_1ECAB0BF8);
      v16 = sub_1D917741C();
      v17 = sub_1D9178CFC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v23 = a1;
        v24 = v19;
        *v18 = 136315138;
        sub_1D8E40A10();
        v20 = sub_1D9179A4C();
        v22 = sub_1D8CFA924(v20, v21, &v24);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_1D8CEC000, v16, v17, "Cannot create MTInterest for adamID: %s. Unable to favorite interest.", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x1DA72CB90](v19, -1, -1);
        MEMORY[0x1DA72CB90](v18, -1, -1);
      }
    }
  }
}

void sub_1D8F73AEC(void *a1)
{
  NSManagedObjectContext.unsafeCategory(forAdamID:)([a1 adamID]);
  if (v2)
  {
    v8 = v2;
    [a1 setCategory_];
    [v8 setInterest:a1];
    v3 = v8;
  }

  else
  {
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v4 = sub_1D917744C();
    __swift_project_value_buffer(v4, qword_1ECAB0BF8);
    v5 = a1;
    v9 = sub_1D917741C();
    v6 = sub_1D9178D1C();
    if (os_log_type_enabled(v9, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = [v5 adamID];

      _os_log_impl(&dword_1D8CEC000, v9, v6, "Could not find category for interest: %llu. Not configuring relationship to category.", v7, 0xCu);
      MEMORY[0x1DA72CB90](v7, -1, -1);
      v3 = v9;
    }

    else
    {

      v3 = v5;
    }
  }
}

void sub_1D8F73C60(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D9176E3C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1D8F7381C(a2);
    if (v9)
    {
      v10 = v9;
      sub_1D8F73AEC(v9);
      sub_1D8F744F0(v10, &selRef_channelForStoreId_, &selRef_setChannel_, "Could not find channel for interest: %llu. Not configuring relationship to channel.", v31);
      [v10 interestValue];
      if (v11 == 1.0)
      {
        [v10 setInterestValue_];
        sub_1D9176E0C();
        v12 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
        (*(v4 + 8))(v6, v3);
        [v10 setLastUpdatedDate_];

        [*(v8 + 16) saveInCurrentBlock];
      }

      else
      {
        if (qword_1ECAB0BF0 != -1)
        {
          swift_once();
        }

        v21 = sub_1D917744C();
        __swift_project_value_buffer(v21, qword_1ECAB0BF8);
        v22 = v10;
        v23 = sub_1D917741C();
        v24 = sub_1D9178CFC();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v32 = a2;
          v33 = v26;
          *v25 = 136315394;
          sub_1D8E40D20();
          v27 = sub_1D917927C();
          v29 = sub_1D8CFA924(v27, v28, &v33);

          *(v25 + 4) = v29;
          *(v25 + 12) = 2048;
          [v22 interestValue];
          *(v25 + 14) = v30;
          _os_log_impl(&dword_1D8CEC000, v23, v24, "Cannot un-favorite interest: %s because the interestValue is not favorited. InterestValue: %f", v25, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v26);
          MEMORY[0x1DA72CB90](v26, -1, -1);
          MEMORY[0x1DA72CB90](v25, -1, -1);
        }

        else
        {
        }
      }
    }

    else
    {
      if (qword_1ECAB0BF0 != -1)
      {
        swift_once();
      }

      v13 = sub_1D917744C();
      __swift_project_value_buffer(v13, qword_1ECAB0BF8);
      v14 = sub_1D917741C();
      v15 = sub_1D9178CFC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v32 = a2;
        v33 = v17;
        *v16 = 136315138;
        sub_1D8E40A10();
        v18 = sub_1D9179A4C();
        v20 = sub_1D8CFA924(v18, v19, &v33);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_1D8CEC000, v14, v15, "Could not find or create interest for adamID: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        MEMORY[0x1DA72CB90](v17, -1, -1);
        MEMORY[0x1DA72CB90](v16, -1, -1);
      }
    }
  }
}

void sub_1D8F740A0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1D9176E3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_1D8F7381C(a2);
    if (v11)
    {
      v12 = v11;
      sub_1D8F73AEC(v11);
      sub_1D8F744F0(v12, &selRef_channelForStoreId_, &selRef_setChannel_, "Could not find channel for interest: %llu. Not configuring relationship to channel.", v32);
      sub_1D8F744F0(v12, &selRef_podcastForStoreId_, &selRef_setPodcast_, "Could not find podcast for interest: %llu. Not configuring relationship to podcast.", v32);
      if ((a3 & 1) != 0 || ([v12 interestValue], v13 == 0.0))
      {
        [v12 setInterestValue_];
        sub_1D9176E0C();
        v14 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
        (*(v6 + 8))(v8, v5);
        [v12 setLastUpdatedDate_];

        [*(v10 + 16) saveInCurrentBlock];
LABEL_6:

        return;
      }

      if (qword_1ECAB0BF0 != -1)
      {
        swift_once();
      }

      v23 = sub_1D917744C();
      __swift_project_value_buffer(v23, qword_1ECAB0BF8);
      v12 = v12;
      v24 = sub_1D917741C();
      v25 = sub_1D9178CFC();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v33 = a2;
        v34 = v27;
        *v26 = 136315394;
        sub_1D8E40D20();
        v28 = sub_1D917927C();
        v30 = sub_1D8CFA924(v28, v29, &v34);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2048;
        [v12 interestValue];
        *(v26 + 14) = v31;
        _os_log_impl(&dword_1D8CEC000, v24, v25, "Cannot Suggest Less for interest: %s because the interestValue is not neutral. InterestValue: %f", v26, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
        MEMORY[0x1DA72CB90](v27, -1, -1);
        MEMORY[0x1DA72CB90](v26, -1, -1);

        goto LABEL_6;
      }
    }

    else
    {
      if (qword_1ECAB0BF0 != -1)
      {
        swift_once();
      }

      v15 = sub_1D917744C();
      __swift_project_value_buffer(v15, qword_1ECAB0BF8);
      v16 = sub_1D917741C();
      v17 = sub_1D9178CFC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v33 = a2;
        v34 = v19;
        *v18 = 136315138;
        sub_1D8E40A10();
        v20 = sub_1D9179A4C();
        v22 = sub_1D8CFA924(v20, v21, &v34);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_1D8CEC000, v16, v17, "Could not find or create interest for adamID: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x1DA72CB90](v19, -1, -1);
        MEMORY[0x1DA72CB90](v18, -1, -1);
      }
    }
  }
}

void sub_1D8F744F0(void *a1, SEL *a2, SEL *a3, const char *a4, ...)
{
  v9 = *(v4 + 16);
  v10 = [a1 adamID];
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_5;
  }

  v11 = [v9 *a2];
  if (v11)
  {
    v17 = v11;
    [a1 *a3];
    [v17 setInterest:a1];
    v12 = v17;
    goto LABEL_8;
  }

  if (qword_1ECAB0BF0 != -1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v13 = sub_1D917744C();
  __swift_project_value_buffer(v13, qword_1ECAB0BF8);
  v14 = a1;
  v18 = sub_1D917741C();
  v15 = sub_1D9178D1C();
  if (os_log_type_enabled(v18, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = [v14 adamID];

    _os_log_impl(&dword_1D8CEC000, v18, v15, a4, v16, 0xCu);
    MEMORY[0x1DA72CB90](v16, -1, -1);
    v12 = v18;
  }

  else
  {

    v12 = v14;
  }

LABEL_8:
}

void sub_1D8F74694(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D9176E3C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1D8F7381C(a2);
    if (v9)
    {
      v10 = v9;
      sub_1D8F73AEC(v9);
      sub_1D8F744F0(v10, &selRef_channelForStoreId_, &selRef_setChannel_, "Could not find channel for interest: %llu. Not configuring relationship to channel.", v31);
      sub_1D8F744F0(v10, &selRef_podcastForStoreId_, &selRef_setPodcast_, "Could not find podcast for interest: %llu. Not configuring relationship to podcast.", v31);
      [v10 interestValue];
      if (v11 == -1.0)
      {
        [v10 setInterestValue_];
        sub_1D9176E0C();
        v12 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
        (*(v4 + 8))(v6, v3);
        [v10 setLastUpdatedDate_];

        [*(v8 + 16) saveInCurrentBlock];
      }

      else
      {
        if (qword_1ECAB0BF0 != -1)
        {
          swift_once();
        }

        v21 = sub_1D917744C();
        __swift_project_value_buffer(v21, qword_1ECAB0BF8);
        v22 = v10;
        v23 = sub_1D917741C();
        v24 = sub_1D9178CFC();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v32 = a2;
          v33 = v26;
          *v25 = 136315394;
          sub_1D8E40D20();
          v27 = sub_1D917927C();
          v29 = sub_1D8CFA924(v27, v28, &v33);

          *(v25 + 4) = v29;
          *(v25 + 12) = 2048;
          [v22 interestValue];
          *(v25 + 14) = v30;
          _os_log_impl(&dword_1D8CEC000, v23, v24, "Cannot Undo Suggest Less for interest: %s because the interestValue is not suggestLess. InterestValue: %f", v25, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v26);
          MEMORY[0x1DA72CB90](v26, -1, -1);
          MEMORY[0x1DA72CB90](v25, -1, -1);
        }

        else
        {
        }
      }
    }

    else
    {
      if (qword_1ECAB0BF0 != -1)
      {
        swift_once();
      }

      v13 = sub_1D917744C();
      __swift_project_value_buffer(v13, qword_1ECAB0BF8);
      v14 = sub_1D917741C();
      v15 = sub_1D9178CFC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v32 = a2;
        v33 = v17;
        *v16 = 136315138;
        sub_1D8E40A10();
        v18 = sub_1D9179A4C();
        v20 = sub_1D8CFA924(v18, v19, &v33);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_1D8CEC000, v14, v15, "Could not find or create interest for adamID: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        MEMORY[0x1DA72CB90](v17, -1, -1);
        MEMORY[0x1DA72CB90](v16, -1, -1);
      }
    }
  }
}

uint64_t sub_1D8F74AF4(id *a1, uint64_t a2)
{
  v3 = sub_1D9176E3C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*a1 lastDatePlayed];
  sub_1D9176CBC();
  v8 = sub_1D9176D9C();
  (*(v4 + 8))(v7, v3);
  return v8 & 1;
}

uint64_t sub_1D8F74BF0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_1D8F74C20()
{
  result = qword_1ECAB72F8;
  if (!qword_1ECAB72F8)
  {
    sub_1D8F46024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB72F8);
  }

  return result;
}

double sub_1D8F74CC0@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1D8F74CE0()
{
  v1 = *v0;
  sub_1D9179DBC();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1DA72B3C0](*&v2);
  return sub_1D9179E1C();
}

uint64_t sub_1D8F74D3C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1DA72B3C0](*&v1);
}

uint64_t sub_1D8F74D78(uint64_t a1)
{
  v2 = *v1;
  sub_1D9179DBC();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x1DA72B3C0](*&v3);
  return sub_1D9179E1C();
}

unint64_t sub_1D8F74DEC()
{
  result = qword_1ECAB77D8;
  if (!qword_1ECAB77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB77D8);
  }

  return result;
}

PodcastsFoundation::PodcastsSystem_optional __swiftcall PodcastsSystem.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D9179C6C();

  v5 = 0;
  v6 = 36;
  switch(v3)
  {
    case 0:
      goto LABEL_51;
    case 1:
      v5 = 1;
      goto LABEL_51;
    case 2:
      v5 = 2;
      goto LABEL_51;
    case 3:
      v5 = 3;
      goto LABEL_51;
    case 4:
      v5 = 4;
      goto LABEL_51;
    case 5:
      v5 = 5;
      goto LABEL_51;
    case 6:
      v5 = 6;
      goto LABEL_51;
    case 7:
      v5 = 7;
      goto LABEL_51;
    case 8:
      v5 = 8;
      goto LABEL_51;
    case 9:
      v5 = 9;
      goto LABEL_51;
    case 10:
      v5 = 10;
      goto LABEL_51;
    case 11:
      v5 = 11;
      goto LABEL_51;
    case 12:
      v5 = 12;
      goto LABEL_51;
    case 13:
      v5 = 13;
      goto LABEL_51;
    case 14:
      v5 = 14;
      goto LABEL_51;
    case 15:
      v5 = 15;
      goto LABEL_51;
    case 16:
      v5 = 16;
      goto LABEL_51;
    case 17:
      v5 = 17;
      goto LABEL_51;
    case 18:
      v5 = 18;
      goto LABEL_51;
    case 19:
      v5 = 19;
      goto LABEL_51;
    case 20:
      v5 = 20;
      goto LABEL_51;
    case 21:
      v5 = 21;
      goto LABEL_51;
    case 22:
      v5 = 22;
      goto LABEL_51;
    case 23:
      v5 = 23;
      goto LABEL_51;
    case 24:
      v5 = 24;
      goto LABEL_51;
    case 25:
      v5 = 25;
      goto LABEL_51;
    case 26:
      v5 = 26;
      goto LABEL_51;
    case 27:
      v5 = 27;
      goto LABEL_51;
    case 28:
      v5 = 28;
      goto LABEL_51;
    case 29:
      v5 = 29;
      goto LABEL_51;
    case 30:
      v5 = 30;
      goto LABEL_51;
    case 31:
      v5 = 31;
      goto LABEL_51;
    case 32:
      v5 = 32;
      goto LABEL_51;
    case 33:
      v5 = 33;
      goto LABEL_51;
    case 34:
      v5 = 34;
      goto LABEL_51;
    case 35:
      v5 = 35;
LABEL_51:
      v6 = v5;
      break;
    case 36:
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    case 47:
      v6 = 47;
      break;
    case 48:
      v6 = 48;
      break;
    case 49:
      v6 = 49;
      break;
    case 50:
      v6 = 50;
      break;
    case 51:
      v6 = 51;
      break;
    case 52:
      v6 = 52;
      break;
    case 53:
      v6 = 53;
      break;
    default:
      v6 = 54;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t PodcastsSystem.rawValue.getter()
{
  result = 0x6B72616D6B6F6F42;
  switch(*v0)
  {
    case 1:
      result = 0x6573616261746144;
      break;
    case 2:
      result = 0x64616F6C6E776F44;
      break;
    case 3:
      result = 21322;
      break;
    case 4:
      result = 0x697461676976614ELL;
      break;
    case 5:
      result = 0x746567646957;
      break;
    case 6:
      result = 0x537972617262694CLL;
      break;
    case 7:
      result = 0x677542656C6946;
      break;
    case 8:
      result = 0x73676E6974746553;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 0xA:
      result = 0x79726F6D654D6E49;
      break;
    case 0xB:
      result = 0x6E795364756F6C43;
      break;
    case 0xC:
    case 0x35:
      result = 0xD000000000000010;
      break;
    case 0xD:
      result = 0x616E6F4469726953;
      break;
    case 0xE:
      result = 0x5564656546535352;
      break;
    case 0xF:
      result = 0xD000000000000015;
      break;
    case 0x10:
      result = 0x6E69776F6C6C6F46;
      break;
    case 0x11:
      result = 0x6164705564656546;
      break;
    case 0x12:
      result = 0x6B63616279616C50;
      break;
    case 0x13:
      result = 0x6D617A616853;
      break;
    case 0x14:
      result = 0x697263736E617254;
      break;
    case 0x15:
      result = 0x6573616863727550;
      break;
    case 0x16:
      result = 0x50746E6572727543;
      break;
    case 0x17:
      result = 0x79616C5072696146;
      break;
    case 0x18:
      result = 0xD000000000000014;
      break;
    case 0x19:
      result = 0x7363697274654DLL;
      break;
    case 0x1A:
      result = 0x737465737341;
      break;
    case 0x1B:
      result = 0x6B726F77747241;
      break;
    case 0x1C:
      result = 0xD000000000000011;
      break;
    case 0x1D:
      result = 0xD000000000000011;
      break;
    case 0x1E:
      result = 0x6F52746E65746E49;
      break;
    case 0x1F:
      result = 0x614279636E756F42;
      break;
    case 0x20:
      result = 0x6979616C50776F4ELL;
      break;
    case 0x21:
      result = 0xD000000000000011;
      break;
    case 0x22:
      result = 0xD000000000000019;
      break;
    case 0x23:
      result = 0x6C506E7265646F4DLL;
      break;
    case 0x24:
      result = 0x73776F7262657945;
      break;
    case 0x25:
      result = 0xD000000000000011;
      break;
    case 0x26:
      result = 0x79636176697250;
      break;
    case 0x27:
      result = 0x6C6379636566694CLL;
      break;
    case 0x28:
      result = 0x6F4E6E657473694CLL;
      break;
    case 0x29:
      result = 18773;
      break;
    case 0x2A:
      result = 0x7473657265746E49;
      break;
    case 0x2B:
      result = 0xD000000000000017;
      break;
    case 0x2C:
      result = 0x6974634172657355;
      break;
    case 0x2D:
      result = 0x6B726F7774654ELL;
      break;
    case 0x2E:
      result = 0x686372616553;
      break;
    case 0x2F:
      result = 0x6163696669746F4ELL;
      break;
    case 0x30:
      result = 0x7463697274736552;
      break;
    case 0x31:
      result = 1936746836;
      break;
    case 0x32:
      result = 0x7372657470616843;
      break;
    case 0x33:
      result = 0x736B6E694CLL;
      break;
    case 0x34:
      result = 5525584;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8F7561C()
{
  v0 = PodcastsSystem.rawValue.getter();
  v2 = v1;
  if (v0 == PodcastsSystem.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D9179ACC();
  }

  return v5 & 1;
}

uint64_t sub_1D8F756B8()
{
  sub_1D9179DBC();
  PodcastsSystem.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D8F75720(uint64_t a1)
{
  PodcastsSystem.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D8F75784(uint64_t a1)
{
  sub_1D9179DBC();
  PodcastsSystem.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

unint64_t sub_1D8F757F4@<X0>(unint64_t *a1@<X8>)
{
  result = PodcastsSystem.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Logger.init(domain:)()
{
  PodcastsSystem.rawValue.getter();

  return sub_1D917742C();
}

uint64_t sub_1D8F75A9C()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1EDCD0FC8);
  __swift_project_value_buffer(v0, qword_1EDCD0FC8);
  return sub_1D917742C();
}

uint64_t sub_1D8F75E3C()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1ECAB0D50);
  __swift_project_value_buffer(v0, qword_1ECAB0D50);
  return sub_1D917742C();
}

uint64_t sub_1D8F75FE0()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1ECAB7810);
  __swift_project_value_buffer(v0, qword_1ECAB7810);
  return sub_1D917742C();
}

uint64_t sub_1D8F76234()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1EDCD1030);
  __swift_project_value_buffer(v0, qword_1EDCD1030);
  return sub_1D917742C();
}

uint64_t sub_1D8F76400()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1ECAB0D30);
  __swift_project_value_buffer(v0, qword_1ECAB0D30);
  return sub_1D917742C();
}

uint64_t sub_1D8F766EC()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1ECAB0D98);
  __swift_project_value_buffer(v0, qword_1ECAB0D98);
  return sub_1D917742C();
}

uint64_t (*static OS_os_log.bookmarks.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ECAB3570 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.carPlay.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ECAB3578 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917744C();
  __swift_project_value_buffer(v1, qword_1ECAB7920);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.classKit.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDCD06E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917744C();
  __swift_project_value_buffer(v1, qword_1EDCD06E8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.cloudSync.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDCD06A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917744C();
  __swift_project_value_buffer(v1, qword_1EDCD06B0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.cloudSyncSignpost.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDCD0740 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1D8F77140()
{
  sub_1D8CF2AC4();
  result = sub_1D917919C();
  qword_1ECAB7938 = result;
  return result;
}

uint64_t (*static OS_os_log.contentServiceDefault.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ECAB3588 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.database.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDCD06D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.downloads.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDCD5AB8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.drm.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ECAAFBE0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917744C();
  __swift_project_value_buffer(v1, qword_1ECAAFBE8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.episodeStatesSignpost.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDCD0728 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.stateLogger.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ECAAFC40 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917744C();
  __swift_project_value_buffer(v1, qword_1ECAAFC48);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.feedUpdate.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDCD0768 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917744C();
  __swift_project_value_buffer(v1, qword_1EDCD0770);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t (*static OS_os_log.feedFetch.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ECAB3590 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917744C();
  __swift_project_value_buffer(v1, qword_1ECAB7940);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1D8F77828()
{
  sub_1D8CF2AC4();
  result = sub_1D917919C();
  qword_1ECAB7958 = result;
  return result;
}

uint64_t (*static OS_os_log.iTunesContentConsolidation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ECAB3598 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1D8F77964()
{
  sub_1D8CF2AC4();
  result = sub_1D917919C();
  qword_1ECAB7960 = result;
  return result;
}

uint64_t (*static OS_os_log.iTunesMigration.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ECAB35A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.iTunesSync.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ECAB35A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.jsSignpost.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDCD0750 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1D8F77C40()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1ECAB7970);
  __swift_project_value_buffer(v0, qword_1ECAB7970);
  if (qword_1EDCD0750 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_1EDCD0758;
  return sub_1D917745C();
}

uint64_t (*static OS_os_log.js.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ECAB35B8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917744C();
  __swift_project_value_buffer(v1, qword_1ECAB7970);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.launch.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDCD0710 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1D8F77E9C()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1ECAAFC20);
  __swift_project_value_buffer(v0, qword_1ECAAFC20);
  return sub_1D917742C();
}

uint64_t (*static OS_os_log.librarySplitView.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ECAAFC18 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917744C();
  __swift_project_value_buffer(v1, qword_1ECAAFC20);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.mediaLibrary.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ECAB35C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.mediaRemote.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ECAB35C8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917744C();
  __swift_project_value_buffer(v1, qword_1ECAB7990);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.metrics.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDCD0700 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.notifications.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ECAB35D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.playback.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ECAB35E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917744C();
  __swift_project_value_buffer(v1, qword_1ECAB79B0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.purchases.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDCD5AA8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917744C();
  __swift_project_value_buffer(v1, qword_1EDCD0690);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.search.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ECAB35F0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917744C();
  __swift_project_value_buffer(v1, qword_1ECAB79C8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.restore.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDCD5AC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.reviews.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ECAB3600 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1D8F78878(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = sub_1D917744C();
  v7 = __swift_project_value_buffer(v6, a3);
  swift_beginAccess();
  v8 = *(v6 - 8);
  (*(v8 + 24))(v7, a1, v6);
  swift_endAccess();
  return (*(v8 + 8))(a1, v6);
}

uint64_t (*static OS_os_log.shelfSystem.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDCD5AD8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917744C();
  __swift_project_value_buffer(v1, qword_1EDCD5AE0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static OS_os_log.widget.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDCD7B10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1D8F78AD8()
{
  sub_1D8CF2AC4();
  result = sub_1D917919C();
  qword_1ECAAFC10 = result;
  return result;
}

void sub_1D8F78B88(void *a1, void *a2, void **a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = *a3;
  *a3 = a1;
}

uint64_t (*static OS_os_log.podcastsMediaLibrarySignpost.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ECAAFC08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_1D8F78D88()
{
  result = qword_1ECAB79E8;
  if (!qword_1ECAB79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB79E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PodcastsSystem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCB)
  {
    goto LABEL_17;
  }

  if (a2 + 53 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 53) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 53;
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

      return (*a1 | (v4 << 8)) - 53;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 53;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x36;
  v8 = v6 - 54;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PodcastsSystem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 53 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 53) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCB)
  {
    v4 = 0;
  }

  if (a2 > 0xCA)
  {
    v5 = ((a2 - 203) >> 8) + 1;
    *result = a2 + 53;
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
    *result = a2 + 53;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t PublisherSignpostIntervalEndType.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8F78FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v38 = a5;
  v37 = a4;
  v34 = a2;
  v35 = a3;
  v39 = sub_1D917734C();
  v36 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v33 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  swift_getAssociatedConformanceWitness();
  v16 = sub_1D91777CC();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v33 - v19;
  (*(v17 + 16))(&v33 - v19, a1, v16, v18);
  if ((*(v10 + 48))(v20, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v17 + 8))(v20, v16);
  }

  (*(v10 + 32))(v15, v20, AssociatedTypeWitness);
  v22 = sub_1D9178F6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D918A530;
  v40 = swift_getAssociatedTypeWitness();
  swift_getMetatypeMetadata();
  v24 = sub_1D917826C();
  v26 = v25;
  v27 = MEMORY[0x1E69E6158];
  *(v23 + 56) = MEMORY[0x1E69E6158];
  v28 = sub_1D8D34978();
  *(v23 + 64) = v28;
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  (*(v10 + 16))(v12, v15, AssociatedTypeWitness);
  v29 = sub_1D917826C();
  *(v23 + 96) = v27;
  *(v23 + 104) = v28;
  *(v23 + 72) = v29;
  *(v23 + 80) = v30;
  v31 = v33;
  sub_1D917733C();
  v32 = 2;
  sub_1D91772EC(v22, &dword_1D8CEC000, v34, v35, v37, v38, v31, "Publisher Type: %{public} Signpost Error: %{public}s", 52, v32, v23);

  (*(v36 + 8))(v31, v39);
  return (*(v10 + 8))(v15, AssociatedTypeWitness);
}

uint64_t Publisher.endSignpostInterval(endType:log:name:signpostID:)(char *a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = a5;
  v42 = a3;
  v43 = a4;
  v45 = a2;
  v46 = a8;
  v47 = a7;
  v10 = sub_1D91775FC();
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v37 - v11;
  v12 = sub_1D917734C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = *a1;
  v16 = swift_allocObject();
  v17 = 0;
  v18 = 0;
  *(v16 + 16) = 0;
  v19 = *(v13 + 16);
  if ((v15 & 1) == 0)
  {
    v38 = *(v13 + 16);
    (v19)(&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v12);
    v20 = (*(v13 + 80) + 57) & ~*(v13 + 80);
    v18 = swift_allocObject();
    v21 = v46;
    *(v18 + 16) = v47;
    *(v18 + 24) = v21;
    v37 = a6;
    v22 = v45;
    v24 = v42;
    v23 = v43;
    *(v18 + 32) = v45;
    *(v18 + 40) = v24;
    *(v18 + 48) = v23;
    *(v18 + 56) = v44;
    (*(v13 + 32))(v18 + v20, &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
    *(v18 + ((v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
    v25 = v22;
    a6 = v37;

    v19 = v38;
    v17 = sub_1D8F79D68;
  }

  v38 = v17;
  (v19)(&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v12);
  v26 = (*(v13 + 80) + 65) & ~*(v13 + 80);
  v27 = swift_allocObject();
  v28 = v46;
  *(v27 + 16) = v47;
  *(v27 + 24) = v28;
  v29 = v45;
  *(v27 + 32) = v16;
  *(v27 + 40) = v29;
  v30 = v43;
  *(v27 + 48) = v42;
  *(v27 + 56) = v30;
  *(v27 + 64) = v44;
  (*(v13 + 32))(v27 + v26, &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v31 = v29;

  v33 = v38;
  v32 = v39;
  sub_1D9177B3C();
  v34 = v41;
  swift_getWitnessTable();
  v35 = sub_1D9177B1C();

  sub_1D8D15664(v33, v18);
  (*(v40 + 8))(v32, v34);

  return v35;
}

uint64_t sub_1D8F7974C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a6;
  v26 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v25 - v16;
  v18 = sub_1D9178F4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D9189080;
  (*(v15 + 16))(v17, a1, AssociatedTypeWitness);
  v20 = sub_1D917826C();
  v22 = v21;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = sub_1D8D34978();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v24 = 2;
  sub_1D91772EC(v18, &dword_1D8CEC000, a2, a3, a4, v26, v27, "Signpost Output: %{public}s", 27, v24, v19);

  result = swift_beginAccess();
  *(a7 + 16) = 1;
  return result;
}

uint64_t sub_1D8F79924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = a7;
  v33 = a6;
  v31 = a4;
  v32 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  swift_getAssociatedConformanceWitness();
  v19 = sub_1D91777CC();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v31 - v21;
  (*(v23 + 16))(&v31 - v21, a1, v20);
  if ((*(v13 + 48))(v22, 1, AssociatedTypeWitness) == 1)
  {
    result = swift_beginAccess();
    if (*(a2 + 16))
    {
      return result;
    }

    v25 = sub_1D9178F4C();
    sub_1D91772EC(v25, &dword_1D8CEC000, a3, v31, v32, v33, v34, "No Output", 9, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    (*(v13 + 32))(v18, v22, AssociatedTypeWitness);
    swift_beginAccess();
    if (*(a2 + 16))
    {
      return (*(v13 + 8))(v18, AssociatedTypeWitness);
    }

    v26 = sub_1D9178F4C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1D9189080;
    (*(v13 + 16))(v15, v18, AssociatedTypeWitness);
    v28 = sub_1D917826C();
    v30 = v29;
    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = sub_1D8D34978();
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;
    sub_1D91772EC(v26, &dword_1D8CEC000, a3, v31, v32, v33, v34, "Error: %{public}s", 17, 2, v27);

    (*(v13 + 8))(v18, AssociatedTypeWitness);
  }

  result = swift_beginAccess();
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_1D8F79CDC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_1D917734C() - 8);
  return sub_1D8F79924(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), v1 + ((*(v5 + 80) + 65) & ~*(v5 + 80)), v3, v4);
}

uint64_t sub_1D8F79D68(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_1D917734C() - 8);
  v6 = (*(v5 + 80) + 57) & ~*(v5 + 80);
  return sub_1D8F7974C(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v1 + v6, *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), v3, v4);
}

unint64_t sub_1D8F79E24()
{
  result = qword_1ECAB79F0[0];
  if (!qword_1ECAB79F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECAB79F0);
  }

  return result;
}

uint64_t static MetricsField.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1D9179ACC();
  }
}

uint64_t MetricsField.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D8F79F58(uint64_t a1)
{
  sub_1D9179DBC();
  MetricsField.hash(into:)(v3, *v1, v1[1]);
  return sub_1D9179E1C();
}

uint64_t MetricsField.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D917946C();

  strcpy(v7, "MetricsField<");
  v5 = sub_1D9179FEC();
  MEMORY[0x1DA7298F0](v5);

  MEMORY[0x1DA7298F0](2238526, 0xE300000000000000);
  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return v7[0];
}

uint64_t MetricsField.description.getter()
{
  nullsub_1();
  v1 = v0;

  return v1;
}

uint64_t sub_1D8F7A0B0()
{
  nullsub_1();
  v1 = v0;

  return v1;
}

uint64_t sub_1D8F7AAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Bool.init(metricsFieldValue:)(uint64_t a1)
{
  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 2;
  }
}

uint64_t Bool.metricsFieldRepresentation()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = MEMORY[0x1E69E6370];
  *a2 = result;
  return result;
}

uint64_t sub_1D8F7AB68@<X0>(char *a3@<X8>)
{
  result = swift_dynamicCast();
  v5 = v6;
  if (!result)
  {
    v5 = 2;
  }

  *a3 = v5;
  return result;
}

unint64_t Float.init(metricsFieldValue:)(void *a1)
{
  sub_1D8CFAD1C(a1, v8);
  sub_1D8E93CA4();
  v2 = swift_dynamicCast();
  if (v2)
  {
    [v7 floatValue];
    v4 = v3;

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v5 = v4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v5 = 0;
  }

  return v5 | ((v2 ^ 1u) << 32);
}

unint64_t Float.metricsFieldRepresentation()@<X0>(void *a1@<X8>, float a2@<S0>)
{
  v4 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v5 = a2;
  v6 = [v4 initWithFloat_];
  result = sub_1D8E93CA4();
  a1[3] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_1D8F7ACD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8CFAD1C(a1, v9);
  sub_1D8E93CA4();
  v4 = swift_dynamicCast();
  if (v4)
  {
    [v8 floatValue];
    v6 = v5;

    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 4) = v4 ^ 1;
  return result;
}

unint64_t sub_1D8F7AD8C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  LODWORD(v5) = v3;
  v6 = [v4 initWithFloat_];
  result = sub_1D8E93CA4();
  a1[3] = result;
  *a1 = v6;
  return result;
}

uint64_t Double.init(metricsFieldValue:)(void *a1)
{
  sub_1D8CFAD1C(a1, v6);
  sub_1D8E93CA4();
  if (swift_dynamicCast())
  {
    [v5 doubleValue];
    v3 = v2;

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v3;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return 0;
  }
}

unint64_t Double.metricsFieldRepresentation()@<X0>(void *a1@<X8>, double a2@<D0>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  result = sub_1D8E93CA4();
  a1[3] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_1D8F7AEF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8CFAD1C(a1, v9);
  sub_1D8E93CA4();
  v4 = swift_dynamicCast();
  if (v4)
  {
    [v8 doubleValue];
    v6 = v5;

    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v4 ^ 1;
  return result;
}

unint64_t sub_1D8F7AFA4@<X0>(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  result = sub_1D8E93CA4();
  a1[3] = result;
  *a1 = v3;
  return result;
}

uint64_t Int8.init(metricsFieldValue:)(void *a1)
{
  sub_1D8CFAD1C(a1, v6);
  sub_1D8E93CA4();
  v2 = swift_dynamicCast();
  if (v2)
  {
    v3 = [v5 charValue];

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v3 = 0;
  }

  return v3 | ((v2 ^ 1u) << 8);
}

unint64_t Int8.metricsFieldRepresentation()@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithChar_];
  result = sub_1D8E93CA4();
  a2[3] = result;
  *a2 = v3;
  return result;
}

uint64_t sub_1D8F7B12C@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  sub_1D8CFAD1C(a1, v8);
  sub_1D8E93CA4();
  v4 = swift_dynamicCast();
  if (v4)
  {
    v5 = [v7 charValue];

    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = v4 ^ 1;
  return result;
}

unint64_t sub_1D8F7B1E0@<X0>(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithChar_];
  result = sub_1D8E93CA4();
  a1[3] = result;
  *a1 = v3;
  return result;
}

uint64_t Int16.init(metricsFieldValue:)(void *a1)
{
  sub_1D8CFAD1C(a1, v7);
  sub_1D8E93CA4();
  v2 = swift_dynamicCast();
  if (v2)
  {
    v3 = [v6 shortValue];

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v4 = v3;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v4 = 0;
  }

  return v4 | ((v2 ^ 1u) << 16);
}

unint64_t Int16.metricsFieldRepresentation()@<X0>(__int16 a1@<W0>, void *a2@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  result = sub_1D8E93CA4();
  a2[3] = result;
  *a2 = v3;
  return result;
}

uint64_t sub_1D8F7B330@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8CFAD1C(a1, v8);
  sub_1D8E93CA4();
  v4 = swift_dynamicCast();
  if (v4)
  {
    v5 = [v7 shortValue];

    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 2) = v4 ^ 1;
  return result;
}

unint64_t sub_1D8F7B3E4@<X0>(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  result = sub_1D8E93CA4();
  a1[3] = result;
  *a1 = v3;
  return result;
}

uint64_t UInt8.init(metricsFieldValue:)(void *a1)
{
  sub_1D8CFAD1C(a1, v6);
  sub_1D8E93CA4();
  v2 = swift_dynamicCast();
  if (v2)
  {
    v3 = [v5 unsignedCharValue];

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v3 = 0;
  }

  return v3 | ((v2 ^ 1) << 8);
}

unint64_t UInt8.metricsFieldRepresentation()@<X0>(unsigned __int8 a1@<W0>, void *a2@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedChar_];
  result = sub_1D8E93CA4();
  a2[3] = result;
  *a2 = v3;
  return result;
}

uint64_t sub_1D8F7B5B4@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  sub_1D8CFAD1C(a1, v8);
  sub_1D8E93CA4();
  v4 = swift_dynamicCast();
  if (v4)
  {
    v5 = [v7 unsignedCharValue];

    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = v4 ^ 1;
  return result;
}

unint64_t sub_1D8F7B668@<X0>(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedChar_];
  result = sub_1D8E93CA4();
  a1[3] = result;
  *a1 = v3;
  return result;
}

uint64_t UInt16.init(metricsFieldValue:)(void *a1)
{
  sub_1D8CFAD1C(a1, v6);
  sub_1D8E93CA4();
  v2 = swift_dynamicCast();
  if (v2)
  {
    v3 = [v5 unsignedShortValue];

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v3 = 0;
  }

  return v3 | ((v2 ^ 1) << 16);
}

unint64_t UInt16.metricsFieldRepresentation()@<X0>(unsigned __int16 a1@<W0>, void *a2@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedShort_];
  result = sub_1D8E93CA4();
  a2[3] = result;
  *a2 = v3;
  return result;
}

uint64_t sub_1D8F7B7B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8CFAD1C(a1, v8);
  sub_1D8E93CA4();
  v4 = swift_dynamicCast();
  if (v4)
  {
    v5 = [v7 unsignedShortValue];

    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 2) = v4 ^ 1;
  return result;
}

unint64_t sub_1D8F7B868@<X0>(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedShort_];
  result = sub_1D8E93CA4();
  a1[3] = result;
  *a1 = v3;
  return result;
}

unint64_t sub_1D8F7B8C8(void *a1, SEL *a2)
{
  sub_1D8CFAD1C(a1, v9);
  sub_1D8E93CA4();
  v4 = swift_dynamicCast();
  if (v4)
  {
    v5 = [v8 *a2];

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v6 = v5;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v6 = 0;
  }

  return v6 | ((v4 ^ 1u) << 32);
}

unint64_t sub_1D8F7B984@<X0>(uint64_t a1@<X0>, SEL *a2@<X1>, void *a3@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a2];
  result = sub_1D8E93CA4();
  a3[3] = result;
  *a3 = v4;
  return result;
}

uint64_t sub_1D8F7B9EC@<X0>(void *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  sub_1D8CFAD1C(a1, v10);
  sub_1D8E93CA4();
  v6 = swift_dynamicCast();
  if (v6)
  {
    v7 = [v9 *a2];

    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v7 = 0;
  }

  *a3 = v7;
  *(a3 + 4) = v6 ^ 1;
  return result;
}

unint64_t sub_1D8F7BAAC@<X0>(SEL *a1@<X2>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a1];
  result = sub_1D8E93CA4();
  a2[3] = result;
  *a2 = v4;
  return result;
}

id sub_1D8F7BB14(void *a1, SEL *a2)
{
  sub_1D8CFAD1C(a1, v7);
  sub_1D8E93CA4();
  if (swift_dynamicCast())
  {
    v4 = [v6 *a2];

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return 0;
  }
}

uint64_t sub_1D8F7BBD0@<X0>(void *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  sub_1D8CFAD1C(a1, v10);
  sub_1D8E93CA4();
  v6 = swift_dynamicCast();
  if (v6)
  {
    v7 = [v9 *a2];

    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v7 = 0;
  }

  *a3 = v7;
  *(a3 + 8) = v6 ^ 1;
  return result;
}

uint64_t String.init(metricsFieldValue:)(uint64_t a1)
{
  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

double String.metricsFieldRepresentation()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = MEMORY[0x1E69E6158];
  *a3 = a1;
  a3[1] = a2;

  return result;
}

uint64_t sub_1D8F7BCF8@<X0>(void *a3@<X8>)
{
  result = swift_dynamicCast();
  v5 = v7;
  v6 = v8;
  if (!result)
  {
    v5 = 0;
    v6 = 0;
  }

  *a3 = v5;
  a3[1] = v6;
  return result;
}

double sub_1D8F7BD54@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v3 = v2[1];
  a2[3] = a1;
  *a2 = v4;
  a2[1] = v3;

  return result;
}

uint64_t RawRepresentable<>.init(metricsFieldValue:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v35 = a5;
  v9 = sub_1D91791BC();
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v29 - v10;
  v33 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = sub_1D91791BC();
  v12 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v14 = &v29 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v29 - v20;
  sub_1D8CFAD1C(a1, v36);
  (*(a4 + 8))(v36, AssociatedTypeWitness, a4);
  if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    (*(v12 + 8))(v14, v32);
    v22 = *(a2 - 8);
  }

  else
  {
    (*(v15 + 32))(v21, v14, AssociatedTypeWitness);
    (*(v15 + 16))(v18, v21, AssociatedTypeWitness);
    v23 = v34;
    sub_1D917853C();
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    (*(v15 + 8))(v21, AssociatedTypeWitness);
    v22 = *(a2 - 8);
    v24 = v22;
    if (!(*(v22 + 48))(v23, 1, a2))
    {
      v28 = v35;
      (*(v22 + 32))(v35, v23, a2);
      v26 = v28;
      v25 = 0;
      return (*(v24 + 56))(v26, v25, 1, a2);
    }

    (*(v30 + 8))(v23, v31);
  }

  v24 = v22;
  v25 = 1;
  v26 = v35;
  return (*(v24 + 56))(v26, v25, 1, a2);
}

uint64_t RawRepresentable<>.metricsFieldRepresentation()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v10 - v7;
  sub_1D917852C();
  (*(a4 + 16))(AssociatedTypeWitness, a4);
  return (*(v6 + 8))(v8, AssociatedTypeWitness);
}

uint64_t Array<A>.init(metricsFieldValue:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1D8CFAD1C(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7A78, &unk_1D9199550);
  v4 = swift_dynamicCast();
  if (v4)
  {
    v8[0] = v7;
    MEMORY[0x1EEE9AC00](v4);
    sub_1D8F7C400();
    v5 = sub_1D917843C();
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    return v5;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return 0;
  }
}

uint64_t sub_1D8F7C38C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1D8CFAD1C(a1, v5);
  return (*(v3 + 8))(v5, v2, v3);
}

unint64_t sub_1D8F7C400()
{
  result = qword_1ECAB7A80;
  if (!qword_1ECAB7A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB7A78, &unk_1D9199550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7A80);
  }

  return result;
}

uint64_t Array<A>.metricsFieldRepresentation()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v10[5] = a1;
  v10[2] = a2;
  v10[3] = a3;
  v5 = sub_1D91786FC();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1D8D175AC(sub_1D8F7C52C, v10, v5, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7A78, &unk_1D9199550);
  a4[3] = result;
  *a4 = v8;
  return result;
}

uint64_t sub_1D8F7C570@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Array<A>.init(metricsFieldValue:)(a1, *(a2 + 16), *(a3 - 8));
  *a4 = result;
  return result;
}

uint64_t URL.init(metricsFieldValue:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  sub_1D8CFAD1C(a1, v12);
  if (swift_dynamicCast())
  {
    sub_1D9176BFC();

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v7 = sub_1D9176C2C();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v6, 1, v7))
    {
      (*(v8 + 32))(a2, v6, v7);
      return (*(v8 + 56))(a2, 0, 1, v7);
    }

    sub_1D8E677CC(v6);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v9 = sub_1D9176C2C();
  return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
}

uint64_t URL.metricsFieldRepresentation()@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1D9176ACC();
  a2[3] = MEMORY[0x1E69E6158];
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1D8F7C7B0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1D9176ACC();
  a2[3] = MEMORY[0x1E69E6158];
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1D8F7C8D0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  sub_1D8CFAD1C(a1, v8);
  if (swift_dynamicCast())
  {
    v4 = _s18PodcastsFoundation29MetricsEngagementThresholdMetO8rawValueACSgSS_tcfC_0(v6, v7);
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    if (v4 != 4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v4 = 4;
LABEL_6:
  *a2 = v4;
  return result;
}

void sub_1D8F7C968(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7562617;
  v4 = 0xE800000000000000;
  v5 = 0x6465636E79736E75;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 28526;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v6;
  a1[1] = v2;
}

id sub_1D8F7C9E0@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1D8F7CAD0(a2);
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1D8F7CA10@<X0>(SEL *a1@<X2>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a1];
  result = sub_1D8E93CA4();
  a2[3] = result;
  *a2 = v4;
  return result;
}

uint64_t sub_1D8F7CA6C@<X0>(void *a2@<X8>)
{
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v6;
    v5 = v7;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

id sub_1D8F7CAD0(void *a1)
{
  sub_1D8CFAD1C(a1, v6);
  sub_1D8CFAD1C(v6, v5);
  sub_1D8E93CA4();
  if (swift_dynamicCast())
  {
    v2 = [v4 unsignedIntegerValue];

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    return v2;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    return 0;
  }
}

void sub_1D8F7CB98(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1D8F4F334(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_1D8F06994(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_1D8F82428();
        v10 = v13;
      }

      sub_1D8F7F48C(v8, v10);
      *v3 = v10;
    }

    else
    {
    }
  }
}

uint64_t sub_1D8F7CC9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5908, &unk_1D9190D80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_1D917653C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1D8D08A50(a1, &qword_1ECAB5908, &unk_1D9190D80);
    v14 = sub_1D8D490F4(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D8F82724();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_1D8F80DD4(v16, v18, MEMORY[0x1E6967EC8]);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1D8D08A50(v8, &qword_1ECAB5908, &unk_1D9190D80);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1D8F4F634(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

void sub_1D8F7CF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_1D8F50130(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v14;
  }

  else
  {
    v9 = sub_1D8D33C70(a2, a3);
    v11 = v10;

    if (v11)
    {
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v15 = *v4;
      if (!v12)
      {
        sub_1D8F84E04(&qword_1ECAB42F0, &unk_1D9188E50);
        v13 = v15;
      }

      sub_1D8DA2AFC(v9, v13);
      *v4 = v13;
    }
  }
}

uint64_t sub_1D8F7D008(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1D8D888D4(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_1D8D490F4(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1D8F838F8(&qword_1ECAB7AA8, &qword_1D9199710);
        v11 = v13;
      }

      result = sub_1D8F80C64(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_1D8F7D0D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76D0, &unk_1D9197ED8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for StoreFeedUpdater.Update(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1D8D08A50(a1, &qword_1ECAB76D0, &unk_1D9197ED8);
    v14 = sub_1D8D490F4(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D8F83AD0(type metadata accessor for StoreFeedUpdater.Update, &qword_1ECAB7AB0, &unk_1D91A6B80, type metadata accessor for StoreFeedUpdater.Update);
        v18 = v22;
      }

      sub_1D8F86EDC(*(v18 + 56) + *(v10 + 72) * v16, v8, type metadata accessor for StoreFeedUpdater.Update);
      sub_1D8F80DD4(v16, v18, type metadata accessor for StoreFeedUpdater.Update);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1D8D08A50(v8, &qword_1ECAB76D0, &unk_1D9197ED8);
  }

  else
  {
    sub_1D8F86EDC(a1, v13, type metadata accessor for StoreFeedUpdater.Update);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1D8F50314(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1D8F7D378(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76D8, &qword_1D9197EE8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for StoreFeedUpdater.Retry(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1D8D08A50(a1, &qword_1ECAB76D8, &qword_1D9197EE8);
    v14 = sub_1D8D490F4(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D8F83AD0(type metadata accessor for StoreFeedUpdater.Retry, &qword_1ECAB7AC0, &unk_1D91A6B90, type metadata accessor for StoreFeedUpdater.Retry);
        v18 = v22;
      }

      sub_1D8F86EDC(*(v18 + 56) + *(v10 + 72) * v16, v8, type metadata accessor for StoreFeedUpdater.Retry);
      sub_1D8F80DD4(v16, v18, type metadata accessor for StoreFeedUpdater.Retry);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1D8D08A50(v8, &qword_1ECAB76D8, &qword_1D9197EE8);
  }

  else
  {
    sub_1D8F86EDC(a1, v13, type metadata accessor for StoreFeedUpdater.Retry);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1D8F50468(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

void sub_1D8F7D618(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1D8F506E0(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    v7 = sub_1D8D94734(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1D8F83E80(&qword_1ECAB42D0, &unk_1D9188E30);
        v11 = v13;
      }

      sub_1D8F80F88(v9, v11);
      *v3 = v11;
    }
  }
}

void sub_1D8F7D6E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1D8D65618(a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_1D8F50804(v8, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v7;
  }

  else
  {
    sub_1D8D08A50(a1, &qword_1ECAB57F0, &unk_1D9190AA0);
    sub_1D8F7ED84(sub_1D8F86E60, v8);

    sub_1D8D08A50(v8, &qword_1ECAB57F0, &unk_1D9190AA0);
  }
}

uint64_t sub_1D8F7D7CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_1D9176E3C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1D8D08A50(a1, &qword_1ECAB75C0, &unk_1D9188A50);
    v14 = sub_1D8F06EDC(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D8F84638();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_1D8F813D8(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1D8D08A50(v8, &qword_1ECAB75C0, &unk_1D9188A50);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1D8F50B34(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1D8F7DA1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AE0, &qword_1D91B7E20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for EpisodePlayState(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1D8D08A50(a1, &qword_1ECAB7AE0, &qword_1D91B7E20);
    v14 = sub_1D8D1AC44(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D8F86124();
        v18 = v22;
      }

      sub_1D8F86EDC(*(v18 + 56) + *(v10 + 72) * v16, v8, type metadata accessor for EpisodePlayState);
      sub_1D8F81AAC(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1D8D08A50(v8, &qword_1ECAB7AE0, &qword_1D91B7E20);
  }

  else
  {
    sub_1D8F86EDC(a1, v13, type metadata accessor for EpisodePlayState);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1D8F5162C(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t Dictionary<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a3 + 16) && (v10 = sub_1D8F86E60(a1, a2), (v11 & 1) != 0))
  {
    sub_1D8CFAD1C(*(a3 + 56) + 32 * v10, v14);
    sub_1D8D65618(v14, v15);
    sub_1D8CFAD1C(v15, v14);
    (*(a5 + 8))(v14, a4, a5);
    return __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  else
  {
    v13 = *(*(a4 - 8) + 56);

    return v13(a6, 1, 1, a4);
  }
}

double sub_1D8F7DD6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *a3;
  v8 = a3[1];

  j___sSD18PodcastsFoundationSSRszypRs_rlE8addValue_8forFieldyqd__Sg_AA07MetricsF0Vyqd__GtAA0gF13RepresentableRd__lF(a1, v7, v8, v5, v6, v9);

  return result;
}

uint64_t Dictionary<>.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  j___sSD18PodcastsFoundationSSRszypRs_rlE8addValue_8forFieldyqd__Sg_AA07MetricsF0Vyqd__GtAA0gF13RepresentableRd__lF(a1, a2, a3, a4, a5, a6);

  v7 = sub_1D91791BC();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

uint64_t Dictionary<>.addValue<A>(_:forField:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a2;
  v9 = sub_1D91791BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v9, v15);
  if ((*(v13 + 48))(v12, 1, a4) == 1)
  {
    (*(v10 + 8))(v12, v9);
    return Dictionary<>.removeValue<A>(forField:)(v21, a3);
  }

  else
  {
    (*(v13 + 32))(v17, v12, a4);
    v19 = *(a5 + 16);

    v19(v22, a4, a5);
    sub_1D8F7D6E8(v22, v21, a3);
    return (*(v13 + 8))(v17, a4);
  }
}

void (*Dictionary<>.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v14 = sub_1D91791BC();
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
  Dictionary<>.subscript.getter(a2, a3, *v5, a4, a5, v17);
  return sub_1D8F7E1D4;
}

void sub_1D8F7E1D4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v7 = (*a1)[3];
  v8 = (*a1)[1];
  v9 = (*a1)[2];
  v10 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[7], v4, v5);

    Dictionary<>.addValue<A>(_:forField:)(v3, v10, v8, v9, v7);

    v11 = *(v6 + 8);
    v11(v3, v5);
    v11(v4, v5);
  }

  else
  {

    Dictionary<>.addValue<A>(_:forField:)(v4, v10, v8, v9, v7);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void Dictionary<>.addValue<A>(_:forField:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 16);

  v9(v10, a4, a5);
  sub_1D8F7D6E8(v10, a2, a3);
}

uint64_t Dictionary<>.addingValue<A>(_:forField:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v10 = *(a6 + 16);

  v10(v13, a5, a6);
  sub_1D8F7D6E8(v13, a2, a3);
  return a4;
}

{
  v22 = a6;
  v11 = sub_1D91791BC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v15 = *(a5 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, v11, v17);
  if ((*(v15 + 48))(v14, 1, a5) == 1)
  {
    (*(v12 + 8))(v14, v11);
    v23 = a4;

    Dictionary<>.removeValue<A>(forField:)(a2, a3);
    return v23;
  }

  else
  {
    (*(v15 + 32))(v19, v14, a5);
    v21 = Dictionary<>.addingValue<A>(_:forField:)(v19, a2, a3, a4, a5, v22);
    (*(v15 + 8))(v19, a5);
    return v21;
  }
}

uint64_t Dictionary<>.removeValue<A>(forField:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1D8F86E60(a1, a2);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    v10 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D8F84138();
      v8 = v10;
    }

    sub_1D8D65618((*(v8 + 56) + 32 * v6), v11);
    sub_1D8F81228(v6, v8);
    *v3 = v8;
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  return sub_1D8D08A50(v11, &qword_1ECAB57F0, &unk_1D9190AA0);
}

uint64_t Dictionary<>.removingValue<A>(forField:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  Dictionary<>.removeValue<A>(forField:)(a1, a2);
  return a3;
}

uint64_t Dictionary<>.init(metricsFieldValue:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4608, &qword_1D91AC8D0);
  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

double Dictionary<>.metricsFieldRepresentation()@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4608, &qword_1D91AC8D0);
  *a2 = a1;

  return result;
}

uint64_t sub_1D8F7E81C@<X0>(void *a3@<X8>)
{
  result = swift_dynamicCast();
  v5 = v6;
  if (!result)
  {
    v5 = 0;
  }

  *a3 = v5;
  return result;
}

double sub_1D8F7E874@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  a2[3] = a1;
  *a2 = v3;

  return result;
}

uint64_t sub_1D8F7E888(void **a1)
{
  v2 = v1;
  v3 = sub_1D8F0671C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v16 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D8F81DEC();
    v7 = v16;
  }

  v8 = *(v7 + 48) + 48 * v5;
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);
  v12 = *(v8 + 32);
  v13 = *(v8 + 40);

  sub_1D8CFEACC(v9, v10, v11, v12, v13);
  v14 = *(*(v7 + 56) + 8 * v5);
  sub_1D8F7F064(v5, v7);
  *v2 = v7;
  return v14;
}

uint64_t sub_1D8F7E958(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_1D8F068B0(a1);
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
        sub_1D8F7F48C(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1D8F82144();
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
  v6 = sub_1D91796BC();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1D917935C();
  v8 = sub_1D8F7EE2C(v4, v7);

  v9 = sub_1D8F068B0(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_1D8F7F48C(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_1D8F7EAA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1D8D33C70(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D8F8258C();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1D8DA2AFC(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_1D8F7EB64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = sub_1D8D33C70(a1, a2);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v15 = *v7;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D8F85824(a3, a4);
    v12 = v15;
  }

  v13 = *(*(v12 + 56) + 8 * v10);
  sub_1D8DA2AFC(v10, v12);
  *v7 = v12;
  return v13;
}

uint64_t sub_1D8F7EC14(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D8D490F4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D8F838F8(&qword_1ECAB42F8, &unk_1D91A6C90);
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_1D8F80C64(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_1D8F7ECEC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D8D490F4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D8F848B4(&qword_1ECAB7AB8, &qword_1D9199718);
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_1D8F80C64(v8, v7);
  *v2 = v7;
  return v9;
}

double sub_1D8F7ED84@<D0>(uint64_t (*a1)(void)@<X2>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = a1();
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8F84138();
      v9 = v11;
    }

    sub_1D8D65618((*(v9 + 56) + 32 * v7), a2);
    sub_1D8F81228(v7, v9);
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

uint64_t sub_1D8F7EE2C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43B8, &qword_1D9188F20);
    v2 = sub_1D917979C();
    v19 = v2;
    sub_1D917969C();
    v3 = sub_1D91796CC();
    if (v3)
    {
      v4 = v3;
      sub_1D8F86F44();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49C8, &qword_1D918B148);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1D9003D04(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1D917913C();
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
        v5 = sub_1D91796CC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1D8F7F064(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v32 = a2 + 64;
    v30 = (sub_1D91792EC() + 1) & ~v5;
    v31 = v7;
    do
    {
      v8 = 48 * v6;
      v9 = *(v2 + 48) + 48 * v6;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      v13 = *(v9 + 24);
      v14 = *(v9 + 32);
      v15 = *(v9 + 40);
      sub_1D9179DBC();
      sub_1D9179DDC();
      if (v10)
      {
        v16 = v10;
        sub_1D8D092C0(v11, v12, v13, v14, v15);
        v10 = v16;
        sub_1D917915C();
      }

      else
      {
        sub_1D8D092C0(v11, v12, v13, v14, v15);
      }

      MediaIdentifier.hash(into:)(v34);
      v17 = sub_1D9179E1C();

      result = sub_1D8CFEACC(v11, v12, v13, v14, v15);
      v18 = v17 & v31;
      if (v3 >= v30)
      {
        v4 = v32;
        v2 = a2;
        if (v18 < v30)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v32;
        v2 = a2;
        if (v18 >= v30)
        {
          goto LABEL_13;
        }
      }

      if (v3 >= v18)
      {
LABEL_13:
        v19 = *(v2 + 48);
        v20 = (v19 + 48 * v3);
        v21 = (v19 + v8);
        if (48 * v3 < v8 || v20 >= v21 + 3 || v3 != v6)
        {
          v22 = *v21;
          v23 = v21[2];
          v20[1] = v21[1];
          v20[2] = v23;
          *v20 = v22;
        }

        v24 = *(v2 + 56);
        v25 = (v24 + 8 * v3);
        v26 = (v24 + 8 * v6);
        if (v3 != v6 || v25 >= v26 + 1)
        {
          *v25 = *v26;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v31;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(v2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v29;
    ++*(v2 + 36);
  }

  return result;
}

char *sub_1D8F7F2D8(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    do
    {
      sub_1D8D41388(*(a2 + 48) + 264 * v6, v27);
      sub_1D9179DBC();
      ArtworkRequest.hash(into:)(&v26, v9, v10, v11, v12, v13, v14, v15);
      v16 = sub_1D9179E1C();
      result = sub_1D8D58578(v27);
      v17 = v16 & v7;
      if (v3 >= v8)
      {
        if (v17 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v17 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v17)
      {
LABEL_10:
        v18 = *(a2 + 48);
        result = (v18 + 264 * v3);
        v19 = (v18 + 264 * v6);
        if (v3 != v6 || result >= v19 + 264)
        {
          result = memmove(result, v19, 0x108uLL);
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 8 * v3);
        v22 = (v20 + 8 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1D8F7F48C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_1D917913C();

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

void sub_1D8F7F630(int64_t a1, uint64_t a2)
{
  v38 = sub_1D917653C();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1D91792EC();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_1D8D111AC(&qword_1ECAB2CC8, MEMORY[0x1E6967EC8], MEMORY[0x1E6967ED0]);
      v22 = sub_1D917813C();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void sub_1D8F7F950(int64_t a1, uint64_t a2)
{
  v38 = sub_1D9176EAC();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_1D91792EC();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_1D8D111AC(&qword_1EDCD5920, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v22 = sub_1D917813C();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

char *sub_1D8F7FC70(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    do
    {
      sub_1D8EC8C5C(*(a2 + 48) + 72 * v6, &v19);
      sub_1D9179DBC();
      MEMORY[0x1DA72B3C0](v19);
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      sub_1D9179DEC();
      v9 = sub_1D9179E1C();
      result = sub_1D8EC8D90(&v19);
      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        result = (v11 + 72 * v3);
        v12 = (v11 + 72 * v6);
        if (v3 != v6 || result >= v12 + 72)
        {
          result = memmove(result, v12, 0x48uLL);
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1D8F7FE44(int64_t a1, uint64_t a2)
{
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for TTMLRequest(0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2 + 64;
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v39 = v11;
    v38 = (sub_1D91792EC() + 1) & ~v15;
    v18 = *(v39 + 72);
    v36 = (v5 + 48);
    v37 = v18;
    v32 = (v5 + 8);
    v33 = (v5 + 32);
    v19 = v18;
    v34 = a2 + 64;
    do
    {
      v20 = *(a2 + 48);
      v39 = v19 * v16;
      sub_1D8D80148(v20 + v19 * v16, v13, type metadata accessor for TTMLRequest);
      sub_1D9179DBC();
      sub_1D8ECA48C(v13, v9);
      if ((*v36)(v9, 1, v4) == 1)
      {
        sub_1D9179DDC();
      }

      else
      {
        v21 = v35;
        (*v33)(v35, v9, v4);
        sub_1D9179DDC();
        sub_1D8D111AC(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
        sub_1D917814C();
        v22 = v21;
        v14 = v34;
        (*v32)(v22, v4);
      }

      sub_1D9179DEC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      v23 = sub_1D9179E1C();
      sub_1D8F51BD8(v13, type metadata accessor for TTMLRequest);
      v24 = v23 & v17;
      if (a1 >= v38)
      {
        v19 = v37;
        if (v24 < v38)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v19 = v37;
        if (v24 >= v38)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v24)
      {
LABEL_13:
        if (v19 * a1 < v39 || *(a2 + 48) + v19 * a1 >= (*(a2 + 48) + v39 + v19))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v19 * a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v25 = *(a2 + 56);
        v26 = (v25 + 8 * a1);
        v27 = (v25 + 8 * v16);
        if (a1 != v16 || v26 >= v27 + 1)
        {
          *v26 = *v27;
          a1 = v16;
        }
      }

LABEL_4:
      v16 = (v16 + 1) & v17;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }
}

void sub_1D8F803C0(int64_t a1, uint64_t a2)
{
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for ShazamSignatureRequest(0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2 + 64;
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v39 = v11;
    v38 = (sub_1D91792EC() + 1) & ~v15;
    v18 = *(v39 + 72);
    v36 = (v5 + 48);
    v37 = v18;
    v32 = (v5 + 8);
    v33 = (v5 + 32);
    v19 = v18;
    v34 = a2 + 64;
    do
    {
      v20 = *(a2 + 48);
      v39 = v19 * v16;
      sub_1D8D80148(v20 + v19 * v16, v13, type metadata accessor for ShazamSignatureRequest);
      sub_1D9179DBC();
      sub_1D8ECA48C(v13, v9);
      if ((*v36)(v9, 1, v4) == 1)
      {
        sub_1D9179DDC();
      }

      else
      {
        v21 = v35;
        (*v33)(v35, v9, v4);
        sub_1D9179DDC();
        sub_1D8D111AC(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
        sub_1D917814C();
        v22 = v21;
        v14 = v34;
        (*v32)(v22, v4);
      }

      sub_1D9179DEC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      v23 = sub_1D9179E1C();
      sub_1D8F51BD8(v13, type metadata accessor for ShazamSignatureRequest);
      v24 = v23 & v17;
      if (a1 >= v38)
      {
        v19 = v37;
        if (v24 < v38)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v19 = v37;
        if (v24 >= v38)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v24)
      {
LABEL_13:
        if (v19 * a1 < v39 || *(a2 + 48) + v19 * a1 >= (*(a2 + 48) + v39 + v19))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v19 * a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v25 = *(a2 + 56);
        v26 = (v25 + 8 * a1);
        v27 = (v25 + 8 * v16);
        if (a1 != v16 || v26 >= v27 + 1)
        {
          *v26 = *v27;
          a1 = v16;
        }
      }

LABEL_4:
      v16 = (v16 + 1) & v17;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }
}

void sub_1D8F8093C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_1D917913C();

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
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
          if (16 * v3 != 16 * v6 || (v3 = v6, v18 >= v19 + 1))
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

void sub_1D8F80AD4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_1D917913C();

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
          v18 = (v17 + v3);
          v19 = (v17 + v6);
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

uint64_t sub_1D8F80C64(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1D9179DAC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
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
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D8F80DD4(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1D91792EC() + 1) & ~v6;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v7);
      result = sub_1D9179DAC();
      v13 = result & v9;
      if (v4 >= v10)
      {
        if (v13 < v10 || v4 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v10 && v4 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v11 + 8 * v4);
      if (v4 != v7 || v16 >= v12 + 1)
      {
        *v16 = *v12;
      }

      v17 = *(a2 + 56);
      v18 = *(*(a3(0) - 8) + 72);
      v19 = v18 * v4;
      result = v17 + v18 * v4;
      v20 = v18 * v7;
      v21 = v17 + v18 * v7 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D8F80F88(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    do
    {
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1D8F81228(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    do
    {
      sub_1D9179DBC();

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      v10 = sub_1D9179E1C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

unint64_t sub_1D8F813D8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    while (1)
    {
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(sub_1D9176E3C() - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D8F815BC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_1D9179DBC();
      MEMORY[0x1DA72B3C0](v9);
      result = sub_1D9179E1C();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + v3);
        v16 = (v14 + v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
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

uint64_t sub_1D8F81750(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    do
    {
      v11 = *(*(a2 + 48) + 8 * v6);
      sub_1D9179DBC();
      MEMORY[0x1DA72B3C0](v11);
      result = sub_1D9179E1C();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1D8F818F0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    do
    {
      sub_1D9179DBC();

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      v11 = sub_1D9179E1C();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

unint64_t sub_1D8F81AAC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_1D9179DBC();
      MEMORY[0x1DA72B3C0](v9);
      result = sub_1D9179E1C();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v3);
      v13 = (v11 + 8 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for EpisodePlayState(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

  return result;
}

uint64_t sub_1D8F81C7C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1D9179DAC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
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
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1D8F81DEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43D0, &unk_1D91A6CB0);
  v26 = v0;
  v1 = *v0;
  v27 = sub_1D917977C();
  v28 = v1;
  if (*(v1 + 16))
  {
    result = (v27 + 64);
    v3 = v1 + 64;
    v4 = ((1 << *(v27 + 32)) + 63) >> 6;
    if (v27 != v1 || result >= v1 + 64 + 8 * v4)
    {
      result = memmove(result, (v1 + 64), 8 * v4);
    }

    v6 = 0;
    *(v27 + 16) = *(v28 + 16);
    v7 = 1 << *(v28 + 32);
    v8 = *(v28 + 64);
    v9 = -1;
    if (v7 < 64)
    {
      v9 = ~(-1 << v7);
    }

    v10 = v9 & v8;
    v11 = (v7 + 63) >> 6;
    if ((v9 & v8) != 0)
    {
      do
      {
        v12 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_17:
        v15 = v12 | (v6 << 6);
        v16 = *(v28 + 48) + 48 * v15;
        v17 = *v16;
        v18 = *(v16 + 8);
        v19 = *(v16 + 16);
        v20 = *(v16 + 24);
        v21 = *(v16 + 32);
        v22 = *(*(v28 + 56) + 8 * v15);
        v23 = *(v27 + 48) + 48 * v15;
        v24 = *(v16 + 40);
        *v23 = *v16;
        *(v23 + 8) = v18;
        *(v23 + 16) = v19;
        *(v23 + 24) = v20;
        *(v23 + 32) = v21;
        *(v23 + 40) = v24;
        *(*(v27 + 56) + 8 * v15) = v22;
        v25 = v17;
        sub_1D8D092C0(v18, v19, v20, v21, v24);
      }

      while (v10);
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_19;
      }

      v14 = *(v3 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v26 = v27;
  }

  return result;
}

void *sub_1D8F81FB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43C0, &qword_1D9188F28);
  v2 = *v0;
  v3 = sub_1D917977C();
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
        sub_1D8D41388(*(v2 + 48) + 264 * v17, v19);
        v18 = *(*(v2 + 56) + 8 * v17);
        memcpy((*(v4 + 48) + 264 * v17), v19, 0x108uLL);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1D8F82144()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43B8, &qword_1D9188F20);
  v2 = *v0;
  v3 = sub_1D917977C();
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

id sub_1D8F822A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43A8, &qword_1D9188F10);
  v2 = *v0;
  v3 = sub_1D917977C();
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
        sub_1D8CFAD1C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1D8D65618(v19, (*(v4 + 56) + 32 * v17));
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

id sub_1D8F82428()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4390, &unk_1D9188EF0);
  v2 = *v0;
  v3 = sub_1D917977C();
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

void *sub_1D8F8258C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4398, &qword_1D9188F00);
  v2 = *v0;
  v3 = sub_1D917977C();
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

        result = swift_unknownObjectRetain();
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

void *sub_1D8F82724()
{
  v1 = v0;
  v29 = sub_1D917653C();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4308, &qword_1D9188E68);
  v3 = *v0;
  v4 = sub_1D917977C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_1D8F8298C()
{
  v1 = v0;
  v31 = sub_1D917653C();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4318, &unk_1D91A6C60);
  v3 = *v0;
  v4 = sub_1D917977C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_1D8F82C10()
{
  v1 = v0;
  v33 = sub_1D9176EAC();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4388, &unk_1D91A6C80);
  v3 = *v0;
  v4 = sub_1D917977C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1D8F82E90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4370, &qword_1D9188ED0);
  v2 = *v0;
  v3 = sub_1D917977C();
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
        v18 = 8 * v17;
        v19 = 72 * v17;
        sub_1D8EC8C5C(*(v2 + 48) + 72 * v17, v25);
        v20 = *(*(v2 + 56) + v18);
        v21 = *(v4 + 48) + v19;
        v22 = v25[3];
        v23 = v25[2];
        v24 = v25[1];
        *(v21 + 64) = v26;
        *(v21 + 32) = v23;
        *(v21 + 48) = v22;
        *(v21 + 16) = v24;
        *v21 = v25[0];
        *(*(v4 + 56) + v18) = v20;
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

void *sub_1D8F830B0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v36 = a4;
  v7 = v4;
  v8 = a1(0);
  v35 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v32 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *v4;
  v11 = sub_1D917977C();
  v12 = v11;
  if (*(v10 + 16))
  {
    v32 = v7;
    result = (v11 + 64);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 64 + 8 * v14)
    {
      result = memmove(result, (v10 + 64), 8 * v14);
    }

    v33 = v10 + 64;
    v16 = 0;
    v17 = *(v10 + 16);
    v37 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = *(v10 + 64);
    v20 = -1;
    if (v18 < 64)
    {
      v20 = ~(-1 << v18);
    }

    v21 = v20 & v19;
    v22 = (v18 + 63) >> 6;
    if ((v20 & v19) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_17:
        v26 = v23 | (v16 << 6);
        v27 = v34;
        v28 = *(v35 + 72) * v26;
        v29 = v36;
        sub_1D8D80148(*(v10 + 48) + v28, v34, v36);
        v30 = *(*(v10 + 56) + 8 * v26);
        v31 = v37;
        sub_1D8F86EDC(v27, *(v37 + 48) + v28, v29);
        *(*(v31 + 56) + 8 * v26) = v30;
      }

      while (v21);
    }

    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v16 >= v22)
      {

        v7 = v32;
        v12 = v37;
        goto LABEL_21;
      }

      v25 = *(v33 + 8 * v16);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }

  return result;
}

void sub_1D8F83318()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6820, &qword_1D9193770);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
}

void *sub_1D8F834A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6AC0, &unk_1D9194690);
  v2 = *v0;
  v3 = sub_1D917977C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_1D8F835F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7B30, &qword_1D9199748);
  v2 = *v0;
  v3 = sub_1D917977C();
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
        v19 = *(v2 + 56) + 16 * v17;
        v20 = *v19;
        LOBYTE(v19) = *(v19 + 8);
        *(*(v4 + 48) + 8 * v17) = v18;
        v21 = *(v4 + 56) + 16 * v17;
        *v21 = v20;
        *(v21 + 8) = v19;
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

id sub_1D8F83760()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7B28, &unk_1D91A6C40);
  v2 = *v0;
  v3 = sub_1D917977C();
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
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
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

void *sub_1D8F838F8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D917977C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

      v18 = *(v4 + 64 + 8 * v10);
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

void *sub_1D8F83AD0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v36 = a4;
  v7 = v4;
  v8 = a1(0);
  v35 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v32 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *v4;
  v11 = sub_1D917977C();
  v12 = v11;
  if (*(v10 + 16))
  {
    v33 = v7;
    result = (v11 + 64);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 64 + 8 * v14)
    {
      result = memmove(result, (v10 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v37 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = *(v10 + 64);
    v20 = -1;
    if (v18 < 64)
    {
      v20 = ~(-1 << v18);
    }

    v21 = v20 & v19;
    v22 = (v18 + 63) >> 6;
    if ((v20 & v19) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_17:
        v26 = v23 | (v16 << 6);
        v27 = *(*(v10 + 48) + 8 * v26);
        v28 = v34;
        v29 = *(v35 + 72) * v26;
        v30 = v36;
        sub_1D8D80148(*(v10 + 56) + v29, v34, v36);
        v31 = v37;
        *(*(v37 + 48) + 8 * v26) = v27;
        result = sub_1D8F86EDC(v28, *(v31 + 56) + v29, v30);
      }

      while (v21);
    }

    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v16 >= v22)
      {

        v7 = v33;
        v12 = v37;
        goto LABEL_21;
      }

      v25 = *(v10 + 64 + 8 * v16);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }

  return result;
}

void sub_1D8F83CFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41F8, &qword_1D9188D40);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 2 * v17) = *(*(v2 + 48) + 2 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
}

void sub_1D8F83E80(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D917977C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

      v18 = *(v4 + 64 + 8 * v10);
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
}

id sub_1D8F83FCC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7768, &unk_1D91A6B70);
  v2 = *v0;
  v3 = sub_1D917977C();
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

        result = v20;
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

void sub_1D8F84138()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E0, &unk_1D9188E40);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1D8CFAD1C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D8D65618(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void *sub_1D8F842F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42C8, &unk_1D9188E20);
  v2 = *v0;
  v3 = sub_1D917977C();
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
        v18 = 40 * v17;
        sub_1D8D9A2A4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1D8CFAD1C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1D8D65618(v22, (*(v4 + 56) + v17));
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

id sub_1D8F844A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7B20, &unk_1D91A6C20);
  v2 = *v0;
  v3 = sub_1D917977C();
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
        v19 = *(v2 + 56) + 32 * v17;
        v20 = *v19;
        v21 = *(v19 + 24);
        v22 = *(v19 + 8);
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = *(v4 + 56) + 32 * v17;
        *v23 = v20;
        *(v23 + 8) = v22;
        *(v23 + 24) = v21;

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

void *sub_1D8F84638()
{
  v1 = v0;
  v29 = sub_1D9176E3C();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7B18, &unk_1D91A6C00);
  v3 = *v0;
  v4 = sub_1D917977C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + v17) = v18;
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void sub_1D8F848B4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D917977C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

      v18 = *(v4 + 64 + 8 * v10);
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
}

char *sub_1D8F84A14()
{
  v1 = v0;
  v33 = sub_1D9176EAC();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4298, &qword_1D9188DF0);
  v3 = *v0;
  v4 = sub_1D917977C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;
        result = swift_unknownObjectRetain();
        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void sub_1D8F84C94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4288, &unk_1D91A6C10);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
}

void sub_1D8F84E04(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D917977C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
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
}

void sub_1D8F84F8C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D917977C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 56) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        v23 = (*(v6 + 56) + 16 * v19);
        *v23 = v22;
        v23[1] = v21;
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

      v18 = *(v4 + 64 + 8 * v10);
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
}

void sub_1D8F850E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4278, qword_1D9188DC0);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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
}

id sub_1D8F85248()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AA0, &unk_1D91B63B0);
  v2 = *v0;
  v3 = sub_1D917977C();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

id sub_1D8F853A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7A98, &unk_1D91A6B50);
  v2 = *v0;
  v3 = sub_1D917977C();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;

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