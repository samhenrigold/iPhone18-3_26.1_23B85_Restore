double StaticEndpoint.tileIcon.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StaticEndpoint(0);
  v4 = v1 + *(v3 + 52);
  v5 = *(v4 + 24);
  if (v5)
  {
    v6 = *(v4 + 16);

    v7._countAndFlagsBits = v6;
    v7._object = v5;
    Icon.init(customIconName:)(&v15, v7);
  }

  else
  {
    static MatterDeviceType.primaryDeviceType(for:)(*(v1 + *(v3 + 32)), &v14);
    if (v14 == 28)
    {
      if (qword_1EC642238 != -1)
      {
        swift_once();
      }

      v12[2] = *&qword_1EC646788;
      v12[3] = xmmword_1EC646798;
      *v13 = xmmword_1EC6467A8;
      *&v13[9] = *(&xmmword_1EC6467A8 + 9);
      v12[0] = xmmword_1EC646768;
      v12[1] = xmmword_1EC646778;
      v15.accessoryControlOnStateIconInfo.name = xmmword_1EC646798;
      *&v15.accessoryControlOnStateIconInfo.renderingMode = xmmword_1EC6467A8;
      *&v15.tileOnStateIconInfo.renderingMode = xmmword_1EC646778;
      *&v15.tileOffStateIconInfo.name._object = *&qword_1EC646788;
      *(&v15.accessoryControlOffStateIconInfo.name + 1) = *(&xmmword_1EC6467A8 + 9);
      v15.tileOnStateIconInfo.name = xmmword_1EC646768;
      sub_1D18A9844(v12, &v11);
    }

    else
    {
      LOBYTE(v12[0]) = v14;
      Icon.init(deviceType:)(&v15, v12);
    }
  }

  name = v15.accessoryControlOnStateIconInfo.name;
  *(a1 + 32) = *&v15.tileOffStateIconInfo.name._object;
  *(a1 + 48) = name;
  *(a1 + 64) = *&v15.accessoryControlOnStateIconInfo.renderingMode;
  *(a1 + 73) = *(&v15.accessoryControlOffStateIconInfo.name + 1);
  result = *&v15.tileOnStateIconInfo.name._countAndFlagsBits;
  v10 = *&v15.tileOnStateIconInfo.renderingMode;
  *a1 = v15.tileOnStateIconInfo.name;
  *(a1 + 16) = v10;
  return result;
}

uint64_t StaticEndpoint.customIconSymbol.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticEndpoint(0) + 52) + 16);

  return v1;
}

uint64_t StaticEndpoint.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D1E669FC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t StaticEndpoint.foregroundColor.getter()
{
  v1 = type metadata accessor for StaticEndpoint(0);
  static MatterDeviceType.primaryDeviceType(for:)(*(v0 + *(v1 + 32)), v3);
  if (v3[0] != 28)
  {
    return MatterDeviceType.foregroundColor.getter();
  }

  if (qword_1EC642158 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t StaticEndpoint.isDoubleHigh.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticEndpoint(0) + 52) + 48);
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    v3 = "40-A849-215882E2F008";
    if (v1)
    {
      v3 = "HFTileResizableSizeSmall";
    }

    if (v3 | 0x8000000000000000) == 0x80000001D1EB3840 && (v1)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_1D1E6904C();
    }
  }

  return v2 & 1;
}

uint64_t StaticEndpoint.tileSize.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticEndpoint(0);
  *a1 = *(v1 + *(result + 52) + 48);
  return result;
}

uint64_t StaticEndpoint.set(showInDashboard:)(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D1A08578;

  return StaticEndpoint.set(shouldShowInDashboard:)(a1);
}

uint64_t sub_1D1A41D34(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D1A44134;

  return StaticEndpoint.set(shouldShowInDashboard:)(a1);
}

uint64_t sub_1D1A41DC8(uint64_t a1)
{
  v2 = a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D1A44134;

  return StaticEndpoint.set(includeInStatus:)(v2);
}

uint64_t StaticEndpoint.set(includeInStatus:)(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 140) = a1;
  *(v2 + 72) = type metadata accessor for EndpointPath(0);
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = sub_1D1E67E1C();
  *(v2 + 96) = sub_1D1E67E0C();
  *(v2 + 104) = sub_1D1E67E0C();
  v3 = swift_task_alloc();
  *(v2 + 112) = v3;
  *v3 = v2;
  v3[1] = sub_1D1A41F54;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A41F54(uint64_t a1)
{
  *(*v1 + 120) = a1;

  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A42098, v3, v2);
}

uint64_t sub_1D1A42098()
{
  v1 = *(v0 + 120);

  if (v1)
  {
    v2 = *(v0 + 120);
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v5 = *(v0 + 64);
    v6 = *(type metadata accessor for StaticEndpoint(0) + 20);
    *(v0 + 136) = v6;
    v7 = *(v5 + v6 + *(v4 + 20));
    sub_1D1A43740(v5 + v6, v3, type metadata accessor for EndpointPath);
    v8 = HMHomeManager.matterDevice(with:inHomeWithID:)(v7, v3);
    *(v0 + 48) = v8;
    *(v0 + 56) = v9;

    *(v0 + 128) = v8;
    v10 = sub_1D1E66A7C();
    (*(*(v10 - 8) + 8))(v3, v10);
    v11 = sub_1D1E67D4C();
    v13 = v12;
    v14 = sub_1D1A421F8;
  }

  else
  {
    v11 = sub_1D1E67D4C();
    v13 = v15;
    v14 = sub_1D1A42300;
  }

  return MEMORY[0x1EEE6DFA0](v14, v11, v13);
}

uint64_t sub_1D1A421F8()
{
  v12 = v0;
  v1 = *(v0 + 128);

  if (v1)
  {
    v2 = *(v0 + 72);
    v3 = *(v0 + 56);
    v4 = *(v0 + 140);
    v5 = *(v0 + 64) + *(v0 + 136);
    ObjectType = swift_getObjectType();
    v11[0] = 8;
    v7 = *(v5 + *(v2 + 24));
    v8 = MEMORY[0x1E69E6370];
    *(v0 + 16) = v4;
    *(v0 + 40) = v8;
    (*(v3 + 72))(v11, v7, v0 + 16, ObjectType, v3);
    swift_unknownObjectRelease();
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1D1A42300()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t StaticEndpoint.device.getter()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for EndpointPath(0);
  v1[4] = swift_task_alloc();
  v1[5] = sub_1D1E67E1C();
  v1[6] = sub_1D1E67E0C();
  v2 = swift_task_alloc();
  v1[7] = v2;
  *v2 = v1;
  v2[1] = sub_1D1A424B4;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A424B4(uint64_t a1)
{
  *(*v1 + 64) = a1;

  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A425F8, v3, v2);
}

uint64_t sub_1D1A425F8()
{
  v1 = v0[8];

  if (v1)
  {
    v2 = v0[8];
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[2];
    v6 = v5 + *(type metadata accessor for StaticEndpoint(0) + 20);
    v7 = *(v6 + *(v3 + 20));
    sub_1D1A43740(v6, v4, type metadata accessor for EndpointPath);
    v8 = HMHomeManager.matterDevice(with:inHomeWithID:)(v7, v4);
    v10 = v9;

    v11 = sub_1D1E66A7C();
    (*(*(v11 - 8) + 8))(v4, v11);
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v12 = v0[1];

  return v12(v8, v10);
}

uint64_t StaticEndpoint.toggleKnownState()()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v1[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649570, &qword_1D1E94080);
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for StaticOnOffCluster(0);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  sub_1D1E67E1C();
  v1[8] = sub_1D1E67E0C();
  v4 = sub_1D1E67D4C();
  v1[9] = v4;
  v1[10] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D1A42878, v4, v3);
}

uint64_t sub_1D1A42878()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_1D1A45C7C(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[3];
    v5 = v0[2];
    sub_1D1741A30(v0[4], &qword_1EC649570, &qword_1D1E94080);
    v6 = type metadata accessor for StaticEndpoint(0);
    sub_1D18FB784(v5 + *(v6 + 40), v4);
    v7 = type metadata accessor for StaticRVCClusterGroup(0);
    v8 = (*(*(v7 - 8) + 48))(v4, 1, v7);
    v9 = v0[3];
    if (v8 == 1)
    {

      sub_1D1741A30(v9, &qword_1EC644778, &unk_1D1E75B10);
    }

    else
    {
      sub_1D1741A30(v0[3], &qword_1EC644778, &unk_1D1E75B10);
    }

    v12 = v0[1];

    return v12();
  }

  else
  {
    sub_1D1A437A8(v0[4], v0[7], type metadata accessor for StaticOnOffCluster);
    v10 = swift_task_alloc();
    v0[11] = v10;
    *v10 = v0;
    v10[1] = sub_1D1A42A84;

    return StaticOnOffCluster.toggleKnownState()();
  }
}

uint64_t sub_1D1A42A84()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_1D1A42C5C;
  }

  else
  {
    v5 = sub_1D1A42BC0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D1A42BC0()
{
  v1 = *(v0 + 56);

  sub_1D1A43810(v1, type metadata accessor for StaticOnOffCluster);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1A42C5C()
{
  v1 = *(v0 + 56);

  sub_1D1A43810(v1, type metadata accessor for StaticOnOffCluster);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1A42D00()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for EndpointPath(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A42D94, 0, 0);
}

uint64_t sub_1D1A42D94(uint64_t a1)
{
  v2 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v1[5] = v2;
  if (v2)
  {
    v3 = v1[3];
    v4 = v1[4];
    v5 = v1[2];
    v6 = v5 + *(type metadata accessor for StaticEndpoint(0) + 20);
    v1[6] = *(v6 + *(v3 + 20));
    sub_1D1A43740(v6, v4, type metadata accessor for EndpointPath);
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v7 = qword_1EC64ABE8;
    v8 = sub_1D1A42ECC;
    v9 = 0;
  }

  else
  {
    v1[8] = sub_1D1E67E1C();
    v1[9] = sub_1D1E67E0C();
    v10 = sub_1D1E67D4C();
    v12 = v11;
    v8 = sub_1D1A42FE8;
    v7 = v10;
    v9 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v9);
}

uint64_t sub_1D1A42ECC()
{
  v1 = v0[4];
  v0[7] = HomeState.Stream.accessory(with:inHomeWithID:)(v0[6], v1);
  v2 = sub_1D1E66A7C();
  (*(*(v2 - 8) + 8))(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_1D1A42F78, 0, 0);
}

uint64_t sub_1D1A42F78()
{

  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D1A42FE8()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1A43080, 0, 0);
}

uint64_t sub_1D1A43080(uint64_t a1)
{
  *(v1 + 80) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A4310C, v3, v2);
}

uint64_t sub_1D1A4310C()
{

  *(v0 + 88) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1A43180, 0, 0);
}

uint64_t sub_1D1A43180()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = v3 + *(type metadata accessor for StaticEndpoint(0) + 20);
  v0[12] = *(v4 + *(v2 + 20));
  sub_1D1A43740(v4, v1, type metadata accessor for EndpointPath);
  v0[13] = sub_1D1E67E0C();
  v6 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A43254, v6, v5);
}

uint64_t sub_1D1A43254()
{
  v1 = v0[12];
  v2 = v0[4];

  v3 = DataModel.accessory(with:inHomeWithID:)(v1);
  v4 = sub_1D1E66A7C();
  (*(*(v4 - 8) + 8))(v2, v4);

  v5 = v0[1];

  return v5(v3);
}

uint64_t _s13HomeDataModel14StaticEndpointV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StaticEndpoint(0);
  v5 = v4[5];
  v6 = a1 + v5;
  v7 = a2 + v5;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for EndpointPath(0);
  if (*(v6 + *(v8 + 20)) != *(v7 + *(v8 + 20)) || *(v6 + *(v8 + 24)) != *(v7 + *(v8 + 24)))
  {
    return 0;
  }

  v9 = v4[6];
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  v13 = v10 == *v12 && v11 == v12[1];
  if (!v13 && (sub_1D1E6904C() & 1) == 0 || *(a1 + v4[7]) != *(a2 + v4[7]) || (sub_1D17A7F14(*(a1 + v4[8]), *(a2 + v4[8])) & 1) == 0 || (sub_1D184C184(*(a1 + v4[9]), *(a2 + v4[9])) & 1) == 0 || !_s13HomeDataModel19StaticClusterGroupsV2eeoiySbAC_ACtFZ_0(a1 + v4[10], a2 + v4[10]) || (sub_1D17A8098(*(a1 + v4[11]), *(a2 + v4[11])) & 1) == 0 || (sub_1D17A6E98(*(a1 + v4[12]), *(a2 + v4[12])) & 1) == 0 || (static MatterTileMetadata.== infix(_:_:)(a1 + v4[13], a2 + v4[13]) & 1) == 0)
  {
    return 0;
  }

  v14 = v4[14];
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 2);
  v17 = (a2 + v14);
  v18 = *(a2 + v14 + 2);
  if (v16)
  {
    if (!v18)
    {
      return 0;
    }
  }

  else
  {
    if (*v15 != *v17)
    {
      LOBYTE(v18) = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  v19 = v4[15];
  v20 = *(a1 + v19);
  v21 = *(a2 + v19);
  if (v20 == 6)
  {
    if (v21 == 6)
    {
      return 1;
    }
  }

  else if (v20 == v21)
  {
    return 1;
  }

  return 0;
}

uint64_t type metadata accessor for StaticEndpoint(uint64_t a1)
{
  result = qword_1EE07CBC8;
  if (!qword_1EE07CBC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D1A43544()
{
  result = qword_1EC649600;
  if (!qword_1EC649600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649600);
  }

  return result;
}

uint64_t sub_1D1A43598(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1A43A24(a2, MEMORY[0x1E69695A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1A43634()
{
  result = qword_1EC649608;
  if (!qword_1EC649608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649608);
  }

  return result;
}

unint64_t sub_1D1A43688()
{
  result = qword_1EC649618;
  if (!qword_1EC649618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649618);
  }

  return result;
}

uint64_t sub_1D1A436DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCluster(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1A43740(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A437A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A43810(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1A43900(void *a1)
{
  a1[1] = sub_1D1A43A24(&qword_1EC649628, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
  a1[2] = sub_1D1A43A24(&qword_1EC649630, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
  a1[3] = sub_1D1A43A24(&qword_1EC644740, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
  a1[4] = sub_1D1A43A24(&qword_1EC6446D8, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
  a1[5] = sub_1D1A43A24(&qword_1EC649638, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
  result = sub_1D1A43A24(&qword_1EC649640, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
  a1[6] = result;
  return result;
}

uint64_t sub_1D1A43A24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D1A43ABC(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for EndpointPath(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MTRDeviceState(319);
      if (v3 <= 0x3F)
      {
        sub_1D1900840(319);
        if (v4 <= 0x3F)
        {
          sub_1D190089C(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for StaticClusterGroups(319);
            if (v6 <= 0x3F)
            {
              sub_1D1900908();
              if (v7 <= 0x3F)
              {
                sub_1D1791340(319);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for MatterTileMetadata(319);
                  if (v9 <= 0x3F)
                  {
                    sub_1D17BDF80(319, &qword_1EE07D1D0, MEMORY[0x1E69E75F8]);
                    if (v10 <= 0x3F)
                    {
                      sub_1D17BDF80(319, qword_1EE07CBD8, &type metadata for StaticEndpoint.IdentifyType);
                      if (v11 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1D1A43C54()
{
  result = qword_1EC649648;
  if (!qword_1EC649648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649648);
  }

  return result;
}

unint64_t sub_1D1A43CAC()
{
  result = qword_1EC649650;
  if (!qword_1EC649650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649650);
  }

  return result;
}

unint64_t sub_1D1A43D04()
{
  result = qword_1EC649658;
  if (!qword_1EC649658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649658);
  }

  return result;
}

uint64_t sub_1D1A43D58(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xEC00000068746150 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7453656369766564 && a2 == 0xEB00000000657461 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEB00000000736570 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7372657473756C63 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4772657473756C63 && a2 == 0xED00007370756F72 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EBE040 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7364496D6F6F72 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x796669746E656469 && a2 == 0xEC000000656D6954 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x796669746E656469 && a2 == 0xEC00000065707954)
  {

    return 11;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t MatterEndpoint.doorLockCluster.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticCluster(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(a2 + 8))(a1, a2);
  if (!*(v10 + 16) || (v11 = sub_1D171D278(22), (v12 & 1) == 0))
  {

LABEL_6:
    v13 = 1;
    goto LABEL_7;
  }

  sub_1D19D0574(*(v10 + 56) + *(v7 + 72) * v11, v9);

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1D1A45594(v9, type metadata accessor for StaticCluster);
    goto LABEL_6;
  }

  sub_1D1A455F4(v9, a3, type metadata accessor for StaticDoorLockCluster);
  v13 = 0;
LABEL_7:
  v14 = type metadata accessor for StaticDoorLockCluster(0);
  return (*(*(v14 - 8) + 56))(a3, v13, 1, v14);
}

uint64_t MatterEndpoint.rvcClusterGroup.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticClusterGroups(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  sub_1D1741C08(v8, a3, &qword_1EC644778, &unk_1D1E75B10);
  return sub_1D1A45594(v8, type metadata accessor for StaticClusterGroups);
}

uint64_t MatterEndpoint.thermostatCluster.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticClusterGroups(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[3] = &type metadata for HomeKitFeatures;
  v13[4] = sub_1D18076E8();
  LOBYTE(v13[0]) = 3;
  v9 = sub_1D1E66D5C();
  __swift_destroy_boxed_opaque_existential_1(v13);
  if (v9)
  {
    (*(a2 + 16))(a1, a2);
    sub_1D1741C08(&v8[*(v6 + 20)], a3, &qword_1EC644790, &unk_1D1E75B48);
    return sub_1D1A45594(v8, type metadata accessor for StaticClusterGroups);
  }

  else
  {
    v11 = type metadata accessor for StaticThermostatClusterGroup(0);
    return (*(*(v11 - 8) + 56))(a3, 1, 1, v11);
  }
}

uint64_t MatterEndpoint.powerSourceCluster.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticCluster(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(a2 + 8))(a1, a2);
  if (!*(v10 + 16) || (v11 = sub_1D171D278(2), (v12 & 1) == 0))
  {

LABEL_6:
    v13 = 1;
    goto LABEL_7;
  }

  sub_1D19D0574(*(v10 + 56) + *(v7 + 72) * v11, v9);

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1D1A45594(v9, type metadata accessor for StaticCluster);
    goto LABEL_6;
  }

  sub_1D1A455F4(v9, a3, type metadata accessor for StaticClusterPowerSource);
  v13 = 0;
LABEL_7:
  v14 = type metadata accessor for StaticClusterPowerSource(0);
  return (*(*(v14 - 8) + 56))(a3, v13, 1, v14);
}

uint64_t MatterEndpoint.colorControlCluster.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticCluster(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(a2 + 8))(a1, a2);
  if (!*(v10 + 16) || (v11 = sub_1D171D278(17), (v12 & 1) == 0))
  {

LABEL_6:
    v13 = 1;
    goto LABEL_7;
  }

  sub_1D19D0574(*(v10 + 56) + *(v7 + 72) * v11, v9);

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1D1A45594(v9, type metadata accessor for StaticCluster);
    goto LABEL_6;
  }

  sub_1D1A455F4(v9, a3, type metadata accessor for StaticColorControlCluster);
  v13 = 0;
LABEL_7:
  v14 = type metadata accessor for StaticColorControlCluster(0);
  return (*(*(v14 - 8) + 56))(a3, v13, 1, v14);
}

uint64_t MatterEndpoint.onOffCluster.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticCluster(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(a2 + 8))(a1, a2);
  if (!*(v10 + 16) || (v11 = sub_1D171D278(11), (v12 & 1) == 0))
  {

LABEL_6:
    v13 = 1;
    goto LABEL_7;
  }

  sub_1D19D0574(*(v10 + 56) + *(v7 + 72) * v11, v9);

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D1A45594(v9, type metadata accessor for StaticCluster);
    goto LABEL_6;
  }

  sub_1D1A455F4(v9, a3, type metadata accessor for StaticOnOffCluster);
  v13 = 0;
LABEL_7:
  v14 = type metadata accessor for StaticOnOffCluster(0);
  return (*(*(v14 - 8) + 56))(a3, v13, 1, v14);
}

uint64_t StaticEndpoint.primaryCluster.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649568, &qword_1D1E94078);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649570, &qword_1D1E94080);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23[-v10];
  v12 = type metadata accessor for StaticEndpoint(0);
  result = static MatterDeviceType.primaryDeviceType(for:)(*(v1 + *(v12 + 32)), &v24);
  if (v24 - 5 >= 3)
  {
    if (v24 == 23)
    {
      sub_1D1741C08(v1 + *(v12 + 40), v5, &qword_1EC644778, &unk_1D1E75B10);
      v22 = type metadata accessor for StaticRVCClusterGroup(0);
      if ((*(*(v22 - 8) + 48))(v5, 1, v22) == 1)
      {
        v15 = &qword_1EC644778;
        v16 = &unk_1D1E75B10;
        v17 = v5;
        goto LABEL_11;
      }

      *(a1 + 24) = v22;
      *(a1 + 32) = &protocol witness table for StaticRVCClusterGroup;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v20 = type metadata accessor for StaticRVCClusterGroup;
      v21 = v5;
    }

    else
    {
      if (v24 != 4)
      {
        *(a1 + 32) = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        return result;
      }

      sub_1D1A45C7C(v11);
      v18 = type metadata accessor for StaticOnOffCluster(0);
      if ((*(*(v18 - 8) + 48))(v11, 1, v18) == 1)
      {
        v15 = &qword_1EC649570;
        v16 = &qword_1D1E94080;
        v17 = v11;
        goto LABEL_11;
      }

      *(a1 + 24) = v18;
      *(a1 + 32) = &protocol witness table for StaticOnOffCluster;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v20 = type metadata accessor for StaticOnOffCluster;
      v21 = v11;
    }
  }

  else
  {
    sub_1D1A44DD4(v8);
    v14 = type metadata accessor for StaticLevelControlCluster(0);
    if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
    {
      v15 = &qword_1EC649568;
      v16 = &qword_1D1E94078;
      v17 = v8;
LABEL_11:
      result = sub_1D1741A30(v17, v15, v16);
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      return result;
    }

    *(a1 + 24) = v14;
    *(a1 + 32) = &protocol witness table for StaticLevelControlCluster;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    v20 = type metadata accessor for StaticLevelControlCluster;
    v21 = v8;
  }

  return sub_1D1A455F4(v21, boxed_opaque_existential_1, v20);
}

uint64_t sub_1D1A44DD4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StaticCluster(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + *(type metadata accessor for StaticEndpoint(0) + 36));
  if (!*(v7 + 16))
  {
    goto LABEL_6;
  }

  v8 = sub_1D171D278(12);
  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1D19D0574(*(v7 + 56) + *(v4 + 72) * v8, v6);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1D1A45594(v6, type metadata accessor for StaticCluster);
LABEL_6:
    v10 = 1;
    goto LABEL_7;
  }

  sub_1D1A455F4(v6, a1, type metadata accessor for StaticLevelControlCluster);
  v10 = 0;
LABEL_7:
  v11 = type metadata accessor for StaticLevelControlCluster(0);
  return (*(*(v11 - 8) + 56))(a1, v10, 1, v11);
}

uint64_t MatterEndpoint.levelCluster.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticCluster(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(a2 + 8))(a1, a2);
  if (!*(v10 + 16) || (v11 = sub_1D171D278(12), (v12 & 1) == 0))
  {

LABEL_6:
    v13 = 1;
    goto LABEL_7;
  }

  sub_1D19D0574(*(v10 + 56) + *(v7 + 72) * v11, v9);

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1D1A45594(v9, type metadata accessor for StaticCluster);
    goto LABEL_6;
  }

  sub_1D1A455F4(v9, a3, type metadata accessor for StaticLevelControlCluster);
  v13 = 0;
LABEL_7:
  v14 = type metadata accessor for StaticLevelControlCluster(0);
  return (*(*(v14 - 8) + 56))(a3, v13, 1, v14);
}

uint64_t MatterEndpoint.onOff.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649570, &qword_1D1E94080);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  MatterEndpoint.onOffCluster.getter(a1, a2, &v10 - v5);
  v7 = type metadata accessor for StaticOnOffCluster(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1D1741A30(v6, &qword_1EC649570, &qword_1D1E94080);
    return 2;
  }

  else
  {
    v8 = v6[*(v7 + 20)];
    sub_1D1A45594(v6, type metadata accessor for StaticOnOffCluster);
  }

  return v8;
}

uint64_t MatterEndpoint.basicInfoCluster.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticCluster(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(a2 + 8))(a1, a2);
  if (*(v10 + 16) && (v11 = sub_1D171D278(1), (v12 & 1) != 0))
  {
    sub_1D19D0574(*(v10 + 56) + *(v7 + 72) * v11, v9);

    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1D1A455F4(v9, a3, type metadata accessor for StaticBasicInfoCluster);
      v13 = 0;
      goto LABEL_7;
    }

    sub_1D1A45594(v9, type metadata accessor for StaticCluster);
  }

  else
  {
  }

  v13 = 1;
LABEL_7:
  v14 = type metadata accessor for StaticBasicInfoCluster(0);
  return (*(*(v14 - 8) + 56))(a3, v13, 1, v14);
}

uint64_t StaticEndpoint.tileStatusAttributePaths.getter()
{
  v1 = v0;
  StaticEndpoint.primaryCluster.getter(v9);
  v2 = v10;
  if (v10)
  {
    v3 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v4 = (*(v3 + 32))(v2, v3);
    v5 = __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    v5 = sub_1D1741A30(v9, &qword_1EC646BC8, &qword_1D1E82230);
    v4 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v5);
  v8[2] = v1;
  v6 = sub_1D1892D24(sub_1D1A4565C, v8, v4);

  return v6;
}

void sub_1D1A454C8(void *a3@<X8>)
{
  type metadata accessor for StaticEndpoint(0);
  type metadata accessor for EndpointPath(0);
  v4 = sub_1D1E692AC();
  v5 = sub_1D1E692CC();
  v6 = sub_1D1E692CC();
  v7 = [objc_opt_self() attributePathWithEndpointID:v4 clusterID:v5 attributeID:v6];

  *a3 = v7;
}

uint64_t sub_1D1A45594(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1A455F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t StaticEndpoint.isActivated.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v22 - v2;
  v4 = type metadata accessor for StaticCluster(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticOnOffCluster(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StaticEndpoint(0);
  if (*(v0 + *(v11 + 28)) != 2)
  {
    v12 = v11;
    v13 = *(v0 + *(v11 + 36));
    if (*(v13 + 16))
    {
      v14 = sub_1D171D278(11);
      if (v15)
      {
        sub_1D19D0574(*(v13 + 56) + *(v5 + 72) * v14, v7);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D1A465E4(v7, v10, type metadata accessor for StaticOnOffCluster);
          LOBYTE(v16) = v10[*(v8 + 20)];
          v17 = type metadata accessor for StaticOnOffCluster;
          v18 = v10;
LABEL_11:
          sub_1D1A4664C(v18, v17);
          return v16 & 1;
        }

        sub_1D1A4664C(v7, type metadata accessor for StaticCluster);
      }
    }

    sub_1D18FB784(v0 + *(v12 + 40), v3);
    v19 = type metadata accessor for StaticRVCClusterGroup(0);
    if ((*(*(v19 - 8) + 48))(v3, 1, v19) != 1)
    {
      v20 = v3[*(v19 + 20)];
      v16 = (v20 > 0xB) | (0x15u >> v20);
      v17 = type metadata accessor for StaticRVCClusterGroup;
      v18 = v3;
      goto LABEL_11;
    }

    sub_1D1741A30(v3, &qword_1EC644778, &unk_1D1E75B10);
  }

  LOBYTE(v16) = 0;
  return v16 & 1;
}

uint64_t StaticEndpoint.canBeToggled.getter()
{
  result = type metadata accessor for StaticEndpoint(0);
  if (*(v0 + *(result + 28)) == 2)
  {
    return 0;
  }

  if (*(*(v0 + *(result + 36)) + 16))
  {
    v2 = result;
    sub_1D171D278(11);
    result = v2;
    if (v3)
    {
      return 1;
    }
  }

  v4 = 0;
  v5 = *(v0 + *(result + 32));
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_14:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(v5 + 48) + (v11 | (v4 << 6))) - 4;
    if (v12 <= 0x11 && ((0x203ADu >> v12) & 1) != 0)
    {
      return 1;
    }
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      return 0;
    }

    v8 = *(v5 + 56 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

id StaticEndpoint.statusString(with:associatedMatterDevice:)(_BYTE *a1)
{
  v3 = sub_1D1A4625C(a1);
  v5 = v4;
  v6 = *(v1 + *(type metadata accessor for StaticEndpoint(0) + 28));
  StaticEndpoint.primaryCluster.getter(v17);
  v7 = v18;
  if (v18)
  {
    v8 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v9 = (*(v8 + 24))(v7, v8);
    v7 = v10;
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_1D1741A30(v17, &qword_1EC646BC8, &qword_1D1E82230);
    v9 = 0;
  }

  LOBYTE(v13) = v6 == 1;
  *(&v13 + 1) = 512;
  BYTE3(v13) = 2;
  BYTE4(v13) = v6 == 0;
  *(&v13 + 1) = v3;
  *&v14 = v5;
  *(&v14 + 1) = v9;
  v11 = StatusStrings.string(for:)(a1);
  v15[0] = v13;
  v15[1] = v14;
  v16 = v7;
  sub_1D1A46590(v15);
  return v11;
}

uint64_t sub_1D1A45C7C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StaticCluster(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + *(type metadata accessor for StaticEndpoint(0) + 36));
  if (!*(v7 + 16))
  {
    goto LABEL_6;
  }

  v8 = sub_1D171D278(11);
  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1D19D0574(*(v7 + 56) + *(v4 + 72) * v8, v6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D1A4664C(v6, type metadata accessor for StaticCluster);
LABEL_6:
    v10 = 1;
    goto LABEL_7;
  }

  sub_1D1A465E4(v6, a1, type metadata accessor for StaticOnOffCluster);
  v10 = 0;
LABEL_7:
  v11 = type metadata accessor for StaticOnOffCluster(0);
  return (*(*(v11 - 8) + 56))(a1, v10, 1, v11);
}

uint64_t sub_1D1A45DFC()
{
  v1 = type metadata accessor for StaticCluster(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StaticOnOffCluster(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + *(type metadata accessor for StaticEndpoint(0) + 36));
  if (*(v8 + 16))
  {
    v9 = sub_1D171D278(11);
    if (v10)
    {
      sub_1D19D0574(*(v8 + 56) + *(v2 + 72) * v9, v4);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D1A465E4(v4, v7, type metadata accessor for StaticOnOffCluster);
        v11 = v7[*(v5 + 20)];
        sub_1D1A4664C(v7, type metadata accessor for StaticOnOffCluster);
        return v11;
      }

      sub_1D1A4664C(v4, type metadata accessor for StaticCluster);
    }
  }

  return 2;
}

uint64_t StaticEndpoint.roomId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for StaticEndpoint(0);
  sub_1D17721A0(*(v1 + *(v6 + 48)), v5);
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v5, 1, v7);
  if (result != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1A460B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  sub_1D17721A0(*(v2 + *(a1 + 48)), &v11 - v6);
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v7, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  __break(1u);
  return result;
}

char StaticEndpoint.statusIcon.getter@<W0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StaticEndpoint(0);
  result = static MatterDeviceType.primaryDeviceType(for:)(*(v1 + *(v3 + 32)), &v12);
  v5 = v12;
  v6 = v1 + *(v3 + 52);
  v7 = *(v6 + 24);
  if (v7)
  {
    v8 = *(v6 + 16);

    v9._countAndFlagsBits = v8;
    v9._object = v7;
    result = IconSymbol.init(rawValue:)(v9).value;
    v10 = v11;
  }

  else
  {
    v10 = 92;
  }

  *a1 = v5;
  *(a1 + 8) = 32;
  *(a1 + 9) = v10;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_1D1A4625C(uint64_t a1)
{
  v3 = *(a1 + 4);
  if (v3 > 2 || v3 == 0)
  {
    return 0;
  }

  v15 = v1;
  v16 = v2;
  if (v3 == 1)
  {
    StaticEndpoint.primaryCluster.getter(v12);
    v6 = v13;
    if (v13)
    {
      v7 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v8 = (*(v7 + 16))(v6, v7);
LABEL_12:
      v11 = v8;
      __swift_destroy_boxed_opaque_existential_1(v12);
      return v11;
    }
  }

  else
  {
    StaticEndpoint.primaryCluster.getter(v12);
    v9 = v13;
    if (v13)
    {
      v10 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v8 = (*(v10 + 8))(v9, v10);
      goto LABEL_12;
    }
  }

  sub_1D1741A30(v12, &qword_1EC646BC8, &qword_1D1E82230);
  return 0;
}

uint64_t StaticEndpoint.tileStatusStringIconSymbolSuffix.getter()
{
  v1 = type metadata accessor for StaticCluster(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StaticClusterPowerSource(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + *(type metadata accessor for StaticEndpoint(0) + 36));
  if (!*(v8 + 16))
  {
    return 0;
  }

  v9 = sub_1D171D278(2);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  sub_1D19D0574(*(v8 + 56) + *(v2 + 72) * v9, v4);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    v12 = type metadata accessor for StaticCluster;
    v13 = v4;
    goto LABEL_7;
  }

  sub_1D1A465E4(v4, v7, type metadata accessor for StaticClusterPowerSource);
  v11 = &v7[*(v5 + 36)];
  if (v11[1])
  {
    v12 = type metadata accessor for StaticClusterPowerSource;
    v13 = v7;
LABEL_7:
    sub_1D1A4664C(v13, v12);
    return 0;
  }

  v15 = *v11;
  sub_1D1A4664C(v7, type metadata accessor for StaticClusterPowerSource);
  if (v15 >= 0xA)
  {
    return 0;
  }

  else
  {
    return 0x2E79726574746162;
  }
}

uint64_t sub_1D1A465E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A4664C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1A466AC(void *a1)
{
  a1[1] = sub_1D1A4675C(&qword_1EC644740, &protocol conformance descriptor for StaticEndpoint);
  a1[2] = sub_1D1A4675C(&qword_1EC6446D8, &protocol conformance descriptor for StaticEndpoint);
  a1[3] = sub_1D1A4675C(&qword_1EC649638, &protocol conformance descriptor for StaticEndpoint);
  result = sub_1D1A4675C(&qword_1EC649640, &protocol conformance descriptor for StaticEndpoint);
  a1[4] = result;
  return result;
}

uint64_t sub_1D1A4675C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StaticEndpoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t StaticMatterDevice.foregroundColor.getter()
{
  v1 = type metadata accessor for StaticMatterDevice(0);
  static MatterDeviceType.primaryDeviceType(for:)(*(v0 + *(v1 + 32)), v3);
  if (v3[0] != 28)
  {
    return MatterDeviceType.foregroundColor.getter();
  }

  if (qword_1EC642158 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

void sub_1D1A46850(char a1)
{
  if (a1 != 2)
  {
    v2 = [v1 applicationData];
    v3 = sub_1D1E677EC();

    v4 = sub_1D1E677EC();
    [v2 setObject:v3 forKeyedSubscript:v4];

    v5 = [v1 applicationData];
    v7[4] = sub_1D18AA2EC;
    v7[5] = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1D1C40BA8;
    v7[3] = &block_descriptor_32_1;
    v6 = _Block_copy(v7);
    [v1 updateApplicationData:v5 completionHandler:v6];
    _Block_release(v6);
  }
}

uint64_t StaticMatterDevice.init(device:accessory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  ObjectType = swift_getObjectType();
  MatterDevice.readAllSupportedAttributes()(ObjectType, a2);
  StaticMatterDevice.init(device:valueSource:accessory:)(a1, a2, &v16, a3, v10);
  v12 = type metadata accessor for StaticMatterDevice(0);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12))
  {
    sub_1D1741A30(v10, &qword_1EC643650, &qword_1D1E71D40);
    v14 = 1;
  }

  else
  {
    sub_1D1A4FBE0(v10, a4, type metadata accessor for StaticMatterDevice);
    v14 = 0;
  }

  return (*(v13 + 56))(a4, v14, 1, v12);
}

uint64_t StaticMatterDevice.primaryDeviceType.getter@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for StaticMatterDevice(0) + 32));

  return static MatterDeviceType.primaryDeviceType(for:)(v3, a1);
}

uint64_t type metadata accessor for StaticMatterDevice(uint64_t a1)
{
  result = qword_1EE07D5E0;
  if (!qword_1EE07D5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1A46BE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (v2 >= v3)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  v6 = 1 << *(v4 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v4 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = v5 + 56;

  v12 = 0;
  while (1)
  {
LABEL_13:
    if (v8)
    {
      v13 = v8;
    }

    else
    {
      do
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          return result;
        }

        if (v14 >= v9)
        {

          v21 = 1;
          goto LABEL_36;
        }

        v13 = *(v4 + 56 + 8 * v14);
        ++v12;
      }

      while (!v13);
      v12 = v14;
    }

    v8 = (v13 - 1) & v13;
    if (*(v5 + 16))
    {
      v15 = *(*(v4 + 48) + (__clz(__rbit64(v13)) | (v12 << 6)));
      sub_1D1E6920C();
      v16 = v15 >> 6;
      sub_1D1E6923C();
      sub_1D1E678EC();
      result = sub_1D1E6926C();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      if ((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        break;
      }
    }
  }

  v19 = ~v17;
  while (1)
  {
    v20 = *(*(v5 + 48) + v18);
    if (!(v20 >> 6))
    {
      break;
    }

    if (v20 >> 6 == 1)
    {
      if (v16 != 1)
      {
        goto LABEL_23;
      }
    }

    else if (v16 != 2)
    {
      goto LABEL_23;
    }

    if (((v20 ^ v15) & 0x3F) == 0)
    {
      goto LABEL_35;
    }

LABEL_23:
    v18 = (v18 + 1) & v19;
    if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (v15 > 0x3F || v20 != v15)
  {
    goto LABEL_23;
  }

LABEL_35:

  v21 = 0;
LABEL_36:

  return v21;
}

uint64_t sub_1D1A46E30(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + (__clz(__rbit64(v12)) | (v4 << 6)));
      sub_1D1E6920C();
      v15 = dword_1D1E94BB4[v14];
      sub_1D1E6924C();
      result = sub_1D1E6926C();
      v16 = -1 << *(v6 + 32);
      v17 = result & ~v16;
      if ((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        while (dword_1D1E94BB4[*(*(v6 + 48) + v17)] != v15)
        {
          v17 = (v17 + 1) & v18;
          if (((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1A46FB0(void *a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v45 = &v34 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v34 - v11;
  v12 = a2[2];
  if (!v12)
  {
    return 1;
  }

  v13 = a1[2];
  if (!v13)
  {
    return 1;
  }

  if (v12 >= v13)
  {
    v14 = a1;
  }

  else
  {
    v14 = a2;
  }

  if (v12 < v13)
  {
    a2 = a1;
  }

  v15 = v14 + 7;
  v16 = 1 << *(v14 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v14[7];
  v19 = (v16 + 63) >> 6;
  v43 = v5 + 16;
  v38 = v5 + 32;
  v39 = v14;
  v41 = a2 + 7;
  v20 = (v5 + 8);

  v44 = a2;

  v22 = 0;
  v35 = v19;
  v36 = v15;
  v37 = v5;
  while (v18)
  {
LABEL_18:
    v24 = v40;
    v25 = v39[6];
    v42 = *(v5 + 72);
    v26 = *(v5 + 16);
    v26(v40, v25 + v42 * (__clz(__rbit64(v18)) | (v22 << 6)), v4);
    (*(v5 + 32))(v45, v24, v4);
    if (v44[2])
    {
      v27 = v44;
      sub_1D1A4FCC0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v28 = sub_1D1E676DC();
      v29 = -1 << *(v27 + 32);
      v30 = v28 & ~v29;
      if ((*(v41 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
      {
        v31 = ~v29;
        while (1)
        {
          v26(v8, v44[6] + v30 * v42, v4);
          sub_1D1A4FCC0(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v32 = sub_1D1E6775C();
          v33 = *v20;
          (*v20)(v8, v4);
          if (v32)
          {
            break;
          }

          v30 = (v30 + 1) & v31;
          if (((*(v41 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v33(v45, v4);
        return 0;
      }
    }

LABEL_12:
    v18 &= v18 - 1;
    result = (*v20)(v45, v4);
    v15 = v36;
    v5 = v37;
    v19 = v35;
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v19)
    {

      return 1;
    }

    v18 = v15[v23];
    ++v22;
    if (v18)
    {
      v22 = v23;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1A47370(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticService(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v31 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v36 = &v31 - v12;
  v13 = *(a2 + 16);
  if (!v13)
  {
    return 1;
  }

  v14 = *(a1 + 16);
  if (!v14)
  {
    return 1;
  }

  if (v13 >= v14)
  {
    v15 = a1;
  }

  else
  {
    v15 = a2;
  }

  v16 = v15 + 56;
  if (v13 >= v14)
  {
    a1 = a2;
  }

  v17 = 1 << *(v15 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v15 + 56);
  v20 = (v17 + 63) >> 6;
  v37 = a1 + 56;
  v35 = v15;

  v22 = 0;
  v32 = v20;
  v33 = v16;
  v34 = v5;
  while (v19)
  {
LABEL_18:
    v24 = v36;
    v25 = *(v5 + 72);
    sub_1D1A4FB78(*(v35 + 48) + v25 * (__clz(__rbit64(v19)) | (v22 << 6)), v36, type metadata accessor for StaticService);
    sub_1D1A4FBE0(v24, v11, type metadata accessor for StaticService);
    if (*(a1 + 16))
    {
      sub_1D1E6920C();
      StaticService.hash(into:)(v38);
      v26 = sub_1D1E6926C();
      v27 = -1 << *(a1 + 32);
      v28 = v26 & ~v27;
      if ((*(v37 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          sub_1D1A4FB78(*(a1 + 48) + v28 * v25, v8, type metadata accessor for StaticService);
          v30 = _s13HomeDataModel13StaticServiceV2eeoiySbAC_ACtFZ_0(v8, v11);
          sub_1D1A4FC48(v8, type metadata accessor for StaticService);
          if (v30)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v37 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        sub_1D1A4FC48(v11, type metadata accessor for StaticService);
        return 0;
      }
    }

LABEL_12:
    v19 &= v19 - 1;
    result = sub_1D1A4FC48(v11, type metadata accessor for StaticService);
    v16 = v33;
    v5 = v34;
    v20 = v32;
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v20)
    {

      return 1;
    }

    v19 = *(v16 + 8 * v23);
    ++v22;
    if (v19)
    {
      v22 = v23;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t StaticMatterDevice.init(device:valueSource:accessory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v160 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v130 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v136 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v147 = &v130 - v15;
  v146 = type metadata accessor for EndpointPath(0);
  v16 = MEMORY[0x1EEE9AC00](v146);
  v145 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v152 = &v130 - v18;
  v162 = type metadata accessor for StaticEndpoint(0);
  v158 = *(v162 - 8);
  v19 = MEMORY[0x1EEE9AC00](v162);
  v135 = &v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v153 = &v130 - v21;
  v22 = type metadata accessor for MatterTileMetadata(0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v141 = &v130 - v26;
  v150 = sub_1D1E66A7C();
  v142 = *(v150 - 8);
  v27 = MEMORY[0x1EEE9AC00](v150);
  v29 = &v130 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v140 = &v130 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v154 = &v130 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v159 = &v130 - v34;
  v35 = a3[1];
  v157 = *a3;
  v155 = [a4 home];
  if (v155)
  {
    v137 = v29;
    v138 = v25;
    v139 = v11;
    v132 = a5;
    v36 = [a4 room];
    if (!v36)
    {
      v36 = [v155 roomForEntireHome];
    }

    v131 = v36;
    v37 = [v36 uniqueIdentifier];
    sub_1D1E66A5C();

    v38 = a4;
    v39 = sub_1D1A11844();
    if (v39 == 2)
    {
      v40 = 2;
    }

    else
    {
      v40 = v39 & 1;
    }

    v41 = HMAccessory.isFavorite.getter() & 1;
    v42 = HMAccessory.shouldShowInDashboard.getter() & 1;
    v43 = HMAccessory.contributesToHomeStatus.getter() & 1;
    v44 = *(v22 + 44);
    v45 = v141;
    HMAccessory.dateAdded.getter((v141 + v44));

    *(v45 + 16) = 0u;
    *(v45 + 32) = 0u;
    *v45 = 0u;
    *(v45 + 48) = v40;
    *(v45 + 49) = v41;
    *(v45 + 50) = v42;
    *(v45 + 51) = v43;
    v133 = v38;
    v46 = [v38 configuredName];
    if (v46)
    {
      v47 = v46;
      countAndFlagsBits = sub_1D1E6781C();
      object = v48;

      v50 = v152;
    }

    else
    {
      v166 = v157;
      v167 = v35;
      v54 = AttributeValueSet.defaultName(in:)(0);
      countAndFlagsBits = v54.value._countAndFlagsBits;
      v50 = v152;
      if (v54.value._object)
      {
        object = v54.value._object;
      }

      else
      {
        v55 = [v133 name];
        countAndFlagsBits = sub_1D1E6781C();
        object = v56;
      }
    }

    v171 = 0;
    v172 = MEMORY[0x1E69E7CC8];
    v166 = v157;
    v167 = v35;
    v168 = 0;
    v169 = 0;
    v170 = 0;
    v156 = v35;

    v57 = DescriptorClusterDecoder.endpointIDs.getter();
    v58 = 0;
    v59 = v57 + 56;
    v60 = 1 << v57[32];
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v62 = v61 & *(v57 + 7);
    v63 = (v60 + 63) >> 6;
    v148 = (v160 + 8);
    v149 = (v142 + 16);
    v143 = (v158 + 48);
    v134 = (v158 + 56);
    v163 = a1;
    v144 = v57;
    while (v62)
    {
LABEL_25:
      v65 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
      LODWORD(v161) = *(*(v57 + 6) + ((v58 << 7) | (2 * v65)));
      if (v161)
      {
        swift_unknownObjectRetain();
        v66 = v155;
        v67 = [v66 uniqueIdentifier];
        sub_1D1E66A5C();

        ObjectType = swift_getObjectType();
        v42 = v160;
        v69 = (*(v160 + 8))(ObjectType, v160);
        swift_unknownObjectRelease();

        v70 = object;
        v71 = v163;
        v72 = v146;
        *(v50 + *(v146 + 20)) = v69;
        *(v50 + *(v72 + 24)) = v161;
        v166 = v157;
        v167 = v156;
        v73 = v50;
        v74 = v145;
        sub_1D1A4FB78(v73, v145, type metadata accessor for EndpointPath);
        v75 = v154;
        (*v149)(v154, v159, v150);
        v76 = v71;
        object = v70;

        swift_unknownObjectRetain();

        v41 = v147;
        StaticEndpoint.init(device:valueSource:path:roomId:accessoryName:)(v76, v42, &v166, v74, v75, countAndFlagsBits, object, v147);
        v77 = v162;
        if ((*v143)(v41, 1, v162) == 1)
        {
          v50 = v152;
          sub_1D1A4FC48(v152, type metadata accessor for EndpointPath);
          sub_1D1741A30(v41, &qword_1EC644780, &qword_1D1E91AA0);
        }

        else
        {
          v42 = v135;
          sub_1D1A4FBE0(v41, v135, type metadata accessor for StaticEndpoint);
          v41 = v136;
          sub_1D1A4FB78(v42, v136, type metadata accessor for StaticEndpoint);
          (*v134)(v41, 0, 1, v77);
          sub_1D1B0DF74(v41, v161);
          sub_1D1A4FC48(v42, type metadata accessor for StaticEndpoint);
          v50 = v152;
          sub_1D1A4FC48(v152, type metadata accessor for EndpointPath);
        }

        v57 = v144;
      }
    }

    while (1)
    {
      v64 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v64 >= v63)
      {
        break;
      }

      v62 = *&v59[8 * v64];
      ++v58;
      if (v62)
      {
        v58 = v64;
        goto LABEL_25;
      }
    }

    v78 = v172;
    v166 = MEMORY[0x1E69E7CD0];
    v41 = v172 + 64;
    v79 = 1 << *(v172 + 32);
    v80 = -1;
    if (v79 < 64)
    {
      v80 = ~(-1 << v79);
    }

    v81 = v80 & *(v172 + 64);
    v42 = (v79 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v82 = 0;
    v63 = v153;
    while (v81)
    {
      v83 = v82;
LABEL_36:
      v84 = __clz(__rbit64(v81));
      v81 &= v81 - 1;
      sub_1D1A4FB78(*(v78 + 56) + *(v158 + 72) * (v84 | (v83 << 6)), v63, type metadata accessor for StaticEndpoint);

      sub_1D19306C0(v85);
      sub_1D1A4FC48(v63, type metadata accessor for StaticEndpoint);
    }

    while (1)
    {
      v83 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        break;
      }

      if (v83 >= v42)
      {

        v41 = v166;
        v63 = swift_getObjectType();
        v42 = (*(v160 + 40))();
        v166 = v157;
        v167 = v156;
        v168 = 0;
        v169 = 0;
        v170 = 0;
        v171 = 0;
        v86 = DescriptorClusterDecoder.availableClusterKinds.getter();
        LODWORD(v158) = sub_1D17198DC(4, v86);

        if (qword_1EE07A0A8 != -1)
        {
          goto LABEL_48;
        }

        goto LABEL_39;
      }

      v81 = *(v41 + 8 * v83);
      ++v82;
      if (v81)
      {
        v82 = v83;
        goto LABEL_36;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
LABEL_39:
    v161 = v42;
    v87 = sub_1D1E6709C();
    __swift_project_value_buffer(v87, qword_1EE07A0B0);
    swift_unknownObjectRetain();

    v88 = sub_1D1E6707C();
    v89 = sub_1D1E6835C();

    v90 = os_log_type_enabled(v88, v89);
    v130 = object;
    v153 = v41;
    if (v90)
    {
      v91 = object;
      v92 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v166 = v152;
      *v92 = 136316418;
      *(v92 + 4) = sub_1D1B1312C(countAndFlagsBits, v91, &v166);
      *(v92 + 12) = 2050;
      v93 = *(v160 + 8);
      v157 = v63;
      *(v92 + 14) = v93(v63);
      swift_unknownObjectRelease();
      *(v92 + 22) = 2082;
      sub_1D1785A60();
      v94 = sub_1D1E6817C();
      v96 = sub_1D1B1312C(v94, v95, &v166);

      *(v92 + 24) = v96;
      *(v92 + 32) = 2082;
      static MatterDeviceType.primaryDeviceType(for:)(v41, &v165);
      if (v165 == 28)
      {
        v97 = 0xE600000000000000;
        v98 = 0x296C6C756E28;
      }

      else
      {
        v164 = v165;
        v98 = sub_1D1E6789C();
        v97 = v100;
      }

      v101 = sub_1D1B1312C(v98, v97, &v166);

      *(v92 + 34) = v101;
      *(v92 + 42) = 2082;
      v102 = MTRDeviceState.description.getter(v161);
      v104 = sub_1D1B1312C(v102, v103, &v166);

      *(v92 + 44) = v104;
      *(v92 + 52) = 2082;

      v105 = sub_1D1E6762C();
      v107 = v106;

      v108 = sub_1D1B1312C(v105, v107, &v166);

      *(v92 + 54) = v108;
      _os_log_impl(&dword_1D16EC000, v88, v89, "Creating StaticMatterDevice: (%s) nodeID: %{public}llu deviceTypes:%{public}s primaryDeviceType:(%{public}s) deviceState: (%{public}s) endpoints: %{public}s ", v92, 0x3Eu);
      v109 = v152;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v109, -1, -1);
      MEMORY[0x1D3893640](v92, -1, -1);

      v99 = (v93)(v157, v160);
    }

    else
    {

      swift_unknownObjectRelease();
      v99 = (*v148)(v63, v160);
    }

    v110 = v99;
    v111 = [v155 uniqueIdentifier];
    sub_1D1E66A5C();

    v112 = v142;
    v113 = v150;
    (*(v142 + 16))(v140, v159, v150);
    v114 = v131;
    v115 = [v131 name];
    v116 = sub_1D1E6781C();
    v162 = v117;
    v163 = v116;

    v118 = v133;
    v119 = [v133 uniqueIdentifier];
    sub_1D1E66A5C();

    HMAccessory.dateAdded.getter(v139);
    swift_beginAccess();
    v120 = v172;
    v121 = v141;
    sub_1D1A4FB78(v141, v138, type metadata accessor for MatterTileMetadata);

    v122 = v132;
    static UUID.matterObjectIdentifier(deviceID:endpointID:)(v110, 0, v132);

    swift_unknownObjectRelease();

    sub_1D1A4FC48(v121, type metadata accessor for MatterTileMetadata);
    (*(v112 + 8))(v159, v113);
    v123 = type metadata accessor for StaticMatterDevice(0);
    *(v122 + v123[5]) = v110;
    *(v122 + v123[7]) = v161;
    v124 = v154;
    *(v122 + v123[8]) = v153;
    v125 = *(v112 + 32);
    v125(v122 + v123[9], v124, v113);
    v125(v122 + v123[10], v140, v113);
    v125(v122 + v123[12], v137, v113);
    sub_1D19A376C(v139, v122 + v123[13]);
    v126 = (v122 + v123[11]);
    v127 = v162;
    *v126 = v163;
    v126[1] = v127;
    *(v122 + v123[14]) = v120;
    v128 = (v122 + v123[6]);
    v129 = v130;
    *v128 = countAndFlagsBits;
    v128[1] = v129;
    sub_1D1A4FBE0(v138, v122 + v123[15], type metadata accessor for MatterTileMetadata);

    *(v122 + v123[16]) = v158 & 1;
    return (*(*(v123 - 1) + 56))(v122, 0, 1, v123);
  }

  else
  {
    swift_unknownObjectRelease();

    v51 = type metadata accessor for StaticMatterDevice(0);
    v52 = *(*(v51 - 8) + 56);

    return v52(a5, 1, 1, v51);
  }
}

uint64_t StaticMatterDevice.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticMatterDevice.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMatterDevice(0) + 24));

  return v1;
}

uint64_t StaticMatterDevice.deviceTypes.getter()
{
  type metadata accessor for StaticMatterDevice(0);
}

uint64_t StaticMatterDevice.homeId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticMatterDevice(0) + 36);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StaticMatterDevice.roomId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticMatterDevice(0) + 40);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StaticMatterDevice.roomName.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMatterDevice(0) + 44));

  return v1;
}

uint64_t StaticMatterDevice.accessoryID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticMatterDevice(0) + 48);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StaticMatterDevice.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticMatterDevice(0) + 52);

  return sub_1D174A548(v3, a1);
}

uint64_t StaticMatterDevice.endpoints.getter()
{
  type metadata accessor for StaticMatterDevice(0);
}

unint64_t sub_1D1A48AE4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x644965646F6ELL;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x6574617473;
      break;
    case 4:
      result = 0x7954656369766564;
      break;
    case 5:
      result = 0x6449656D6F68;
      break;
    case 6:
      result = 0x64496D6F6F72;
      break;
    case 7:
      result = 0x656D614E6D6F6F72;
      break;
    case 8:
      result = 0x726F737365636361;
      break;
    case 9:
      result = 0x6564644165746164;
      break;
    case 10:
      result = 0x746E696F70646E65;
      break;
    case 11:
      result = 0x617461646174656DLL;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D1A48C44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1A4F764(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1A48C78(uint64_t a1)
{
  v2 = sub_1D1A4EF94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A48CB4(uint64_t a1)
{
  v2 = sub_1D1A4EF94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticMatterDevice.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649660, &unk_1D1E947D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A4EF94();
  sub_1D1E6930C();
  LOBYTE(v13) = 0;
  sub_1D1E66A7C();
  sub_1D1A4FCC0(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for StaticMatterDevice(0);
    LOBYTE(v13) = 1;
    sub_1D1E68F6C();
    LOBYTE(v13) = 2;
    sub_1D1E68ECC();
    v13 = *(v3 + v9[7]);
    v12 = 3;
    type metadata accessor for MTRDeviceState(0);
    sub_1D1A4FCC0(&qword_1EC646B28, type metadata accessor for MTRDeviceState, &protocol conformance descriptor for MTRDeviceState);
    sub_1D1E68F1C();
    v13 = *(v3 + v9[8]);
    v12 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643410, &qword_1D1E71890);
    sub_1D1904180(&qword_1EC646B30, sub_1D18F16D8, MEMORY[0x1E69E64F0]);
    sub_1D1E68F1C();
    LOBYTE(v13) = 5;
    sub_1D1E68F1C();
    LOBYTE(v13) = 6;
    sub_1D1E68F1C();
    LOBYTE(v13) = 7;
    sub_1D1E68E0C();
    LOBYTE(v13) = 8;
    sub_1D1E68F1C();
    LOBYTE(v13) = 9;
    sub_1D1E669FC();
    sub_1D1A4FCC0(&qword_1EC642EC8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1D1E68E5C();
    v13 = *(v3 + v9[14]);
    v12 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649670, &qword_1D1E947E8);
    sub_1D1A4EFE8();
    sub_1D1E68F1C();
    LOBYTE(v13) = 11;
    type metadata accessor for MatterTileMetadata(0);
    sub_1D1A4FCC0(&qword_1EC646B20, type metadata accessor for MatterTileMetadata, &protocol conformance descriptor for MatterTileMetadata);
    sub_1D1E68F1C();
    LOBYTE(v13) = 12;
    sub_1D1E68EDC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticMatterDevice.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v14 = &v13 - v9;
  sub_1D1E66A7C();
  sub_1D1A4FCC0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v10 = type metadata accessor for StaticMatterDevice(0);
  MEMORY[0x1D3892890](*(v1 + v10[5]));
  sub_1D1E678EC();
  MEMORY[0x1D3892850](*(v1 + v10[7]));
  sub_1D176DB8C(a1, *(v1 + v10[8]));
  sub_1D1E676EC();
  sub_1D1E676EC();
  if (*(v1 + v10[11] + 8))
  {
    v13 = v7;
    sub_1D1E6922C();
    v7 = v13;
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  sub_1D1E676EC();
  v11 = v14;
  sub_1D174A548(v2 + v10[13], v14);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v5 + 32))(v7, v11, v4);
    sub_1D1E6922C();
    sub_1D1A4FCC0(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    (*(v5 + 8))(v7, v4);
  }

  sub_1D185A8E4(a1, *(v2 + v10[14]));
  MatterTileMetadata.hash(into:)(a1);
  return sub_1D1E6922C();
}

uint64_t StaticMatterDevice.hashValue.getter()
{
  sub_1D1E6920C();
  StaticMatterDevice.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticMatterDevice.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v45 = type metadata accessor for MatterTileMetadata(0);
  MEMORY[0x1EEE9AC00](v45);
  v46 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = v40 - v5;
  v53 = sub_1D1E66A7C();
  v49 = *(v53 - 8);
  v6 = MEMORY[0x1EEE9AC00](v53);
  v48 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v40 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v40 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v51 = v40 - v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649680, &qword_1D1E947F0);
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v16 = v40 - v15;
  v17 = type metadata accessor for StaticMatterDevice(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A4EF94();
  v54 = v16;
  v20 = v55;
  sub_1D1E692FC();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v13;
  v41 = v10;
  v42 = v17;
  v22 = v50;
  v55 = v19;
  v43 = a1;
  LOBYTE(v57) = 0;
  v23 = sub_1D1A4FCC0(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v24 = v53;
  sub_1D1E68D7C();
  v40[1] = v23;
  v25 = *(v49 + 32);
  v26 = v55;
  v25(v55, v51, v24);
  LOBYTE(v57) = 1;
  v27 = sub_1D1E68DCC();
  v28 = v42;
  *&v26[v42[5]] = v27;
  LOBYTE(v57) = 2;
  v29 = sub_1D1E68D2C();
  v31 = &v26[v28[6]];
  *v31 = v29;
  v31[1] = v32;
  type metadata accessor for MTRDeviceState(0);
  v56 = 3;
  sub_1D1A4FCC0(&qword_1EC646B90, type metadata accessor for MTRDeviceState, &protocol conformance descriptor for MTRDeviceState);
  sub_1D1E68D7C();
  *&v26[v28[7]] = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643410, &qword_1D1E71890);
  v56 = 4;
  sub_1D1904180(&qword_1EC646B98, sub_1D18F1924, MEMORY[0x1E69E6510]);
  sub_1D1E68D7C();
  *&v26[v28[8]] = v57;
  LOBYTE(v57) = 5;
  v51 = v21;
  v33 = v53;
  sub_1D1E68D7C();
  v25(&v26[v28[9]], v51, v33);
  LOBYTE(v57) = 6;
  sub_1D1E68D7C();
  v25(&v26[v28[10]], v41, v33);
  LOBYTE(v57) = 7;
  v34 = sub_1D1E68C6C();
  v35 = &v26[v42[11]];
  *v35 = v34;
  v35[1] = v36;
  LOBYTE(v57) = 8;
  v37 = v48;
  sub_1D1E68D7C();
  v25(&v55[v42[12]], v37, v53);
  sub_1D1E669FC();
  LOBYTE(v57) = 9;
  sub_1D1A4FCC0(&qword_1EC642EB8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1D1E68CBC();
  sub_1D19A376C(v47, &v55[v42[13]]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649670, &qword_1D1E947E8);
  v56 = 10;
  sub_1D1A4F0A4();
  sub_1D1E68D7C();
  *&v55[v42[14]] = v57;
  LOBYTE(v57) = 11;
  sub_1D1A4FCC0(&qword_1EC646B88, type metadata accessor for MatterTileMetadata, &protocol conformance descriptor for MatterTileMetadata);
  sub_1D1E68D7C();
  sub_1D1A4FBE0(v46, &v55[v42[15]], type metadata accessor for MatterTileMetadata);
  LOBYTE(v57) = 12;
  v38 = sub_1D1E68D3C();
  (*(v22 + 8))(v54, v52);
  v39 = v55;
  v55[v42[16]] = v38 & 1;
  sub_1D1A4FB78(v39, v44, type metadata accessor for StaticMatterDevice);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return sub_1D1A4FC48(v39, type metadata accessor for StaticMatterDevice);
}

uint64_t sub_1D1A4A214()
{
  sub_1D1E6920C();
  StaticMatterDevice.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1A4A258(uint64_t a1)
{
  sub_1D1E6920C();
  StaticMatterDevice.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t static StaticMatterDevice.find(nodeId:)(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = type metadata accessor for MatterStateSnapshot(0);
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A4A3CC, 0, 0);
}

uint64_t sub_1D1A4A3CC(uint64_t a1)
{
  v22 = v1;
  v2 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v1[17] = v2;
  if (v2)
  {
    v1[18] = v2[3];
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v3 = qword_1EC64ABE8;
    v4 = sub_1D1A4A800;
    v5 = 0;
    goto LABEL_10;
  }

  if (qword_1EE07AE38 != -1)
  {
    swift_once();
  }

  if (qword_1EE07AE40 > 7)
  {
LABEL_16:
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v11 = sub_1D1E6709C();
    __swift_project_value_buffer(v11, qword_1EE07A0B0);
    v12 = sub_1D1E6707C();
    v13 = sub_1D1E6833C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1D1B1312C(0x646F6E28646E6966, 0xED0000293A644965, &v21);
      _os_log_impl(&dword_1D16EC000, v12, v13, "%s Unsupported context. Cannot find matter device.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1D3893640](v15, -1, -1);
      MEMORY[0x1D3893640](v14, -1, -1);
    }

    v16 = v1[10];
    v17 = type metadata accessor for StaticMatterDevice(0);
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);

    v18 = v1[1];

    return v18();
  }

  if (((1 << qword_1EE07AE40) & 0xC7) != 0)
  {
    v1[32] = sub_1D1E67E1C();
    v1[33] = sub_1D1E67E0C();
    v6 = sub_1D1E67D4C();
    v8 = v7;
    v4 = sub_1D1A4B23C;
    v3 = v6;
    v5 = v8;
LABEL_10:

    return MEMORY[0x1EEE6DFA0](v4, v3, v5);
  }

  if (qword_1EE07AE40 != 3)
  {
    if (qword_1EE07AE40 == 4)
    {
      v1[19] = type metadata accessor for DataModel(0);
      v1[20] = sub_1D1E67E1C();
      v1[21] = sub_1D1E67E0C();
      v9 = sub_1D1E67D4C();
      v5 = v10;
      v1[22] = v9;
      v1[23] = v10;
      v4 = sub_1D1A4AB04;
      v3 = v9;
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  if (qword_1EE07AC80 != -1)
  {
    swift_once();
  }

  type metadata accessor for WidgetDataModel();
  swift_initStaticObject();
  v19 = swift_task_alloc();
  v1[37] = v19;
  *v19 = v1;
  v19[1] = sub_1D1A4B748;

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D1A4A800()
{
  HomeState.AllHomesModel.currentMatterSnapshot.getter(*(v0 + 128));

  return MEMORY[0x1EEE6DFA0](sub_1D1A4A86C, 0, 0);
}

uint64_t sub_1D1A4A86C()
{
  v1 = v0[16];
  v2 = v0[12];
  if ((*(v0[13] + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[10];

    sub_1D1741A30(v1, &unk_1EC64F390, &qword_1D1E92B10);
    v4 = type metadata accessor for StaticMatterDevice(0);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  }

  else
  {
    v5 = *(v1 + *(v2 + 24));

    sub_1D1A4FC48(v1, type metadata accessor for MatterStateSnapshot);
    if (*(v5 + 16))
    {
      v6 = sub_1D17420B0(v0[11]);
      v7 = v0[10];
      if (v8)
      {
        v9 = v6;
        v10 = *(v5 + 56);
        v11 = type metadata accessor for StaticMatterDevice(0);
        v12 = *(v11 - 8);
        sub_1D1A4FB78(v10 + *(v12 + 72) * v9, v7, type metadata accessor for StaticMatterDevice);

        (*(v12 + 56))(v7, 0, 1, v11);
      }

      else
      {

        v15 = type metadata accessor for StaticMatterDevice(0);
        (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
      }
    }

    else
    {
      v13 = v0[10];

      v14 = type metadata accessor for StaticMatterDevice(0);
      (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    }
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D1A4AB04()
{
  v1 = swift_allocObject();
  v0[24] = v1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v0[25] = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();
  v0[26] = v3;
  v0[27] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4ABB0, v3, v2);
}

uint64_t sub_1D1A4ABB0()
{
  v1 = v0[24];
  v2 = swift_allocObject();
  v0[28] = v2;
  *(v2 + 16) = sub_1D1A4F160;
  *(v2 + 24) = v1;

  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = sub_1D1A4ACA4;

  return static DataModel.sharedAsync(coverageProvider:)(sub_1D1A4F16C, v2);
}

uint64_t sub_1D1A4ACA4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 240) = a1;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);

  return MEMORY[0x1EEE6DFA0](sub_1D1A4ADF0, v4, v3);
}

uint64_t sub_1D1A4ADF0()
{

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1D1A4AE5C, v1, v2);
}

uint64_t sub_1D1A4AE5C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1A4AEC4, 0, 0);
}

uint64_t sub_1D1A4AEC4(uint64_t a1)
{
  *(v1 + 248) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A4AF50, v3, v2);
}

uint64_t sub_1D1A4AF50()
{
  v1 = v0[30];
  v2 = v0[15];

  swift_getKeyPath();
  v0[9] = v1;
  sub_1D1A4FCC0(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentMatterSnapshot;
  swift_beginAccess();
  sub_1D1A4FB78(v1 + v3, v2, type metadata accessor for MatterStateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1A4B07C, 0, 0);
}

uint64_t sub_1D1A4B07C()
{
  v1 = v0[15];
  v2 = *(v1 + *(v0[12] + 24));

  sub_1D1A4FC48(v1, type metadata accessor for MatterStateSnapshot);
  if (*(v2 + 16))
  {
    v3 = sub_1D17420B0(v0[11]);
    v4 = v0[10];
    if (v5)
    {
      v6 = v3;
      v7 = *(v2 + 56);
      v8 = type metadata accessor for StaticMatterDevice(0);
      v9 = *(v8 - 8);
      sub_1D1A4FB78(v7 + *(v9 + 72) * v6, v4, type metadata accessor for StaticMatterDevice);

      (*(v9 + 56))(v4, 0, 1, v8);
      goto LABEL_6;
    }
  }

  else
  {
    v4 = v0[10];
  }

  v10 = type metadata accessor for StaticMatterDevice(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
LABEL_6:

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D1A4B23C()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1A4B2D4, 0, 0);
}

uint64_t sub_1D1A4B2D4(uint64_t a1)
{
  *(v1 + 272) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A4B360, v3, v2);
}

uint64_t sub_1D1A4B360()
{

  *(v0 + 280) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4B3D4, 0, 0);
}

uint64_t sub_1D1A4B3D4(uint64_t a1)
{
  *(v1 + 288) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A4B460, v3, v2);
}

uint64_t sub_1D1A4B460()
{
  v1 = v0[35];
  v2 = v0[14];

  swift_getKeyPath();
  v0[8] = v1;
  sub_1D1A4FCC0(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentMatterSnapshot;
  swift_beginAccess();
  sub_1D1A4FB78(v1 + v3, v2, type metadata accessor for MatterStateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1A4B588, 0, 0);
}

uint64_t sub_1D1A4B588()
{
  v1 = v0[14];
  v2 = *(v1 + *(v0[12] + 24));

  sub_1D1A4FC48(v1, type metadata accessor for MatterStateSnapshot);
  if (*(v2 + 16))
  {
    v3 = sub_1D17420B0(v0[11]);
    v4 = v0[10];
    if (v5)
    {
      v6 = v3;
      v7 = *(v2 + 56);
      v8 = type metadata accessor for StaticMatterDevice(0);
      v9 = *(v8 - 8);
      sub_1D1A4FB78(v7 + *(v9 + 72) * v6, v4, type metadata accessor for StaticMatterDevice);

      (*(v9 + 56))(v4, 0, 1, v8);
      goto LABEL_6;
    }
  }

  else
  {
    v4 = v0[10];
  }

  v10 = type metadata accessor for StaticMatterDevice(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
LABEL_6:

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D1A4B748(uint64_t a1)
{
  *(*v1 + 304) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4B84C, a1, 0);
}

uint64_t sub_1D1A4B84C()
{
  WidgetSnapshotModerator.staticMatterDevice(_:)(v0[11], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t StaticMatterDevice.init(nodeId:name:state:deviceTypes:homeId:roomId:roomName:accessoryID:dateAdded:endpoints:metadata:supportsDiagnosticsLogs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  static UUID.matterObjectIdentifier(deviceID:endpointID:)(a1, 0, a9);
  v21 = type metadata accessor for StaticMatterDevice(0);
  *(a9 + v21[5]) = a1;
  *(a9 + v21[7]) = a4;
  *(a9 + v21[8]) = a5;
  v22 = v21[9];
  v23 = sub_1D1E66A7C();
  v24 = *(*(v23 - 8) + 32);
  v24(a9 + v22, a6, v23);
  v24(a9 + v21[10], a7, v23);
  v24(a9 + v21[12], a11, v23);
  sub_1D19A376C(a12, a9 + v21[13]);
  v25 = (a9 + v21[11]);
  *v25 = a8;
  v25[1] = a10;
  *(a9 + v21[14]) = a13;
  v26 = (a9 + v21[6]);
  *v26 = a2;
  v26[1] = a3;
  result = sub_1D1A4FBE0(a14, a9 + v21[15], type metadata accessor for MatterTileMetadata);
  *(a9 + v21[16]) = a15;
  return result;
}

double StaticMatterDevice.tileIcon.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StaticMatterDevice(0);
  v4 = v1 + *(v3 + 60);
  v5 = *(v4 + 24);
  if (v5)
  {
    v6 = *(v4 + 16);

    v7._countAndFlagsBits = v6;
    v7._object = v5;
    Icon.init(customIconName:)(&v15, v7);
  }

  else
  {
    static MatterDeviceType.primaryDeviceType(for:)(*(v1 + *(v3 + 32)), &v14);
    if (v14 == 28)
    {
      if (qword_1EC642238 != -1)
      {
        swift_once();
      }

      v12[2] = *&qword_1EC646788;
      v12[3] = xmmword_1EC646798;
      *v13 = xmmword_1EC6467A8;
      *&v13[9] = *(&xmmword_1EC6467A8 + 9);
      v12[0] = xmmword_1EC646768;
      v12[1] = xmmword_1EC646778;
      v15.accessoryControlOnStateIconInfo.name = xmmword_1EC646798;
      *&v15.accessoryControlOnStateIconInfo.renderingMode = xmmword_1EC6467A8;
      *&v15.tileOnStateIconInfo.renderingMode = xmmword_1EC646778;
      *&v15.tileOffStateIconInfo.name._object = *&qword_1EC646788;
      *(&v15.accessoryControlOffStateIconInfo.name + 1) = *(&xmmword_1EC6467A8 + 9);
      v15.tileOnStateIconInfo.name = xmmword_1EC646768;
      sub_1D18A9844(v12, &v11);
    }

    else
    {
      LOBYTE(v12[0]) = v14;
      Icon.init(deviceType:)(&v15, v12);
    }
  }

  name = v15.accessoryControlOnStateIconInfo.name;
  *(a1 + 32) = *&v15.tileOffStateIconInfo.name._object;
  *(a1 + 48) = name;
  *(a1 + 64) = *&v15.accessoryControlOnStateIconInfo.renderingMode;
  *(a1 + 73) = *(&v15.accessoryControlOffStateIconInfo.name + 1);
  result = *&v15.tileOnStateIconInfo.name._countAndFlagsBits;
  v10 = *&v15.tileOnStateIconInfo.renderingMode;
  *a1 = v15.tileOnStateIconInfo.name;
  *(a1 + 16) = v10;
  return result;
}

uint64_t StaticMatterDevice.customIconSymbol.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMatterDevice(0) + 60) + 16);

  return v1;
}

uint64_t StaticMatterDevice.roomIds.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D1E739C0;
  v5 = type metadata accessor for StaticMatterDevice(0);
  (*(v2 + 16))(v4 + v3, v0 + *(v5 + 40), v1);
  v6 = sub_1D179BE14(v4);
  swift_setDeallocating();
  (*(v2 + 8))(v4 + v3, v1);
  swift_deallocClassInstance();
  return v6;
}

uint64_t StaticMatterDevice.isDoubleHigh.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticMatterDevice(0) + 60) + 48);
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    v3 = "40-A849-215882E2F008";
    if (v1)
    {
      v3 = "HFTileResizableSizeSmall";
    }

    if (v3 | 0x8000000000000000) == 0x80000001D1EB3840 && (v1)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_1D1E6904C();
    }
  }

  return v2 & 1;
}

uint64_t StaticMatterDevice.tileSize.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticMatterDevice(0);
  *a1 = *(v1 + *(result + 60) + 48);
  return result;
}

uint64_t sub_1D1A4BEC8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

uint64_t sub_1D1A4BF00(uint64_t a1)
{
  v2 = a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D1A44134;

  return StaticMatterDevice.set(showInDashboard:)(v2);
}

uint64_t StaticMatterDevice.set(showInDashboard:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 64) = a1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1D1A4C03C;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4C03C(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4C13C, 0, 0);
}

uint64_t sub_1D1A4C13C()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[2];
    v3 = type metadata accessor for StaticMatterDevice(0);
    v4 = HMHomeManager.accessory(with:inHomeWithID:)(*(v2 + *(v3 + 20)), v2 + *(v3 + 36));
  }

  else
  {
    v4 = 0;
  }

  v0[5] = v4;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1D1A4C220;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4C220(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4C320, 0, 0);
}

uint64_t sub_1D1A4C320()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = type metadata accessor for StaticMatterDevice(0);
    v4 = *(v2 + *(v3 + 20));
    v5 = *(v3 + 36);
    v6 = v1;
    HMHomeManager.matterDevice(with:inHomeWithID:)(v4, v2 + v5);

    swift_unknownObjectRelease();
  }

  v7 = *(v0 + 40);
  if (v7)
  {
    v8 = *(v0 + 64);
    v9 = v7;
    HMAccessory.shouldShowInDashboard.setter(v8);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D1A4C3F4(uint64_t a1)
{
  v2 = a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D1A08578;

  return StaticMatterDevice.set(includeInStatus:)(v2);
}

uint64_t StaticMatterDevice.set(includeInStatus:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 64) = a1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1D1A4C530;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4C530(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4C630, 0, 0);
}

uint64_t sub_1D1A4C630()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[2];
    v3 = type metadata accessor for StaticMatterDevice(0);
    v4 = HMHomeManager.accessory(with:inHomeWithID:)(*(v2 + *(v3 + 20)), v2 + *(v3 + 36));
  }

  else
  {
    v4 = 0;
  }

  v0[5] = v4;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1D1A4C714;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4C714(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4C814, 0, 0);
}

uint64_t sub_1D1A4C814()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = type metadata accessor for StaticMatterDevice(0);
    v4 = *(v2 + *(v3 + 20));
    v5 = *(v3 + 36);
    v6 = v1;
    HMHomeManager.matterDevice(with:inHomeWithID:)(v4, v2 + v5);

    swift_unknownObjectRelease();
  }

  v7 = *(v0 + 40);
  if (v7)
  {
    v8 = *(v0 + 64);
    v9 = v7;
    HMAccessory.contributesToHomeStatus.setter(v8);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t StaticMatterDevice.intersects(deviceTypes:)(uint64_t a1)
{
  v3 = *(v1 + *(type metadata accessor for StaticMatterDevice(0) + 32));
  if (*(v3 + 16))
  {
    v4 = sub_1D1A46E30(a1, v3) ^ 1;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t StaticMatterDevice.device(in:)(uint64_t result)
{
  if (result)
  {
    v2 = type metadata accessor for StaticMatterDevice(0);
    return HMHomeManager.matterDevice(with:inHomeWithID:)(*(v1 + *(v2 + 20)), v1 + *(v2 + 36));
  }

  return result;
}

uint64_t StaticMatterDevice.device.getter()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D1A4CA84;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4CA84(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4CB84, 0, 0);
}

uint64_t sub_1D1A4CB84()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[2];
    v3 = type metadata accessor for StaticMatterDevice(0);
    v4 = *(v2 + *(v3 + 20));
    v5 = *(v3 + 36);
    v6 = v1;
    v7 = HMHomeManager.matterDevice(with:inHomeWithID:)(v4, v2 + v5);
    v1 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = v0[1];

  return v9(v7, v1);
}

uint64_t StaticMatterDevice.accessory.getter()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D1A4CCE8;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4CCE8(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4CDE8, 0, 0);
}

uint64_t sub_1D1A4CDE8()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[2];
    v3 = type metadata accessor for StaticMatterDevice(0);
    v4 = HMHomeManager.accessory(with:inHomeWithID:)(*(v2 + *(v3 + 20)), v2 + *(v3 + 36));
  }

  else
  {
    v4 = 0;
  }

  v5 = v0[1];

  return v5(v4);
}

uint64_t StaticMatterDevice.toggleKnownState()()
{
  v1[2] = v0;
  v2 = type metadata accessor for StaticEndpoint(0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A4CF58, 0, 0);
}

uint64_t sub_1D1A4CF58()
{
  if (StaticMatterDevice.canBeToggled.getter())
  {
    v1 = v0[3];
    v2 = v0[4];
    v3 = v0[2];
    v4 = *(v3 + *(type metadata accessor for StaticMatterDevice(0) + 56));
    v5 = v4 + 64;
    v6 = -1 << *(v4 + 32);
    if (-v6 < 64)
    {
      v7 = ~(-1 << -v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v4 + 64);
    v9 = (63 - v6) >> 6;
    v37 = v4;

    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    if (!v8)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_12:
      while (1)
      {
        v14 = v0[7];
        v15 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v16 = *(v2 + 72);
        sub_1D1A4FB78(*(v37 + 56) + v16 * (v15 | (v11 << 6)), v14, type metadata accessor for StaticEndpoint);
        result = v0[7];
        if (*(v14 + v1[7]) != 2)
        {
          break;
        }

LABEL_7:
        result = sub_1D1A4FC48(result, type metadata accessor for StaticEndpoint);
        if (!v8)
        {
          goto LABEL_8;
        }
      }

      if (!*(*(result + v1[9]) + 16) || (sub_1D171D278(11), result = v0[7], (v17 & 1) == 0))
      {
        v18 = 0;
        v19 = *(result + v1[8]);
        v20 = -1 << *(v19 + 32);
        if (-v20 < 64)
        {
          v21 = ~(-1 << -v20);
        }

        else
        {
          v21 = -1;
        }

        v22 = v21 & *(v19 + 56);
        v23 = (63 - v20) >> 6;
        while (v22)
        {
          v24 = v18;
LABEL_25:
          v25 = __clz(__rbit64(v22));
          v22 &= v22 - 1;
          v26 = *(*(v19 + 48) + (v25 | (v24 << 6)));
          v27 = v26 > 0x15;
          v28 = (1 << v26) & 0x203AD0;
          if (!v27 && v28 != 0)
          {
            goto LABEL_29;
          }
        }

        while (1)
        {
          v24 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v24 >= v23)
          {
            goto LABEL_7;
          }

          v22 = *(v19 + 56 + 8 * v24);
          ++v18;
          if (v22)
          {
            v18 = v24;
            goto LABEL_25;
          }
        }

        __break(1u);
        goto LABEL_46;
      }

LABEL_29:
      sub_1D1A4FBE0(result, v0[5], type metadata accessor for StaticEndpoint);
      v36 = v1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D178DA14(0, *(v12 + 16) + 1, 1);
      }

      v31 = *(v12 + 16);
      v30 = *(v12 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1D178DA14((v30 > 1), v31 + 1, 1);
      }

      v32 = v0[5];
      *(v12 + 16) = v31 + 1;
      result = sub_1D1A4FBE0(v32, v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + v31 * v16, type metadata accessor for StaticEndpoint);
      v1 = v36;
    }

    while (v8);
LABEL_8:
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {

        v33 = *(v12 + 16);
        if (!v33)
        {

          goto LABEL_42;
        }

        sub_1D1A4FB78(v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v0[6], type metadata accessor for StaticEndpoint);

        if (v33 != 1)
        {
          sub_1D1A4FC48(v0[6], type metadata accessor for StaticEndpoint);
          goto LABEL_42;
        }

        v34 = swift_task_alloc();
        v0[8] = v34;
        *v34 = v0;
        v34[1] = sub_1D1A4D378;

        return StaticEndpoint.toggleKnownState()();
      }

      v8 = *(v5 + 8 * v13);
      ++v11;
      if (v8)
      {
        v11 = v13;
        goto LABEL_12;
      }
    }

LABEL_46:
    __break(1u);
  }

  else
  {
LABEL_42:

    v35 = v0[1];

    return v35();
  }

  return result;
}

uint64_t sub_1D1A4D378()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D1A4D520;
  }

  else
  {
    v2 = sub_1D1A4D48C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1A4D48C()
{
  sub_1D1A4FC48(*(v0 + 48), type metadata accessor for StaticEndpoint);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1A4D520()
{
  sub_1D1A4FC48(*(v0 + 48), type metadata accessor for StaticEndpoint);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t StaticMatterDevice.set(displayName:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = swift_task_alloc();
  v3[21] = v4;
  *v4 = v3;
  v4[1] = sub_1D1A4D668;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4D668(uint64_t a1)
{
  *(*v1 + 176) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4D768, 0, 0);
}

uint64_t sub_1D1A4D768()
{
  v1 = v0[22];
  if (v1)
  {
    v2 = v0[20];
    v3 = type metadata accessor for StaticMatterDevice(0);
    v4 = HMHomeManager.accessory(with:inHomeWithID:)(*(v2 + *(v3 + 20)), v2 + *(v3 + 36));
  }

  else
  {
    v4 = 0;
  }

  v0[23] = v4;
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_1D1A4D84C;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4D84C(uint64_t a1)
{
  *(*v1 + 200) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4D94C, 0, 0);
}

uint64_t sub_1D1A4D94C()
{
  v1 = v0[25];
  if (v1)
  {
    v2 = v0[20];
    v3 = type metadata accessor for StaticMatterDevice(0);
    v4 = *(v2 + *(v3 + 20));
    v5 = *(v3 + 36);
    v6 = v1;
    HMHomeManager.matterDevice(with:inHomeWithID:)(v4, v2 + v5);

    swift_unknownObjectRelease();
  }

  v7 = v0[23];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D1E677EC();
    v0[26] = v9;
    v0[2] = v0;
    v0[3] = sub_1D1A4DB14;
    v10 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D17B04C8;
    v0[13] = &block_descriptor_35;
    v0[14] = v10;
    [v8 updateName:v9 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1D1A4DB14()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_1D1A4DC94;
  }

  else
  {
    v2 = sub_1D1A4DC24;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1A4DC24()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1A4DC94(uint64_t a1)
{
  v2 = v1[26];
  v3 = v1[23];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t StaticMatterDevice.set(favorite:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 64) = a1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1D1A4DDB8;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4DDB8(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4DEB8, 0, 0);
}

uint64_t sub_1D1A4DEB8()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[2];
    v3 = type metadata accessor for StaticMatterDevice(0);
    v4 = HMHomeManager.accessory(with:inHomeWithID:)(*(v2 + *(v3 + 20)), v2 + *(v3 + 36));
  }

  else
  {
    v4 = 0;
  }

  v0[5] = v4;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1D1A4DF9C;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4DF9C(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4E09C, 0, 0);
}

uint64_t sub_1D1A4E09C()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = type metadata accessor for StaticMatterDevice(0);
    v4 = *(v2 + *(v3 + 20));
    v5 = *(v3 + 36);
    v6 = v1;
    HMHomeManager.matterDevice(with:inHomeWithID:)(v4, v2 + v5);

    swift_unknownObjectRelease();
  }

  v7 = *(v0 + 40);
  if (v7)
  {
    v8 = *(v0 + 64);
    v9 = v7;
    HMAccessory.isFavorite.setter(v8);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t StaticMatterDevice.set(customIconSymbol:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = swift_task_alloc();
  v3[9] = v4;
  *v4 = v3;
  v4[1] = sub_1D1A4E218;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4E218(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4E318, 0, 0);
}

uint64_t sub_1D1A4E318()
{
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[8];
    v3 = type metadata accessor for StaticMatterDevice(0);
    v4 = HMHomeManager.accessory(with:inHomeWithID:)(*(v2 + *(v3 + 20)), v2 + *(v3 + 36));
  }

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1D1A4E3F4;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4E3F4(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4E4F4, 0, 0);
}

uint64_t sub_1D1A4E4F4()
{
  v18 = v0;
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[8];
    v3 = type metadata accessor for StaticMatterDevice(0);
    v4 = *(v2 + *(v3 + 20));
    v5 = *(v3 + 36);
    v6 = v1;
    v7 = HMHomeManager.matterDevice(with:inHomeWithID:)(v4, v2 + v5);
    v9 = v8;

    if (v7)
    {
      v10 = v0[7];
      v17[0] = 2;
      if (v10)
      {
        v11 = v0[6];
        v12 = MEMORY[0x1E69E6158];
      }

      else
      {
        v11 = 0;
        v12 = 0;
        v0[4] = 0;
      }

      v0[2] = v11;
      v0[3] = v10;
      v0[5] = v12;
      ObjectType = swift_getObjectType();
      v14 = *(v9 + 72);
      swift_unknownObjectRetain();

      v14(v17, 0x10000, v0 + 2, ObjectType, v9);
      swift_unknownObjectRelease_n();
      sub_1D1741A30((v0 + 2), &qword_1EC649700, &qword_1D1E6E910);
    }
  }

  v15 = v0[1];

  return v15();
}

uint64_t StaticMatterDevice.set(tileSize:)(_BYTE *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 64) = *a1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1D1A4E6F8;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4E6F8(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4E7F8, 0, 0);
}

uint64_t sub_1D1A4E7F8()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[2];
    v3 = type metadata accessor for StaticMatterDevice(0);
    v4 = HMHomeManager.accessory(with:inHomeWithID:)(*(v2 + *(v3 + 20)), v2 + *(v3 + 36));
  }

  else
  {
    v4 = 0;
  }

  v0[5] = v4;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1D1A4E8DC;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A4E8DC(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A4E9DC, 0, 0);
}

uint64_t sub_1D1A4E9DC()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = type metadata accessor for StaticMatterDevice(0);
    v4 = *(v2 + *(v3 + 20));
    v5 = *(v3 + 36);
    v6 = v1;
    HMHomeManager.matterDevice(with:inHomeWithID:)(v4, v2 + v5);

    swift_unknownObjectRelease();
  }

  v7 = *(v0 + 40);
  if (v7)
  {
    v8 = *(v0 + 64);
    if (v8 == 2)
    {
      v9 = v7;
      v10 = 0;
    }

    else
    {
      v11 = "40-A849-215882E2F008";
      if (v8)
      {
        v11 = "HFTileResizableSizeSmall";
      }

      if (v11 | 0x8000000000000000) == 0x80000001D1EB3840 && (v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = sub_1D1E6904C();
      }

      v12 = v7;
    }

    sub_1D1A46850(v10 & 1);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t _s13HomeDataModel18StaticMatterDeviceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v14 = type metadata accessor for StaticMatterDevice(0);
  if (*(a1 + *(v14 + 20)) != *(a2 + *(v14 + 20)))
  {
    goto LABEL_30;
  }

  v15 = v14;
  v16 = *(v14 + 24);
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v17 == *v19 && v18 == v19[1];
  if (!v20 && (sub_1D1E6904C() & 1) == 0 || *(a1 + v15[7]) != *(a2 + v15[7]) || (sub_1D17A7F14(*(a1 + v15[8]), *(a2 + v15[8])) & 1) == 0 || (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v21 = v15[11];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25 || (*v22 != *v24 || v23 != v25) && (sub_1D1E6904C() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v25)
  {
    goto LABEL_30;
  }

  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_30;
  }

  v26 = v15[13];
  v27 = *(v11 + 48);
  sub_1D174A548(a1 + v26, v13);
  v34 = v27;
  sub_1D174A548(a2 + v26, &v13[v27]);
  v28 = *(v5 + 48);
  if (v28(v13, 1, v4) != 1)
  {
    sub_1D174A548(v13, v10);
    if (v28(&v13[v34], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
      goto LABEL_25;
    }

    (*(v5 + 32))(v7, &v13[v34], v4);
    sub_1D1A4FCC0(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    v29 = sub_1D1E6775C();
    v30 = *(v5 + 8);
    v30(v7, v4);
    v30(v10, v4);
    sub_1D1741A30(v13, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v29)
    {
      goto LABEL_27;
    }

LABEL_30:
    v31 = 0;
    return v31 & 1;
  }

  if (v28(&v13[v34], 1, v4) != 1)
  {
LABEL_25:
    sub_1D1741A30(v13, &qword_1EC642AC0, &qword_1D1E6E810);
    goto LABEL_30;
  }

  sub_1D1741A30(v13, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_27:
  if ((sub_1D184B120(*(a1 + v15[14]), *(a2 + v15[14])) & 1) == 0 || !_s13HomeDataModel18MatterTileMetadataV2eeoiySbAC_ACtFZ_0(a1 + v15[15], a2 + v15[15]))
  {
    goto LABEL_30;
  }

  v31 = *(a1 + v15[16]) ^ *(a2 + v15[16]) ^ 1;
  return v31 & 1;
}

unint64_t sub_1D1A4EF94()
{
  result = qword_1EC649668;
  if (!qword_1EC649668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649668);
  }

  return result;
}

unint64_t sub_1D1A4EFE8()
{
  result = qword_1EC649678;
  if (!qword_1EC649678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC649670, &qword_1D1E947E8);
    sub_1D1A4FCC0(&qword_1EC6446D8, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649678);
  }

  return result;
}

unint64_t sub_1D1A4F0A4()
{
  result = qword_1EC649688;
  if (!qword_1EC649688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC649670, &qword_1D1E947E8);
    sub_1D1A4FCC0(&qword_1EC644740, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649688);
  }

  return result;
}

uint64_t sub_1D1A4F230(void *a1)
{
  a1[1] = sub_1D1A4FCC0(&qword_1EC649698, type metadata accessor for StaticMatterDevice, &protocol conformance descriptor for StaticMatterDevice);
  a1[2] = sub_1D1A4FCC0(&qword_1EC6496A0, type metadata accessor for StaticMatterDevice, &protocol conformance descriptor for StaticMatterDevice);
  a1[3] = sub_1D1A4FCC0(&qword_1EC649240, type metadata accessor for StaticMatterDevice, &protocol conformance descriptor for StaticMatterDevice);
  a1[4] = sub_1D1A4FCC0(&qword_1EC649210, type metadata accessor for StaticMatterDevice, &protocol conformance descriptor for StaticMatterDevice);
  a1[5] = sub_1D1A4FCC0(&qword_1EC6496A8, type metadata accessor for StaticMatterDevice, &protocol conformance descriptor for StaticMatterDevice);
  result = sub_1D1A4FCC0(&qword_1EC6496B0, type metadata accessor for StaticMatterDevice, &protocol conformance descriptor for StaticMatterDevice);
  a1[6] = result;
  return result;
}

void sub_1D1A4F37C(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MTRDeviceState(319);
    if (v2 <= 0x3F)
    {
      sub_1D1900840(319);
      if (v3 <= 0x3F)
      {
        sub_1D17786E4();
        if (v4 <= 0x3F)
        {
          sub_1D17B77BC(319);
          if (v5 <= 0x3F)
          {
            sub_1D1A4F4A4(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for MatterTileMetadata(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D1A4F4A4(uint64_t a1)
{
  if (!qword_1EE07B768)
  {
    type metadata accessor for StaticEndpoint(255);
    v1 = sub_1D1E6769C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE07B768);
    }
  }
}

uint64_t getEnumTagSinglePayload for StaticMatterDevice.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StaticMatterDevice.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D1A4F660()
{
  result = qword_1EC6496B8;
  if (!qword_1EC6496B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6496B8);
  }

  return result;
}

unint64_t sub_1D1A4F6B8()
{
  result = qword_1EC6496C0;
  if (!qword_1EC6496C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6496C0);
  }

  return result;
}

unint64_t sub_1D1A4F710()
{
  result = qword_1EC6496C8;
  if (!qword_1EC6496C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6496C8);
  }

  return result;
}

uint64_t sub_1D1A4F764(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x644965646F6ELL && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEB00000000736570 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6449656D6F68 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64496D6F6F72 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEB00000000444979 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6564644165746164 && a2 == 0xE900000000000064 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xE900000000000073 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC38B0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1D1A4FB78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A4FBE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A4FC48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_30_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D1A4FCC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t StaticMatterDevice.mainEndpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-v4];
  v6 = *(v1 + *(type metadata accessor for StaticMatterDevice(0) + 56));
  v13 = v1;

  sub_1D1746B78(sub_1D18076C8, v6, v5);

  v7 = type metadata accessor for StaticEndpoint(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) == 1)
  {

    sub_1D1771D7C(v10, a1);

    result = v9(v5, 1, v7);
    if (result != 1)
    {
      return sub_1D1741A30(v5, &qword_1EC644780, &qword_1D1E91AA0);
    }
  }

  else
  {
    sub_1D1A51600(v5, a1);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }

  return result;
}

char StaticMatterDevice.statusIcon.getter@<W0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22[-v7];
  v9 = type metadata accessor for StaticMatterDevice(0);
  v10 = *(v1 + v9[14]);
  v23 = v1;

  sub_1D1746B78(sub_1D18085E0, v10, v6);

  v11 = type metadata accessor for StaticEndpoint(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v6, 1, v11) == 1)
  {

    sub_1D1771D7C(v14, v8);

    if (v13(v6, 1, v11) != 1)
    {
      sub_1D1741A30(v6, &qword_1EC644780, &qword_1D1E91AA0);
    }
  }

  else
  {
    sub_1D1A51600(v6, v8);
    (*(v12 + 56))(v8, 0, 1, v11);
  }

  if (v13(v8, 1, v11) == 1)
  {
    sub_1D1741A30(v8, &qword_1EC644780, &qword_1D1E91AA0);
  }

  else
  {
    static MatterDeviceType.primaryDeviceType(for:)(*&v8[*(v11 + 32)], &v25);
    v15 = v25;
    result = sub_1D1A51C10(v8, type metadata accessor for StaticEndpoint);
    if (v15 != 28)
    {
      goto LABEL_9;
    }
  }

  result = static MatterDeviceType.primaryDeviceType(for:)(*(v1 + v9[8]), &v25);
  v15 = v25;
LABEL_9:
  v17 = v1 + v9[15];
  v18 = *(v17 + 24);
  if (v18)
  {
    v19 = *(v17 + 16);

    v20._countAndFlagsBits = v19;
    v20._object = v18;
    result = IconSymbol.init(rawValue:)(v20).value;
    v21 = v24;
  }

  else
  {
    v21 = 92;
  }

  *a1 = v15;
  *(a1 + 8) = 32;
  *(a1 + 9) = v21;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t StaticMatterDevice.isActivated.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  v10 = type metadata accessor for StaticMatterDevice(0);
  if (*(v0 + *(v10 + 28)) == 2)
  {
    goto LABEL_8;
  }

  v11 = *(v0 + *(v10 + 56));
  MEMORY[0x1EEE9AC00](v10);
  *&v21[-16] = v0;

  sub_1D1746B78(sub_1D18085E0, v11, v7);

  v12 = type metadata accessor for StaticEndpoint(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v7, 1, v12) == 1)
  {

    sub_1D1771D7C(v15, v9);

    if (v14(v7, 1, v12) != 1)
    {
      sub_1D1741A30(v7, &qword_1EC644780, &qword_1D1E91AA0);
    }
  }

  else
  {
    sub_1D1A51600(v7, v9);
    (*(v13 + 56))(v9, 0, 1, v12);
  }

  if (v14(v9, 1, v12) != 1)
  {
    if (*&v9[*(v12 + 28)] != 2)
    {
      v17 = sub_1D1A45DFC();
      if (v17 != 2)
      {
        LOBYTE(v16) = v17;
        goto LABEL_16;
      }

      sub_1D1741C08(&v9[*(v12 + 40)], v3, &qword_1EC644778, &unk_1D1E75B10);
      v18 = type metadata accessor for StaticRVCClusterGroup(0);
      if ((*(*(v18 - 8) + 48))(v3, 1, v18) != 1)
      {
        v19 = v3[*(v18 + 20)];
        v16 = (v19 > 0xB) | (0x15u >> v19);
        sub_1D1A51C10(v3, type metadata accessor for StaticRVCClusterGroup);
        goto LABEL_16;
      }

      sub_1D1741A30(v3, &qword_1EC644778, &unk_1D1E75B10);
    }

    LOBYTE(v16) = 0;
LABEL_16:
    sub_1D1A51C10(v9, type metadata accessor for StaticEndpoint);
    return v16 & 1;
  }

  sub_1D1741A30(v9, &qword_1EC644780, &qword_1D1E91AA0);
LABEL_8:
  LOBYTE(v16) = 0;
  return v16 & 1;
}

uint64_t StaticMatterDevice.canBeToggled.getter()
{
  v1 = type metadata accessor for StaticEndpoint(0);
  v50 = *(v1 - 1);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v53 = &v46[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v46[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455A0, &unk_1D1E79B48);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v46[-v9];
  v11 = *(v0 + *(type metadata accessor for StaticMatterDevice(0) + 56));
  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;
  v52 = v11;

  v18 = 0;
  v19 = 0;
  v51 = v1;
  v48 = v10;
  while (2)
  {
    v47 = v18;
    while (1)
    {
      if (!v15)
      {
        if (v16 <= v19 + 1)
        {
          v21 = v19 + 1;
        }

        else
        {
          v21 = v16;
        }

        v22 = v21 - 1;
        while (1)
        {
          v20 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_43;
          }

          if (v20 >= v16)
          {
            v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448D0, &qword_1D1E76600);
            (*(*(v44 - 8) + 56))(v8, 1, 1, v44);
            v15 = 0;
            v19 = v22;
            goto LABEL_19;
          }

          v15 = *(v12 + 8 * v20);
          ++v19;
          if (v15)
          {
            v19 = v20;
            goto LABEL_18;
          }
        }
      }

      v20 = v19;
LABEL_18:
      v23 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v24 = v23 | (v20 << 6);
      v25 = *(*(v52 + 48) + 2 * v24);
      v26 = v49;
      sub_1D1A51BA8(*(v52 + 56) + *(v50 + 72) * v24, v49, type metadata accessor for StaticEndpoint);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448D0, &qword_1D1E76600);
      v28 = *(v27 + 48);
      *v8 = v25;
      sub_1D1A51600(v26, v8 + v28);
      (*(*(v27 - 8) + 56))(v8, 0, 1, v27);
      v1 = v51;
      v10 = v48;
LABEL_19:
      sub_1D1A51B38(v8, v10);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448D0, &qword_1D1E76600);
      if ((*(*(v29 - 8) + 48))(v10, 1, v29) == 1)
      {
        v45 = v47;
LABEL_40:

        return v45 & 1;
      }

      v30 = v53;
      result = sub_1D1A51600(&v10[*(v29 + 48)], v53);
      if (*&v30[v1[7]] != 2)
      {
        break;
      }

LABEL_7:
      result = sub_1D1A51C10(v30, type metadata accessor for StaticEndpoint);
    }

    if (*(*&v30[v1[9]] + 16))
    {
      result = sub_1D171D278(11);
      if (v31)
      {
LABEL_5:
        result = sub_1D1A51C10(v30, type metadata accessor for StaticEndpoint);
        v18 = 1;
        if ((v47 & 1) == 0)
        {
          continue;
        }

        v45 = 0;
        goto LABEL_40;
      }
    }

    break;
  }

  v32 = 0;
  v33 = *&v30[v1[8]];
  v34 = 1 << *(v33 + 32);
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  else
  {
    v35 = -1;
  }

  v36 = v35 & *(v33 + 56);
  v37 = (v34 + 63) >> 6;
  while (v36)
  {
    v38 = v32;
LABEL_33:
    v39 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v40 = *(*(v33 + 48) + (v39 | (v38 << 6)));
    v41 = v40 > 0x15;
    v42 = (1 << v40) & 0x203AD0;
    if (!v41 && v42 != 0)
    {
      goto LABEL_5;
    }
  }

  while (1)
  {
    v38 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v38 >= v37)
    {
      goto LABEL_7;
    }

    v36 = *(v33 + 56 + 8 * v38);
    ++v32;
    if (v36)
    {
      v32 = v38;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t StaticMatterDevice.statusString(with:associatedMatterDevice:)(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v45 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v45 - v10;
  v12 = sub_1D1E669FC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v45 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v45 - v22;
  if (*a1 == 1 && *&v1[*(type metadata accessor for StaticMatterDevice(0) + 28)] == 2)
  {
    v24 = a1[4];
    v25 = v13;
    (*(v13 + 56))(v23, 1, 1, v12);
    if (v24 < 3)
    {
      v47[3] = &type metadata for HomeAppFeatures;
      v47[4] = sub_1D19C6154();
      LOBYTE(v47[0]) = 3;
      v26 = sub_1D1E66D5C();
      __swift_destroy_boxed_opaque_existential_1(v47);
      if (v26)
      {
        sub_1D1741C08(v23, v21, &qword_1EC642570, &qword_1D1E6C6A0);
        if ((*(v13 + 48))(v21, 1, v12) == 1)
        {
          sub_1D1741A30(v21, &qword_1EC642570, &qword_1D1E6C6A0);
        }

        else
        {
          v40 = *(v13 + 32);
          v41 = v45;
          v40(v45, v21, v12);
          sub_1D1E668FC();
          sub_1D1A51D44(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
          v42 = sub_1D1E6775C();
          v43 = *(v25 + 8);
          v43(v16, v12);
          if ((v42 & 1) == 0)
          {
            sub_1D1E6691C();
            v44 = sub_1D1E6775C();
            v43(v16, v12);
            if ((v44 & 1) == 0)
            {
              LOBYTE(v47[0]) = 0;
              v46 = 2;
              v37 = sub_1D1CF0230(v41, &v46);
              v43(v41, v12);
              goto LABEL_23;
            }
          }

          v43(v41, v12);
        }
      }

      v39 = 0x80000001D1EBAD70;
      v38 = 0xD00000000000001ELL;
LABEL_22:
      v37 = static String.hfLocalized(_:)(v38, v39);
LABEL_23:
      sub_1D1741A30(v23, &qword_1EC642570, &qword_1D1E6C6A0);
      return v37;
    }

    if (v24 == 3)
    {
      v38 = 0xD000000000000022;
      v39 = 0x80000001D1EC38F0;
      goto LABEL_22;
    }

    v33 = &qword_1EC642570;
    v34 = &qword_1D1E6C6A0;
    v35 = v23;
LABEL_13:
    sub_1D1741A30(v35, v33, v34);
    return 0;
  }

  v45 = a1;
  v27 = type metadata accessor for StaticMatterDevice(0);
  v28 = *&v1[*(v27 + 56)];
  MEMORY[0x1EEE9AC00](v27);
  *(&v45 - 2) = v1;

  sub_1D1746B78(sub_1D18085E0, v28, v9);

  v29 = type metadata accessor for StaticEndpoint(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  if (v31(v9, 1, v29) == 1)
  {

    sub_1D1771D7C(v32, v11);

    if (v31(v9, 1, v29) != 1)
    {
      sub_1D1741A30(v9, &qword_1EC644780, &qword_1D1E91AA0);
    }
  }

  else
  {
    sub_1D1A51600(v9, v11);
    (*(v30 + 56))(v11, 0, 1, v29);
  }

  if (v31(v11, 1, v29) == 1)
  {
    v33 = &qword_1EC644780;
    v34 = &qword_1D1E91AA0;
    v35 = v11;
    goto LABEL_13;
  }

  sub_1D1A51BA8(v1, v5, type metadata accessor for StaticMatterDevice);
  (*(*(v27 - 8) + 56))(v5, 0, 1, v27);
  v37 = StaticEndpoint.statusString(with:associatedMatterDevice:)(v45);
  sub_1D1741A30(v5, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1A51C10(v11, type metadata accessor for StaticEndpoint);
  return v37;
}

uint64_t StaticMatterDevice.statusString.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - v2;
  v4 = type metadata accessor for StatusStrings.Options(0);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v5[13];
  v9 = sub_1D1E669FC();
  (*(*(v9 - 8) + 56))(&v7[v8], 1, 1, v9);
  *v7 = 65793;
  *(v7 + 2) = 1;
  v7[6] = 0;
  v7[v5[14]] = 2;
  v10 = &v7[v5[15]];
  v10[4] = 0;
  *v10 = 2;
  sub_1D1A51BA8(v0, v3, type metadata accessor for StaticMatterDevice);
  v11 = type metadata accessor for StaticMatterDevice(0);
  (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
  v12 = StaticMatterDevice.statusString(with:associatedMatterDevice:)(v7);
  sub_1D1741A30(v3, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1A51C10(v7, type metadata accessor for StatusStrings.Options);
  return v12;
}

uint64_t StaticMatterDevice.tileStatusStringIconSymbolSuffix.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15[-v5];
  v7 = type metadata accessor for StaticMatterDevice(0);
  result = 0;
  if (*(v0 + *(v7 + 28)) == 1)
  {
    v9 = *(v0 + *(v7 + 56));
    MEMORY[0x1EEE9AC00](0);
    *&v15[-16] = v0;

    sub_1D1746B78(sub_1D18085E0, v9, v4);

    v10 = type metadata accessor for StaticEndpoint(0);
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    if (v12(v4, 1, v10) == 1)
    {

      sub_1D1771D7C(v13, v6);

      if (v12(v4, 1, v10) != 1)
      {
        sub_1D1741A30(v4, &qword_1EC644780, &qword_1D1E91AA0);
      }
    }

    else
    {
      sub_1D1A51600(v4, v6);
      (*(v11 + 56))(v6, 0, 1, v10);
    }

    if (v12(v6, 1, v10) == 1)
    {
      sub_1D1741A30(v6, &qword_1EC644780, &qword_1D1E91AA0);
      return 0;
    }

    else
    {
      v14 = StaticEndpoint.tileStatusStringIconSymbolSuffix.getter();
      sub_1D1A51C10(v6, type metadata accessor for StaticEndpoint);
      return v14;
    }
  }

  return result;
}

BOOL sub_1D1A51558(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticEndpoint(0);
  v5 = a1 + *(v4 + 20);
  if (!*(v5 + *(type metadata accessor for EndpointPath(0) + 24)))
  {
    return 0;
  }

  v6 = *(a1 + *(v4 + 32));
  v7 = *(a2 + *(type metadata accessor for StaticMatterDevice(0) + 32));

  v9 = *(sub_1D1E63F58(v7, v6, v8) + 2);

  return v9 != 0;
}

uint64_t sub_1D1A51600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticEndpoint(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void StaticMatterDevice.rvcState.getter(char *a1@<X8>)
{
  v35 = a1;
  v2 = type metadata accessor for StaticEndpoint(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v34 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v33 = &v33 - v13;
  v14 = *(v1 + *(type metadata accessor for StaticMatterDevice(0) + 56));
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v19 = 0;
  v36 = v3;
  v20 = v37;
  if (v17)
  {
    while (1)
    {
      v21 = v19;
LABEL_8:
      v22 = *(v14 + 56) + *(v3 + 72) * (__clz(__rbit64(v17)) | (v21 << 6));
      v23 = v38;
      sub_1D1A51BA8(v22, v38, type metadata accessor for StaticEndpoint);
      sub_1D1A51600(v23, v20);
      sub_1D1741C08(v20 + *(v2 + 40), v12, &qword_1EC644778, &unk_1D1E75B10);
      v24 = type metadata accessor for StaticRVCClusterGroup(0);
      if ((*(*(v24 - 8) + 48))(v12, 1, v24) != 1)
      {
        break;
      }

      v17 &= v17 - 1;
      sub_1D1A51C10(v20, type metadata accessor for StaticEndpoint);
      sub_1D1741A30(v12, &qword_1EC644778, &unk_1D1E75B10);
      v19 = v21;
      v3 = v36;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    sub_1D1741A30(v12, &qword_1EC644778, &unk_1D1E75B10);
    v25 = v34;
    sub_1D1A51600(v20, v34);
    v3 = v36;
    (*(v36 + 56))(v25, 0, 1, v2);
LABEL_12:
    v26 = v35;

    if ((*(v3 + 48))(v25, 1, v2) == 1)
    {
      v27 = &qword_1EC644780;
      v28 = &qword_1D1E91AA0;
      v29 = v25;
    }

    else
    {
      v30 = v33;
      sub_1D1741C08(v25 + *(v2 + 40), v33, &qword_1EC644778, &unk_1D1E75B10);
      sub_1D1A51C10(v25, type metadata accessor for StaticEndpoint);
      v31 = type metadata accessor for StaticRVCClusterGroup(0);
      if ((*(*(v31 - 8) + 48))(v30, 1, v31) != 1)
      {
        v32 = *(v30 + *(v31 + 20));
        sub_1D1A51C10(v30, type metadata accessor for StaticRVCClusterGroup);
        goto LABEL_18;
      }

      v27 = &qword_1EC644778;
      v28 = &unk_1D1E75B10;
      v29 = v30;
    }

    sub_1D1741A30(v29, v27, v28);
    v32 = 12;
LABEL_18:
    *v26 = v32;
    return;
  }

LABEL_5:
  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      v25 = v34;
      (*(v3 + 56))(v34, 1, 1, v2);
      goto LABEL_12;
    }

    v17 = *(v14 + 64 + 8 * v21);
    ++v19;
    if (v17)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_1D1A51B38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455A0, &unk_1D1E79B48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1A51BA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A51C10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1A51C70(void *a1)
{
  a1[1] = sub_1D1A51D44(&qword_1EC649240, type metadata accessor for StaticMatterDevice, &protocol conformance descriptor for StaticMatterDevice);
  a1[2] = sub_1D1A51D44(&qword_1EC649210, type metadata accessor for StaticMatterDevice, &protocol conformance descriptor for StaticMatterDevice);
  a1[3] = sub_1D1A51D44(&qword_1EC6496A8, type metadata accessor for StaticMatterDevice, &protocol conformance descriptor for StaticMatterDevice);
  result = sub_1D1A51D44(&qword_1EC6496B0, type metadata accessor for StaticMatterDevice, &protocol conformance descriptor for StaticMatterDevice);
  a1[4] = result;
  return result;
}

uint64_t sub_1D1A51D44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static StaticMatterDevice.waitFor(values:home:timeout:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1A51DBC, 0, 0);
}

uint64_t sub_1D1A51DBC()
{
  v1 = swift_allocObject();
  v0[5] = v1;
  swift_unknownObjectWeakInit();
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1D1A51EB0;
  v3.n128_u64[0] = v0[4];
  v4 = v0[2];

  return (sub_1D1A52AAC)(v4, sub_1D1A520D4, v1, v3);
}

uint64_t sub_1D1A51EB0()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1A51FEC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D1A51FEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1A52050(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  v5 = HMHome.device(for:)(a1);

  return v5;
}

uint64_t static StaticMatterDevice.waitFor(values:timeout:deviceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D17C4BFC;

  return sub_1D1A52AAC(a1, a2, a3, a4);
}

uint64_t sub_1D1A521AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 56) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  *(v6 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A52254, 0, 0);
}

uint64_t sub_1D1A52254()
{
  v1 = v0[4];
  v2 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;

  v8 = 0;
  v28 = v1;
  while (v5)
  {
    v9 = v8;
LABEL_10:
    v10 = v0[5];
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (v9 << 9) | (8 * v11);
    v13 = *(*(v1 + 48) + v12);
    v14 = *(*(v1 + 56) + v12);

    v15 = v10(v13);
    if (v15)
    {
      v17 = v15;
      v18 = v16;
      ExpectedValuesBuilder.isEmpty.getter();
      if (v19)
      {

        result = swift_unknownObjectRelease();
      }

      else
      {
        v20 = v0[8];
        v21 = v0[7];
        v22 = sub_1D1E67E7C();
        (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
        v23 = swift_allocObject();
        v23[2] = 0;
        v23[3] = 0;
        v23[4] = v17;
        v23[5] = v18;
        v23[6] = v14;
        v23[7] = v21;
        sub_1D1DE299C(v20, &unk_1D1E94D18, v23);
        v24 = v20;
        v1 = v28;
        result = sub_1D1741A30(v24, &unk_1EC6442C0, &qword_1D1E741A0);
      }

      v8 = v9;
    }

    else
    {

      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  v25 = v0[3];

  v26 = *v25;
  v27 = swift_task_alloc();
  v0[9] = v27;
  *v27 = v0;
  v27[1] = sub_1D1A524D4;

  return sub_1D17C2A50(v26);
}

void sub_1D1A524D4(uint64_t a1)
{
  *(*v2 + 80) = a1;

  if (v1)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1D1A525FC, 0, 0);
  }
}

void sub_1D1A525FC()
{
  v1 = v0[10];
  v2 = sub_1D18DA614(MEMORY[0x1E69E7CC0]);
  v3 = 0;
  v4 = -*(v1 + 16);
LABEL_2:
  v5 = v3 + 1;
  v6 = (v1 + 40 + 16 * v3);
  while (v4 + v5 != 1)
  {
    v3 = v5;
    if ((v5 - 1) >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    v7 = *(v6 - 1);
    v8 = *v6;
    if (*v6)
    {
      v12 = *(v6 - 1);
      v13 = v8;
      v14 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = v12;
      v17 = sub_1D17420B0(v12);
      v19 = v2[2];
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        __break(1u);
      }

      else
      {
        v23 = v18;
        if (v2[3] >= v22)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_15;
          }

          v27 = v17;
          sub_1D173B58C();
          v17 = v27;
          if (v23)
          {
LABEL_16:
            v25 = v2[7];
            v26 = *(v25 + 8 * v17);
            *(v25 + 8 * v17) = v8;

            goto LABEL_2;
          }
        }

        else
        {
          sub_1D172C9C4(v22, isUniquelyReferenced_nonNull_native);
          v17 = sub_1D17420B0(v16);
          if ((v23 & 1) != (v24 & 1))
          {
LABEL_24:

            sub_1D1E690FC();
            return;
          }

LABEL_15:
          if (v23)
          {
            goto LABEL_16;
          }
        }

        v2[(v17 >> 6) + 8] |= 1 << v17;
        *(v2[6] + 8 * v17) = v16;
        *(v2[7] + 8 * v17) = v8;

        v28 = v2[2];
        v21 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (!v21)
        {
          v2[2] = v29;
          goto LABEL_2;
        }
      }

      __break(1u);
      return;
    }

    v5 = v3 + 1;
    v6 += 2;
    v9 = sub_1D17420B0(v7);
    if (v10)
    {
      v11 = v9;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_1D173B58C();
      }

      sub_1D1757DEC();
      goto LABEL_2;
    }
  }

  v30 = v0[2];

  *v30 = v2;

  v31 = v0[1];

  v31();
}

uint64_t sub_1D1A52884(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a2;
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 16) = a1;
  *(v7 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D1A528AC, 0, 0);
}

uint64_t sub_1D1A528AC()
{
  v10 = v0;
  v1 = *(v0 + 5);
  v8 = MEMORY[0x1E69E7CC8];
  v9 = v1;
  sub_1D1A14738(&v9, &v8);
  v2 = v8;
  *(v0 + 7) = v8;
  v3 = swift_task_alloc();
  *(v0 + 8) = v3;
  *v3 = v0;
  v3[1] = sub_1D1A5296C;
  v4 = v0[6];
  v6 = *(v0 + 3);
  v5 = *(v0 + 4);

  return sub_1D1A52FE4(v6, v5, v2, v4);
}

uint64_t sub_1D1A5296C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1D1A52A8C, 0, 0);
}

uint64_t sub_1D1A52AAC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 32) = a4;
  *(v4 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A52AD4, 0, 0);
}

uint64_t sub_1D1A52AD4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643360, &qword_1D1E717C8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6496D0, &qword_1D1E94CF0);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  v6 = *(v0 + 40);
  *(v5 + 16) = v2;
  *(v5 + 24) = v6;
  *(v5 + 40) = v1;
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_1D1A52C08;

  return MEMORY[0x1EEE6DBF8](v0 + 16, v3, v4, 0, 0, &unk_1D1E94D00, v5, v3);
}

uint64_t sub_1D1A52C08()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1A52D20, 0, 0);
}

uint64_t sub_1D1A52D20()
{
  v1 = *(v0 + 16);
  if (*(v1 + 16))
  {
    sub_1D1A52EB8();
    swift_allocError();
    *v2 = v1;
    swift_willThrow();
  }

  else
  {
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D1A52DE4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1D17C4CF0;

  return sub_1D1A521AC(a1, a2, v6, v7, v8, v9);
}

unint64_t sub_1D1A52EB8()
{
  result = qword_1EC6496D8;
  if (!qword_1EC6496D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6496D8);
  }

  return result;
}

uint64_t sub_1D1A52F0C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D17C4BFC;

  return sub_1D1A52884(a1, v9, v4, v5, v6, v7, v8);
}

uint64_t sub_1D1A52FE4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 48) = a4;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 24) = a1;
  v5 = sub_1D1E67D8C();
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A530AC, 0, 0);
}

uint64_t sub_1D1A530AC()
{
  v20 = v0;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  v0[10] = __swift_project_value_buffer(v1, qword_1EE07A0B0);
  swift_unknownObjectRetain();

  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 134349314;
    ObjectType = swift_getObjectType();
    *(v5 + 4) = (*(v4 + 8))(ObjectType, v4);
    swift_unknownObjectRelease();
    *(v5 + 12) = 2082;
    sub_1D1A53944();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
    sub_1D1A10C28();
    v8 = sub_1D1E6760C();
    v10 = sub_1D1B1312C(v8, v9, &v19);

    *(v5 + 14) = v10;
    _os_log_impl(&dword_1D16EC000, v2, v3, "[%{public}llu] waiting for attribute values: %{public}s", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1D3893640](v6, -1, -1);
    MEMORY[0x1D3893640](v5, -1, -1);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v18 = v0[4];
  v11 = swift_getObjectType();
  v0[11] = v11;
  v17 = (*(v18 + 128) + **(v18 + 128));
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_1D1A5339C;
  v13.n128_u64[0] = v0[6];
  v14 = v0[4];
  v15 = v0[5];

  return v17(v15, v11, v14, v13);
}

uint64_t sub_1D1A5339C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1D1A53610;
  }

  else
  {
    v2 = sub_1D1A534B0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1A534B0()
{
  swift_unknownObjectRetain();
  v1 = sub_1D1E6707C();
  v2 = sub_1D1E6835C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[11];
    v4 = v0[4];
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    v6 = *(v4 + 8);
    *(v5 + 4) = v6(v3, v4);
    swift_unknownObjectRelease();
    _os_log_impl(&dword_1D16EC000, v1, v2, "[%{public}llu] attribute values reached", v5, 0xCu);
    MEMORY[0x1D3893640](v5, -1, -1);
  }

  else
  {
    v7 = v0[4];
    swift_unknownObjectRelease();

    v6 = *(v7 + 8);
  }

  v8 = v6(v0[11], v0[4]);

  v9 = v0[1];

  return v9(v8, 0);
}

uint64_t sub_1D1A53610()
{
  v1 = v0[13];
  v0[2] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  if (swift_dynamicCast())
  {
    (*(v0[8] + 8))(v0[9], v0[7]);
    swift_unknownObjectRetain();
    v3 = sub_1D1E6707C();
    v4 = sub_1D1E6835C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[11];
      v6 = v0[4];
      v7 = swift_slowAlloc();
      *v7 = 134349056;
      v8 = *(v6 + 8);
      *(v7 + 4) = v8(v5, v6);
      swift_unknownObjectRelease();
      _os_log_impl(&dword_1D16EC000, v3, v4, "[%{public}llu] stopped waiting becaused task was cancelled", v7, 0xCu);
      MEMORY[0x1D3893640](v7, -1, -1);
    }

    else
    {
      v20 = v0[4];
      swift_unknownObjectRelease();

      v8 = *(v20 + 8);
    }

    v21 = v0[13];
    v22 = v8(v0[11], v0[4]);

    v23 = 0;
  }

  else
  {
    v9 = v0[13];
    swift_unknownObjectRetain();
    v10 = v9;
    v11 = sub_1D1E6707C();
    v12 = sub_1D1E6835C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[13];
      v27 = v0[11];
      v14 = v0[4];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 134349314;
      v17 = *(v14 + 8);
      *(v15 + 4) = v17(v27, v14);
      swift_unknownObjectRelease();
      *(v15 + 12) = 2112;
      v18 = v13;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v19;
      *v16 = v19;
      _os_log_impl(&dword_1D16EC000, v11, v12, "[%{public}llu] got error %@ when waiting for attribute values", v15, 0x16u);
      sub_1D1741A30(v16, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v16, -1, -1);
      MEMORY[0x1D3893640](v15, -1, -1);
    }

    else
    {
      v24 = v0[4];
      swift_unknownObjectRelease();

      v17 = *(v24 + 8);
    }

    v23 = v0[13];
    v22 = v17(v0[11], v0[4]);
  }

  v25 = v0[1];

  return v25(v22, v23);
}

unint64_t sub_1D1A53944()
{
  result = qword_1EC650120;
  if (!qword_1EC650120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC650120);
  }

  return result;
}

id HMAccessory.accessoryDelegate.getter()
{
  result = [v0 delegate];
  if (result)
  {
    _s15DelegateAdapterCMa();
    if (swift_dynamicCastClass())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRelease();
      return Strong;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id sub_1D1A53A8C@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [*a1 delegate];
  if (!result)
  {
    goto LABEL_5;
  }

  _s15DelegateAdapterCMa();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    result = swift_unknownObjectRelease();
LABEL_5:
    Strong = 0;
    v7 = 0;
    goto LABEL_6;
  }

  v5 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  result = swift_unknownObjectRelease();
LABEL_6:
  *a2 = Strong;
  a2[1] = v7;
  return result;
}

uint64_t HMAccessory.accessoryDelegate.setter(uint64_t a1, uint64_t a2)
{
  if (![v2 delegate])
  {
    goto LABEL_7;
  }

  _s15DelegateAdapterCMa();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v6 = _s15DelegateAdapterCMa();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate + 8] = 0;
    *(swift_unknownObjectWeakInit() + 8) = a2;
    swift_unknownObjectWeakAssign();
    v11.receiver = v7;
    v11.super_class = v6;
    v8 = objc_msgSendSuper2(&v11, sel_init);
    swift_beginAccess();
    v9 = v8;
    objc_setAssociatedObject(v2, &unk_1EC6496E0, v9, 1);
    swift_endAccess();

    v10 = v9;
    [v2 setDelegate_];

    return swift_unknownObjectRelease();
  }

  *(v4 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t (*HMAccessory.accessoryDelegate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  if (![v1 delegate])
  {
    goto LABEL_5;
  }

  _s15DelegateAdapterCMa();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
LABEL_5:
    Strong = 0;
    v6 = 0;
    goto LABEL_6;
  }

  v4 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  swift_unknownObjectRelease();
LABEL_6:
  *a1 = Strong;
  a1[1] = v6;
  return sub_1D1A53D5C;
}

uint64_t sub_1D1A53D5C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return HMAccessory.accessoryDelegate.setter(*a1, v2);
  }

  v3 = swift_unknownObjectRetain();
  HMAccessory.accessoryDelegate.setter(v3, v2);

  return swift_unknownObjectRelease();
}

uint64_t dispatch thunk of AccessoryDelegate.accessory(_:didUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 136))(a1, a2, a3);
}

{
  return (*(a4 + 160))(a1, a2, a3);
}

{
  return (*(a4 + 352))(a1, a2, a3);
}

uint64_t dispatch thunk of AccessoryDelegate.accessory(_:didAdd:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 232))(a1, a2, a3);
}

{
  return (*(a4 + 496))(a1, a2, a3);
}

uint64_t sub_1D1A54290(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdateName: | accessory={id: %{public}s, name: %s}", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 24))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A545E8(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446722;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    *(v13 + 22) = 1024;
    LODWORD(v24) = [v9 isReachable];

    *(v13 + 24) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdateReachability: | accessory={id: %{public}s, name: %s, reachable: %{BOOL}d}", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  else
  {
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 32))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A54978(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdateServices: | accessory={id: %{public}s, name: %s}", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 40))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A54CD0(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "accessory:didUpdateNameFor: | accessory={id: %{public}s, name: %s}, service={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = v12;
    (*(v45 + 48))(v51, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A55150(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "accessory:didUpdateAssociatedServiceTypeFor: | accessory={id: %{public}s, name: %s}, service={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = v12;
    (*(v45 + 56))(v51, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A555D0(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v12 = sub_1D1E6709C();
  __swift_project_value_buffer(v12, qword_1EC649730);
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = v14;
  v17 = v15;
  v18 = sub_1D1E6707C();
  v19 = sub_1D1E6832C();

  v20 = os_log_type_enabled(v18, v19);
  v66 = v16;
  v67 = v13;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v69 = v63;
    *v21 = 136447490;
    v22 = [v13 uniqueIdentifier];
    v62 = v19;
    v23 = v16;
    v24 = v22;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v61 = v18;
    v25 = sub_1D1E68FAC();
    v64 = v17;
    v65 = v4;
    v27 = v26;
    v28 = *(v9 + 8);
    v28(v11, v8);
    v29 = sub_1D1B1312C(v25, v27, &v69);

    *(v21 + 4) = v29;
    *(v21 + 12) = 2080;
    v30 = [v13 name];
    v31 = sub_1D1E6781C();
    v33 = v32;

    v34 = sub_1D1B1312C(v31, v33, &v69);

    *(v21 + 14) = v34;
    *(v21 + 22) = 2082;
    v35 = [v23 uniqueIdentifier];
    sub_1D1E66A5C();

    v36 = sub_1D1E68FAC();
    v38 = v37;
    v28(v11, v8);
    v39 = sub_1D1B1312C(v36, v38, &v69);

    *(v21 + 24) = v39;
    *(v21 + 32) = 2080;
    v40 = [v23 name];
    v41 = sub_1D1E6781C();
    v43 = v42;

    v44 = sub_1D1B1312C(v41, v43, &v69);
    v17 = v64;

    *(v21 + 34) = v44;
    *(v21 + 42) = 2082;
    v45 = [v17 uniqueIdentifier];
    sub_1D1E66A5C();

    v46 = sub_1D1E68FAC();
    v48 = v47;
    v28(v11, v8);
    v4 = v65;
    v49 = sub_1D1B1312C(v46, v48, &v69);

    *(v21 + 44) = v49;
    *(v21 + 52) = 2080;
    v50 = [v17 characteristicType];
    v51 = sub_1D1E6781C();
    v53 = v52;

    v54 = sub_1D1B1312C(v51, v53, &v69);

    *(v21 + 54) = v54;
    v18 = v61;
    _os_log_impl(&dword_1D16EC000, v61, v62, "accessory:service:didUpdateValueFor: | accessory={id: %{public}s, name: %s}, service={id: %{public}s, name: %s}, characteristic={id: %{public}s, type: %s}", v21, 0x3Eu);
    v55 = v63;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v55, -1, -1);
    MEMORY[0x1D3893640](v21, -1, -1);
  }

  v56 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v58 = *(v56 + 8);
    ObjectType = swift_getObjectType();
    v68 = v17;
    v69 = v66;
    (*(v58 + 64))(v67, &v69, &v68, ObjectType, v58);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A55B4C(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdateApplicationData: | accessory={id: %{public}s, name: %s}", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 72))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A55EA4(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "accessory:didUpdateApplicationDataFor: | accessory={id: %{public}s, name: %s}, service={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = v12;
    (*(v45 + 80))(v51, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A56324(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446722;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    *(v13 + 22) = 1024;
    LODWORD(v24) = [v9 isAdditionalSetupRequired];

    *(v13 + 24) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdateAdditionalSetupRequired: | accessory={id: %{public}s, name: %s, setupRequired: %{BOOL}d}", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  else
  {
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 88))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A566B4(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446722;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    *(v13 + 22) = 1024;
    LODWORD(v24) = [v9 isCalibrating];

    *(v13 + 24) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdateCalibrationStatus: | accessory={id: %{public}s, name: %s, isCalibrating: %{BOOL}d}", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  else
  {
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 96))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A56A44(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "accessory:didUpdateBulletinBoardNotificationFor: | accessory={id: %{public}s, name: %s}, service={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = v12;
    (*(v45 + 104))(v51, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A56EC4(void *a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = a2;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  v13 = os_log_type_enabled(v11, v12);
  v43 = v9;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v45 = v42;
    *v14 = 136446722;
    v15 = [v9 uniqueIdentifier];
    v41 = v12;
    v16 = v15;
    sub_1D1E66A5C();

    v40 = sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v18 = v10;
    v20 = v19;
    v39 = *(v5 + 8);
    v39(v7, v4);
    v21 = sub_1D1B1312C(v17, v20, &v45);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2080;
    v22 = [v9 name];
    v23 = sub_1D1E6781C();
    v25 = v24;

    v26 = v23;
    v10 = v18;
    v27 = sub_1D1B1312C(v26, v25, &v45);

    *(v14 + 14) = v27;
    *(v14 + 22) = 2082;
    v28 = [v18 uniqueIdentifier];
    sub_1D1E66A5C();

    v29 = sub_1D1E68FAC();
    v31 = v30;
    v39(v7, v4);
    v32 = sub_1D1B1312C(v29, v31, &v45);

    *(v14 + 24) = v32;
    _os_log_impl(&dword_1D16EC000, v11, v41, "accessory:didUpdateHasAuthorizationDataFor: | accessory={id: %{public}s, name: %s}, characteristic={id: %{public}s}", v14, 0x20u);
    v33 = v42;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v33, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  v34 = v44 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v36 = *(v34 + 8);
    ObjectType = swift_getObjectType();
    v45 = v10;
    (*(v36 + 112))(v43, &v45, ObjectType, v36);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A572E4(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v37 = a2;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);

  v12 = a1;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38 = v35;
    *v15 = 136446722;
    v16 = [v12 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v36 = v4;
    v19 = v18;
    (*(v8 + 8))(v10, v7);
    v20 = sub_1D1B1312C(v17, v19, &v38);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = [v12 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v38);

    *(v15 + 14) = v25;
    *(v15 + 22) = 2080;
    v26 = v37;
    if (a3)
    {
      v27 = v37;
    }

    else
    {
      v27 = 7104878;
    }

    if (a3)
    {
      v28 = a3;
    }

    else
    {
      v28 = 0xE300000000000000;
    }

    v29 = sub_1D1B1312C(v27, v28, &v38);
    v4 = v36;

    *(v15 + 24) = v29;
    _os_log_impl(&dword_1D16EC000, v13, v14, "accessory:didUpdateBundleID: | accessory={id: %{public}s, name: %s}, bundleID: %s", v15, 0x20u);
    v30 = v35;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v30, -1, -1);
    MEMORY[0x1D3893640](v15, -1, -1);
  }

  else
  {

    v26 = v37;
  }

  v31 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v33 = *(v31 + 8);
    ObjectType = swift_getObjectType();
    (*(v33 + 120))(v12, v26, a3, ObjectType, v33);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A57664(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v37 = a2;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC649730);

  v12 = a1;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38 = v35;
    *v15 = 136446722;
    v16 = [v12 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v36 = v4;
    v19 = v18;
    (*(v8 + 8))(v10, v7);
    v20 = sub_1D1B1312C(v17, v19, &v38);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = [v12 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v38);

    *(v15 + 14) = v25;
    *(v15 + 22) = 2080;
    v26 = v37;
    if (a3)
    {
      v27 = v37;
    }

    else
    {
      v27 = 7104878;
    }

    if (a3)
    {
      v28 = a3;
    }

    else
    {
      v28 = 0xE300000000000000;
    }

    v29 = sub_1D1B1312C(v27, v28, &v38);
    v4 = v36;

    *(v15 + 24) = v29;
    _os_log_impl(&dword_1D16EC000, v13, v14, "accessory:didUpdateStoreID: | accessory={id: %{public}s, name: %s}, storeID: %s", v15, 0x20u);
    v30 = v35;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v30, -1, -1);
    MEMORY[0x1D3893640](v15, -1, -1);
  }

  else
  {

    v26 = v37;
  }

  v31 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v33 = *(v31 + 8);
    ObjectType = swift_getObjectType();
    (*(v33 + 128))(v12, v26, a3, ObjectType, v33);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A579E4(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t, uint64_t))
{
  if (a4)
  {
    v8 = sub_1D1E6781C();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = a3;
  v12 = a1;
  a5(v11, v8, v10);
}

uint64_t sub_1D1A57A7C(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6832C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v38 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v39[0] = v16;
    *v15 = 136446466;
    v17 = [v11 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v18 = sub_1D1E68FAC();
    v37 = v3;
    v20 = v19;
    (*(v7 + 8))(v9, v6);
    v21 = sub_1D1B1312C(v18, v20, v39);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    v22 = [v11 name];
    v23 = sub_1D1E6781C();
    v25 = v24;

    v26 = v23;
    v3 = v37;
    v27 = sub_1D1B1312C(v26, v25, v39);

    *(v15 + 14) = v27;
    _os_log_impl(&dword_1D16EC000, v12, v13, "accessory:didUpdate:settings: | accessory={id: %{public}s, name: %s}", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v16, -1, -1);
    v28 = v15;
    a2 = v38;
    MEMORY[0x1D3893640](v28, -1, -1);
  }

  v29 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v31 = *(v29 + 8);
    if (a2)
    {
      v32 = sub_1D1741B10(0, &qword_1EC649708, 0x1E696CAD8);
      v33 = a2;
    }

    else
    {
      v33 = 0;
      v32 = 0;
      v39[1] = 0;
      v39[2] = 0;
    }

    v39[0] = v33;
    v39[3] = v32;
    ObjectType = swift_getObjectType();
    v35 = *(v31 + 136);
    v36 = a2;
    v35(v11, v39, ObjectType, v31);
    swift_unknownObjectRelease();
    return sub_1D18B9B30(v39);
  }

  return result;
}

uint64_t sub_1D1A57E44(void *a1, int a2)
{
  v3 = v2;
  v32 = a2;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136446722;
    v15 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v31 = v3;
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    v19 = sub_1D1B1312C(v16, v18, &v33);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v10 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v33);

    *(v13 + 14) = v24;
    v3 = v31;
    *(v13 + 22) = 1024;
    v25 = v32;
    *(v13 + 24) = v32 & 1;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessory:didUpdateFirmwareUpdateAvailable: | accessory={id: %{public}s, name: %s}, available: %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    MEMORY[0x1D3893640](v13, -1, -1);
  }

  else
  {

    v25 = v32;
  }

  v26 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 144))(v10, v25 & 1, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A581CC(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v12 = sub_1D1E6709C();
  __swift_project_value_buffer(v12, qword_1EC649730);
  v13 = a1;

  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v35 = v4;
    v17 = v16;
    v34 = swift_slowAlloc();
    v37 = v34;
    *v17 = 136446722;
    v18 = [v13 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v19 = sub_1D1E68FAC();
    v36 = a2;
    v21 = v20;
    (*(v9 + 8))(v11, v8);
    v22 = sub_1D1B1312C(v19, v21, &v37);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = [v13 name];
    v24 = sub_1D1E6781C();
    v26 = v25;

    v27 = sub_1D1B1312C(v24, v26, &v37);
    a2 = v36;

    *(v17 + 14) = v27;
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_1D1B1312C(a2, a3, &v37);
    _os_log_impl(&dword_1D16EC000, v14, v15, "accessory:didUpdateFirmwareVersion: | accessory={id: %{public}s, name: %s}, firmwareVersion: %s", v17, 0x20u);
    v28 = v34;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v28, -1, -1);
    v29 = v17;
    v4 = v35;
    MEMORY[0x1D3893640](v29, -1, -1);
  }

  v30 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v32 = *(v30 + 8);
    ObjectType = swift_getObjectType();
    (*(v32 + 152))(v13, a2, a3, ObjectType, v32);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A58578(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6832C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v34 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v35 = v16;
    *v15 = 136446466;
    v17 = [v11 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v18 = sub_1D1E68FAC();
    v33 = v3;
    v20 = v19;
    (*(v7 + 8))(v9, v6);
    v21 = sub_1D1B1312C(v18, v20, &v35);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    v22 = [v11 name];
    v23 = sub_1D1E6781C();
    v25 = v24;

    v26 = sub_1D1B1312C(v23, v25, &v35);

    *(v15 + 14) = v26;
    v3 = v33;
    _os_log_impl(&dword_1D16EC000, v12, v13, "accessory:didUpdate:softwareVersion: | accessory={id: %{public}s, name: %s}", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v16, -1, -1);
    v27 = v15;
    a2 = v34;
    MEMORY[0x1D3893640](v27, -1, -1);
  }

  v28 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v30 = *(v28 + 8);
    ObjectType = swift_getObjectType();
    (*(v30 + 160))(v11, a2, ObjectType, v30);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A588F4(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446722;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    *(v13 + 22) = 1024;
    LODWORD(v24) = [v9 isControllable];

    *(v13 + 24) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdateControllable: | accessory={id: %{public}s, name: %s}, controllable: %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  else
  {
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 168))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A58C84(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a2;
  v12 = a1;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  if (os_log_type_enabled(v13, v14))
  {
    v47 = v13;
    v49 = v14;
    v51 = v3;
    v15 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v52 = v48;
    *v15 = 136446978;
    v16 = [v12 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v18 = a2;
    v20 = v19;
    v21 = v12;
    v22 = *(v7 + 8);
    v22(v9, v6);
    v23 = sub_1D1B1312C(v17, v20, &v52);

    *(v15 + 4) = v23;
    *(v15 + 12) = 2080;
    v50 = v21;
    v24 = [v21 name];
    v25 = sub_1D1E6781C();
    v27 = v26;

    v28 = v25;
    a2 = v18;
    v29 = sub_1D1B1312C(v28, v27, &v52);

    *(v15 + 14) = v29;
    *(v15 + 22) = 2082;
    if (v18)
    {
      v30 = [v11 uniqueIdentifier];
      sub_1D1E66A5C();

      v31 = sub_1D1E66A1C();
      v33 = v32;
      v22(v9, v6);
      v34 = sub_1D1B1312C(v31, v33, &v52);

      *(v15 + 24) = v34;
      *(v15 + 32) = 2080;
      v35 = [v11 name];
      v36 = sub_1D1E6781C();
      v38 = v37;
    }

    else
    {
      v36 = 7104878;
      v38 = 0xE300000000000000;
      v39 = sub_1D1B1312C(7104878, 0xE300000000000000, &v52);

      *(v15 + 24) = v39;
      *(v15 + 32) = 2080;
    }

    v40 = v47;
    v41 = sub_1D1B1312C(v36, v38, &v52);

    *(v15 + 34) = v41;
    _os_log_impl(&dword_1D16EC000, v40, v49, "accessory:didUpdateConfiguredNameFor: | accessory={id: %{public}s, name: %s}, service={id: %{public}s, name: %s}", v15, 0x2Au);
    v42 = v48;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v15, -1, -1);

    v12 = v50;
    v3 = v51;
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = a2;
    (*(v45 + 176))(v12, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5913C(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a2;
  v12 = a1;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  if (os_log_type_enabled(v13, v14))
  {
    v47 = v13;
    v49 = v14;
    v51 = v3;
    v15 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v52 = v48;
    *v15 = 136446978;
    v16 = [v12 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v18 = a2;
    v20 = v19;
    v21 = v12;
    v22 = *(v7 + 8);
    v22(v9, v6);
    v23 = sub_1D1B1312C(v17, v20, &v52);

    *(v15 + 4) = v23;
    *(v15 + 12) = 2080;
    v50 = v21;
    v24 = [v21 name];
    v25 = sub_1D1E6781C();
    v27 = v26;

    v28 = v25;
    a2 = v18;
    v29 = sub_1D1B1312C(v28, v27, &v52);

    *(v15 + 14) = v29;
    *(v15 + 22) = 2082;
    if (v18)
    {
      v30 = [v11 uniqueIdentifier];
      sub_1D1E66A5C();

      v31 = sub_1D1E66A1C();
      v33 = v32;
      v22(v9, v6);
      v34 = sub_1D1B1312C(v31, v33, &v52);

      *(v15 + 24) = v34;
      *(v15 + 32) = 2080;
      v35 = [v11 name];
      v36 = sub_1D1E6781C();
      v38 = v37;
    }

    else
    {
      v36 = 7104878;
      v38 = 0xE300000000000000;
      v39 = sub_1D1B1312C(7104878, 0xE300000000000000, &v52);

      *(v15 + 24) = v39;
      *(v15 + 32) = 2080;
    }

    v40 = v47;
    v41 = sub_1D1B1312C(v36, v38, &v52);

    *(v15 + 34) = v41;
    _os_log_impl(&dword_1D16EC000, v40, v49, "accessory:didUpdateDefaultNameFor: | accessory={id: %{public}s, name: %s}, service={id: %{public}s, name: %s}", v15, 0x2Au);
    v42 = v48;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v15, -1, -1);

    v12 = v50;
    v3 = v51;
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = a2;
    (*(v45 + 184))(v12, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A595F4(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a2;
  v12 = a1;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  if (os_log_type_enabled(v13, v14))
  {
    v47 = v13;
    v49 = v14;
    v51 = v3;
    v15 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v52 = v48;
    *v15 = 136446978;
    v16 = [v12 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v18 = a2;
    v20 = v19;
    v21 = v12;
    v22 = *(v7 + 8);
    v22(v9, v6);
    v23 = sub_1D1B1312C(v17, v20, &v52);

    *(v15 + 4) = v23;
    *(v15 + 12) = 2080;
    v50 = v21;
    v24 = [v21 name];
    v25 = sub_1D1E6781C();
    v27 = v26;

    v28 = v25;
    a2 = v18;
    v29 = sub_1D1B1312C(v28, v27, &v52);

    *(v15 + 14) = v29;
    *(v15 + 22) = 2082;
    if (v18)
    {
      v30 = [v11 uniqueIdentifier];
      sub_1D1E66A5C();

      v31 = sub_1D1E66A1C();
      v33 = v32;
      v22(v9, v6);
      v34 = sub_1D1B1312C(v31, v33, &v52);

      *(v15 + 24) = v34;
      *(v15 + 32) = 2080;
      v35 = [v11 name];
      v36 = sub_1D1E6781C();
      v38 = v37;
    }

    else
    {
      v36 = 7104878;
      v38 = 0xE300000000000000;
      v39 = sub_1D1B1312C(7104878, 0xE300000000000000, &v52);

      *(v15 + 24) = v39;
      *(v15 + 32) = 2080;
    }

    v40 = v47;
    v41 = sub_1D1B1312C(v36, v38, &v52);

    *(v15 + 34) = v41;
    _os_log_impl(&dword_1D16EC000, v40, v49, "accessory:didUpdateServiceSubtypeFor: | accessory={id: %{public}s, name: %s}, service={id: %{public}s, name: %s}", v15, 0x2Au);
    v42 = v48;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v15, -1, -1);

    v12 = v50;
    v3 = v51;
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = a2;
    (*(v45 + 192))(v12, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A59AAC(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a2;
  v12 = a1;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  if (os_log_type_enabled(v13, v14))
  {
    v47 = v13;
    v49 = v14;
    v51 = v3;
    v15 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v52 = v48;
    *v15 = 136446978;
    v16 = [v12 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v18 = a2;
    v20 = v19;
    v21 = v12;
    v22 = *(v7 + 8);
    v22(v9, v6);
    v23 = sub_1D1B1312C(v17, v20, &v52);

    *(v15 + 4) = v23;
    *(v15 + 12) = 2080;
    v50 = v21;
    v24 = [v21 name];
    v25 = sub_1D1E6781C();
    v27 = v26;

    v28 = v25;
    a2 = v18;
    v29 = sub_1D1B1312C(v28, v27, &v52);

    *(v15 + 14) = v29;
    *(v15 + 22) = 2082;
    if (v18)
    {
      v30 = [v11 uniqueIdentifier];
      sub_1D1E66A5C();

      v31 = sub_1D1E66A1C();
      v33 = v32;
      v22(v9, v6);
      v34 = sub_1D1B1312C(v31, v33, &v52);

      *(v15 + 24) = v34;
      *(v15 + 32) = 2080;
      v35 = [v11 name];
      v36 = sub_1D1E6781C();
      v38 = v37;
    }

    else
    {
      v36 = 7104878;
      v38 = 0xE300000000000000;
      v39 = sub_1D1B1312C(7104878, 0xE300000000000000, &v52);

      *(v15 + 24) = v39;
      *(v15 + 32) = 2080;
    }

    v40 = v47;
    v41 = sub_1D1B1312C(v36, v38, &v52);

    *(v15 + 34) = v41;
    _os_log_impl(&dword_1D16EC000, v40, v49, "accessory:didUpdateConfigurationStateFor: | accessory={id: %{public}s, name: %s}, service={id: %{public}s, name: %s}", v15, 0x2Au);
    v42 = v48;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v15, -1, -1);

    v12 = v50;
    v3 = v51;
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = a2;
    (*(v45 + 200))(v12, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A59F64(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446722;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    *(v13 + 22) = 1024;
    LODWORD(v24) = [v9 supportsTargetControl];

    *(v13 + 24) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdateTargetControlSupport: | accessory={id: %{public}s, name: %s}, supportsTargetControl: %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  else
  {
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 208))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5A2F4(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "accessory:didAddControlTarget: | accessory={id: %{public}s, name: %s}, targetAccessory={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    (*(v45 + 216))(v51, v12, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5A770(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "accessory:didRemoveControlTarget: | accessory={id: %{public}s, name: %s}, targetAccessory={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    (*(v45 + 224))(v51, v12, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5ABEC(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6832C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v36 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v37[0] = v16;
    *v15 = 136446466;
    v17 = [v11 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v18 = sub_1D1E68FAC();
    v35 = v3;
    v20 = v19;
    (*(v7 + 8))(v9, v6);
    v21 = sub_1D1B1312C(v18, v20, v37);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    v22 = [v11 name];
    v23 = sub_1D1E6781C();
    v25 = v24;

    v26 = v23;
    v3 = v35;
    v27 = sub_1D1B1312C(v26, v25, v37);

    *(v15 + 14) = v27;
    _os_log_impl(&dword_1D16EC000, v12, v13, "accessory:didAdd:symptomsHandler: | accessory={id: %{public}s, name: %s}", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v16, -1, -1);
    v28 = v15;
    a2 = v36;
    MEMORY[0x1D3893640](v28, -1, -1);
  }

  v29 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v31 = *(v29 + 8);
    ObjectType = swift_getObjectType();
    v37[3] = sub_1D1741B10(0, &qword_1EC6496F8, 0x1E696CC80);
    v37[0] = a2;
    v33 = *(v31 + 232);
    v34 = a2;
    v33(v11, v37, ObjectType, v31);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  return result;
}

uint64_t sub_1D1A5AF98(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidRemoveSymptomsHandler: | accessory={id: %{public}s, name: %s}", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 240))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5B2F0(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446722;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    *(v13 + 22) = 1024;
    LODWORD(v24) = [v9 supportsMultiUser];

    *(v13 + 24) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdateMultiUserSupport: | accessory={id: %{public}s, name: %s}, supportsMultiUser: %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  else
  {
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 248))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5B680(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446722;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    *(v13 + 22) = 1024;
    LODWORD(v24) = [v9 supportsHomeLevelLocationServiceSetting];

    *(v13 + 24) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdateHomeLevelLocationServiceSettingSupport: | accessory={id: %{public}s, name: %s}, supportsHomeLevelLocationServiceSetting: %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  else
  {
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 256))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5BA10(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446722;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    *(v13 + 22) = 1024;
    LODWORD(v24) = [v9 supportsAudioReturnChannel];

    *(v13 + 24) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdateAudioReturnChannelSupport: | accessory={id: %{public}s, name: %s}, supportsAudioReturnChannel: %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  else
  {
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 264))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5BDA0(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446722;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    *(v13 + 22) = 1024;
    LODWORD(v24) = [v9 supportsCompanionInitiatedRestart];

    *(v13 + 24) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdateSupportsCompanionInitiatedRestart: | accessory={id: %{public}s, name: %s}, supportsCompanionInitiatedRestart: %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  else
  {
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 272))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5C130(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446722;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    *(v13 + 22) = 1024;
    LODWORD(v24) = [v9 supportsCompanionInitiatedObliterate];

    *(v13 + 24) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdateSupportsCompanionInitiatedObliterate: | accessory={id: %{public}s, name: %s}, supportsCompanionInitiatedObliterate: %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  else
  {
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 280))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5C4C0(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446722;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    *(v13 + 22) = 1024;
    LODWORD(v24) = [v9 supportsMusicAlarm];

    *(v13 + 24) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdateSupportsMusicAlarm: | accessory={id: %{public}s, name: %s}, supportsMusicAlarm: %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  else
  {
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 288))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5C850(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446722;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    *(v13 + 22) = 1024;
    LODWORD(v24) = [v9 supportsAnnounce];

    *(v13 + 24) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdateSupportsAnnounce: | accessory={id: %{public}s, name: %s}, supportsAnnounce: %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  else
  {
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 296))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5CBE0(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446722;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    *(v13 + 22) = 1024;
    LODWORD(v24) = [v9 supportsMediaActions];

    *(v13 + 24) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdateSupportsMediaActions: | accessory={id: %{public}s, name: %s}, supportsMediaActions: %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  else
  {
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 304))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}