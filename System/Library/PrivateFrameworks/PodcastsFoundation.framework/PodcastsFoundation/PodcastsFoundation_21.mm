Swift::Bool __swiftcall URL.isRemoteAddress()()
{
  sub_1D9176BEC();
  if (!v0)
  {
    return 0;
  }

  v1 = sub_1D917839C();

  v7 = 1;
  if ((v1 & 1) == 0)
  {

    v2 = sub_1D917839C();

    if ((v2 & 1) == 0)
    {

      v3 = sub_1D917839C();

      if ((v3 & 1) == 0)
      {

        v4 = sub_1D917839C();

        if ((v4 & 1) == 0)
        {

          v5 = sub_1D917839C();

          if ((v5 & 1) == 0)
          {

            v6 = sub_1D917839C();

            if ((v6 & 1) == 0)
            {
              v7 = 0;
            }
          }
        }
      }
    }
  }

  swift_arrayDestroy();
  return v7;
}

Swift::Bool __swiftcall URL.isMediaLibraryURL()()
{
  v0 = sub_1D9176BEC();
  if (v1)
  {
    if (v0 == 0x62696C2D646F7069 && v1 == 0xEC00000079726172)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_1D9179ACC();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1D8F45FBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43B0, &qword_1D9188F18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D8F46024()
{
  result = qword_1EDCD0790;
  if (!qword_1EDCD0790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCD0790);
  }

  return result;
}

uint64_t sub_1D8F46070(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OSSignposter.makeSignpostID(hash:)(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1D917737C();

    return sub_1D917731C();
  }

  else
  {

    return MEMORY[0x1EEE6E8A8](a1);
  }
}

uint64_t GroupedContentIDs.localIDs.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 62)
  {
    goto LABEL_23;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v23 = MEMORY[0x1E69E7CC0];
    result = sub_1D8E358F8(0, v5 & ~(v5 >> 63), 0);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v22 = a3;
      v8 = 0;
      v6 = v23;
      a3 = 1;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v9 = sub_1D8F46B74(v8, a2);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            v5 = sub_1D917935C();
            goto LABEL_3;
          }

          if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v9 = *(a2 + 8 * v8 + 32);
        }

        v24 = v6;
        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        if (v11 >= v10 >> 1)
        {
          v13 = v9;
          sub_1D8E358F8(v10 > 1, v11 + 1, 1);
          v9 = v13;
          v6 = v24;
        }

        ++v8;
        *(v6 + 16) = v11 + 1;
        v12 = v6 + 24 * v11;
        *(v12 + 32) = v9;
        *(v12 + 40) = 0;
        *(v12 + 48) = 1;
        if (v5 == v8)
        {
          a3 = v22;
          goto LABEL_15;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    v14 = *(a3 + 16);
    v15 = MEMORY[0x1E69E7CC0];
    if (v14)
    {
      v25 = MEMORY[0x1E69E7CC0];
      sub_1D8E358F8(0, v14, 0);
      v15 = v25;
      v16 = (a3 + 40);
      do
      {
        v18 = *(v16 - 1);
        v17 = *v16;
        v20 = *(v25 + 16);
        v19 = *(v25 + 24);

        if (v20 >= v19 >> 1)
        {
          sub_1D8E358F8(v19 > 1, v20 + 1, 1);
        }

        *(v25 + 16) = v20 + 1;
        v21 = v25 + 24 * v20;
        *(v21 + 32) = v18;
        *(v21 + 40) = v17;
        *(v21 + 48) = 2;
        v16 += 2;
        --v14;
      }

      while (v14);
    }

    sub_1D8E2FF24(v15);
    return v6;
  }

  return result;
}

id sub_1D8F4644C(uint64_t a1, void *a2, SEL *a3)
{
  v5 = Array<A>.group()(a1);
  v6 = v4;
  v8 = v7;
  v26 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
    v9 = sub_1D917935C();
  }

  else
  {
    v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    v12 = *(v5 + 2);
    if (!v12)
    {
      goto LABEL_7;
    }

LABEL_12:
    v25 = a3;
    sub_1D91795CC();
    v17 = (v5 + 32);
    do
    {
      v18 = *v17++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
      sub_1D917959C();
      sub_1D91795DC();
      sub_1D91795EC();
      sub_1D91795AC();
      --v12;
    }

    while (v12);
    v19 = objc_opt_self();
    sub_1D8FC0EF8(v10);

    sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
    sub_1D8F46DF8();
    v20 = sub_1D9178A8C();

    v21 = [v19 *v25];

    MEMORY[0x1DA729B90]();
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D917863C();
    }

    sub_1D917869C();
    if (*(v8 + 16))
    {
      goto LABEL_8;
    }

LABEL_17:

    goto LABEL_18;
  }

  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D9189080;
  *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E8, qword_1D91BE010);
  *(v11 + 64) = sub_1D8F3D318();
  *(v11 + 32) = v6;

  sub_1D9178C8C();
  MEMORY[0x1DA729B90]();
  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D917863C();
  }

  sub_1D917869C();
  v12 = *(v5 + 2);
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (!*(v8 + 16))
  {
    goto LABEL_17;
  }

LABEL_8:
  v13 = objc_opt_self();

  sub_1D8FC0F28(v14);

  swift_bridgeObjectRelease_n();
  v15 = sub_1D9178A8C();

  v16 = [v13 predicateForEpisodeUuids_];

  MEMORY[0x1DA729B90]();
  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D917863C();
  }

  sub_1D917869C();
LABEL_18:
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  v22 = sub_1D91785DC();

  v23 = [objc_opt_self() orPredicateWithSubpredicates_];

  return v23;
}

id Array<A>.playlistPredicate()(uint64_t a1)
{
  Array<A>.group()(a1);
  v2 = v1;
  v4 = v3;
  v13 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    if (sub_1D917935C())
    {
LABEL_3:
      sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1D9189080;
      *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E8, qword_1D91BE010);
      *(v5 + 64) = sub_1D8F3D318();
      *(v5 + 32) = v2;

      sub_1D9178C8C();
      MEMORY[0x1DA729B90]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D917863C();
      }

      sub_1D917869C();
      if (*(v4 + 16))
      {
        goto LABEL_6;
      }

LABEL_11:

      goto LABEL_12;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  if (!*(v4 + 16))
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = objc_opt_self();

  sub_1D8FC0F28(v7);

  swift_bridgeObjectRelease_n();
  v8 = sub_1D9178A8C();

  v9 = [v6 predicateForStationsWithUUIDs_];

  MEMORY[0x1DA729B90]();
  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D917863C();
  }

  sub_1D917869C();
LABEL_12:
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  v10 = sub_1D91785DC();

  v11 = [objc_opt_self() orPredicateWithSubpredicates_];

  return v11;
}

uint64_t sub_1D8F46B74(unint64_t a1, unint64_t a2)
{
  sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
  if (a2 >> 62)
  {
    v4 = sub_1D917976C();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v4;
    }

LABEL_10:
    sub_1D917946C();
    v6 = 0xD000000000000046;
    v5 = 0x80000001D91CDB40;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v4;
  }

  sub_1D917946C();
  v5 = 0x80000001D91CDAF0;
  v6 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x1DA7298F0](v6, v5);
  v8 = sub_1D9179FEC();
  MEMORY[0x1DA7298F0](v8);

  MEMORY[0x1DA7298F0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v9 = sub_1D9179FEC();
  MEMORY[0x1DA7298F0](v9);

  result = sub_1D91796EC();
  __break(1u);
  return result;
}

uint64_t _s18PodcastsFoundation17GroupedContentIDsV2eeoiySbAC_ACtFZ_0(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = *(result + 16);
  if (v6 != *(a4 + 16))
  {
    return 0;
  }

  if (v6)
  {
    v9 = result == a4;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_10:
    if (sub_1D8E83A54(a2, a5))
    {

      return sub_1D8E83CA4(a3, a6);
    }

    return 0;
  }

  v10 = (result + 32);
  v11 = (a4 + 32);
  while (v6)
  {
    if (*v10 != *v11)
    {
      return 0;
    }

    ++v10;
    ++v11;
    if (!--v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D8F46DF8()
{
  result = qword_1EDCD0808;
  if (!qword_1EDCD0808)
  {
    sub_1D8CF2154(255, qword_1EDCD0810, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD0808);
  }

  return result;
}

uint64_t Array.safelyRemoveFirst()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getWitnessTable();
  if (sub_1D9178BEC())
  {
    v4 = 1;
  }

  else
  {
    swift_getWitnessTable();
    sub_1D9178C0C();
    v4 = 0;
  }

  return (*(*(*(a1 + 16) - 8) + 56))(a2, v4, 1);
}

uint64_t AsyncSequence.first()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D8F46F74, 0, 0);
}

uint64_t sub_1D8F46F74()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1D8F47040;
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  return MEMORY[0x1EEE6DB20](v4, &unk_1D9196DB8, v1, v5, v3);
}

uint64_t sub_1D8F47040()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8F4717C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D8F4717C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8F471FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D8E24548;

  return sub_1D8F471E0();
}

uint64_t Array<A>.onReceive(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D8F472CC, 0, 0);
}

uint64_t sub_1D8F472CC()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1D8F473C0;
  v5 = MEMORY[0x1E69E7CA8] + 8;
  v6 = MEMORY[0x1E69E7CA8] + 8;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v4, v5, v6, 0, 0, &unk_1D9196DD0, v2, v7);
}

uint64_t sub_1D8F473C0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D8F474DC;
  }

  else
  {

    v2 = sub_1D8F471E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8F474DC()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1D8F47544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v9 = *(a6 - 8);
  v7[18] = v9;
  v7[19] = *(v9 + 64);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8F4765C, 0, 0);
}

uint64_t sub_1D8F4765C()
{
  if (sub_1D91786AC())
  {
    v1 = 0;
    v27 = *(v0 + 144);
    v2 = v27;
    v26 = **(v0 + 80);
    v25 = *(v0 + 152);
    do
    {
      v5 = sub_1D917868C();
      sub_1D917862C();
      if (v5)
      {
        (*(v2 + 16))(*(v0 + 168), *(v0 + 88) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v1, *(v0 + 112));
        v6 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = sub_1D91794BC();
        if (v25 != 8)
        {
          __break(1u);
          return result;
        }

        v22 = *(v0 + 168);
        v23 = *(v0 + 112);
        *(v0 + 72) = result;
        (*(v27 + 16))(v22, v0 + 72, v23);
        swift_unknownObjectRelease();
        v6 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      v33 = v6;
      v34 = v1;
      v8 = *(v0 + 160);
      v7 = *(v0 + 168);
      v9 = *(v0 + 136);
      v28 = v8;
      v29 = v9;
      v31 = *(v0 + 104);
      v32 = *(v0 + 128);
      v30 = *(v0 + 96);
      v10 = sub_1D917886C();
      v11 = *(v10 - 8);
      v35 = *(v0 + 112);
      (*(v11 + 56))(v9, 1, 1, v10);
      v12 = *(v2 + 32);
      v12(v8, v7, v35);
      v13 = (*(v2 + 80) + 48) & ~*(v2 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = (v14 + 16);
      *(v14 + 24) = 0;
      *(v14 + 32) = v35;
      v12(v14 + v13, v28, v35);
      v16 = (v14 + ((v25 + 7 + v13) & 0xFFFFFFFFFFFFFFF8));
      *v16 = v30;
      v16[1] = v31;
      sub_1D8CF5C74(v29, v32);
      LODWORD(v13) = (*(v11 + 48))(v32, 1, v10);

      v17 = *(v0 + 128);
      if (v13 == 1)
      {
        sub_1D8CF5CE4(*(v0 + 128));
        if (!*v15)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_1D917885C();
        (*(v11 + 8))(v17, v10);
        if (!*v15)
        {
LABEL_11:
          v18 = 0;
          v20 = 0;
          goto LABEL_12;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v18 = sub_1D917874C();
      v20 = v19;
      swift_unknownObjectRelease();
LABEL_12:

      if (v20 | v18)
      {
        v3 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v20;
      }

      else
      {
        v3 = 0;
      }

      v4 = *(v0 + 136);
      *(v0 + 48) = 1;
      *(v0 + 56) = v3;
      *(v0 + 64) = v26;
      swift_task_create();

      sub_1D8CF5CE4(v4);
      v1 = v34 + 1;
      v2 = v27;
    }

    while (v33 != sub_1D91786AC());
  }

  v24 = swift_task_alloc();
  *(v0 + 176) = v24;
  *v24 = v0;
  v24[1] = sub_1D8F47AC4;

  return sub_1D8CF5A38(0, 0);
}

uint64_t sub_1D8F47AC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D8F47C38(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D8D58924;

  return sub_1D8F47544(a1, a2, v8, v9, v10, v6, v7);
}

uint64_t sub_1D8F47D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[7] = AssociatedTypeWitness;
  v8[8] = *(AssociatedTypeWitness - 8);
  v8[9] = swift_task_alloc();
  v11 = swift_getAssociatedTypeWitness();
  v8[10] = v11;
  v8[11] = *(v11 - 8);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  sub_1D91791BC();
  v8[14] = swift_task_alloc();
  v8[15] = *(a7 - 8);
  v8[16] = swift_task_alloc();
  v12 = swift_getAssociatedTypeWitness();
  v8[17] = v12;
  v8[18] = *(v12 - 8);
  v8[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8F47F84, 0, 0);
}

uint64_t sub_1D8F47F84()
{
  (*(v0[15] + 16))(v0[16], v0[2], v0[5]);
  sub_1D91789FC();
  v0[20] = swift_getAssociatedConformanceWitness();
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_1D8F48098;
  v2 = v0[14];

  return MEMORY[0x1EEE6D8D0](v2, 0, 0);
}

uint64_t sub_1D8F48098()
{

  if (v0)
  {
    v1 = sub_1D8F485B0;
  }

  else
  {
    v1 = sub_1D8F481A8;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D8F481A8()
{
  v1 = v0[14];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_4:
    (*(v0[18] + 8))(v0[19], v0[17]);

    v4 = v0[1];

    return v4();
  }

  (*(v3 + 32))(v0[9], v1, v2);
  if (sub_1D917894C())
  {
    (*(v0[8] + 8))(v0[9], v0[7]);
    goto LABEL_4;
  }

  v8 = (v0[3] + *v0[3]);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_1D8F483B4;
  v7 = v0[9];

  return v8(v7);
}

uint64_t sub_1D8F483B4()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1D8F48730;
  }

  else
  {
    v2 = sub_1D8F484C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8F484C8()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v0[20] = swift_getAssociatedConformanceWitness();
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_1D8F48098;
  v2 = v0[14];

  return MEMORY[0x1EEE6D8D0](v2, 0, 0);
}

uint64_t sub_1D8F485B0()
{
  v1 = *(v0[11] + 32);
  v1(v0[12], v0[13], v0[10]);
  swift_getAssociatedConformanceWitness();
  v2 = sub_1D9179A7C();
  v3 = v0[12];
  if (v2)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
  }

  else
  {
    v4 = v0[10];
    swift_allocError();
    v1(v5, v3, v4);
  }

  (*(v0[18] + 8))(v0[19], v0[17]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D8F48730()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t AsyncSequence.onNext(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v5[8] = *(AssociatedTypeWitness - 8);
  v5[9] = swift_task_alloc();
  v8 = swift_getAssociatedTypeWitness();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  sub_1D91791BC();
  v5[14] = swift_task_alloc();
  v5[15] = *(a3 - 8);
  v5[16] = swift_task_alloc();
  v9 = swift_getAssociatedTypeWitness();
  v5[17] = v9;
  v5[18] = *(v9 - 8);
  v5[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8D43DF4, 0, 0);
}

uint64_t sub_1D8F48A84()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1D8F48E04;
  }

  else
  {
    v2 = sub_1D8F48B98;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8F48B98()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v0[20] = swift_getAssociatedConformanceWitness();
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_1D8D4CB14;
  v2 = v0[14];

  return MEMORY[0x1EEE6D8D0](v2, 0, 0);
}

uint64_t sub_1D8F48C80()
{
  v1 = *(v0[11] + 32);
  v1(v0[12], v0[13], v0[10]);
  swift_getAssociatedConformanceWitness();
  v2 = sub_1D9179A7C();
  v3 = v0[12];
  if (v2)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
  }

  else
  {
    v4 = v0[10];
    swift_allocError();
    v1(v5, v3, v4);
  }

  (*(v0[18] + 8))(v0[19], v0[17]);

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_1D8F48E04()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1(0);
}

uint64_t sub_1D8F48EEC(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = (v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1D8D5FF18;

  return sub_1D8F47D10(a1, v7, v8, v1 + v6, v10, v11, v4, v5);
}

uint64_t BinaryInteger.clamped(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D91781AC();
  sub_1D9179CCC();
  sub_1D9179CBC();
  return (*(v3 + 8))(v5, a2);
}

uint64_t BinaryInteger.clamped(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1D9179CBC();
}

{
  return sub_1D9179CCC();
}

uint64_t static CaseIterable<>.cases(excluding:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_1D917947C();
  swift_getAssociatedConformanceWitness();
  v8 = sub_1D9178B5C();
  v12 = a1;
  v9 = sub_1D91786FC();
  WitnessTable = swift_getWitnessTable();
  return MEMORY[0x1DA72A090](&v12, v8, a2, v9, a4, WitnessTable);
}

uint64_t sub_1D8F492B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - v9;
  sub_1D8CF5C74(a1, v19 - v9);
  v11 = sub_1D917886C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D8CF5CE4(v10);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_1D917874C();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D917885C();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v5;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t Collection<>.concurrentMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D8F494B0, 0, 0);
}

uint64_t sub_1D8F494B0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v9 = *(v0 + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v2;
  *(v4 + 24) = v9;
  *(v4 + 40) = v1;
  *(v4 + 48) = v5;
  v6 = sub_1D91786FC();
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_1D8F495F8;

  return MEMORY[0x1EEE6DD58](v0 + 16, TupleTypeMetadata2, v6, 0, 0, &unk_1D9196E00, v4, TupleTypeMetadata2);
}

uint64_t sub_1D8F495F8()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1D8F49730;
  }

  else
  {

    v2 = sub_1D8F49714;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8F49730()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8F49794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  v8[5] = a1;
  v8[6] = a2;
  v8[13] = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[14] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v8[15] = v10;
  v8[16] = *(v10 + 64);
  v8[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v8[18] = swift_task_alloc();
  v8[19] = swift_getTupleTypeMetadata2();
  sub_1D91791BC();
  v8[20] = swift_task_alloc();
  v8[21] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v11 = sub_1D91789DC();
  v8[22] = v11;
  v8[23] = *(v11 - 8);
  v8[24] = swift_task_alloc();
  v8[25] = swift_getTupleTypeMetadata2();
  v12 = sub_1D91791BC();
  v8[26] = v12;
  v8[27] = *(v12 - 8);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v8[30] = sub_1D917973C();
  v8[31] = swift_task_alloc();
  v13 = sub_1D917972C();
  v8[32] = v13;
  v8[33] = *(v13 - 8);
  v8[34] = swift_task_alloc();
  v14 = sub_1D91791BC();
  v8[35] = v14;
  v8[36] = *(v14 - 8);
  v8[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8F49B40, 0, 0);
}

uint64_t sub_1D8F49B40()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[35];
  v39 = v0[27];
  v4 = v0[25];
  v5 = v0[15];
  v37 = v0[13];
  v6 = v0[10];
  v7 = *(v0[11] - 8);
  v0[38] = v7;
  v9 = v7 + 56;
  v8 = *(v7 + 56);
  v0[39] = v8;
  v0[40] = v9 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v2, 1, 1);
  v10 = sub_1D9178B9C();
  v11 = sub_1D8F247DC(v2, v10, v3);
  (*(v1 + 8))(v2, v3);
  v0[2] = v11;
  MEMORY[0x1DA729A10](v6, v37);
  sub_1D917970C();
  v31 = v5;
  v32 = v4;
  v33 = v4 - 8;
  while (1)
  {
    v13 = v0[28];
    v12 = v0[29];
    v15 = v0[25];
    v14 = v0[26];
    sub_1D917971C();
    (*(v39 + 32))(v12, v13, v14);
    if ((*(*v33 + 48))(v12, 1, v15) == 1)
    {
      break;
    }

    v16 = v0[29];
    v17 = v0[18];
    v18 = v0[17];
    v19 = v0[14];
    v38 = v0[12];
    v20 = v0[9];
    v36 = v0[8];
    v35 = *v16;
    v21 = *(v32 + 48);
    v22 = sub_1D917886C();
    v34 = *(v0 + 5);
    (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
    v23 = *(v31 + 32);
    v23(v18, &v16[v21], v19);
    v24 = (*(v31 + 80) + 80) & ~*(v31 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = v34;
    *(v25 + 48) = v38;
    *(v25 + 56) = v35;
    *(v25 + 64) = v36;
    *(v25 + 72) = v20;
    v23((v25 + v24), v18, v19);
    v26 = sub_1D91789EC();

    sub_1D8F492B4(v17, &unk_1D9196E30, v25, v26);
    sub_1D8CF5CE4(v17);
  }

  (*(v0[33] + 8))(v0[34], v0[32]);
  sub_1D917899C();
  v27 = swift_task_alloc();
  v0[41] = v27;
  *v27 = v0;
  v27[1] = sub_1D8F49F3C;
  v28 = v0[22];
  v29 = v0[20];

  return MEMORY[0x1EEE6DAD8](v29, 0, 0, v28, v0 + 3);
}

uint64_t sub_1D8F49F3C()
{
  *(*v1 + 336) = v0;

  if (v0)
  {

    v2 = sub_1D8F4A394;
  }

  else
  {
    v2 = sub_1D8F4A058;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8F4A058()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 80);
    v4 = *(v0 + 40);
    v19 = *(v0 + 88);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    *(v0 + 32) = *(v0 + 16);
    v5 = swift_task_alloc();
    *(v5 + 16) = v3;
    *(v5 + 24) = v19;
    sub_1D91786FC();

    swift_getWitnessTable();
    v6 = sub_1D917843C();
    swift_bridgeObjectRelease_n();

    *v4 = v6;

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 312);
    v10 = *(v0 + 296);
    v11 = *(v0 + 280);
    v12 = *(v0 + 288);
    v13 = *(v0 + 88);
    v14 = *v1;
    (*(*(v0 + 304) + 32))(v10, v1 + *(v2 + 48), v13);
    v9(v10, 0, 1, v13);
    sub_1D91786FC();
    sub_1D917865C();
    v15 = *(v0 + 16);
    sub_1D8F24788(v14, v15, v11);
    (*(v12 + 40))(v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v14, v10, v11);
    nullsub_1();
    v16 = swift_task_alloc();
    *(v0 + 328) = v16;
    *v16 = v0;
    v16[1] = sub_1D8F49F3C;
    v17 = *(v0 + 176);
    v18 = *(v0 + 160);

    return MEMORY[0x1EEE6DAD8](v18, 0, 0, v17, v0 + 24);
  }
}

uint64_t sub_1D8F4A394()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D8F4A494(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D8D5FF18;

  return sub_1D8F49794(a1, a2, v9, v11, v10, v6, v7, v8);
}

uint64_t sub_1D8F4A570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a7;
  v7[7] = v9;
  v7[4] = a5;
  v7[5] = a6;
  v7[2] = a1;
  v7[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D8F4A5A0, 0, 0);
}

uint64_t sub_1D8F4A5A0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(swift_getTupleTypeMetadata2() + 48);
  *v3 = v1;
  v8 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1D8F4A6C8;
  v6 = v0[6];

  return v8(&v3[v4], v6);
}

uint64_t sub_1D8F4A6C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t Collection<>.concurrentMap(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D8F4A7E4, 0, 0);
}

uint64_t sub_1D8F4A7E4()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_allocObject();
  v0[7] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v4;
  v5[5] = v3;

  v6 = swift_task_alloc();
  v0[8] = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v6 = v0;
  v6[1] = sub_1D8F4A900;
  v8 = v0[5];
  v9 = v0[4];

  return Collection<>.concurrentMap<A>(_:)(&unk_1D9196E18, v5, v9, AssociatedTypeWitness, v8);
}

uint64_t sub_1D8F4A900(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8F4AA58, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1D8F4AA58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8F4AABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D8F4AAE4, 0, 0);
}

uint64_t sub_1D8F4AAE4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[8] = AssociatedTypeWitness;
  v5 = *(AssociatedTypeWitness - 8);
  v0[9] = v5;
  (*(v5 + 16))(v3, v1, AssociatedTypeWitness);
  v9 = (v2 + *v2);
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1D8F4AC50;
  v7 = v0[2];

  return v9(v7);
}

uint64_t sub_1D8F4AC50()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8F4AD84, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D8F4AD84()
{
  (*(v0[9] + 8))(v0[2], v0[8]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1D8F4ADF8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1D8D58924;

  return sub_1D8F4AABC(a1, a2, v9, v8, v6, v7);
}

uint64_t sub_1D8F4AEC0(uint64_t a1)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D8D5FF18;

  return sub_1D8F4A570(a1, v5, v6, v7, v8, v9, v1 + v4);
}

uint64_t Dictionary.init<A>(probablyUniqueKeysWithValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  (*(v12 + 16))(&v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v15, v13);
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v16 = sub_1D91780EC();
  (*(v12 + 8))(a1, a4);
  return v16;
}

uint64_t Dictionary.mapKeys<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a1;
  v21 = a2;
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = a8;
  v13[7] = sub_1D8F4B2FC;
  v13[8] = &v14;
  v8 = sub_1D91780DC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v22 = sub_1D8D175AC(sub_1D8F4B380, v13, v8, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);
  sub_1D91786FC();
  swift_getWitnessTable();
  return sub_1D917808C();
}

uint64_t sub_1D8F4B2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 24);
  (*(v4 + 56))(a3);
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, a4, v7);
}

uint64_t sub_1D8F4B380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 56);
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(a2, a2 + *(TupleTypeMetadata2 + 48), a1, a1 + v6);
}

uint64_t Dictionary.compactMapKeys<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1D91780DC();
  swift_getTupleTypeMetadata2();
  swift_getWitnessTable();
  sub_1D917843C();
  sub_1D91786FC();
  swift_getWitnessTable();
  return sub_1D917808C();
}

uint64_t sub_1D8F4B564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, double)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v23 = a2;
  v24 = a7;
  v25 = a8;
  v14 = sub_1D91791BC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v22 - v17;
  a3(a1, v16);
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = v24;
  v31 = a9;
  v32 = v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1D8D349E4(sub_1D8F4B7E0, v26, MEMORY[0x1E69E73E0], TupleTypeMetadata2, v20, v25);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1D8F4B708(uint64_t a1)
{
  v3 = *(v1 + 56);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_1D8F4B778(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB7300, &unk_1D91B9190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8F4B7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[7];
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return (*(*(v5 - 8) + 16))(a2 + v8, v7, v5);
}

uint64_t sub_1D8F4BA58(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8F4BAC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1D8F4BC08(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t FloatingPoint.clamped(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D91781AC();
  sub_1D9179CCC();
  sub_1D9179CBC();
  return (*(v3 + 8))(v5, a2);
}

uint64_t FloatingPoint.clamped(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1D9179CBC();
}

{
  return sub_1D9179CCC();
}

uint64_t static OptionSet.+= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  (*(v6 + 16))(v8, a2, AssociatedTypeWitness, v10);
  sub_1D917929C();
  return (*(v6 + 8))(v12, AssociatedTypeWitness);
}

uint64_t static OptionSet.-= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v4 = sub_1D91791BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  sub_1D91792AC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t Result.success.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(a1 + 16);
  v10 = *(v9 - 8);
  v11 = v10;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v10 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v7, a1);
  }

  else
  {
    v13 = *(a1 + 16);
    (*(v10 + 32))(a2, v7, v9);
    return (*(v11 + 56))(a2, 0, 1, v13);
  }
}

uint64_t Result.failure.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(a1 + 24);
  v10 = *(v9 - 8);
  v11 = v10;
  if (EnumCaseMultiPayload == 1)
  {
    v12 = *(a1 + 24);
    (*(v10 + 32))(a2, v7, v9);
    return (*(v11 + 56))(a2, 0, 1, v12);
  }

  else
  {
    (*(v10 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v7, a1);
  }
}

void *Result<>.init(success:error:)(char a1, void *a2)
{
  v4 = sub_1D917744C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    return 0;
  }

  else if (!a2)
  {
    v9 = v6;
    sub_1D917743C();
    v10 = sub_1D917741C();
    v11 = sub_1D9178D0C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D8CEC000, v10, v11, "A failed result was created without an error", v12, 2u);
      MEMORY[0x1DA72CB90](v12, -1, -1);
    }

    (*(v5 + 8))(v8, v9);
    sub_1D8F4C694();
    a2 = swift_allocError();
  }

  return a2;
}

unint64_t sub_1D8F4C694()
{
  result = qword_1ECAB7388;
  if (!qword_1ECAB7388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7388);
  }

  return result;
}

BOOL Result<>.successAndError.getter(void *a1, char a2)
{
  if (a2)
  {
    v3 = a1;
  }

  return (a2 & 1) == 0;
}

unint64_t sub_1D8F4C73C()
{
  result = qword_1ECAB7390;
  if (!qword_1ECAB7390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7390);
  }

  return result;
}

double Sequence.staggered()@<D0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = v3;
  v17[0] = a3;
  v6 = sub_1D917966C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - v8;
  v10 = *(a1 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v10 + 16);
  v15(v14, v4, a1, v12);
  v17[1] = sub_1D91784DC();
  (v15)(v14, v4, a1);
  sub_1D91784EC();
  swift_getAssociatedTypeWitness();
  sub_1D91786FC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D9179CDC();
  (*(v7 + 8))(v9, v6);

  return result;
}

uint64_t sub_1D8F4C9D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  swift_getAtKeyPath();
  (*(v7 + 16))(v9, v15, v6);
  sub_1D9178B4C();
  v16 = sub_1D9178B1C();
  v17 = *(v7 + 8);
  v17(v12, v6);
  v17(v15, v6);
  return v16 & 1;
}

unint64_t sub_1D8F4CBA8(unint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = a5 >> 1;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (result)
  {
    v6 = a5 >> 1;
    if ((a5 >> 1) - a4 < result)
    {
      goto LABEL_7;
    }
  }

  v6 = a4 + result;
  if (!__OFADD__(a4, result))
  {
    if (v5 < v6)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_7:
    if (v6 >= a4)
    {
      if (v5 >= a4)
      {
        return a2;
      }

      goto LABEL_13;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

Swift::String __swiftcall String.removingPrefix(_:)(Swift::String a1)
{
  v3 = v2;
  v4 = v1;
  v5 = sub_1D917839C();

  if (v5)
  {
    v6 = sub_1D91782EC();
    v7 = sub_1D8F4CCC0(v6, v4, v3);
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v4 = MEMORY[0x1DA729870](v7, v9, v11, v13);
    v3 = v14;
  }

  v15 = v4;
  v16 = v3;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

unint64_t sub_1D8F4CCC0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1D917830C();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1D91783EC();
}

BOOL String.containsVisibleText.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D917662C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = a1;
  v13[1] = a2;
  sub_1D91765FC();
  sub_1D8D447DC();
  v8 = sub_1D917920C();
  v10 = v9;
  (*(v5 + 8))(v7, v4);

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  return v11 != 0;
}

uint64_t String.init(playedOn:dateString:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D9176FDC();
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176FAC();
  v11 = sub_1D9176F3C();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    v13 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    v14 = [v13 isLessThanWeekOld];

    if (v14)
    {
      if (qword_1EDCD5F00 == -1)
      {
        goto LABEL_9;
      }
    }

    else if (qword_1EDCD5F00 == -1)
    {
LABEL_9:
      sub_1D917693C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1D9189080;
      *(v15 + 56) = MEMORY[0x1E69E6158];
      *(v15 + 64) = sub_1D8D34978();
      *(v15 + 32) = a2;
      *(v15 + 40) = a3;
      v12 = sub_1D917823C();

      goto LABEL_10;
    }

    swift_once();
    goto LABEL_9;
  }

  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  v12 = sub_1D917693C();
LABEL_10:
  v16 = sub_1D9176E3C();
  (*(*(v16 - 8) + 8))(a1, v16);
  return v12;
}

uint64_t String.capitalizedFirstLetter.getter(uint64_t a1, unint64_t a2)
{

  sub_1D8F4D338(1, a1, a2);

  sub_1D8E7F724();
  v4 = sub_1D917921C();

  sub_1D8F4CCC0(1uLL, a1, a2);

  sub_1D8F4D3D4();
  sub_1D917831C();

  return v4;
}

uint64_t sub_1D8F4D2A4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
    return a2;
  }

  return result;
}

uint64_t sub_1D8F4D338(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D917830C();

    return sub_1D91783EC();
  }

  return result;
}

unint64_t sub_1D8F4D3D4()
{
  result = qword_1ECAB01D0;
  if (!qword_1ECAB01D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB01D0);
  }

  return result;
}

uint64_t sub_1D8F4D428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26[-1] - v12;
  v27[0] = a4;
  v27[1] = a5;
  sub_1D8CF5C74(a3, &v26[-1] - v12);
  v14 = sub_1D917886C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_1D8CF5CE4(v13);
  }

  else
  {
    sub_1D917885C();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D917874C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D917829C();
      sub_1D8F4DD00(v21 + 32, v27, a6, v26);

      v22 = v26[0];
      sub_1D8CF5CE4(a3);

      return v22;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1D8CF5CE4(a3);
  v23 = swift_allocObject();
  v23[2] = a6;
  v23[3] = a4;
  v23[4] = a5;
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1D8F4D698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24[-1] - v11;
  v24[5] = a4;
  v24[6] = a5;
  sub_1D8CF5C74(a3, &v24[-1] - v11);
  v13 = sub_1D917886C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D8CF5CE4(v12);
  }

  else
  {
    sub_1D917885C();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1D917874C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1D917829C();
      sub_1D8F4DDEC(v20 + 32, v24);

      v21 = v24[0];
      sub_1D8CF5CE4(a3);

      return v21;
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

  sub_1D8CF5CE4(a3);
  if (v19 | v17)
  {
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v17;
    v24[4] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1D8F4D8DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8F4D954()
{
  v1 = *(v0 + 232);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  v3 = v0;
  if (swift_dynamicCast())
  {
    v3 = (v0 + 192);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    v4 = sub_1D917737C();
    sub_1D91773DC();
    v5 = sub_1D9178F4C();
    result = sub_1D917918C();
    if ((result & 1) == 0)
    {
      goto LABEL_10;
    }

    v7 = *(v0 + 72);
    if (*(v0 + 240))
    {
      if (v7 >> 32)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if ((*(v0 + 72) & 0xFFFFF800) == 0xD800)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >> 16 > 0x10)
      {
        goto LABEL_31;
      }

      v7 = (v0 + 32);
    }

    else if (!v7)
    {
      __break(1u);
      goto LABEL_6;
    }

    v9 = (v0 + 152);
    v8 = *(v0 + 152);
    v11 = *(v0 + 128);
    v10 = *(v0 + 136);

    sub_1D917740C();

    if ((*(v10 + 88))(v8, v11) == *MEMORY[0x1E69E93E8])
    {
LABEL_22:
      v16 = *v3;
      v12 = "[Error] Interval already ended";
LABEL_25:
      v17 = swift_slowAlloc();
      *v17 = 0;
      v23 = v16;
      v18 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v4, v5, v18, v7, v12, v17, 2u);
      MEMORY[0x1DA72CB90](v17, -1, -1);
      goto LABEL_26;
    }

    v12 = "CANCELLED";
LABEL_24:
    v16 = *v3;
    (*(*(v0 + 136) + 8))(*v9, *(v0 + 128));
    goto LABEL_25;
  }

LABEL_6:
  v3 += 23;
  v4 = sub_1D917737C();
  sub_1D91773DC();
  v5 = sub_1D9178F4C();
  result = sub_1D917918C();
  if (result)
  {
    v7 = *(v0 + 72);
    if ((*(v0 + 240) & 1) == 0)
    {
      if (!v7)
      {
        __break(1u);
        goto LABEL_10;
      }

      goto LABEL_21;
    }

    if (!(v7 >> 32))
    {
      if ((*(v0 + 72) & 0xFFFFF800) == 0xD800)
      {
LABEL_34:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 24);
LABEL_21:
        v9 = (v0 + 144);
        v13 = *(v0 + 144);
        v14 = *(v0 + 128);
        v15 = *(v0 + 136);

        sub_1D917740C();

        if ((*(v15 + 88))(v13, v14) == *MEMORY[0x1E69E93E8])
        {
          goto LABEL_22;
        }

        v12 = "FAILURE";
        goto LABEL_24;
      }

      goto LABEL_32;
    }

    goto LABEL_30;
  }

LABEL_10:
  v23 = *v3;
LABEL_26:
  v19 = v4;
  v20 = *(v0 + 176);
  v21 = *(v0 + 168);

  (*(v20 + 8))(v23, v21);
  swift_willThrow();

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1D8F4DD00@<X0>(uint64_t result@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (result)
  {
    v10 = *a5;
    v9 = a5[1];
    v11 = swift_allocObject();
    v11[2] = a6;
    v11[3] = v10;
    v11[4] = v9;

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8F4DDEC@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D8F4DEA8(uint64_t (*a1)(_BYTE *)@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v7 = a2 + 64;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      sub_1D8D41388(*(a2 + 48) + 264 * (__clz(__rbit64(v10)) | (v13 << 6)), __src);
      memcpy(__dst, __src, sizeof(__dst));
      v14 = a1(__dst);
      if (v3)
      {
        sub_1D8D58578(__dst);

        return;
      }

      if (v14)
      {
        break;
      }

      v10 &= v10 - 1;
      sub_1D8D58578(__dst);
      v12 = v13;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    memcpy(a3, __dst, 0x108uLL);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        *(a3 + 32) = 0;
        a3[14] = 0u;
        a3[15] = 0u;
        a3[12] = 0u;
        a3[13] = 0u;
        a3[10] = 0u;
        a3[11] = 0u;
        a3[8] = 0u;
        a3[9] = 0u;
        a3[6] = 0u;
        a3[7] = 0u;
        a3[4] = 0u;
        a3[5] = 0u;
        a3[2] = 0u;
        a3[3] = 0u;
        *a3 = 0u;
        a3[1] = 0u;
        return;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void *sub_1D8F4E034(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA72AA90](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

void sub_1D8F4E1A8(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v25 = a5;
  v26 = a1;
  v24 = a3(0);
  v27 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a2 + 64);
  v17 = (v14 + 63) >> 6;
  v28 = a2;

  v18 = 0;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
LABEL_8:
      sub_1D8F51B70(*(v28 + 48) + *(v27 + 72) * (__clz(__rbit64(v16)) | (v19 << 6)), v12, a4);
      sub_1D8EDC968(v12, v9, a4);
      v20 = v26(v9);
      if (v5)
      {
        sub_1D8F51BD8(v9, a4);

        return;
      }

      if (v20)
      {
        break;
      }

      v16 &= v16 - 1;
      sub_1D8F51BD8(v9, a4);
      v18 = v19;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    v23 = v25;
    sub_1D8EDC968(v9, v25, a4);
    v22 = v23;
    v21 = 0;
LABEL_13:
    (*(v27 + 56))(v22, v21, 1, v24);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        v21 = 1;
        v22 = v25;
        goto LABEL_13;
      }

      v16 = *(v13 + 8 * v19);
      ++v18;
      if (v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D8F4E3F4(uint64_t (*a1)(unsigned int *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    while (1)
    {
      v8 = *v6++;
      v7 = v8;
      v11 = v8;
      result = a1(&v11, a2);
      if (v3)
      {
        break;
      }

      if (result)
      {
        v10 = 0;
        return v7 | (v10 << 32);
      }

      if (!--v4)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v7 = 0;
    v10 = 1;
    return v7 | (v10 << 32);
  }

  return result;
}

void URL.markAsPurgeable(urgency:)(uint64_t a1, double a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    sub_1D8F4E764();
  }

  else
  {
    sub_1D8F4E4E8(a1);
  }
}

void URL.isPodcastsPurgeable(with:)(int a1)
{
  sub_1D8F4EC88();
  if (!v1 && a1 < 0)
  {
    __break(1u);
  }
}

void sub_1D8F4E4E8(int a1)
{
  v3 = v1;
  v20[11] = *MEMORY[0x1E69E9840];
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CF2154(0, &unk_1EDCD5B80, 0x1E696AC00);
  v9 = *(v6 + 16);
  v9(v8, v3, v5);
  v10 = sub_1D8EFA8D8(v8);
  if (!v2)
  {
    v11 = v10;
    v12 = [v10 fileDescriptor];
    if (a1 < 0)
    {
      __break(1u);
    }

    v20[0] = a1 | 0x10006u;
    v13 = ffsctl(v12, 0xC0084A44uLL, v20, 0);
    if (v13)
    {
      v14 = v13;
      sub_1D8CF2154(0, &qword_1ECAAFC88, 0x1E696ABC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D9189080;
      *(inited + 32) = sub_1D917820C();
      *(inited + 40) = v16;
      *(inited + 72) = v5;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
      v9(boxed_opaque_existential_0, v3, v5);
      v18 = sub_1D8E2696C(inited);
      swift_setDeallocating();
      sub_1D8F51B08(inited + 32);
      v21.value._rawValue = v18;
      NSError.init(fsctlCode:userInfo:)(v19, v14, v21);
      swift_willThrow();
      [v11 closeFile];
    }

    else
    {
      [v11 closeFile];
    }
  }
}

void sub_1D8F4E764()
{
  v2 = v0;
  v18[11] = *MEMORY[0x1E69E9840];
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CF2154(0, &unk_1EDCD5B80, 0x1E696AC00);
  v7 = *(v4 + 16);
  v7(v6, v2, v3);
  v8 = sub_1D8EFA8D8(v6);
  if (!v1)
  {
    v9 = v8;
    v10 = [v8 fileDescriptor];
    v18[0] = 0;
    v11 = ffsctl(v10, 0xC0084A44uLL, v18, 0);
    if (v11)
    {
      v12 = v11;
      sub_1D8CF2154(0, &qword_1ECAAFC88, 0x1E696ABC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D9189080;
      *(inited + 32) = sub_1D917820C();
      *(inited + 40) = v14;
      *(inited + 72) = v3;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
      v7(boxed_opaque_existential_0, v2, v3);
      v16 = sub_1D8E2696C(inited);
      swift_setDeallocating();
      sub_1D8F51B08(inited + 32);
      v19.value._rawValue = v16;
      NSError.init(fsctlCode:userInfo:)(v17, v12, v19);
      swift_willThrow();
    }

    [v9 closeFile];
  }
}

void __swiftcall NSError.init(fsctlCode:userInfo:)(NSError *__return_ptr retstr, Swift::Int32 fsctlCode, Swift::OpaquePointer_optional userInfo)
{
  v4 = 0xD00000000000001ALL;
  if (fsctlCode <= 19)
  {
    if (fsctlCode > 12)
    {
      if (fsctlCode == 13)
      {
        v5 = "slating the pathname.";
        v4 = 0xD00000000000003ELL;
        if (!userInfo.value._rawValue)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      if (fsctlCode == 14)
      {
        v5 = "o the file system";
        v4 = 0xD000000000000029;
        if (!userInfo.value._rawValue)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }
    }

    else
    {
      if (fsctlCode == 2)
      {
        v5 = "a component of the path prefix";
        v4 = 0xD00000000000001DLL;
        if (!userInfo.value._rawValue)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      if (fsctlCode == 5)
      {
        v5 = "Request or data is invalid.";
        v4 = 0xD000000000000041;
        if (!userInfo.value._rawValue)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }
    }

LABEL_29:
    v5 = "ODAY";
    if (userInfo.value._rawValue)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (fsctlCode <= 61)
  {
    if (fsctlCode == 20)
    {
      v5 = "tal allowable length";
      v4 = 0xD000000000000031;
      if (!userInfo.value._rawValue)
      {
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    if (fsctlCode == 22)
    {
      v5 = "An unknown error occurred.";
      v4 = 0xD00000000000001BLL;
      if (!userInfo.value._rawValue)
      {
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (fsctlCode != 62)
  {
    if (fsctlCode == 63)
    {
      v5 = "The named file does not exist";
      v4 = 0xD000000000000074;
      if (!userInfo.value._rawValue)
      {
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    goto LABEL_29;
  }

  v5 = "nts to an invalid address";
  v4 = 0xD000000000000045;
  if (!userInfo.value._rawValue)
  {
LABEL_27:
    sub_1D8E2696C(MEMORY[0x1E69E7CC0]);
  }

LABEL_28:
  v6 = sub_1D917820C();
  v8 = v7;
  v15 = MEMORY[0x1E69E6158];
  *&v14 = v4;
  *(&v14 + 1) = v5 | 0x8000000000000000;
  sub_1D8D65618(&v14, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D8F50858(v13, v6, v8, isUniquelyReferenced_nonNull_native, sub_1D8D33C70, sub_1D8F86F90, sub_1D900C074, sub_1D90BA628);

  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = *MEMORY[0x1E696A798];
  v12 = sub_1D917802C();

  [v10 initWithDomain:v11 code:fsctlCode userInfo:v12];
}

void sub_1D8F4EC88()
{
  v2 = v0;
  v17[11] = *MEMORY[0x1E69E9840];
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = 65542;
  sub_1D8CF2154(0, &unk_1EDCD5B80, 0x1E696AC00);
  v7 = *(v4 + 16);
  v7(v6, v2, v3);
  v8 = sub_1D8EFA8D8(v6);
  if (!v1)
  {
    v9 = v8;
    v10 = ffsctl([v8 fileDescriptor], *"GJ\b@", v17, 0);
    if (v10)
    {
      v11 = v10;
      sub_1D8CF2154(0, &qword_1ECAAFC88, 0x1E696ABC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D9189080;
      *(inited + 32) = sub_1D917820C();
      *(inited + 40) = v13;
      *(inited + 72) = v3;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
      v7(boxed_opaque_existential_0, v2, v3);
      v15 = sub_1D8E2696C(inited);
      swift_setDeallocating();
      sub_1D8F51B08(inited + 32);
      v18.value._rawValue = v15;
      NSError.init(fsctlCode:userInfo:)(v16, v11, v18);
      swift_willThrow();
    }

    else
    {
    }
  }
}

BOOL URL.isPodcastsPurgeable(with:flags:)(_BOOL8 result, int a2)
{
  if (result & 0x80000000)
  {
    __break(1u);
  }

  else
  {
    return (a2 & 6) != 0 && result & a2;
  }

  return result;
}

void URL.podcastsPurgeableLevel()()
{
  sub_1D8F4EC88();
  if (!v1)
  {
    MEMORY[0x1EEE9AC00](v2);
    v4[2] = v0;
    v4[3] = v3;
    sub_1D8F4E3F4(sub_1D8F51A20, v4, &unk_1F545DFF0);
  }
}

uint64_t sub_1D8F4EF7C(uint64_t a1, void **a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D8F0671C(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D8F81DEC();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D9003700(v14, a3 & 1);
    v9 = sub_1D8F0671C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {
    sub_1D90B9BD8(v9, a2, a1, v19);
    return sub_1D8E3AA94(a2, &v21);
  }
}

void *sub_1D8F4F0AC(uint64_t a1, double *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D8F06844(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1D8F81FB4();
      goto LABEL_7;
    }

    sub_1D9003A40(v13, a3 & 1);
    v18 = sub_1D8F06844(a2);
    if ((v14 & 1) == (v19 & 1))
    {
      v10 = v18;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1D8D41388(a2, v20);
      return sub_1D90B9C30(v10, v20, a1, v16);
    }

LABEL_15:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v16[7] + 8 * v10) = a1;
}

id sub_1D8F4F1EC(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1D8F068B0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1D8F82144();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1D9003D04(v13, a3 & 1);
    v8 = sub_1D8F068B0(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_1D8CF2154(0, &qword_1EDCD76D0, 0x1E696AEC0);
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(*(v18 + 56) + 8 * v8) = a1;
  }

  else
  {
    sub_1D8D1E2A0(v8, a2, a1, v18);

    return a2;
  }
}

void sub_1D8F4F334(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1D8F06994(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1D8F82428();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1D9003F74(v13, a3 & 1);
    v8 = sub_1D8F06994(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for FairPlayAsset();
      sub_1D9179CFC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = *(v18 + 56);
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;
  }

  else
  {
    sub_1D8D1E2A0(v8, a2, a1, v18);

    v21 = a2;
  }
}

void sub_1D8F4F46C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D8D33C70(a2, a3);
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
      sub_1D8F8258C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D90041E4(v16, a4 & 1);
    v11 = sub_1D8D33C70(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1D9179CFC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D8D41908(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1D8F4F634(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D8D490F4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1D8F82724();
      goto LABEL_7;
    }

    sub_1D90044B4(v13, a3 & 1);
    v24 = sub_1D8D490F4(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_1D917653C();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1D90B9CAC(v10, a2, a1, v16);
}

uint64_t sub_1D8F4F79C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D917653C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D8F069D8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_1D8F8298C();
    goto LABEL_7;
  }

  sub_1D9004800(result, a3 & 1);
  result = sub_1D8F069D8(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1D90B9D58(v14, v11, a1, v20);
}

uint64_t sub_1D8F4F938(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D8D490F4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D8F82BFC();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D9004BC0(v14, a3 & 1);
    v9 = sub_1D8D490F4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v9) = a1;
  }

  else
  {

    return sub_1D8D1E2A0(v9, a2, a1, v19);
  }
}

uint64_t sub_1D8F4FA5C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D9176EAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D8D93AB0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1D8F82C10();
      goto LABEL_7;
    }

    sub_1D9004BD4(v17, a3 & 1);
    v22 = sub_1D8D93AB0(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1D8D940B8(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

unint64_t sub_1D8F4FC28(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D8F06AAC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1D8F82E90();
      goto LABEL_7;
    }

    sub_1D9004FB0(v13, a3 & 1);
    v18 = sub_1D8F06AAC(a2);
    if ((v14 & 1) == (v19 & 1))
    {
      v10 = v18;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1D8EC8C5C(a2, v20);
      return sub_1D90B9E10(v10, v20, a1, v16);
    }

LABEL_15:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v16[7] + 8 * v10) = a1;
}

uint64_t sub_1D8F4FD68(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for TTMLRequest(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1D8F06B6C(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1D8F83038();
      goto LABEL_7;
    }

    sub_1D90052B8(v16, a3 & 1);
    v21 = sub_1D8F06B6C(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1D8F51B70(a2, v10, type metadata accessor for TTMLRequest);
      return sub_1D90B9E70(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

uint64_t sub_1D8F4FF0C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ShazamSignatureRequest(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1D8F06B18(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1D8F83074();
      goto LABEL_7;
    }

    sub_1D9005930(v16, a3 & 1);
    v21 = sub_1D8F06B18(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1D8F51B70(a2, v10, type metadata accessor for ShazamSignatureRequest);
      return sub_1D90B9E9C(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

void sub_1D8F50170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1D8D33C70(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1D8F83318();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1D9005FD0(v18, a5 & 1);
    v13 = sub_1D8D33C70(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_1D9179CFC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_1D90B9F74(v13, a3, a4, a1, a2, v23);
  }
}

uint64_t sub_1D8F50314(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D8D490F4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for StoreFeedUpdater.Update(0);
      return sub_1D8F51AA0(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for StoreFeedUpdater.Update);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1D8F83A44();
    goto LABEL_7;
  }

  sub_1D9006508(v13, a3 & 1);
  v20 = sub_1D8D490F4(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1D90B9FC4(v10, a2, a1, v16);
}

uint64_t sub_1D8F50468(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D8D490F4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for StoreFeedUpdater.Retry(0);
      return sub_1D8F51AA0(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for StoreFeedUpdater.Retry);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1D8F83A94();
    goto LABEL_7;
  }

  sub_1D9006544(v13, a3 & 1);
  v20 = sub_1D8D490F4(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1D90B9FF0(v10, a2, a1, v16);
}

void sub_1D8F505BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D8F067D4(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D8F83CFC();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D900689C(v14, a3 & 1);
    v9 = sub_1D8F067D4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_1D9179CFC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    sub_1D90BA0C4(v9, a2, a1, v19);
  }
}

void sub_1D8F506E0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D8D94734(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D8F83E6C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D9006FE0(v14, a3 & 1);
    v9 = sub_1D8D94734(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_1D9179CFC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  if (v15)
  {
    *(*(*v4 + 56) + 8 * v9) = a1;
  }

  else
  {

    sub_1D90BA624();
  }
}

void sub_1D8F50858(_OWORD *a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t, uint64_t), void (*a6)(void), void (*a7)(uint64_t, void), void (*a8)(uint64_t, uint64_t, uint64_t, _OWORD *, uint64_t))
{
  v12 = v8;
  v17 = *v8;
  v18 = a5(a2, a3);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_16;
  }

  v24 = v19;
  v25 = *(v17 + 24);
  if (v25 < v23 || (a4 & 1) == 0)
  {
    if (v25 >= v23 && (a4 & 1) == 0)
    {
      v26 = v18;
      a6();
      v18 = v26;
      goto LABEL_8;
    }

    a7(v23, a4 & 1);
    v18 = a5(a2, a3);
    if ((v24 & 1) != (v27 & 1))
    {
LABEL_16:
      sub_1D9179CFC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v28 = *v12;
  if (v24)
  {
    v29 = (*(v28 + 56) + 32 * v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);

    sub_1D8D65618(a1, v29);
  }

  else
  {
    a8(v18, a2, a3, a1, v28);
  }
}

_OWORD *sub_1D8F509E8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D8D6550C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1D8F842F0();
      goto LABEL_7;
    }

    sub_1D90078EC(v13, a3 & 1);
    v19 = sub_1D8D6550C(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1D8D9A2A4(a2, v21);
      return sub_1D90BA1B8(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return sub_1D8D65618(a1, v17);
}

uint64_t sub_1D8F50B34(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D8F06EDC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1D8F84638();
      goto LABEL_7;
    }

    sub_1D9007E60(v13, a3 & 1);
    v24 = sub_1D8F06EDC(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_1D9176E3C();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1D90BA234(v10, a2, a1, v16);
}

void sub_1D8F50C9C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D8D490F4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D8F848A0();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D90081E4(v14, a3 & 1);
    v9 = sub_1D8D490F4(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_1D9179CFC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v9) = a1;
  }

  else
  {

    sub_1D8D1E2A0(v9, a2, a1, v19);
  }
}

void sub_1D8F50DC0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D8F06F60(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D8F84C94();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D9008474(v14, a3 & 1);
    v9 = sub_1D8F06F60(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_1D9179CFC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    sub_1D8D39254(v9, a2, a1, v19);
  }
}

void sub_1D8F50EE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D8F06F8C(a3);
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
      sub_1D8F84F78();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D9008C8C(v16, a4 & 1);
    v11 = sub_1D8F06F8C(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1D9179CFC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    sub_1D90BA2E0(v11, a3, a1, a2, v21);
  }
}

void sub_1D8F5101C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D8F06F8C(a3);
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
      sub_1D8F850E4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D900912C(v16, a4 & 1);
    v11 = sub_1D8F06F8C(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1D9179CFC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    sub_1D90BA2E0(v11, a3, a1, a2, v21);
  }
}

uint64_t sub_1D8F51154(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1D8F0712C(a2, a3, a4 & 1);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1D8F8566C();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1D9009D7C(v18, a5 & 1);
    v13 = sub_1D8F0712C(a2, a3, a4 & 1);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;
  }

  else
  {
    sub_1D90BA328(v13, a2, a3, a4 & 1, a1, v23);

    return sub_1D8DB5EC8(a2, a3, a4 & 1);
  }
}

uint64_t sub_1D8F512B4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D8D1AC44(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D8F857E8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D900A06C(v14, a3 & 1);
    v9 = sub_1D8D1AC44(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v9) = a1;
  }

  else
  {

    return sub_1D8D1E2A0(v9, a2, a1, v19);
  }
}

void sub_1D8F513D8(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1D8D698BC(a2);
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
      sub_1D8F85984();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1D900A080(v13, a3 & 1);
    v8 = sub_1D8D698BC(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
      sub_1D9179CFC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  else
  {
    sub_1D8D39254(v8, a2, a1, v18);

    v19 = a2;
  }
}

uint64_t sub_1D8F51520(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1D8D1AC44(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_1D8F85C98();
      result = v17;
      goto LABEL_8;
    }

    sub_1D900A760(v14, a3 & 1);
    result = sub_1D8D1AC44(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + result) = a1;
  }

  else
  {

    return sub_1D8D69CB0(result, a2, a1, v19);
  }

  return result;
}

uint64_t sub_1D8F5162C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D8D1AC44(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for EpisodePlayState(0);
      return sub_1D8F51AA0(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for EpisodePlayState);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1D8F86124();
    goto LABEL_7;
  }

  sub_1D900A9E0(v13, a3 & 1);
  v20 = sub_1D8D1AC44(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1D90BA37C(v10, a2, a1, v16);
}

void sub_1D8F51780(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D8F0726C(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D8F86728();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D900B398(v14, a3 & 1);
    v9 = sub_1D8F0726C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_1D9179CFC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    sub_1D90BA108(v9, a2, a1, v19);
  }
}

void sub_1D8F518A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_1D8D33C70(a5, a6);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = v16[3];
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 >= v22 && (a7 & 1) == 0)
    {
      v25 = v17;
      sub_1D8F86884();
      v17 = v25;
      goto LABEL_8;
    }

    sub_1D900B648(v22, a7 & 1);
    v17 = sub_1D8D33C70(a5, a6);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      sub_1D9179CFC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v27 = *v8;
  if (v23)
  {
    v28 = (v27[7] + 32 * v17);
    *v28 = a1;
    v28[1] = a2;
    v28[2] = a3;
    v28[3] = a4;
  }

  else
  {
    sub_1D90BA424(v17, a5, a6, a1, a2, a3, a4, v27);
  }
}

unsigned int *sub_1D8F51A20(unsigned int *result)
{
  v2 = *result;
  if ((v2 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else if ((*(v1 + 24) & v2) != 0)
  {
    return ((*(v1 + 24) & 6) != 0);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1D8F51AA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8F51B08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E8, &qword_1D9193650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8F51B70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8F51BD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1D8F51C38(uint64_t a1, double a2)
{
  v3 = sub_1D9177FDC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D75620(&qword_1EDCD5C50, MEMORY[0x1E69666B0], MEMORY[0x1E69666B8]);
  v7 = sub_1D917840C();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1D8D41BE0(0, v7 & ~(v7 >> 63), 0);
  v8 = v35;
  (*(v4 + 16))(v6, a1, v3);
  result = sub_1D91783FC();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = v34;
    if (v7)
    {
      v11 = v33;
      *&v32 = *(v33 + 16);
      v31 = xmmword_1D9189080;
      v12 = v34;
      while (v32 != v12)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v12 >= *(v11 + 16))
        {
          goto LABEL_22;
        }

        v13 = *(v11 + 32 + v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        v14 = swift_allocObject();
        *(v14 + 16) = v31;
        *(v14 + 56) = MEMORY[0x1E69E7508];
        *(v14 + 64) = MEMORY[0x1E69E7558];
        *(v14 + 32) = v13;
        result = sub_1D917823C();
        v35 = v8;
        v17 = *(v8 + 16);
        v16 = *(v8 + 24);
        if (v17 >= v16 >> 1)
        {
          v30 = result;
          v19 = v15;
          sub_1D8D41BE0((v16 > 1), v17 + 1, 1);
          v15 = v19;
          result = v30;
          v8 = v35;
        }

        *(v8 + 16) = v17 + 1;
        v18 = v8 + 16 * v17;
        *(v18 + 32) = result;
        *(v18 + 40) = v15;
        ++v12;
        if (!--v7)
        {
          v34 = v12;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v12 = v34;
LABEL_12:
      v20 = v33;
      v21 = *(v33 + 16);
      if (v12 == v21)
      {
LABEL_13:

        return v8;
      }

      v32 = xmmword_1D9189080;
      while (v12 < v21)
      {
        v22 = *(v20 + 32 + v12);
        v34 = v12 + 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        v23 = swift_allocObject();
        *(v23 + 16) = v32;
        *(v23 + 56) = MEMORY[0x1E69E7508];
        *(v23 + 64) = MEMORY[0x1E69E7558];
        *(v23 + 32) = v22;
        result = sub_1D917823C();
        v35 = v8;
        v26 = *(v8 + 16);
        v25 = *(v8 + 24);
        if (v26 >= v25 >> 1)
        {
          v28 = result;
          v29 = v24;
          sub_1D8D41BE0((v25 > 1), v26 + 1, 1);
          v24 = v29;
          result = v28;
          v8 = v35;
        }

        *(v8 + 16) = v26 + 1;
        v27 = v8 + 16 * v26;
        *(v27 + 32) = result;
        *(v27 + 40) = v24;
        v21 = *(v20 + 16);
        v12 = v34;
        if (v34 == v21)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::String_optional __swiftcall URL.md5()()
{
  v0 = sub_1D9177FCC();
  v24 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D9177FDC();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D917825C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176BCC();
  sub_1D917824C();
  v10 = sub_1D917821C();
  v12 = v11;

  (*(v7 + 8))(v9, v6);
  v13 = 0;
  v14 = 0;
  if (v12 >> 60 != 15)
  {
    sub_1D8D75620(&unk_1EDCD5C58, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
    sub_1D9177F9C();
    sub_1D8D752C4(v10, v12);
    sub_1D8D75318(v10, v12, v2);
    sub_1D8D75668(v10, v12);
    sub_1D9177F8C();
    v15 = (*(v24 + 8))(v2, v0);
    v16 = sub_1D8F51C38(v5, v15);
    (*(v22 + 8))(v5, v23);
    v25 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8D72B0C();
    v17 = sub_1D917817C();
    v19 = v18;
    sub_1D8D75668(v10, v12);

    v14 = v19;
    v13 = v17;
  }

  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

Swift::Int_optional __swiftcall URL.volumeAvailableCapacity()()
{
  v0 = sub_1D8DB9BC0(MEMORY[0x1E695DD60], MEMORY[0x1E69688B0], "Failed to query volumeAvailableCapacityKey: %s", v2);
  result.value = v0;
  result.is_nil = v1;
  return result;
}

Swift::Int_optional __swiftcall URL.volumeTotalCapacity()()
{
  v0 = sub_1D8DB9BC0(MEMORY[0x1E695DE98], MEMORY[0x1E69688A0], "Failed to query volumeTotalCapacityKey: %s", v2);
  result.value = v0;
  result.is_nil = v1;
  return result;
}

Swift::Bool __swiftcall URL.isVolumeAvailableCapacityForOpportunisticUsageAbove(threshold:)(Swift::Int64_optional threshold)
{
  is_nil = threshold.is_nil;
  value = threshold.value;
  v5 = URL.volumeAvailableCapacityForOpportunisticUsage()();
  if (is_nil)
  {
    v3 = 0;
  }

  else
  {
    v3 = value;
  }

  return v5.is_nil || v3 < v5.value;
}

Swift::Bool __swiftcall URL.isVolumeAvailableCapacityAbove(threshold:)(Swift::Int64_optional threshold)
{
  is_nil = threshold.is_nil;
  value = threshold.value;
  v5 = URL.volumeAvailableCapacity()();
  if (is_nil)
  {
    v3 = 0;
  }

  else
  {
    v3 = value;
  }

  return v5.is_nil || v3 < v5.value;
}

uint64_t URL.hasiPodLibraryScheme.getter()
{
  v0 = sub_1D9176BEC();
  if (v1)
  {
    if (v0 == 0x62696C2D646F7069 && v1 == 0xEC00000079726172)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_1D9179ACC();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t URL.contained(within:)(uint64_t a1)
{
  sub_1D9176BCC();
  sub_1D9176BCC();
  v1 = sub_1D917839C();

  return v1 & 1;
}

uint64_t FilePath.replacingRoot(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = sub_1D917747C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7398, &qword_1D91970A8);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB73A0, &qword_1D91970B0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v38 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v40 = &v32[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32[-v16];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32[-v19];
  v42 = v2;
  sub_1D917748C();
  v21 = *(v5 + 16);
  v39 = a1;
  v36 = v21;
  v37 = v5 + 16;
  v21(v17, a1, v4);
  v35 = *(v5 + 56);
  v35(v17, 0, 1, v4);
  v22 = *(v8 + 56);
  sub_1D8F52984(v20, v10);
  sub_1D8F52984(v17, &v10[v22]);
  v23 = *(v5 + 48);
  if (v23(v10, 1, v4) == 1)
  {
    sub_1D8D08A50(v17, &qword_1ECAB73A0, &qword_1D91970B0);
    sub_1D8D08A50(v20, &qword_1ECAB73A0, &qword_1D91970B0);
    v24 = v23(&v10[v22], 1, v4);
    v25 = v42;
    if (v24 == 1)
    {
      sub_1D8D08A50(v10, &qword_1ECAB73A0, &qword_1D91970B0);
LABEL_8:
      v29 = v38;
      v36(v38, v39, v4);
      v35(v29, 0, 1, v4);
      sub_1D917749C();
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_1D8F52984(v10, v40);
  if (v23(&v10[v22], 1, v4) == 1)
  {
    sub_1D8D08A50(v17, &qword_1ECAB73A0, &qword_1D91970B0);
    sub_1D8D08A50(v20, &qword_1ECAB73A0, &qword_1D91970B0);
    (*(v5 + 8))(v40, v4);
    v25 = v42;
LABEL_6:
    sub_1D8D08A50(v10, &qword_1ECAB7398, &qword_1D91970A8);
    goto LABEL_9;
  }

  v26 = v34;
  (*(v5 + 32))(v34, &v10[v22], v4);
  sub_1D8F529F4();
  v27 = v40;
  v33 = sub_1D91781BC();
  v28 = *(v5 + 8);
  v28(v26, v4);
  sub_1D8D08A50(v17, &qword_1ECAB73A0, &qword_1D91970B0);
  sub_1D8D08A50(v20, &qword_1ECAB73A0, &qword_1D91970B0);
  v28(v27, v4);
  sub_1D8D08A50(v10, &qword_1ECAB73A0, &qword_1D91970B0);
  v25 = v42;
  if (v33)
  {
    goto LABEL_8;
  }

LABEL_9:
  v30 = sub_1D91774DC();
  return (*(*(v30 - 8) + 32))(v41, v25, v30);
}

uint64_t sub_1D8F52984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB73A0, &qword_1D91970B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D8F529F4()
{
  result = qword_1ECAB73A8;
  if (!qword_1ECAB73A8)
  {
    sub_1D917747C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB73A8);
  }

  return result;
}

uint64_t FilePath.removingPrefix(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D917746C();
  v5 = sub_1D91774DC();
  v8 = *(v5 - 8);
  (*(v8 + 8))(a1, v5);
  v6 = *(v8 + 32);

  return v6(a2, v2, v5);
}

uint64_t FilePath.fileType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CA8, &qword_1D91949D8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_1D917720C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1D91774CC();
  if (v6)
  {
    sub_1D91771FC();
    v7 = sub_1D91772BC();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    return sub_1D917724C();
  }

  else
  {
    v9 = sub_1D91772BC();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }
}

uint64_t FilePath.conforms(to:)(uint64_t a1, double a2)
{
  v2 = sub_1D917720C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CA8, &qword_1D91949D8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  sub_1D91774CC();
  if (!v9)
  {
    v13 = sub_1D91772BC();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    goto LABEL_5;
  }

  sub_1D91771FC();
  v10 = sub_1D91772BC();
  v11 = *(v10 - 8);
  (*(v11 + 56))(v5, 1, 1, v10);
  sub_1D917724C();
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
LABEL_5:
    sub_1D8D08A50(v8, &qword_1ECAB6CA8, &qword_1D91949D8);
    v12 = 0;
    return v12 & 1;
  }

  v12 = sub_1D91772AC();
  (*(v11 + 8))(v8, v10);
  return v12 & 1;
}

uint64_t ChannelUpdaterUtil.__allocating_init(contextProvider:)(void *a1)
{
  v2 = swift_allocObject();
  ChannelUpdaterUtil.init(contextProvider:)(a1);
  return v2;
}

void *ChannelUpdaterUtil.init(contextProvider:)(void *a1)
{
  if (qword_1EDCD0990 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDCD0998;
  v1[3] = qword_1EDCD0998;
  v4 = v3;
  v1[2] = [a1 importContext];
  v5 = v1[3];
  v6 = objc_allocWithZone(type metadata accessor for MediaRequestController());
  v7 = v5;
  v8 = [v6 init];
  swift_unknownObjectRelease();
  v9 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_responseQueue;
  swift_beginAccess();
  v10 = *&v8[v9];
  *&v8[v9] = v7;

  v1[4] = v8;
  return v1;
}

uint64_t sub_1D8F53014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D9177E0C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9177E9C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = *(v4 + 24);
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  aBlock[4] = sub_1D8F53404;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_38;
  v17 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v19[1] = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v15, v11, v17);
  _Block_release(v17);
  (*(v9 + 8))(v11, v8);
  (*(v13 + 8))(v15, v12);
}

uint64_t sub_1D8F532A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;
  v9 = *(a1 + 16);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a2;
  v11[4] = sub_1D8F54E84;
  v11[5] = v8;
  v14[4] = sub_1D8F54E90;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D8CF5F60;
  v14[3] = &block_descriptor_19_0;
  v12 = _Block_copy(v14);

  [v9 performBlock_];
  _Block_release(v12);
}

void sub_1D8F53410(char a1, void *a2, void (*a3)(void *, _BYTE *), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v8 = sub_1D917744C();
    __swift_project_value_buffer(v8, qword_1ECAB0BF8);
    v9 = sub_1D917741C();
    v10 = sub_1D9178D1C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      sub_1D8E40A10();
      v13 = sub_1D9179A4C();
      v15 = sub_1D8CFA924(v13, v14, &v20);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1D8CEC000, v9, v10, "[ChannelUpdaterUtil] Not fetching channel from Media API with adamID: %s because it is already in the library.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1DA72CB90](v12, -1, -1);
      MEMORY[0x1DA72CB90](v11, -1, -1);
    }

    sub_1D8F54E30();
    v16 = swift_allocError();
    *v17 = 0;
    a3(v16, v17);
  }

  else
  {
    v19 = swift_allocObject();
    v19[2] = a2;
    v19[3] = a3;
    v19[4] = a4;
    v19[5] = a5;

    sub_1D8F54010(a2, sub_1D8F54EDC, v19);
  }
}

void sub_1D8F53634(void *a1, id a2, uint64_t a3, void (*a4)(id), uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v10 = a2;
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v11 = sub_1D917744C();
    __swift_project_value_buffer(v11, qword_1ECAB0BF8);
    v12 = a2;
    v13 = sub_1D917741C();
    v14 = sub_1D9178CFC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136315394;
      sub_1D8E40A10();
      v17 = sub_1D9179A4C();
      v19 = sub_1D8CFA924(v17, v18, aBlock);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      swift_getErrorValue();
      v20 = sub_1D9179D2C();
      v22 = sub_1D8CFA924(v20, v21, aBlock);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_1D8CEC000, v13, v14, "[ChannelUpdaterUtil] Failure fetching channel with adamID: %s from Media API with error: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v16, -1, -1);
      MEMORY[0x1DA72CB90](v15, -1, -1);
    }

    v23 = a2;
    a4(a2);
  }

  else if (a1)
  {
    v24 = qword_1ECAB0BF0;
    v25 = a1;
    if (v24 != -1)
    {
      swift_once();
    }

    v26 = sub_1D917744C();
    __swift_project_value_buffer(v26, qword_1ECAB0BF8);
    v27 = sub_1D917741C();
    v28 = sub_1D9178D1C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136315138;
      sub_1D8E40A10();
      v31 = sub_1D9179A4C();
      v33 = sub_1D8CFA924(v31, v32, aBlock);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_1D8CEC000, v27, v28, "[ChannelUpdaterUtil] Ingesting channel with adamID: %s.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1DA72CB90](v30, -1, -1);
      MEMORY[0x1DA72CB90](v29, -1, -1);
    }

    v34 = *(a6 + 16);
    v35 = swift_allocObject();
    v35[2] = v25;
    v35[3] = a6;
    v35[4] = a3;
    v35[5] = a4;
    v35[6] = a5;
    aBlock[4] = sub_1D8F54EE8;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_34;
    v36 = _Block_copy(aBlock);
    v37 = v25;

    [v34 performBlock_];
    _Block_release(v36);
  }

  else
  {
    sub_1D8F54E30();
    v38 = swift_allocError();
    *v39 = 1;
    (a4)();
  }
}

uint64_t sub_1D8F53AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v6 = sub_1D9177E0C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9177E9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v47 = v11;
    v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    v48 = v10;
    v46 = a4;
    if (v16 && (v17 = v16, v18 = [v16 longLongValue], v17, (v19 = objc_msgSend(*(v15 + 16), sel_channelForStoreId_, v18)) != 0))
    {

      if (qword_1ECAB0BF0 != -1)
      {
        swift_once();
      }

      v20 = sub_1D917744C();
      __swift_project_value_buffer(v20, qword_1ECAB0BF8);
      v21 = sub_1D917741C();
      v22 = sub_1D9178D1C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v45 = v7;
        v24 = v23;
        v25 = swift_slowAlloc();
        v50 = a2;
        aBlock[0] = v25;
        *v24 = 136315138;
        sub_1D8E40A10();
        v26 = sub_1D9179A4C();
        v28 = sub_1D8CFA924(v26, v27, aBlock);

        *(v24 + 4) = v28;
        _os_log_impl(&dword_1D8CEC000, v21, v22, "[ChannelUpdaterUtil] Channel with adamID: %s is already in the library. No need to fetch.", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        MEMORY[0x1DA72CB90](v25, -1, -1);
        v29 = v24;
        v7 = v45;
        MEMORY[0x1DA72CB90](v29, -1, -1);
      }

      v30 = 1;
    }

    else
    {
      if (qword_1ECAB0BF0 != -1)
      {
        swift_once();
      }

      v31 = sub_1D917744C();
      __swift_project_value_buffer(v31, qword_1ECAB0BF8);
      v32 = sub_1D917741C();
      v33 = sub_1D9178D1C();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v45 = v7;
        v35 = v34;
        v36 = swift_slowAlloc();
        v50 = a2;
        aBlock[0] = v36;
        *v35 = 136315138;
        sub_1D8E40A10();
        v37 = sub_1D9179A4C();
        v39 = sub_1D8CFA924(v37, v38, aBlock);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_1D8CEC000, v32, v33, "[ChannelUpdaterUtil] Channel with adamID: %s is not in the library. Fetching channel from Media API.", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        MEMORY[0x1DA72CB90](v36, -1, -1);
        v40 = v35;
        v7 = v45;
        MEMORY[0x1DA72CB90](v40, -1, -1);
      }

      v30 = 0;
    }

    v41 = swift_allocObject();
    v42 = v46;
    *(v41 + 16) = v49;
    *(v41 + 24) = v42;
    *(v41 + 32) = v30;
    aBlock[4] = sub_1D8E92A40;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_25;
    v43 = _Block_copy(aBlock);

    sub_1D9177E4C();
    v50 = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v13, v9, v43);
    _Block_release(v43);
    (*(v7 + 8))(v9, v6);
    (*(v47 + 8))(v13, v48);
  }

  return result;
}

uint64_t sub_1D8F54010(void *a1, uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v53 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v39 - v5;
  v49 = &v39 - v5;
  v7 = type metadata accessor for MediaRequest.Params(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1D8D946F4(&unk_1F545E048);
  sub_1D8D08A50(&unk_1F545E068, &unk_1ECAB9A50, &unk_1D9197130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D9189080;
  v52 = a1;
  v55 = a1;
  sub_1D8E40D20();
  *(v11 + 32) = sub_1D917927C();
  *(v11 + 40) = v12;
  v13 = sub_1D9176C2C();
  v14 = *(*(v13 - 8) + 56);
  v14(v6, 1, 1, v13);
  v15 = MEMORY[0x1E69E7CC0];
  v48 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v47 = sub_1D8D94DF8(v15);
  v46 = sub_1D8D951E0(v15);
  v45 = sub_1D8D9503C(v15);
  v44 = sub_1D8D9536C(v15);
  v43 = sub_1D8D953C4(v15);
  v41 = sub_1D8D952D8(v15);
  v42 = sub_1D8D95394(v15);
  v16 = sub_1D8D957C4(v15);
  *(v10 + 41) = 263;
  v10[43] = 5;
  v10[152] = 1;
  v10[201] = 1;
  v17 = v8[30];
  v14(&v10[v17], 1, 1, v13);
  v18 = &v10[v8[31]];
  v19 = &v10[v8[33]];
  v20 = v8[35];
  v40 = v8[36];
  v21 = &v10[v20];
  v22 = &v10[v8[37]];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *(v10 + 10) = 83952388;
  v23 = v47;
  *(v10 + 6) = v48;
  *(v10 + 7) = v23;
  v24 = v45;
  *(v10 + 8) = v46;
  *(v10 + 9) = v15;
  v25 = v44;
  *(v10 + 10) = v24;
  *(v10 + 11) = v25;
  v26 = v43;
  *(v10 + 12) = v50;
  *(v10 + 13) = v26;
  v27 = v41;
  *(v10 + 14) = v15;
  *(v10 + 15) = v27;
  *(v10 + 16) = v15;
  *(v10 + 17) = v15;
  *(v10 + 18) = v11;
  v10[152] = 1;
  *(v10 + 20) = 0;
  v10[168] = 1;
  *(v10 + 22) = v42;
  *(v10 + 23) = v16;
  *(v10 + 24) = 0;
  *(v10 + 100) = 257;
  v10[202] = 0;
  sub_1D8E26828(v49, &v10[v17]);
  *v18 = 0;
  *(v18 + 1) = 0;
  v10[v8[32]] = 0;
  *v19 = 0;
  *(v19 + 1) = 0;
  *&v10[v8[34]] = v15;
  *v21 = 0;
  *(v21 + 1) = 0;
  v10[v40] = 2;
  *v22 = 0;
  *(v22 + 1) = 0;
  if (qword_1ECAB0BF0 != -1)
  {
    swift_once();
  }

  v28 = sub_1D917744C();
  __swift_project_value_buffer(v28, qword_1ECAB0BF8);
  v29 = sub_1D917741C();
  v30 = sub_1D9178D1C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 136315138;
    v33 = v52;
    v54 = v52;
    v55 = v32;
    sub_1D8E40A10();
    v34 = sub_1D9179A4C();
    v36 = sub_1D8CFA924(v34, v35, &v55);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_1D8CEC000, v29, v30, "[ChannelUpdaterUtil] Fetching channel with adamID: %s from Media API.", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x1DA72CB90](v32, -1, -1);
    MEMORY[0x1DA72CB90](v31, -1, -1);
  }

  else
  {

    v33 = v52;
  }

  v37 = swift_allocObject();
  v37[2] = v51;
  v37[3] = v53;
  v37[4] = v33;

  sub_1D904AD58(v10, 0, sub_1D8F54E24, v37);

  return sub_1D8D90BEC(v10);
}

void sub_1D8F544D0(unint64_t a1, int a2, int a3, int a4, id a5, void (*a6)(id, id))
{
  if (a5)
  {
    v7 = a5;
    v8 = a5;
LABEL_3:
    a6(0, v7);

    return;
  }

  if (a1 && (v9 = sub_1D8FBEEFC(a1)) != 0)
  {
    v10 = v9;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v10 >> 62)
  {
    if (sub_1D917935C())
    {
      goto LABEL_12;
    }

LABEL_21:

    sub_1D8F54E30();
    v7 = swift_allocError();
    *v24 = 1;
    goto LABEL_3;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

LABEL_12:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1DA72AA90](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v11 = *(v10 + 32);
  }

  v12 = v11;

  v13 = qword_1ECAB0BF0;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = sub_1D917744C();
  __swift_project_value_buffer(v15, qword_1ECAB0BF8);
  v16 = sub_1D917741C();
  v17 = sub_1D9178D1C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136315138;
    sub_1D8E40A10();
    v20 = sub_1D9179A4C();
    v22 = sub_1D8CFA924(v20, v21, &v25);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_1D8CEC000, v16, v17, "[ChannelUpdaterUtil] Successfully fetched channel object with adamID: %s from Media API.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1DA72CB90](v19, -1, -1);
    MEMORY[0x1DA72CB90](v18, -1, -1);
  }

  v23 = v14;
  a6(v14, 0);
}

uint64_t sub_1D8F54780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = *MEMORY[0x1E69E9840];
  v10 = sub_1D9177E0C();
  v47 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9177E9C();
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_opt_self();
  v17 = *(a2 + 16);
  v18 = [v16 createOrFindChannelFromFeedChannelItem:a1 personalizedRequest:0 context:v17];
  NSManagedObjectContext.unsafeInterest(forAdamID:)(a3);
  if (v19)
  {
    v20 = v19;
    [v18 setInterest_];
    [v20 setChannel_];
  }

  aBlock = 0;
  v21 = [v17 save_];
  v22 = aBlock;
  if (v21)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a4;
    *(v23 + 24) = a5;
    v53 = sub_1D8F54EF8;
    v54 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = sub_1D8CF5F60;
    v52 = &block_descriptor_46;
    v24 = _Block_copy(&aBlock);
    v25 = v22;

    sub_1D9177E4C();
    v48 = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v15, v12, v24);
    _Block_release(v24);
  }

  else
  {
    v44 = a4;
    v26 = aBlock;
    v27 = sub_1D9176A6C();

    swift_willThrow();
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v28 = sub_1D917744C();
    __swift_project_value_buffer(v28, qword_1ECAB0BF8);
    v29 = v27;
    v30 = sub_1D917741C();
    v31 = sub_1D9178CFC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v43 = v18;
      v34 = a5;
      v35 = v33;
      *v32 = 138412290;
      v36 = v27;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_1D8CEC000, v30, v31, "Failed to save core data context in ChannelUpdaterUtil with error: %@", v32, 0xCu);
      sub_1D8D08A50(v35, &unk_1ECAB6C70, &unk_1D9188C30);
      v38 = v35;
      a5 = v34;
      v18 = v43;
      MEMORY[0x1DA72CB90](v38, -1, -1);
      MEMORY[0x1DA72CB90](v32, -1, -1);
    }

    v39 = swift_allocObject();
    v39[2] = v44;
    v39[3] = a5;
    v39[4] = v27;
    v53 = sub_1D8E8B4F0;
    v54 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = sub_1D8CF5F60;
    v52 = &block_descriptor_40_2;
    v40 = _Block_copy(&aBlock);

    v41 = v27;
    sub_1D9177E4C();
    v48 = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v15, v12, v40);
    _Block_release(v40);
  }

  (*(v47 + 8))(v12, v10);
  (*(v45 + 8))(v15, v46);
}

uint64_t ChannelUpdaterUtil.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D8F54E30()
{
  result = qword_1ECAB73B0;
  if (!qword_1ECAB73B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB73B0);
  }

  return result;
}

uint64_t objectdestroy_9Tm_0()
{

  return swift_deallocObject();
}

unint64_t sub_1D8F54F38()
{
  result = qword_1ECAB73B8;
  if (!qword_1ECAB73B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB73B8);
  }

  return result;
}

double FeedManagerBagConfiguration.backoffIntervals.getter()
{
  type metadata accessor for FeedManagerBagConfiguration(0);

  return result;
}

uint64_t static FeedManagerBagConfiguration.getConfiguration(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D8D5A180;
  *(v6 + 24) = v5;
  v9[4] = sub_1D8D597EC;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D8D5960C;
  v9[3] = &block_descriptor_39;
  v7 = _Block_copy(v9);

  [v4 createSnapshotWithCompletion_];
  _Block_release(v7);
}

void sub_1D8F55248()
{
  if (qword_1EDCD23E8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDCD23F0;
  v1 = *(qword_1EDCD23F0 + OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_deltaNumberOfEpisodesToRequestPerPage);
  v2 = *(qword_1EDCD23F0 + OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_deltaNumberOfEpisodesToRequestPerPage + 8);
  v3 = type metadata accessor for FeedManagerLocalConfiguration();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_timeoutIntervalForResource] = 0x4072C00000000000;
  v4[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration__workQueueConcurrent] = 1;
  v4[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_useBackgroundFetchForFeedDownloads] = 1;
  v4[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_keepsFeedFileInTempDirAfterDownload] = 0;
  v4[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration__supportsBatchInsertion] = 1;
  v4[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_usesCleanEpisodeTitles] = 1;
  *&v4[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_concurrentDeltaUpdateLimit] = 3;
  *&v4[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_concurrentBootstrapUpdateLimit] = 2;
  *&v4[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_concurrentRSSUpdateLimit] = 3;
  if (v1 == 300)
  {
    v5 = 0;
  }

  else
  {
    v5 = v1;
  }

  if (v1 == 300)
  {
    v6 = 1;
  }

  else
  {
    v6 = v2;
  }

  if (v2)
  {
    v5 = v1;
  }

  v7 = &v4[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_deltaNumberOfEpisodesToRequestPerPage];
  *v7 = v5;
  v7[8] = v6;
  v10.receiver = v4;
  v10.super_class = v3;
  v8 = v0;
  v9 = objc_msgSendSuper2(&v10, sel_init);

  qword_1ECAB73D0 = v9;
}

id static FeedManagerLocalConfiguration.platformSpecificConfiguration.getter()
{
  if ([objc_opt_self() isRunningOnHomepod])
  {
    if (qword_1ECAB34D0 != -1)
    {
      swift_once();
    }

    v0 = &qword_1ECAB73D0;
  }

  else
  {
    if (qword_1EDCD23E8 != -1)
    {
      swift_once();
    }

    v0 = &qword_1EDCD23F0;
  }

  v1 = *v0;

  return v1;
}

id FeedManagerLocalConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeedManagerLocalConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedManagerLocalConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FeedUpdateRequest.feedUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedUpdateRequest(0) + 20);
  v4 = sub_1D9176C2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedUpdateRequest.triggerBy.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeedUpdateRequest(0) + 32));

  return v1;
}

uint64_t FeedUpdateRequest.feedDownloadedHook.getter()
{
  v1 = (v0 + *(type metadata accessor for FeedUpdateRequest(0) + 56));
  v2 = *v1;
  sub_1D8D1F93C(*v1, v1[1]);
  return v2;
}

uint64_t FeedUpdateRequest.preProcessFeedHook.getter()
{
  v1 = (v0 + *(type metadata accessor for FeedUpdateRequest(0) + 60));
  v2 = *v1;
  sub_1D8D1F93C(*v1, v1[1]);
  return v2;
}

uint64_t FeedUpdateRequest.postProcessFeedHook.getter()
{
  v1 = (v0 + *(type metadata accessor for FeedUpdateRequest(0) + 64));
  v2 = *v1;
  sub_1D8D1F93C(*v1, v1[1]);
  return v2;
}

uint64_t FeedUpdateRequest.completion.getter()
{
  v1 = (v0 + *(type metadata accessor for FeedUpdateRequest(0) + 68));
  v2 = *v1;
  sub_1D8D1F93C(*v1, v1[1]);
  return v2;
}

void sub_1D8F5589C(void *a1, char a2, void (*a3)(BOOL, void *))
{
  if (a2)
  {
    v5 = a1;
    v6 = a1;
  }

  else
  {
    v5 = 0;
  }

  a3((a2 & 1) == 0, v5);
}

uint64_t FeedUpdateRequest.failRequest(_:)(void *a1)
{
  v3 = sub_1D9177E0C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9177E9C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for FeedUpdateRequest(0);
  v12 = (v1 + *(result + 68));
  v13 = *v12;
  if (*v12)
  {
    v20 = v7;
    v14 = v12[1];
    sub_1D8CFD888();

    v19 = sub_1D9178E1C();
    v15 = swift_allocObject();
    v15[2] = v13;
    v15[3] = v14;
    v15[4] = a1;
    aBlock[4] = sub_1D8F55BE0;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_40;
    v16 = _Block_copy(aBlock);
    sub_1D8D1F93C(v13, v14);
    v17 = a1;

    sub_1D9177E4C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    v18 = v19;
    MEMORY[0x1DA72A400](0, v10, v6, v16);
    _Block_release(v16);

    sub_1D8D15664(v13, v14);
    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v20);
  }

  return result;
}

uint64_t FeedUpdateRequest.isImplicitActionRequest.getter()
{
  updated = type metadata accessor for FeedUpdateRequest(0);
  if (*(v0 + *(updated + 36)))
  {
    return 0;
  }

  else
  {
    return *(v0 + *(updated + 44));
  }
}

uint64_t FeedUpdateRequest.copyWithoutCompletion()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v51 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v51 - v7;
  v68 = &v51 - v7;
  v9 = sub_1D9176C2C();
  v66 = *(v9 - 8);
  v10 = v66;
  v67 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v12;
  updated = type metadata accessor for FeedUpdateRequest(0);
  v14 = updated[5];
  v65 = *(v10 + 16);
  v65(v12, v1 + v14, v9);
  sub_1D8D088B4(v1 + updated[6], v8, &unk_1ECAB5910, &qword_1D9188C90);
  v15 = updated[8];
  v64 = *(v1 + updated[7]);
  v16 = *(v1 + updated[10]);
  v62 = *(v1 + updated[9]);
  v63 = v16;
  v17 = v1 + v15;
  v18 = updated[12];
  v61 = *(v1 + updated[11]);
  v19 = *(v1 + v15);
  v57 = *(v17 + 8);
  v58 = v19;
  v60 = *(v1 + v18);
  v59 = *(v1 + updated[13]);
  v20 = sub_1D9176EAC();
  v21 = *(*(v20 - 8) + 56);
  v55 = v5;
  v21(v5, 1, 1, v20);
  v22 = (v1 + updated[14]);
  v23 = *v22;
  v24 = v22[1];
  v25 = (v1 + updated[15]);
  v27 = *v25;
  v26 = v25[1];
  v52 = v27;
  v51 = v26;
  v28 = (v1 + updated[16]);
  v30 = *v28;
  v29 = v28[1];
  v54 = v30;
  v53 = v29;
  v31 = updated[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7540, &unk_1D9197370);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = 0;
  *(a1 + v31) = v32;
  v33 = updated[19];
  v34 = swift_allocObject();
  *(v34 + 24) = 0;
  *(v34 + 16) = 0;
  v56 = (v34 + 16);
  *(v34 + 32) = 0;
  v35 = (v34 + 32);
  *(a1 + v33) = v34;
  v36 = updated[20];
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(a1 + v36) = v37;
  sub_1D8D088B4(v5, a1, &qword_1ECAB71E0, &unk_1D9197360);
  v65((a1 + updated[5]), v69, v67);
  sub_1D8D088B4(v68, a1 + updated[6], &unk_1ECAB5910, &qword_1D9188C90);
  *(a1 + updated[7]) = v64;
  v38 = (a1 + updated[8]);
  v39 = v57;
  *v38 = v58;
  v38[1] = v39;
  v40 = v63;
  *(a1 + updated[9]) = v62;
  *(a1 + updated[10]) = v40;
  *(a1 + updated[11]) = v61;
  *(a1 + updated[12]) = v60;
  *(a1 + updated[13]) = v59;
  v41 = (a1 + updated[14]);
  v42 = v23;
  *v41 = v23;
  v41[1] = v24;
  v43 = (a1 + updated[15]);
  v44 = v52;
  v45 = v51;
  *v43 = v52;
  v43[1] = v45;
  v46 = (a1 + updated[16]);
  v47 = v54;
  v48 = v53;
  *v46 = v54;
  v46[1] = v48;
  v49 = (a1 + updated[17]);
  *v49 = 0;
  v49[1] = 0;
  v72 = 23;

  sub_1D8D1F93C(v42, v24);
  sub_1D8D1F93C(v44, v45);
  sub_1D8D1F93C(v47, v48);

  sub_1D8D76684(&v72, v73);
  v70 = v73[0];
  v71 = v73[1];
  os_unfair_lock_lock(v35);
  sub_1D8F56440(v56);
  os_unfair_lock_unlock(v35);

  sub_1D8D08A50(v55, &qword_1ECAB71E0, &unk_1D9197360);
  sub_1D8D08A50(v68, &unk_1ECAB5910, &qword_1D9188C90);
  (*(v66 + 8))(v69, v67);
}

Swift::Void __swiftcall FeedUpdateRequest.startSystemCreation()()
{
  v1 = *(v0 + *(type metadata accessor for FeedUpdateRequest(0) + 80));
  os_unfair_lock_lock((v1 + 32));
  sub_1D8F561F0((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
}

double sub_1D8F561F0(_OWORD *a1)
{

  v4 = 3;
  sub_1D8D76684(&v4, &v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

Swift::Void __swiftcall FeedUpdateRequest.endSystemCreation()()
{
  v1 = *(v0 + *(type metadata accessor for FeedUpdateRequest(0) + 80));
  os_unfair_lock_lock((v1 + 32));
  if (*(v1 + 24))
  {

    sub_1D8D7FAB4();
  }

  *(v1 + 16) = 0;
  *(v1 + 24) = 0;

  os_unfair_lock_unlock((v1 + 32));
}

Swift::Void __swiftcall FeedUpdateRequest.startQueueing(position:)(Swift::Int position)
{
  v2 = *(v1 + *(type metadata accessor for FeedUpdateRequest(0) + 72));
  os_unfair_lock_lock((v2 + 32));
  sub_1D8D85088((v2 + 16));
  os_unfair_lock_unlock((v2 + 32));
}

Swift::Void __swiftcall FeedUpdateRequest.endQueueing()()
{
  v1 = *(v0 + *(type metadata accessor for FeedUpdateRequest(0) + 72));
  os_unfair_lock_lock((v1 + 32));
  if (*(v1 + 24))
  {

    sub_1D8D7FAB4();
  }

  *(v1 + 16) = 0;
  *(v1 + 24) = 0;

  os_unfair_lock_unlock((v1 + 32));
}

Swift::Void __swiftcall FeedUpdateRequest.endProcessFirstEpisodesIntervalIfNeeded()()
{
  v1 = *(v0 + *(type metadata accessor for FeedUpdateRequest(0) + 76));
  os_unfair_lock_lock((v1 + 32));
  if (*(v1 + 24))
  {

    sub_1D8D7FAB4();
  }

  *(v1 + 16) = 0;
  *(v1 + 24) = 0;

  os_unfair_lock_unlock((v1 + 32));
}

uint64_t FeedUpdateRequest.TelemetryPhase.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t NSManagedObjectContext.performAndWaitWithTelemetry(for:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  updated = type metadata accessor for FeedUpdateRequest(0);
  v9 = *(updated - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  LOBYTE(aBlock[0]) = 26;
  sub_1D8D76684(aBlock, &v18);
  sub_1D8D7A3C4(a1, aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = &v18;
  sub_1D8D79960(aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = (v12 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = a2;
  v13[1] = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1D8F567F8;
  *(v14 + 24) = v12;
  aBlock[4] = sub_1D8D24508;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_12_0;
  v15 = _Block_copy(aBlock);

  [v4 performBlockAndWait_];
  _Block_release(v15);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_1D8F56728(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a1[1];
  if (v5)
  {
    LOBYTE(v10) = *a1;
    *(&v10 + 1) = v5;

    sub_1D8D7FAB4();
  }

  v9 = 27;
  sub_1D8D76684(&v9, &v10);
  *a1 = v10;

  result = a3(v6);
  v8 = a1[1];
  if (v8)
  {
    LOBYTE(v10) = *a1;
    *(&v10 + 1) = v8;

    sub_1D8D7FAB4();
  }

  return result;
}

uint64_t sub_1D8F567F8()
{
  v1 = *(type metadata accessor for FeedUpdateRequest(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D8F56728(v3, v0 + v2, v4);
}

uint64_t NSManagedObjectContext.performAndWaitWithTelemetry<A>(for:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = 26;
  sub_1D8D76684(&v12, &v13);
  v11[2] = a4;
  v11[3] = &v13;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  NSManagedObjectContext.performAndWait<A>(_:)(sub_1D8F56A14, v11, a4, a5);
}

uint64_t sub_1D8F56934(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a1[1];
  if (v5)
  {
    LOBYTE(v10) = *a1;
    *(&v10 + 1) = v5;

    sub_1D8D7FAB4();
  }

  v9 = 27;
  sub_1D8D76684(&v9, &v10);
  *a1 = v10;

  result = a3(v6);
  v8 = a1[1];
  if (v8)
  {
    LOBYTE(v10) = *a1;
    *(&v10 + 1) = v8;

    sub_1D8D7FAB4();
  }

  return result;
}

uint64_t sub_1D8F56A24(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, unsigned __int8 a5)
{
  swift_beginAccess();
  v8 = *(a1 + 24);
  if (v8)
  {
    v14[0] = *(a1 + 16);
    v15 = v8;

    sub_1D8D7FAB4();
  }

  v14[0] = a5;
  sub_1D8D76684(v14, v13);
  v9 = v13[0];
  v10 = v13[1];
  swift_beginAccess();
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;

  a3(v11);
  result = swift_beginAccess();
  if (*(a1 + 24))
  {

    sub_1D8D7FAB4();
  }

  return result;
}

uint64_t sub_1D8F56B38(unsigned __int8 a1)
{
  v3 = *(type metadata accessor for FeedUpdateRequest(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1D8F56A24(*(v1 + 16), v1 + v4, *v5, *(v5 + 8), a1);
}

unint64_t sub_1D8F56BD4()
{
  result = qword_1ECAB7430;
  if (!qword_1ECAB7430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7430);
  }

  return result;
}

uint64_t _s14TelemetryPhaseOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14TelemetryPhaseOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D8F56D78()
{
  if (*(v0 + 16))
  {
    v1 = 11;
  }

  else
  {
    v1 = 9;
  }

  v3 = v1;
  sub_1D8D76684(&v3, &v4);
  *(v0 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_networkState) = v4;
}

uint64_t sub_1D8F56E34(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestEncodingState);
  if (*(v1 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestEncodingState + 8))
  {

    sub_1D8D92750(a1 == 0);
  }

  *v3 = 0;
  v3[1] = 0;

  v4 = (v1 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestEncodingDiagnosticState);
  if (*(v1 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestEncodingDiagnosticState + 8))
  {

    sub_1D8D92750(a1 == 0);
  }

  *v4 = 0;
  v4[1] = 0;
}

uint64_t sub_1D8F56F44()
{
  if (*(v0 + 16))
  {
    v1 = 12;
  }

  else
  {
    v1 = 10;
  }

  v3 = v1;
  sub_1D8D76684(&v3, &v4);
  *(v0 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_parsingState) = v4;
}

uint64_t sub_1D8F57000()
{
  sub_1D8D7A55C(v0 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_request);

  return swift_deallocClassInstance();
}

unint64_t sub_1D8F570E4()
{
  result = qword_1ECAB7438;
  if (!qword_1ECAB7438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7438);
  }

  return result;
}

uint64_t sub_1D8F57144()
{
  v1 = sub_1D9177E0C();
  v13 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9177E9C();
  v4 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7440, &qword_1D9197628);
  nullsub_1();
  aBlock[0] = v7;
  sub_1D917809C();

  swift_getWitnessTable();
  v8 = sub_1D9178B5C();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v0;
  aBlock[4] = sub_1D8F58B38;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_7;
  v10 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD690(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v6, v3, v10);
  _Block_release(v10);
  (*(v13 + 8))(v3, v1);
  (*(v4 + 8))(v6, v12);
}

void sub_1D8F574CC(uint64_t a1, uint64_t *a2)
{
  sub_1D917791C();
  v2 = sub_1D9178AEC();

  if ((v2 & 1) == 0)
  {
    sub_1D917790C();
  }
}

uint64_t FeedUpdateRequestCollection.__allocating_init()()
{
  v0 = swift_allocObject();
  FeedUpdateRequestCollection.init()();
  return v0;
}

void *FeedUpdateRequestCollection.init()()
{
  v1 = v0;
  v2 = *v0;
  v15 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v15);
  v14[1] = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1D9178E0C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 80);
  v10 = sub_1D917866C();
  if (sub_1D91786AC())
  {
    v11 = sub_1D8F58608(v10, v9, *(v2 + 88));
  }

  else
  {

    v11 = MEMORY[0x1E69E7CD0];
  }

  sub_1D9178B4C();
  sub_1D917793C();
  v16 = v11;
  v1[3] = sub_1D917794C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v1[4] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7440, &qword_1D9197628);
  v1[5] = sub_1D9177FEC();
  sub_1D8CFD888();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8098], v5);
  sub_1D9177E4C();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD690(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  v1[6] = sub_1D9178E4C();
  ReadOnlyCurrentValueSubject.init(_:)(v1[3], &v16);
  v1[2] = v16;

  return v1;
}

uint64_t sub_1D8F57948()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8D7D1EC(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void sub_1D8F579BC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v20 = a4;
  v6 = *(*a1 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v16 - v8;
  updated = type metadata accessor for FeedUpdateRequest(0);
  v17 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7440, &qword_1D9197628);
  v18 = a2;
  sub_1D91780FC();

  if (v21)
  {
    v12 = v21;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  sub_1D8D7A3C4(a3, v11);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1D8D7CE14(0, v12[2] + 1, 1, v12);
  }

  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1D8D7CE14((v13 > 1), v14 + 1, 1, v12);
  }

  v12[2] = v14 + 1;
  sub_1D8D79960(v11, v12 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v14);
  (*(v7 + 16))(v19, v18, v6);
  v22 = v12;
  swift_beginAccess();
  sub_1D91780DC();

  sub_1D917810C();
  swift_endAccess();
  sub_1D8F57144();
  v15 = v12[2];

  *v20 = v15 == 1;
}

uint64_t sub_1D8F57CB0()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8DA3D30(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void sub_1D8F57D20(void *a3@<X8>)
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7440, &qword_1D9197628);
  sub_1D91780FC();

  v4 = v5;
  if (!v5)
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v4;
}

void sub_1D8F57E00()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8F58A1C();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1D8F57E70@<X0>(uint64_t a3@<X8>)
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7440, &qword_1D9197628);
  sub_1D91780FC();

  if (v10)
  {
    v4 = *(v10 + 16);
    if (v4)
    {
      v5 = v4 - 1;
      updated = type metadata accessor for FeedUpdateRequest(0);
      v7 = *(updated - 8);
      sub_1D8D7A3C4(v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, a3);

      return (*(v7 + 56))(a3, 0, 1, updated);
    }
  }

  v9 = type metadata accessor for FeedUpdateRequest(0);
  return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
}

uint64_t sub_1D8F58030(uint64_t a1, void *a2, char a3)
{
  v7 = sub_1D9177E0C();
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D9177E9C();
  v10 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 32);
  v25 = v3;
  v26 = a1;
  v22 = sub_1D8F58A44;
  v23 = &v24;
  os_unfair_lock_lock(v13 + 4);
  sub_1D8F58B40(aBlock);
  os_unfair_lock_unlock(v13 + 4);
  v14 = aBlock[0];
  sub_1D8CFD888();
  v15 = sub_1D9178E1C();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = a2;
  v17 = a3 & 1;
  *(v16 + 32) = a3 & 1;
  aBlock[4] = sub_1D8F58A6C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_42;
  v18 = _Block_copy(aBlock);
  sub_1D8DA4A44(a2, v17);

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFD690(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v12, v9, v18);
  _Block_release(v18);

  (*(v21 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v20);
}

uint64_t sub_1D8F58368@<X0>(void *a3@<X8>)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB7440, &qword_1D9197628);
  sub_1D91780DC();
  sub_1D917807C();
  swift_endAccess();
  result = sub_1D8F57144();
  v5 = v6;
  if (!v6)
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v5;
  return result;
}

void sub_1D8F58458(uint64_t a1, uint64_t a2, char a3)
{
  updated = type metadata accessor for FeedUpdateRequest(0);
  MEMORY[0x1EEE9AC00](updated);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = &v10[*(v7 + 68)];
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    do
    {
      sub_1D8D7A3C4(v13, v10);
      v16 = *v12;
      v15 = v12[1];
      sub_1D8D1F93C(*v12, v15);
      sub_1D8D7A55C(v10);
      if (v16)
      {
        v16(a2, a3 & 1);
        sub_1D8E8CDC0(v16, v15);
      }

      v13 += v14;
      --v11;
    }

    while (v11);
  }
}

uint64_t FeedUpdateRequestCollection.deinit()
{

  return v0;
}

uint64_t FeedUpdateRequestCollection.__deallocating_deinit()
{
  FeedUpdateRequestCollection.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8F58608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v38 - v10;
  v39 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  if (sub_1D91786AC())
  {
    sub_1D917943C();
    v15 = sub_1D917942C();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  v43 = sub_1D91786AC();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_1D917868C();
    sub_1D917862C();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_1D91794BC();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_1D917813C();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v8, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_1D91781BC();
        v32 = *v47;
        (*v47)(v8, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void sub_1D8F58A60(id a1, char a2)
{
  if (a2)
  {
  }
}

PodcastsFoundation::FeedUpdaterError_optional __swiftcall FeedUpdaterError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 17;
  if (rawValue < 0x11)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

id FeedUpdaterObjcError.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeedUpdaterObjcError.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedUpdaterObjcError();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FeedUpdaterObjcError.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedUpdaterObjcError();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static FeedUpdaterObjcError.domainName.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7448, &qword_1D91976B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7450, &qword_1D91976B8);
  return sub_1D917826C();
}

uint64_t static FeedUpdaterObjcError.feedURLIsEmpty.getter()
{
  sub_1D8D77098();
  result = swift_allocError();
  *v1 = 7;
  return result;
}

uint64_t static FeedUpdaterObjcError.localShowMissing.getter()
{
  sub_1D8D77098();
  result = swift_allocError();
  *v1 = 10;
  return result;
}

uint64_t static FeedUpdaterObjcError.preProcessHookDeniedUpdate.getter()
{
  sub_1D8D77098();
  result = swift_allocError();
  *v1 = 11;
  return result;
}

uint64_t static FeedUpdaterObjcError.internetNotReachable.getter()
{
  sub_1D8D77098();
  result = swift_allocError();
  *v1 = 13;
  return result;
}

uint64_t static FeedUpdaterObjcError.feedUpdatesDisabled.getter()
{
  sub_1D8D77098();
  result = swift_allocError();
  *v1 = 14;
  return result;
}

uint64_t static FeedUpdaterObjcError.notYetUpdatable.getter()
{
  sub_1D8D77098();
  result = swift_allocError();
  *v1 = 15;
  return result;
}

uint64_t static FeedUpdaterObjcError.nonSubscribableShow.getter()
{
  sub_1D8D77098();
  result = swift_allocError();
  *v1 = 16;
  return result;
}

unint64_t sub_1D8F58F10()
{
  result = qword_1ECAB7458;
  if (!qword_1ECAB7458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7458);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeedUpdaterError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeedUpdaterError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id RSSFeedUpdater.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RSSFeedUpdater.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RSSFeedUpdater();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t RSSFeedUpdater.perform(onFeedProcessingQueue:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D9177E0C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9177E9C();
  v9 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_workQueue);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  aBlock[4] = sub_1D8D244E0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_19_2;
  v13 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD690(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v16);
}

uint64_t (*RSSFeedUpdater.sessionCompletionHandler.getter())()
{
  result = [*(v0 + OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_externalFeedDownloader) sessionCompletionHandler];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_1D8D99DB8;
  }

  return result;
}

uint64_t RSSFeedUpdater.sessionCompletionHandler.setter(uint64_t a1, uint64_t a2)
{
  sub_1D8F59D38(a1, a2);

  return sub_1D8D15664(a1, a2);
}

uint64_t (*sub_1D8F59844@<X0>(id *a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  result = [*a1 sessionCompletionHandler];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    *(result + 2) = sub_1D8D99DAC;
    *(result + 3) = v5;
    v6 = sub_1D8D244E0;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

void sub_1D8F598EC(uint64_t a1, void **a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(a1 + 8);
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = *a2;
    v7[4] = sub_1D8F59FB8;
    v7[5] = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1D8CF5F60;
    v7[3] = &block_descriptor_66_1;
    v3 = _Block_copy(v7);
  }

  else
  {
    v6 = *a2;
  }

  [v6 setSessionCompletionHandler_];
  _Block_release(v3);
}

uint64_t sub_1D8F599E0()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  swift_unknownObjectRelease();

  sub_1D8D15664(*(v0 + 120), *(v0 + 128));
  return v0;
}

uint64_t sub_1D8F59A38()
{
  sub_1D8F599E0();

  return swift_deallocClassInstance();
}

void sub_1D8F59A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = objc_opt_self();
  v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5C00, &qword_1D91913F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9197860;
  v11 = MEMORY[0x1E69E6158];
  sub_1D91793EC();
  v12 = MEMORY[0x1E69E6530];
  *(inited + 96) = MEMORY[0x1E69E6530];
  *(inited + 72) = a2;
  sub_1D91793EC();
  *(inited + 168) = v12;
  *(inited + 144) = a3;
  sub_1D91793EC();
  *(inited + 240) = v12;
  *(inited + 216) = a4;
  sub_1D91793EC();
  *(inited + 312) = v12;
  *(inited + 288) = a1;
  sub_1D91793EC();
  v13 = *(a5 + *(type metadata accessor for FeedUpdateRequest(0) + 48));
  type metadata accessor for MTFeedUpdateSource(0);
  *(inited + 384) = v14;
  *(inited + 360) = v13;
  sub_1D91793EC();
  *(inited + 456) = v11;
  *(inited + 432) = 7566194;
  *(inited + 440) = 0xE300000000000000;
  sub_1D8D653BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C80, &unk_1D91949C0);
  swift_arrayDestroy();
  v15 = sub_1D917802C();

  [v17 recordEvent:v9 dataSource:0 data:v15];
}

void sub_1D8F59D38(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_externalFeedDownloader);
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1D8CF5F60;
    v5[3] = &block_descriptor_76;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  [v3 setSessionCompletionHandler_];
  _Block_release(v4);
}

uint64_t sub_1D8F59EA4(uint64_t a1, int a2)
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

uint64_t sub_1D8F59EC4(uint64_t result, int a2, int a3)
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

uint64_t sub_1D8F59F0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D8F59F54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void *sub_1D8F59FF8(uint64_t a1, double a2)
{
  v3 = sub_1D9177FDC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8DA1F0C(&qword_1EDCD5C50, MEMORY[0x1E69666B0], MEMORY[0x1E69666B8]);
  v7 = sub_1D917840C();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1D8D41BE0(0, v7 & ~(v7 >> 63), 0);
  v8 = v35;
  (*(v4 + 16))(v6, a1, v3);
  result = sub_1D91783FC();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = v34;
    if (v7)
    {
      v11 = v33;
      *&v32 = *(v33 + 16);
      v31 = xmmword_1D9189080;
      v12 = v34;
      while (v32 != v12)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v12 >= *(v11 + 16))
        {
          goto LABEL_22;
        }

        v13 = *(v11 + 32 + v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        v14 = swift_allocObject();
        *(v14 + 16) = v31;
        *(v14 + 56) = MEMORY[0x1E69E7508];
        *(v14 + 64) = MEMORY[0x1E69E7558];
        *(v14 + 32) = v13;
        result = sub_1D917823C();
        v35 = v8;
        v17 = *(v8 + 16);
        v16 = *(v8 + 24);
        if (v17 >= v16 >> 1)
        {
          v30 = result;
          v19 = v15;
          sub_1D8D41BE0((v16 > 1), v17 + 1, 1);
          v15 = v19;
          result = v30;
          v8 = v35;
        }

        *(v8 + 16) = v17 + 1;
        v18 = v8 + 16 * v17;
        *(v18 + 32) = result;
        *(v18 + 40) = v15;
        ++v12;
        if (!--v7)
        {
          v34 = v12;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v12 = v34;
LABEL_12:
      v20 = v33;
      v21 = *(v33 + 16);
      if (v12 == v21)
      {
LABEL_13:

        return v8;
      }

      v32 = xmmword_1D9189080;
      while (v12 < v21)
      {
        v22 = *(v20 + 32 + v12);
        v34 = v12 + 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        v23 = swift_allocObject();
        *(v23 + 16) = v32;
        *(v23 + 56) = MEMORY[0x1E69E7508];
        *(v23 + 64) = MEMORY[0x1E69E7558];
        *(v23 + 32) = v22;
        result = sub_1D917823C();
        v35 = v8;
        v26 = *(v8 + 16);
        v25 = *(v8 + 24);
        if (v26 >= v25 >> 1)
        {
          v28 = result;
          v29 = v24;
          sub_1D8D41BE0((v25 > 1), v26 + 1, 1);
          v24 = v29;
          result = v28;
          v8 = v35;
        }

        *(v8 + 16) = v26 + 1;
        v27 = v8 + 16 * v26;
        *(v27 + 32) = result;
        *(v27 + 40) = v24;
        v21 = *(v20 + 16);
        v12 = v34;
        if (v34 == v21)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

int8x16_t *sub_1D8F5A398(int8x16_t *result)
{
  v1 = vorrq_s8(result[1], result[2]);
  if (*&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) || (v2 = result, result[3].u8[0] != 160))
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    sub_1D8D76684(&v3, &v4);
    *(v2 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_fullJobInterval) = v4;

    v4 = 1uLL;
    v5 = 0;
    v6 = 0;
    v7 = -96;
    return sub_1D8DA168C(&v4);
  }

  return result;
}

void sub_1D8F5A440(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(IMPodcastParser) init];
  v3 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  v4 = [v2 parseWithData_];

  v5 = [v2 parseError];
  if (v5)
  {
    v23 = v5;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 96;
    v22 = v5;
    sub_1D8DA168C(&v23);

LABEL_14:
    v19 = v22;
    goto LABEL_15;
  }

  if (v4)
  {
    v22 = v4;
    v6 = [v22 items];
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = v6;
    v8 = [v6 count];

    if (v8)
    {
      if (qword_1EDCD1068 != -1)
      {
        swift_once();
      }

      v9 = sub_1D917744C();
      __swift_project_value_buffer(v9, qword_1EDCD1070);

      v10 = sub_1D917741C();
      v11 = sub_1D9178D1C();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v23 = v13;
        *v12 = 141558275;
        *(v12 + 4) = 1752392040;
        *(v12 + 12) = 2081;
        type metadata accessor for FeedUpdateRequest(0);
        v14 = sub_1D9176ACC();
        v16 = sub_1D8CFA924(v14, v15, &v23);

        *(v12 + 14) = v16;
        _os_log_impl(&dword_1D8CEC000, v10, v11, "Job %{private,mask.hash}s: Successfully parsed feed.", v12, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
        MEMORY[0x1DA72CB90](v13, -1, -1);
        MEMORY[0x1DA72CB90](v12, -1, -1);
      }

      v23 = v4;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 32;
      v22 = v22;
      sub_1D8DA168C(&v23);
    }

    else
    {
      sub_1D8D77098();
      v20 = swift_allocError();
      *v21 = 8;
      v23 = v20;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 96;
      sub_1D8DA168C(&v23);
    }

    goto LABEL_14;
  }

  sub_1D8D77098();
  v17 = swift_allocError();
  *v18 = 6;
  v23 = v17;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 96;
  sub_1D8DA168C(&v23);

  v19 = v2;
LABEL_15:
}

void sub_1D8F5A7A8(void *a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_request;
  v5 = v4 + *(type metadata accessor for FeedUpdateRequest(0) + 60);
  v6 = *v5;
  if (!*v5)
  {
    goto LABEL_4;
  }

  v7 = *(v5 + 8);
  v8 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ctx);

  v9 = v6(a1, 1, v8);
  if ([v9 shouldContinue])
  {

    sub_1D8D15664(v6, v7);
LABEL_4:
    v10 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ctx);
    v11 = swift_allocObject();
    *(v11 + 16) = v2;
    *(v11 + 24) = a1;
    v20 = sub_1D8F5DD8C;
    v21 = v11;
    v16 = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    v18 = sub_1D8CF5F60;
    v19 = &block_descriptor_23;
    v12 = _Block_copy(&v16);

    v13 = a1;

    [v10 performBlock_];
    _Block_release(v12);
    return;
  }

  sub_1D8D77098();
  v14 = swift_allocError();
  *v15 = 11;
  v16 = v14;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  LOBYTE(v20) = 96;
  sub_1D8DA168C(&v16);

  sub_1D8D15664(v6, v7);
}

void sub_1D8F5A9A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = v3 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_request;
  v7 = v6 + *(type metadata accessor for FeedUpdateRequest(0) + 64);
  v8 = *v7;
  if (*v7)
  {
    v9 = *(v7 + 8);
    v10 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ctx);

    v8(a1, a2, v10);
    sub_1D8D15664(v8, v9);
  }

  v11 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ctx);
  v13[4] = sub_1D8F60924;
  v13[5] = v3;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D8CF5F60;
  v13[3] = &block_descriptor_26_2;
  v12 = _Block_copy(v13);

  [v11 performBlock_];
  _Block_release(v12);
}

uint64_t sub_1D8F5AAEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 33))
  {
    return (*a1 + 123);
  }

  v3 = ((*(a1 + 32) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 32) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D8F5AB40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 123;
    *(result + 8) = 0;
    if (a3 >= 0x7B)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1D8F5ABAC(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 32) = *(result + 32) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = -96;
  }

  return result;
}

void sub_1D8F5ABEC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v41 = a1;
  v5 = sub_1D9177FCC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1D9177FDC();
  v9 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8DA1F0C(&unk_1EDCD5C58, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
  sub_1D9177F9C();
  sub_1D8D752C4(a2, a3);
  sub_1D8D75318(a2, a3, v8);
  *&v39 = a2;
  *(&v39 + 1) = a3;
  sub_1D8D7567C(a2, a3);
  sub_1D9177F8C();
  v12 = (*(v6 + 8))(v8, v5);
  v13 = v41;
  v14 = sub_1D8F59FF8(v11, v12);
  (*(v9 + 8))(v11, v40);
  *&v42 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30, MEMORY[0x1E69E6310]);
  v15 = sub_1D917817C();
  v17 = v16;

  v18 = (v13 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_feedUniquenessHash);
  *v18 = v15;
  v18[1] = v17;

  v19 = *(v13 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ctx);
  type metadata accessor for FeedUpdateRequest(0);
  sub_1D9176ACC();
  v20 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v21 = [v19 podcastForFeedUrl_];

  if (!v21)
  {
    goto LABEL_19;
  }

  v22 = [v21 feedUniquenessHash];
  if (!v22)
  {
    v27 = v18[1];
LABEL_9:
    if (!v27)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  v23 = v22;
  v24 = sub_1D917820C();
  v26 = v25;

  v27 = v18[1];
  if (!v26)
  {
    goto LABEL_9;
  }

  if (!v27)
  {

LABEL_18:

LABEL_19:
    v42 = v39;
    v43 = 0uLL;
    v44 = 0;
    sub_1D8DA168C(&v42);
    return;
  }

  if (v24 != *v18 || v27 != v26)
  {
    v28 = sub_1D9179ACC();

    if (v28)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

LABEL_13:
  if (qword_1EDCD1068 != -1)
  {
    swift_once();
  }

  v29 = sub_1D917744C();
  __swift_project_value_buffer(v29, qword_1EDCD1070);

  v30 = sub_1D917741C();
  v31 = sub_1D9178D1C();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v42 = v33;
    *v32 = 141558275;
    *(v32 + 4) = 1752392040;
    *(v32 + 12) = 2081;
    v34 = sub_1D9176ACC();
    v36 = sub_1D8CFA924(v34, v35, &v42);

    *(v32 + 14) = v36;
    _os_log_impl(&dword_1D8CEC000, v30, v31, "Job %{private,mask.hash}s: Feed has not changed since last feed update. Not doing feed update.", v32, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x1DA72CB90](v33, -1, -1);
    MEMORY[0x1DA72CB90](v32, -1, -1);
  }

  v37 = *(v13 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_metricsData + 16);
  v42 = *(v13 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_metricsData);
  v43 = v37;
  v44 = 0x80;
  sub_1D8DA168C(&v42);
}

id sub_1D8F5B104(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ctx);
  type metadata accessor for FeedUpdateRequest(0);
  sub_1D9176ACC();
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v3 = [v1 podcastForFeedUrl_];

  if (v3)
  {
    [objc_opt_self() timeIntervalSinceReferenceDate];
    [v3 setLastFetchedDate_];
  }

  return [v1 saveInCurrentBlock];
}

void sub_1D8F5B1D8(uint64_t a1, void *a2)
{
  v210 = sub_1D9176E3C();
  v4 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v209 = v194 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v205 = v194 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v204 = v194 - v9;
  v10 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ctx);
  v11 = a1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_request;
  updated = type metadata accessor for FeedUpdateRequest(0);
  v220 = *(updated + 20);
  v221 = v11;
  sub_1D9176ACC();
  v13 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v206 = v10;
  v14 = [v10 podcastForFeedUrl_];

  if (!v14)
  {
    goto LABEL_110;
  }

  v15 = [v14 uuid];
  if (!v15)
  {

LABEL_110:
    sub_1D8D77098();
    v182 = swift_allocError();
    *v183 = 10;
    v228 = v182;
    v229 = 0;
    v230 = 0;
    v231 = 0;
    v232 = 96;
    sub_1D8DA168C(&v228);

    return;
  }

  v223 = v4;
  v16 = v15;
  v197 = sub_1D917820C();
  v198 = v17;

  v18 = a2;
  v19 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ingesterProvider + 24);
  v20 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ingesterProvider + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ingesterProvider), v19);
  v21 = *(v221 + *(updated + 48));
  v22 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_updaterJobUUID);
  v23 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_updaterJobUUID + 8);
  v219 = a1;
  v24 = *(v20 + 8);

  v195 = v14;
  v25 = v14;
  v26 = v197;
  v27 = v21;
  v28 = v198;
  v29 = v24(v25, v27, v22, v23, v19, v20);
  v30 = v219;
  v31 = v29;

  [v31 unsafeIngestShow_];
  [v206 saveInCurrentBlock];
  v32 = sub_1D8F5CA58(v18, v26, v28);
  if (!v32)
  {

    swift_unknownObjectRelease();
    return;
  }

  v208 = v32;
  v218 = sub_1D8F5CD68(v26, v28);
  v226 = 0;
  v227 = MEMORY[0x1E69E7CD0];
  v34 = v208 & 0xFFFFFFFFFFFFFF8;
  if (v208 >> 62)
  {
LABEL_129:
    v35 = sub_1D917935C();
  }

  else
  {
    v35 = *((v208 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v207 = v31;
  if (v35 <= 0)
  {
LABEL_104:

    [v206 saveInCurrentBlock];
    sub_1D8F5CEFC(&v226, v218);

    sub_1D8F5D45C(v227, v31);

    [v31 unsafeFinalizeIngestion];
    v167 = v195;
    [v195 setImporting_];
    [v167 setIsTransitioningFromImplicit_];
    if (qword_1EDCD1068 != -1)
    {
      swift_once();
    }

    v168 = sub_1D917744C();
    __swift_project_value_buffer(v168, qword_1EDCD1070);

    v169 = v167;
    v170 = sub_1D917741C();
    v171 = sub_1D9178D1C();

    if (os_log_type_enabled(v170, v171))
    {
      v172 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      v225 = v173;
      *v172 = 141558531;
      *(v172 + 4) = 1752392040;
      *(v172 + 12) = 2081;
      v174 = sub_1D9176ACC();
      v176 = sub_1D8CFA924(v174, v175, &v225);

      *(v172 + 14) = v176;
      *(v172 + 22) = 2082;
      v177 = [v169 uuid];
      if (v177)
      {
        v178 = v177;
        v179 = sub_1D917820C();
        v181 = v180;
      }

      else
      {
        v179 = 0;
        v181 = 0;
      }

      v228 = v179;
      v229 = v181;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
      v184 = sub_1D917826C();
      v186 = sub_1D8CFA924(v184, v185, &v225);

      *(v172 + 24) = v186;
      _os_log_impl(&dword_1D8CEC000, v170, v171, "Job %{private,mask.hash}s: finalized ingestion for show: %{public}s", v172, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v173, -1, -1);
      MEMORY[0x1DA72CB90](v172, -1, -1);
    }

    else
    {
    }

    [v206 saveInCurrentBlock];

    v187 = sub_1D917741C();
    v188 = sub_1D9178D1C();

    if (os_log_type_enabled(v187, v188))
    {
      v189 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v228 = v190;
      *v189 = 141558275;
      *(v189 + 4) = 1752392040;
      *(v189 + 12) = 2081;
      v191 = sub_1D9176ACC();
      v193 = sub_1D8CFA924(v191, v192, &v228);

      *(v189 + 14) = v193;
      _os_log_impl(&dword_1D8CEC000, v187, v188, "Job %{private,mask.hash}s: Processing fully completed.", v189, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v190);
      MEMORY[0x1DA72CB90](v190, -1, -1);
      MEMORY[0x1DA72CB90](v189, -1, -1);
    }

    v228 = v197;
    v229 = v198;
    v230 = 0;
    v231 = 0;
    v232 = 64;
    sub_1D8DA168C(&v228);

    swift_unknownObjectRelease();

    return;
  }

  v224 = 0;
  v196 = v30 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_metricsData;
  v217 = v208 & 0xC000000000000001;
  v200 = v208 + 32;
  v36 = v218 & 0xFFFFFFFFFFFFFF8;
  v214 = v218 & 0xFFFFFFFFFFFFFF8;
  if (v218 < 0)
  {
    v36 = v218;
  }

  v194[1] = v36;
  v213 = v218 & 0xC000000000000001;
  v201 = (v223 + 32);
  v202 = (v223 + 8);
  *&v33 = 141558787;
  v203 = v33;
  *&v33 = 141558531;
  v211 = v33;
  v37 = &selRef_isBackCatalogItem;
  v215 = v35;
  v216 = v34;
  v38 = 0;
  while (1)
  {
    v223 = v38;
    if (v217)
    {
      v39 = MEMORY[0x1DA72AA90]();
    }

    else
    {
      if (v38 < 0)
      {
        goto LABEL_124;
      }

      if (v38 >= *(v34 + 16))
      {
        goto LABEL_125;
      }

      v39 = *(v200 + 8 * v38);
    }

    v40 = v39;
    v41 = [v39 enclosureURL];
    if (!v41)
    {
      goto LABEL_28;
    }

    v42 = [v40 enclosureURL];
    if (!v42)
    {
      goto LABEL_28;
    }

    v222 = v40;
    v43 = v42;
    v44 = sub_1D917820C();
    v46 = v45;

    v40 = v222;
    if (!v46)
    {
      goto LABEL_28;
    }

    v47 = v44 & 0xFFFFFFFFFFFFLL;
    if ((v46 & 0x2000000000000000) != 0)
    {
      v47 = HIBYTE(v46) & 0xF;
    }

    if (!v47)
    {
LABEL_28:
      if (qword_1EDCD1068 != -1)
      {
        swift_once();
      }

      v50 = sub_1D917744C();
      __swift_project_value_buffer(v50, qword_1EDCD1070);

      v51 = v40;
      v52 = sub_1D917741C();
      v53 = sub_1D9178D1C();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v228 = v55;
        *v54 = v203;
        *(v54 + 4) = 1752392040;
        *(v54 + 12) = 2081;
        v56 = sub_1D9176ACC();
        v58 = sub_1D8CFA924(v56, v57, &v228);

        *(v54 + 14) = v58;
        *(v54 + 22) = 2160;
        *(v54 + 24) = 1752392040;
        *(v54 + 32) = 2081;
        v59 = [v51 title];

        if (!v59)
        {
          goto LABEL_131;
        }

        v60 = sub_1D917820C();
        v62 = v61;

        v63 = sub_1D8CFA924(v60, v62, &v228);

        *(v54 + 34) = v63;
        _os_log_impl(&dword_1D8CEC000, v52, v53, "Job %{private,mask.hash}s: feed item without an enclosure: %{private,mask.hash}s", v54, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v55, -1, -1);
        MEMORY[0x1DA72CB90](v54, -1, -1);

        v31 = v207;
        v37 = &selRef_isBackCatalogItem;
      }

      else
      {
      }

      v38 = v223 + 1;
      goto LABEL_12;
    }

    v48 = v218 >> 62 ? sub_1D917935C() : *(v214 + 16);
    v34 = v224;
    if (v224 < v48)
    {
      break;
    }

    v31 = 0;
LABEL_79:
    v34 = v40;
    v127 = [v207 unsafeIngestNewEpisode_];

    if (qword_1EDCD1068 != -1)
    {
      swift_once();
    }

    v140 = sub_1D917744C();
    __swift_project_value_buffer(v140, qword_1EDCD1070);

    v141 = v34;
    v142 = sub_1D917741C();
    v143 = sub_1D9178D1C();

    if (os_log_type_enabled(v142, v143))
    {
      v212 = v127;
      v34 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v228 = v144;
      *v34 = v203;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2081;
      v145 = sub_1D9176ACC();
      v147 = sub_1D8CFA924(v145, v146, &v228);

      *(v34 + 14) = v147;
      *(v34 + 22) = 2160;
      *(v34 + 24) = 1752392040;
      *(v34 + 32) = 2081;
      v148 = [v141 title];

      if (!v148)
      {
        goto LABEL_133;
      }

      v149 = sub_1D917820C();
      v151 = v150;

      v152 = sub_1D8CFA924(v149, v151, &v228);

      *(v34 + 34) = v152;
      _os_log_impl(&dword_1D8CEC000, v142, v143, "Job %{private,mask.hash}s: inserting new episode for server episode: %{private,mask.hash}s", v34, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v144, -1, -1);
      MEMORY[0x1DA72CB90](v34, -1, -1);

      v37 = &selRef_isBackCatalogItem;
      v127 = v212;
    }

    else
    {
    }

    v153 = *(v196 + 8);
    v154 = __OFADD__(v153, 1);
    v155 = v153 + 1;
    v31 = v207;
    v156 = v222;
    if (v154)
    {
      goto LABEL_126;
    }

    *(v196 + 8) = v155;
    if (v127)
    {
LABEL_92:
      v34 = v127;
      v162 = v209;
      sub_1D9176E2C();
      sub_1D9176CCC();
      v164 = v163;
      (*v202)(v162, v210);
      [v34 firstTimeAvailable];
      if (v164 < v165)
      {
        [v34 firstTimeAvailableAsFree];
        if (v166 == 0.0)
        {
          [v34 setFirstTimeAvailable_];
          [v34 setFirstTimeAvailableAsFree_];
        }
      }
    }

    else
    {
      v34 = 0;
    }

    if (__ROR8__(0x8F5C28F5C28F5C29 * v224 + 0x51EB851EB851EB8, 3) <= 0x147AE147AE147AEuLL)
    {
      [v206 saveInCurrentBlock];

      v38 = v223 + 1;
      if (__OFADD__(v223, 1))
      {
        goto LABEL_128;
      }
    }

    else
    {

      v38 = v223 + 1;
      if (__OFADD__(v223, 1))
      {
        goto LABEL_127;
      }
    }

LABEL_12:
    v34 = v216;
    if (v38 >= v215)
    {
      goto LABEL_104;
    }
  }

  v49 = 0;
  v212 = v48;
  do
  {
    v224 = v34;
    if (v213)
    {
      v64 = MEMORY[0x1DA72AA90](v34, v218);
    }

    else
    {
      if ((v34 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      if (v34 >= *(v214 + 16))
      {
        goto LABEL_123;
      }

      v64 = *(v218 + 8 * v34 + 32);
    }

    v65 = v64;

    v31 = v65;
    v66 = v222;
    if (sub_1D8F601B8(v31, v222))
    {

      v124 = (v224 + 1);
      v226 = v224 + 1;
      v49 = v31;
      goto LABEL_71;
    }

    if (qword_1EDCD1068 != -1)
    {
      swift_once();
    }

    v67 = sub_1D917744C();
    __swift_project_value_buffer(v67, qword_1EDCD1070);

    v68 = v66;
    v69 = sub_1D917741C();
    v70 = sub_1D9178D1C();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v228 = v72;
      *v71 = v211;
      *(v71 + 4) = 1752392040;
      *(v71 + 12) = 2081;
      v73 = sub_1D9176ACC();
      v75 = sub_1D8CFA924(v73, v74, &v228);

      *(v71 + 14) = v75;
      *(v71 + 22) = 2080;
      v76 = [v68 title];

      if (!v76)
      {
        goto LABEL_132;
      }

      v77 = sub_1D917820C();
      v79 = v78;

      v80 = sub_1D8CFA924(v77, v79, &v228);

      *(v71 + 24) = v80;
      _os_log_impl(&dword_1D8CEC000, v69, v70, "Job %{private,mask.hash}s: did not find a local episode match for server episode: %s", v71, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v72, -1, -1);
      MEMORY[0x1DA72CB90](v71, -1, -1);

      v37 = &selRef_isBackCatalogItem;
    }

    else
    {
    }

    v81 = [v68 v37[486]];
    v30 = v219;
    if (v81)
    {
      v82 = v205;
      v83 = v81;
      sub_1D9176DFC();

      v84 = v204;
      v85 = v210;
      (*v201)(v204, v82, v210);
      [v31 v37[486]];
      v86 = v209;
      sub_1D9176CBC();
      LOBYTE(v83) = sub_1D9176DAC();
      v87 = *v202;
      (*v202)(v86, v85);
      v87(v84, v85);
      if (v83)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v88 = [v31 guid];
      if (!v88)
      {
LABEL_69:

        v37 = &selRef_isBackCatalogItem;
LABEL_78:
        v40 = v222;
        goto LABEL_79;
      }
    }

    v89 = [v31 uuid];
    if (v89)
    {
      v90 = v89;
      v91 = sub_1D917820C();
      v93 = v92;

      sub_1D8D19AFC(&v228, v91, v93);
    }

    else
    {

      v94 = v31;
      v95 = sub_1D917741C();
      v96 = sub_1D9178CFC();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v199 = swift_slowAlloc();
        v225 = v199;
        *v97 = v203;
        *(v97 + 4) = 1752392040;
        *(v97 + 12) = 2081;
        v98 = sub_1D9176ACC();
        v100 = sub_1D8CFA924(v98, v99, &v225);

        *(v97 + 14) = v100;
        *(v97 + 22) = 2160;
        *(v97 + 24) = 1752392040;
        *(v97 + 32) = 2081;
        v101 = [v94 title];
        if (v101)
        {
          v102 = v101;
          v103 = sub_1D917820C();
          v105 = v104;
        }

        else
        {
          v103 = 0;
          v105 = 0;
        }

        v228 = v103;
        v229 = v105;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
        v106 = sub_1D917826C();
        v108 = sub_1D8CFA924(v106, v107, &v225);

        *(v97 + 34) = v108;
        _os_log_impl(&dword_1D8CEC000, v95, v96, "Job %{private,mask.hash}s: nil UUID for localEpisode no longer in server feed: %{private,mask.hash}s", v97, 0x2Au);
        v109 = v199;
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v109, -1, -1);
        MEMORY[0x1DA72CB90](v97, -1, -1);

        v30 = v219;
      }

      else
      {
      }
    }

    v34 = v224 + 1;
    v226 = v224 + 1;

    v49 = v31;
    v110 = sub_1D917741C();
    v111 = sub_1D9178D1C();

    if (os_log_type_enabled(v110, v111))
    {
      v224 = v34;
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v225 = v113;
      *v112 = v211;
      *(v112 + 4) = 1752392040;
      *(v112 + 12) = 2081;
      v114 = sub_1D9176ACC();
      v116 = sub_1D8CFA924(v114, v115, &v225);

      *(v112 + 14) = v116;
      *(v112 + 22) = 2082;
      v117 = [v49 uuid];

      if (v117)
      {
        v118 = sub_1D917820C();
        v120 = v119;
      }

      else
      {
        v118 = 0;
        v120 = 0;
      }

      v228 = v118;
      v229 = v120;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
      v121 = sub_1D917826C();
      v123 = sub_1D8CFA924(v121, v122, &v225);

      *(v112 + 24) = v123;
      _os_log_impl(&dword_1D8CEC000, v110, v111, "Job %{private,mask.hash}s: marking episode for deletion: %{public}s", v112, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v113, -1, -1);
      MEMORY[0x1DA72CB90](v112, -1, -1);

      v30 = v219;
      v34 = v224;
    }

    else
    {
    }

    v37 = &selRef_isBackCatalogItem;
    v124 = v212;
    if (__ROR8__(0x8F5C28F5C28F5C29 * v34 + 0x51EB851EB851EB8, 3) <= 0x147AE147AE147AEuLL)
    {
      [v206 saveInCurrentBlock];
    }
  }

  while (v124 != v34);
  if (!v49)
  {
    v31 = 0;
    v224 = v124;
    goto LABEL_78;
  }

LABEL_71:
  v125 = v49;

  if (qword_1EDCD1068 != -1)
  {
    swift_once();
  }

  v126 = sub_1D917744C();
  __swift_project_value_buffer(v126, qword_1EDCD1070);

  v127 = v31;
  v128 = sub_1D917741C();
  v129 = sub_1D9178D1C();

  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v225 = v131;
    *v130 = v211;
    *(v130 + 4) = 1752392040;
    *(v130 + 12) = 2081;
    v132 = sub_1D9176ACC();
    v134 = sub_1D8CFA924(v132, v133, &v225);

    *(v130 + 14) = v134;
    *(v130 + 22) = 2082;
    v135 = [v127 uuid];
    if (v135)
    {
      v136 = v135;
      v137 = sub_1D917820C();
      v139 = v138;
    }

    else
    {
      v137 = 0;
      v139 = 0;
    }

    v228 = v137;
    v229 = v139;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
    v157 = sub_1D917826C();
    v159 = sub_1D8CFA924(v157, v158, &v225);

    *(v130 + 24) = v159;
    _os_log_impl(&dword_1D8CEC000, v128, v129, "Job %{private,mask.hash}s: updating episode: %{public}s", v130, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v131, -1, -1);
    MEMORY[0x1DA72CB90](v130, -1, -1);

    v37 = &selRef_isBackCatalogItem;
  }

  else
  {
  }

  v160 = *(v196 + 16);
  v154 = __OFADD__(v160, 1);
  v161 = v160 + 1;
  v31 = v207;
  v156 = v222;
  if (!v154)
  {
    v224 = v124;
    *(v196 + 16) = v161;
    goto LABEL_92;
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
}