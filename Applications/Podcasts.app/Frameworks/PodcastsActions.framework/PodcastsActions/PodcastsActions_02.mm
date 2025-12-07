uint64_t sub_34E48(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {

    *(v4 + 816) = a1;

    return _swift_task_switch(sub_34FA4, 0, 0);
  }
}

uint64_t sub_34FA4()
{
  v1 = v0[93];
  v2 = v0[92];
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v3 = v0[1];
  v4 = v0[102];

  return v3(v4);
}

uint64_t sub_350D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_351D0()
{
  v1 = *(v0 + 744);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_352D8@<X0>(void *a2@<X8>)
{
  v4 = type metadata accessor for ShowEntity(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4ABC(0, &qword_12E1D0, MTPodcast_ptr);
  result = sub_E7734();
  if (v2)
  {
    return result;
  }

  v9 = result;
  v16[1] = 0;
  if (!(result >> 62))
  {
    v10 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_14:

    *a2 = _swiftEmptyArrayStorage;
    return result;
  }

  v10 = sub_E7AC4();
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_4:
  v16[0] = a2;
  v17 = _swiftEmptyArrayStorage;
  result = sub_15E84(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = 0;
    v12 = v17;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = sub_E79B4();
      }

      else
      {
        v13 = *(v9 + 8 * v11 + 32);
      }

      ShowEntity.init(model:)(v13, v7);
      v17 = v12;
      v15 = v12[2];
      v14 = v12[3];
      if (v15 >= v14 >> 1)
      {
        sub_15E84((v14 > 1), v15 + 1, 1);
        v12 = v17;
      }

      ++v11;
      v12[2] = v15 + 1;
      sub_3C878(v7, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, type metadata accessor for ShowEntity);
    }

    while (v10 != v11);

    *v16[0] = v12;
  }

  return result;
}

uint64_t sub_35508@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a1;
    v2 = a2;
    v6 = *v3;
    v4 = *(v3 + 8);
    v5 = *(v3 + 16);
    a1 = sub_3AF54(*v3, v4);
    v8 = v6 >> 62;
    if (!(v6 >> 62))
    {
      v9 = sub_3B044(a1, v7, *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)), v6, v4);
      if (v10)
      {
        v11 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
      }

      else
      {
        v11 = v9;
      }

      result = sub_3AF54(v6, v4);
      if (v11 < result)
      {
        goto LABEL_31;
      }

      v13 = result;
      result = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
      if (result >= v13)
      {
        goto LABEL_8;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  v22 = a1;
  v23 = sub_E7AC4();
  v24 = sub_3B044(v22, v7, v23, v6, v4);
  if (v25)
  {
    v24 = sub_E7AC4();
  }

  v11 = v24;
  result = sub_3AF54(v6, v4);
  if (v11 < result)
  {
    goto LABEL_31;
  }

  v13 = result;
  result = sub_E7AC4();
  if (result < v13)
  {
    goto LABEL_30;
  }

LABEL_8:
  if (v13 < 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v8)
  {
    result = sub_E7AC4();
  }

  else
  {
    result = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  }

  if (result < v11)
  {
    goto LABEL_33;
  }

  if (v11 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if ((v6 & 0xC000000000000001) == 0 || v13 == v11)
  {

    goto LABEL_21;
  }

  if (v13 >= v11)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  sub_4ABC(0, &qword_12E1D0, MTPodcast_ptr);

  v14 = v13;
  do
  {
    v15 = v14 + 1;
    sub_E79A4(v14);
    v14 = v15;
  }

  while (v11 != v15);
LABEL_21:

  if (v8)
  {
    v16 = sub_E7AD4();
    v17 = v19;
    v13 = v20;
    v18 = v21;
  }

  else
  {
    v16 = v6 & 0xFFFFFFFFFFFFFF8;
    v17 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
    v18 = (2 * v11) | 1;
  }

  *v2 = v16;
  *(v2 + 8) = v17;
  *(v2 + 16) = v13;
  *(v2 + 24) = v18;
  *(v2 + 32) = v4;
  *(v2 + 40) = v5;
  *(v2 + 48) = *(v3 + 24);
  return result;
}

uint64_t sub_35744(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_E61A4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  v2[9] = swift_task_alloc();
  v4 = sub_E5FD4();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_358DC, 0, 0);
}

uint64_t sub_358DC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[2];
  v5 = type metadata accessor for ShowEntity(0);
  v0[13] = v5;
  sub_26324(v4 + *(v5 + 76), v3, &unk_12DB10, &qword_EAC60);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_110AC(v0[9], &unk_12DB10, &qword_EAC60);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[6];
    v9 = v0[4];
    v10 = v0[5];
    sub_3C878(v0[9], v0[12], &type metadata accessor for ArtworkModel);
    sub_E5FA4();
    sub_E6194();
    v11 = *(v10 + 8);
    v0[14] = v11;
    v0[15] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v8, v9);
    v12 = swift_task_alloc();
    v0[16] = v12;
    v13 = sub_E6734();
    *v12 = v0;
    v12[1] = sub_35AF0;
    v15 = v0[7];
    v14 = v0[8];

    return ImageContentProvider.url(for:)(v14, v15, v13, &protocol witness table for CachingImageContentProvider);
  }
}

uint64_t sub_35AF0()
{
  v2 = *v1;

  v3 = v2[14];
  v4 = v2[7];
  v5 = v2[4];
  if (v0)
  {

    v3(v4, v5);
    v6 = sub_3CA8C;
  }

  else
  {
    v3(v4, v5);
    v6 = sub_3CA88;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_35C84(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_35D78;

  return v6(a1);
}

uint64_t sub_35D78()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t ShowEntity.SingleShowWidgetShowQuery.suggestedEntities()()
{
  v1[7] = v0;
  v2 = type metadata accessor for ShowEntity.SingleShowWidgetShowQuery(0);
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v1[10] = *(v3 + 64);
  v1[11] = swift_task_alloc();
  v4 = sub_E7724();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v5 = sub_E7324();
  v1[15] = v5;
  v1[16] = *(v5 - 8);
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_35FF0, 0, 0);
}

uint64_t sub_35FF0()
{
  sub_E51D4();
  v0[18] = v0[3];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_360C4;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_360C4()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_36D4C;
  }

  else
  {

    v2 = sub_361E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_361E0()
{
  v1 = v0[20];
  swift_getObjectType();
  sub_6C94();
  v2 = sub_E7764();
  v0[21] = v2;
  if (v1)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
    swift_unknownObjectRelease();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v2;
    v33 = v0[13];
    v34 = v0[12];
    v35 = v0[14];
    (*(v0[16] + 8))(v0[17], v0[15]);
    swift_unknownObjectRelease();
    v6 = kMTPodcastEntityName;
    v7 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
    v0[22] = v7;
    v32 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v6];
    v0[23] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_E9EE0;
    v9 = objc_opt_self();
    *(v8 + 32) = [v9 predicateForSubscribedAndNotHidden];
    *(v8 + 40) = [v9 predicateForNotImplicitlyFollowedPodcasts];
    sub_4ABC(0, &unk_12DB30, NSPredicate_ptr);
    isa = sub_E71E4().super.isa;

    v31 = objc_opt_self();
    v11 = [v31 andPredicateWithSubpredicates:isa];

    [v7 setPredicate:v11];
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_E9F00;
    sub_E7064();
    v13 = objc_allocWithZone(NSSortDescriptor);
    v14 = sub_E7024();

    v15 = [v13 initWithKey:v14 ascending:0];

    *(v12 + 32) = v15;
    sub_4ABC(0, &unk_12DB50, NSSortDescriptor_ptr);
    v16 = sub_E71E4().super.isa;

    [v7 setSortDescriptors:v16];

    [v7 setFetchLimit:sub_E62F4()];
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_E9EE0;
    *(v17 + 32) = [v9 predicateForSubscribedAndNotHidden];
    *(v17 + 40) = [v9 predicateForNotImplicitlyFollowedPodcasts];
    v18 = sub_E71E4().super.isa;

    v19 = [v31 andPredicateWithSubpredicates:v18];

    [v32 setPredicate:v19];
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_E9F00;
    sub_E7064();
    v21 = objc_allocWithZone(NSSortDescriptor);
    v22 = sub_E7024();

    v23 = [v21 initWithKey:v22 ascending:1];

    *(v20 + 32) = v23;
    v24 = sub_E71E4().super.isa;

    [v32 setSortDescriptors:v24];

    v25 = swift_allocObject();
    v0[24] = v25;
    v25[2] = v5;
    v25[3] = v7;
    v25[4] = v32;
    (*(v33 + 104))(v35, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v34);
    v5;
    v26 = v7;
    v27 = v32;
    v28 = swift_task_alloc();
    v0[25] = v28;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DD88, &qword_EA740);
    v0[26] = v29;
    *v28 = v0;
    v28[1] = sub_367A8;
    v30 = v0[14];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 4, v30, sub_3B548, v25, v29);
  }
}

uint64_t sub_367A8()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  (*(v2[13] + 8))(v2[14], v2[12]);

  if (v0)
  {
    v3 = sub_36DD8;
  }

  else
  {
    v3 = sub_3692C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_3692C(uint64_t a1, uint64_t a2)
{
  v3 = v2[11];
  v4 = v2[9];
  v5 = v2[7];
  v2[5] = v2[4];
  swift_getKeyPath();
  sub_3C2A0(&qword_12DDD0, &qword_12DD88, &qword_EA740, &protocol conformance descriptor for [A]);
  v6 = sub_E7164();
  v2[28] = v6;

  v2[6] = v6;
  sub_3C628(v5, v3, type metadata accessor for ShowEntity.SingleShowWidgetShowQuery);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_3C878(v3, v8 + v7, type metadata accessor for ShowEntity.SingleShowWidgetShowQuery);
  v9 = swift_allocObject();
  v2[29] = v9;
  *(v9 + 16) = &unk_EA7D0;
  *(v9 + 24) = v8;
  v10 = swift_task_alloc();
  v2[30] = v10;
  v11 = sub_3C2A0(&qword_12DDD8, &qword_12DD88, &qword_EA740, &protocol conformance descriptor for [A]);
  *v10 = v2;
  v10[1] = sub_36B58;
  v12 = v2[26];

  return Collection<>.concurrentMap(_:)(&unk_EA7D8, v9, v12, v11);
}

uint64_t sub_36B58(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {

    *(v4 + 248) = a1;

    return _swift_task_switch(sub_36CA4, 0, 0);
  }
}

uint64_t sub_36CA4()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);

  v3 = *(v0 + 8);
  v4 = *(v0 + 248);

  return v3(v4);
}

uint64_t sub_36D4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_36DD8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_36E70@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = type metadata accessor for ShowEntity(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v40 - v13;
  v15 = sub_4ABC(0, &qword_12E1D0, MTPodcast_ptr);
  result = sub_E7734();
  if (!v4)
  {
    v46 = 0;
    if (result >> 62)
    {
      v39 = result;
      v17 = sub_E7AC4();
      result = v39;
    }

    else
    {
      v17 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    }

    v42 = a4;
    v43 = v15;
    v44 = a3;
    v45 = a1;
    if (v17)
    {
      v41 = result;
      v54 = _swiftEmptyArrayStorage;
      result = sub_15E84(0, v17 & ~(v17 >> 63), 0);
      if (v17 < 0)
      {
        __break(1u);
        goto LABEL_29;
      }

      v18 = 0;
      v19 = v54;
      v20 = v41;
      v47 = v41 & 0xC000000000000001;
      v21 = v17;
      do
      {
        if (v47)
        {
          v22 = sub_E79B4();
        }

        else
        {
          v22 = *(v20 + 8 * v18 + 32);
        }

        ShowEntity.init(model:)(v22, v12);
        v54 = v19;
        v24 = v19[2];
        v23 = v19[3];
        if (v24 >= v23 >> 1)
        {
          sub_15E84((v23 > 1), v24 + 1, 1);
          v20 = v41;
          v19 = v54;
        }

        ++v18;
        v19[2] = v24 + 1;
        sub_3C878(v12, v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v24, type metadata accessor for ShowEntity);
      }

      while (v21 != v18);
    }

    else
    {

      v19 = _swiftEmptyArrayStorage;
    }

    v25 = _swiftEmptyArrayStorage;
    v54 = _swiftEmptyArrayStorage;
    v26 = v19[2];
    if (v26)
    {
      v27 = v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v28 = *(v9 + 72);
      do
      {
        sub_3C628(v27, v14, type metadata accessor for ShowEntity);
        v29 = *(v14 + 4);
        v30 = v29;
        sub_3C8E0(v14, type metadata accessor for ShowEntity);
        if (v29)
        {
          sub_E71D4();
          if (*(&dword_10 + (v54 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v54 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_E7214();
          }

          sub_E7274();
          v25 = v54;
        }

        v27 += v28;
        --v26;
      }

      while (v26);
    }

    v31 = sub_10E70(v25);

    v32 = v46;
    v33 = sub_E7734();
    if (v32)
    {
    }

    v34 = v33;
    v35 = swift_allocObject();
    *(v35 + 16) = v31;
    result = sub_E62E4();
    v36 = v19[2];
    v37 = __OFSUB__(result, v36);
    v38 = result - v36;
    if (!v37)
    {
      v49 = v34;
      v50 = sub_3C9E8;
      v51 = v35;
      v52 = sub_37358;
      v53 = 0;
      sub_35508(v38 & ~(v38 >> 63), v48);
      v54 = v19;
      result = sub_227FC();
      *v42 = v54;
      return result;
    }

LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_37270(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = [*a1 objectID];
  LOBYTE(a2) = sub_C7084(v4, a2);

  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 title];
    if (v6)
    {
      v7 = v6;
      sub_E7064();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E0A0, &qword_EC5A0);
    sub_3C9F0();
    v5 = sub_E7804();
  }

  return v5 & 1;
}

uint64_t sub_37358@<X0>(id *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;

  return ShowEntity.init(model:)(v3, a2);
}

uint64_t sub_37394(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_E61A4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  v2[9] = swift_task_alloc();
  v4 = sub_E5FD4();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_3752C, 0, 0);
}

uint64_t sub_3752C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[2];
  v5 = type metadata accessor for ShowEntity(0);
  v0[13] = v5;
  sub_26324(v4 + *(v5 + 76), v3, &unk_12DB10, &qword_EAC60);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_110AC(v0[9], &unk_12DB10, &qword_EAC60);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[6];
    v9 = v0[4];
    v10 = v0[5];
    sub_3C878(v0[9], v0[12], &type metadata accessor for ArtworkModel);
    sub_E5FA4();
    sub_E6194();
    v11 = *(v10 + 8);
    v0[14] = v11;
    v0[15] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v8, v9);
    v12 = swift_task_alloc();
    v0[16] = v12;
    v13 = sub_E6734();
    *v12 = v0;
    v12[1] = sub_37740;
    v15 = v0[7];
    v14 = v0[8];

    return ImageContentProvider.url(for:)(v14, v15, v13, &protocol witness table for CachingImageContentProvider);
  }
}

uint64_t sub_37740()
{
  v2 = *v1;

  v3 = v2[14];
  v4 = v2[7];
  v5 = v2[4];
  if (v0)
  {

    v3(v4, v5);
    v6 = sub_379D8;
  }

  else
  {
    v3(v4, v5);
    v6 = sub_378D4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_378D4()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[2];
  sub_3C8E0(v0[12], &type metadata accessor for ArtworkModel);
  v4 = sub_E59C4();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  sub_3C940(v2, v3 + *(v1 + 80));

  v5 = v0[1];

  return v5();
}

uint64_t sub_379D8()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[2];
  sub_3C8E0(v0[12], &type metadata accessor for ArtworkModel);
  v4 = sub_E59C4();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_3C940(v2, v3 + *(v1 + 80));

  v5 = v0[1];

  return v5();
}

uint64_t ShowEntity.SingleShowWidgetShowQuery.defaultResult()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_E5A64();
  v2[6] = swift_task_alloc();
  v3 = sub_E7724();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = *(type metadata accessor for ShowEntity.SingleShowWidgetShowQuery(0) - 8);
  v2[10] = v4;
  v2[11] = *(v4 + 64);
  v2[12] = swift_task_alloc();
  v5 = sub_E5AB4();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131EE0, &unk_F5BE0);
  v2[16] = swift_task_alloc();
  v6 = sub_E5A54();
  v2[17] = v6;
  v7 = *(v6 - 8);
  v2[18] = v7;
  v2[19] = *(v7 + 64);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v8 = sub_E5AC4();
  v2[22] = v8;
  v2[23] = *(v8 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v9 = sub_E6974();
  v2[26] = v9;
  v2[27] = *(v9 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_37E0C, 0, 0);
}

uint64_t sub_37E0C()
{
  v77 = v0;
  if ([objc_opt_self() isPodcastsApp])
  {
    sub_E6944();
    v1 = sub_E6964();
    v2 = sub_E74B4();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_0, v1, v2, "Attempting to run widget query logic inside of the main podcasts app", v3, 2u);
    }

    v4 = v0[30];
    v5 = v0[26];
    v6 = v0[27];
    v7 = v0[3];

    (*(v6 + 8))(v4, v5);
    goto LABEL_6;
  }

  sub_4ABC(0, &qword_12DB00, MTDB_ptr);
  v8 = sub_E7774();
  v9 = sub_E7754();
  v0[31] = v9;
  v13 = v0[20];
  v14 = v0[18];
  v72 = v0[17];
  v75 = v9;
  v16 = v0[15];
  v15 = v0[16];
  v18 = v0[13];
  v17 = v0[14];
  v19 = v0;

  sub_E5AA4();
  (*(v17 + 104))(v16, enum case for Calendar.Component.month(_:), v18);
  sub_E5A44();
  sub_E5A84();
  v20 = *(v14 + 8);
  v0[32] = v20;
  v0[33] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v13, v72);
  (*(v17 + 8))(v16, v18);
  if ((*(v14 + 48))(v15, 1, v72) == 1)
  {
    v73 = v20;
    v21 = v0[24];
    v22 = v0[25];
    v24 = v0[22];
    v23 = v0[23];
    sub_110AC(v19[16], &qword_131EE0, &unk_F5BE0);
    sub_E6944();
    (*(v23 + 16))(v21, v22, v24);
    v25 = sub_E6964();
    v70 = sub_E74B4();
    v26 = os_log_type_enabled(v25, v70);
    v27 = v19[29];
    v29 = v19[26];
    v28 = v19[27];
    v30 = v19[24];
    v31 = v19[25];
    v32 = v19[22];
    v33 = v19[23];
    if (v26)
    {
      log = v25;
      v60 = v19[20];
      v61 = v19[17];
      v67 = v19[29];
      v34 = v19[22];
      v65 = v19[26];
      v35 = swift_slowAlloc();
      v76[0] = swift_slowAlloc();
      *v35 = 136380931;
      sub_E5A74();
      v36 = sub_E7094();
      v38 = v37;
      v39 = *(v33 + 8);
      v39(v30, v34);
      v40 = sub_23E64(v36, v38, v76);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2080;
      sub_E5A44();
      sub_3B7DC(&unk_12DDE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v41 = sub_E7BB4();
      v43 = v42;
      v73(v60, v61);
      v44 = sub_23E64(v41, v43, v76);

      *(v35 + 14) = v44;
      _os_log_impl(&dword_0, log, v70, "Unable to compute one month into the past. Defaulting to placeholder. Calendar: %{private}s | %s", v35, 0x16u);
      swift_arrayDestroy();

      (*(v28 + 8))(v67, v65);
      v39(v31, v34);
    }

    else
    {

      v59 = *(v33 + 8);
      v59(v30, v32);
      (*(v28 + 8))(v27, v29);
      v59(v31, v32);
    }

    v7 = v19[3];
    v0 = v19;
LABEL_6:
    v10 = type metadata accessor for ShowEntity(0);
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);

    v11 = v0[1];

    return v11();
  }

  v45 = v0[20];
  v46 = v0[21];
  v47 = v0[18];
  v66 = v45;
  v68 = v0[19];
  v48 = v0[17];
  v49 = v0[12];
  v62 = v0[10];
  loga = v0[11];
  v50 = v0[8];
  v71 = v19[7];
  v74 = v19[9];
  v51 = v19[4];
  v69 = *(v47 + 32);
  v69(v19[21], v19[16], v19[17]);
  sub_3C628(v51, v49, type metadata accessor for ShowEntity.SingleShowWidgetShowQuery);
  (*(v47 + 16))(v45, v46, v48);
  v52 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v53 = (loga + *(v47 + 80) + v52) & ~*(v47 + 80);
  v54 = swift_allocObject();
  v19[34] = v54;
  sub_3C878(v49, v54 + v52, type metadata accessor for ShowEntity.SingleShowWidgetShowQuery);
  v69(v54 + v53, v66, v48);
  *(v54 + ((v68 + v53 + 7) & 0xFFFFFFFFFFFFFFF8)) = v75;
  (*(v50 + 104))(v74, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v71);
  v75;
  v55 = swift_task_alloc();
  v19[35] = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  *v55 = v19;
  v55[1] = sub_38724;
  v57 = v19[9];
  v58 = v19[3];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v58, v57, sub_3B9AC, v54, v56);
}

uint64_t sub_38724()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);

  if (v0)
  {
    v3 = sub_389E0;
  }

  else
  {
    v3 = sub_388A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_388A8()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 168);
  v6 = *(v0 + 136);

  v1(v5, v6);
  (*(v4 + 8))(v2, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_389E0()
{
  v26 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 168);
  v6 = *(v0 + 136);

  v1(v5, v6);
  (*(v4 + 8))(v2, v3);
  v7 = *(v0 + 288);
  sub_E6944();
  swift_errorRetain();
  v8 = sub_E6964();
  v9 = sub_E74B4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 216);
    v24 = *(v0 + 224);
    v11 = *(v0 + 208);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    *(v0 + 16) = v7;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131CF0, &unk_EA7F0);
    v14 = sub_E7084();
    v16 = sub_23E64(v14, v15, &v25);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v8, v9, "Unable to compute default entity for widget: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);

    (*(v10 + 8))(v24, v11);
  }

  else
  {
    v18 = *(v0 + 216);
    v17 = *(v0 + 224);
    v19 = *(v0 + 208);

    (*(v18 + 8))(v17, v19);
  }

  v20 = *(v0 + 24);
  v21 = type metadata accessor for ShowEntity(0);
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);

  v22 = *(v0 + 8);

  return v22();
}

void sub_38CC4(void *a2@<X2>, char *a3@<X8>)
{
  v6 = type metadata accessor for ShowEntity(0);
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v16 - v13;
  sub_38F20(a2, &v16 - v13);
  if (!v3)
  {
    sub_26324(v14, v12, &qword_12DCD8, &unk_EC540);
    v15 = v17;
    if ((*(v17 + 48))(v12, 1, v6) == 1)
    {
      sub_110AC(v12, &qword_12DCD8, &unk_EC540);
      sub_3922C(a3);
      sub_110AC(v14, &qword_12DCD8, &unk_EC540);
    }

    else
    {
      sub_110AC(v14, &qword_12DCD8, &unk_EC540);
      sub_3C878(v12, v8, type metadata accessor for ShowEntity);
      sub_3C878(v8, a3, type metadata accessor for ShowEntity);
      (*(v15 + 56))(a3, 0, 1, v6);
    }
  }
}

void sub_38F20(void *a2@<X1>, char *a3@<X8>)
{
  sub_4ABC(0, &qword_131F00, MTEpisode_ptr);
  v6 = sub_E77A4();
  sub_4ABC(0, &unk_12E080, NSDictionary_ptr);
  v7 = sub_E7734();
  if (v3)
  {

    return;
  }

  if (v7 >> 62)
  {
    v15 = v7;
    v16 = sub_E7AC4();
    v7 = v15;
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_19:

    v20 = 0u;
    v21 = 0u;
    goto LABEL_20;
  }

  if (!*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_19;
  }

LABEL_5:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = sub_E79B4();
  }

  else
  {
    if (!*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }

    v8 = *(v7 + 32);
  }

  v9 = v8;

  *&v18 = sub_E7064();
  *(&v18 + 1) = v10;
  v11 = [v9 __swift_objectForKeyedSubscript:sub_E7C34()];
  swift_unknownObjectRelease();

  if (v11)
  {
    sub_E7864();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (*(&v19 + 1))
  {
    sub_4ABC(0, &qword_12E090, NSManagedObjectID_ptr);
    if (swift_dynamicCast())
    {
      v12 = [a2 objectWithID:v18];
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        ShowEntity.init(model:)(v13, a3);

        v14 = type metadata accessor for ShowEntity(0);
        (*(*(v14 - 8) + 56))(a3, 0, 1, v14);
        return;
      }
    }

    else
    {
    }

    goto LABEL_21;
  }

LABEL_20:
  sub_110AC(&v20, &qword_1319B0, &qword_EAC58);
LABEL_21:
  v17 = type metadata accessor for ShowEntity(0);
  (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
}

void sub_3922C(char *a1@<X8>)
{
  v3 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_E9EE0;
  v5 = objc_opt_self();
  *(v4 + 32) = [v5 predicateForSubscribedAndNotHidden];
  *(v4 + 40) = [v5 predicateForNotImplicitlyFollowedPodcasts];
  sub_4ABC(0, &unk_12DB30, NSPredicate_ptr);
  isa = sub_E71E4().super.isa;

  v7 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v3 setPredicate:v7];
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_E9EE0;
  sub_4ABC(0, &qword_12E1D0, MTPodcast_ptr);
  *(v8 + 32) = sub_E77E4();
  *(v8 + 40) = sub_E77D4();
  sub_4ABC(0, &unk_12DB50, NSSortDescriptor_ptr);
  v9 = sub_E71E4().super.isa;

  [v3 setSortDescriptors:v9];

  [v3 setFetchLimit:1];
  v10 = sub_E7734();
  if (v1)
  {

    return;
  }

  if (v10 >> 62)
  {
    v14 = v10;
    v15 = sub_E7AC4();
    v10 = v14;
    if (v15)
    {
      goto LABEL_5;
    }

LABEL_10:

    v16 = type metadata accessor for ShowEntity(0);
    (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
    return;
  }

  if (!*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = sub_E79B4();
    goto LABEL_8;
  }

  if (*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
  {
    v11 = *(v10 + 32);
LABEL_8:
    v12 = v11;

    ShowEntity.init(model:)(v12, a1);

    v13 = type metadata accessor for ShowEntity(0);
    (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
    return;
  }

  __break(1u);
}

uint64_t sub_3959C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1D7E4;

  return ShowEntity.SingleShowWidgetShowQuery.entities(matching:)(a2, a3);
}

uint64_t sub_39648(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E340;

  return sub_3DB14(a1);
}

uint64_t sub_396F4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1E338;

  return ShowEntity.SingleShowWidgetShowQuery.suggestedEntities()();
}

uint64_t sub_39784(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_3B7DC(&qword_12DEA8, type metadata accessor for ShowEntity.SingleShowWidgetShowQuery, &protocol conformance descriptor for ShowEntity.SingleShowWidgetShowQuery);
  *v5 = v2;
  v5[1] = sub_588C;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_39868(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return ShowEntity.SingleShowWidgetShowQuery.defaultResult()(a1);
}

uint64_t sub_39900@<X0>(uint64_t *a1@<X8>)
{
  result = _s15PodcastsActions12DependenciesO03allC09JetEngine15BaseObjectGraphCyFZ_0();
  *a1 = result;
  return result;
}

Swift::Int sub_399AC(uint64_t *a1)
{
  v2 = *(type metadata accessor for ShowEntity(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_CA308(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_39A54(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_39A54(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_E7BA4(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for ShowEntity(0);
        v6 = sub_E7264();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for ShowEntity(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_39E2C(v8, v9, a1, v4);
      v6[2] = 0;
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
    return sub_39B80(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_39B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = type metadata accessor for ShowEntity(0);
  v8 = __chkstk_darwin(v34);
  v33 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v25 - v11;
  result = __chkstk_darwin(v10);
  v16 = &v25 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *(v14 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v32 = *a4;
    v26 = v17;
    v21 = v32 + v17 * a3;
LABEL_5:
    v30 = v18;
    v31 = a3;
    v28 = v21;
    v29 = v20;
    while (1)
    {
      sub_3C628(v21, v16, type metadata accessor for ShowEntity);
      sub_3C628(v18, v12, type metadata accessor for ShowEntity);
      sub_E53E4();
      sub_E53E4();
      sub_26028();
      v22 = sub_E7834();

      sub_3C8E0(v12, type metadata accessor for ShowEntity);
      result = sub_3C8E0(v16, type metadata accessor for ShowEntity);
      if (v22 != -1)
      {
LABEL_4:
        a3 = v31 + 1;
        v18 = v30 + v26;
        v20 = v29 - 1;
        v21 = v28 + v26;
        if (v31 + 1 == v27)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v32)
      {
        break;
      }

      v23 = v33;
      sub_3C878(v21, v33, type metadata accessor for ShowEntity);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_3C878(v23, v18, type metadata accessor for ShowEntity);
      v18 += v19;
      v21 += v19;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_39E2C(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v103 = a1;
  v116 = type metadata accessor for ShowEntity(0);
  v112 = *(v116 - 8);
  v8 = __chkstk_darwin(v116);
  v105 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v115 = &v100 - v11;
  v12 = __chkstk_darwin(v10);
  v118 = &v100 - v13;
  result = __chkstk_darwin(v12);
  v117 = &v100 - v15;
  v16 = a3[1];
  if (v16 >= 1)
  {
    v100 = a4;
    v17 = 0;
    v18 = _swiftEmptyArrayStorage;
    v104 = a3;
    while (1)
    {
      if (v17 + 1 >= v16)
      {
        v16 = v17 + 1;
      }

      else
      {
        v101 = v5;
        v19 = *(v112 + 72);
        a4 = *a3 + v19 * (v17 + 1);
        v114 = *a3;
        v20 = v114;
        v21 = v17;
        v22 = v117;
        sub_3C628(a4, v117, type metadata accessor for ShowEntity);
        v23 = v20 + v19 * v21;
        v24 = v118;
        sub_3C628(v23, v118, type metadata accessor for ShowEntity);
        sub_E53E4();
        v113 = v119;
        sub_E53E4();
        v109 = sub_26028();
        v111 = sub_E7834();

        sub_3C8E0(v24, type metadata accessor for ShowEntity);
        result = sub_3C8E0(v22, type metadata accessor for ShowEntity);
        v102 = v21;
        v25 = v21 + 2;
        v113 = v19;
        v26 = v114 + v19 * (v21 + 2);
        v110 = v18;
        while (v16 != v25)
        {
          LODWORD(v114) = v111 == -1;
          v27 = v16;
          v28 = v117;
          sub_3C628(v26, v117, type metadata accessor for ShowEntity);
          v29 = v118;
          sub_3C628(a4, v118, type metadata accessor for ShowEntity);
          sub_E53E4();
          sub_E53E4();
          v30 = sub_E7834();

          sub_3C8E0(v29, type metadata accessor for ShowEntity);
          v31 = v28;
          v16 = v27;
          result = sub_3C8E0(v31, type metadata accessor for ShowEntity);
          v18 = v110;
          ++v25;
          v26 += v113;
          a4 += v113;
          if (((v114 ^ (v30 != -1)) & 1) == 0)
          {
            v16 = v25 - 1;
            break;
          }
        }

        v5 = v101;
        v17 = v102;
        if (v111 == -1)
        {
          a3 = v104;
          if (v16 < v102)
          {
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
            return result;
          }

          if (v102 < v16)
          {
            v80 = v113 * (v16 - 1);
            v81 = v16 * v113;
            v82 = v16;
            v83 = v102 * v113;
            do
            {
              if (v17 != --v82)
              {
                v84 = *a3;
                if (!v84)
                {
                  goto LABEL_131;
                }

                a4 = v84 + v83;
                sub_3C878(v84 + v83, v105, type metadata accessor for ShowEntity);
                if (v83 < v80 || a4 >= v84 + v81)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v83 != v80)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_3C878(v105, v84 + v80, type metadata accessor for ShowEntity);
                a3 = v104;
              }

              ++v17;
              v80 -= v113;
              v81 -= v113;
              v83 += v113;
            }

            while (v17 < v82);
            v18 = v110;
            v17 = v102;
          }
        }

        else
        {
          a3 = v104;
        }
      }

      v32 = a3[1];
      if (v16 >= v32)
      {
        goto LABEL_21;
      }

      if (__OFSUB__(v16, v17))
      {
        goto LABEL_123;
      }

      if (v16 - v17 >= v100)
      {
        goto LABEL_21;
      }

      if (__OFADD__(v17, v100))
      {
        goto LABEL_124;
      }

      if (v17 + v100 >= v32)
      {
        v33 = a3[1];
      }

      else
      {
        v33 = v17 + v100;
      }

      if (v33 < v17)
      {
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      if (v16 == v33)
      {
LABEL_21:
        v34 = v16;
        if (v16 < v17)
        {
          goto LABEL_122;
        }
      }

      else
      {
        v110 = v18;
        v101 = v5;
        v85 = *a3;
        v86 = *(v112 + 72);
        v87 = *a3 + v86 * (v16 - 1);
        v88 = -v86;
        v102 = v17;
        v89 = v17 - v16;
        v114 = v85;
        v106 = v86;
        v107 = v33;
        a4 = v85 + v16 * v86;
        do
        {
          v113 = v16;
          v108 = a4;
          v109 = v89;
          v111 = v87;
          v90 = v87;
          do
          {
            v91 = v117;
            sub_3C628(a4, v117, type metadata accessor for ShowEntity);
            v92 = v118;
            sub_3C628(v90, v118, type metadata accessor for ShowEntity);
            sub_E53E4();
            sub_E53E4();
            sub_26028();
            v93 = sub_E7834();

            sub_3C8E0(v92, type metadata accessor for ShowEntity);
            result = sub_3C8E0(v91, type metadata accessor for ShowEntity);
            if (v93 != -1)
            {
              break;
            }

            if (!v114)
            {
              goto LABEL_128;
            }

            v94 = v115;
            sub_3C878(a4, v115, type metadata accessor for ShowEntity);
            swift_arrayInitWithTakeFrontToBack();
            sub_3C878(v94, v90, type metadata accessor for ShowEntity);
            v90 += v88;
            a4 += v88;
          }

          while (!__CFADD__(v89++, 1));
          v16 = v113 + 1;
          v34 = v107;
          v87 = v111 + v106;
          v89 = v109 - 1;
          a4 = v108 + v106;
        }

        while (v113 + 1 != v107);
        v5 = v101;
        a3 = v104;
        v18 = v110;
        v17 = v102;
        if (v107 < v102)
        {
          goto LABEL_122;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_23350(0, *(v18 + 2) + 1, 1, v18);
        v18 = result;
      }

      a4 = *(v18 + 2);
      v35 = *(v18 + 3);
      v36 = a4 + 1;
      if (a4 >= v35 >> 1)
      {
        result = sub_23350((v35 > 1), a4 + 1, 1, v18);
        v18 = result;
      }

      *(v18 + 2) = v36;
      v37 = &v18[16 * a4];
      *(v37 + 4) = v17;
      *(v37 + 5) = v34;
      v107 = v34;
      v38 = *v103;
      if (!*v103)
      {
        goto LABEL_132;
      }

      if (a4)
      {
        while (1)
        {
          a4 = v36 - 1;
          if (v36 >= 4)
          {
            break;
          }

          if (v36 == 3)
          {
            v39 = *(v18 + 4);
            v40 = *(v18 + 5);
            v49 = __OFSUB__(v40, v39);
            v41 = v40 - v39;
            v42 = v49;
LABEL_41:
            if (v42)
            {
              goto LABEL_111;
            }

            v55 = &v18[16 * v36];
            v57 = *v55;
            v56 = *(v55 + 1);
            v58 = __OFSUB__(v56, v57);
            v59 = v56 - v57;
            v60 = v58;
            if (v58)
            {
              goto LABEL_114;
            }

            v61 = &v18[16 * a4 + 32];
            v63 = *v61;
            v62 = *(v61 + 1);
            v49 = __OFSUB__(v62, v63);
            v64 = v62 - v63;
            if (v49)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v59, v64))
            {
              goto LABEL_118;
            }

            if (v59 + v64 >= v41)
            {
              if (v41 < v64)
              {
                a4 = v36 - 2;
              }

              goto LABEL_62;
            }

            goto LABEL_55;
          }

          v65 = &v18[16 * v36];
          v67 = *v65;
          v66 = *(v65 + 1);
          v49 = __OFSUB__(v66, v67);
          v59 = v66 - v67;
          v60 = v49;
LABEL_55:
          if (v60)
          {
            goto LABEL_113;
          }

          v68 = &v18[16 * a4];
          v70 = *(v68 + 4);
          v69 = *(v68 + 5);
          v49 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v49)
          {
            goto LABEL_116;
          }

          if (v71 < v59)
          {
            goto LABEL_3;
          }

LABEL_62:
          v76 = a4 - 1;
          if (a4 - 1 >= v36)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }

          if (!*a3)
          {
            goto LABEL_129;
          }

          v77 = *&v18[16 * v76 + 32];
          v78 = *&v18[16 * a4 + 40];
          sub_3A888(*a3 + *(v112 + 72) * v77, *a3 + *(v112 + 72) * *&v18[16 * a4 + 32], *a3 + *(v112 + 72) * v78, v38);
          if (v5)
          {
          }

          if (v78 < v77)
          {
            goto LABEL_107;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_CA134(v18);
          }

          if (v76 >= *(v18 + 2))
          {
            goto LABEL_108;
          }

          v79 = &v18[16 * v76];
          *(v79 + 4) = v77;
          *(v79 + 5) = v78;
          v120 = v18;
          result = sub_CA0A8(a4);
          v18 = v120;
          v36 = *(v120 + 2);
          if (v36 <= 1)
          {
            goto LABEL_3;
          }
        }

        v43 = &v18[16 * v36 + 32];
        v44 = *(v43 - 64);
        v45 = *(v43 - 56);
        v49 = __OFSUB__(v45, v44);
        v46 = v45 - v44;
        if (v49)
        {
          goto LABEL_109;
        }

        v48 = *(v43 - 48);
        v47 = *(v43 - 40);
        v49 = __OFSUB__(v47, v48);
        v41 = v47 - v48;
        v42 = v49;
        if (v49)
        {
          goto LABEL_110;
        }

        v50 = &v18[16 * v36];
        v52 = *v50;
        v51 = *(v50 + 1);
        v49 = __OFSUB__(v51, v52);
        v53 = v51 - v52;
        if (v49)
        {
          goto LABEL_112;
        }

        v49 = __OFADD__(v41, v53);
        v54 = v41 + v53;
        if (v49)
        {
          goto LABEL_115;
        }

        if (v54 >= v46)
        {
          v72 = &v18[16 * a4 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v49 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v49)
          {
            goto LABEL_119;
          }

          if (v41 < v75)
          {
            a4 = v36 - 2;
          }

          goto LABEL_62;
        }

        goto LABEL_41;
      }

LABEL_3:
      v16 = a3[1];
      v17 = v107;
      if (v107 >= v16)
      {
        goto LABEL_95;
      }
    }
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_95:
  a4 = *v103;
  if (!*v103)
  {
    goto LABEL_133;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_126:
    result = sub_CA134(v18);
    v18 = result;
  }

  v120 = v18;
  v96 = *(v18 + 2);
  if (v96 >= 2)
  {
    while (*a3)
    {
      v97 = *&v18[16 * v96];
      v98 = *&v18[16 * v96 + 24];
      sub_3A888(*a3 + *(v112 + 72) * v97, *a3 + *(v112 + 72) * *&v18[16 * v96 + 16], *a3 + *(v112 + 72) * v98, a4);
      if (v5)
      {
      }

      if (v98 < v97)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_CA134(v18);
      }

      if (v96 - 2 >= *(v18 + 2))
      {
        goto LABEL_121;
      }

      v99 = &v18[16 * v96];
      *v99 = v97;
      *(v99 + 1) = v98;
      v120 = v18;
      result = sub_CA0A8(v96 - 1);
      v18 = v120;
      v96 = *(v120 + 2);
      if (v96 <= 1)
      {
      }
    }

    goto LABEL_130;
  }
}

uint64_t sub_3A888(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = a3;
  v40 = type metadata accessor for ShowEntity(0);
  v7 = __chkstk_darwin(v40);
  v42 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v41 = &v33 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v13 = v43 - a2;
  if (v43 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_63;
  }

  v14 = (a2 - a1) / v12;
  v46 = a1;
  v45 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v22 = a4 + v16;
    if (v16 >= 1)
    {
      v23 = -v12;
      v24 = v22;
      v36 = -v12;
      v37 = a1;
      v25 = v41;
      while (2)
      {
        while (1)
        {
          v34 = v22;
          v26 = a2;
          v38 = a2;
          v39 = a2 + v23;
          while (1)
          {
            v28 = v43;
            if (v26 <= a1)
            {
              v46 = v26;
              v44 = v34;
              goto LABEL_60;
            }

            v35 = v22;
            v43 += v23;
            v29 = v24 + v23;
            sub_3C628(v29, v25, type metadata accessor for ShowEntity);
            v30 = v42;
            sub_3C628(v39, v42, type metadata accessor for ShowEntity);
            sub_E53E4();
            sub_E53E4();
            sub_26028();
            v31 = sub_E7834();

            sub_3C8E0(v30, type metadata accessor for ShowEntity);
            sub_3C8E0(v25, type metadata accessor for ShowEntity);
            if (v31 == -1)
            {
              break;
            }

            v22 = v29;
            if (v28 < v24 || v43 >= v24)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v37;
            }

            else
            {
              a1 = v37;
              if (v28 != v24)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v24 = v29;
            v27 = v29 > a4;
            v23 = v36;
            v26 = v38;
            if (!v27)
            {
              a2 = v38;
              goto LABEL_59;
            }
          }

          if (v28 < v38 || v43 >= v38)
          {
            break;
          }

          v32 = v28 == v38;
          a2 = v39;
          v23 = v36;
          a1 = v37;
          v22 = v35;
          if (!v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v24 <= a4)
          {
            goto LABEL_59;
          }
        }

        a2 = v39;
        swift_arrayInitWithTakeFrontToBack();
        v23 = v36;
        a1 = v37;
        v22 = v35;
        if (v24 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v46 = a2;
    v44 = v22;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v39 = a4 + v15;
    v44 = a4 + v15;
    if (v15 >= 1 && a2 < v43)
    {
      v18 = v41;
      do
      {
        sub_3C628(a2, v18, type metadata accessor for ShowEntity);
        v19 = v42;
        sub_3C628(a4, v42, type metadata accessor for ShowEntity);
        sub_E53E4();
        v20 = a4;
        sub_E53E4();
        sub_26028();
        v21 = sub_E7834();

        sub_3C8E0(v19, type metadata accessor for ShowEntity);
        sub_3C8E0(v18, type metadata accessor for ShowEntity);
        if (v21 == -1)
        {
          if (a1 < a2 || a1 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v12;
          goto LABEL_34;
        }

        a4 += v12;
        if (a1 < v20 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v20)
        {
          swift_arrayInitWithTakeBackToFront();
          v45 = v20 + v12;
          goto LABEL_34;
        }

        v45 = v20 + v12;
LABEL_34:
        a1 += v12;
        v46 = a1;
      }

      while (a4 < v39 && a2 < v43);
    }
  }

LABEL_60:
  sub_447F4(&v46, &v45, &v44);
  return 1;
}

void sub_3AE44(void *a2@<X2>, void *a3@<X3>, uint64_t a7@<X8>)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  sub_4ABC(0, &qword_12DB00, MTDB_ptr);
  v10 = sub_E7774();
  if (v7)
  {
    *a2 = v7;
  }

  else
  {
    v11 = v10;
    v12 = sub_E7754();

    v13 = sub_E6834();
    v15 = v14;
    v17 = v16;

    *a7 = v13;
    *(a7 + 8) = v15;
    *(a7 + 16) = v17;
  }
}

unint64_t sub_3AF54(unint64_t a1, uint64_t (*a2)(id *))
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = sub_E7AC4();
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = sub_E79B4();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    v12 = v7;
    v9 = a2(&v12);

    if (v9)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }

  return v5;
}

uint64_t sub_3B044(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(id *))
{
  v6 = a2;
  v7 = result;
  v8 = a2 > 0;
  v9 = a2 >> 63;
  if (a2 >> 63 < 0 && a4 >> 62)
  {
    v11 = a4;
    result = sub_E7AC4();
    a4 = v11;
    v6 = a2;
  }

  else if ((a2 & 0x8000000000000000) == 0)
  {
    if (!a2)
    {
      return v7;
    }

    goto LABEL_9;
  }

  v12 = __OFSUB__(0, v6);
  v6 = -v6;
  if (!v12)
  {
    if (v6 < 0)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

LABEL_9:
    if (v7 == a3)
    {
      return 0;
    }

    v5 = a4 & 0xFFFFFFFFFFFFFF8;
    if (!(a4 >> 62))
    {
      v13 = *(&dword_10 + (a4 & 0xFFFFFFFFFFFFFF8));
      goto LABEL_13;
    }

LABEL_37:
    v20 = v6;
    v21 = a4;
    v22 = sub_E7AC4();
    a4 = v21;
    v6 = v20;
    v13 = v22;
LABEL_13:
    v8 |= v9;
    v9 = a4 & 0xC000000000000001;
    v23 = v6;
    v14 = a4 + 32;
    v15 = 1;
    while (1)
    {
      v25 = v15;
      v16 = v7;
      while (1)
      {
        v7 = v16 + v8;
        if (__OFADD__(v16, v8))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        if (v7 == v13)
        {
          break;
        }

        if (v9)
        {
          v17 = sub_E79B4();
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          if (v7 >= *(v5 + 16))
          {
            goto LABEL_33;
          }

          v17 = *(v14 + 8 * v7);
        }

        v18 = v17;
        v27 = v17;
        v19 = a5(&v27);

        v16 += v8;
        if (v19)
        {
          goto LABEL_25;
        }
      }

      v7 = v13;
LABEL_25:
      v6 = v23;
      if (v25 == v23)
      {
        return v7;
      }

      if (v25 >= v23)
      {
        goto LABEL_34;
      }

      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_35;
      }

      if (v7 == a3)
      {
        return 0;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_3B214()
{
  result = qword_12DA50;
  if (!qword_12DA50)
  {
    sub_4ABC(255, &qword_12DD80, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DA50);
  }

  return result;
}

uint64_t sub_3B27C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t type metadata accessor for ShowEntity.SingleShowWidgetShowQuery(uint64_t a1)
{
  result = qword_12DF20;
  if (!qword_12DF20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3B33C(uint64_t a1)
{
  v4 = *(type metadata accessor for ShowEntity.SingleShowWidgetShowQuery(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_5E10;

  return sub_35744(a1, v1 + v5);
}

uint64_t sub_3B414()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3B44C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5E10;

  return sub_35C84(a1, v4);
}

uint64_t sub_3B500()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(type metadata accessor for ShowEntity.SingleShowWidgetShowQuery(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_E6734();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_3B650(uint64_t a1)
{
  v4 = *(type metadata accessor for ShowEntity.SingleShowWidgetShowQuery(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_588C;

  return sub_37394(a1, v1 + v5);
}

uint64_t sub_3B728(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_588C;

  return sub_35C84(a1, v4);
}

uint64_t sub_3B7DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3B824()
{
  v1 = *(type metadata accessor for ShowEntity.SingleShowWidgetShowQuery(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_E5A54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = v2 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = sub_E6734();
  (*(*(v11 - 8) + 8))(v0 + v3, v11);

  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v10 + 8, v9 | 7);
}

void sub_3B9AC(char *a1@<X8>)
{
  v3 = *(type metadata accessor for ShowEntity.SingleShowWidgetShowQuery(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_E5A54() - 8);
  sub_38CC4(*(v1 + ((*(v6 + 64) + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

unint64_t sub_3BAF4()
{
  result = qword_12DE48;
  if (!qword_12DE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DE48);
  }

  return result;
}

unint64_t sub_3BB4C()
{
  result = qword_12DE50;
  if (!qword_12DE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DE50);
  }

  return result;
}

unint64_t sub_3BBA4()
{
  result = qword_12DE58;
  if (!qword_12DE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DE58);
  }

  return result;
}

unint64_t sub_3BC44()
{
  result = qword_12DE60;
  if (!qword_12DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DE60);
  }

  return result;
}

unint64_t sub_3BC98()
{
  result = qword_12DE70;
  if (!qword_12DE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12DD88, &qword_EA740);
    sub_3B7DC(&qword_12DE68, type metadata accessor for ShowEntity, &protocol conformance descriptor for ShowEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DE70);
  }

  return result;
}

void *sub_3BF00@<X0>(void *a1@<X8>)
{
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

void *sub_3BF40@<X0>(void *a1@<X8>)
{
  type metadata accessor for ShowEntity.SingleShowWidgetShowQuery(0);
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

uint64_t sub_3BFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_E6734();
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

uint64_t sub_3C08C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_E6734();
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

void sub_3C144(uint64_t a1)
{
  sub_E6734();
  if (v1 <= 0x3F)
  {
    sub_3C1C8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_3C1C8(uint64_t a1)
{
  if (!qword_12DF30)
  {
    sub_E6DF4();
    v1 = sub_E5224();
    if (!v2)
    {
      atomic_store(v1, &qword_12DF30);
    }
  }
}

unint64_t sub_3C220()
{
  result = qword_12DF68;
  if (!qword_12DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DF68);
  }

  return result;
}

uint64_t sub_3C2A0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_3C3E8()
{
  result = qword_12E008;
  if (!qword_12E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E008);
  }

  return result;
}

unint64_t sub_3C530()
{
  result = qword_12E048;
  if (!qword_12E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E048);
  }

  return result;
}

uint64_t sub_3C584()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3C5F0@<X0>(uint64_t (*a1)(void, void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1(*(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_3C628(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_82Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_3C878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_3C8E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_3C940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_3C9B0()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_3C9F0()
{
  result = qword_12E0A8;
  if (!qword_12E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E0A8);
  }

  return result;
}

uint64_t sub_3CA98(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = type metadata accessor for ChannelEntity(0);
  v39 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E1F0, &qword_EAED8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v33 = (&v33 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E1F8, qword_EAEE0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = (&v33 - v12);
  v14 = *(a1 + 16);
  v37 = (v6 + 48);
  v38 = (v6 + 56);

  i = 0;
  v34 = a1;
  v40 = a1;
  v17 = v14 == 0;
  if (v14)
  {
    goto LABEL_3;
  }

LABEL_2:
  v18 = 1;
  for (i = v14; ; ++i)
  {
    (*v38)(v11, v18, 1, v5);
    sub_45B04(v11, v13, &qword_12E1F8, qword_EAEE0);
    if ((*v37)(v13, 1, v5) == 1)
    {
      return v40;
    }

    v22 = v14;
    v23 = *v13;
    v24 = v5;
    v25 = v13 + *(v5 + 48);
    v26 = v35;
    sub_45B6C(v25, v35, type metadata accessor for ChannelEntity);
    v27 = sub_448F4(v26, v36);
    v29 = v28;
    sub_45BD4(v26, type metadata accessor for ChannelEntity);
    v30 = v40;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if ((v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      result = sub_42250(v30);
      v30 = result;
      if ((v23 & 0x8000000000000000) != 0)
      {
LABEL_13:
        __break(1u);
        return v40;
      }
    }

    if (v23 >= v30[2])
    {
      break;
    }

    v31 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v40 = v30;
    v32 = (v30 + v31 + *(v39 + 72) * v23);
    *v32 = v27;
    v32[1] = v29;

    v14 = v22;
    v5 = v24;
    v17 = i >= v22;
    if (i == v22)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (v17)
    {
      goto LABEL_16;
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_17;
    }

    v19 = v33;
    v20 = v34 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * i;
    v21 = *(v5 + 48);
    *v33 = i;
    sub_45A9C(v20, v19 + v21, type metadata accessor for ChannelEntity);
    sub_45B04(v19, v11, &qword_12E1F0, &qword_EAED8);
    v18 = 0;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_3CE38(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = type metadata accessor for StationEntity(0);
  v39 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E130, &qword_EAE60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v33 = (&v33 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E138, &qword_EAE68);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = (&v33 - v12);
  v14 = *(a1 + 16);
  v37 = (v6 + 48);
  v38 = (v6 + 56);

  i = 0;
  v34 = a1;
  v40 = a1;
  v17 = v14 == 0;
  if (v14)
  {
    goto LABEL_3;
  }

LABEL_2:
  v18 = 1;
  for (i = v14; ; ++i)
  {
    (*v38)(v11, v18, 1, v5);
    sub_45B04(v11, v13, &qword_12E138, &qword_EAE68);
    if ((*v37)(v13, 1, v5) == 1)
    {
      return v40;
    }

    v22 = v14;
    v23 = *v13;
    v24 = v5;
    v25 = v13 + *(v5 + 48);
    v26 = v35;
    sub_45B6C(v25, v35, type metadata accessor for StationEntity);
    v27 = sub_44D00(v26, v36);
    v29 = v28;
    sub_45BD4(v26, type metadata accessor for StationEntity);
    v30 = v40;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if ((v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      result = sub_42264(v30);
      v30 = result;
      if ((v23 & 0x8000000000000000) != 0)
      {
LABEL_13:
        __break(1u);
        return v40;
      }
    }

    if (v23 >= v30[2])
    {
      break;
    }

    v31 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v40 = v30;
    v32 = (v30 + v31 + *(v39 + 72) * v23);
    *v32 = v27;
    v32[1] = v29;

    v14 = v22;
    v5 = v24;
    v17 = i >= v22;
    if (i == v22)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (v17)
    {
      goto LABEL_16;
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_17;
    }

    v19 = v33;
    v20 = v34 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * i;
    v21 = *(v5 + 48);
    *v33 = i;
    sub_45A9C(v20, v19 + v21, type metadata accessor for StationEntity);
    sub_45B04(v19, v11, &qword_12E130, &qword_EAE60);
    v18 = 0;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_3D1D8(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = type metadata accessor for EpisodeEntity(0);
  v39 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E1D8, &qword_EAEC8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v33 = (&v33 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E1E0, &qword_EAED0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = (&v33 - v12);
  v14 = *(a1 + 16);
  v37 = (v6 + 48);
  v38 = (v6 + 56);

  i = 0;
  v34 = a1;
  v40 = a1;
  v17 = v14 == 0;
  if (v14)
  {
    goto LABEL_3;
  }

LABEL_2:
  v18 = 1;
  for (i = v14; ; ++i)
  {
    (*v38)(v11, v18, 1, v5);
    sub_45B04(v11, v13, &qword_12E1E0, &qword_EAED0);
    if ((*v37)(v13, 1, v5) == 1)
    {
      return v40;
    }

    v22 = v14;
    v23 = *v13;
    v24 = v5;
    v25 = v13 + *(v5 + 48);
    v26 = v35;
    sub_45B6C(v25, v35, type metadata accessor for EpisodeEntity);
    v27 = sub_4510C(v26, v36);
    v29 = v28;
    sub_45BD4(v26, type metadata accessor for EpisodeEntity);
    v30 = v40;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if ((v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      result = sub_42278(v30);
      v30 = result;
      if ((v23 & 0x8000000000000000) != 0)
      {
LABEL_13:
        __break(1u);
        return v40;
      }
    }

    if (v23 >= v30[2])
    {
      break;
    }

    v31 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v40 = v30;
    v32 = (v30 + v31 + *(v39 + 72) * v23);
    *v32 = v27;
    v32[1] = v29;

    v14 = v22;
    v5 = v24;
    v17 = i >= v22;
    if (i == v22)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (v17)
    {
      goto LABEL_16;
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_17;
    }

    v19 = v33;
    v20 = v34 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * i;
    v21 = *(v5 + 48);
    *v33 = i;
    sub_45A9C(v20, v19 + v21, type metadata accessor for EpisodeEntity);
    sub_45B04(v19, v11, &qword_12E1D8, &qword_EAEC8);
    v18 = 0;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_3D578(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = type metadata accessor for ShowEntity(0);
  v39 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E1A0, &qword_EAEB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v33 = (&v33 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E1A8, &qword_EAEB8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = (&v33 - v12);
  v14 = *(a1 + 16);
  v37 = (v6 + 48);
  v38 = (v6 + 56);

  i = 0;
  v34 = a1;
  v40 = a1;
  v17 = v14 == 0;
  if (v14)
  {
    goto LABEL_3;
  }

LABEL_2:
  v18 = 1;
  for (i = v14; ; ++i)
  {
    (*v38)(v11, v18, 1, v5);
    sub_45B04(v11, v13, &qword_12E1A8, &qword_EAEB8);
    if ((*v37)(v13, 1, v5) == 1)
    {
      return v40;
    }

    v22 = v14;
    v23 = *v13;
    v24 = v5;
    v25 = v13 + *(v5 + 48);
    v26 = v35;
    sub_45B6C(v25, v35, type metadata accessor for ShowEntity);
    v27 = sub_45518(v26, v36);
    v29 = v28;
    sub_45BD4(v26, type metadata accessor for ShowEntity);
    v30 = v40;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if ((v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      result = sub_4228C(v30);
      v30 = result;
      if ((v23 & 0x8000000000000000) != 0)
      {
LABEL_13:
        __break(1u);
        return v40;
      }
    }

    if (v23 >= v30[2])
    {
      break;
    }

    v31 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v40 = v30;
    v32 = (v30 + v31 + *(v39 + 72) * v23);
    *v32 = v27;
    v32[1] = v29;

    v14 = v22;
    v5 = v24;
    v17 = i >= v22;
    if (i == v22)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (v17)
    {
      goto LABEL_16;
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_17;
    }

    v19 = v33;
    v20 = v34 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * i;
    v21 = *(v5 + 48);
    *v33 = i;
    sub_45A9C(v20, v19 + v21, type metadata accessor for ShowEntity);
    sub_45B04(v19, v11, &qword_12E1A0, &qword_EAEB0);
    v18 = 0;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_3D918(uint64_t result)
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

      sub_BEB48(&v13, v11, v12);

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

uint64_t sub_3DA1C(uint64_t a1)
{
  v2 = sub_E7884();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_45924(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_3DA98(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = (result + 40);
      do
      {
        v5 = *(v3 - 1);
        v4 = *v3;

        sub_42BE4(v5, v4);

        v3 += 2;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

uint64_t sub_3DB14(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_E7324();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_3DBD4, 0, 0);
}

uint64_t sub_3DBD4()
{
  sub_4ABC(0, &qword_12DB00, MTDB_ptr);
  v1 = sub_E7774();
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_E7374();
  v5 = sub_E7764();
  v0[7] = v5;
  (*(v3 + 8))(v2, v4);

  v6 = v0[2];

  v0[8] = sub_10C40(v7);

  v8 = type metadata accessor for ShowEntity(0);
  sub_45C34(&qword_12DDF0, type metadata accessor for ShowEntity, &protocol conformance descriptor for ShowEntity);
  v9 = LibraryEntityIDAligner.normalizing(identifiers:for:)(v6, v8);
  v0[9] = v9;
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_3DDD4;

  return sub_3EAB4(v9, v5);
}

uint64_t sub_3DDD4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *v2;
  v5[11] = a1;
  v5[12] = a2;

  v7 = swift_task_alloc();
  v5[13] = v7;
  *v7 = v6;
  v7[1] = sub_3DF7C;
  v8 = v5[7];

  return sub_3F324(a1, a2, v8);
}

uint64_t sub_3DF7C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_3E15C;
  }

  else
  {

    *(v4 + 120) = a1;
    v5 = sub_3E0B4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_3E0B4()
{
  v1 = v0[7];
  v2 = sub_3D578(v0[15], v0[8]);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_3E15C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_3E1E8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_E7324();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_3E2A8, 0, 0);
}

uint64_t sub_3E2A8()
{
  sub_4ABC(0, &qword_12DB00, MTDB_ptr);
  v1 = sub_E7774();
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_E7374();
  v5 = sub_E7764();
  v0[7] = v5;
  (*(v3 + 8))(v2, v4);

  v6 = v0[2];

  v0[8] = sub_10C40(v7);

  v8 = type metadata accessor for StationEntity(0);
  sub_45C34(&qword_12DC58, type metadata accessor for StationEntity, &protocol conformance descriptor for StationEntity);
  v9 = LibraryEntityIDAligner.normalizing(identifiers:for:)(v6, v8);
  v0[9] = v9;
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_3E4A4;

  return sub_3E8D4(v9, v5);
}

uint64_t sub_3E4A4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *v2;
  v5[11] = a1;
  v5[12] = a2;

  v7 = swift_task_alloc();
  v5[13] = v7;
  *v7 = v6;
  v7[1] = sub_3E648;
  v8 = v5[7];
  v9 = v5[3];

  return sub_3ECA4(a1, a2, v8, v9);
}

uint64_t sub_3E648(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {

    v5 = sub_3E868;
  }

  else
  {
    *(v4 + 120) = a1;
    v5 = sub_3E7C0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_3E7C0()
{
  v1 = v0[7];
  v2 = sub_3CE38(v0[15], v0[8]);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_3E868()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3E8D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_3E8F4, 0, 0);
}

uint64_t sub_3E8F4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_15D58(0, *(v1 + 16), 0);
    v3 = v1 + 40;
    do
    {
      sub_E7064();

      v4 = sub_E6834();
      v6 = v5;
      v8 = v7;

      v10 = *(v19 + 16);
      v9 = *(v19 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_15D58((v9 > 1), v10 + 1, 1);
      }

      *(v19 + 16) = v10 + 1;
      v11 = v19 + 24 * v10;
      *(v11 + 32) = v4;
      *(v11 + 40) = v6;
      *(v11 + 48) = v8;
      v3 += 16;
      --v2;
    }

    while (v2);
    v0 = v18;
  }

  sub_E7224();
  v13 = v12;

  v15 = sub_10C40(v14);
  swift_bridgeObjectRelease_n();

  v16 = *(v0 + 8);

  return v16(v13, v15);
}

uint64_t sub_3EAB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_3EAD4, 0, 0);
}

uint64_t sub_3EAD4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_15D58(0, *(v1 + 16), 0);
    v3 = v1 + 40;
    do
    {
      v4 = qword_12CAF0;

      if (v4 != -1)
      {
        swift_once();
      }

      v5 = sub_E6834();
      v7 = v6;
      v9 = v8;

      v11 = *(v20 + 16);
      v10 = *(v20 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_15D58((v10 > 1), v11 + 1, 1);
      }

      *(v20 + 16) = v11 + 1;
      v12 = v20 + 24 * v11;
      *(v12 + 32) = v5;
      *(v12 + 40) = v7;
      *(v12 + 48) = v9;
      v3 += 16;
      --v2;
    }

    while (v2);
    v0 = v19;
  }

  sub_E7224();
  v14 = v13;

  v16 = sub_10C40(v15);
  swift_bridgeObjectRelease_n();

  v17 = *(v0 + 8);

  return v17(v14, v16);
}

uint64_t sub_3ECA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_E6974();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for StationEntity(0);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_3EDC4, 0, 0);
}

uint64_t sub_3EDC4()
{
  v0[2] = v0[6];

  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_3EE80;
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];

  return sub_3FA20(v5, v4, v2, v3);
}

uint64_t sub_3EE80(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_45C7C;
  }

  else
  {
    v4 = sub_3EF94;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_3EF94()
{
  v33 = v0;
  v1 = 0;
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = *(v2 + 16);
  v30 = _swiftEmptyArrayStorage;
  while (v5 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v6 = v0[14];
    sub_45A9C(v0[16] + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v1++, v6, type metadata accessor for StationEntity);
    v7 = *(v3 + 16);
    v8 = *(v3 + 24);

    sub_45BD4(v6, type metadata accessor for StationEntity);
    if (v8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_22FBC(0, *(v30 + 2) + 1, 1, v30);
      }

      v10 = *(v30 + 2);
      v9 = *(v30 + 3);
      if (v10 >= v9 >> 1)
      {
        v30 = sub_22FBC((v9 > 1), v10 + 1, 1, v30);
      }

      *(v30 + 2) = v10 + 1;
      v11 = &v30[16 * v10];
      *(v11 + 4) = v7;
      *(v11 + 5) = v8;
    }
  }

  sub_3DA98(v30);

  v0[3] = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF70, &qword_E9E80);
  sub_1BFDC();
  if (sub_E7404())
  {
    sub_E6914();
    v12 = sub_E6964();
    v13 = sub_E74B4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[12];
      v31 = v0[11];
      v16 = v0[9];
      v15 = v0[10];
      v17 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v17 = 136315394;
      v0[4] = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E178, &unk_EAE88);
      v18 = sub_E7084();
      v20 = sub_23E64(v18, v19, &v32);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;

      v21 = sub_E73B4();
      v23 = v22;

      v24 = sub_23E64(v21, v23, &v32);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_0, v12, v13, "Failed to find requested local entities (%s) with identifiers: %s", v17, 0x16u);
      swift_arrayDestroy();

      (*(v15 + 8))(v31, v16);
    }

    else
    {
      v26 = v0[10];
      v25 = v0[11];
      v27 = v0[9];

      (*(v26 + 8))(v25, v27);
    }
  }

  v28 = v0[1];
  v29 = v0[16];

  v28(v29);
}

uint64_t sub_3F324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_E6974();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for ShowEntity(0);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_3F444, 0, 0);
}

uint64_t sub_3F444()
{
  v0[2] = v0[6];

  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_3F500;
  v2 = v0[7];
  v4 = v0[5];
  v3 = v0[6];

  return sub_3FFD4(v4, v3, v2);
}

uint64_t sub_3F500(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_3F9A4;
  }

  else
  {
    v4 = sub_3F614;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_3F614()
{
  v33 = v0;
  v1 = 0;
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = *(v2 + 16);
  v30 = _swiftEmptyArrayStorage;
  while (v5 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v6 = v0[14];
    sub_45A9C(v0[16] + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v1++, v6, type metadata accessor for ShowEntity);
    v7 = *(v3 + 40);
    v8 = *(v3 + 48);

    sub_45BD4(v6, type metadata accessor for ShowEntity);
    if (v8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_22FBC(0, *(v30 + 2) + 1, 1, v30);
      }

      v10 = *(v30 + 2);
      v9 = *(v30 + 3);
      if (v10 >= v9 >> 1)
      {
        v30 = sub_22FBC((v9 > 1), v10 + 1, 1, v30);
      }

      *(v30 + 2) = v10 + 1;
      v11 = &v30[16 * v10];
      *(v11 + 4) = v7;
      *(v11 + 5) = v8;
    }
  }

  sub_3DA98(v30);

  v0[3] = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF70, &qword_E9E80);
  sub_1BFDC();
  if (sub_E7404())
  {
    sub_E6914();
    v12 = sub_E6964();
    v13 = sub_E74B4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[12];
      v31 = v0[11];
      v16 = v0[9];
      v15 = v0[10];
      v17 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v17 = 136315394;
      v0[4] = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DF90, &qword_EAB78);
      v18 = sub_E7084();
      v20 = sub_23E64(v18, v19, &v32);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;

      v21 = sub_E73B4();
      v23 = v22;

      v24 = sub_23E64(v21, v23, &v32);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_0, v12, v13, "Failed to find requested local entities (%s) with identifiers: %s", v17, 0x16u);
      swift_arrayDestroy();

      (*(v15 + 8))(v31, v16);
    }

    else
    {
      v26 = v0[10];
      v25 = v0[11];
      v27 = v0[9];

      (*(v26 + 8))(v25, v27);
    }
  }

  v28 = v0[1];
  v29 = v0[16];

  v28(v29);
}

uint64_t sub_3F9A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3FA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a2;
  v4[6] = a3;
  v4[4] = a1;
  v6 = sub_E7724();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[2] = a4;

  return _swift_task_switch(sub_3FAEC, 0, 0);
}

uint64_t sub_3FAEC()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v6 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPlaylistEntityName];
  v0[10] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_E9EE0;
  sub_4ABC(0, &unk_12DB60, NSManagedObject_ptr);
  *(v7 + 32) = sub_E7544();
  v8 = sub_45978();
  *(v7 + 40) = (*(v8 + 40))(v5, &type metadata for StationEntity.StationEntityQuery, v8);
  sub_4ABC(0, &unk_12DB30, NSPredicate_ptr);
  isa = sub_E71E4().super.isa;

  v10 = [objc_opt_self() orPredicateWithSubpredicates:isa];

  [v6 setPredicate:v10];
  v11 = swift_allocObject();
  v0[11] = v11;
  *(v11 + 16) = v4;
  *(v11 + 24) = v6;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v12 = v4;
  v13 = v6;
  v14 = swift_task_alloc();
  v0[12] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E0B0, &qword_EA2E0);
  *v14 = v0;
  v14[1] = sub_3FD60;
  v16 = v0[9];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 3, v16, sub_45A0C, v11, v15);
}

uint64_t sub_3FD60()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_3FF68;
  }

  else
  {
    v5 = sub_3FEF4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_3FEF4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_3FF68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_3FFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_E7724();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_40098, 0, 0);
}

uint64_t sub_40098()
{
  if (qword_12CAF0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v20 = v0[7];
  v21 = v0[9];
  v2 = v0[4];
  v19 = v0[5];
  v3 = objc_allocWithZone(NSFetchRequest);
  v4 = sub_E7024();
  v5 = [v3 initWithEntityName:v4];
  v0[10] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_E9EE0;
  sub_4ABC(0, &unk_12DB60, NSManagedObject_ptr);
  *(v6 + 32) = sub_E7544();
  v7 = sub_45C34(&unk_12E1C0, type metadata accessor for ShowEntity.SingleShowWidgetShowQuery, &protocol conformance descriptor for ShowEntity.SingleShowWidgetShowQuery);
  v8 = *(v7 + 40);
  v9 = type metadata accessor for ShowEntity.SingleShowWidgetShowQuery(0);
  *(v6 + 40) = v8(v2, v9, v7);
  sub_4ABC(0, &unk_12DB30, NSPredicate_ptr);
  isa = sub_E71E4().super.isa;

  v11 = [objc_opt_self() orPredicateWithSubpredicates:isa];

  [v5 setPredicate:v11];
  v12 = swift_allocObject();
  v0[11] = v12;
  *(v12 + 16) = v19;
  *(v12 + 24) = v5;
  (*(v1 + 104))(v21, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v20);
  v13 = v19;
  v14 = v5;
  v15 = swift_task_alloc();
  v0[12] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DD88, &qword_EA740);
  *v15 = v0;
  v15[1] = sub_403A4;
  v17 = v0[9];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v17, sub_45A38, v12, v16);
}

uint64_t sub_403A4()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_3FF68;
  }

  else
  {
    v5 = sub_40538;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_40538()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

void *sub_405AC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for StationEntity(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4ABC(0, &unk_12E190, MTPlaylist_ptr);
  v8 = a1;
  v9 = sub_E7734();
  if (v2)
  {
    return v8;
  }

  v10 = v9;
  v17[1] = 0;
  if (!(v9 >> 62))
  {
    v11 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v11 = sub_E7AC4();
  if (!v11)
  {
LABEL_14:

    return _swiftEmptyArrayStorage;
  }

LABEL_4:
  v18 = _swiftEmptyArrayStorage;
  result = sub_15DDC(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v8 = v18;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = sub_E79B4();
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      StationEntity.init(model:)(v14, v7);
      v18 = v8;
      v16 = v8[2];
      v15 = v8[3];
      if (v16 >= v15 >> 1)
      {
        sub_15DDC((v15 > 1), v16 + 1, 1);
        v8 = v18;
      }

      ++v13;
      v8[2] = v16 + 1;
      sub_45B6C(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, type metadata accessor for StationEntity);
    }

    while (v11 != v13);

    return v8;
  }

  __break(1u);
  return result;
}

void *sub_407D0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowEntity(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4ABC(0, &qword_12E1D0, MTPodcast_ptr);
  v8 = a1;
  v9 = sub_E7734();
  if (v2)
  {
    return v8;
  }

  v10 = v9;
  v17[1] = 0;
  if (!(v9 >> 62))
  {
    v11 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v11 = sub_E7AC4();
  if (!v11)
  {
LABEL_14:

    return _swiftEmptyArrayStorage;
  }

LABEL_4:
  v18 = _swiftEmptyArrayStorage;
  result = sub_15E84(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v8 = v18;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = sub_E79B4();
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      ShowEntity.init(model:)(v14, v7);
      v18 = v8;
      v16 = v8[2];
      v15 = v8[3];
      if (v16 >= v15 >> 1)
      {
        sub_15E84((v15 > 1), v16 + 1, 1);
        v8 = v18;
      }

      ++v13;
      v8[2] = v16 + 1;
      sub_45B6C(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, type metadata accessor for ShowEntity);
    }

    while (v11 != v13);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t StationEntity.StationEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  result = sub_E5204();
  *a1 = result;
  return result;
}

uint64_t StationEntity.StationEntityQuery.allStationEntities(in:)(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_E7724();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_40B5C, 0, 0);
}

uint64_t sub_40B5C()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_allocObject();
  v0[7] = v5;
  *(v5 + 16) = v4;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v6 = v4;
  v7 = swift_task_alloc();
  v0[8] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E0B0, &qword_EA2E0);
  *v7 = v0;
  v7[1] = sub_40C90;
  v9 = v0[6];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v9, sub_26534, v5, v8);
}

uint64_t sub_40C90()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 72) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_40E90;
  }

  else
  {
    v5 = sub_40E24;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_40E24()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_40E90()
{

  v1 = *(v0 + 8);

  return v1();
}

void (*StationEntity.StationEntityQuery.objectGraph.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E51C4();
  return sub_1C5B0;
}

id StationEntity.StationEntityQuery.predicate(forUuids:)(uint64_t a1)
{
  v1 = objc_opt_self();
  isa = sub_E73A4().super.isa;
  v3 = [v1 predicateForStationsWithUUIDs:isa];

  return v3;
}

uint64_t StationEntity.StationEntityQuery.suggestedEntities()()
{
  v2 = sub_E7724();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_E7324();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v0;
  v1[10] = v4;
  v1[11] = v5;

  return _swift_task_switch(sub_410F8, 0, 0);
}

uint64_t sub_410F8()
{
  sub_E51D4();
  v0[12] = v0[3];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_411C4;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_411C4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_325F8;
  }

  else
  {

    v2 = sub_412E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_412E0()
{
  v1 = v0[14];
  swift_getObjectType();
  sub_6C94();
  v2 = sub_E7764();
  v0[15] = v2;
  if (v1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    swift_unknownObjectRelease();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v2;
    v6 = v0[7];
    v7 = v0[5];
    v8 = v0[6];
    (*(v0[9] + 8))(v0[10], v0[8]);
    swift_unknownObjectRelease();
    v9 = swift_allocObject();
    v0[16] = v9;
    *(v9 + 16) = v5;
    (*(v8 + 104))(v6, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v7);
    v5;
    v10 = swift_task_alloc();
    v0[17] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E0B0, &qword_EA2E0);
    *v10 = v0;
    v10[1] = sub_414E0;
    v12 = v0[7];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 4, v12, sub_45C84, v9, v11);
  }
}

uint64_t sub_414E0()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  (*(v2[6] + 8))(v2[7], v2[5]);

  if (v0)
  {
    v3 = sub_32670;
  }

  else
  {
    v3 = sub_41664;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_41664()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_416F0(void *a1@<X8>)
{
  v21 = a1;
  v2 = type metadata accessor for StationEntity(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPlaylistEntityName];
  v7 = [objc_opt_self() predicateForIsHidden:0];
  [v6 setPredicate:v7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_E9F00;
  *(v8 + 32) = [objc_allocWithZone(NSSortDescriptor) initWithKey:kPlaylistTitle ascending:1];
  sub_4ABC(0, &unk_12DB50, NSSortDescriptor_ptr);
  isa = sub_E71E4().super.isa;

  [v6 setSortDescriptors:isa];

  sub_4ABC(0, &unk_12E190, MTPlaylist_ptr);
  v10 = sub_E7734();
  if (v1)
  {

    return;
  }

  v11 = v10;
  if (!(v10 >> 62))
  {
    v12 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
    v13 = v21;
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_15:

    *v13 = _swiftEmptyArrayStorage;
    return;
  }

  v12 = sub_E7AC4();
  v13 = v21;
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_5:
  v19[1] = 0;
  v20 = v6;
  v22 = _swiftEmptyArrayStorage;
  sub_15DDC(0, v12 & ~(v12 >> 63), 0);
  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    v14 = 0;
    v15 = v22;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = sub_E79B4();
      }

      else
      {
        v16 = *(v11 + 8 * v14 + 32);
      }

      StationEntity.init(model:)(v16, v5);
      v22 = v15;
      v18 = v15[2];
      v17 = v15[3];
      if (v18 >= v17 >> 1)
      {
        sub_15DDC((v17 > 1), v18 + 1, 1);
        v15 = v22;
      }

      ++v14;
      v15[2] = v18 + 1;
      sub_45B6C(v5, v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18, type metadata accessor for StationEntity);
    }

    while (v12 != v14);

    *v21 = v15;
  }
}

uint64_t sub_41A4C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t StationEntity.StationEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a1;
  v3[10] = a2;
  v3[11] = *(type metadata accessor for StationEntity(0) - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[8] = *v2;
  v4 = swift_task_alloc();
  v3[14] = v4;
  *v4 = v3;
  v4[1] = sub_41B84;

  return StationEntity.StationEntityQuery.suggestedEntities()();
}

uint64_t sub_41B84(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_41F44;
  }

  else
  {
    v4 = sub_41C98;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_41C98()
{
  v20 = v0;
  v1 = v0[15];
  v18 = *(v1 + 16);
  if (v18)
  {
    v2 = 0;
    v17 = v0[11];
    v3 = _swiftEmptyArrayStorage;
    while (v2 < *(v1 + 16))
    {
      v4 = v0[9];
      v5 = v0[10];
      v6 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v7 = *(v17 + 72);
      sub_45A9C(v0[15] + v6 + v7 * v2, v0[13], type metadata accessor for StationEntity);
      sub_E53E4();
      v8 = v0[3];
      v0[4] = v0[2];
      v0[5] = v8;
      v0[6] = v4;
      v0[7] = v5;
      sub_26028();
      v9 = sub_E7844();

      v10 = v0[13];
      if (v9)
      {
        sub_45B6C(v10, v0[12], type metadata accessor for StationEntity);
        v19 = v3;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_15DDC(0, v3[2] + 1, 1);
          v3 = v19;
        }

        v12 = v3[2];
        v11 = v3[3];
        if (v12 >= v11 >> 1)
        {
          sub_15DDC((v11 > 1), v12 + 1, 1);
          v3 = v19;
        }

        v13 = v0[12];
        v3[2] = v12 + 1;
        sub_45B6C(v13, v3 + v6 + v12 * v7, type metadata accessor for StationEntity);
      }

      else
      {
        sub_45BD4(v10, type metadata accessor for StationEntity);
      }

      if (v18 == ++v2)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
LABEL_14:
    v14 = v0[16];

    v19 = v3;

    sub_43068(&v19);
    if (v14)
    {
    }

    else
    {

      v15 = v19;

      v16 = v0[1];

      v16(v15);
    }
  }
}

uint64_t sub_41F44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_41FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1D7E4;

  return StationEntity.StationEntityQuery.entities(matching:)(a2, a3);
}

uint64_t sub_42058(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E340;

  return sub_3E1E8(a1, v4);
}

uint64_t sub_4210C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1E338;

  return StationEntity.StationEntityQuery.suggestedEntities()();
}

uint64_t sub_4219C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_4315C();
  *v5 = v2;
  v5[1] = sub_588C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t *sub_422A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_424F4((&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_42464(v11, v6, a2, a1);
  }

  return v9;
}

unint64_t *sub_42464(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_424F4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_424F4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_E7CC4();

      sub_E7124();
      v26 = sub_E7CF4();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_E7BD4() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_428D0(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_E7CC4();

      sub_E7124();
      v39 = sub_E7CF4();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_E7BD4() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_428D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E170, &qword_EAE70);
  result = sub_E7964();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_E7CC4();

    sub_E7124();
    result = sub_E7CF4();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_42AF4(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_E7CB4();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_C15CC();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_42D20(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_42BE4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_E7CC4();
  sub_E7124();
  v6 = sub_E7CF4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_E7BD4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_C1470();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_42EA4(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_42D20(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_E7894();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_E7CB4() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
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

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_42EA4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_E7894();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_E7CC4();

        sub_E7124();
        v10 = sub_E7CF4();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

Swift::Int sub_43068(uint64_t *a1)
{
  v2 = *(type metadata accessor for StationEntity(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_CA31C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_43450(v6);
  *a1 = v3;
  return result;
}

unint64_t sub_4315C()
{
  result = qword_12E0F8;
  if (!qword_12E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E0F8);
  }

  return result;
}

unint64_t sub_431B4()
{
  result = qword_12E100;
  if (!qword_12E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E100);
  }

  return result;
}

unint64_t sub_4320C()
{
  result = qword_12E108;
  if (!qword_12E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E108);
  }

  return result;
}

unint64_t sub_432AC()
{
  result = qword_12E110;
  if (!qword_12E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E110);
  }

  return result;
}

unint64_t sub_4334C()
{
  result = qword_12E120;
  if (!qword_12E120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_12E0B0, &qword_EA2E0);
    sub_45C34(&qword_12E118, type metadata accessor for StationEntity, &protocol conformance descriptor for StationEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E120);
  }

  return result;
}

void *sub_43400@<X0>(void *a1@<X8>)
{
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

Swift::Int sub_43450(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_E7BA4(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for StationEntity(0);
        v6 = sub_E7264();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for StationEntity(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_43818(v8, v9, a1, v4);
      v6[2] = 0;
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
    return sub_4357C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_4357C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for StationEntity(0);
  v8 = __chkstk_darwin(v35);
  v34 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v25 - v11;
  result = __chkstk_darwin(v10);
  v16 = &v25 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v32 = -v18;
    v33 = v17;
    v20 = a1 - a3;
    v26 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v30 = v19;
    v31 = a3;
    v28 = v21;
    v29 = v20;
    while (1)
    {
      sub_45A9C(v21, v16, type metadata accessor for StationEntity);
      sub_45A9C(v19, v12, type metadata accessor for StationEntity);
      sub_E53E4();
      sub_E53E4();
      sub_26028();
      v22 = sub_E7834();

      sub_45BD4(v12, type metadata accessor for StationEntity);
      result = sub_45BD4(v16, type metadata accessor for StationEntity);
      if (v22 != -1)
      {
LABEL_4:
        a3 = v31 + 1;
        v19 = v30 + v26;
        v20 = v29 - 1;
        v21 = v28 + v26;
        if (v31 + 1 == v27)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v23 = v34;
      sub_45B6C(v21, v34, type metadata accessor for StationEntity);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_45B6C(v23, v19, type metadata accessor for StationEntity);
      v19 += v32;
      v21 += v32;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_43818(unint64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v5 = v4;
  v105 = a1;
  v119 = type metadata accessor for StationEntity(0);
  v8 = *(v119 - 8);
  v9 = __chkstk_darwin(v119);
  v107 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v118 = &v101 - v12;
  v13 = __chkstk_darwin(v11);
  v121 = &v101 - v14;
  result = __chkstk_darwin(v13);
  v120 = &v101 - v16;
  v17 = a3[1];
  if (v17 >= 1)
  {
    v102 = a4;
    v18 = 0;
    v19 = _swiftEmptyArrayStorage;
    v103 = a3;
    v104 = v8;
    while (1)
    {
      v20 = v18 + 1;
      v113 = v19;
      if (v18 + 1 >= v17)
      {
        v28 = v18 + 1;
      }

      else
      {
        v115 = v17;
        v21 = v18;
        v106 = v18;
        v22 = *(v8 + 72);
        a4 = *a3 + v22 * v20;
        v117 = *a3;
        v23 = v117;
        v24 = v120;
        sub_45A9C(a4, v120, type metadata accessor for StationEntity);
        v25 = v121;
        sub_45A9C(v23 + v22 * v21, v121, type metadata accessor for StationEntity);
        sub_E53E4();
        v116 = v122;
        sub_E53E4();
        v111 = sub_26028();
        v112 = sub_E7834();

        sub_45BD4(v25, type metadata accessor for StationEntity);
        result = sub_45BD4(v24, type metadata accessor for StationEntity);
        v26 = v106 + 2;
        v116 = v22;
        v27 = v117 + v22 * (v106 + 2);
        while (1)
        {
          v28 = v115;
          if (v115 == v26)
          {
            break;
          }

          LODWORD(v117) = v112 == -1;
          v29 = v120;
          sub_45A9C(v27, v120, type metadata accessor for StationEntity);
          v114 = v5;
          v30 = v121;
          sub_45A9C(a4, v121, type metadata accessor for StationEntity);
          sub_E53E4();
          sub_E53E4();
          v31 = sub_E7834();

          v32 = v30;
          v5 = v114;
          sub_45BD4(v32, type metadata accessor for StationEntity);
          result = sub_45BD4(v29, type metadata accessor for StationEntity);
          v19 = v113;
          ++v26;
          v27 += v116;
          a4 += v116;
          if (((v117 ^ (v31 != -1)) & 1) == 0)
          {
            v28 = v26 - 1;
            break;
          }
        }

        a3 = v103;
        v8 = v104;
        v18 = v106;
        if (v112 == -1)
        {
          if (v28 < v106)
          {
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
            return result;
          }

          if (v106 < v28)
          {
            v33 = v116 * (v28 - 1);
            v34 = v28 * v116;
            v115 = v28;
            v35 = v106;
            v36 = v106 * v116;
            do
            {
              if (v35 != --v28)
              {
                v37 = *a3;
                if (!*a3)
                {
                  goto LABEL_130;
                }

                a4 = v37 + v36;
                sub_45B6C(v37 + v36, v107, type metadata accessor for StationEntity);
                if (v36 < v33 || a4 >= (v37 + v34))
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v36 != v33)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_45B6C(v107, v37 + v33, type metadata accessor for StationEntity);
                v19 = v113;
              }

              ++v35;
              v33 -= v116;
              v34 -= v116;
              v36 += v116;
            }

            while (v35 < v28);
            v8 = v104;
            v18 = v106;
            v28 = v115;
          }
        }
      }

      v38 = a3[1];
      if (v28 >= v38)
      {
        goto LABEL_32;
      }

      if (__OFSUB__(v28, v18))
      {
        goto LABEL_122;
      }

      if (v28 - v18 >= v102)
      {
        goto LABEL_32;
      }

      if (__OFADD__(v18, v102))
      {
        goto LABEL_123;
      }

      if (v18 + v102 >= v38)
      {
        a4 = a3[1];
      }

      else
      {
        a4 = v18 + v102;
      }

      if (a4 < v18)
      {
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      if (v28 == a4)
      {
LABEL_32:
        a4 = v28;
        if (v28 < v18)
        {
          goto LABEL_121;
        }
      }

      else
      {
        v114 = v5;
        v85 = *a3;
        v86 = *(v8 + 72);
        v87 = *a3 + v86 * (v28 - 1);
        v116 = -v86;
        v117 = v85;
        v106 = v18;
        v88 = v18 - v28;
        v108 = v86;
        v109 = a4;
        v89 = v85 + v28 * v86;
        do
        {
          v115 = v28;
          v110 = v89;
          v111 = v88;
          v90 = v89;
          v112 = v87;
          v91 = v87;
          do
          {
            v92 = v120;
            sub_45A9C(v90, v120, type metadata accessor for StationEntity);
            v93 = v121;
            sub_45A9C(v91, v121, type metadata accessor for StationEntity);
            sub_E53E4();
            sub_E53E4();
            sub_26028();
            v94 = sub_E7834();

            sub_45BD4(v93, type metadata accessor for StationEntity);
            result = sub_45BD4(v92, type metadata accessor for StationEntity);
            if (v94 != -1)
            {
              break;
            }

            if (!v117)
            {
              goto LABEL_127;
            }

            v95 = v118;
            sub_45B6C(v90, v118, type metadata accessor for StationEntity);
            swift_arrayInitWithTakeFrontToBack();
            sub_45B6C(v95, v91, type metadata accessor for StationEntity);
            v91 += v116;
            v90 += v116;
          }

          while (!__CFADD__(v88++, 1));
          v28 = v115 + 1;
          a4 = v109;
          v87 = v112 + v108;
          v88 = v111 - 1;
          v89 = v110 + v108;
        }

        while (v115 + 1 != v109);
        v19 = v113;
        v5 = v114;
        a3 = v103;
        v8 = v104;
        v18 = v106;
        if (v109 < v106)
        {
          goto LABEL_121;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v109 = a4;
      if ((result & 1) == 0)
      {
        result = sub_23350(0, *(v19 + 2) + 1, 1, v19);
        v19 = result;
      }

      a4 = *(v19 + 2);
      v39 = *(v19 + 3);
      v40 = a4 + 1;
      if (a4 >= v39 >> 1)
      {
        result = sub_23350((v39 > 1), a4 + 1, 1, v19);
        v19 = result;
      }

      *(v19 + 2) = v40;
      v41 = &v19[16 * a4];
      v42 = v109;
      *(v41 + 4) = v18;
      *(v41 + 5) = v42;
      v43 = *v105;
      if (!*v105)
      {
        goto LABEL_131;
      }

      if (a4)
      {
        while (1)
        {
          a4 = v40 - 1;
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v44 = *(v19 + 4);
            v45 = *(v19 + 5);
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
LABEL_52:
            if (v47)
            {
              goto LABEL_110;
            }

            v60 = &v19[16 * v40];
            v62 = *v60;
            v61 = *(v60 + 1);
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_113;
            }

            v66 = &v19[16 * a4 + 32];
            v68 = *v66;
            v67 = *(v66 + 1);
            v54 = __OFSUB__(v67, v68);
            v69 = v67 - v68;
            if (v54)
            {
              goto LABEL_116;
            }

            if (__OFADD__(v64, v69))
            {
              goto LABEL_117;
            }

            if (v64 + v69 >= v46)
            {
              if (v46 < v69)
              {
                a4 = v40 - 2;
              }

              goto LABEL_73;
            }

            goto LABEL_66;
          }

          v70 = &v19[16 * v40];
          v72 = *v70;
          v71 = *(v70 + 1);
          v54 = __OFSUB__(v71, v72);
          v64 = v71 - v72;
          v65 = v54;
LABEL_66:
          if (v65)
          {
            goto LABEL_112;
          }

          v73 = &v19[16 * a4];
          v75 = *(v73 + 4);
          v74 = *(v73 + 5);
          v54 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v54)
          {
            goto LABEL_115;
          }

          if (v76 < v64)
          {
            goto LABEL_3;
          }

LABEL_73:
          v81 = a4 - 1;
          if (a4 - 1 >= v40)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_128;
          }

          v82 = *&v19[16 * v81 + 32];
          v83 = *&v19[16 * a4 + 40];
          sub_4424C(*a3 + *(v8 + 72) * v82, *a3 + *(v8 + 72) * *&v19[16 * a4 + 32], *a3 + *(v8 + 72) * v83, v43);
          if (v5)
          {
          }

          if (v83 < v82)
          {
            goto LABEL_106;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_CA134(v19);
          }

          if (v81 >= *(v19 + 2))
          {
            goto LABEL_107;
          }

          v84 = &v19[16 * v81];
          *(v84 + 4) = v82;
          *(v84 + 5) = v83;
          v123 = v19;
          result = sub_CA0A8(a4);
          v19 = v123;
          v40 = *(v123 + 2);
          if (v40 <= 1)
          {
            goto LABEL_3;
          }
        }

        v48 = &v19[16 * v40 + 32];
        v49 = *(v48 - 64);
        v50 = *(v48 - 56);
        v54 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        if (v54)
        {
          goto LABEL_108;
        }

        v53 = *(v48 - 48);
        v52 = *(v48 - 40);
        v54 = __OFSUB__(v52, v53);
        v46 = v52 - v53;
        v47 = v54;
        if (v54)
        {
          goto LABEL_109;
        }

        v55 = &v19[16 * v40];
        v57 = *v55;
        v56 = *(v55 + 1);
        v54 = __OFSUB__(v56, v57);
        v58 = v56 - v57;
        if (v54)
        {
          goto LABEL_111;
        }

        v54 = __OFADD__(v46, v58);
        v59 = v46 + v58;
        if (v54)
        {
          goto LABEL_114;
        }

        if (v59 >= v51)
        {
          v77 = &v19[16 * a4 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v54 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v54)
          {
            goto LABEL_118;
          }

          if (v46 < v80)
          {
            a4 = v40 - 2;
          }

          goto LABEL_73;
        }

        goto LABEL_52;
      }

LABEL_3:
      v17 = a3[1];
      v18 = v109;
      if (v109 >= v17)
      {
        goto LABEL_94;
      }
    }
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_94:
  a4 = *v105;
  if (!*v105)
  {
    goto LABEL_132;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_125:
    result = sub_CA134(v19);
    v19 = result;
  }

  v123 = v19;
  v97 = *(v19 + 2);
  if (v97 >= 2)
  {
    while (*a3)
    {
      v98 = *&v19[16 * v97];
      v99 = *&v19[16 * v97 + 24];
      sub_4424C(*a3 + *(v8 + 72) * v98, *a3 + *(v8 + 72) * *&v19[16 * v97 + 16], *a3 + *(v8 + 72) * v99, a4);
      if (v5)
      {
      }

      if (v99 < v98)
      {
        goto LABEL_119;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_CA134(v19);
      }

      if (v97 - 2 >= *(v19 + 2))
      {
        goto LABEL_120;
      }

      v100 = &v19[16 * v97];
      *v100 = v98;
      *(v100 + 1) = v99;
      v123 = v19;
      result = sub_CA0A8(v97 - 1);
      v19 = v123;
      v97 = *(v123 + 2);
      if (v97 <= 1)
      {
      }
    }

    goto LABEL_129;
  }
}

uint64_t sub_4424C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = a3;
  v40 = type metadata accessor for StationEntity(0);
  v7 = __chkstk_darwin(v40);
  v42 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v41 = &v34 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_60;
  }

  v13 = v44 - a2;
  if (v44 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v14 = (a2 - a1) / v12;
  v47 = a1;
  v46 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v16;
    if (v16 >= 1)
    {
      v24 = -v12;
      v25 = v23;
      v43 = a1;
      v36 = a4;
      v37 = -v12;
      while (2)
      {
        while (1)
        {
          v34 = v23;
          v38 = a2;
          v39 = a2 + v24;
          while (1)
          {
            v27 = v44;
            if (a2 <= a1)
            {
              v47 = a2;
              v45 = v34;
              goto LABEL_58;
            }

            v35 = v23;
            v44 += v24;
            v28 = v25 + v24;
            v29 = v41;
            sub_45A9C(v28, v41, type metadata accessor for StationEntity);
            v30 = v42;
            sub_45A9C(v39, v42, type metadata accessor for StationEntity);
            sub_E53E4();
            sub_E53E4();
            sub_26028();
            v31 = sub_E7834();

            sub_45BD4(v30, type metadata accessor for StationEntity);
            sub_45BD4(v29, type metadata accessor for StationEntity);
            if (v31 == -1)
            {
              break;
            }

            v23 = v28;
            v32 = v36;
            if (v27 < v25 || v44 >= v25)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v43;
            }

            else
            {
              a1 = v43;
              if (v27 != v25)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v25 = v28;
            v26 = v28 > v32;
            v24 = v37;
            a2 = v38;
            if (!v26)
            {
              goto LABEL_56;
            }
          }

          v33 = v36;
          if (v27 < v38 || v44 >= v38)
          {
            break;
          }

          a2 = v39;
          a1 = v43;
          v23 = v35;
          v24 = v37;
          if (v27 != v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v25 <= v33)
          {
            goto LABEL_56;
          }
        }

        a2 = v39;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v43;
        v23 = v35;
        v24 = v37;
        if (v25 > v33)
        {
          continue;
        }

        break;
      }
    }

LABEL_56:
    v47 = a2;
    v45 = v23;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v39 = a4 + v15;
    v45 = a4 + v15;
    if (v15 >= 1 && a2 < v44)
    {
      do
      {
        v43 = a1;
        v18 = v41;
        sub_45A9C(a2, v41, type metadata accessor for StationEntity);
        v19 = v42;
        sub_45A9C(a4, v42, type metadata accessor for StationEntity);
        v20 = a4;
        sub_E53E4();
        sub_E53E4();
        sub_26028();
        v21 = sub_E7834();

        sub_45BD4(v19, type metadata accessor for StationEntity);
        sub_45BD4(v18, type metadata accessor for StationEntity);
        if (v21 == -1)
        {
          v22 = v43;
          a4 = v20;
          if (v43 < a2 || v43 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v43 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v12;
          goto LABEL_33;
        }

        a4 = v20 + v12;
        v22 = v43;
        if (v43 < v20 || v43 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v43 != v20)
        {
          swift_arrayInitWithTakeBackToFront();
          v46 = v20 + v12;
          goto LABEL_33;
        }

        v46 = v20 + v12;
LABEL_33:
        a1 = v22 + v12;
        v47 = a1;
      }

      while (a4 < v39 && a2 < v44);
    }
  }

LABEL_58:
  sub_4480C(&v47, &v46, &v45, type metadata accessor for StationEntity);
  return 1;
}

uint64_t sub_4480C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_448F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_E6974();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[3] = type metadata accessor for ChannelEntity(0);
  v31[4] = sub_45C34(&qword_12E200, type metadata accessor for ChannelEntity, &protocol conformance descriptor for ChannelEntity);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  sub_45A9C(a1, boxed_opaque_existential_1, type metadata accessor for ChannelEntity);
  v30 = &_swiftEmptySetSingleton;
  sub_48FC(v31, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA58, &qword_E9BE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E150, &qword_E9BF0);
  if (swift_dynamicCast())
  {
    sub_4524(&v25, v29);
    v28[0] = a2;
    v9 = sub_103AC(v29);
    sub_3D918(v9);
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    sub_110AC(&v25, &qword_12DA60, &qword_E9BF8);
  }

  sub_48FC(v31, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E160, &qword_E9C00);
  if (swift_dynamicCast())
  {
    sub_4524(&v25, v29);
    v28[0] = a2;
    v10 = sub_10640(v29);
    sub_3D918(v10);
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    sub_110AC(&v25, &qword_12DA68, &qword_E9C08);
  }

  v11 = v30;

  v12 = sub_422A0(v11, a2);

  v13 = sub_3DA1C(v12);
  v15 = v14;

  if (!v15)
  {
    sub_E6914();
    sub_48FC(v31, v29);
    v16 = sub_E6964();
    v17 = sub_E74B4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28[0] = v19;
      *v18 = 136315138;
      v20 = __swift_project_boxed_opaque_existential_1(v29, v29[3]);
      v21 = *v20;
      v22 = v20[1];

      __swift_destroy_boxed_opaque_existential_1(v29);
      v23 = sub_23E64(v21, v22, v28);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_0, v16, v17, "Unable to find original identifier for entity, this may result in the entity being discarded: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);

      (*(v5 + 8))(v7, v4);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
      __swift_destroy_boxed_opaque_existential_1(v29);
    }

    v13 = *boxed_opaque_existential_1;
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v13;
}

uint64_t sub_44D00(uint64_t a1, uint64_t a2)
{
  v4 = sub_E6974();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[3] = type metadata accessor for StationEntity(0);
  v31[4] = sub_45C34(&unk_12E140, type metadata accessor for StationEntity, &protocol conformance descriptor for StationEntity);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  sub_45A9C(a1, boxed_opaque_existential_1, type metadata accessor for StationEntity);
  v30 = &_swiftEmptySetSingleton;
  sub_48FC(v31, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA58, &qword_E9BE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E150, &qword_E9BF0);
  if (swift_dynamicCast())
  {
    sub_4524(&v25, v29);
    v28[0] = a2;
    v9 = sub_103AC(v29);
    sub_3D918(v9);
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    sub_110AC(&v25, &qword_12DA60, &qword_E9BF8);
  }

  sub_48FC(v31, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E160, &qword_E9C00);
  if (swift_dynamicCast())
  {
    sub_4524(&v25, v29);
    v28[0] = a2;
    v10 = sub_10640(v29);
    sub_3D918(v10);
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    sub_110AC(&v25, &qword_12DA68, &qword_E9C08);
  }

  v11 = v30;

  v12 = sub_422A0(v11, a2);

  v13 = sub_3DA1C(v12);
  v15 = v14;

  if (!v15)
  {
    sub_E6914();
    sub_48FC(v31, v29);
    v16 = sub_E6964();
    v17 = sub_E74B4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28[0] = v19;
      *v18 = 136315138;
      v20 = __swift_project_boxed_opaque_existential_1(v29, v29[3]);
      v21 = *v20;
      v22 = v20[1];

      __swift_destroy_boxed_opaque_existential_1(v29);
      v23 = sub_23E64(v21, v22, v28);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_0, v16, v17, "Unable to find original identifier for entity, this may result in the entity being discarded: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);

      (*(v5 + 8))(v7, v4);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
      __swift_destroy_boxed_opaque_existential_1(v29);
    }

    v13 = *boxed_opaque_existential_1;
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v13;
}

uint64_t sub_4510C(uint64_t a1, uint64_t a2)
{
  v4 = sub_E6974();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[3] = type metadata accessor for EpisodeEntity(0);
  v31[4] = sub_45C34(&qword_12E1E8, type metadata accessor for EpisodeEntity, &protocol conformance descriptor for EpisodeEntity);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  sub_45A9C(a1, boxed_opaque_existential_1, type metadata accessor for EpisodeEntity);
  v30 = &_swiftEmptySetSingleton;
  sub_48FC(v31, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA58, &qword_E9BE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E150, &qword_E9BF0);
  if (swift_dynamicCast())
  {
    sub_4524(&v25, v29);
    v28[0] = a2;
    v9 = sub_103AC(v29);
    sub_3D918(v9);
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    sub_110AC(&v25, &qword_12DA60, &qword_E9BF8);
  }

  sub_48FC(v31, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E160, &qword_E9C00);
  if (swift_dynamicCast())
  {
    sub_4524(&v25, v29);
    v28[0] = a2;
    v10 = sub_10640(v29);
    sub_3D918(v10);
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    sub_110AC(&v25, &qword_12DA68, &qword_E9C08);
  }

  v11 = v30;

  v12 = sub_422A0(v11, a2);

  v13 = sub_3DA1C(v12);
  v15 = v14;

  if (!v15)
  {
    sub_E6914();
    sub_48FC(v31, v29);
    v16 = sub_E6964();
    v17 = sub_E74B4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28[0] = v19;
      *v18 = 136315138;
      v20 = __swift_project_boxed_opaque_existential_1(v29, v29[3]);
      v21 = *v20;
      v22 = v20[1];

      __swift_destroy_boxed_opaque_existential_1(v29);
      v23 = sub_23E64(v21, v22, v28);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_0, v16, v17, "Unable to find original identifier for entity, this may result in the entity being discarded: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);

      (*(v5 + 8))(v7, v4);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
      __swift_destroy_boxed_opaque_existential_1(v29);
    }

    v13 = *boxed_opaque_existential_1;
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v13;
}

uint64_t sub_45518(uint64_t a1, uint64_t a2)
{
  v4 = sub_E6974();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[3] = type metadata accessor for ShowEntity(0);
  v31[4] = sub_45C34(&unk_12E1B0, type metadata accessor for ShowEntity, &protocol conformance descriptor for ShowEntity);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  sub_45A9C(a1, boxed_opaque_existential_1, type metadata accessor for ShowEntity);
  v30 = &_swiftEmptySetSingleton;
  sub_48FC(v31, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA58, &qword_E9BE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E150, &qword_E9BF0);
  if (swift_dynamicCast())
  {
    sub_4524(&v25, v29);
    v28[0] = a2;
    v9 = sub_103AC(v29);
    sub_3D918(v9);
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    sub_110AC(&v25, &qword_12DA60, &qword_E9BF8);
  }

  sub_48FC(v31, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E160, &qword_E9C00);
  if (swift_dynamicCast())
  {
    sub_4524(&v25, v29);
    v28[0] = a2;
    v10 = sub_10640(v29);
    sub_3D918(v10);
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    sub_110AC(&v25, &qword_12DA68, &qword_E9C08);
  }

  v11 = v30;

  v12 = sub_422A0(v11, a2);

  v13 = sub_3DA1C(v12);
  v15 = v14;

  if (!v15)
  {
    sub_E6914();
    sub_48FC(v31, v29);
    v16 = sub_E6964();
    v17 = sub_E74B4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28[0] = v19;
      *v18 = 136315138;
      v20 = __swift_project_boxed_opaque_existential_1(v29, v29[3]);
      v21 = *v20;
      v22 = v20[1];

      __swift_destroy_boxed_opaque_existential_1(v29);
      v23 = sub_23E64(v21, v22, v28);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_0, v16, v17, "Unable to find original identifier for entity, this may result in the entity being discarded: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);

      (*(v5 + 8))(v7, v4);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
      __swift_destroy_boxed_opaque_existential_1(v29);
    }

    v13 = *boxed_opaque_existential_1;
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v13;
}

uint64_t sub_45924(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_45978()
{
  result = qword_12E180;
  if (!qword_12E180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E180);
  }

  return result;
}

uint64_t sub_459CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_45A64@<X0>(uint64_t (*a1)(void, void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1(*(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_45A9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_45B04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_45B6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_45BD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_45C34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_45CA8()
{
  result = qword_12E208;
  if (!qword_12E208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E208);
  }

  return result;
}

unint64_t sub_45D48()
{
  result = qword_12E210;
  if (!qword_12E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E210);
  }

  return result;
}

unint64_t sub_45DA0()
{
  result = qword_12E218;
  if (!qword_12E218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E218);
  }

  return result;
}

unint64_t sub_45E4C()
{
  result = qword_12E228;
  if (!qword_12E228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E228);
  }

  return result;
}

uint64_t sub_45ED4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WarmupAudioQueueResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_45F1C()
{
  result = qword_12E238;
  if (!qword_12E238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E240, qword_EAFA0);
    sub_45ED4(&qword_12E230, &unk_ED830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E238);
  }

  return result;
}

uint64_t sub_45FBC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_45CA8();
  *v5 = v2;
  v5[1] = sub_5E10;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t LibraryList.init(listType:)@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v10 = sub_E5944();
  __chkstk_darwin(v10 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC40, &qword_EA2E8);
  sub_E5914();
  sub_25F18();
  *a2 = sub_E5414();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC50, &qword_EA2F0);
  sub_E5914();
  sub_25F6C();
  a2[1] = sub_E5434();
  v13[15] = a1;
  sub_E53F4();
  v11 = type metadata accessor for StationEntity(0);
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_47200(v9, v7);
  sub_E53F4();
  return sub_47270(v9);
}

uint64_t LibraryList.init(station:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  v10 = sub_E5944();
  __chkstk_darwin(v10 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC40, &qword_EA2E8);
  sub_E5914();
  sub_25F18();
  *a2 = sub_E5414();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC50, &qword_EA2F0);
  sub_E5914();
  sub_25F6C();
  a2[1] = sub_E5434();
  v12[15] = 3;
  sub_E53F4();
  sub_47200(a1, v9);
  sub_47200(v9, v7);
  sub_E53F4();
  sub_47270(a1);
  return sub_47270(v9);
}

uint64_t LibraryList.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_E7014();
  __chkstk_darwin(v1 - 8);
  v26[1] = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0);
  __chkstk_darwin(v3 - 8);
  v5 = v26 - v4;
  v6 = type metadata accessor for StationEntity(0);
  v27 = *(v6 - 8);
  __chkstk_darwin(v6);
  v28 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_E5CE4();
  v30 = *(v8 - 8);
  v31 = v8;
  __chkstk_darwin(v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_E5D04();
  v11 = *(v29 - 8);
  __chkstk_darwin(v29);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E260, &unk_EC260);
  __chkstk_darwin(v14 - 8);
  v33 = v26 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v16 - 8);
  v32 = v26 - v17;
  v18 = sub_E5944();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  sub_E53E4();
  if (LOBYTE(v35._countAndFlagsBits) <= 1u)
  {
    if (LOBYTE(v35._countAndFlagsBits))
    {
      sub_E5914();
      (*(v19 + 56))(v32, 1, 1, v18);
      sub_E5C94();
    }

    else
    {
      sub_E5914();
      (*(v19 + 56))(v32, 1, 1, v18);
      sub_E5CC4();
    }

    goto LABEL_7;
  }

  if (LOBYTE(v35._countAndFlagsBits) == 2)
  {
    sub_E5914();
    (*(v19 + 56))(v32, 1, 1, v18);
    sub_E5CA4();
LABEL_7:
    sub_E5CF4();
    (*(v11 + 8))(v13, v29);
    sub_E5CD4();
    (*(v30 + 8))(v10, v31);
    v20 = v33;
    sub_E5654();
    v21 = sub_E5684();
    (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
    return sub_E56A4();
  }

  sub_E53E4();
  if ((*(v27 + 48))(v5, 1, v6) == 1)
  {
    sub_47270(v5);
    sub_E5914();
    (*(v19 + 56))(v32, 1, 1, v18);
    v23 = sub_E5684();
    (*(*(v23 - 8) + 56))(v33, 1, 1, v23);
    return sub_E56A4();
  }

  sub_472D8(v5, v28);
  sub_E7004();
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_E6FF4(v36);
  sub_E53E4();
  sub_E6FD4(v35);

  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  sub_E6FF4(v37);
  sub_E5924();
  (*(v19 + 56))(v32, 1, 1, v18);
  sub_E5CB4();
  sub_E5CF4();
  (*(v11 + 8))(v13, v29);
  sub_E5CD4();
  (*(v30 + 8))(v10, v31);
  v24 = v33;
  sub_E5654();
  v25 = sub_E5684();
  (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
  sub_E56A4();
  return sub_4733C(v28);
}

uint64_t sub_46C5C()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_12E248);
  __swift_project_value_buffer(v0, qword_12E248);
  return sub_E57B4();
}

uint64_t static LibraryList.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CA50 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12E248);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t LibraryList.id.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9[-v1];
  v3 = type metadata accessor for StationEntity(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_E53E4();
  if (v10 > 1u)
  {
    if (v10 == 2)
    {
      return 0x74736574616CLL;
    }

    else
    {
      sub_E53E4();
      if ((*(v4 + 48))(v2, 1, v3) == 1)
      {
        sub_47270(v2);
        return 0x4E574F4E4B4E55;
      }

      else
      {
        sub_472D8(v2, v6);
        v8 = *v6;

        sub_4733C(v6);
        return v8;
      }
    }
  }

  else if (v10)
  {
    return 0x64616F6C6E776F64;
  }

  else
  {
    return 0x6465766173;
  }
}

uint64_t sub_46F50(char *a1, uint64_t *a2)
{

  sub_E53F4();
}

void (*LibraryList.listType.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E53D4();
  return sub_3CA68;
}

uint64_t sub_47074(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_47200(a1, &v10 - v7);
  sub_47200(v8, v6);

  sub_E53F4();
  sub_47270(v8);
}

uint64_t LibraryList.station.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0);
  __chkstk_darwin(v2 - 8);
  sub_47200(a1, &v5 - v3);
  sub_E53F4();
  return sub_47270(a1);
}

uint64_t sub_47200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_47270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_472D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StationEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4733C(uint64_t a1)
{
  v2 = type metadata accessor for StationEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*LibraryList.station.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E53D4();
  return sub_33020;
}

uint64_t LibraryList.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_E5944();
  __chkstk_darwin(v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC40, &qword_EA2E8);
  sub_E5914();
  sub_25F18();
  *a1 = sub_E5414();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC50, &qword_EA2F0);
  sub_E5914();
  sub_25F6C();
  result = sub_E5434();
  a1[1] = result;
  return result;
}

unint64_t sub_47540()
{
  result = qword_12E270;
  if (!qword_12E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E270);
  }

  return result;
}

unint64_t sub_47598()
{
  result = qword_12E278;
  if (!qword_12E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E278);
  }

  return result;
}

unint64_t sub_475F0()
{
  result = qword_12E280;
  if (!qword_12E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E280);
  }

  return result;
}

unint64_t sub_47654()
{
  result = qword_12E288;
  if (!qword_12E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E288);
  }

  return result;
}

unint64_t sub_476AC()
{
  result = qword_12E290;
  if (!qword_12E290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E290);
  }

  return result;
}

unint64_t sub_47704()
{
  result = qword_12E298;
  if (!qword_12E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E298);
  }

  return result;
}

uint64_t sub_47764@<X0>(uint64_t *a1@<X8>)
{
  result = LibraryList.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_47790()
{
  result = qword_12E2A0;
  if (!qword_12E2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E2A8, &qword_EB1C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E2A0);
  }

  return result;
}

uint64_t sub_477F4(uint64_t a1)
{
  v2 = sub_26188();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_47844()
{
  result = qword_12E2B0;
  if (!qword_12E2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E2B0);
  }

  return result;
}

uint64_t sub_4789C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_588C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_47960(uint64_t a1)
{
  v2 = sub_47704();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_479B4@<X0>(_BYTE *a2@<X8>)
{
  result = sub_E53E4();
  *a2 = v4;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_47A28(uint64_t *a1, int a2)
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

uint64_t sub_47A70(uint64_t result, int a2, int a3)
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

uint64_t LibraryListType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6465766173;
  }

  if (a1 == 1)
  {
    return 0x64616F6C6E776F64;
  }

  return 0x74736574616CLL;
}

uint64_t sub_47B8C()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_12E2B8);
  __swift_project_value_buffer(v0, qword_12E2B8);
  return sub_E57B4();
}

uint64_t static LibraryListType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CA58 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12E2B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_47C98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E340, &qword_EB5B0);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_130860, &qword_EB5B8) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_EB2E0;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_E5644();
  v4[v1] = 1;
  sub_E5644();
  v4[2 * v1] = 2;
  sub_E5644();
  v5 = sub_AFF44(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_12E2D0 = v5;
  return result;
}

uint64_t static LibraryListType.caseDisplayRepresentations.getter()
{
  if (qword_12CA60 != -1)
  {
    swift_once();
  }
}

uint64_t sub_47E90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x64616F6C6E776F64;
  v4 = 0xEA00000000006465;
  if (v2 != 1)
  {
    v3 = 0x74736574616CLL;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6465766173;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x64616F6C6E776F64;
  v8 = 0xEA00000000006465;
  if (*a2 != 1)
  {
    v7 = 0x74736574616CLL;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6465766173;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_E7BD4();
  }

  return v11 & 1;
}

Swift::Int sub_47F90()
{
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_48030(uint64_t a1)
{
  sub_E7124();
}

Swift::Int sub_480BC(uint64_t a1)
{
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

unint64_t sub_48158@<X0>(Swift::String *a1@<X0>, PodcastsActions::LibraryListType_optional *a2@<X8>)
{
  result = _s15PodcastsActions15LibraryListTypeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_48188(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEA00000000006465;
  v5 = 0x64616F6C6E776F64;
  if (v2 != 1)
  {
    v5 = 0x74736574616CLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6465766173;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_481E4(uint64_t a1)
{
  v2 = sub_25F18();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_48230(uint64_t a1)
{
  v2 = sub_4861C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t EpisodeListSettings.init(libraryListType:)(char a1)
{
  sub_E6244();
  sub_E6254();
  return sub_E63D4();
}

double EpisodeListType.init(libraryListType:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = qword_EB5C0[a1];
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 64) = 10;
  return result;
}

unint64_t _s15PodcastsActions15LibraryListTypeO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_11F968;
  v6._object = a2;
  v4 = sub_E7B34(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_483A8()
{
  result = qword_12E2D8;
  if (!qword_12E2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E2D8);
  }

  return result;
}

unint64_t sub_48400()
{
  result = qword_12E2E0;
  if (!qword_12E2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E2E0);
  }

  return result;
}

unint64_t sub_48458()
{
  result = qword_12E2E8;
  if (!qword_12E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E2E8);
  }

  return result;
}

unint64_t sub_484B0()
{
  result = qword_12E2F0;
  if (!qword_12E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E2F0);
  }

  return result;
}

unint64_t sub_48514()
{
  result = qword_12E2F8;
  if (!qword_12E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E2F8);
  }

  return result;
}

unint64_t sub_4856C()
{
  result = qword_12E300;
  if (!qword_12E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E300);
  }

  return result;
}

unint64_t sub_485C4()
{
  result = qword_12E308;
  if (!qword_12E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E308);
  }

  return result;
}

unint64_t sub_4861C()
{
  result = qword_12E310;
  if (!qword_12E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E310);
  }

  return result;
}

unint64_t sub_486C4()
{
  result = qword_12E318;
  if (!qword_12E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E318);
  }

  return result;
}

unint64_t sub_4871C()
{
  result = qword_12E320;
  if (!qword_12E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E320);
  }

  return result;
}

unint64_t sub_48774()
{
  result = qword_12E328;
  if (!qword_12E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E328);
  }

  return result;
}

unint64_t sub_487CC()
{
  result = qword_12E330;
  if (!qword_12E330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E338, &qword_EB548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E330);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LibraryListType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryListType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t AppLocation.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x64616F6C6E776F64;
    v7 = 0x796C746E65636572;
    if (a1 != 10)
    {
      v7 = 0x6979616C50776F6ELL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x7972617262696CLL;
    v9 = 0x686372616573;
    if (a1 != 7)
    {
      v9 = 0x7472616843706F74;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1701670760;
    v2 = 0x736C656E6E616863;
    v3 = 0x6465766173;
    if (a1 != 4)
    {
      v3 = 0x704574736574616CLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6573776F7262;
    if (a1 != 1)
    {
      v4 = 0x73776F6873;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_48B2C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = AppLocation.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == AppLocation.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_E7BD4();
  }

  return v8 & 1;
}

Swift::Int sub_48BB4()
{
  v1 = *v0;
  sub_E7CC4();
  AppLocation.rawValue.getter(v1);
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_48C18(uint64_t a1)
{
  AppLocation.rawValue.getter(*v1);
  sub_E7124();
}

Swift::Int sub_48C6C(uint64_t a1)
{
  v2 = *v1;
  sub_E7CC4();
  AppLocation.rawValue.getter(v2);
  sub_E7124();

  return sub_E7CF4();
}

unint64_t sub_48CCC@<X0>(Swift::String *a1@<X0>, PodcastsActions::AppLocation_optional *a2@<X8>)
{
  result = _s15PodcastsActions11AppLocationO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_48CFC@<X0>(uint64_t *a1@<X8>)
{
  result = AppLocation.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_48D38()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_12E348);
  __swift_project_value_buffer(v0, qword_12E348);
  return sub_E57B4();
}

uint64_t static AppLocation.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CA68 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12E348);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_48E44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E260, &unk_EC260);
  __chkstk_darwin(v0 - 8);
  v2 = v51 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v3 - 8);
  v5 = v51 - v4;
  v63 = sub_E5944();
  v6 = *(v63 - 8);
  __chkstk_darwin(v63);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E3D0, &qword_EB8A8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130850, &unk_EB8B0);
  v10 = *(v9 - 8);
  v62 = *(v10 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v53 = v12;
  *(v12 + 16) = xmmword_EB5E0;
  v13 = v12 + v11;
  *(v12 + v11) = 0;
  sub_E5914();
  v55 = *(v6 + 56);
  v56 = v6 + 56;
  v14 = v63;
  v55(v5, 1, 1, v63);
  v61 = sub_E5684();
  v15 = *(v61 - 8);
  v60 = *(v15 + 56);
  v16 = v15 + 56;
  v60(v2, 1, 1, v61);
  v58 = v13;
  v59 = v16;
  v51[1] = v8;
  v17 = v5;
  v18 = v2;
  sub_E56A4();
  v19 = v62;
  v57 = v9;
  v54 = *(v9 + 48);
  *(v13 + v62) = 1;
  sub_E5914();
  v20 = v55;
  v55(v17, 1, 1, v14);
  v21 = v60;
  v22 = v61;
  v60(v18, 1, 1, v61);
  sub_E56A4();
  v54 = 2 * v19;
  *(v58 + 2 * v19) = 8;
  sub_E5914();
  v23 = v63;
  v20(v17, 1, 1, v63);
  v21(v18, 1, 1, v22);
  sub_E56A4();
  v24 = v62;
  v25 = v58;
  v26 = (v58 + v54 + v62);
  v54 = *(v57 + 48);
  *v26 = 6;
  sub_E5914();
  v55(v17, 1, 1, v23);
  v21(v18, 1, 1, v61);
  sub_E56A4();
  v27 = 4 * v24;
  *(v25 + 4 * v24) = 10;
  sub_E5914();
  v28 = v63;
  v29 = v55;
  v55(v17, 1, 1, v63);
  v60(v18, 1, 1, v61);
  sub_E56A4();
  v30 = v62;
  v31 = v57;
  v54 = *(v57 + 48);
  *(v25 + v27 + v62) = 2;
  sub_E5914();
  v29(v17, 1, 1, v28);
  v32 = v60;
  v33 = v61;
  v60(v18, 1, 1, v61);
  sub_E56A4();
  v54 = *(v31 + 48);
  *(v25 + 6 * v30) = 3;
  sub_E5914();
  v34 = v63;
  v35 = v55;
  v55(v17, 1, 1, v63);
  v32(v18, 1, 1, v33);
  sub_E56A4();
  v54 = 8 * v62;
  v36 = v57;
  v52 = *(v57 + 48);
  *(v25 + 7 * v62) = 4;
  sub_E5914();
  v35(v17, 1, 1, v34);
  v37 = v33;
  v38 = v33;
  v39 = v60;
  v60(v18, 1, 1, v37);
  sub_E56A4();
  v52 = *(v36 + 48);
  *(v58 + v54) = 9;
  sub_E5914();
  v35(v17, 1, 1, v34);
  v40 = v39;
  v39(v18, 1, 1, v38);
  sub_E56A4();
  v41 = v62;
  v42 = v58;
  v43 = (v58 + v54 + v62);
  v54 = *(v57 + 48);
  *v43 = 5;
  sub_E5914();
  v44 = v34;
  v45 = v55;
  v55(v17, 1, 1, v44);
  v46 = v61;
  v40(v18, 1, 1, v61);
  sub_E56A4();
  v54 = *(v57 + 48);
  *(v42 + 10 * v41) = 11;
  sub_E5914();
  v45(v17, 1, 1, v63);
  v47 = v46;
  v48 = v60;
  v60(v18, 1, 1, v47);
  sub_E56A4();
  *(v42 + 11 * v62) = 7;
  sub_E5914();
  v45(v17, 1, 1, v63);
  v48(v18, 1, 1, v61);
  sub_E56A4();
  v49 = sub_B012C(v53);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_12E360 = v49;
  return result;
}

uint64_t static AppLocation.caseDisplayRepresentations.getter()
{
  if (qword_12CA70 != -1)
  {
    swift_once();
  }
}

uint64_t sub_49838(uint64_t a1)
{
  v2 = sub_49C94();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_49884(uint64_t a1)
{
  v2 = sub_49BF0();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t _s15PodcastsActions11AppLocationO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_11FA20;
  v6._object = a2;
  v4 = sub_E7B34(v3, v6);

  if (v4 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_49920()
{
  result = qword_12E368;
  if (!qword_12E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E368);
  }

  return result;
}

unint64_t sub_49978()
{
  result = qword_12E370;
  if (!qword_12E370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E378, &qword_EB690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E370);
  }

  return result;
}

unint64_t sub_499E0()
{
  result = qword_12E380;
  if (!qword_12E380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E380);
  }

  return result;
}

unint64_t sub_49A38()
{
  result = qword_12E388;
  if (!qword_12E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E388);
  }

  return result;
}

unint64_t sub_49A90()
{
  result = qword_12E390;
  if (!qword_12E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E390);
  }

  return result;
}

unint64_t sub_49AE8()
{
  result = qword_12E398;
  if (!qword_12E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E398);
  }

  return result;
}

unint64_t sub_49B40()
{
  result = qword_12E3A0;
  if (!qword_12E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E3A0);
  }

  return result;
}

unint64_t sub_49B98()
{
  result = qword_12E3A8;
  if (!qword_12E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E3A8);
  }

  return result;
}

unint64_t sub_49BF0()
{
  result = qword_12E3B0;
  if (!qword_12E3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E3B0);
  }

  return result;
}

unint64_t sub_49C94()
{
  result = qword_12E3B8;
  if (!qword_12E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E3B8);
  }

  return result;
}

unint64_t sub_49CF0()
{
  result = qword_12E3C0;
  if (!qword_12E3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E3C0);
  }

  return result;
}

unint64_t sub_49D48()
{
  result = qword_12E3C8;
  if (!qword_12E3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E3C8);
  }

  return result;
}

uint64_t sub_49DB4()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_12E3D8);
  __swift_project_value_buffer(v0, qword_12E3D8);
  return sub_E57B4();
}

uint64_t static AudioEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CA78 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_12E3D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static AudioEntity.defaultResolverSpecification.getter@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E3F0, &qword_EB8C0);
  v10 = *(v12 - 8);
  __chkstk_darwin(v12);
  v2 = &v9 - v1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E3F8, &qword_EB8C8);
  v3 = *(v9 - 8);
  __chkstk_darwin(v9);
  v5 = &v9 - v4;
  type metadata accessor for AudioEntity(0);
  v6 = sub_4A1B4();
  sub_E5804();
  v7 = sub_4A208();
  sub_E5804();
  sub_4A25C();
  sub_E5804();
  sub_4A690(&qword_12E418, type metadata accessor for AudioEntity, &protocol conformance descriptor for AudioEntity);
  sub_E5824();
  v17 = v6;
  v18 = &type metadata for AudioEntity.ShowEntityResolver;
  sub_E5814();
  v15 = &type metadata for AudioEntity.ShowEntityResolver;
  v16 = &type metadata for AudioEntity.EpisodeEntityResolver;
  v13 = v6;
  v14 = v7;
  sub_E5814();
  (*(v10 + 8))(v2, v12);
  return (*(v3 + 8))(v5, v9);
}

uint64_t type metadata accessor for AudioEntity(uint64_t a1)
{
  result = qword_12E4A8;
  if (!qword_12E4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_4A1B4()
{
  result = qword_12E400;
  if (!qword_12E400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E400);
  }

  return result;
}

unint64_t sub_4A208()
{
  result = qword_12E408;
  if (!qword_12E408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E408);
  }

  return result;
}

unint64_t sub_4A25C()
{
  result = qword_12E410;
  if (!qword_12E410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E410);
  }

  return result;
}

uint64_t static AudioEntity.allIntentValueTypes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E420, &qword_EB8D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_EB2E0;
  v1 = type metadata accessor for ShowEntity(0);
  v2 = sub_4A690(&qword_12DE68, type metadata accessor for ShowEntity, &protocol conformance descriptor for ShowEntity);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for EpisodeEntity(0);
  v4 = sub_4A690(&qword_12DD68, type metadata accessor for EpisodeEntity, &protocol conformance descriptor for EpisodeEntity);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for StationEntity(0);
  v6 = sub_4A690(&qword_12E118, type metadata accessor for StationEntity, &protocol conformance descriptor for StationEntity);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  return v0;
}

uint64_t AudioEntity.asIntentValue.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AudioEntity(0);
  __chkstk_darwin(v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4B090(v2, v6, type metadata accessor for AudioEntity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      a1[3] = type metadata accessor for EpisodeEntity(0);
      v8 = sub_4A690(&qword_12DD68, type metadata accessor for EpisodeEntity, &protocol conformance descriptor for EpisodeEntity);
      v9 = type metadata accessor for EpisodeEntity;
    }

    else
    {
      a1[3] = type metadata accessor for StationEntity(0);
      v8 = sub_4A690(&qword_12E118, type metadata accessor for StationEntity, &protocol conformance descriptor for StationEntity);
      v9 = type metadata accessor for StationEntity;
    }
  }

  else
  {
    a1[3] = type metadata accessor for ShowEntity(0);
    v8 = sub_4A690(&qword_12DE68, type metadata accessor for ShowEntity, &protocol conformance descriptor for ShowEntity);
    v9 = type metadata accessor for ShowEntity;
  }

  v10 = v9;
  a1[4] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_4A598(v6, boxed_opaque_existential_1, v10);
}

uint64_t sub_4A598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_4A690(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_4A73C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_4A75C, 0, 0);
}

uint64_t sub_4A75C()
{
  v1 = v0[2];
  sub_4B090(v0[3], v1, type metadata accessor for ShowEntity);
  v2 = type metadata accessor for AudioEntity(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_4A898(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_4A8B8, 0, 0);
}

uint64_t sub_4A8B8()
{
  v1 = v0[2];
  sub_4B090(v0[3], v1, type metadata accessor for EpisodeEntity);
  v2 = type metadata accessor for AudioEntity(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_4A988(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_4A9A8, 0, 0);
}

uint64_t sub_4A9A8()
{
  v1 = v0[2];
  sub_4B090(v0[3], v1, type metadata accessor for StationEntity);
  v2 = type metadata accessor for AudioEntity(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_4AA78@<X0>(uint64_t *a2@<X8>)
{
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4B090(v4, v6, type metadata accessor for AudioEntity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      a2[3] = type metadata accessor for EpisodeEntity(0);
      v8 = sub_4A690(&qword_12DD68, type metadata accessor for EpisodeEntity, &protocol conformance descriptor for EpisodeEntity);
      v9 = type metadata accessor for EpisodeEntity;
    }

    else
    {
      a2[3] = type metadata accessor for StationEntity(0);
      v8 = sub_4A690(&qword_12E118, type metadata accessor for StationEntity, &protocol conformance descriptor for StationEntity);
      v9 = type metadata accessor for StationEntity;
    }
  }

  else
  {
    a2[3] = type metadata accessor for ShowEntity(0);
    v8 = sub_4A690(&qword_12DE68, type metadata accessor for ShowEntity, &protocol conformance descriptor for ShowEntity);
    v9 = type metadata accessor for ShowEntity;
  }

  v10 = v9;
  a2[4] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_4A598(v6, boxed_opaque_existential_1, v10);
}

uint64_t sub_4AC88(uint64_t a1)
{
  result = type metadata accessor for ShowEntity(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for EpisodeEntity(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for StationEntity(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_4AD14()
{
  result = qword_12E4E0;
  if (!qword_12E4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E4E8, &unk_EBA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E4E0);
  }

  return result;
}

unint64_t sub_4ADAC()
{
  result = qword_12E4F0;
  if (!qword_12E4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E4F0);
  }

  return result;
}

unint64_t sub_4AE04()
{
  result = qword_12E4F8;
  if (!qword_12E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E4F8);
  }

  return result;
}

unint64_t sub_4AE5C()
{
  result = qword_12E500;
  if (!qword_12E500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E500);
  }

  return result;
}

unint64_t sub_4AEB4()
{
  result = qword_12E508;
  if (!qword_12E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E508);
  }

  return result;
}

unint64_t sub_4AF54()
{
  result = qword_12E510;
  if (!qword_12E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E510);
  }

  return result;
}

unint64_t sub_4AFF4()
{
  result = qword_12E518;
  if (!qword_12E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E518);
  }

  return result;
}

uint64_t sub_4B090(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_4B104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = type metadata accessor for StationEntity(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v44 - v7;
  v9 = type metadata accessor for EpisodeEntity(0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = (&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v45 = &v44 - v13;
  v14 = sub_E62C4();
  v46 = *(v14 - 8);
  v47 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = (&v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v15);
  v44 = (&v44 - v19);
  __chkstk_darwin(v18);
  v21 = (&v44 - v20);
  v22 = type metadata accessor for ShowEntity(0);
  __chkstk_darwin(v22 - 8);
  v24 = (&v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for AudioEntity(0);
  __chkstk_darwin(v25);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  sub_4B78C(a1, v27, type metadata accessor for AudioEntity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29 = v45;
      sub_4A598(v27, v45, type metadata accessor for EpisodeEntity);
      sub_4B78C(v29, v12, type metadata accessor for EpisodeEntity);
      v30 = v12[10];
      if (v30)
      {
        v31 = v12[9];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1306D0, &unk_EA4C0);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_E87F0;
        *(v32 + 32) = v31;
        *(v32 + 40) = v30;

        sub_4B7F4(v49, type metadata accessor for AudioEntity);
        sub_4B7F4(v12, type metadata accessor for EpisodeEntity);
        sub_4B7F4(v29, type metadata accessor for EpisodeEntity);
        v21 = v44;
        *v44 = v32;
        v33 = &enum case for MediaIdentifier.localEpisodes(_:);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCC8, qword_EBCD0);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_E87F0;
        *(v38 + 32) = v12[11];
        sub_4B7F4(v49, type metadata accessor for AudioEntity);
        sub_4B7F4(v12, type metadata accessor for EpisodeEntity);
        sub_4B7F4(v29, type metadata accessor for EpisodeEntity);
        v21 = v44;
        *v44 = v38;
        v33 = &enum case for MediaIdentifier.episodes(_:);
      }
    }

    else
    {
      sub_4A598(v27, v8, type metadata accessor for StationEntity);
      sub_4B78C(v8, v6, type metadata accessor for StationEntity);
      v36 = *(v6 + 3);
      if (!v36)
      {
        sub_4B738();
        swift_allocError();
        *v43 = 0;
        swift_willThrow();
        sub_4B7F4(v49, type metadata accessor for AudioEntity);
        sub_4B7F4(v6, type metadata accessor for StationEntity);
        return sub_4B7F4(v8, type metadata accessor for StationEntity);
      }

      v37 = *(v6 + 2);

      sub_4B7F4(v49, type metadata accessor for AudioEntity);
      sub_4B7F4(v6, type metadata accessor for StationEntity);
      sub_4B7F4(v8, type metadata accessor for StationEntity);
      *v17 = v37;
      v17[1] = v36;
      v17[2] = 0;
      v17[3] = 0;
      v21 = v17;
      v33 = &enum case for MediaIdentifier.station(_:);
    }
  }

  else
  {
    sub_4B7F4(v49, type metadata accessor for AudioEntity);
    sub_4A598(v27, v24, type metadata accessor for ShowEntity);
    v34 = v24[6];
    if (v34)
    {
      v35 = v24[5];

      sub_4B7F4(v24, type metadata accessor for ShowEntity);
      *v21 = v35;
      v21[1] = v34;
      v33 = &enum case for MediaIdentifier.localPodcast(_:);
    }

    else
    {
      v39 = v24[7];
      sub_4B7F4(v24, type metadata accessor for ShowEntity);
      *v21 = v39;
      v33 = &enum case for MediaIdentifier.podcast(_:);
    }
  }

  v41 = v46;
  v40 = v47;
  (*(v46 + 104))(v21, *v33, v47);
  return (*(v41 + 32))(v48, v21, v40);
}

unint64_t sub_4B738()
{
  result = qword_12E520;
  if (!qword_12E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E520);
  }

  return result;
}

uint64_t sub_4B78C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_4B7F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for InvocationSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InvocationSource(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int TipGroup.hashValue.getter()
{
  v1 = *v0;
  sub_E7CC4();
  sub_E7CD4(v1);
  return sub_E7CF4();
}

Swift::Int sub_4BA40(uint64_t a1)
{
  v2 = *v1;
  sub_E7CC4();
  sub_E7CD4(v2);
  return sub_E7CF4();
}

unint64_t sub_4BA98()
{
  result = qword_12E528;
  if (!qword_12E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12E528);
  }

  return result;
}

uint64_t ChannelEntity.init(model:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_E5944();
  __chkstk_darwin(v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __chkstk_darwin(v5 - 8);
  v54 = &v44 - v6;
  v55 = sub_E59C4();
  v7 = *(v55 - 8);
  __chkstk_darwin(v55);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_E5F74();
  __chkstk_darwin(v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  v12 = __chkstk_darwin(v11 - 8);
  v53 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v44 - v14;
  v16 = a1;
  v17 = [a1 artworkURL];
  if (v17)
  {
    v18 = v15;
    v19 = v7;
    v20 = v17;
    sub_E7064();

    v7 = v19;
    v15 = v18;
    v58 = xmmword_EBE00;
    v59 = 0u;
    memset(v60, 0, sizeof(v60));

    sub_E5F64();
    sub_E6104();
    sub_E5FC4();

    v21 = sub_E5FD4();
    (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
  }

  else
  {
    v22 = sub_E5FD4();
    (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
  }

  v23 = v16;
  v24 = [v23 objectID];
  v25 = [v24 URIRepresentation];

  sub_E5994();
  v26 = sub_E5974();
  v28 = v27;
  (*(v7 + 8))(v9, v55);
  v29 = [v23 objectID];

  result = [v23 storeId];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v52 = v26;
    v49 = sub_E6814();
    v31 = [v23 name];
    v50 = v29;
    v51 = v28;
    if (v31)
    {
      v32 = v31;
      v48 = sub_E7064();
      v47 = v33;
    }

    else
    {
      v48 = 0;
      v47 = 0xE000000000000000;
    }

    v45 = [v23 subscriptionActive];
    sub_26324(v15, v53, &unk_12DB10, &qword_EAC60);
    v34 = *(v7 + 56);
    v46 = v15;
    v34(v54, 1, 1, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5A8, &qword_EBE20);
    sub_E5914();
    *(a2 + 6) = sub_E5474();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E5B0, &qword_EBE28);
    sub_E5914();
    *(a2 + 7) = sub_E5494();
    v35 = type metadata accessor for ChannelEntity(0);
    v36 = v35[10];
    v37 = sub_E5FD4();
    (*(*(v37 - 8) + 56))(&a2[v36], 1, 1, v37);
    v38 = &a2[v35[11]];
    v44 = xmmword_EBE10;
    *v38 = xmmword_EBE10;
    v39 = v35[12];
    v34(&a2[v39], 1, 1, v55);
    v40 = v51;
    *a2 = v52;
    *(a2 + 1) = v40;
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    v42 = v49;
    v41 = v50;
    *(a2 + 4) = v50;
    *(a2 + 5) = v42;
    v56 = v48;
    v57 = v47;
    v43 = v41;
    sub_E53F4();
    LOBYTE(v56) = v45;
    sub_E53F4();

    sub_110AC(v46, &unk_12DB10, &qword_EAC60);
    sub_4DCF4(v53, &a2[v36], &unk_12DB10, &qword_EAC60);
    sub_4DC8C(*v38, *(v38 + 1));
    *v38 = v44;
    return sub_4DCF4(v54, &a2[v39], &unk_12DFA0, &qword_E9B50);
  }

  return result;
}