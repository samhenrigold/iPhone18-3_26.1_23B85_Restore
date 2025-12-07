unint64_t sub_1D90CC5A8()
{
  result = qword_1ECABA568;
  if (!qword_1ECABA568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA568);
  }

  return result;
}

unint64_t sub_1D90CC600()
{
  result = qword_1ECAB2C28;
  if (!qword_1ECAB2C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2C28);
  }

  return result;
}

unint64_t sub_1D90CC658()
{
  result = qword_1ECAB2C30;
  if (!qword_1ECAB2C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2C30);
  }

  return result;
}

unint64_t sub_1D90CC6B0()
{
  result = qword_1ECABA570;
  if (!qword_1ECABA570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA570);
  }

  return result;
}

unint64_t sub_1D90CC708()
{
  result = qword_1ECABA578;
  if (!qword_1ECABA578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA578);
  }

  return result;
}

uint64_t sub_1D90CC75C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C52557465737361 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C525564656566 && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61725465726F7473 && a2 == 0xEC00000064496B63 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5374736163646F70 && a2 == 0xEE00644965726F74 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1684632935 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D91D5A40 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D91D5A60 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x726F68747561 && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6461656879616C70 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D91D5A80 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D91D5AA0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x556B726F77747261 && a2 == 0xEA00000000004C52 || (sub_1D9179ACC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x637365446D657469 && a2 == 0xEF6E6F6974706972 || (sub_1D9179ACC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x7241726576726573 && a2 == 0xED00006B726F7774 || (sub_1D9179ACC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x7263736275537369 && a2 == 0xEE00656C62616269 || (sub_1D9179ACC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461 || (sub_1D9179ACC() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6D75626C61 && a2 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D91D5AC0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x63696C7078457369 && a2 == 0xEA00000000007469 || (sub_1D9179ACC() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x6972747365527369 && a2 == 0xEC00000064657463 || (sub_1D9179ACC() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D91D5AE0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x657079546D657469 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x7079546563697270 && a2 == 0xE900000000000065 || (sub_1D9179ACC() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x6E694B616964656DLL && a2 == 0xE900000000000064 || (sub_1D9179ACC() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x4E65646F73697065 && a2 == 0xED00007265626D75 || (sub_1D9179ACC() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x754E6E6F73616573 && a2 == 0xEC0000007265626DLL || (sub_1D9179ACC() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x4974736163646F70 && a2 == 0xEF6C616972655373 || (sub_1D9179ACC() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D91D5B00 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0x496B726F77747261 && a2 == 0xEB000000006F666ELL || (sub_1D9179ACC() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D91D5B20 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D91D5B40 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x4C52556572616873 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x5574736163646F70 && a2 == 0xEB00000000444955 || (sub_1D9179ACC() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D91D5B60 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D91D5B80 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D91D5BA0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91D5BC0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D91D5BE0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0x6F6C6C6168537369 && a2 == 0xE900000000000077 || (sub_1D9179ACC() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0x69536D6F72467369 && a2 == 0xEE006B6361706564 || (sub_1D9179ACC() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0x656C654464656566 && a2 == 0xEB00000000646574 || (sub_1D9179ACC() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D91D5C00 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91D5C20 == a2)
  {

    return 45;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 45;
    }

    else
    {
      return 46;
    }
  }
}

uint64_t sub_1D90CD584(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61725465726F7473 && a2 == 0xEC00000064496B63;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5374736163646F70 && a2 == 0xEE00644965726F74 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5574736163646F70 && a2 == 0xEB00000000444955 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D91D5A60 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726F68747561 && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x556B726F77747261 && a2 == 0xEA00000000004C52 || (sub_1D9179ACC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6D75626C61 && a2 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x63696C7078457369 && a2 == 0xEA00000000007469 || (sub_1D9179ACC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x49746E65746E6F63 && a2 == 0xED000044496D6574 || (sub_1D9179ACC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x4C52557465737361 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D91D5B00 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

unint64_t sub_1D90CDA5C()
{
  result = qword_1ECABA580;
  if (!qword_1ECABA580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA580);
  }

  return result;
}

unint64_t sub_1D90CDAB0()
{
  result = qword_1ECABA598;
  if (!qword_1ECABA598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA598);
  }

  return result;
}

uint64_t PodcastsMediaLibrary.MediaItem.shortTrailerSubline.getter()
{
  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  sub_1D917693C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D9189080;
  v2 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v3 = *(v0 + *(v2 + 128));
  v4 = MEMORY[0x1E69E7360];
  v5 = MEMORY[0x1E69E73D8];
  *(v1 + 56) = MEMORY[0x1E69E7360];
  *(v1 + 64) = v5;
  *(v1 + 32) = v3;
  v18 = sub_1D91781DC();
  v7 = v6;

  sub_1D917693C();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D9189080;
  v9 = *(v0 + *(v2 + 124));
  *(v8 + 56) = v4;
  *(v8 + 64) = v5;
  *(v8 + 32) = v9;
  v10 = sub_1D91781DC();
  v12 = v11;

  if (v3 >= 1)
  {
    if (v9 < 1)
    {

      sub_1D917693C();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D9189080;
      *(v16 + 56) = MEMORY[0x1E69E7360];
      *(v16 + 64) = v5;
      *(v16 + 32) = v3;
    }

    else
    {
      sub_1D917693C();
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1D918A530;
      v14 = MEMORY[0x1E69E6158];
      *(v13 + 56) = MEMORY[0x1E69E6158];
      v15 = sub_1D8D34978();
      *(v13 + 32) = v18;
      *(v13 + 40) = v7;
      *(v13 + 96) = v14;
      *(v13 + 104) = v15;
      *(v13 + 64) = v15;
      *(v13 + 72) = v10;
      *(v13 + 80) = v12;
    }

    v10 = sub_1D91781DC();
  }

  return v10;
}

uint64_t PodcastsMediaLibrary.MediaItem.longTrailerSubline.getter()
{
  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  sub_1D917693C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D9189080;
  v2 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v3 = *(v0 + *(v2 + 128));
  v4 = MEMORY[0x1E69E7360];
  v5 = MEMORY[0x1E69E73D8];
  *(v1 + 56) = MEMORY[0x1E69E7360];
  *(v1 + 64) = v5;
  *(v1 + 32) = v3;
  v18 = sub_1D91781DC();
  v7 = v6;

  sub_1D917693C();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D9189080;
  v9 = *(v0 + *(v2 + 124));
  *(v8 + 56) = v4;
  *(v8 + 64) = v5;
  *(v8 + 32) = v9;
  v10 = sub_1D91781DC();
  v12 = v11;

  if (v3 >= 1)
  {
    if (v9 < 1)
    {

      sub_1D917693C();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D9189080;
      *(v16 + 56) = MEMORY[0x1E69E7360];
      *(v16 + 64) = v5;
      *(v16 + 32) = v3;
    }

    else
    {
      sub_1D917693C();
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1D918A530;
      v14 = MEMORY[0x1E69E6158];
      *(v13 + 56) = MEMORY[0x1E69E6158];
      v15 = sub_1D8D34978();
      *(v13 + 32) = v18;
      *(v13 + 40) = v7;
      *(v13 + 96) = v14;
      *(v13 + 104) = v15;
      *(v13 + 64) = v15;
      *(v13 + 72) = v10;
      *(v13 + 80) = v12;
    }

    v10 = sub_1D91781DC();
  }

  return v10;
}

uint64_t PodcastsMediaLibrary.MediaItem.shortBonusSubline.getter()
{
  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  sub_1D917693C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D9189080;
  v2 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v3 = *(v0 + *(v2 + 128));
  v4 = MEMORY[0x1E69E7360];
  v5 = MEMORY[0x1E69E73D8];
  *(v1 + 56) = MEMORY[0x1E69E7360];
  *(v1 + 64) = v5;
  *(v1 + 32) = v3;
  v18 = sub_1D91781DC();
  v7 = v6;

  sub_1D917693C();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D9189080;
  v9 = *(v0 + *(v2 + 124));
  *(v8 + 56) = v4;
  *(v8 + 64) = v5;
  *(v8 + 32) = v9;
  v10 = sub_1D91781DC();
  v12 = v11;

  if (v3 >= 1)
  {
    if (v9 < 1)
    {

      sub_1D917693C();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D9189080;
      *(v16 + 56) = MEMORY[0x1E69E7360];
      *(v16 + 64) = v5;
      *(v16 + 32) = v3;
    }

    else
    {
      sub_1D917693C();
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1D918A530;
      v14 = MEMORY[0x1E69E6158];
      *(v13 + 56) = MEMORY[0x1E69E6158];
      v15 = sub_1D8D34978();
      *(v13 + 32) = v18;
      *(v13 + 40) = v7;
      *(v13 + 96) = v14;
      *(v13 + 104) = v15;
      *(v13 + 64) = v15;
      *(v13 + 72) = v10;
      *(v13 + 80) = v12;
    }

    v10 = sub_1D91781DC();
  }

  return v10;
}

uint64_t PodcastsMediaLibrary.MediaItem.longBonusSubline.getter()
{
  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  sub_1D917693C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D9189080;
  v2 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v3 = *(v0 + *(v2 + 128));
  v4 = MEMORY[0x1E69E7360];
  v5 = MEMORY[0x1E69E73D8];
  *(v1 + 56) = MEMORY[0x1E69E7360];
  *(v1 + 64) = v5;
  *(v1 + 32) = v3;
  v18 = sub_1D91781DC();
  v7 = v6;

  sub_1D917693C();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D9189080;
  v9 = *(v0 + *(v2 + 124));
  *(v8 + 56) = v4;
  *(v8 + 64) = v5;
  *(v8 + 32) = v9;
  v10 = sub_1D91781DC();
  v12 = v11;

  if (v3 >= 1)
  {
    if (v9 < 1)
    {

      sub_1D917693C();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D9189080;
      *(v16 + 56) = MEMORY[0x1E69E7360];
      *(v16 + 64) = v5;
      *(v16 + 32) = v3;
    }

    else
    {
      sub_1D917693C();
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1D918A530;
      v14 = MEMORY[0x1E69E6158];
      *(v13 + 56) = MEMORY[0x1E69E6158];
      v15 = sub_1D8D34978();
      *(v13 + 32) = v18;
      *(v13 + 40) = v7;
      *(v13 + 96) = v14;
      *(v13 + 104) = v15;
      *(v13 + 64) = v15;
      *(v13 + 72) = v10;
      *(v13 + 80) = v12;
    }

    v10 = sub_1D91781DC();
  }

  return v10;
}

uint64_t PodcastsMediaLibrary.MediaItem.shortFullSubline.getter()
{
  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  sub_1D917693C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D9189080;
  v2 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v3 = *(v0 + *(v2 + 128));
  v4 = MEMORY[0x1E69E73D8];
  *(v1 + 56) = MEMORY[0x1E69E7360];
  *(v1 + 64) = v4;
  *(v1 + 32) = v3;
  v16 = sub_1D91781DC();
  v6 = v5;

  sub_1D917693C();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D9189080;
  v8 = *(v0 + *(v2 + 124));
  *(v7 + 56) = MEMORY[0x1E69E7360];
  *(v7 + 64) = v4;
  *(v7 + 32) = v8;
  v9 = sub_1D91781DC();
  v11 = v10;

  if (v3 >= 1)
  {
    if (v8 < 1)
    {
      v9 = v16;
    }

    else
    {
      sub_1D917693C();
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1D918A530;
      v13 = MEMORY[0x1E69E6158];
      *(v12 + 56) = MEMORY[0x1E69E6158];
      v14 = sub_1D8D34978();
      *(v12 + 32) = v16;
      *(v12 + 40) = v6;
      *(v12 + 96) = v13;
      *(v12 + 104) = v14;
      *(v12 + 64) = v14;
      *(v12 + 72) = v9;
      *(v12 + 80) = v11;
      v9 = sub_1D91781DC();
    }
  }

  return v9;
}

uint64_t PodcastsMediaLibrary.MediaItem.longFullSubline.getter()
{
  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  sub_1D917693C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D9189080;
  v2 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v3 = *(v0 + *(v2 + 128));
  v4 = MEMORY[0x1E69E73D8];
  *(v1 + 56) = MEMORY[0x1E69E7360];
  *(v1 + 64) = v4;
  *(v1 + 32) = v3;
  v16 = sub_1D91781DC();
  v6 = v5;

  sub_1D917693C();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D9189080;
  v8 = *(v0 + *(v2 + 124));
  *(v7 + 56) = MEMORY[0x1E69E7360];
  *(v7 + 64) = v4;
  *(v7 + 32) = v8;
  v9 = sub_1D91781DC();
  v11 = v10;

  if (v3 >= 1)
  {
    if (v8 < 1)
    {
      v9 = v16;
    }

    else
    {
      sub_1D917693C();
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1D918A530;
      v13 = MEMORY[0x1E69E6158];
      *(v12 + 56) = MEMORY[0x1E69E6158];
      v14 = sub_1D8D34978();
      *(v12 + 32) = v16;
      *(v12 + 40) = v6;
      *(v12 + 96) = v13;
      *(v12 + 104) = v14;
      *(v12 + 64) = v14;
      *(v12 + 72) = v9;
      *(v12 + 80) = v11;
      v9 = sub_1D91781DC();
    }
  }

  return v9;
}

uint64_t PodcastsMediaLibrary.Request.mediaIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_1D8D092C0(v2, v3, v4, v5, v6);
}

void *PodcastsMediaLibrary.Request.account.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t PodcastsMediaLibrary.Request.sidepack.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t PodcastsMediaLibrary.Request.listSettings.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v4 = *(v1 + 128);
  v10 = *(v1 + 112);
  v3 = v10;
  v11[0] = v4;
  *(v11 + 13) = *(v1 + 141);
  v6 = *(v1 + 80);
  v9[0] = *(v1 + 64);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 77) = *(v11 + 13);
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D90CEEE0(v9, v8);
}

uint64_t sub_1D90CEEE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F78, qword_1D91B16D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy209_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1D90CEF94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 209))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D90CEFF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 208) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 209) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 209) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_1D90CF090()
{
  result = qword_1ECABA5A0;
  if (!qword_1ECABA5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA5A0);
  }

  return result;
}

uint64_t sub_1D90CF0E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 176);
  v64 = *(v2 + 160);
  v65 = v4;
  v66 = *(v2 + 192);
  v67 = *(v2 + 208);
  v5 = *(v2 + 112);
  v61 = *(v2 + 96);
  v62 = v5;
  v6 = *(v2 + 144);
  *v63 = *(v2 + 128);
  *&v63[16] = v6;
  v7 = *(v2 + 48);
  *v58 = *(v2 + 32);
  *&v58[16] = v7;
  v8 = *(v2 + 80);
  v59 = *(v2 + 64);
  v60 = v8;
  v9 = *(v2 + 16);
  v56 = *v2;
  v57 = v9;
  v10 = BYTE8(v64);
  if (BYTE8(v64) && BYTE8(v64) != 1)
  {

    goto LABEL_6;
  }

  v11 = sub_1D9179ACC();

  if (v11)
  {
LABEL_6:
    v12 = a1[3];
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v12);
    v10 = (*(v13 + 16))(BYTE8(v64), v12, v13);
  }

  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  (*(v15 + 8))(&v42, v10, v14, v15);
  if (*(&v43 + 1))
  {
    sub_1D8D6BCE0(&v42, &v30);
    while (1)
    {
      v16 = *(&v31 + 1);
      v17 = *v32;
      __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
      v52 = v64;
      v53 = v65;
      v54 = v66;
      v55 = v67;
      v48 = v61;
      v49 = v62;
      v50 = *v63;
      v51 = *&v63[16];
      v44 = *v58;
      v45 = *&v58[16];
      v46 = v59;
      v47 = v60;
      v42 = v56;
      v43 = v57;
      if ((*(v17 + 16))(&v42, v16, v17))
      {
        break;
      }

      v18 = a1[3];
      v19 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v18);
      if ((*(v19 + 24))(v10, v18, v19))
      {
        break;
      }

      v20 = a1[3];
      v21 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v20);
      v10 = (*(v21 + 16))(v10, v20, v21);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v30);
  }

  else
  {
    sub_1D90CF6C4(&v42);
  }

  __swift_project_boxed_opaque_existential_1(a1 + 7, a1[10]);
  v22 = *&v63[24];
  if (!*&v63[24])
  {
    v22 = a1[5];
  }

  v23 = v65;
  v24 = v66;
  v25 = v67;
  v35 = v61;
  v36 = v62;
  *v37 = *v63;
  *&v37[13] = *&v63[13];
  v33 = v59;
  v34 = v60;
  v30 = v56;
  v31 = v57;
  v32[0] = v58[0];
  v28 = *&v58[8];
  *&v32[8] = *&v58[8];
  *&v32[24] = *&v58[24];
  *&v37[24] = v22;
  *&v38 = v64;
  WORD4(v38) = v10;
  v39 = v65;
  v40 = v66;
  v41 = v67;
  sub_1D8D092C0(v56, *(&v56 + 1), v57, *(&v57 + 1), v58[0]);

  v26 = v28;
  sub_1D90CEEE0(&v59, &v42);
  sub_1D8D0B37C(v23, *(&v23 + 1), v24, *(&v24 + 1), v25);
  sub_1D90D0630(&v30, a2);
  v52 = v38;
  v53 = v39;
  v54 = v40;
  v55 = v41;
  v48 = v35;
  v49 = v36;
  v50 = *v37;
  v51 = *&v37[16];
  v44 = *v32;
  v45 = *&v32[16];
  v46 = v33;
  v47 = v34;
  v42 = v30;
  v43 = v31;
  return sub_1D90CF72C(&v42);
}

BOOL sub_1D90CF4C0(uint64_t a1)
{
  v2 = 0;
  if (*(v1 + 152) == *(a1 + 152) && *(v1 + 160) == *(a1 + 160))
  {
    v22 = *(a1 + 8);
    v23 = *a1;
    v3 = *(a1 + 24);
    v21 = *(a1 + 16);
    v4 = *(a1 + 32);
    v5 = *(a1 + 168);
    v6 = *v1;
    v7 = *(v1 + 8);
    v8 = *(v1 + 16);
    v9 = *(v1 + 24);
    v10 = *(v1 + 32);
    v11 = 0x62694C6C61636F6CLL;
    v12 = 0xEC00000079726172;
    if (*(v1 + 168) != 1)
    {
      v11 = 0x7265666E69;
      v12 = 0xE500000000000000;
    }

    if (*(v1 + 168))
    {
      v13 = v11;
    }

    else
    {
      v13 = 0x495041616964656DLL;
    }

    if (*(v1 + 168))
    {
      v14 = v12;
    }

    else
    {
      v14 = 0xE800000000000000;
    }

    v15 = 0x62694C6C61636F6CLL;
    v16 = 0xEC00000079726172;
    if (v5 != 1)
    {
      v15 = 0x7265666E69;
      v16 = 0xE500000000000000;
    }

    if (v5)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0x495041616964656DLL;
    }

    if (v5)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0xE800000000000000;
    }

    if (v13 == v17 && v14 == v18)
    {

LABEL_23:
      v29 = v6;
      v30 = v7;
      v31 = v8;
      v32 = v9;
      v33 = v10;
      v24 = v23;
      v25 = v22;
      v26 = v21;
      v27 = v3;
      v28 = v4;
      sub_1D8D092C0(v6, v7, v8, v9, v10);
      sub_1D8D092C0(v23, v22, v21, v3, v4);
      v2 = _s18PodcastsFoundation15MediaIdentifierO2eeoiySbAC_ACtFZ_0(&v29, &v24);
      sub_1D8CFEACC(v24, v25, v26, v27, v28);
      sub_1D8CFEACC(v29, v30, v31, v32, v33);
      return v2;
    }

    v19 = sub_1D9179ACC();

    v2 = 0;
    if (v19)
    {
      goto LABEL_23;
    }
  }

  return v2;
}

uint64_t sub_1D90CF6C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA5A8, &unk_1D91B6AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1D90CF75C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 32);
  if (*(v0 + 32) <= 3u)
  {
    if (*(v0 + 32) > 1u)
    {
      if (v3 == 2)
      {

        return v1;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
        v4 = swift_allocObject();
        *(v4 + 16) = xmmword_1D9189080;
        *(v4 + 32) = v1;
        *(v4 + 40) = v2;
      }

      return v4;
    }

    if (!*(v0 + 32))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D9189080;
      sub_1D8E40D20();
      *(v4 + 32) = sub_1D917927C();
      *(v4 + 40) = v18;
      return v4;
    }

    v46 = *(v0 + 8);
    v29 = *(v0 + 152);
    v5 = *(v0 + 160);
    v30 = *(v1 + 16);
    if (v30)
    {
      v57 = *(v0 + 160);
      v49 = *(v0 + 16);
      v52 = *(v0 + 24);
      v31 = v1 + 32;
      sub_1D8E40D20();

      v4 = MEMORY[0x1E69E7CC0];
      do
      {
        v31 += 8;
        v32 = sub_1D917927C();
        v34 = v33;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1D8D4241C(0, *(v4 + 16) + 1, 1, v4);
        }

        v36 = *(v4 + 16);
        v35 = *(v4 + 24);
        v37 = v4;
        if (v36 >= v35 >> 1)
        {
          v37 = sub_1D8D4241C((v35 > 1), v36 + 1, 1, v4);
        }

        *(v37 + 2) = v36 + 1;
        v4 = v37;
        v38 = &v37[16 * v36];
        *(v38 + 4) = v32;
        *(v38 + 5) = v34;
        --v30;
      }

      while (v30);
      sub_1D8CFEACC(v1, v46, v49, v52, 1u);
      v5 = v57;
      if (v29 <= 0)
      {
        return v4;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
      if (v29 <= 0)
      {
        return v4;
      }
    }

    v39 = v5 + v29;
    if (__OFADD__(v5, v29))
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v40 = *(v4 + 16);
    if (v39 >= v40)
    {
      v3 = *(v4 + 16);
    }

    else
    {
      v3 = v5 + v29;
    }

    if (v5 < v40)
    {
      if (v39 < v5)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      if (v5 < 0)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      if (v40 != (v3 - v5))
      {
LABEL_55:
        sub_1D90D0390(v4, v4 + 32, v5, (2 * v3) | 1);
        v43 = v42;

        return v43;
      }
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    if (*(v0 + 32) <= 5u)
    {
      if (v3 == 4)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
        v4 = swift_allocObject();
        *(v4 + 16) = xmmword_1D9189080;
        *(v4 + 32) = v1;
        *(v4 + 40) = v2;
      }
    }

    else if (v3 == 6)
    {
      v19 = *(v1 + 16);
      if (v19)
      {
        v48 = *(v0 + 16);
        v51 = *(v0 + 24);
        v58 = MEMORY[0x1E69E7CC0];

        sub_1D8D41BE0(0, v19, 0);
        v20 = v58;
        v21 = v1 + 32;
        do
        {
          v21 += 8;
          v22 = sub_1D9179A4C();
          v59 = v20;
          v25 = *(v20 + 16);
          v24 = *(v20 + 24);
          if (v25 >= v24 >> 1)
          {
            v55 = v1;
            v27 = v22;
            v28 = v23;
            sub_1D8D41BE0((v24 > 1), v25 + 1, 1);
            v23 = v28;
            v22 = v27;
            v1 = v55;
            v20 = v59;
          }

          *(v20 + 16) = v25 + 1;
          v26 = v20 + 16 * v25;
          *(v26 + 32) = v22;
          *(v26 + 40) = v23;
          --v19;
        }

        while (v19);
        sub_1D8CFEACC(v1, v2, v48, v51, 6u);
        return v20;
      }

      else
      {
        return MEMORY[0x1E69E7CC0];
      }
    }

    else if (v3 == 7)
    {
      v47 = *(v0 + 16);
      v50 = *(v0 + 24);
      v45 = *(v0 + 8);
      v56 = *(v1 + 16);

      v6 = 0;
      v7 = v1 + 64;
      v53 = MEMORY[0x1E69E7CC0];
      v54 = v1;
      v44 = v1 + 64;
LABEL_6:
      v3 = v7 + 40 * v6;
      while (1)
      {
        if (v56 == v6)
        {
          sub_1D8CFEACC(v1, v45, v47, v50, 7u);
          return v53;
        }

        if (v6 >= *(v1 + 16))
        {
          break;
        }

        ++v6;
        v8 = (v3 + 40);
        v9 = *v3;
        v11 = *(v3 - 32);
        v10 = *(v3 - 24);
        v60 = *(v3 - 16);
        v61 = *(v3 - 8);
        sub_1D8E899C4(v11, v10, v60, v61, *v3);
        UniversalEpisodeIdentifier.urlTrackIdentifier()();
        URLTrackIdentifier.stringValue.getter();
        v13 = v12;
        v4 = v14;
        sub_1D8E89A08(v11, v10, v60, v61, v9);

        v3 = v8;
        v1 = v54;
        if (v4)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_1D8D4241C(0, *(v53 + 2) + 1, 1, v53);
          }

          v16 = *(v53 + 2);
          v15 = *(v53 + 3);
          if (v16 >= v15 >> 1)
          {
            v53 = sub_1D8D4241C((v15 > 1), v16 + 1, 1, v53);
          }

          *(v53 + 2) = v16 + 1;
          v17 = &v53[16 * v16];
          *(v17 + 4) = v13;
          *(v17 + 5) = v4;
          v7 = v44;
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_52;
    }
  }

  return v4;
}

char *sub_1D90CFCB0()
{
  v1 = *(&off_1E856C128 + *(v0 + 32));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1D8ECCFF4(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1D8ECCFF4((v2 > 1), v3 + 1, 1, v1);
  }

  *(v1 + 2) = v3 + 1;
  v1[v3 + 32] = 8;
  return v1;
}

uint64_t sub_1D90CFD54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v60 = &v42 - v5;
  v6 = *(v1 + 8);
  v61 = *v1;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = 1;
  v11 = 1;
  v13 = *(v1 + 152);
  v12 = *(v1 + 160);
  if (((1 << v9) & 0xDC) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = 0;
    if (((1 << v9) & 0x23) == 0)
    {
LABEL_6:
      v56 = v10;
      v57 = 0;
      v58 = v11;
      goto LABEL_7;
    }
  }

  if (((1 << v9) & 0xDD) != 0)
  {
LABEL_5:
    v11 = v14;
    goto LABEL_6;
  }

  if (v9 != 1)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v56 = 0;
  v57 = 1;
  v58 = v14;
LABEL_7:
  v78 = v61;
  v79 = v6;
  v80 = v7;
  v81 = v8;
  v82 = v9;
  v87 = *(v1 + 97);
  v88 = *(v1 + 113);
  *v89 = *(v1 + 129);
  v15 = *(v1 + 144);
  v83 = *(v1 + 33);
  v84 = *(v1 + 49);
  v85 = *(v1 + 65);
  v86 = *(v1 + 81);
  *&v89[15] = v15;
  v90 = v13;
  v16 = v12;
  v91 = v12;
  *(v93 + 9) = *(v1 + 193);
  v93[0] = *(v1 + 184);
  v92 = *(v1 + 168);
  v55 = sub_1D90CFCB0();
  if (((1 << v9) & 0xDC) != 0)
  {
    v54 = sub_1D8D946F4(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    if (((1 << v9) & 0x122) == 0)
    {
      v54 = sub_1D8D946F4(&unk_1F54621C0);
      sub_1D900B924(&unk_1F54621E0);
      goto LABEL_18;
    }

    v54 = sub_1D8D946F4(&unk_1F54621F0);
    sub_1D900B924(&unk_1F5462210);
  }

  if (((1 << v9) & 0xDC) == 0)
  {
    if (((1 << v9) & 0x22) != 0)
    {
      v17 = &unk_1F5462130;
LABEL_19:
      v53 = sub_1D8D946F4(v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB9A50, &unk_1D9197130);
      swift_arrayDestroy();
      goto LABEL_20;
    }

LABEL_18:
    v17 = &unk_1F54620F0;
    goto LABEL_19;
  }

  v53 = sub_1D8D946F4(MEMORY[0x1E69E7CC0]);
LABEL_20:
  v62 = v61;
  v63 = v6;
  v64 = v7;
  v65 = v8;
  v66 = v9;
  v71 = *(v2 + 97);
  v72 = *(v2 + 113);
  *v73 = *(v2 + 129);
  v18 = *(v2 + 144);
  v67 = *(v2 + 33);
  v68 = *(v2 + 49);
  v69 = *(v2 + 65);
  v70 = *(v2 + 81);
  *&v73[15] = v18;
  v74 = v13;
  v75 = v16;
  *(v77 + 9) = *(v2 + 193);
  v77[0] = *(v2 + 184);
  v76 = *(v2 + 168);
  v59 = sub_1D90CF75C();
  v19 = 1;
  v20 = 0;
  if (((1 << v9) & 0x1DC) != 0)
  {
    v20 = 0;
    if (v9 == 8 && v13 >= 1)
    {
      v21 = v6 | v61 | v7 | v8;
      v19 = v21 != 0;
      if (v21)
      {
        v20 = 0;
      }

      else
      {
        v20 = v13;
      }
    }
  }

  v52 = v19;
  v51 = v20;
  if (v16 < 1 || v9 && (v9 != 8 || v6 | v61 | v7 | v8))
  {
    v61 = 0;
    v50 = 1;
  }

  else
  {
    v50 = 0;
    v61 = v16;
  }

  v22 = sub_1D9176C2C();
  v23 = *(*(v22 - 8) + 56);
  v23(v60, 1, 1, v22);
  v24 = MEMORY[0x1E69E7CC0];
  v49 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v48 = sub_1D8D94DF8(v24);
  v47 = sub_1D8D951E0(v24);
  v46 = sub_1D8D9503C(v24);
  v44 = sub_1D8D953C4(v24);
  v43 = sub_1D8D952D8(v24);
  v45 = sub_1D8D95394(v24);
  v42 = sub_1D8D957C4(v24);
  *(a1 + 41) = 263;
  *(a1 + 43) = 5;
  *(a1 + 152) = 1;
  *(a1 + 201) = 1;
  v25 = type metadata accessor for MediaRequest.Params(0);
  v26 = v25[28];
  v23((a1 + v26), 1, 1, v22);
  v27 = (a1 + v25[29]);
  v28 = (a1 + v25[31]);
  v29 = v25[34];
  v30 = (a1 + v25[33]);
  v31 = (a1 + v25[35]);
  *a1 = v58;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 4;
  v32 = v57;
  *(a1 + 41) = v56;
  *(a1 + 42) = v32;
  *(a1 + 43) = 5;
  v33 = v48;
  *(a1 + 48) = v49;
  *(a1 + 56) = v33;
  v34 = v55;
  *(a1 + 64) = v47;
  *(a1 + 72) = v34;
  v36 = v53;
  v35 = v54;
  *(a1 + 80) = v46;
  *(a1 + 88) = v35;
  v38 = v43;
  v37 = v44;
  *(a1 + 96) = v36;
  *(a1 + 104) = v37;
  *(a1 + 112) = v24;
  *(a1 + 120) = v38;
  *(a1 + 128) = &unk_1F5462220;
  *(a1 + 136) = v24;
  v39 = v60;
  *(a1 + 144) = v59;
  *(a1 + 152) = 1;
  *(a1 + 160) = v51;
  *(a1 + 168) = v52;
  v40 = v42;
  *(a1 + 176) = v45;
  *(a1 + 184) = v40;
  *(a1 + 192) = v61;
  *(a1 + 200) = v50;
  *(a1 + 201) = 1;
  result = sub_1D8E26828(v39, a1 + v26);
  *v27 = 0;
  v27[1] = 0;
  *(a1 + v25[30]) = 0;
  *v28 = 0;
  v28[1] = 0;
  *(a1 + v25[32]) = v24;
  *v30 = 0;
  v30[1] = 0;
  *(a1 + v29) = 2;
  *v31 = 0;
  v31[1] = 0;
  return result;
}

void *sub_1D90D02E0(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1D917935C();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1D8F06204(v2, 0);

    v1 = sub_1D8F0B0D0(&v5, v3 + 4, v2, v1);
    sub_1D8D1B144(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void sub_1D90D0390(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1D90D0468(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB44D8, &qword_1D91B6370);
      v7 = *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_1D90D0630@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[11];
  *&v54[16] = a1[10];
  v55 = v2;
  v56 = a1[12];
  v57 = *(a1 + 208);
  v3 = a1[7];
  v51 = a1[6];
  v52 = v3;
  v4 = a1[9];
  v53 = a1[8];
  *v54 = v4;
  v5 = a1[3];
  *v48 = a1[2];
  *&v48[16] = v5;
  v6 = a1[5];
  v49 = a1[4];
  v50 = v6;
  v7 = a1[1];
  v46 = *a1;
  v47 = v7;
  if (v54[24] || v48[0] != 3)
  {
    v24 = a1[11];
    *(a2 + 160) = a1[10];
    *(a2 + 176) = v24;
    *(a2 + 192) = a1[12];
    *(a2 + 208) = *(a1 + 208);
    v25 = a1[7];
    *(a2 + 96) = a1[6];
    *(a2 + 112) = v25;
    v26 = a1[9];
    *(a2 + 128) = a1[8];
    *(a2 + 144) = v26;
    v27 = a1[3];
    *(a2 + 32) = a1[2];
    *(a2 + 48) = v27;
    v28 = a1[5];
    *(a2 + 64) = a1[4];
    *(a2 + 80) = v28;
    v29 = a1[1];
    *a2 = *a1;
    *(a2 + 16) = v29;
    return sub_1D90D09E0(&v46, v45);
  }

  v10 = v46;
  v11 = sub_1D90D0AB4(v46, *(&v46 + 1));
  if (v12)
  {
    if (qword_1ECAB0D48 != -1)
    {
      swift_once();
    }

    v13 = sub_1D917744C();
    __swift_project_value_buffer(v13, qword_1ECAB0D50);

    v14 = sub_1D917741C();
    v15 = sub_1D9178CFC();
    sub_1D8CFEACC(v46, *(&v46 + 1), v47, *(&v47 + 1), 3u);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v45[0] = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_1D8CFA924(v10, *(&v10 + 1), v45);
      _os_log_impl(&dword_1D8CEC000, v14, v15, "Adam id not found in local library for %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1DA72CB90](v17, -1, -1);
      MEMORY[0x1DA72CB90](v16, -1, -1);
    }

    v18 = v55;
    *(a2 + 160) = *&v54[16];
    *(a2 + 176) = v18;
    *(a2 + 192) = v56;
    *(a2 + 208) = v57;
    v19 = v52;
    *(a2 + 96) = v51;
    *(a2 + 112) = v19;
    v20 = *v54;
    *(a2 + 128) = v53;
    *(a2 + 144) = v20;
    v21 = *&v48[16];
    *(a2 + 32) = *v48;
    *(a2 + 48) = v21;
    v22 = v50;
    *(a2 + 64) = v49;
    *(a2 + 80) = v22;
    v23 = v47;
    *a2 = v46;
    *(a2 + 16) = v23;
    return sub_1D90D09E0(&v46, v45);
  }

  v31 = v11;
  if (qword_1ECAB0D48 != -1)
  {
    swift_once();
  }

  v32 = sub_1D917744C();
  __swift_project_value_buffer(v32, qword_1ECAB0D50);
  v33 = sub_1D917741C();
  v34 = sub_1D9178D1C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1D8CEC000, v33, v34, "Sucessfully transformed a local request to a MAPI request", v35, 2u);
    MEMORY[0x1DA72CB90](v35, -1, -1);
  }

  v36 = *&v48[24];
  v37 = v55;
  v38 = v56;
  *a2 = v31;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 152) = *&v54[8];
  v39 = *&v48[8];
  *(a2 + 40) = *&v48[8];
  *(a2 + 56) = v36;
  *(a2 + 168) = 0;
  v40 = v57;
  v41 = a1[7];
  *(a2 + 96) = a1[6];
  *(a2 + 112) = v41;
  *(a2 + 128) = a1[8];
  *(a2 + 141) = *(a1 + 141);
  v42 = a1[5];
  *(a2 + 64) = a1[4];
  *(a2 + 80) = v42;
  *(a2 + 176) = v37;
  *(a2 + 192) = v38;
  v43 = v39;
  *(a2 + 208) = v40;

  v44 = v43;
  sub_1D90CEEE0(&v49, v45);
  return sub_1D8D0B37C(v37, *(&v37 + 1), v38, *(&v38 + 1), v40);
}

void sub_1D90D0A3C(void **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v7 = [a2 podcastForUuid_];

  v8 = *a1;
  *a1 = v7;
}

void *sub_1D90D0AB4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 mainQueueContext];

  v17 = 0;
  v6 = swift_allocObject();
  v6[2] = &v17;
  v6[3] = v5;
  v6[4] = a1;
  v6[5] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1D90D0CF8;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1D8D24508;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_80;
  v8 = _Block_copy(aBlock);
  v9 = v5;

  [v9 performBlockAndWait_];
  _Block_release(v8);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    v11 = v17;
    if (v17)
    {
      v12 = objc_opt_self();
      v13 = v11;
      if ([v12 isEmpty_])
      {

        v11 = 0;
      }

      else
      {
        v14 = [v13 storeCollectionId];

        v11 = (v14 & ~(v14 >> 63));
      }
    }

    else
    {
    }

    v15 = v17;

    return v11;
  }

  return result;
}

uint64_t PodcastsMediaLibrary.Response.nextRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 184);
  v16[10] = *(v1 + 168);
  v16[11] = v2;
  v16[12] = *(v1 + 200);
  v17 = *(v1 + 216);
  v3 = *(v1 + 120);
  v16[6] = *(v1 + 104);
  v16[7] = v3;
  v4 = *(v1 + 152);
  v16[8] = *(v1 + 136);
  v16[9] = v4;
  v5 = *(v1 + 56);
  v16[2] = *(v1 + 40);
  v16[3] = v5;
  v6 = *(v1 + 88);
  v16[4] = *(v1 + 72);
  v16[5] = v6;
  v7 = *(v1 + 24);
  v16[0] = *(v1 + 8);
  v16[1] = v7;
  v8 = *(v1 + 184);
  *(a1 + 160) = *(v1 + 168);
  *(a1 + 176) = v8;
  *(a1 + 192) = *(v1 + 200);
  *(a1 + 208) = *(v1 + 216);
  v9 = *(v1 + 120);
  *(a1 + 96) = *(v1 + 104);
  *(a1 + 112) = v9;
  v10 = *(v1 + 152);
  *(a1 + 128) = *(v1 + 136);
  *(a1 + 144) = v10;
  v11 = *(v1 + 56);
  *(a1 + 32) = *(v1 + 40);
  *(a1 + 48) = v11;
  v12 = *(v1 + 88);
  *(a1 + 64) = *(v1 + 72);
  *(a1 + 80) = v12;
  v13 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v13;
  return sub_1D90D0E00(v16, v15);
}

uint64_t sub_1D90D0E00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA5B0, &qword_1D91B5758);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation0A12MediaLibraryC7RequestVSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy218_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 202) = *(a2 + 202);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1D90D0EE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 218))
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

uint64_t sub_1D90D0F28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 216) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 218) = 1;
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

    *(result + 218) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D90D0FB0(__int128 *a1)
{
  v3 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0) - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[11];
  v37 = a1[10];
  v38 = v7;
  v39 = a1[12];
  v40 = *(a1 + 208);
  v8 = a1[7];
  v33 = a1[6];
  v34 = v8;
  v9 = a1[9];
  v35 = a1[8];
  v36 = v9;
  v10 = a1[3];
  v29 = a1[2];
  v30 = v10;
  v11 = a1[5];
  v31 = a1[4];
  v32 = v11;
  v12 = a1[1];
  v27 = *a1;
  v28 = v12;
  v13 = *(*v1 + 16);
  if (v13)
  {
    v14 = *v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v15 = *(v4 + 72);
    v16 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D90D11F4(v14, v6);
      if (v6[56] == 1)
      {
        sub_1D9096E98(v6);
      }

      else
      {
        v26[1] = *(v6 + 6);
        sub_1D8E40D20();
        v17 = sub_1D917927C();
        v19 = v18;
        sub_1D9096E98(v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D8D4241C(0, *(v16 + 2) + 1, 1, v16);
        }

        v21 = *(v16 + 2);
        v20 = *(v16 + 3);
        if (v21 >= v20 >> 1)
        {
          v16 = sub_1D8D4241C((v20 > 1), v21 + 1, 1, v16);
        }

        *(v16 + 2) = v21 + 1;
        v22 = &v16[16 * v21];
        *(v22 + 4) = v17;
        *(v22 + 5) = v19;
      }

      v14 += v15;
      --v13;
    }

    while (v13);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v23 = sub_1D90CF75C();
  v24 = sub_1D90D1258(v23, v16);

  return v24;
}

uint64_t sub_1D90D11F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D90D1258(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = *(a1 + 16);
  v5 = (a2 + 40);
  v6 = (a1 + 40);
  while (v4 != v3)
  {
    v7 = *(v5 - 1) == *(v6 - 1) && *v5 == *v6;
    if (!v7 && (sub_1D9179ACC() & 1) == 0)
    {
      return v3;
    }

    ++v3;
    v5 += 2;
    v6 += 2;
    if (v2 == v3)
    {
      return v2;
    }
  }

  return v4;
}

void *sub_1D90D12F4(__int128 *a1)
{
  v109 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v90 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v78 - v6;
  v8 = type metadata accessor for MediaRequest.Params(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D917825C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[11];
  v105 = a1[10];
  v106 = v15;
  v107 = a1[12];
  v108 = *(a1 + 208);
  v16 = a1[7];
  v101 = a1[6];
  v102 = v16;
  v17 = a1[9];
  v103 = a1[8];
  v104 = v17;
  v18 = a1[3];
  v97 = a1[2];
  v98 = v18;
  v19 = a1[5];
  v99 = a1[4];
  v100 = v19;
  v20 = a1[1];
  v95 = *a1;
  v96 = v20;
  if (!*(&v98 + 1))
  {
    goto LABEL_11;
  }

  v87 = v4;

  sub_1D917824C();
  v21 = sub_1D917821C();
  v23 = v22;

  (*(v12 + 8))(v14, v11);
  if (v23 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v24 = objc_opt_self();
  v25 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  *&v93[0] = 0;
  v26 = [v24 JSONObjectWithData:v25 options:0 error:v93];

  if (!v26)
  {
    v34 = *&v93[0];
    sub_1D90CF72C(&v95);
    v35 = sub_1D9176A6C();

    swift_willThrow();
    sub_1D8D75668(v21, v23);

    goto LABEL_12;
  }

  v27 = *&v93[0];
  sub_1D917928C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4638, &qword_1D918A078);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D8D75668(v21, v23);
LABEL_11:
    sub_1D90CF72C(&v95);
LABEL_12:
    if (qword_1ECAB0D48 != -1)
    {
      goto LABEL_65;
    }

    goto LABEL_13;
  }

  v84 = v21;
  v28 = v92;
  type metadata accessor for MediaRequestResponseParser();
  v93[11] = v106;
  v93[12] = v107;
  v93[7] = v102;
  v93[8] = v103;
  v94 = v108;
  v93[9] = v104;
  v93[10] = v105;
  v93[2] = v97;
  v93[3] = v98;
  v93[4] = v99;
  v93[5] = v100;
  v93[6] = v101;
  v93[0] = v95;
  v93[1] = v96;
  sub_1D90CFD54(v10);
  sub_1D90CF72C(&v95);
  _s18PodcastsFoundation26MediaRequestResponseParserC15extractNextPageySSSgSDys11AnyHashableVypGFZ_0(v28);
  if (v29)
  {
  }

  sub_1D90507E0(v28, &v92);
  v30 = v92;
  if (BYTE1(v92) == 1)
  {
    sub_1D904FAFC();
    v31 = swift_allocError();
    *v32 = v30;

    sub_1D8D90BEC(v10);
    v33 = v84;
    goto LABEL_19;
  }

  v91[0] = v92;
  v41 = sub_1D9052EB8(v28, v91);
  v31 = v42;

  sub_1D8D90BEC(v10);
  v33 = v84;
  if (!v31)
  {
    v92 = MEMORY[0x1E69E7CC0];
    v51 = v41;
    if (v41 >> 62)
    {
      v52 = sub_1D917935C();
      if (v52)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v52 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v52)
      {
LABEL_25:
        v31 = 0;
        v82 = v52;
        v83 = v41 & 0xC000000000000001;
        v78 = v41 + 32;
        v79 = v41 & 0xFFFFFFFFFFFFFF8;
        v88 = v7;
        v80 = v23;
        v81 = v41;
        while (1)
        {
          while (1)
          {
            if (v83)
            {
              v54 = MEMORY[0x1DA72AA90](v31, v51);
              v55 = __OFADD__(v31++, 1);
              if (v55)
              {
                goto LABEL_66;
              }
            }

            else
            {
              if (v31 >= *(v79 + 16))
              {
                goto LABEL_67;
              }

              v54 = *(v78 + 8 * v31);
              swift_unknownObjectRetain();
              v55 = __OFADD__(v31++, 1);
              if (v55)
              {
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
                goto LABEL_68;
              }
            }

            v86 = v31;
            type metadata accessor for ServerPodcast();
            v85 = v54;
            v56 = swift_dynamicCastClass();
            if (!v56)
            {
              break;
            }

            v57 = v56;
            v58 = OBJC_IVAR___MTServerPodcast_episodes;
            swift_beginAccess();
            v59 = *&v57[v58];
            if (!v59)
            {
              break;
            }

            v60 = v59 & 0xFFFFFFFFFFFFFF8;
            if (v59 >> 62)
            {
              v61 = sub_1D917935C();
            }

            else
            {
              v61 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v61)
            {
              v62 = 0;
              v89 = v59 & 0xC000000000000001;
              v53 = MEMORY[0x1E69E7CC0];
              while (1)
              {
                if (v89)
                {
                  v63 = MEMORY[0x1DA72AA90](v62, v59);
                }

                else
                {
                  if (v62 >= *(v60 + 16))
                  {
                    goto LABEL_64;
                  }

                  v63 = *(v59 + 8 * v62 + 32);
                }

                v64 = v63;
                v65 = v62 + 1;
                if (__OFADD__(v62, 1))
                {
                  break;
                }

                v66 = v57;
                sub_1D90C554C(v64, v57, 1, v7);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v53 = sub_1D8ECD960(0, v53[2] + 1, 1, v53);
                }

                v68 = v53[2];
                v67 = v53[3];
                if (v68 >= v67 >> 1)
                {
                  v53 = sub_1D8ECD960((v67 > 1), v68 + 1, 1, v53);
                }

                v53[2] = v68 + 1;
                v69 = v53 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v68;
                v7 = v88;
                sub_1D90977D8(v88, v69);
                ++v62;
                v70 = v65 == v61;
                v60 = v59 & 0xFFFFFFFFFFFFFF8;
                if (v70)
                {
                  goto LABEL_27;
                }
              }

              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              swift_once();
LABEL_13:
              v36 = sub_1D917744C();
              __swift_project_value_buffer(v36, qword_1ECAB0D50);
              v37 = sub_1D917741C();
              v38 = sub_1D9178CFC();
              if (os_log_type_enabled(v37, v38))
              {
                v39 = swift_slowAlloc();
                *v39 = 0;
                _os_log_impl(&dword_1D8CEC000, v37, v38, "Siri sidepack is not valid JSON", v39, 2u);
                MEMORY[0x1DA72CB90](v39, -1, -1);
              }

LABEL_15:

              return 0;
            }

            v53 = MEMORY[0x1E69E7CC0];
LABEL_27:

            sub_1D8E30274(v53);
            swift_unknownObjectRelease();
            v23 = v80;
            v51 = v81;
            v33 = v84;
LABEL_28:
            v31 = v86;
            if (v86 == v82)
            {
              goto LABEL_62;
            }
          }

          type metadata accessor for ServerPodcastEpisode();
          v71 = swift_dynamicCastClass();
          if (!v71)
          {
            swift_unknownObjectRelease();
            goto LABEL_28;
          }

          v72 = v71;
          swift_unknownObjectRetain();
          sub_1D90C554C(v72, 0, 1, v87);
          v73 = v92;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v75 = v82;
          v31 = v86;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v73 = sub_1D8ECD960(0, v73[2] + 1, 1, v73);
          }

          v77 = v73[2];
          v76 = v73[3];
          if (v77 >= v76 >> 1)
          {
            v73 = sub_1D8ECD960((v76 > 1), v77 + 1, 1, v73);
          }

          swift_unknownObjectRelease();
          v73[2] = v77 + 1;
          sub_1D90977D8(v87, v73 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v77);
          v92 = v73;
          v51 = v81;
          if (v31 == v75)
          {
LABEL_62:
            sub_1D8D75668(v33, v23);

            return v92;
          }
        }
      }
    }

    sub_1D8D75668(v33, v23);

    return v92;
  }

LABEL_19:
  if (qword_1ECAB0D48 != -1)
  {
LABEL_68:
    swift_once();
  }

  v43 = sub_1D917744C();
  __swift_project_value_buffer(v43, qword_1ECAB0D50);
  v44 = v31;
  v37 = sub_1D917741C();
  v45 = sub_1D9178CFC();

  if (os_log_type_enabled(v37, v45))
  {
    v46 = swift_slowAlloc();
    v47 = v33;
    v48 = swift_slowAlloc();
    *v46 = 138412290;
    v49 = v31;
    v50 = _swift_stdlib_bridgeErrorToNSError();
    *(v46 + 4) = v50;
    *v48 = v50;
    sub_1D8E262AC(v48);
    MEMORY[0x1DA72CB90](v48, -1, -1);
    MEMORY[0x1DA72CB90](v46, -1, -1);
    sub_1D8D75668(v47, v23);

    goto LABEL_15;
  }

  sub_1D8D75668(v33, v23);

  return 0;
}

PodcastsFoundation::URLTrackIdentifier __swiftcall UniversalEpisodeIdentifier.urlTrackIdentifier()()
{
  v2 = v0;
  v3 = *v1;
  if (*(v1 + 32))
  {
    v5 = *(v1 + 16);
    v4 = *(v1 + 24);
    v6 = *(v1 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA520, &unk_1D91B5B60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D918A530;
    *(inited + 32) = 8;
    *(inited + 40) = v3;
    *(inited + 48) = v6;
    *(inited + 56) = 5;
    *(inited + 64) = v5;
    *(inited + 72) = v4;
    sub_1D8E899C4(v3, v6, v5, v4, 1);
    v8 = sub_1D8E27754(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA528, &qword_1D91B4C70);
    result.arguments._rawValue = swift_arrayDestroy();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA520, &unk_1D91B5B60);
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_1D9189080;
    *(v10 + 32) = 3;
    sub_1D8E40D20();
    *(v10 + 40) = sub_1D917927C();
    *(v10 + 48) = v11;
    v8 = sub_1D8E27754(v10);
    swift_setDeallocating();
    result.arguments._rawValue = sub_1D90D2F8C(v10 + 32);
  }

  *(v2 + 8) = 4;
  *v2 = v8;
  result.command = v9;
  return result;
}

uint64_t sub_1D90D1E84(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA608, &qword_1D91B5F38);
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA610, &qword_1D91B5F40);
  v18 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA618, &qword_1D91B5F48);
  v10 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v12 = &v18 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90D32E4();
  sub_1D9179F1C();
  v13 = *v2;
  if (v2[4])
  {
    v27 = 1;
    sub_1D90D3338();
    sub_1D917993C();
    v26 = 0;
    v15 = v20;
    v14 = v21;
    sub_1D91799BC();
    if (!v14)
    {
      v25 = 1;
      sub_1D91799BC();
    }

    (*(v19 + 8))(v6, v15);
    return (*(v10 + 8))(v12, v22);
  }

  else
  {
    v24 = 0;
    sub_1D90D338C();
    v16 = v22;
    sub_1D917993C();
    v23 = v13;
    sub_1D8EF1720();
    sub_1D91799FC();
    (*(v18 + 8))(v9, v7);
    return (*(v10 + 8))(v12, v16);
  }
}

uint64_t sub_1D90D21E8(uint64_t a1)
{
  v2 = sub_1D90D338C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90D2224(uint64_t a1)
{
  v2 = sub_1D90D338C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D90D2260()
{
  if (*v0)
  {
    return 1684632935;
  }

  else
  {
    return 0x44496D616461;
  }
}

void sub_1D90D2290(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x44496D616461 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D9179ACC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1684632935 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D90D2368(uint64_t a1)
{
  v2 = sub_1D90D32E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90D23A4(uint64_t a1)
{
  v2 = sub_1D90D32E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D90D23E0()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

void sub_1D90D23FC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D9179ACC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D90D24C8(uint64_t a1)
{
  v2 = sub_1D90D3338();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90D2504(uint64_t a1)
{
  v2 = sub_1D90D3338();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D90D2540@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D90D33E0(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D90D25A0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 32);
  if (*(a1 + 32) != 1)
  {
    return (v3 == v4) & ~v5;
  }

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = a2[2];
  v9 = a2[3];
  v10 = v3 == v4 && a1[1] == a2[1];
  if (!v10 && (sub_1D9179ACC() & 1) == 0)
  {
    return 0;
  }

  if (v6 == v8 && v7 == v9)
  {
    return 1;
  }

  return sub_1D9179ACC();
}

void sub_1D90D266C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v4 = sub_1D8F06F8C(3);
    if (v5)
    {
      v6 = (*(v3 + 56) + 16 * v4);
      v7 = v6[1];
      if (v7)
      {
        v8 = *v6;

        v9 = sub_1D8FE6808(v8, v7);

        if (v9 && v9 != 1000000000000)
        {

          v20 = 0;
          v21 = 0uLL;
          v22 = v9;
LABEL_19:
          *a2 = v22;
          *(a2 + 16) = v21;
          goto LABEL_18;
        }
      }
    }

    if (*(v3 + 16))
    {
      v11 = sub_1D8F06F8C(8);
      if (v12)
      {
        v13 = (*(v3 + 56) + 16 * v11);
        v14 = v13[1];
        if (v14)
        {
          if (*(v3 + 16))
          {
            v15 = *v13;

            v16 = sub_1D8F06F8C(5);
            if (v17)
            {
              v18 = (*(v3 + 56) + 16 * v16);
              v19 = v18[1];
              v23 = *v18;

              if (v19)
              {
                *&v21 = v23;
                *(&v21 + 1) = v19;
                *&v22 = v15;
                *(&v22 + 1) = v14;
                v20 = 1;
                goto LABEL_19;
              }
            }

            else
            {
            }
          }
        }
      }
    }
  }

  *a2 = 0u;
  *(a2 + 16) = 0u;
  v20 = -1;
LABEL_18:
  *(a2 + 32) = v20;
}

uint64_t sub_1D90D27E8(uint64_t a1)
{
  v2 = sub_1D90D2FF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D90D2824(uint64_t a1)
{
  v2 = sub_1D90D2FF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UniversalEpisodeIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA5B8, &qword_1D91B5B70);
  v4 = *(v3 - 8);
  v17 = v3;
  v18 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v12 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1D8E899C4(v7, v8, v9, v10, v11);
  sub_1D90D2FF4();
  sub_1D9179F1C();
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  sub_1D90D3048();
  v13 = v17;
  sub_1D91799FC();
  v14 = sub_1D8E89A08(v7, v8, v9, v10, v11);
  return (*(v18 + 8))(v6, v13, v14);
}

uint64_t UniversalEpisodeIdentifier.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 32) == 1)
  {
    MEMORY[0x1DA72B390](1);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

    return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    return MEMORY[0x1DA72B3C0](v2);
  }
}

uint64_t UniversalEpisodeIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  sub_1D9179DBC();
  if (v2 == 1)
  {
    MEMORY[0x1DA72B390](1);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](v1);
  }

  return sub_1D9179E1C();
}

uint64_t UniversalEpisodeIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA5D0, &qword_1D91B5B78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D90D2FF4();
  sub_1D9179EEC();
  if (!v2)
  {
    sub_1D90D309C();
    sub_1D91798FC();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = v12[1];
    *a2 = v12[0];
    *(a2 + 16) = v10;
    *(a2 + 32) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D90D2CBC()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  sub_1D9179DBC();
  if (v2 == 1)
  {
    MEMORY[0x1DA72B390](1);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](v1);
  }

  return sub_1D9179E1C();
}

uint64_t sub_1D90D2D60(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 32) == 1)
  {
    MEMORY[0x1DA72B390](1);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

    return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    return MEMORY[0x1DA72B3C0](v2);
  }
}

uint64_t sub_1D90D2E08(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 32);
  sub_1D9179DBC();
  if (v3 == 1)
  {
    MEMORY[0x1DA72B390](1);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](v2);
  }

  return sub_1D9179E1C();
}

uint64_t _s18PodcastsFoundation26UniversalEpisodeIdentifierV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 32);
  if (*(a1 + 32) == 1)
  {
    if ((a2[4] & 1) == 0)
    {
      return 0;
    }

    v6 = a1[2];
    v7 = a1[3];
    v8 = a2[2];
    v9 = a2[3];
    v10 = v3 == v4 && a1[1] == a2[1];
    if (!v10 && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }

    v11 = v6 == v8 && v7 == v9;
    if (!v11 && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v3 != v4)
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D90D2F8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA528, &qword_1D91B4C70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D90D2FF4()
{
  result = qword_1ECABA5C0;
  if (!qword_1ECABA5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA5C0);
  }

  return result;
}

unint64_t sub_1D90D3048()
{
  result = qword_1ECABA5C8;
  if (!qword_1ECABA5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA5C8);
  }

  return result;
}

unint64_t sub_1D90D309C()
{
  result = qword_1ECABA5D8;
  if (!qword_1ECABA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA5D8);
  }

  return result;
}

unint64_t sub_1D90D30F4()
{
  result = qword_1ECABA5E0;
  if (!qword_1ECABA5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA5E0);
  }

  return result;
}

unint64_t sub_1D90D3188()
{
  result = qword_1ECABA5E8;
  if (!qword_1ECABA5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA5E8);
  }

  return result;
}

unint64_t sub_1D90D31E0()
{
  result = qword_1ECABA5F0;
  if (!qword_1ECABA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA5F0);
  }

  return result;
}

unint64_t sub_1D90D3238()
{
  result = qword_1ECABA5F8;
  if (!qword_1ECABA5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA5F8);
  }

  return result;
}

unint64_t sub_1D90D3290()
{
  result = qword_1ECABA600;
  if (!qword_1ECABA600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA600);
  }

  return result;
}

unint64_t sub_1D90D32E4()
{
  result = qword_1ECABA620;
  if (!qword_1ECABA620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA620);
  }

  return result;
}

unint64_t sub_1D90D3338()
{
  result = qword_1ECABA628;
  if (!qword_1ECABA628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA628);
  }

  return result;
}

unint64_t sub_1D90D338C()
{
  result = qword_1ECABA630;
  if (!qword_1ECABA630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA630);
  }

  return result;
}

uint64_t sub_1D90D33E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA638, &qword_1D91B5F50);
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA640, &qword_1D91B5F58);
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA648, &unk_1D91B5F60);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D90D32E4();
  v14 = v41;
  sub_1D9179EEC();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v42);
  }

  v41 = v10;
  v15 = v39;
  v16 = v40;
  v17 = sub_1D917991C();
  v18 = (2 * *(v17 + 16)) | 1;
  v43 = v17;
  v44 = v17 + 32;
  v45 = 0;
  v46 = v18;
  v19 = sub_1D8E89BE0();
  if (v19 == 2 || v45 != v46 >> 1)
  {
    v21 = sub_1D917951C();
    swift_allocError();
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5400, &qword_1D918EE50);
    *v23 = &type metadata for UniversalEpisodeIdentifier.Identifier;
    sub_1D917983C();
    sub_1D91794FC();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
    swift_willThrow();
    (*(v41 + 8))(v12, v9);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v42);
  }

  v36 = v19;
  if (v19)
  {
    LOBYTE(v47) = 1;
    sub_1D90D3338();
    sub_1D917982C();
    v20 = v41;
    LOBYTE(v47) = 0;
    v26 = v5;
    v27 = sub_1D91798BC();
    v29 = v28;
    v35 = v27;
    v37 = v9;
    LOBYTE(v47) = 1;
    v30 = sub_1D91798BC();
    v31 = *(v38 + 8);
    v41 = v32;
    v31(v26, v15);
    (*(v20 + 8))(v12, v37);
    swift_unknownObjectRelease();
    v33 = v35;
    v34 = v41;
  }

  else
  {
    LOBYTE(v47) = 0;
    sub_1D90D338C();
    sub_1D917982C();
    v25 = v41;
    sub_1D8EF1774();
    sub_1D91798FC();
    (*(v37 + 8))(v8, v6);
    (*(v25 + 8))(v12, v9);
    swift_unknownObjectRelease();
    v29 = 0;
    v30 = 0;
    v34 = 0;
    v33 = v47;
  }

  result = __swift_destroy_boxed_opaque_existential_1Tm(v42);
  *v16 = v33;
  *(v16 + 8) = v29;
  *(v16 + 16) = v30;
  *(v16 + 24) = v34;
  *(v16 + 32) = v36 & 1;
  return result;
}

unint64_t sub_1D90D39F8()
{
  result = qword_1ECABA650;
  if (!qword_1ECABA650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA650);
  }

  return result;
}

unint64_t sub_1D90D3A50()
{
  result = qword_1ECABA658;
  if (!qword_1ECABA658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA658);
  }

  return result;
}

unint64_t sub_1D90D3AA8()
{
  result = qword_1ECABA660;
  if (!qword_1ECABA660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA660);
  }

  return result;
}

unint64_t sub_1D90D3B00()
{
  result = qword_1ECABA668;
  if (!qword_1ECABA668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA668);
  }

  return result;
}

unint64_t sub_1D90D3B58()
{
  result = qword_1ECABA670;
  if (!qword_1ECABA670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA670);
  }

  return result;
}

unint64_t sub_1D90D3BB0()
{
  result = qword_1ECABA678;
  if (!qword_1ECABA678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA678);
  }

  return result;
}

unint64_t sub_1D90D3C08()
{
  result = qword_1ECABA680;
  if (!qword_1ECABA680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA680);
  }

  return result;
}

unint64_t sub_1D90D3C60()
{
  result = qword_1ECABA688;
  if (!qword_1ECABA688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA688);
  }

  return result;
}

unint64_t sub_1D90D3CB8()
{
  result = qword_1ECABA690;
  if (!qword_1ECABA690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA690);
  }

  return result;
}

void sub_1D90D3D20(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - v4;
  v35 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v6 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28 = &v28 - v9;
  v32 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D917931C();
    sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
    sub_1D8D54E74(&qword_1ECAAFC60, &qword_1EDCD5B00, off_1E85675C8);
    sub_1D9178B3C();
    a1 = v37;
    v10 = v38;
    v12 = v39;
    v11 = v40;
    v13 = v41;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v10 = a1 + 56;
    v12 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(a1 + 56);

    v11 = 0;
  }

  v31 = v12;
  v34 = (v6 + 56);
  v29 = v6;
  v17 = (v6 + 48);
  v33 = MEMORY[0x1E69E7CC0];
  while (a1 < 0)
  {
    v21 = sub_1D917938C();
    if (!v21 || (v36 = v21, sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8), swift_dynamicCast(), (v20 = v42) == 0))
    {
LABEL_24:
      sub_1D8D1B144(a1);
      return;
    }

LABEL_17:
    v22 = v20;
    sub_1D90BFA08(v22, v5);
    v23 = v35;
    (*v34)(v5, 0, 1, v35);

    if ((*v17)(v5, 1, v23) == 1)
    {
      sub_1D8D08A50(v5, &qword_1ECAB9F70, qword_1D91B1680);
    }

    else
    {
      v24 = v28;
      sub_1D90DDFAC(v5, v28, type metadata accessor for PodcastsMediaLibrary.MediaItem);
      sub_1D90DDFAC(v24, v30, type metadata accessor for PodcastsMediaLibrary.MediaItem);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1D8ECD960(0, v33[2] + 1, 1, v33);
      }

      v26 = v33[2];
      v25 = v33[3];
      if (v26 >= v25 >> 1)
      {
        v33 = sub_1D8ECD960((v25 > 1), v26 + 1, 1, v33);
      }

      v27 = v33;
      v33[2] = v26 + 1;
      sub_1D90DDFAC(v30, v27 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26, type metadata accessor for PodcastsMediaLibrary.MediaItem);
    }
  }

  v18 = v11;
  v19 = v13;
  if (v13)
  {
LABEL_13:
    v13 = (v19 - 1) & v19;
    v20 = *(*(a1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v20)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v11 >= ((v12 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v19 = *(v10 + 8 * v11);
    ++v18;
    if (v19)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void *sub_1D90D4168(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v14;
  v46 = a5;
  v44 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v42 - v18;
  v19 = sub_1D91791BC();
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v49 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v55 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v31 = &v42 - v30;
  v32 = sub_1D917840C();
  v63 = sub_1D917960C();
  v58 = sub_1D917961C();
  sub_1D91795BC();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_1D91783FC();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1D91791DC();
      result = (*v34)(v23, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v23, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v23, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v23, AssociatedTypeWitness);
      sub_1D91795FC();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_1D91791DC();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_1D91795FC();
      sub_1D91791DC();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

void sub_1D90D485C(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setUuid_];
}

uint64_t sub_1D90D48CC(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  v28 = MEMORY[0x1E69E7CD0];

  v6 = 0;
  v7 = sub_1D90DCCF0(v5, a2, &v28);

  if (v7 >> 62)
  {
    goto LABEL_36;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (!v8)
  {

    a2 = *(MEMORY[0x1E69E7CC0] + 16);
    if (a2)
    {
LABEL_15:
      a2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AA0, &unk_1D91B63B0);
      v15 = sub_1D91797AC();
LABEL_18:
      v28 = v15;

      sub_1D90DC230(v16, 1, &v28);
      if (v6)
      {
        goto LABEL_38;
      }

      v6 = v28;
      v17 = MEMORY[0x1E69E7CC0];
      v28 = MEMORY[0x1E69E7CC0];
      v18 = *(a1 + 16);
      if (!v18)
      {
LABEL_32:

        return v17;
      }

      a1 += 32;
      v19 = 0;
      while (1)
      {
        v7 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (v6[2] && (a2 = v6, v20 = sub_1D8D1AC44(*(a1 + 8 * v19)), (v21 & 1) != 0))
        {
          v22 = *(v6[7] + 8 * v20);
          MEMORY[0x1DA729B90]();
          if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D917863C();
          }

          a2 = &v28;
          sub_1D917869C();
          v17 = v28;
          if (v7 == v18)
          {
            goto LABEL_32;
          }

          ++v19;
          if (v7 >= v18)
          {
LABEL_21:
            __break(1u);
            goto LABEL_22;
          }
        }

        else
        {
LABEL_22:
          ++v19;
          if (v7 == v18)
          {
            goto LABEL_32;
          }

          if (v19 >= v18)
          {
            goto LABEL_21;
          }
        }
      }
    }

LABEL_17:
    v15 = MEMORY[0x1E69E7CC8];
    goto LABEL_18;
  }

  v26 = a2;
  v28 = MEMORY[0x1E69E7CC0];
  sub_1D8E317FC(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v24 = v6;
    v25 = a1;
    v9 = 0;
    v10 = v28;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1DA72AA90](v9, v7);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }

        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_35:
          __break(1u);
LABEL_36:
          v8 = sub_1D917935C();
          goto LABEL_3;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      swift_getAtKeyPath();
      v6 = v27;
      v28 = v10;
      a1 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (a1 >= v13 >> 1)
      {
        sub_1D8E317FC((v13 > 1), a1 + 1, 1);
        a2 = v26;
        v10 = v28;
      }

      ++v9;
      *(v10 + 16) = a1 + 1;
      v14 = v10 + 16 * a1;
      *(v14 + 32) = v27;
      *(v14 + 40) = v12;
    }

    while (v8 != v9);

    v6 = v24;
    a1 = v25;
    a2 = *(v10 + 16);
    if (a2)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_38:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1D90D4C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v31 = MEMORY[0x1E69E7CD0];

  v5 = 0;
  v6 = sub_1D90DCE84(v4, a2);

  if (v6 >> 62)
  {
    goto LABEL_36;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v29 = v5;
  if (!v7)
  {

    v9 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_17;
    }

LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7A98, &unk_1D91A6B50);
    v15 = sub_1D91797AC();
LABEL_18:
    v16 = MEMORY[0x1E69E7CC0];
    *&v31 = v15;
    sub_1D90DC5A4(v9, 1, &v31);
    if (v29)
    {
      goto LABEL_38;
    }

    v5 = v31;
    *&v31 = v16;
    v17 = *(a1 + 16);
    if (!v17)
    {
      goto LABEL_31;
    }

    v18 = 0;
    v6 = a1 + 40;
LABEL_21:
    v19 = (v6 + 16 * v18);
    v20 = v18;
    while (1)
    {
      if (v20 >= v17)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v18 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_33;
      }

      if (*(v5 + 16))
      {
        v21 = *(v19 - 1);
        v22 = *v19;

        v23 = sub_1D8F07098(v21, v22);
        if (v24)
        {
          v25 = *(*(v5 + 56) + 8 * v23);

          MEMORY[0x1DA729B90](v26);
          if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D917863C();
          }

          sub_1D917869C();
          v16 = v31;
          if (v18 == v17)
          {
LABEL_31:

            return v16;
          }

          goto LABEL_21;
        }
      }

      ++v20;
      v19 += 2;
      if (v18 == v17)
      {
        goto LABEL_31;
      }
    }
  }

  v32 = MEMORY[0x1E69E7CC0];
  sub_1D8E3181C(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v32;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1DA72AA90](v8, v6);
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          v7 = sub_1D917935C();
          goto LABEL_3;
        }

        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      swift_getAtKeyPath();
      v12 = v31;
      v32 = v9;
      v5 = v9[2];
      v13 = v9[3];
      if (v5 >= v13 >> 1)
      {
        v28 = v31;
        sub_1D8E3181C((v13 > 1), v5 + 1, 1);
        v12 = v28;
        v9 = v32;
      }

      ++v8;
      v9[2] = v5 + 1;
      v14 = &v9[3 * v5];
      *(v14 + 2) = v12;
      v14[6] = v11;
      if (v7 == v8)
      {

        if (v9[2])
        {
          goto LABEL_15;
        }

LABEL_17:
        v15 = MEMORY[0x1E69E7CC8];
        goto LABEL_18;
      }
    }
  }

  __break(1u);
LABEL_38:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1D90D4F70(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  v28 = MEMORY[0x1E69E7CD0];

  v6 = 0;
  v7 = sub_1D90DD008(v5, a2, &v28);

  if (v7 >> 62)
  {
    goto LABEL_36;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (!v8)
  {

    a2 = *(MEMORY[0x1E69E7CC0] + 16);
    if (a2)
    {
LABEL_15:
      a2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7A90, &qword_1D9199708);
      v15 = sub_1D91797AC();
LABEL_18:
      v28 = v15;

      sub_1D90DC950(v16, 1, &v28);
      if (v6)
      {
        goto LABEL_38;
      }

      v6 = v28;
      v17 = MEMORY[0x1E69E7CC0];
      v28 = MEMORY[0x1E69E7CC0];
      v18 = *(a1 + 16);
      if (!v18)
      {
LABEL_32:

        return v17;
      }

      a1 += 32;
      v19 = 0;
      while (1)
      {
        v7 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (v6[2] && (a2 = v6, v20 = sub_1D8D490F4(*(a1 + 8 * v19)), (v21 & 1) != 0))
        {
          v22 = *(v6[7] + 8 * v20);
          MEMORY[0x1DA729B90]();
          if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D917863C();
          }

          a2 = &v28;
          sub_1D917869C();
          v17 = v28;
          if (v7 == v18)
          {
            goto LABEL_32;
          }

          ++v19;
          if (v7 >= v18)
          {
LABEL_21:
            __break(1u);
            goto LABEL_22;
          }
        }

        else
        {
LABEL_22:
          ++v19;
          if (v7 == v18)
          {
            goto LABEL_32;
          }

          if (v19 >= v18)
          {
            goto LABEL_21;
          }
        }
      }
    }

LABEL_17:
    v15 = MEMORY[0x1E69E7CC8];
    goto LABEL_18;
  }

  v26 = a2;
  v28 = MEMORY[0x1E69E7CC0];
  sub_1D8E3183C(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v24 = v6;
    v25 = a1;
    v9 = 0;
    v10 = v28;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1DA72AA90](v9, v7);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }

        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_35:
          __break(1u);
LABEL_36:
          v8 = sub_1D917935C();
          goto LABEL_3;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      swift_getAtKeyPath();
      v6 = v27;
      v28 = v10;
      a1 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (a1 >= v13 >> 1)
      {
        sub_1D8E3183C((v13 > 1), a1 + 1, 1);
        a2 = v26;
        v10 = v28;
      }

      ++v9;
      *(v10 + 16) = a1 + 1;
      v14 = v10 + 16 * a1;
      *(v14 + 32) = v27;
      *(v14 + 40) = v12;
    }

    while (v8 != v9);

    v6 = v24;
    a1 = v25;
    a2 = *(v10 + 16);
    if (a2)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_38:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1D90D52B4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D915C360(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for StoreFeedUpdater.Update(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1D90DDFAC(v11, a2, type metadata accessor for StoreFeedUpdater.Update);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D90D53E8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1D915C740();
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

id sub_1D90D5478@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 persistentID];
  *a2 = result;
  return result;
}

void sub_1D90D54AC(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[11];
  v62 = a1[10];
  v63 = v7;
  v64 = a1[12];
  v65 = *(a1 + 208);
  v8 = a1[7];
  v58 = a1[6];
  v59 = v8;
  v9 = a1[9];
  v60 = a1[8];
  v61 = v9;
  v10 = a1[3];
  v54 = a1[2];
  v55 = v10;
  v11 = a1[5];
  v56 = a1[4];
  v57 = v11;
  v12 = a1[1];
  v52 = *a1;
  v53 = v12;
  v13 = mach_absolute_time();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a2;
  v14[4] = a3;
  v15 = v52;
  if (v54 <= 3u)
  {
    if (v54 > 1u)
    {

      if (v54 == 2)
      {
        sub_1D90D8018(a1, v52, sub_1D90DDF54, v14);
      }

      else
      {
        sub_1D90D7C94(v52, *(&v52 + 1), sub_1D90DDF54, v14);
      }
    }

    else
    {
      if (!v54)
      {
        if ((v52 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v17 = objc_opt_self();

          v18 = [v17 sharedInstance];
          v19 = [v18 playbackContext];

          v20 = swift_allocObject();
          *(v20 + 16) = v19;
          *(v20 + 24) = v15;
          *(v20 + 32) = v3;
          v21 = a1[11];
          *(v20 + 216) = a1[10];
          *(v20 + 232) = v21;
          *(v20 + 248) = a1[12];
          v22 = a1[7];
          *(v20 + 152) = a1[6];
          *(v20 + 168) = v22;
          v23 = a1[9];
          *(v20 + 184) = a1[8];
          *(v20 + 200) = v23;
          v24 = a1[3];
          *(v20 + 88) = a1[2];
          *(v20 + 104) = v24;
          v25 = a1[5];
          *(v20 + 120) = a1[4];
          *(v20 + 136) = v25;
          v26 = a1[1];
          *(v20 + 56) = *a1;
          *(v20 + 40) = sub_1D90DDF54;
          *(v20 + 48) = v14;
          *(v20 + 264) = *(a1 + 208);
          *(v20 + 72) = v26;
          v50 = sub_1D90DDF98;
          v51 = v20;
          aBlock = MEMORY[0x1E69E9820];
          v47 = 1107296256;
          v48 = sub_1D8CF5F60;
          v49 = &block_descriptor_104_1;
          v27 = _Block_copy(&aBlock);
          v28 = v19;

          sub_1D90D09E0(&v52, v45);

          [v28 performBlock_];
          _Block_release(v27);
        }

        return;
      }

      sub_1D90D5BE0(v52, sub_1D90DDF54, v14);
    }
  }

  else
  {
    v16 = v53;
    if (v54 <= 5u)
    {
      if (v54 == 4)
      {
        v29 = *(&v53 + 1);
        v44 = *(&v53 + 5);
        v43 = *(&v53 + 1);
        v30 = BYTE7(v53);
        v31 = objc_opt_self();

        v32 = [v31 sharedInstance];
        v33 = [v32 playbackContext];

        v34 = swift_allocObject();
        *(v34 + 16) = v33;
        *(v34 + 24) = v15;
        *(v34 + 40) = v3;
        v35 = a1[11];
        *(v34 + 208) = a1[10];
        *(v34 + 224) = v35;
        *(v34 + 240) = a1[12];
        *(v34 + 256) = *(a1 + 208);
        v36 = a1[7];
        *(v34 + 144) = a1[6];
        *(v34 + 160) = v36;
        v37 = a1[9];
        *(v34 + 176) = a1[8];
        *(v34 + 192) = v37;
        v38 = a1[3];
        *(v34 + 80) = a1[2];
        *(v34 + 96) = v38;
        v39 = a1[5];
        *(v34 + 112) = a1[4];
        *(v34 + 128) = v39;
        v40 = a1[1];
        *(v34 + 48) = *a1;
        *(v34 + 64) = v40;
        *(v34 + 264) = v16;
        *(v34 + 271) = v30;
        *(v34 + 269) = v44;
        *(v34 + 265) = v43;
        *(v34 + 272) = v29;
        *(v34 + 280) = sub_1D90DDF54;
        *(v34 + 288) = v14;
        v50 = sub_1D90DDF60;
        v51 = v34;
        aBlock = MEMORY[0x1E69E9820];
        v47 = 1107296256;
        v48 = sub_1D8CF5F60;
        v49 = &block_descriptor_98_2;
        v41 = _Block_copy(&aBlock);

        sub_1D90D09E0(&v52, v45);

        v42 = v33;

        [v42 performBlock_];
        _Block_release(v41);

        return;
      }

      sub_1D90DA600(v52, sub_1D90DDF54, v14);
    }

    else if (v54 == 6)
    {

      sub_1D90DAF30(v52, *(&v52 + 1), v53 & 1, sub_1D90DDF54, v14);
    }

    else
    {

      if (v54 == 7)
      {
        sub_1D90DB79C(v52, sub_1D90DDF54, v14);
      }

      else
      {
        sub_1D90D62A8(a1, sub_1D90DDF54, v14);
      }
    }
  }
}

uint64_t sub_1D90D5A80(_OWORD *a1, uint64_t a2, uint64_t (*a3)(_OWORD *))
{
  v5 = a1[11];
  v16[10] = a1[10];
  v16[11] = v5;
  v17[0] = a1[12];
  *(v17 + 11) = *(a1 + 203);
  v6 = a1[7];
  v16[6] = a1[6];
  v16[7] = v6;
  v7 = a1[9];
  v16[8] = a1[8];
  v16[9] = v7;
  v8 = a1[3];
  v16[2] = a1[2];
  v16[3] = v8;
  v9 = a1[5];
  v16[4] = a1[4];
  v16[5] = v9;
  v10 = a1[1];
  v16[0] = *a1;
  v16[1] = v10;
  if (qword_1ECAB0D48 != -1)
  {
    swift_once();
  }

  v11 = sub_1D917744C();
  __swift_project_value_buffer(v11, qword_1ECAB0D50);
  v12 = sub_1D917741C();
  v13 = sub_1D9178D1C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = sub_1D90E9F24(a2);
    _os_log_impl(&dword_1D8CEC000, v12, v13, "Local library request duration: %fs", v14, 0xCu);
    MEMORY[0x1DA72CB90](v14, -1, -1);
  }

  return a3(v16);
}

void sub_1D90D5BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 playbackContext];

  v9 = MEMORY[0x1E69E7CC0];
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (a1 + 32);
    do
    {
      v12 = *v11++;
      if ([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_])
      {
        MEMORY[0x1DA729B90]();
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D917863C();
        }

        sub_1D917869C();
        v9 = aBlock[0];
      }

      --v10;
    }

    while (v10);
  }

  v13 = sub_1D8FC0EF8(v9);

  v14 = swift_allocObject();
  v14[2] = v8;
  v14[3] = v13;
  v14[4] = a1;
  v14[5] = v4;
  v14[6] = a2;
  v14[7] = a3;
  aBlock[4] = sub_1D90DDF18;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_84_2;
  v15 = _Block_copy(aBlock);
  v16 = v8;

  [v16 performBlock_];
  _Block_release(v15);
}

void sub_1D90D5DFC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v9 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  sub_1D8D54E74(&qword_1EDCD0808, qword_1EDCD0810, 0x1E696AD98);
  v12 = sub_1D9178A8C();
  v13 = [a1 episodesForStoreTrackIDs_];

  if (!v13)
  {
    goto LABEL_36;
  }

  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v14 = sub_1D91785FC();

  if (v14 >> 62)
  {
    goto LABEL_34;
  }

  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_35:

LABEL_36:
    *&v36[0] = 3;
    sub_1D90DD564(v36, v31, a6);
    return;
  }

  while (1)
  {
    KeyPath = swift_getKeyPath();
    a3 = sub_1D90D48CC(a3, KeyPath, v14);

    *&v36[0] = MEMORY[0x1E69E7CC0];
    v14 = a3 >> 62 ? sub_1D917935C() : *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = MEMORY[0x1E69E7CC0];
    if (!v14)
    {
      break;
    }

    v30 = a6;
    v17 = 0;
    v18 = a3 & 0xC000000000000001;
    a6 = a3 & 0xFFFFFFFFFFFFFF8;
    v19 = v11;
    v32 = a3;
    while (1)
    {
      if (v18)
      {
        v20 = MEMORY[0x1DA72AA90](v17, a3);
      }

      else
      {
        if (v17 >= *(a6 + 16))
        {
          goto LABEL_33;
        }

        v20 = *(a3 + 8 * v17 + 32);
      }

      v21 = v20;
      v11 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v22 = [v20 assetURL];
      if (v22 || (v22 = [v21 enclosureURL]) != 0)
      {

        sub_1D917959C();
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
        a3 = v32;
      }

      else
      {
      }

      ++v17;
      if (v11 == v14)
      {
        v11 = v19;
        v23 = *&v36[0];
        a6 = v30;
        v16 = MEMORY[0x1E69E7CC0];
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    if (!sub_1D917935C())
    {
      goto LABEL_35;
    }
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_20:

  if ((v23 & 0x8000000000000000) == 0 && (v23 & 0x4000000000000000) == 0)
  {
    v24 = *(v23 + 16);
    if (v24)
    {
      goto LABEL_23;
    }

LABEL_39:

    v26 = MEMORY[0x1E69E7CC0];
LABEL_40:
    sub_1D90DCCC4(v36);
    v34[10] = v36[10];
    v34[11] = v36[11];
    v34[12] = v36[12];
    v35 = v37;
    v34[6] = v36[6];
    v34[7] = v36[7];
    v34[8] = v36[8];
    v34[9] = v36[9];
    v34[2] = v36[2];
    v34[3] = v36[3];
    v34[4] = v36[4];
    v34[5] = v36[5];
    v34[0] = v36[0];
    v34[1] = v36[1];
    sub_1D90DD19C(v26, v34, v31, a6);

    return;
  }

  v24 = sub_1D917935C();
  if (!v24)
  {
    goto LABEL_39;
  }

LABEL_23:
  *&v36[0] = v16;
  sub_1D8E317B8(0, v24 & ~(v24 >> 63), 0);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v25 = 0;
    v26 = *&v36[0];
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1DA72AA90](v25, v23);
      }

      else
      {
        v27 = *(v23 + 8 * v25 + 32);
      }

      sub_1D90BFA08(v27, v11);
      *&v36[0] = v26;
      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1D8E317B8((v28 > 1), v29 + 1, 1);
        v26 = *&v36[0];
      }

      ++v25;
      *(v26 + 16) = v29 + 1;
      sub_1D90DDFAC(v11, v26 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v29, type metadata accessor for PodcastsMediaLibrary.MediaItem);
    }

    while (v24 != v25);

    goto LABEL_40;
  }

  __break(1u);
}

uint64_t sub_1D90D62A8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[11];
  *&v78[16] = a1[10];
  v79 = v5;
  v80 = a1[12];
  v81 = *(a1 + 208);
  v6 = a1[7];
  *&v76[32] = a1[6];
  *&v76[48] = v6;
  v7 = a1[9];
  v77 = a1[8];
  *v78 = v7;
  v8 = a1[3];
  v74 = a1[2];
  v75 = v8;
  v9 = a1[5];
  *v76 = a1[4];
  *&v76[16] = v9;
  v10 = a1[1];
  v72 = *a1;
  v73 = v10;
  if (v78[0] == 2)
  {
    v11 = v74;
    v12 = *(&v74 + 1);
    v13 = *(&v75 + 1);
    v14 = v75;
    v40 = v79;
    v41 = v80;
    v15 = v81;
    v37 = v72;
    v38 = v73;
    sub_1D8D092C0(v72, *(&v72 + 1), v73, *(&v73 + 1), v74);

    v16 = *(&v74 + 1);
    sub_1D8D0B37C(v79, *(&v79 + 1), v80, *(&v80 + 1), v81);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 13;
    v23 = 6;
    v24 = 3;
  }

  else
  {
    v40 = v79;
    v41 = v80;
    v15 = v81;
    v20 = v78[25];
    v13 = *(&v75 + 1);
    v14 = v75;
    v12 = *(&v74 + 1);
    v37 = v72;
    v38 = v73;
    v11 = v74;
    sub_1D90D09E0(&v72, &v53);
    v17 = v76[0];
    v18 = v76[1];
    v69 = *&v76[2];
    v70 = *&v76[18];
    v71[0] = *&v76[34];
    *(v71 + 14) = *&v76[48];
    v23 = v77;
    v22 = BYTE1(v77);
    v68 = WORD3(v77);
    v67 = *(&v77 + 2);
    v24 = *(&v77 + 1);
    v21 = vmovl_u8(__PAIR64__(*&v76[52], *v78)).u64[0];
    v19 = v78[4];
  }

  v44[0] = v37;
  v44[1] = v38;
  LOBYTE(v45) = v11;
  *(&v45 + 1) = v12;
  *&v46 = v14;
  *(&v46 + 1) = v13;
  v47[0] = v17;
  v47[1] = v18;
  *&v47[2] = v69;
  *&v47[18] = v70;
  *&v47[34] = v71[0];
  *&v47[48] = *(v71 + 14);
  LOBYTE(v48) = v23;
  BYTE1(v48) = v22;
  WORD3(v48) = v68;
  *(&v48 + 2) = v67;
  *(&v48 + 1) = v24;
  *v49 = vuzp1_s8(v21, v21).u32[0];
  v49[4] = v19;
  *&v49[8] = *&v78[8];
  v49[24] = v78[24];
  v49[25] = v20;
  v50 = v40;
  v51 = v41;
  v52 = v15;
  v66 = v15;
  v55 = v45;
  v56 = v46;
  v53 = v37;
  v54 = v38;
  v57 = *v47;
  v58 = *&v47[16];
  v64 = v40;
  v65 = v41;
  v62 = *v49;
  v63 = *&v49[16];
  v60 = *(v71 + 14);
  v61 = v48;
  v59 = *&v47[32];
  v25 = [objc_opt_self() sharedInstance];
  v26 = [v25 playbackContext];

  v27 = swift_allocObject();
  v28 = v64;
  *(v27 + 176) = v63;
  *(v27 + 192) = v28;
  *(v27 + 208) = v65;
  *(v27 + 224) = v66;
  v29 = v60;
  *(v27 + 112) = v59;
  *(v27 + 128) = v29;
  v30 = v62;
  *(v27 + 144) = v61;
  *(v27 + 160) = v30;
  v31 = v56;
  *(v27 + 48) = v55;
  *(v27 + 64) = v31;
  v32 = v58;
  *(v27 + 80) = v57;
  *(v27 + 96) = v32;
  v33 = v54;
  *(v27 + 16) = v53;
  *(v27 + 32) = v33;
  *(v27 + 232) = v3;
  *(v27 + 240) = a2;
  *(v27 + 248) = a3;
  *(v27 + 256) = v26;
  aBlock[4] = sub_1D90DDF08;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_78_2;
  v34 = _Block_copy(aBlock);
  sub_1D90D09E0(v44, v42);

  v35 = v26;

  [v35 performBlock_];
  _Block_release(v34);

  return sub_1D90CF72C(v44);
}

void sub_1D90D6674(__int128 *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v7 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v38 - v11;
  v12 = a1[11];
  v57 = a1[10];
  v58 = v12;
  v59[0] = a1[12];
  LOBYTE(v59[1]) = *(a1 + 208);
  v13 = a1[7];
  v53 = a1[6];
  v54 = v13;
  v14 = a1[9];
  v55 = a1[8];
  v56 = v14;
  v15 = a1[3];
  v49 = a1[2];
  v50 = v15;
  v16 = a1[5];
  v51 = a1[4];
  v52 = v16;
  v17 = a1[1];
  v47 = *a1;
  v48 = v17;
  v18 = sub_1D90D6C50();
  if (v18)
  {
    v19 = v18;
    sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
    v20 = sub_1D917908C();
    v21 = v20;
    *&v47 = MEMORY[0x1E69E7CC0];
    if (v20 >> 62)
    {
      goto LABEL_40;
    }

    for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D917935C())
    {
      v45 = v9;
      v40 = a3;
      v41 = a4;
      v39 = v19;
      if (!i)
      {
        break;
      }

      a4 = 0;
      v9 = (v21 & 0xFFFFFFFFFFFFFF8);
      v42 = i;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x1DA72AA90](a4, v21);
        }

        else
        {
          if (a4 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v23 = *(v21 + 8 * a4 + 32);
        }

        v19 = v23;
        v24 = a4 + 1;
        if (__OFADD__(a4, 1))
        {
          break;
        }

        v25 = [v23 assetURL];
        if (v25 || (v25 = [v19 enclosureURL]) != 0)
        {

          sub_1D917959C();
          a3 = *(v47 + 16);
          sub_1D91795DC();
          sub_1D91795EC();
          sub_1D91795AC();
          i = v42;
        }

        else
        {
        }

        ++a4;
        if (v24 == i)
        {
          v26 = v47;
          v9 = v45;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      ;
    }

    v26 = MEMORY[0x1E69E7CC0];
LABEL_20:

    if (v26 < 0 || (v26 & 0x4000000000000000) != 0)
    {
      v21 = sub_1D917935C();
      if (v21)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v21 = *(v26 + 16);
      if (v21)
      {
LABEL_23:
        a4 = 0;
        a3 = v26 & 0xC000000000000001;
        v27 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (a3)
          {
            v28 = MEMORY[0x1DA72AA90](a4, v26);
            v29 = a4 + 1;
            if (__OFADD__(a4, 1))
            {
              goto LABEL_38;
            }
          }

          else
          {
            if (a4 >= *(v26 + 16))
            {
              goto LABEL_39;
            }

            v28 = *(v26 + 8 * a4 + 32);
            v29 = a4 + 1;
            if (__OFADD__(a4, 1))
            {
              goto LABEL_38;
            }
          }

          sub_1D90BFA08(v28, v9);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_1D8ECD960(0, v27[2] + 1, 1, v27);
          }

          v31 = v27[2];
          v30 = v27[3];
          v19 = (v31 + 1);
          if (v31 >= v30 >> 1)
          {
            v27 = sub_1D8ECD960((v30 > 1), v31 + 1, 1, v27);
          }

          v27[2] = v19;
          v32 = v27 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v31;
          v9 = v45;
          sub_1D90DDFAC(v45, v32, type metadata accessor for PodcastsMediaLibrary.MediaItem);
          ++a4;
          if (v29 == v21)
          {
            goto LABEL_43;
          }
        }
      }
    }

    v27 = MEMORY[0x1E69E7CC0];
LABEL_43:

    sub_1D90DCCC4(v74);
    v70 = v74[10];
    v71 = v74[11];
    v72 = v74[12];
    v73 = v75;
    v66 = v74[6];
    v67 = v74[7];
    v68 = v74[8];
    v69 = v74[9];
    v62 = v74[2];
    v63 = v74[3];
    v64 = v74[4];
    v65 = v74[5];
    v60 = v74[0];
    v61 = v74[1];
    v33 = v27[2];

    v34 = 0;
    v35 = v43;
    while (1)
    {
      v36 = v34;
      if (v33 == v34)
      {
LABEL_47:

        *(&v46[10] + 8) = v70;
        *(&v46[11] + 8) = v71;
        *(&v46[12] + 8) = v72;
        *(&v46[6] + 8) = v66;
        *(&v46[7] + 8) = v67;
        *(&v46[8] + 8) = v68;
        *(&v46[9] + 8) = v69;
        *(&v46[2] + 8) = v62;
        *(&v46[3] + 8) = v63;
        *(&v46[4] + 8) = v64;
        *(&v46[5] + 8) = v65;
        *(v46 + 8) = v60;
        BYTE8(v46[13]) = v73;
        *(&v46[1] + 8) = v61;
        *&v46[0] = v27;
        BYTE9(v46[13]) = v33 != v36;
        sub_1D90DD9D8(v46, v40, v41);

        v57 = v46[10];
        v58 = v46[11];
        v59[0] = v46[12];
        *(v59 + 10) = *(&v46[12] + 10);
        v53 = v46[6];
        v54 = v46[7];
        v55 = v46[8];
        v56 = v46[9];
        v49 = v46[2];
        v50 = v46[3];
        v51 = v46[4];
        v52 = v46[5];
        v47 = v46[0];
        v48 = v46[1];
        sub_1D90DDD68(&v47);
        return;
      }

      if (v34 >= v27[2])
      {
        break;
      }

      sub_1D90CC258(v27 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v34++, v35, type metadata accessor for PodcastsMediaLibrary.MediaItem);
      v37 = *(v35 + *(v44 + 108));
      sub_1D90DD930(v35, type metadata accessor for PodcastsMediaLibrary.MediaItem);
      if (v37)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
  }

  else
  {
    *&v47 = 3;
    sub_1D90DD564(&v47, a3, a4);
  }
}

id sub_1D90D6C50()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = *(v0 + 32);
  v4 = *(v0 + 8);
  v40[3] = *(v0 + 7);
  *v41 = v4;
  *&v41[13] = *(v0 + 141);
  v5 = *(v0 + 6);
  v40[1] = *(v0 + 5);
  v40[2] = v5;
  v40[0] = *(v0 + 4);
  v6 = *&v41[16] | (v41[20] << 32);
  if (v41[16] == 2)
  {
    return 0;
  }

  v8 = v41[1];
  v9 = *(v0 + 7);
  v38[2] = *(v0 + 6);
  v38[3] = v9;
  v39[0] = *(v0 + 8);
  *(v39 + 13) = *(v0 + 141);
  v10 = *(v0 + 5);
  v38[0] = *(v0 + 4);
  v38[1] = v10;
  v11 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  sub_1D8D0841C(v38, v32);
  v7 = [v11 initWithEntityName_];
  v12 = *(v0 + 7);
  v32[2] = *(v0 + 6);
  v32[3] = v12;
  v33 = *(v0 + 128);
  v13 = *(v0 + 5);
  v32[0] = *(v0 + 4);
  v32[1] = v13;
  v34 = v8;
  *v35 = *(v0 + 130);
  *&v35[6] = v0[17];
  v37 = BYTE4(v6);
  v36 = v6;
  v21 = EpisodeListSettings.playPredicate.getter(v7, v14, v15, v16, v17, v18, v19, v20);
  [v7 setPredicate_];

  if (!v8)
  {
    v22 = [objc_opt_self() sortDescriptorsForPubDateAscending_];
    goto LABEL_7;
  }

  if (v8 == 4)
  {
    v22 = [objc_opt_self() seasonSortDescriptors_];
LABEL_7:
    v23 = v22;
    sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
    sub_1D91785FC();

    goto LABEL_9;
  }

  EpisodeSortType.descriptors.getter(v8);
LABEL_9:
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v24 = sub_1D91785DC();

  [v7 setSortDescriptors_];

  if (v3 != 4)
  {
    if (v3 == 2 && *(v1 + 16))
    {
      goto LABEL_14;
    }

LABEL_16:
    sub_1D8D08A50(v40, &qword_1ECAB9F78, qword_1D91B16D0);
    return v7;
  }

  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_14:

  v25 = [v7 predicate];
  if (v25)
  {
    v26 = v25;
    v27 = objc_opt_self();
    v28 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v29 = [v27 predicateForEpisodeUuid_];

    v30 = [v26 OR:v29];
    [v7 setPredicate_];
    sub_1D8D08A50(v40, &qword_1ECAB9F78, qword_1D91B16D0);
  }

  else
  {
    sub_1D8D08A50(v40, &qword_1ECAB9F78, qword_1D91B16D0);
  }

  return v7;
}

void sub_1D90D6FB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v11 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v84 = &v68 - v16;
  v17 = [a1 podcastForStoreId_];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 uuid];
    if (v19)
    {
      v82 = a5;
      v83 = v12;
      i = a1;
      v69 = v11;
      v81 = a4;
      v20 = v19;
      v70.i64[0] = sub_1D917820C();
      v22 = v21;

      v24 = *(a6 + 8);
      v23 = *(a6 + 9);
      v25 = a6[6];
      v133 = a6[5];
      v134 = v25;
      v26 = a6[7];
      v135 = v26;
      v27 = *(a6 + 128);
      v28 = *(a6 + 129);
      v131 = *(a6 + 130);
      v132 = *(a6 + 67);
      v29 = *(a6 + 144);
      v80 = v18;
      if (v29 == 2)
      {
        LOBYTE(v29) = MTPodcastHidesPlayedEpisodesResolved([v18 hidesPlayedEpisodes]);
        v30 = a6[1];
        v138 = *a6;
        v139 = v30;
        v140 = *(a6 + 32);
        v31 = *(a6 + 5);
        v76 = *(a6 + 6);
        v32 = *(a6 + 7);
        v33 = a6[12];
        v136[0] = a6[11];
        v136[1] = v33;
        v137 = *(a6 + 208);
        v74 = v139;
        v72 = v138;
        v73 = v140;
        v77 = v136[0];
        v78 = v33;
        v34 = v137;
        sub_1D8E3ACE0(&v138, &v87);
        v75 = v32;

        v71 = v31;
        v35 = v31;
        sub_1D8D088B4(v136, &v87, &qword_1ECABA6B8, &unk_1D91B6B80);
        v36 = 0;
        v37 = 0;
        v28 = 2;
        v27 = 3;
        v38 = 3;
        v39 = v82;
        v40 = v70.i64[0];
      }

      else
      {
        LODWORD(v26) = *(a6 + 145);
        v70 = vmovl_u8(*&v26);
        v38 = *(a6 + 17);

        v46 = a6[12];
        v77 = a6[11];
        v78 = v46;
        v34 = *(a6 + 208);
        v47 = *(a6 + 169);
        v48 = *(a6 + 6);
        v75 = *(a6 + 7);
        v76 = v48;
        v71 = *(a6 + 5);
        v49 = *a6;
        v74 = a6[1];
        v72 = v49;
        v73 = *(a6 + 32);
        sub_1D90D09E0(a6, &v87);
        v36 = v47;
        v37 = *v70.i8;
        v128 = v133;
        v129 = v134;
        v130 = v135;
        v126 = v131;
        v127 = v132;
        v40 = v24;
        v22 = v23;
        v39 = v82;
      }

      v50 = *(a6 + 168);
      v116[0] = v72;
      v116[1] = v74;
      LOBYTE(v117) = v73;
      *(&v117 + 1) = v71;
      *&v118 = v76;
      *(&v118 + 1) = v75;
      *&v119 = v40;
      *(&v119 + 1) = v22;
      v120 = v128;
      v121 = v129;
      v122 = v130;
      LOBYTE(v123) = v27;
      BYTE1(v123) = v28;
      WORD3(v123) = v127;
      *(&v123 + 2) = v126;
      *(&v123 + 1) = v38;
      LOBYTE(v124[0]) = v29;
      *(v124 + 1) = vuzp1_s8(v37, *&v130).u32[0];
      *(v124 + 8) = *(a6 + 152);
      BYTE8(v124[1]) = v50;
      BYTE9(v124[1]) = v36;
      v124[2] = v77;
      v124[3] = v78;
      v125 = v34;
      v97 = v124[1];
      v98 = v77;
      v99[0] = v78;
      LOBYTE(v99[1]) = v34;
      v93 = v129;
      v94 = v130;
      v95 = v123;
      v96 = v124[0];
      v89 = v117;
      v90 = v118;
      v91 = v119;
      v92 = v128;
      v87 = v72;
      v88 = v74;
      v51 = sub_1D90D6C50();
      if (v51)
      {
        v52 = v51;
        sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
        v53 = sub_1D917908C();
        v54 = v53;
        if (v53 >> 62)
        {
          goto LABEL_31;
        }

        v55 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        for (i = v52; v55; i = v52)
        {
          v52 = 0;
          v56 = MEMORY[0x1E69E7CC0];
          while ((v54 & 0xC000000000000001) != 0)
          {
            v57 = MEMORY[0x1DA72AA90](v52, v54);
            v58 = (v52 + 1);
            if (__OFADD__(v52, 1))
            {
              goto LABEL_29;
            }

LABEL_18:
            sub_1D90BFA08(v57, v85);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v56 = sub_1D8ECD960(0, v56[2] + 1, 1, v56);
            }

            v60 = v56[2];
            v59 = v56[3];
            if (v60 >= v59 >> 1)
            {
              v56 = sub_1D8ECD960((v59 > 1), v60 + 1, 1, v56);
            }

            v56[2] = v60 + 1;
            sub_1D90DDFAC(v85, v56 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v60, type metadata accessor for PodcastsMediaLibrary.MediaItem);
            ++v52;
            if (v58 == v55)
            {
              goto LABEL_33;
            }
          }

          if (v52 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v57 = *(v54 + 8 * v52 + 32);
          v58 = (v52 + 1);
          if (!__OFADD__(v52, 1))
          {
            goto LABEL_18;
          }

LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          v55 = sub_1D917935C();
        }

        v56 = MEMORY[0x1E69E7CC0];
LABEL_33:

        sub_1D90DCCC4(v114);
        v110 = v114[10];
        v111 = v114[11];
        v112 = v114[12];
        v113 = v115;
        v106 = v114[6];
        v107 = v114[7];
        v108 = v114[8];
        v109 = v114[9];
        v102 = v114[2];
        v103 = v114[3];
        v104 = v114[4];
        v105 = v114[5];
        v100 = v114[0];
        v101 = v114[1];
        v61 = v56[2];

        v62 = 0;
        v63 = v69;
        v64 = v83;
        while (1)
        {
          v65 = v62;
          if (v61 == v62)
          {
LABEL_37:

            *&v86[168] = v110;
            *&v86[184] = v111;
            *&v86[200] = v112;
            *&v86[104] = v106;
            *&v86[120] = v107;
            *&v86[136] = v108;
            *&v86[152] = v109;
            *&v86[40] = v102;
            *&v86[56] = v103;
            *&v86[72] = v104;
            *&v86[88] = v105;
            *&v86[8] = v100;
            v86[216] = v113;
            *&v86[24] = v101;
            *v86 = v56;
            v86[217] = v61 != v65;
            sub_1D90DD9D8(v86, v81, v82);

            sub_1D90CF72C(v116);
            v97 = *&v86[160];
            v98 = *&v86[176];
            v99[0] = *&v86[192];
            *(v99 + 10) = *&v86[202];
            v93 = *&v86[96];
            v94 = *&v86[112];
            v95 = *&v86[128];
            v96 = *&v86[144];
            v89 = *&v86[32];
            v90 = *&v86[48];
            v91 = *&v86[64];
            v92 = *&v86[80];
            v87 = *v86;
            v88 = *&v86[16];
            sub_1D90DDD68(&v87);
            return;
          }

          if (v62 >= v56[2])
          {
            break;
          }

          v66 = v84;
          sub_1D90CC258(v56 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v62++, v84, type metadata accessor for PodcastsMediaLibrary.MediaItem);
          v67 = *(v66 + *(v63 + 108));
          sub_1D90DD930(v66, type metadata accessor for PodcastsMediaLibrary.MediaItem);
          if (v67)
          {
            goto LABEL_37;
          }
        }

        __break(1u);
      }

      else
      {
        *&v87 = 3;
        sub_1D90DD564(&v87, v81, v39);

        sub_1D90CF72C(v116);
      }
    }

    else
    {
      v41 = [v18 episodes];
      if (v41)
      {
        v42 = v41;
        sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
        sub_1D8D54E74(&qword_1ECAAFC60, &qword_1EDCD5B00, off_1E85675C8);
        v43 = sub_1D9178A9C();

        sub_1D90D3D20(v43);
        v45 = v44;
      }

      else
      {
        v45 = MEMORY[0x1E69E7CC0];
      }

      sub_1D90DCCC4(&v87);
      *&v86[160] = v97;
      *&v86[176] = v98;
      *&v86[192] = v99[0];
      v86[208] = v99[1];
      *&v86[96] = v93;
      *&v86[112] = v94;
      *&v86[128] = v95;
      *&v86[144] = v96;
      *&v86[32] = v89;
      *&v86[48] = v90;
      *&v86[64] = v91;
      *&v86[80] = v92;
      *v86 = v87;
      *&v86[16] = v88;
      sub_1D90DD19C(v45, v86, a4, a5);
    }
  }

  else
  {
    *&v87 = 3;
    sub_1D90DD564(&v87, a4, a5);
  }
}

uint64_t sub_1D90D7880(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = a6;
  v36 = a4;
  v13 = a9;
  v14 = sub_1D9176A7C();
  v34 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v18 = [a1 playlistForUuid_];

  if (v18)
  {
    v19 = [v18 episodes];
    if (v19)
    {
      v30 = a7;
      v31 = v18;
      v32 = a9;
      v53 = MEMORY[0x1E69E7CC0];
      v29 = v19;
      v20 = MEMORY[0x1E69E7CC0];
      sub_1D9178C9C();
      sub_1D8CFBE80(&qword_1ECAB4440, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
      sub_1D91791DC();
      if (*(&v41 + 1))
      {
        v33 = MEMORY[0x1E69E7CC0];
        v28 = a8;
        do
        {
          while (1)
          {
            sub_1D8D65618(&v40, v38);
            sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
            if ((swift_dynamicCast() & 1) == 0 || !v37)
            {
              break;
            }

            MEMORY[0x1DA729B90]();
            if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v33 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1D917863C();
            }

            sub_1D917869C();
            v33 = v53;
            sub_1D91791DC();
            a8 = v28;
            if (!*(&v41 + 1))
            {
              goto LABEL_16;
            }
          }

          sub_1D91791DC();
        }

        while (*(&v41 + 1));
        a8 = v28;
      }

      else
      {
        v33 = v20;
      }

LABEL_16:

      (*(v34 + 8))(v16, v14);
      v18 = v31;
      v13 = v32;
      a7 = v30;
    }

    else
    {
      v33 = MEMORY[0x1E69E7CC0];
    }

    v22 = a5[11];
    v50 = a5[10];
    v51 = v22;
    v52[0] = a5[12];
    LOBYTE(v52[1]) = *(a5 + 208);
    v23 = a5[7];
    v46 = a5[6];
    v47 = v23;
    v24 = a5[9];
    v48 = a5[8];
    v49 = v24;
    v25 = a5[3];
    v42 = a5[2];
    v43 = v25;
    v26 = a5[5];
    v44 = a5[4];
    v45 = v26;
    v27 = a5[1];
    v40 = *a5;
    v41 = v27;
    sub_1D90D8E00(&v40, v33, v35, a7, v38);

    v50 = v38[10];
    v51 = v38[11];
    v52[0] = v39[0];
    *(v52 + 10) = *(v39 + 10);
    v46 = v38[6];
    v47 = v38[7];
    v48 = v38[8];
    v49 = v38[9];
    v42 = v38[2];
    v43 = v38[3];
    v44 = v38[4];
    v45 = v38[5];
    v40 = v38[0];
    v41 = v38[1];
    v39[0] = v52[0];
    *(v39 + 10) = *(v52 + 10);
    sub_1D90DD9D8(v38, a8, v13);

    return sub_1D90DDD68(&v40);
  }

  else
  {
    *&v40 = 3;
    return sub_1D90DD564(&v40, a8, a9);
  }
}

void sub_1D90D7C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 playbackContext];

  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v10;
  v11[5] = v4;
  v11[6] = a3;
  v11[7] = a4;
  v14[4] = sub_1D90DDEF0;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D8CF5F60;
  v14[3] = &block_descriptor_72_0;
  v12 = _Block_copy(v14);

  v13 = v10;

  [v13 performBlock_];
  _Block_release(v12);
}

void sub_1D90D7DF0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = objc_opt_self();
  v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v11 = [v9 upNextForPodcastUuid:v10 ctx:a3];

  if (v11)
  {
    v12 = [v11 episodeUuid];
    if (!v12)
    {
      sub_1D917820C();
      v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    }

    v13 = [a3 episodeForUuid_];

    if (v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB44D8, &qword_1D91B6370);
      v14 = *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) - 8);
      v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D9189080;
      v17 = v13;
      sub_1D90BFA08(v17, v16 + v15);
      sub_1D90DCCC4(v20);
      v18[10] = v20[10];
      v18[11] = v20[11];
      v18[12] = v20[12];
      v19 = v21;
      v18[6] = v20[6];
      v18[7] = v20[7];
      v18[8] = v20[8];
      v18[9] = v20[9];
      v18[2] = v20[2];
      v18[3] = v20[3];
      v18[4] = v20[4];
      v18[5] = v20[5];
      v18[0] = v20[0];
      v18[1] = v20[1];
      sub_1D90DD19C(v16, v18, a5, a6);

      return;
    }
  }

  *&v20[0] = 3;
  sub_1D90DD564(v20, a5, a6);
}

void sub_1D90D8018(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = a1[11];
  v63 = a1[10];
  v64 = v10;
  v65 = a1[12];
  v66 = *(a1 + 208);
  v11 = a1[7];
  v59 = a1[6];
  v60 = v11;
  v12 = a1[9];
  v61 = a1[8];
  v62 = v12;
  v13 = a1[3];
  v55 = a1[2];
  v56 = v13;
  v14 = a1[5];
  v57 = a1[4];
  v58 = v14;
  v15 = a1[1];
  v53 = *a1;
  v54 = v15;
  v16 = [objc_opt_self() sharedInstance];
  v17 = [v16 playbackContext];

  v18 = a1[11];
  v49 = a1[10];
  v50 = v18;
  v51 = a1[12];
  v52 = *(a1 + 208);
  v19 = a1[7];
  v45 = a1[6];
  v46 = v19;
  v20 = a1[9];
  v47 = a1[8];
  v48 = v20;
  v21 = a1[3];
  v41 = a1[2];
  v42 = v21;
  v22 = a1[5];
  v43 = a1[4];
  v44 = v22;
  v23 = a1[1];
  aBlock = *a1;
  v40 = v23;
  v24 = sub_1D90D6C50();
  if (v24)
  {
    v25 = v24;
    v26 = swift_allocObject();
    v27 = v64;
    *(v26 + 200) = v63;
    *(v26 + 216) = v27;
    *(v26 + 232) = v65;
    v28 = v60;
    *(v26 + 136) = v59;
    *(v26 + 152) = v28;
    v29 = v62;
    *(v26 + 168) = v61;
    *(v26 + 184) = v29;
    v30 = v56;
    *(v26 + 72) = v55;
    *(v26 + 88) = v30;
    v31 = v58;
    *(v26 + 104) = v57;
    *(v26 + 120) = v31;
    v32 = v54;
    *(v26 + 40) = v53;
    *(v26 + 16) = v17;
    *(v26 + 24) = v25;
    *(v26 + 32) = v5;
    *(v26 + 248) = v66;
    *(v26 + 56) = v32;
    *(v26 + 256) = a2;
    *(v26 + 264) = a3;
    *(v26 + 272) = a4;
    v38[4] = sub_1D90DD9C0;
    v38[5] = v26;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 1107296256;
    v38[2] = sub_1D8CF5F60;
    v38[3] = &block_descriptor_56_2;
    v33 = _Block_copy(v38);
    v34 = v17;
    v35 = v25;

    sub_1D90D09E0(&v53, &aBlock);

    [v34 performBlock_];
    _Block_release(v33);
  }

  else
  {
    v36 = swift_allocObject();
    v36[2] = v17;
    v36[3] = a2;
    v36[4] = v5;
    v36[5] = a3;
    v36[6] = a4;
    *&v41 = sub_1D90DD990;
    *(&v41 + 1) = v36;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v40 = sub_1D8CF5F60;
    *(&v40 + 1) = &block_descriptor_50_0;
    v37 = _Block_copy(&aBlock);
    v35 = v17;

    [v35 performBlock_];
    _Block_release(v37);
  }
}

void sub_1D90D834C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v8 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D91785DC();
  v13 = [a1 episodesForUuids_];

  if (v13)
  {
    sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
    v14 = sub_1D91785FC();

    v15 = sub_1D8F616E0(a2);
    KeyPath = swift_getKeyPath();
    v17 = sub_1D90D4C10(v15, KeyPath, v14);

    if (v17 >> 62)
    {
      if (sub_1D917935C())
      {
        v18 = sub_1D917935C();
        if (!v18)
        {
          v24 = a5;

          v20 = MEMORY[0x1E69E7CC0];
LABEL_13:
          sub_1D90DCCC4(v28);
          v26[10] = v28[10];
          v26[11] = v28[11];
          v26[12] = v28[12];
          v27 = v29;
          v26[6] = v28[6];
          v26[7] = v28[7];
          v26[8] = v28[8];
          v26[9] = v28[9];
          v26[2] = v28[2];
          v26[3] = v28[3];
          v26[4] = v28[4];
          v26[5] = v28[5];
          v26[0] = v28[0];
          v26[1] = v28[1];
          sub_1D90DD19C(v20, v26, v25, v24);

          return;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
LABEL_4:
        *&v28[0] = MEMORY[0x1E69E7CC0];
        sub_1D8E317B8(0, v18 & ~(v18 >> 63), 0);
        if ((v18 & 0x8000000000000000) == 0)
        {
          v24 = a5;
          v19 = 0;
          v20 = *&v28[0];
          do
          {
            if ((v17 & 0xC000000000000001) != 0)
            {
              v21 = MEMORY[0x1DA72AA90](v19, v17);
            }

            else
            {
              v21 = *(v17 + 8 * v19 + 32);
            }

            sub_1D90BFA08(v21, v11);
            *&v28[0] = v20;
            v23 = *(v20 + 16);
            v22 = *(v20 + 24);
            if (v23 >= v22 >> 1)
            {
              sub_1D8E317B8((v22 > 1), v23 + 1, 1);
              v20 = *&v28[0];
            }

            ++v19;
            *(v20 + 16) = v23 + 1;
            sub_1D90DDFAC(v11, v20 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v23, type metadata accessor for PodcastsMediaLibrary.MediaItem);
          }

          while (v18 != v19);

          goto LABEL_13;
        }

        __break(1u);
        goto LABEL_19;
      }
    }

    *&v28[0] = 3;
    sub_1D90DD564(v28, v25, a5);
    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_1D90D8688(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v11 = sub_1D917908C();
  if (a5[2])
  {
    v12 = a5[4];
    v13 = a5[5];
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  sub_1D90D8E00(a4, v11, v12, v13, v17);

  v15[10] = v17[10];
  v15[11] = v17[11];
  v16[0] = v18[0];
  *(v16 + 10) = *(v18 + 10);
  v15[6] = v17[6];
  v15[7] = v17[7];
  v15[8] = v17[8];
  v15[9] = v17[9];
  v15[2] = v17[2];
  v15[3] = v17[3];
  v15[4] = v17[4];
  v15[5] = v17[5];
  v15[0] = v17[0];
  v15[1] = v17[1];
  sub_1D90DD9D8(v15, a6, a7);
  return sub_1D90DDD68(v17);
}

uint64_t sub_1D90D87F4(void (*a1)(__int128 *), uint64_t a2, uint64_t a3, __int128 *a4)
{
  v21 = a2;
  v22 = a1;
  v6 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a4[11];
  v49 = a4[10];
  v50 = v10;
  v51 = a4[12];
  v52 = *(a4 + 208);
  v11 = a4[7];
  v45 = a4[6];
  v46 = v11;
  v12 = a4[9];
  v47 = a4[8];
  v48 = v12;
  v13 = a4[3];
  v41 = a4[2];
  v42 = v13;
  v14 = a4[5];
  v43 = a4[4];
  v44 = v14;
  v15 = a4[1];
  v39 = *a4;
  v40 = v15;
  v16 = *(a3 + 16);

  sub_1D8D088B4(a4, v37, &qword_1ECABA5B0, &qword_1D91B5758);
  v17 = 0;
  do
  {
    v18 = v17;
    if (v16 == v17)
    {
      break;
    }

    sub_1D90CC258(a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17++, v9, type metadata accessor for PodcastsMediaLibrary.MediaItem);
    v19 = v9[*(v6 + 108)];
    sub_1D90DD930(v9, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  }

  while ((v19 & 1) == 0);
  *(&v36[10] + 8) = v49;
  *(&v36[11] + 8) = v50;
  *(&v36[12] + 8) = v51;
  *(&v36[6] + 8) = v45;
  *(&v36[7] + 8) = v46;
  *(&v36[8] + 8) = v47;
  *(&v36[9] + 8) = v48;
  *(&v36[2] + 8) = v41;
  *(&v36[3] + 8) = v42;
  *(&v36[4] + 8) = v43;
  *(&v36[5] + 8) = v44;
  *(v36 + 8) = v39;
  *&v36[0] = a3;
  BYTE8(v36[13]) = v52;
  *(&v36[1] + 8) = v40;
  BYTE9(v36[13]) = v16 != v18;
  sub_1D90DD88C(v36);
  v33 = v36[10];
  v34 = v36[11];
  v35[0] = v36[12];
  *(v35 + 11) = *(&v36[12] + 11);
  v29 = v36[6];
  v30 = v36[7];
  v31 = v36[8];
  v32 = v36[9];
  v25 = v36[2];
  v26 = v36[3];
  v27 = v36[4];
  v28 = v36[5];
  v23 = v36[0];
  v24 = v36[1];
  v22(&v23);
  v37[10] = v33;
  v37[11] = v34;
  v38[0] = v35[0];
  *(v38 + 11) = *(v35 + 11);
  v37[6] = v29;
  v37[7] = v30;
  v37[8] = v31;
  v37[9] = v32;
  v37[2] = v25;
  v37[3] = v26;
  v37[4] = v27;
  v37[5] = v28;
  v37[0] = v23;
  v37[1] = v24;
  return sub_1D8D08A50(v37, &qword_1ECABA698, &unk_1D91B62E0);
}

uint64_t sub_1D90D8AB0(void (*a1)(__int128 *), uint64_t a2, __int128 *a3)
{
  v5 = a3[11];
  v35 = a3[10];
  v36 = v5;
  v37[0] = a3[12];
  *(v37 + 10) = *(a3 + 202);
  v6 = a3[7];
  v31 = a3[6];
  v32 = v6;
  v7 = a3[9];
  v33 = a3[8];
  v34 = v7;
  v8 = a3[3];
  v27 = a3[2];
  v28 = v8;
  v9 = a3[5];
  v29 = a3[4];
  v30 = v9;
  v10 = a3[1];
  v25 = *a3;
  v26 = v10;
  sub_1D90DD88C(&v25);
  v22 = v35;
  v23 = v36;
  v24[0] = v37[0];
  *(v24 + 11) = *(v37 + 11);
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v21 = v34;
  v14 = v27;
  v15 = v28;
  v16 = v29;
  v17 = v30;
  v12 = v25;
  v13 = v26;
  sub_1D90DDE88(a3, v38);
  a1(&v12);
  v38[10] = v22;
  v38[11] = v23;
  v39[0] = v24[0];
  *(v39 + 11) = *(v24 + 11);
  v38[6] = v18;
  v38[7] = v19;
  v38[8] = v20;
  v38[9] = v21;
  v38[2] = v14;
  v38[3] = v15;
  v38[4] = v16;
  v38[5] = v17;
  v38[0] = v12;
  v38[1] = v13;
  return sub_1D8D08A50(v38, &qword_1ECABA698, &unk_1D91B62E0);
}

uint64_t sub_1D90D8BF4(void *a1, void (*a2)(__int128 *))
{
  type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  if (a1 == 3)
  {
    sub_1D90DCCC4(v5);
    *&v20[168] = v5[10];
    *&v20[184] = v5[11];
    *&v20[200] = v5[12];
    *&v20[104] = v5[6];
    *&v20[120] = v5[7];
    *&v20[136] = v5[8];
    *&v20[152] = v5[9];
    *&v20[40] = v5[2];
    *&v20[56] = v5[3];
    *&v20[72] = v5[4];
    *&v20[88] = v5[5];
    *&v20[8] = v5[0];
    v20[216] = v6;
    *&v20[24] = v5[1];
    *v20 = MEMORY[0x1E69E7CC0];
    v20[217] = 0;
    sub_1D90DD88C(v20);
    v17 = *&v20[160];
    v18 = *&v20[176];
    v19[0] = *&v20[192];
    *(v19 + 11) = *&v20[203];
    v13 = *&v20[96];
    v14 = *&v20[112];
    v15 = *&v20[128];
    v16 = *&v20[144];
    v9 = *&v20[32];
    v10 = *&v20[48];
    v11 = *&v20[64];
    v12 = *&v20[80];
    v7 = *v20;
    v8 = *&v20[16];
    a2(&v7);
  }

  else
  {
    *v20 = a1;
    sub_1D90DD880(v20);
    v17 = *&v20[160];
    v18 = *&v20[176];
    v19[0] = *&v20[192];
    *(v19 + 11) = *&v20[203];
    v13 = *&v20[96];
    v14 = *&v20[112];
    v15 = *&v20[128];
    v16 = *&v20[144];
    v9 = *&v20[32];
    v10 = *&v20[48];
    v11 = *&v20[64];
    v12 = *&v20[80];
    v7 = *v20;
    v8 = *&v20[16];
    sub_1D90BC378(a1);
    a2(&v7);
  }

  v21[10] = v17;
  v21[11] = v18;
  v22[0] = v19[0];
  *(v22 + 11) = *(v19 + 11);
  v21[6] = v13;
  v21[7] = v14;
  v21[8] = v15;
  v21[9] = v16;
  v21[2] = v9;
  v21[3] = v10;
  v21[4] = v11;
  v21[5] = v12;
  v21[0] = v7;
  v21[1] = v8;
  return sub_1D8D08A50(v21, &qword_1ECABA698, &unk_1D91B62E0);
}

void sub_1D90D8E00(__int128 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v95 = a5;
  v9 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[7];
  v152 = a1[6];
  v153 = v13;
  v154 = a1[8];
  v14 = a1[3];
  v148 = a1[2];
  v149 = v14;
  v15 = a1[5];
  v150 = a1[4];
  v151 = v15;
  v16 = a1[1];
  v146 = *a1;
  v147 = v16;
  v99 = *(a1 + 148);
  v98 = *(a1 + 36);
  v144 = *(a1 + 149);
  v145 = *(a1 + 151);
  v17 = *(a1 + 19);
  v18 = a1[11];
  v140 = a1[10];
  v141 = v18;
  v142 = a1[12];
  v143 = *(a1 + 208);
  v19.n128_f64[0] = sub_1D90DCCC4(&v155);
  v103 = a2;
  v100 = v17;
  v101 = v12;
  v96 = v10;
  v97 = v9;
  v94 = a2 >> 62;
  if (a4)
  {
    if (a2 >> 62)
    {
      goto LABEL_26;
    }

    v20 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = 0; v20; i = 0)
    {
      v22 = v103;
      v17 = v103 & 0xC000000000000001;
      v102 = v103 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v17)
        {
          v23 = MEMORY[0x1DA72AA90](i, v22, v19);
        }

        else
        {
          if (i >= *(v102 + 16))
          {
            goto LABEL_25;
          }

          v23 = *(v22 + 8 * i + 32);
        }

        v24 = v23;
        v25 = [v23 uuid];
        if (v25)
        {
          break;
        }

        v29 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_24;
        }

LABEL_19:
        ++i;
        if (v29 == v20)
        {
          i = 0;
LABEL_21:
          v17 = v100;
          v12 = v101;
          goto LABEL_29;
        }
      }

      v9 = v25;
      a2 = sub_1D917820C();
      v27 = v26;

      if (a2 == a3 && v27 == a4)
      {

        v17 = v100;
        v12 = v101;
        goto LABEL_28;
      }

      v9 = sub_1D9179ACC();

      v22 = v103;
      if (v9)
      {
        goto LABEL_21;
      }

      v29 = i + 1;
      if (!__OFADD__(i, 1))
      {
        goto LABEL_19;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v20 = sub_1D917935C();
    }

    v12 = v101;
  }

  else
  {
    i = 0;
  }

LABEL_28:
  v22 = v103;
LABEL_29:
  v30 = &v155;
  v31 = v98 | (v99 << 32);
  if (v98 == 2 || (a2 = HIDWORD(v31), !HIDWORD(v31)))
  {
    v38 = __OFADD__(i, v17);
    v17 += i;
    if (v38)
    {
      __break(1u);
    }

    else
    {
      v99 = v98 | (v99 << 32);
      a2 = v94;
      if (!v94)
      {
        v12 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12 >= v17)
        {
          v39 = v17;
        }

        else
        {
          v39 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v39 < i)
        {
          goto LABEL_118;
        }

        if (v12 >= i)
        {
          goto LABEL_44;
        }

LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }
    }

    if (v22 < 0)
    {
      v31 = v22;
    }

    else
    {
      v31 = v22 & 0xFFFFFFFFFFFFFF8;
    }

    v83 = sub_1D917935C();
    if (v83 >= v17)
    {
      v39 = v17;
    }

    else
    {
      v39 = v83;
    }

    if (v39 < i)
    {
      goto LABEL_118;
    }

    v12 = v83;
    if (sub_1D917935C() >= i)
    {
LABEL_44:
      if ((i & 0x8000000000000000) == 0)
      {
        if (a2)
        {
          v40 = sub_1D917935C();
        }

        else
        {
          v40 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v40 >= v39)
        {
          if ((v39 & 0x8000000000000000) == 0)
          {
            if ((v22 & 0xC000000000000001) == 0 || i == v39)
            {

              if (!a2)
              {
LABEL_56:
                v43 = v22 & 0xFFFFFFFFFFFFFF8;
                v44 = (v22 & 0xFFFFFFFFFFFFFF8) + 32;
                v45 = (2 * v39) | 1;
LABEL_59:
                v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA6A8, qword_1D91B62F8);
                v138 = v102;
                v49 = sub_1D8CF48EC(&qword_1ECABA6B0, &qword_1ECABA6A8, qword_1D91B62F8, MEMORY[0x1E69E6968]);
                v139 = v49;
                v50 = swift_allocObject();
                v137[0] = v50;
                v50[2] = v43;
                v50[3] = v44;
                v50[4] = i;
                v50[5] = v45;
                if (v17 >= v12)
                {
                  v114 = v165;
                  v115 = v166;
                  v116 = v167;
                  v117 = v168;
                  v110 = v161;
                  v111 = v162;
                  v112 = v163;
                  v113 = v164;
                  v106 = v157;
                  v107 = v158;
                  v108 = v159;
                  v109 = v160;
                  v104 = v155;
                  v105 = v156;
                }

                else
                {
                  v125 = v152;
                  v126 = v153;
                  v127 = v154;
                  v121 = v148;
                  v122 = v149;
                  v123 = v150;
                  v124 = v151;
                  v119 = v146;
                  v120 = v147;
                  v128 = v99;
                  v129 = BYTE4(v99);
                  v130 = v144;
                  v131 = v145;
                  v132 = v100;
                  v133 = v140;
                  v134 = v141;
                  v135 = v142;
                  v136 = v143;
                  sub_1D90D9BA4(v103, &v119, v39, &v104);
                }

                v51 = v96;
                v30 = v97;
                v12 = v101;
                v52 = v102;
                while (1)
                {
LABEL_126:
                  while (1)
                  {
                    __swift_project_boxed_opaque_existential_1(v137, v52);
                    v53 = 0;
                    v85 = sub_1D90D4168(sub_1D90D9B6C, 0, v52, v30, MEMORY[0x1E69E73E0], v49, MEMORY[0x1E69E7410], v84);
                    v31 = v85[2];

                    a2 = 0;
                    while (1)
                    {
                      v22 = a2;
                      if (v31 == a2)
                      {
LABEL_130:

                        v87 = v115;
                        v88 = v95;
                        *(v95 + 168) = v114;
                        *(v88 + 184) = v87;
                        *(v88 + 200) = v116;
                        v89 = v111;
                        *(v88 + 104) = v110;
                        *(v88 + 120) = v89;
                        v90 = v113;
                        *(v88 + 136) = v112;
                        *(v88 + 152) = v90;
                        v91 = v107;
                        *(v88 + 40) = v106;
                        *(v88 + 56) = v91;
                        v92 = v109;
                        *(v88 + 72) = v108;
                        *(v88 + 88) = v92;
                        v93 = v105;
                        *(v88 + 8) = v104;
                        *v88 = v85;
                        *(v88 + 216) = v117;
                        *(v88 + 24) = v93;
                        *(v88 + 217) = v31 != v22;
                        __swift_destroy_boxed_opaque_existential_1Tm(v137);
                        return;
                      }

                      if (a2 >= v85[2])
                      {
                        break;
                      }

                      v53 = type metadata accessor for PodcastsMediaLibrary.MediaItem;
                      sub_1D90CC258(v85 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * a2++, v12, type metadata accessor for PodcastsMediaLibrary.MediaItem);
                      v86 = v12[*(v30 + 27)];
                      sub_1D90DD930(v12, type metadata accessor for PodcastsMediaLibrary.MediaItem);
                      if (v86)
                      {
                        goto LABEL_130;
                      }
                    }

                    __break(1u);
LABEL_132:
                    __break(1u);
LABEL_133:
                    __break(1u);
LABEL_134:
                    v54 = sub_1D917935C();
LABEL_67:
                    v55 = v54 >= v12 ? v12 : v54;
                    if (v53 < v54)
                    {
                      break;
                    }

                    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB44D0, &qword_1D91B62F0);
                    v138 = v52;
                    v49 = sub_1D8CF48EC(&qword_1ECABA6A0, &qword_1ECAB44D0, &qword_1D91B62F0, MEMORY[0x1E69E6328]);
                    v139 = v49;
                    v137[0] = MEMORY[0x1E69E7CC0];
                    v58 = v30[11];
                    v114 = v30[10];
                    v115 = v58;
                    v116 = v30[12];
                    v117 = v168;
                    v59 = v30[7];
                    v110 = v30[6];
                    v111 = v59;
                    v60 = v30[9];
                    v112 = v30[8];
                    v113 = v60;
                    v61 = v30[3];
                    v106 = v30[2];
                    v107 = v61;
                    v62 = v30[5];
                    v108 = v30[4];
                    v109 = v62;
                    v63 = v30[1];
                    v104 = *v30;
                    v105 = v63;
                    v51 = v96;
                    v30 = v97;
                    v12 = v101;
                  }

                  if (v12 < v53)
                  {
                    goto LABEL_137;
                  }

                  v56 = v94;
                  if (v94)
                  {
                    v57 = sub_1D917935C();
                  }

                  else
                  {
                    v57 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  if (v57 < v53)
                  {
                    goto LABEL_138;
                  }

                  if (v53 < 0)
                  {
                    goto LABEL_139;
                  }

                  if (v56)
                  {
                    v72 = sub_1D917935C();
                  }

                  else
                  {
                    v72 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  if (v72 < v55)
                  {
                    goto LABEL_140;
                  }

                  if ((v55 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_141;
                  }

                  v99 = v31;
                  v102 = v54;
                  if ((v22 & 0xC000000000000001) == 0 || v53 == v55)
                  {

                    if (!v56)
                    {
                      goto LABEL_101;
                    }
                  }

                  else
                  {
                    if (v53 >= v55)
                    {
                      goto LABEL_143;
                    }

                    sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);

                    v73 = v53;
                    do
                    {
                      v74 = v73 + 1;
                      sub_1D91794AC();
                      v73 = v74;
                    }

                    while (v55 != v74);
                    if (!v56)
                    {
LABEL_101:
                      v75 = v22 & 0xFFFFFFFFFFFFFF8;
                      v98 = (v22 & 0xFFFFFFFFFFFFFF8) + 32;
                      v76 = (2 * v55) | 1;
                      goto LABEL_104;
                    }
                  }

                  v75 = sub_1D917975C();
                  v98 = v77;
                  v53 = v78;
                  v76 = v79;
LABEL_104:
                  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA6A8, qword_1D91B62F8);
                  v138 = v52;
                  v80 = sub_1D8CF48EC(&qword_1ECABA6B0, &qword_1ECABA6A8, qword_1D91B62F8, MEMORY[0x1E69E6968]);
                  v139 = v80;
                  v81 = swift_allocObject();
                  v137[0] = v81;
                  v82 = v98;
                  v81[2] = v75;
                  v81[3] = v82;
                  v81[4] = v53;
                  v81[5] = v76;
                  if (v12 >= v102)
                  {
                    v114 = v165;
                    v115 = v166;
                    v116 = v167;
                    v117 = v168;
                    v110 = v161;
                    v111 = v162;
                    v112 = v163;
                    v113 = v164;
                    v106 = v157;
                    v107 = v158;
                    v108 = v159;
                    v109 = v160;
                    v104 = v155;
                    v105 = v156;
                  }

                  else
                  {
                    v125 = v152;
                    v126 = v153;
                    v127 = v154;
                    v121 = v148;
                    v122 = v149;
                    v123 = v150;
                    v124 = v151;
                    v119 = v146;
                    v120 = v147;
                    v128 = v99;
                    v129 = a2;
                    v130 = v144;
                    v131 = v145;
                    v132 = v100;
                    v133 = v140;
                    v134 = v141;
                    v135 = v142;
                    v136 = v143;
                    sub_1D90D9BA4(v103, &v119, v55, &v104);
                  }

                  v51 = v96;
                  v30 = v97;
                  v12 = v101;
                  v49 = v80;
                }
              }

LABEL_58:

              v43 = sub_1D917975C();
              v44 = v46;
              i = v47;
              v45 = v48;
              goto LABEL_59;
            }

            if (i < v39)
            {
              sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);

              v41 = i;
              do
              {
                v42 = v41 + 1;
                sub_1D91794AC();
                v41 = v42;
              }

              while (v39 != v42);
              if (!a2)
              {
                goto LABEL_56;
              }

              goto LABEL_58;
            }

LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    goto LABEL_117;
  }

  if (HIDWORD(v31) != 1)
  {
    v53 = i + 1;
    if (!__OFADD__(i, 1))
    {
      v12 = (v53 + v100);
      if (!__OFADD__(v53, v100))
      {
        if (!v94)
        {
          v54 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_67;
        }

        goto LABEL_134;
      }

      goto LABEL_133;
    }

    goto LABEL_132;
  }

  v118 = v22;

  v32 = sub_1D90D53E8(i);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1D9189070;
  *(v33 + 32) = v32;
  v34 = v118;
  *&v119 = v33;
  i = v32;
  sub_1D8E302A0(v34);
  v9 = v119;
  v30 = (v119 >> 62);
  if (!(v119 >> 62))
  {
    if (v17 < *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_34;
    }

LABEL_124:
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB44D0, &qword_1D91B62F0);
    v138 = v52;
    v49 = sub_1D8CF48EC(&qword_1ECABA6A0, &qword_1ECAB44D0, &qword_1D91B62F0, MEMORY[0x1E69E6328]);
    v139 = v49;

    v137[0] = v9;
    v114 = v165;
    v115 = v166;
    v116 = v167;
    v117 = v168;
    v110 = v161;
    v111 = v162;
    v112 = v163;
    v113 = v164;
    v106 = v157;
    v107 = v158;
    v108 = v159;
    v109 = v160;
    v104 = v155;
    v105 = v156;
    goto LABEL_125;
  }

LABEL_123:
  if (v17 >= sub_1D917935C())
  {
    goto LABEL_124;
  }

LABEL_34:
  v99 = v31;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA6A8, qword_1D91B62F8);
  v139 = sub_1D8CF48EC(&qword_1ECABA6B0, &qword_1ECABA6A8, qword_1D91B62F8, MEMORY[0x1E69E6968]);
  v35 = swift_allocObject();
  v137[0] = v35;
  if (v17 < -1)
  {
    __break(1u);
  }

  else
  {
    v36 = v35;
    if (v30)
    {
      if (sub_1D917935C() < 0)
      {
        goto LABEL_142;
      }

      v37 = sub_1D917935C();
    }

    else
    {
      v37 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v37 > v17)
    {
      v64 = v17 + 1;
      if ((v9 & 0xC000000000000001) == 0 || v17 == -1)
      {

        if (!v30)
        {
LABEL_83:
          v67 = 0;
          v68 = v9 & 0xFFFFFFFFFFFFFF8;
          v69 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
          v70 = (2 * v64) | 1;
LABEL_86:
          v71 = v100;
          v36[2] = v68;
          v36[3] = v69;
          v36[4] = v67;
          v36[5] = v70;
          v125 = v152;
          v126 = v153;
          v127 = v154;
          v121 = v148;
          v122 = v149;
          v123 = v150;
          v124 = v151;
          v119 = v146;
          v120 = v147;
          v129 = a2;
          v128 = v99;
          v130 = v144;
          v131 = v145;
          v132 = v71;
          v133 = v140;
          v134 = v141;
          v135 = v142;
          v136 = v143;
          sub_1D90D9BA4(v9, &v119, v71, &v104);

          v52 = v138;
          v49 = v139;
LABEL_125:
          v51 = v96;
          v30 = v97;
          goto LABEL_126;
        }
      }

      else
      {
        sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);

        v65 = 0;
        do
        {
          v66 = v65 + 1;
          sub_1D91794AC();
          v65 = v66;
        }

        while (v64 != v66);
        if (!v30)
        {
          goto LABEL_83;
        }
      }

      v68 = sub_1D917975C();
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

void sub_1D90D9BA4(unint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 32);
  v8 = *(a2 + 7);
  v66[2] = *(a2 + 6);
  v66[3] = v8;
  v67[0] = *(a2 + 8);
  *(v67 + 13) = *(a2 + 141);
  v9 = *(a2 + 5);
  v66[0] = *(a2 + 4);
  v66[1] = v9;
  v10 = a2[19];
  if (a1 >> 62)
  {
    v47 = a1;
    v48 = a3;
    v49 = a2;
    v50 = sub_1D917935C();
    a2 = v49;
    a3 = v48;
    v11 = v50;
    a1 = v47;
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 > a3)
  {
    v51 = a3;
    if ((a1 & 0xC000000000000001) == 0)
    {
      if ((a3 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) > a3)
      {
        v12 = a2;
        v13 = *(a1 + 8 * a3 + 32);
        goto LABEL_8;
      }

      __break(1u);
      return;
    }

    v12 = a2;
    v13 = MEMORY[0x1DA72AA90](a3, a1);
LABEL_8:
    v14 = v13;
    v15 = [v13 uuid];

    if (v15)
    {
      v16 = sub_1D917820C();
      v18 = v17;

      if (v7 == 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1D9189080;
        *(v28 + 32) = v16;
        *(v28 + 40) = v18;
        v29 = *(v12 + 7);
        v59 = *(v12 + 6);
        v60 = v29;
        *v61 = *(v12 + 8);
        *&v61[13] = *(v12 + 141);
        v30 = *(v12 + 5);
        v57 = *(v12 + 4);
        v58 = v30;
        v53 = v28;
        v54 = 0uLL;
        LOBYTE(v55) = 2;
        *(&v55 + 1) = 0;
        v56 = 0uLL;
        *&v61[24] = v10;
        *&v62 = v51;
        WORD4(v62) = 1;
        v63 = 0u;
        v64 = 0u;
        v65 = -1;
        nullsub_1();
        v31 = *&v61[16];
        *(a4 + 160) = v62;
        *(a4 + 176) = 0u;
        *(a4 + 192) = 0u;
        v32 = v60;
        v33 = *v61;
        v34 = v58;
        *(a4 + 96) = v59;
        *(a4 + 112) = v32;
        *(a4 + 128) = v33;
        *(a4 + 144) = v31;
        v35 = v56;
        v36 = v57;
        *(a4 + 32) = v55;
        *(a4 + 48) = v35;
        *(a4 + 208) = v65;
        *(a4 + 64) = v36;
        *(a4 + 80) = v34;
        v37 = v54;
        *a4 = v53;
        *(a4 + 16) = v37;
        sub_1D8D088B4(v66, v52, &qword_1ECAB9F78, qword_1D91B16D0);
        return;
      }

      if (v7 == 4)
      {
        v19 = *(v12 + 7);
        v59 = *(v12 + 6);
        v60 = v19;
        *v61 = *(v12 + 8);
        *&v61[13] = *(v12 + 141);
        v20 = *(v12 + 5);
        v57 = *(v12 + 4);
        v58 = v20;
        *&v53 = v6;
        *(&v53 + 1) = v5;
        *&v54 = v16;
        *(&v54 + 1) = v18;
        LOBYTE(v55) = 4;
        *(&v55 + 1) = 0;
        v56 = 0uLL;
        *&v61[24] = v10;
        *&v62 = v51;
        WORD4(v62) = 1;
        v63 = 0u;
        v64 = 0u;
        v65 = -1;
        nullsub_1();
        v21 = *&v61[16];
        *(a4 + 160) = v62;
        *(a4 + 176) = 0u;
        *(a4 + 192) = 0u;
        v22 = v60;
        v23 = *v61;
        v24 = v58;
        *(a4 + 96) = v59;
        *(a4 + 112) = v22;
        *(a4 + 128) = v23;
        *(a4 + 144) = v21;
        v25 = v56;
        v26 = v57;
        *(a4 + 32) = v55;
        *(a4 + 48) = v25;
        *(a4 + 208) = v65;
        *(a4 + 64) = v26;
        *(a4 + 80) = v24;
        v27 = v54;
        *a4 = v53;
        *(a4 + 16) = v27;
        sub_1D8D088B4(v66, v52, &qword_1ECAB9F78, qword_1D91B16D0);

        return;
      }
    }
  }

  sub_1D90DCCC4(&v53);
  v38 = v63;
  v39 = v64;
  v40 = *&v61[16];
  *(a4 + 160) = v62;
  *(a4 + 176) = v38;
  *(a4 + 192) = v39;
  v41 = v60;
  v42 = *v61;
  v43 = v58;
  *(a4 + 96) = v59;
  *(a4 + 112) = v41;
  *(a4 + 128) = v42;
  *(a4 + 144) = v40;
  v44 = v56;
  v45 = v57;
  *(a4 + 32) = v55;
  *(a4 + 48) = v44;
  *(a4 + 208) = v65;
  *(a4 + 64) = v45;
  *(a4 + 80) = v43;
  v46 = v54;
  *a4 = v53;
  *(a4 + 16) = v46;
}

void sub_1D90D9F10(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v7 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 playbackContext];

  sub_1D90CC258(a2, v10, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  (*(v4 + 16))(v6, v20, v3);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (*(v4 + 80) + v14 + 8) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_1D90DDFAC(v10, v16 + v13, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  *(v16 + v14) = v12;
  (*(v4 + 32))(v16 + v15, v6, v3);
  aBlock[4] = sub_1D90DC130;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_81;
  v17 = _Block_copy(aBlock);
  v18 = v12;

  [v18 performBlock_];
  _Block_release(v17);
}

void sub_1D90DA1EC(uint64_t a1, void *a2, uint64_t a3)
{
  v28[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v28 - v9;
  v11 = sub_1D9176C2C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  sub_1D8D088B4(a1 + *(v15 + 48), v10, &unk_1ECAB5910, &qword_1D9188C90);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D8D08A50(v10, &unk_1ECAB5910, &qword_1D9188C90);
    if (*(a1 + 88))
    {
LABEL_3:
      v16 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      v17 = [a2 episodeForUuid_];

      if (!v17)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v18 = [a2 persistentStoreCoordinator];
    if (v18)
    {
      v19 = v18;
      v20 = sub_1D9176B1C();
      v21 = [v19 managedObjectIDForURIRepresentation_];

      if (v21)
      {
        v22 = [a2 objectWithID_];

        (*(v12 + 8))(v14, v11);
        objc_opt_self();
        v23 = swift_dynamicCastObjCClass();
        if (!v23)
        {

          goto LABEL_17;
        }

        v24 = v22;
LABEL_14:
        v25 = [v23 assetURL];
        if (v25)
        {
          v26 = v25;
        }

        else
        {
          v26 = [v23 enclosureURL];

          if (!v26)
          {
            goto LABEL_17;
          }
        }

        v23 = v23;
        sub_1D90BFA08(v23, v7);
        v27 = 0;
        goto LABEL_20;
      }
    }

    (*(v12 + 8))(v14, v11);
    if (*(a1 + 88))
    {
      goto LABEL_3;
    }
  }

  if (*(a1 + 56))
  {
LABEL_16:
    v23 = 0;
LABEL_17:
    v27 = 1;
LABEL_20:
    (*(*(v15 - 8) + 56))(v7, v27, 1, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650);
    sub_1D917876C();

    return;
  }

  if ((*(a1 + 48) & 0x8000000000000000) == 0)
  {
    v17 = [a2 episodeForStoreTrackID_];
    if (v17)
    {
LABEL_13:
      v23 = v17;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  __break(1u);
}

void sub_1D90DA628(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a4;
  v63 = a5;
  v79 = a2;
  v6 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v76 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v71 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v61 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v61 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v61 - v15;
  v17 = sub_1D9176C2C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot(0);
  MEMORY[0x1EEE9AC00](v80);
  v65 = (&v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v61 - v24;
  v26 = *(a1 + 16);
  v64 = a1;
  v61 = v26;
  if (!v26)
  {
    v27 = 0;
    v29 = MEMORY[0x1E69E7CC0];
LABEL_37:
    if (qword_1ECAB0D48 != -1)
    {
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  v68 = v20;
  v27 = 0;
  v28 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v73 = *(v23 + 72);
  v75 = (v18 + 48);
  v67 = (v18 + 32);
  v29 = MEMORY[0x1E69E7CC0];
  v66 = (v18 + 8);
  v74 = v16;
  v78 = v17;
  while (1)
  {
    sub_1D90CC258(v28, v25, type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot);
    sub_1D8D088B4(&v25[*(v80 + 32)], v16, &unk_1ECAB5910, &qword_1D9188C90);
    if ((*v75)(v16, 1, v17) == 1)
    {
      sub_1D8D08A50(v16, &unk_1ECAB5910, &qword_1D9188C90);
      if (!*(v25 + 5))
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    v72 = v29;
    v31 = v27;
    v32 = v68;
    (*v67)(v68, v16, v17);
    v33 = [v79 persistentStoreCoordinator];
    if (!v33 || (v34 = v33, v35 = sub_1D9176B1C(), v36 = [v34 managedObjectIDForURIRepresentation_], v34, v35, v17 = v78, !v36))
    {
      (*v66)(v32, v17);
      goto LABEL_13;
    }

    v37 = [v79 objectWithID_];

    (*v66)(v32, v17);
    objc_opt_self();
    v38 = swift_dynamicCastObjCClass();
    if (!v38)
    {

LABEL_13:
      v27 = v31;
      v29 = v72;
      if (!*(v25 + 5))
      {
        goto LABEL_16;
      }

LABEL_14:

      v41 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      v42 = [v79 episodeForUuid_];

      v17 = v78;
      if (v42)
      {
        v43 = v42;
LABEL_20:
        v39 = v43;
        goto LABEL_21;
      }

LABEL_16:
      if (v25[8])
      {
        goto LABEL_28;
      }

      if ((*v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      v44 = [v79 episodeForStoreTrackID_];
      if (!v44)
      {
LABEL_28:
        v39 = 0;
LABEL_29:
        v52 = v65;
        sub_1D90CC258(v25, v65, type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot);
        v53 = v70;
        sub_1D90C8B7C(v52, v70);
        sub_1D90CC258(v53, v71, type metadata accessor for PodcastsMediaLibrary.MediaItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1D8ECD960(0, v29[2] + 1, 1, v29);
        }

        v50 = v29[2];
        v54 = v29[3];
        v51 = v50 + 1;
        if (v50 >= v54 >> 1)
        {
          v29 = sub_1D8ECD960((v54 > 1), v50 + 1, 1, v29);
        }

        sub_1D90DD930(v70, type metadata accessor for PodcastsMediaLibrary.MediaItem);
        v30 = v71;
        goto LABEL_4;
      }

      v43 = v44;
      goto LABEL_20;
    }

    v39 = v38;
    v40 = v37;
    v27 = v31;
    v29 = v72;
LABEL_21:
    v45 = [v39 assetURL];
    if (!v45)
    {
      v45 = [v39 enclosureURL];
      if (!v45)
      {

        goto LABEL_29;
      }
    }

    if (__OFADD__(v27++, 1))
    {
      break;
    }

    v47 = v39;
    v48 = v69;
    sub_1D90BFA08(v47, v69);
    sub_1D90C1DE8(*&v25[*(v80 + 60)], *&v25[*(v80 + 60) + 8], v77);
    sub_1D90DD930(v48, type metadata accessor for PodcastsMediaLibrary.MediaItem);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1D8ECD960(0, v29[2] + 1, 1, v29);
    }

    v50 = v29[2];
    v49 = v29[3];
    v51 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      v29 = sub_1D8ECD960((v49 > 1), v50 + 1, 1, v29);
    }

    v30 = v77;
    v17 = v78;
LABEL_4:
    v29[2] = v51;
    sub_1D90DDFAC(v30, v29 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v50, type metadata accessor for PodcastsMediaLibrary.MediaItem);
    sub_1D90DD930(v25, type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot);
    v16 = v74;
    v28 += v73;
    if (!--v26)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  swift_once();
LABEL_38:
  v55 = sub_1D917744C();
  __swift_project_value_buffer(v55, qword_1ECAB0D50);

  v56 = sub_1D917741C();
  v57 = sub_1D9178D1C();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 134218496;
    *(v58 + 4) = v27;
    *(v58 + 12) = 2048;
    v59 = v61;
    *(v58 + 14) = v61;
    *(v58 + 22) = 2048;
    if (!__OFSUB__(v59, v27))
    {
      *(v58 + 24) = v59 - v27;
      v60 = v58;

      _os_log_impl(&dword_1D8CEC000, v56, v57, "Restored %ld / %ld media items. Returning %ld shallow items.", v60, 0x20u);
      MEMORY[0x1DA72CB90](v60, -1, -1);

      goto LABEL_42;
    }

    __break(1u);
  }

  else
  {

LABEL_42:
    sub_1D90DCCC4(v83);
    v81[10] = v83[10];
    v81[11] = v83[11];
    v81[12] = v83[12];
    v82 = v84;
    v81[6] = v83[6];
    v81[7] = v83[7];
    v81[8] = v83[8];
    v81[9] = v83[9];
    v81[2] = v83[2];
    v81[3] = v83[3];
    v81[4] = v83[4];
    v81[5] = v83[5];
    v81[0] = v83[0];
    v81[1] = v83[1];
    sub_1D90DD19C(v29, v81, v62, v63);
  }
}

void sub_1D90DAF30(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 playbackContext];

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3 & 1;
  *(v13 + 48) = v5;
  *(v13 + 56) = a4;
  *(v13 + 64) = a5;
  v16[4] = sub_1D90DD8A4;
  v16[5] = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1D8CF5F60;
  v16[3] = &block_descriptor_32_1;
  v14 = _Block_copy(v16);

  v15 = v12;

  [v15 performBlock_];
  _Block_release(v14);
}

uint64_t sub_1D90DB09C(uint64_t a1, void *a2, id a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a1 + 16);
  if (v10)
  {
    *&v58 = MEMORY[0x1E69E7CC0];
    sub_1D91795CC();
    v11 = a1 + 32;
    v12 = v10;
    do
    {
      v11 += 8;
      sub_1D9179EBC();
      sub_1D917959C();
      sub_1D91795DC();
      sub_1D91795EC();
      sub_1D91795AC();
      --v12;
    }

    while (v12);
  }

  v13 = objc_opt_self();
  sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  v14 = sub_1D91785DC();

  v15 = [v13 predicateForPersistentIds_];

  v16 = [a2 objectsInEntity:@"MTEpisode" predicate:v15 sortDescriptors:0];
  if (v16)
  {
    v17 = v16;
    sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
    v18 = sub_1D91785FC();

    v19 = sub_1D8FBF084(v18);
  }

  else
  {
    v19 = 0;
  }

  v20 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v21 = a3;
    a3 = v15;
    *&v58 = MEMORY[0x1E69E7CC0];
    v22 = &v58;
    sub_1D8E3148C(0, v10, 0);
    v20 = v58;
    v23 = (a1 + 32);
    while (1)
    {
      v25 = *v23++;
      v24 = v25;
      if (v25 < 0)
      {
        break;
      }

      *&v58 = v20;
      v27 = *(v20 + 16);
      v26 = *(v20 + 24);
      if (v27 >= v26 >> 1)
      {
        v22 = &v58;
        sub_1D8E3148C((v26 > 1), v27 + 1, 1);
        v20 = v58;
      }

      *(v20 + 16) = v27 + 1;
      *(v20 + 8 * v27 + 32) = v24;
      if (!--v10)
      {
        v15 = a3;
        a3 = v21;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v30 = sub_1D917935C();
    if (!v30)
    {
      goto LABEL_57;
    }

    goto LABEL_19;
  }

LABEL_14:
  if (!v19)
  {
LABEL_32:

    v22 = 0;
    v29 = 1;
    goto LABEL_58;
  }

  KeyPath = swift_getKeyPath();
  v22 = sub_1D90D4F70(v20, KeyPath, v19);

  v29 = v22 == 0;
  if ((a4 & 1) != 0 || !v22)
  {
LABEL_58:
    *(&v59 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB44D0, &qword_1D91B62F0);
    v49 = sub_1D8CF48EC(&qword_1ECABA6A0, &qword_1ECAB44D0, &qword_1D91B62F0, MEMORY[0x1E69E6328]);
    v50 = MEMORY[0x1E69E7CC0];
    if (!v29)
    {
      v50 = v22;
    }

    *&v60 = v49;
    *&v58 = v50;
    sub_1D8D6BCE0(&v58, v72);
    v47 = v73;
    goto LABEL_61;
  }

  v23 = (v22 >> 62);
  v52 = v15;
  if (v22 >> 62)
  {
    goto LABEL_56;
  }

  v30 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
LABEL_57:
    v29 = 0;
    v15 = v52;
    goto LABEL_58;
  }

LABEL_19:
  v31 = 0;
  v32 = v22 & 0xC000000000000001;
  v33 = v22 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v32)
    {
      v34 = MEMORY[0x1DA72AA90](v31, v22);
    }

    else
    {
      if (v31 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      v34 = *(v22 + 8 * v31 + 32);
    }

    v35 = v34;
    v36 = [v34 persistentID];

    if ((v36 & 0x8000000000000000) == 0 && v36 == a3)
    {
      break;
    }

    v37 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_54;
    }

    ++v31;
    if (v37 == v30)
    {
      v31 = 0;
      break;
    }
  }

  v15 = v52;
  if (v23)
  {
    result = sub_1D917935C();
    if (result < v31)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v39 = result;
    result = sub_1D917935C();
  }

  else
  {
    result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v39 = result;
    if (result < v31)
    {
      __break(1u);
      goto LABEL_32;
    }
  }

  if (result < v31)
  {
    __break(1u);
    goto LABEL_63;
  }

  if (v31 < 0)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v23)
  {
    result = sub_1D917935C();
  }

  else
  {
    result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v39)
  {
    goto LABEL_64;
  }

  if (v39 < 0)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (!v32)
  {

    goto LABEL_50;
  }

  if (v31 == v39)
  {

    goto LABEL_49;
  }

  if (v31 < v39)
  {
    sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);

    v40 = v31;
    do
    {
      v41 = v40 + 1;
      sub_1D91794AC();
      v40 = v41;
    }

    while (v39 != v41);
LABEL_49:
    if (v23)
    {

      v33 = sub_1D917975C();
      v42 = v44;
      v31 = v45;
      v43 = v46;

      goto LABEL_52;
    }

LABEL_50:

    v42 = v33 + 32;
    v43 = (2 * v39) | 1;
LABEL_52:
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA6A8, qword_1D91B62F8);
    v73 = v47;
    v74 = sub_1D8CF48EC(&qword_1ECABA6B0, &qword_1ECABA6A8, qword_1D91B62F8, MEMORY[0x1E69E6968]);
    v48 = swift_allocObject();
    v72[0] = v48;
    v48[2] = v33;
    v48[3] = v42;
    v48[4] = v31;
    v48[5] = v43;
LABEL_61:
    __swift_project_boxed_opaque_existential_1(v72, v47);
    type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
    v51 = sub_1D917843C();
    sub_1D90DCCC4(&v58);
    v56[10] = v68;
    v56[11] = v69;
    v56[12] = v70;
    v57 = v71;
    v56[6] = v64;
    v56[7] = v65;
    v56[8] = v66;
    v56[9] = v67;
    v56[2] = v60;
    v56[3] = v61;
    v56[4] = v62;
    v56[5] = v63;
    v56[0] = v58;
    v56[1] = v59;
    sub_1D90DD19C(v51, v56, a6, a7);

    return __swift_destroy_boxed_opaque_existential_1Tm(v72);
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_1D90DB724@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D90BFA08(*a1, a2);
  v3 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  return (*(*(v3 - 8) + 56))(a2, 0, 1, v3);
}

void sub_1D90DB7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 playbackContext];

  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = v13;
  v14[4] = v6;
  v14[5] = a2;
  v14[6] = a3;
  v17[4] = a5;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1D8CF5F60;
  v17[3] = a6;
  v15 = _Block_copy(v17);

  v16 = v13;

  [v16 performBlock_];
  _Block_release(v15);
}

void sub_1D90DB914(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v48 = a2;
  v6 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v41 - v9;
  v10 = *(a1 + 16);
  if (!v10)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_40:
    if (v12[2])
    {
      sub_1D90DCCC4(v51);
      v49[10] = v51[10];
      v49[11] = v51[11];
      v49[12] = v51[12];
      v50 = v52;
      v49[6] = v51[6];
      v49[7] = v51[7];
      v49[8] = v51[8];
      v49[9] = v51[9];
      v49[2] = v51[2];
      v49[3] = v51[3];
      v49[4] = v51[4];
      v49[5] = v51[5];
      v49[0] = v51[0];
      v49[1] = v51[1];
      sub_1D90DD19C(v12, v49, v41, v42);
    }

    else
    {

      *&v51[0] = 5;
      sub_1D90DD564(v51, v41, v42);
    }

    return;
  }

  v11 = (a1 + 64);
  v12 = MEMORY[0x1E69E7CC0];
  v47 = @"MTEpisode";
  v13 = 0x1E8567000uLL;
  while (1)
  {
    v14 = *(v11 - 4);
    if (*v11 != 1)
    {
      break;
    }

    v46 = v12;

    v15 = v13;
    v16 = objc_opt_self();
    v17 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v18 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v19 = [v16 predicateForEpisodeGuid:v17 onFeedURL:v18];

    v20 = [v48 objectsInEntity:v47 predicate:v19 sortDescriptors:0];
    if (v20)
    {
      v21 = v20;
      sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
      v22 = sub_1D91785FC();

      v23 = sub_1D8FBF084(v22);

      if (v23)
      {
        v13 = v15;
        if (v23 >> 62)
        {
          v40 = sub_1D917935C();
          v12 = v46;
          if (!v40)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v12 = v46;
          if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }
        }

        if ((v23 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1DA72AA90](0, v23);
        }

        else
        {
          if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v24 = *(v23 + 32);
        }

        v25 = v24;

        v26 = v25;
        sub_1D90BFA08(v26, v45);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1D8ECD960(0, v12[2] + 1, 1, v12);
        }

        v28 = v12[2];
        v27 = v12[3];
        if (v28 >= v27 >> 1)
        {
          v12 = sub_1D8ECD960((v27 > 1), v28 + 1, 1, v12);
        }

        v12[2] = v28 + 1;
        v30 = v44;
        v29 = v45;
LABEL_31:
        sub_1D90DDFAC(v29, v12 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v28, type metadata accessor for PodcastsMediaLibrary.MediaItem);
        goto LABEL_4;
      }
    }

    v13 = v15;
    v12 = v46;
LABEL_4:
    v11 += 40;
    if (!--v10)
    {
      goto LABEL_40;
    }
  }

  sub_1D8E89A08(*(v11 - 4), *(v11 - 3), *(v11 - 2), *(v11 - 1), 0);
  v31 = objc_opt_self();
  if ((v14 & 0x8000000000000000) == 0)
  {
    v19 = [v31 predicateForEpisodeStoreTrackId_];
    v32 = [v48 objectsInEntity:v47 predicate:v19 sortDescriptors:0];
    if (!v32 || (v33 = v32, sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620), v34 = sub_1D91785FC(), v33, v35 = sub_1D8FBF084(v34), , !v35))
    {

      goto LABEL_4;
    }

    if (v35 >> 62)
    {
      if (!sub_1D917935C())
      {
LABEL_36:

        goto LABEL_4;
      }
    }

    else if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_36;
    }

    if ((v35 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x1DA72AA90](0, v35);
    }

    else
    {
      if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v36 = *(v35 + 32);
    }

    v37 = v36;

    v38 = v37;
    sub_1D90BFA08(v38, v43);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1D8ECD960(0, v12[2] + 1, 1, v12);
    }

    v28 = v12[2];
    v39 = v12[3];
    if (v28 >= v39 >> 1)
    {
      v12 = sub_1D8ECD960((v39 > 1), v28 + 1, 1, v12);
    }

    v12[2] = v28 + 1;
    v29 = v43;
    v30 = v44;
    goto LABEL_31;
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_1D90DBEF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D90DBF10, 0, 0);
}

uint64_t sub_1D90DBF10()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  *v3 = v0;
  v3[1] = sub_1D90DC018;
  v5 = v0[2];

  return MEMORY[0x1EEE6DDE0](v5, 0, 0, 0xD000000000000013, 0x80000001D91D5E90, sub_1D90DC128, v2, v4);
}

uint64_t sub_1D90DC018()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1D90DC130()
{
  v1 = *(type metadata accessor for PodcastsMediaLibrary.MediaItem(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA1D8, &qword_1D91B3650) - 8);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  sub_1D90DA1EC(v0 + v2, v5, v6);
}

void sub_1D90DC230(void *a1, char a2, void *a3)
{
  v43 = a1[2];
  if (!v43)
  {
    goto LABEL_23;
  }

  v6 = a1[4];
  v5 = a1[5];
  v7 = *a3;
  v8 = sub_1D8D1AC44(v6);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = v8;
  v14 = v9;
  v15 = v7[3];
  v16 = v5;
  if (v15 >= v12)
  {
    if (a2)
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1D8F85248();
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

  sub_1D90095B8(v12, a2 & 1);
  v17 = sub_1D8D1AC44(v6);
  if ((v14 & 1) != (v18 & 1))
  {
LABEL_28:
    sub_1D9179CFC();
    __break(1u);
LABEL_29:
    sub_1D917946C();
    MEMORY[0x1DA7298F0](0xD00000000000001BLL, 0x80000001D91CDBE0);
    sub_1D917964C();
    MEMORY[0x1DA7298F0](39, 0xE100000000000000);
    sub_1D91796DC();
    __break(1u);
    return;
  }

  v13 = v17;
  if (v14)
  {
    goto LABEL_9;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
  *(v21[6] + 8 * v13) = v6;
  *(v21[7] + 8 * v13) = v16;
  v22 = v21[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21[2] = v24;
  if (v43 != 1)
  {
    v25 = (a1 + 7);
    v26 = 1;
    while (v26 < a1[2])
    {
      v28 = *(v25 - 1);
      v27 = *v25;
      v29 = *a3;
      v30 = sub_1D8D1AC44(v28);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_25;
      }

      v35 = v30;
      v36 = v31;
      v37 = v29[3];
      v16 = v27;
      if (v37 < v34)
      {
        sub_1D90095B8(v34, 1);
        v38 = sub_1D8D1AC44(v28);
        if ((v36 & 1) != (v39 & 1))
        {
          goto LABEL_28;
        }

        v35 = v38;
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v40 = *a3;
      *(*a3 + 8 * (v35 >> 6) + 64) |= 1 << v35;
      *(v40[6] + 8 * v35) = v28;
      *(v40[7] + 8 * v35) = v16;
      v41 = v40[2];
      v23 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v23)
      {
        goto LABEL_26;
      }

      ++v26;
      v40[2] = v42;
      v25 += 2;
      if (v43 == v26)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

void sub_1D90DC5A4(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_1D8F07098(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_1D9009844(v16, v5 & 1);
    v11 = sub_1D8F07098(v7, v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
    v11 = sub_1D9179CFC();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_1D8F853A4();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1D917946C();
    MEMORY[0x1DA7298F0](0xD00000000000001BLL, 0x80000001D91CDBE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
    sub_1D917964C();
    MEMORY[0x1DA7298F0](39, 0xE100000000000000);
    sub_1D91796DC();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v27 = *v5;
      v28 = *a3;

      v10 = v27;
      v29 = sub_1D8F07098(v7, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        sub_1D9009844(v33, 1);
        v29 = sub_1D8F07098(v7, v6);
        if ((v17 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v29) = v10;
      v37 = v35[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_1D90DC950(void *a1, char a2, void *a3)
{
  v43 = a1[2];
  if (!v43)
  {
    goto LABEL_23;
  }

  v6 = a1[4];
  v5 = a1[5];
  v7 = *a3;
  v8 = sub_1D8D490F4(v6);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = v8;
  v14 = v9;
  v15 = v7[3];
  v16 = v5;
  if (v15 >= v12)
  {
    if (a2)
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1D8F8550C();
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

  sub_1D9009B08(v12, a2 & 1);
  v17 = sub_1D8D490F4(v6);
  if ((v14 & 1) != (v18 & 1))
  {
LABEL_28:
    sub_1D9179CFC();
    __break(1u);
LABEL_29:
    sub_1D917946C();
    MEMORY[0x1DA7298F0](0xD00000000000001BLL, 0x80000001D91CDBE0);
    sub_1D917964C();
    MEMORY[0x1DA7298F0](39, 0xE100000000000000);
    sub_1D91796DC();
    __break(1u);
    return;
  }

  v13 = v17;
  if (v14)
  {
    goto LABEL_9;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
  *(v21[6] + 8 * v13) = v6;
  *(v21[7] + 8 * v13) = v16;
  v22 = v21[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21[2] = v24;
  if (v43 != 1)
  {
    v25 = (a1 + 7);
    v26 = 1;
    while (v26 < a1[2])
    {
      v28 = *(v25 - 1);
      v27 = *v25;
      v29 = *a3;
      v30 = sub_1D8D490F4(v28);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_25;
      }

      v35 = v30;
      v36 = v31;
      v37 = v29[3];
      v16 = v27;
      if (v37 < v34)
      {
        sub_1D9009B08(v34, 1);
        v38 = sub_1D8D490F4(v28);
        if ((v36 & 1) != (v39 & 1))
        {
          goto LABEL_28;
        }

        v35 = v38;
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v40 = *a3;
      *(*a3 + 8 * (v35 >> 6) + 64) |= 1 << v35;
      *(v40[6] + 8 * v35) = v28;
      *(v40[7] + 8 * v35) = v16;
      v41 = v40[2];
      v23 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v23)
      {
        goto LABEL_26;
      }

      ++v26;
      v40[2] = v42;
      v25 += 2;
      if (v43 == v26)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

double sub_1D90DCCC4(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  return result;
}

uint64_t sub_1D90DCCF0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    v5 = 0;
    v6 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v6)
      {
        v7 = MEMORY[0x1DA72AA90](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a1 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v12[2] = v7;
      swift_getAtKeyPath();
      if (sub_1D8D1A770(v12, v12[1]))
      {
        sub_1D917959C();
        sub_1D91795DC();
        v6 = v11;
        sub_1D91795EC();
        sub_1D91795AC();
      }

      else
      {
      }

      ++v5;
      if (v9 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D90DCE84(unint64_t a1, uint64_t a2)
{
  v13 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA72AA90](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v12[4] = v5;
      swift_getAtKeyPath();
      v8 = v12[2];
      v9 = v12[3];

      v10 = sub_1D8EFB66C(v12, v8, v9);

      if (v10)
      {
        sub_1D917959C();
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
      }

      else
      {
      }

      if (v7 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D90DD008(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    v5 = 0;
    v6 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v6)
      {
        v7 = MEMORY[0x1DA72AA90](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a1 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v12[2] = v7;
      swift_getAtKeyPath();
      if (sub_1D8D82034(v12, v12[1]))
      {
        sub_1D917959C();
        sub_1D91795DC();
        v6 = v11;
        sub_1D91795EC();
        sub_1D91795AC();
      }

      else
      {
      }

      ++v5;
      if (v9 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D90DD19C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D9177E0C();
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9177E9C();
  v30 = *(v11 - 8);
  v31 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[11];
  v45 = a2[10];
  v46 = v14;
  v47 = a2[12];
  v48 = *(a2 + 208);
  v15 = a2[7];
  v41 = a2[6];
  v42 = v15;
  v16 = a2[9];
  v43 = a2[8];
  v44 = v16;
  v17 = a2[3];
  v37 = a2[2];
  v38 = v17;
  v18 = a2[5];
  v39 = a2[4];
  v40 = v18;
  v19 = a2[1];
  v35 = *a2;
  v36 = v19;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v20 = sub_1D9178E1C();
  v21 = swift_allocObject();
  v22 = v46;
  *(v21 + 200) = v45;
  *(v21 + 216) = v22;
  *(v21 + 232) = v47;
  v23 = v42;
  *(v21 + 136) = v41;
  *(v21 + 152) = v23;
  v24 = v44;
  *(v21 + 168) = v43;
  *(v21 + 184) = v24;
  v25 = v38;
  *(v21 + 72) = v37;
  *(v21 + 88) = v25;
  v26 = v40;
  *(v21 + 104) = v39;
  *(v21 + 120) = v26;
  v27 = v36;
  *(v21 + 40) = v35;
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  *(v21 + 32) = a1;
  *(v21 + 248) = v48;
  *(v21 + 56) = v27;
  v34[4] = sub_1D90DD894;
  v34[5] = v21;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 1107296256;
  v34[2] = sub_1D8CF5F60;
  v34[3] = &block_descriptor_26_3;
  v28 = _Block_copy(v34);

  sub_1D8D088B4(&v35, v33, &qword_1ECABA5B0, &qword_1D91B5758);

  sub_1D9177E4C();
  v33[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFBE80(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v10, v28);
  _Block_release(v28);

  (*(v32 + 8))(v10, v8);
  return (*(v30 + 8))(v13, v31);
}

uint64_t sub_1D90DD564(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9177E0C();
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D9177E9C();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v13 = sub_1D9178E1C();
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = a2;
  v14[4] = a3;
  aBlock[4] = sub_1D90DD874;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_20_2;
  v15 = _Block_copy(aBlock);
  sub_1D90BC378(v12);

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFBE80(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v11, v8, v15);
  _Block_release(v15);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

uint64_t objectdestroy_10Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1D90DD930(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D90DD9D8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9177E0C();
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9177E9C();
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[11];
  v44 = a1[10];
  v45 = v12;
  v46[0] = a1[12];
  *(v46 + 10) = *(a1 + 202);
  v13 = a1[7];
  v40 = a1[6];
  v41 = v13;
  v14 = a1[9];
  v42 = a1[8];
  v43 = v14;
  v15 = a1[3];
  v36 = a1[2];
  v37 = v15;
  v16 = a1[5];
  v38 = a1[4];
  v39 = v16;
  v17 = a1[1];
  v34 = *a1;
  v35 = v17;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v18 = sub_1D9178E1C();
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = v45;
  *(v19 + 192) = v44;
  *(v19 + 208) = v20;
  *(v19 + 224) = v46[0];
  *(v19 + 234) = *(v46 + 10);
  v21 = v41;
  *(v19 + 128) = v40;
  *(v19 + 144) = v21;
  v22 = v43;
  *(v19 + 160) = v42;
  *(v19 + 176) = v22;
  v23 = v37;
  *(v19 + 64) = v36;
  *(v19 + 80) = v23;
  v24 = v39;
  *(v19 + 96) = v38;
  *(v19 + 112) = v24;
  v25 = v35;
  *(v19 + 32) = v34;
  *(v19 + 48) = v25;
  v33[4] = sub_1D90DDE7C;
  v33[5] = v19;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 1107296256;
  v33[2] = sub_1D8CF5F60;
  v33[3] = &block_descriptor_62_0;
  v26 = _Block_copy(v33);

  sub_1D90DDE88(&v34, v32);

  sub_1D9177E4C();
  v32[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFBE80(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v11, v8, v26);
  _Block_release(v26);

  (*(v31 + 8))(v8, v6);
  return (*(v29 + 8))(v11, v30);
}

uint64_t objectdestroy_22Tm(uint64_t a1)
{

  if (*(v1 + 80) != 1)
  {
    sub_1D8CFEACC(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72));

    if (*(v1 + 184) != 2)
    {
      sub_1D90AB0F8(*(v1 + 104), *(v1 + 112), *(v1 + 120), *(v1 + 128), *(v1 + 136), *(v1 + 144), *(v1 + 152), *(v1 + 160), *(v1 + 168));
    }

    v2 = *(v1 + 248);
    if (v2 != 255)
    {
      sub_1D8CFEACC(*(v1 + 216), *(v1 + 224), *(v1 + 232), *(v1 + 240), v2);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D90DDFAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D90DE05C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = type metadata accessor for MediaRequest.Params(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 176);
  v18 = *(a1 + 144);
  v96 = *(a1 + 160);
  v97 = v17;
  v19 = *(a1 + 176);
  v98 = *(a1 + 192);
  v20 = *(a1 + 112);
  v21 = *(a1 + 80);
  v92 = *(a1 + 96);
  v93 = v20;
  v22 = *(a1 + 112);
  v23 = *(a1 + 144);
  v94 = *(a1 + 128);
  v95 = v23;
  v24 = *(a1 + 48);
  v25 = *(a1 + 16);
  v88 = *(a1 + 32);
  v89 = v24;
  v26 = *(a1 + 48);
  v27 = *(a1 + 80);
  v90 = *(a1 + 64);
  v91 = v27;
  v28 = *(a1 + 16);
  v86 = *a1;
  v87 = v28;
  v67 = v96;
  v68 = v19;
  v69[0] = *(a1 + 192);
  v63 = v92;
  v64 = v22;
  v65 = v94;
  v66 = v18;
  v59 = v88;
  v60 = v26;
  v61 = v90;
  v62 = v21;
  v99 = *(a1 + 208);
  LOBYTE(v69[1]) = *(a1 + 208);
  v57 = v86;
  v58 = v25;
  sub_1D90D09E0(&v86, v56);
  v29 = sub_1D90D12F4(&v57);
  if (!v29)
  {
    goto LABEL_12;
  }

  v30 = v29;
  if (!v29[2])
  {

LABEL_12:
    [a4 setURLProtocolDelegate_];
    v67 = v96;
    v68 = v97;
    v69[0] = v98;
    LOBYTE(v69[1]) = v99;
    v63 = v92;
    v64 = v93;
    v65 = v94;
    v66 = v95;
    v59 = v88;
    v60 = v89;
    v61 = v90;
    v62 = v91;
    v57 = v86;
    v58 = v87;
    sub_1D90CFD54(v12);
    v40 = *(&v88 + 1);
    v41 = swift_allocObject();
    v41[2] = a2;
    v41[3] = a3;

    sub_1D904AD58(v12, v40, sub_1D90E01B0, v41);

    return sub_1D90E01B8(v12, type metadata accessor for MediaRequest.Params);
  }

  v42[0] = a2;
  v42[1] = a3;
  if (qword_1ECAB0D48 != -1)
  {
LABEL_14:
    swift_once();
  }

  v31 = sub_1D917744C();
  __swift_project_value_buffer(v31, qword_1ECAB0D50);
  v32 = sub_1D917741C();
  v33 = sub_1D9178D1C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1D8CEC000, v32, v33, "Using content from Siri sidepack", v34, 2u);
    MEMORY[0x1DA72CB90](v34, -1, -1);
  }

  sub_1D90DCCC4(v84);
  v80 = v84[10];
  v81 = v84[11];
  v82 = v84[12];
  v83 = v85;
  v76 = v84[6];
  v77 = v84[7];
  v78 = v84[8];
  v79 = v84[9];
  v72 = v84[2];
  v73 = v84[3];
  v74 = v84[4];
  v75 = v84[5];
  v70 = v84[0];
  v71 = v84[1];
  v35 = v30[2];

  v36 = 0;
  do
  {
    v37 = v36;
    if (v35 == v36)
    {
      break;
    }

    if (v36 >= v30[2])
    {
      __break(1u);
      goto LABEL_14;
    }

    sub_1D90D11F4(v30 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v36++, v16);
    v38 = v16[*(v13 + 108)];
    sub_1D90E01B8(v16, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  }

  while ((v38 & 1) == 0);

  *&v56[168] = v80;
  *&v56[184] = v81;
  *&v56[200] = v82;
  *&v56[104] = v76;
  *&v56[120] = v77;
  *&v56[136] = v78;
  *&v56[152] = v79;
  *&v56[40] = v72;
  *&v56[56] = v73;
  *&v56[72] = v74;
  *&v56[88] = v75;
  *&v56[8] = v70;
  v56[216] = v83;
  *&v56[24] = v71;
  *v56 = v30;
  v56[217] = v35 != v37;
  sub_1D90DD88C(v56);
  v53 = *&v56[160];
  v54 = *&v56[176];
  v55[0] = *&v56[192];
  *(v55 + 11) = *&v56[203];
  v49 = *&v56[96];
  v50 = *&v56[112];
  v51 = *&v56[128];
  v52 = *&v56[144];
  v45 = *&v56[32];
  v46 = *&v56[48];
  v47 = *&v56[64];
  v48 = *&v56[80];
  v43 = *v56;
  v44 = *&v56[16];
  (v42[0])(&v43);
  v67 = v53;
  v68 = v54;
  v69[0] = v55[0];
  *(v69 + 11) = *(v55 + 11);
  v63 = v49;
  v64 = v50;
  v65 = v51;
  v66 = v52;
  v59 = v45;
  v60 = v46;
  v61 = v47;
  v62 = v48;
  v57 = v43;
  v58 = v44;
  return sub_1D8D08A50(&v57, &qword_1ECABA698, &unk_1D91B62E0);
}