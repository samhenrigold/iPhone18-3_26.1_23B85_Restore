uint64_t sub_1D19CCBEC(uint64_t a1)
{
  v2 = sub_1D19CFB78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticOnOffCluster.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6485F8, &qword_1D1E8D970);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19CFB78();
  sub_1D1E6930C();
  v8[15] = 0;
  type metadata accessor for ClusterPath(0);
  sub_1D19CFD70(&qword_1EC646D88, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  sub_1D1E68F1C();
  if (!v1)
  {
    type metadata accessor for StaticOnOffCluster(0);
    v8[14] = 1;
    sub_1D1E68EDC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t StaticOnOffCluster.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D19CFD70(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v2 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v1 + *(v2 + 20)));
  sub_1D1E6923C();
  type metadata accessor for ClusterPath(0);
  sub_1D1E6924C();
  type metadata accessor for StaticOnOffCluster(0);
  return sub_1D1E6922C();
}

uint64_t StaticOnOffCluster.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D19CFD70(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v0 + *(v1 + 20)));
  sub_1D1E6923C();
  type metadata accessor for ClusterPath(0);
  sub_1D1E6924C();
  type metadata accessor for StaticOnOffCluster(0);
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t StaticOnOffCluster.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648608, &qword_1D1E8D978);
  v17 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v17 - v6;
  v8 = type metadata accessor for StaticOnOffCluster(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19CFB78();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v10;
  v12 = v17;
  v13 = v18;
  v22 = 0;
  sub_1D19CFD70(&qword_1EC646DC0, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  sub_1D1E68D7C();
  sub_1D190D804(v19, v11);
  v21 = 1;
  v14 = v20;
  v15 = sub_1D1E68D3C();
  (*(v12 + 8))(v7, v14);
  *(v11 + *(v8 + 20)) = v15 & 1;
  sub_1D19CFC78(v11, v13, type metadata accessor for StaticOnOffCluster);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D19CFBCC(v11, type metadata accessor for StaticOnOffCluster);
}

uint64_t sub_1D19CD2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && (v6 = type metadata accessor for EndpointPath(0), *(a1 + *(v6 + 20)) == *(a2 + *(v6 + 20))) && *(a1 + *(v6 + 24)) == *(a2 + *(v6 + 24)) && (v7 = type metadata accessor for ClusterPath(0), dword_1D1E8DC2C[*(a1 + *(v7 + 20))] == dword_1D1E8DC2C[*(a2 + *(v7 + 20))]))
  {
    v8 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1D19CD368(uint64_t a1, uint64_t a2)
{
  sub_1D1E66A7C();
  sub_1D19CFD70(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v3 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v2 + *(v3 + 20)));
  sub_1D1E6923C();
  type metadata accessor for ClusterPath(0);
  sub_1D1E6924C();
  return sub_1D1E6922C();
}

uint64_t sub_1D19CD444(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D19CFD70(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v3 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v2 + *(v3 + 20)));
  sub_1D1E6923C();
  type metadata accessor for ClusterPath(0);
  sub_1D1E6924C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19CD5A0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20)) == 0;
  if (*(v1 + *(a1 + 20)))
  {
    v3 = 0xD000000000000021;
  }

  else
  {
    v3 = 0xD000000000000022;
  }

  if (v2)
  {
    v4 = "oachAngleSupported";
  }

  else
  {
    v4 = "startUpCurrentLevel";
  }

  v5 = static String.hfLocalized(_:)(v3, v4 | 0x8000000000000000);

  return v5;
}

uint64_t _s13HomeDataModel18StaticOnOffClusterV21longStateStatusStringSSSgvg_0()
{
  v1 = type metadata accessor for StaticOnOffCluster(0);
  v2 = *(v0 + *(v1 + 20)) == 0;
  if (*(v0 + *(v1 + 20)))
  {
    v3 = 0xD000000000000021;
  }

  else
  {
    v3 = 0xD000000000000022;
  }

  if (v2)
  {
    v4 = "oachAngleSupported";
  }

  else
  {
    v4 = "startUpCurrentLevel";
  }

  v5 = static String.hfLocalized(_:)(v3, v4 | 0x8000000000000000);

  return v5;
}

uint64_t StaticOnOffCluster.init(path:valueSource:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StaticOnOffCluster(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = a2[1];
  sub_1D19CFC78(a1, v12, type metadata accessor for ClusterPath);
  sub_1D19CFC78(a1, v8, type metadata accessor for ClusterPath);
  v15 = sub_1D19BE5F8(0, v8, v13, v14);

  sub_1D19CFBCC(a1, type metadata accessor for ClusterPath);
  sub_1D19CFBCC(v8, type metadata accessor for ClusterPath);
  if (v15 == 2)
  {
    sub_1D19CFBCC(v12, type metadata accessor for ClusterPath);
    return (*(v10 + 56))(a3, 1, 1, v9);
  }

  else
  {
    v12[*(v9 + 20)] = v15 & 1;
    sub_1D19CFC78(v12, a3, type metadata accessor for StaticOnOffCluster);
    (*(v10 + 56))(a3, 0, 1, v9);
    return sub_1D19CFBCC(v12, type metadata accessor for StaticOnOffCluster);
  }
}

uint64_t StaticOnOffCluster.cluster.getter()
{
  sub_1D19CFC2C();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D19C8EA0;

  return sub_1D1A092C4(v0);
}

uint64_t StaticOnOffCluster.on()()
{
  v1[4] = v0;
  v1[5] = type metadata accessor for ClusterPath(0);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19CDA18, 0, 0);
}

uint64_t sub_1D19CDA18()
{
  sub_1D18D6FA8(&unk_1F4D65840);
  sub_1D19CBEB8(&unk_1F4D65860);
  v0[7] = sub_1D19C69A8();

  sub_1D19CFC2C();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1D19CDAF8;
  v2 = v0[4];

  return sub_1D1A092C4(v2);
}

uint64_t sub_1D19CDAF8(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D19CDBF8, 0, 0);
}

uint64_t sub_1D19CDBF8(uint64_t a1)
{
  v2 = v1[7];
  v3 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v3);

  v1[10] = 0x80000001D1EC1F80;
  v4 = swift_task_alloc();
  v1[11] = v4;
  *v4 = v1;
  v4[1] = sub_1D19CDD14;
  v5 = v1[9];

  return sub_1D191710C(28271, 0xE200000000000000, v5, v2, 0xD000000000000013, 0x80000001D1EC1F80, &unk_1D1E8D998, 0);
}

uint64_t sub_1D19CDD14()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D19CDEA0, 0, 0);
  }

  else
  {
    v4 = *(v2 + 72);

    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_1D19CDEA0()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);

    v6 = *(v0 + 24);
    sub_1D19CFC78(v5, v3, type metadata accessor for ClusterPath);
    v7 = type metadata accessor for MatterCommandError.MatterError(0);
    sub_1D19CFD70(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError, &protocol conformance descriptor for MatterCommandError.MatterError);
    swift_allocError();
    v9 = v8;
    v10 = v7[7];
    v11 = type metadata accessor for StaticEndpoint(0);
    (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
    *v9 = v6;
    sub_1D19CFC78(v3, &v9[v7[5]], type metadata accessor for EndpointPath);
    LOBYTE(v10) = *(v3 + *(v4 + 20));
    v12 = v6;
    sub_1D19CFBCC(v3, type metadata accessor for ClusterPath);
    v9[v7[6]] = v10;
    swift_willThrow();
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D19CE0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D19CE0DC, 0, 0);
}

uint64_t sub_1D19CE0DC()
{
  v1 = v0[20];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[22] = v2;
  v3 = v0[21];
  v4 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D19CE24C;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_27_2;
  v0[14] = v5;
  [v4 onWithParams:0 expectedValues:v2 expectedValueInterval:v3 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D19CE24C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1D19CE3D4;
  }

  else
  {
    v2 = sub_1D19CE35C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D19CE35C()
{
  v1 = v0[22];
  *(v0[18] + 24) = MEMORY[0x1E69E7CA8] + 8;

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D19CE3D4(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t StaticOnOffCluster.off()()
{
  v1[4] = v0;
  v1[5] = type metadata accessor for ClusterPath(0);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19CE4D8, 0, 0);
}

uint64_t sub_1D19CE4D8()
{
  sub_1D18D6FA8(&unk_1F4D65878);
  sub_1D19CBEB8(&unk_1F4D65898);
  v0[7] = sub_1D19C69A8();

  sub_1D19CFC2C();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1D19CE5B8;
  v2 = v0[4];

  return sub_1D1A092C4(v2);
}

uint64_t sub_1D19CE5B8(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D19CE6B8, 0, 0);
}

uint64_t sub_1D19CE6B8(uint64_t a1)
{
  v2 = v1[7];
  v3 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v3);

  v1[10] = 0x80000001D1EC1F80;
  v4 = swift_task_alloc();
  v1[11] = v4;
  *v4 = v1;
  v4[1] = sub_1D19CE7D8;
  v5 = v1[9];

  return sub_1D191710C(6710895, 0xE300000000000000, v5, v2, 0xD000000000000013, 0x80000001D1EC1F80, &unk_1D1E8D9B0, 0);
}

uint64_t sub_1D19CE7D8()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D19CFFAC, 0, 0);
  }

  else
  {
    v4 = *(v2 + 72);

    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_1D19CE964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D19CE988, 0, 0);
}

uint64_t sub_1D19CE988()
{
  v1 = v0[20];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[22] = v2;
  v3 = v0[21];
  v4 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D19CEAF8;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_23;
  v0[14] = v5;
  [v4 offWithParams:0 expectedValues:v2 expectedValueInterval:v3 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D19CEAF8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1D19CFFB4;
  }

  else
  {
    v2 = sub_1D19CFFA0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t StaticOnOffCluster.toggle()()
{
  v1[11] = v0;
  v1[12] = type metadata accessor for ClusterPath(0);
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19CEC9C, 0, 0);
}

uint64_t sub_1D19CEC9C()
{
  v1 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474E0, &unk_1D1E8D5E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = 0;
  *(inited + 40) = (*(v1 + *(type metadata accessor for StaticOnOffCluster(0) + 20)) & 1) == 0;
  *(inited + 48) = 0;
  sub_1D18D6FA8(inited);
  swift_setDeallocating();
  sub_1D19CBEB8(inited + 32);
  v0[14] = sub_1D19C69A8();

  sub_1D19CFC2C();
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1D19CEDD0;
  v4 = v0[11];

  return sub_1D1A092C4(v4);
}

uint64_t sub_1D19CEDD0(uint64_t a1)
{
  *(*v1 + 128) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D19CEED0, 0, 0);
}

uint64_t sub_1D19CEED0(uint64_t a1)
{
  v2 = v1[14];
  v3 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v3);

  v1[17] = 0x80000001D1EC1F80;
  v4 = swift_task_alloc();
  v1[18] = v4;
  *v4 = v1;
  v4[1] = sub_1D19CEFF8;
  v5 = v1[16];

  return sub_1D191710C(0x656C67676F74, 0xE600000000000000, v5, v2, 0xD000000000000013, 0x80000001D1EC1F80, &unk_1D1E8D9C8, 0);
}

uint64_t sub_1D19CEFF8()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D19CF184, 0, 0);
  }

  else
  {
    v4 = *(v2 + 128);

    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_1D19CF184()
{
  v1 = *(v0 + 152);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    v5 = *(v0 + 88);

    v6 = *(v0 + 80);
    sub_1D19CFC78(v5, v3, type metadata accessor for ClusterPath);
    v7 = type metadata accessor for MatterCommandError.MatterError(0);
    sub_1D19CFD70(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError, &protocol conformance descriptor for MatterCommandError.MatterError);
    swift_allocError();
    v9 = v8;
    v10 = v7[7];
    v11 = type metadata accessor for StaticEndpoint(0);
    (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
    *v9 = v6;
    sub_1D19CFC78(v3, &v9[v7[5]], type metadata accessor for EndpointPath);
    LOBYTE(v10) = *(v3 + *(v4 + 20));
    v12 = v6;
    sub_1D19CFBCC(v3, type metadata accessor for ClusterPath);
    v9[v7[6]] = v10;
    swift_willThrow();
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D19CF39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D19CF3C0, 0, 0);
}

uint64_t sub_1D19CF3C0()
{
  v1 = v0[20];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[22] = v2;
  v3 = v0[21];
  v4 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D19CEAF8;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_27;
  v0[14] = v5;
  [v4 toggleWithParams:0 expectedValues:v2 expectedValueInterval:v3 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t StaticOnOffCluster.toggleKnownState()()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for StaticOnOffCluster(0);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19CF5D0, 0, 0);
}

uint64_t sub_1D19CF5D0()
{
  v19 = v0;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = sub_1D1E6709C();
  __swift_project_value_buffer(v4, qword_1EE07A0B0);
  sub_1D19CFC78(v3, v2, type metadata accessor for StaticOnOffCluster);
  sub_1D19CFC78(v3, v1, type metadata accessor for StaticOnOffCluster);
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6835C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[4];
  v9 = v0[5];
  if (v7)
  {
    v17 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136446466;
    v18[0] = v11;
    v18[1] = 0xD000000000000013;
    v18[2] = 0x80000001D1EC1F80;
    v12 = ClusterPath.description.getter();
    MEMORY[0x1D3890F70](v12);

    sub_1D19CFBCC(v9, type metadata accessor for StaticOnOffCluster);
    v13 = sub_1D1B1312C(0xD000000000000013, 0x80000001D1EC1F80, v18);

    *(v10 + 4) = v13;
    *(v10 + 12) = 1026;
    LODWORD(v13) = *(v8 + *(v17 + 20));
    sub_1D19CFBCC(v8, type metadata accessor for StaticOnOffCluster);
    *(v10 + 14) = v13;
    _os_log_impl(&dword_1D16EC000, v5, v6, "%{public}s: toggling known state, currently %{BOOL,public}d", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1D3893640](v11, -1, -1);
    MEMORY[0x1D3893640](v10, -1, -1);
  }

  else
  {
    sub_1D19CFBCC(v0[4], type metadata accessor for StaticOnOffCluster);

    sub_1D19CFBCC(v9, type metadata accessor for StaticOnOffCluster);
  }

  if (*(v0[2] + *(v0[3] + 20)))
  {
    v14 = swift_task_alloc();
    v0[7] = v14;
    *v14 = v0;
    v14[1] = sub_1D19CFA44;

    return StaticOnOffCluster.off()();
  }

  else
  {
    v16 = swift_task_alloc();
    v0[6] = v16;
    *v16 = v0;
    v16[1] = sub_1D19CF910;

    return StaticOnOffCluster.on()();
  }
}

uint64_t sub_1D19CF910()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D19CFA44()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1D19CFB78()
{
  result = qword_1EC648600;
  if (!qword_1EC648600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648600);
  }

  return result;
}

uint64_t sub_1D19CFBCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D19CFC2C()
{
  result = qword_1EC648610;
  if (!qword_1EC648610)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC648610);
  }

  return result;
}

uint64_t sub_1D19CFC78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D19CFD70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D19CFDE0(uint64_t a1)
{
  result = type metadata accessor for ClusterPath(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D19CFE68()
{
  result = qword_1EC648620;
  if (!qword_1EC648620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648620);
  }

  return result;
}

unint64_t sub_1D19CFEC0()
{
  result = qword_1EC648628;
  if (!qword_1EC648628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648628);
  }

  return result;
}

unint64_t sub_1D19CFF18()
{
  result = qword_1EC648630;
  if (!qword_1EC648630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648630);
  }

  return result;
}

uint64_t StaticOnOffCluster.Command.init(clusterKind:commandID:expectedValues:commandFields:)@<X0>(_BYTE *a1@<X0>, int a2@<W1>, char *a3@<X8>)
{

  if (a2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (a2 == 1)
  {
    v7 = 0;
  }

  if (*a1 == 11)
  {
    v8 = v7;
  }

  else
  {
    v8 = 2;
  }

  *a3 = v8;
  return result;
}

unint64_t sub_1D19D007C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = 0;
  v3 = inited + 32;
  *(inited + 36) = 11;
  *(inited + 40) = (v1 & 1) == 0;
  *(inited + 48) = 0;
  v4 = sub_1D18D4B28(inited);
  swift_setDeallocating();
  sub_1D1741A30(v3, &qword_1EC646E70, &qword_1D1E83830);
  return v4;
}

uint64_t StaticOnOffCluster.Command.description.getter()
{
  if (*v0)
  {
    return 6710895;
  }

  else
  {
    return 28271;
  }
}

uint64_t StaticOnOffCluster.Command.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1919D70(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D19D01AC()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1919D70(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D19D01FC(uint64_t a1)
{
  v2 = *v1;
  sub_1D1E6920C();
  sub_1D1919D70(v4, v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D19D026C()
{
  if (*v0)
  {
    return 6710895;
  }

  else
  {
    return 28271;
  }
}

id StaticOnOffCluster.Command.command(with:endpoint:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = a2 + *(type metadata accessor for StaticEndpoint(0) + 20);
  v6 = *(v5 + *(type metadata accessor for EndpointPath(0) + 24));

  return sub_1D195A2B4(a1, v6, v4);
}

double StaticOnOffCluster.Command.matterCommand(endpoint:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646AF8, &unk_1D1E97C50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - v6;
  v8 = *v2;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 8))(v9, v10);
  if (*(v11 + 16) && (v12 = sub_1D171D278(11), (v13 & 1) != 0))
  {
    v14 = v12;
    v15 = *(v11 + 56);
    v16 = type metadata accessor for StaticCluster(0);
    v17 = *(v16 - 8);
    sub_1D19D0574(v15 + *(v17 + 72) * v14, v7);

    (*(v17 + 56))(v7, 0, 1, v16);
    sub_1D1741A30(v7, &qword_1EC646AF8, &unk_1D1E97C50);
    *(a2 + 24) = &type metadata for StaticOnOffCluster.Command;
    *(a2 + 32) = sub_1D18FA3A8();
    *a2 = v8;
  }

  else
  {

    v19 = type metadata accessor for StaticCluster(0);
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
    sub_1D1741A30(v7, &qword_1EC646AF8, &unk_1D1E97C50);
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
  }

  return result;
}

id sub_1D19D0508(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = a2 + *(type metadata accessor for StaticEndpoint(0) + 20);
  v6 = *(v5 + *(type metadata accessor for EndpointPath(0) + 24));

  return sub_1D195A2B4(a1, v6, v4);
}

uint64_t sub_1D19D0574(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCluster(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D19D05DC()
{
  result = qword_1EC648638;
  if (!qword_1EC648638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648638);
  }

  return result;
}

unint64_t sub_1D19D0630()
{
  result = qword_1EC648640;
  if (!qword_1EC648640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648640);
  }

  return result;
}

uint64_t sub_1D19D06A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v34 = MEMORY[0x1E69E7CC0];
  sub_1D178CFB0(0, v1, 0);
  v2 = v34;
  v4 = a1 + 64;
  result = sub_1D1E6869C();
  v6 = result;
  v7 = 0;
  v8 = *(a1 + 36);
  v30 = v1;
  v31 = v8;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v32 = v7;
    v11 = *(a1 + 56) + 16 * v6;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(*(a1 + 48) + 8 * v6);
    sub_1D1741AF8(v12, v13);
    sub_1D1741AF8(v12, v13);

    sub_1D1757AE8(v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
    v33 = v2;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E73A90;
    *(inited + 32) = sub_1D1E6781C();
    *(inited + 40) = v16;
    *(inited + 72) = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    *(inited + 48) = v14;
    *(inited + 80) = sub_1D1E6781C();
    *(inited + 88) = v17;
    v18 = v14;
    v19 = MatterAttributeDataBuilder.dictionary.getter();
    *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E68, &unk_1D1E717F0);
    *(inited + 96) = v19;
    v20 = sub_1D18D6E78(inited);
    v2 = v33;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
    swift_arrayDestroy();

    result = sub_1D1757AE8(v12, v13);
    v22 = *(v33 + 16);
    v21 = *(v33 + 24);
    if (v22 >= v21 >> 1)
    {
      result = sub_1D178CFB0((v21 > 1), v22 + 1, 1);
      v2 = v33;
    }

    *(v2 + 16) = v22 + 1;
    *(v2 + 8 * v22 + 32) = v20;
    v9 = 1 << *(a1 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v23 = *(a1 + 64 + 8 * v10);
    if ((v23 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v31;
    if (v31 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v24 = v23 & (-2 << (v6 & 0x3F));
    if (v24)
    {
      v9 = __clz(__rbit64(v24)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v10 << 6;
      v26 = v10 + 1;
      v27 = (a1 + 72 + 8 * v10);
      while (v26 < (v9 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_1D1716920(v6, v31, 0);
          v9 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_1D1716920(v6, v31, 0);
    }

LABEL_4:
    v7 = v32 + 1;
    v6 = v9;
    if (v32 + 1 == v30)
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

HomeDataModel::MatterCommandFields_optional __swiftcall MatterCommandFields.init(commandFields:)(Swift::OpaquePointer_optional commandFields)
{
  rawValue = commandFields.value._rawValue;
  v3 = v1;
  v4 = sub_1D18D4C50(MEMORY[0x1E69E7CC0]);
  if (!rawValue)
  {
    goto LABEL_9;
  }

  v75 = v4;
  v5 = sub_1D1E6781C();
  if (!rawValue[2])
  {

    goto LABEL_8;
  }

  v7 = sub_1D171D2F0(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_1D1741970(rawValue[7] + 32 * v7, v80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648308, &unk_1D1E8DD70);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

    v15 = 0;
LABEL_10:
    *v3 = v15;
    goto LABEL_74;
  }

  v10 = v79[0];
  v11 = *(v79[0] + 16);
  if (!v11)
  {
LABEL_69:

    v15 = v75;
    goto LABEL_10;
  }

  v12 = 0;
  while (v12 < *(v10 + 16))
  {
    v16 = *(v10 + 32 + 8 * v12);
    v17 = sub_1D1E6781C();
    v19 = v18;
    if (*(v16 + 16))
    {
      v20 = v17;

      v21 = sub_1D171D2F0(v20, v19);
      v23 = v22;

      if (v23)
      {
        sub_1D1741970(*(v16 + 56) + 32 * v21, v80);
        sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
        if (swift_dynamicCast())
        {
          v24 = v79[0];
          v25 = sub_1D1E6781C();
          if (!*(v16 + 16))
          {

            goto LABEL_33;
          }

          v73 = v24;
          v27 = sub_1D171D2F0(v25, v26);
          v29 = v28;

          if ((v29 & 1) == 0)
          {

            v24 = v73;
            goto LABEL_33;
          }

          sub_1D1741970(*(v16 + 56) + 32 * v27, v80);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_68;
          }

          v30 = v79[0];
          v31 = sub_1D1E6781C();
          if (!*(v30 + 16))
          {

LABEL_35:

            goto LABEL_13;
          }

          v33 = sub_1D171D2F0(v31, v32);
          v35 = v34;

          if ((v35 & 1) == 0)
          {
            goto LABEL_35;
          }

          sub_1D1741970(*(v30 + 56) + 32 * v33, v80);
          v24 = v73;
          if (swift_dynamicCast())
          {
            v70 = v79[0];
            v71 = v79[1];
            v36 = sub_1D1E6781C();
            if (!*(v30 + 16))
            {

              goto LABEL_38;
            }

            v69 = sub_1D171D2F0(v36, v37);
            v39 = v38;

            if ((v39 & 1) == 0)
            {

              v24 = v73;
LABEL_38:

LABEL_33:

              goto LABEL_13;
            }

            sub_1D1741970(*(v30 + 56) + 32 * v69, v80);

            sub_1D1741970(v80, v79);
            if (swift_dynamicCast())
            {
              v40 = v78;
              if (v70 == sub_1D1E6781C() && v71 == v41)
              {

                goto LABEL_45;
              }

              v44 = sub_1D1E6904C();

              if ((v44 & 1) == 0)
              {
                if (v70 == sub_1D1E6781C() && v71 == v63)
                {
                }

                else
                {
                  v64 = sub_1D1E6904C();

                  if ((v64 & 1) == 0)
                  {
                    if (v70 == sub_1D1E6781C() && v71 == v65)
                    {
                    }

                    else
                    {
                      v66 = sub_1D1E6904C();

                      if ((v66 & 1) == 0)
                      {
                        __swift_destroy_boxed_opaque_existential_1(v80);

LABEL_68:
                        goto LABEL_13;
                      }
                    }

                    v72 = [v78 unsignedIntegerValue];

                    v43 = 2;
                    goto LABEL_46;
                  }
                }

                v72 = [v78 integerValue];

                v43 = 1;
                goto LABEL_46;
              }

              v40 = v78;
LABEL_45:

              v45 = [v40 BOOLValue];

              v43 = 0;
              v72 = v45;
LABEL_46:
              v24 = v73;
            }

            else
            {

              sub_1D1741970(v80, v79);
              sub_1D1741B10(0, &qword_1EC645668, 0x1E695DEC8);
              v24 = v73;
              if ((swift_dynamicCast() & 1) == 0 || (v42 = sub_1D19D42DC(v78), v78, !v42))
              {
                __swift_destroy_boxed_opaque_existential_1(v80);
                goto LABEL_33;
              }

              v72 = v42;
              v43 = 3;
            }

            v46 = v24;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v79[0] = v75;
            v48 = sub_1D171D228(v46);
            v49 = *(v75 + 16);
            v50 = (v47 & 1) == 0;
            v51 = v49 + v50;
            if (__OFADD__(v49, v50))
            {
              goto LABEL_71;
            }

            if (*(v75 + 24) >= v51)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v77 = v43;
                v67 = v47;
                v68 = v48;
                sub_1D1733C14();
                v48 = v68;
                v47 = v67;
                v43 = v77;
              }
            }

            else
            {
              v76 = v47;
              sub_1D1720648(v51, isUniquelyReferenced_nonNull_native);
              v52 = sub_1D171D228(v46);
              v54 = v53 & 1;
              v47 = v76;
              if ((v76 & 1) != v54)
              {
                goto LABEL_73;
              }

              v48 = v52;
            }

            v55 = v79[0];
            v75 = v79[0];
            if (v47)
            {
              v56 = *(v79[0] + 56) + 16 * v48;
              v57 = *v56;
              *v56 = v72;
              v58 = *(v56 + 8);
              *(v56 + 8) = v43;
              sub_1D1757AE8(v57, v58);

              __swift_destroy_boxed_opaque_existential_1(v80);
            }

            else
            {
              *(v79[0] + 8 * (v48 >> 6) + 64) |= 1 << v48;
              *(*(v55 + 48) + 8 * v48) = v46;
              v59 = *(v55 + 56) + 16 * v48;
              *v59 = v72;
              *(v59 + 8) = v43;

              __swift_destroy_boxed_opaque_existential_1(v80);
              v60 = *(v75 + 16);
              v61 = __OFADD__(v60, 1);
              v62 = v60 + 1;
              if (v61)
              {
                goto LABEL_72;
              }

              *(v75 + 16) = v62;
            }

            goto LABEL_12;
          }
        }
      }
    }

LABEL_12:

LABEL_13:
    if (v11 == ++v12)
    {
      goto LABEL_69;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  v13 = sub_1D1E690FC();
  __break(1u);
LABEL_74:
  result.value.values._rawValue = v13;
  result.is_nil = v14;
  return result;
}

uint64_t MatterCommand.expectedValues(endpointID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = (*(a3 + 56))(a2, a3);
  v7 = MatterCommand.expectedValues(for:endpointID:)(v6, v5, a2, a3);

  return v7;
}

id MatterCommand.hm_matterCommand(for:endpointID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (((*(a4 + 24))(a3, a4) & 0x100000000) != 0)
  {
    return 0;
  }

  v19 = a1;
  v8 = sub_1D1E692CC();
  v9 = sub_1D1E692AC();
  (*(a4 + 40))(&v21, a3, a4);
  v10 = sub_1D1E692CC();
  (*(a4 + 64))(&v20, a3, a4);
  if (v20)
  {
    v11 = MatterCommandFields.asDictionary()();
  }

  else
  {
    v11 = 0;
  }

  v13 = (*(a4 + 56))(a3, a4);
  v14 = MatterCommand.expectedValues(for:endpointID:)(v13, v6, a3, a4);

  sub_1D18F9814(v14);

  if (v11)
  {
    v15 = sub_1D1E675DC();
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_allocWithZone(MEMORY[0x1E696CBD8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  v17 = sub_1D1E67BFC();

  v18 = [v16 initWithCommandID:v8 endpointID:v9 clusterID:v10 accessory:v19 commandFields:v15 expectedValues:v17];

  return v18;
}

BOOL MatterCommand.isEqual(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 24))(a2, a3);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 24))(v7, v8);
  if ((v6 & 0x100000000) != 0)
  {
    if ((v9 & 0x100000000) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((v9 & 0x100000000) != 0 || v6 != v9)
    {
      return result;
    }
  }

  (*(a3 + 40))(v43, a2, a3);
  v11 = v43[0];
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(v13 + 40))(&v45, v12, v13);
  if (dword_1D1E8DEEC[v11] != dword_1D1E8DEEC[v45])
  {
    return 0;
  }

  v14 = (*(a3 + 56))(a2, a3);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = (*(v16 + 56))(v15, v16);
  if (v14)
  {
    if (!v17)
    {
      goto LABEL_19;
    }

    v18 = sub_1D1847450(v14, v17);

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
LABEL_19:

    return 0;
  }

  (*(a3 + 64))(v43, a2, a3);
  v19 = *v43;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  (*(v21 + 64))(&v45, v20, v21);
  v22 = v45;
  if (!v19)
  {
    if (!v45)
    {

      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (!v45)
  {
LABEL_18:

    goto LABEL_19;
  }

  swift_bridgeObjectRetain_n();

  sub_1D184AD34(v19, v22);
  v24 = v23;
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  if ((v24 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v25 = (*(a3 + 48))(a2, a3);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  if (v25 != (*(v27 + 48))(v26, v27))
  {
    return 0;
  }

  v28 = (*(a3 + 88))(a2, a3);
  v30 = v29;
  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  if (v28 != (*(v32 + 88))(v31, v32) || v30 != v33)
  {
    v34 = sub_1D1E6904C();

    if (v34)
    {
      goto LABEL_28;
    }

    return 0;
  }

LABEL_28:
  (*(a3 + 80))(v43, a2, a3);
  v35 = v44;
  if (v44)
  {
    __swift_project_boxed_opaque_existential_1(v43, v44);
    sub_1D1E67B1C();
    v36 = v45;
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    sub_1D1741A30(v43, &qword_1EC648648, &unk_1D1E8DD80);
    v36 = 0;
  }

  v37 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v37);
  (*(v38 + 80))(v43, v37, v38);
  v39 = v44;
  v40 = v44 == 0;
  if (v44)
  {
    __swift_project_boxed_opaque_existential_1(v43, v44);
    sub_1D1E67B1C();
    v41 = v45;
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    sub_1D1741A30(v43, &qword_1EC648648, &unk_1D1E8DD80);
    v41 = 0;
  }

  if (!v35)
  {
    return v40;
  }

  return v39 && v36 == v41;
}

unint64_t MatterCommandFields.asDictionary()()
{
  v1 = sub_1D19D06A8(*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v3;
  v4 = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v6;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
  *(inited + 96) = v1;
  v7 = sub_1D18D6538(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
  swift_arrayDestroy();
  return v7;
}

uint64_t MatterCommand.expectedValues(for:endpointID:)(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v25 = a1 + 64;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);
    v7 = (v4 + 63) >> 6;

    v9 = 0;
    for (i = MEMORY[0x1E69E7CC0]; v6; i = v31)
    {
      v30 = i;
      v11 = v9;
LABEL_10:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v13 = v12 | (v11 << 6);
      v14 = *(*(a1 + 48) + 8 * v13);
      v15 = *(a1 + 56) + 16 * v13;
      v16 = *v15;
      v17 = *(v15 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474E0, &unk_1D1E8D5E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E739C0;
      *(inited + 32) = v14;
      v19 = inited + 32;
      *(inited + 40) = v16;
      *(inited + 48) = v17;
      v29 = sub_1D18D6FA8(inited);
      swift_setDeallocating();
      sub_1D1741AF8(v16, v17);
      sub_1D1741A30(v19, &qword_1EC6474E8, &unk_1D1E86820);
      v20 = sub_1D1E692AC();
      (*(a4 + 40))(&v31, a3, a4);
      v21 = sub_1D1E692CC();
      v22 = sub_1D1E692CC();
      v23 = [objc_opt_self() attributePathWithEndpointID:v20 clusterID:v21 attributeID:v22];

      v24 = _s13HomeDataModel13MatterCommandPAAE15_expectedValues3for19matterAttributePathSaySDySSs8Sendable_pGGSDySo18MTRAttributeIDTypeVAA0djB7BuilderOG_So0mK0CtF_0(v29, v23);

      v31 = v30;
      result = sub_1D17A386C(v24);
    }

    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= v7)
      {

        return i;
      }

      v6 = *(v25 + 8 * v11);
      ++v9;
      if (v6)
      {
        v30 = i;
        v9 = v11;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void MatterCommandFields.value()(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  v4 = sub_1D1E684DC();
  sub_1D1914B4C(v4, v3, a1);
}

HomeDataModel::MatterCommandFields __swiftcall MatterCommandFields.init(values:)(Swift::OpaquePointer values)
{
  v27 = v1;
  v3 = sub_1D18D4C50(MEMORY[0x1E69E7CC0]);
  v4 = *(values._rawValue + 2);
  if (!v4)
  {
LABEL_16:

    *v27 = v3;
    return result;
  }

  v5 = 0;
  v6 = values._rawValue + 40;
  while (v5 < *(values._rawValue + 2))
  {
    v10 = *(v6 - 1);
    v11 = *v6;
    sub_1D1741AF8(v10, *v6);
    v12 = sub_1D1E6821C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_1D171D228(v12);
    v16 = v3[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      goto LABEL_18;
    }

    v20 = v15;
    if (v3[3] < v19)
    {
      sub_1D1720648(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_1D171D228(v12);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v20)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v25 = v14;
    sub_1D1733C14();
    v14 = v25;
    if (v20)
    {
LABEL_3:
      v7 = v3[7] + 16 * v14;
      v8 = *v7;
      *v7 = v10;
      v9 = *(v7 + 8);
      *(v7 + 8) = v11;
      sub_1D1757AE8(v8, v9);

      goto LABEL_4;
    }

LABEL_12:
    v3[(v14 >> 6) + 8] |= 1 << v14;
    *(v3[6] + 8 * v14) = v12;
    v22 = v3[7] + 16 * v14;
    *v22 = v10;
    *(v22 + 8) = v11;
    v23 = v3[2];
    v18 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v18)
    {
      goto LABEL_19;
    }

    v3[2] = v24;
LABEL_4:
    ++v5;

    v6 += 16;
    if (v4 == v5)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  result.values._rawValue = sub_1D1E690FC();
  __break(1u);
  return result;
}

void MatterCommandFields.init(value:contextTag:)(uint64_t a1@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = sub_1D18D4C50(MEMORY[0x1E69E7CC0]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = 0x8000000000000000;
  sub_1D17524E4(v5, v6, a2, isUniquelyReferenced_nonNull_native);

  *a3 = v7;
}

double MatterCommand.operationType.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t MatterCommand.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (((*(a3 + 24))(a2, a3) & 0x100000000) != 0)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6924C();
  }

  (*(a3 + 40))(&v11, a2, a3);
  sub_1D1E6924C();
  v6 = (*(a3 + 56))(a2, a3);
  if (v6)
  {
    v7 = v6;
    sub_1D1E6922C();
    sub_1D18560F4(a1, v7);
  }

  else
  {
    sub_1D1E6922C();
  }

  (*(a3 + 64))(&v10, a2, a3);
  v8 = v10;
  if (v10)
  {
    sub_1D1E6922C();
    sub_1D1855E28(a1, v8);
  }

  else
  {
    sub_1D1E6922C();
  }

  (*(a3 + 88))(a2, a3);
  sub_1D1E678EC();
}

uint64_t sub_1D19D21F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticMatterDevice(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static MatterDeviceType.primaryDeviceType(for:)(*(a2 + *(v7 + 40)), &v25);
  if (v25 == 23)
  {
    v10 = sub_1D1909778();
    sub_1D19097CC(a2, v9);
    v11 = sub_1D1E685AC();
    v12 = *(v11 - 8);
    MEMORY[0x1EEE9AC00](v11);
    v14 = (&v21 - v13);
    v15 = a1;
    StaticRVCClusterGroup.Command.Template.init(matterCommand:device:)(v15, v9, v14);
    v16 = off_1F4D71968;
    if ((*(off_1F4D71968 + 6))(v14, 1, &type metadata for StaticRVCClusterGroup.Command.Template) == 1)
    {
      sub_1D19D4620(a2);

      (*(v12 + 8))(v14, v11);
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
    }

    else
    {
      *(&v26 + 1) = &type metadata for StaticRVCClusterGroup.Command.Template;
      v27 = v10;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
      v16[4](boxed_opaque_existential_1, v14, &type metadata for StaticRVCClusterGroup.Command.Template);

      sub_1D19D4620(a2);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648650, &qword_1D1E8DDA0);
    result = swift_dynamicCast();
    if (result)
    {
      v19 = v24;
      if ((v22 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL || v24 >= 2u)
      {
        v20 = v23;
        *a3 = v22;
        *(a3 + 8) = v20;
        *(a3 + 16) = v19;
        return result;
      }
    }
  }

  else
  {

    result = sub_1D19D4620(a2);
  }

  *a3 = xmmword_1D1E8DD60;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_1D19D249C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticMatterDevice(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static MatterDeviceType.primaryDeviceType(for:)(*(a2 + *(v7 + 40)), &v23);
  if (v23 == 23)
  {
    v10 = sub_1D1909778();
    sub_1D19097CC(a2, v9);
    v11 = sub_1D1E685AC();
    v12 = *(v11 - 8);
    MEMORY[0x1EEE9AC00](v11);
    v14 = (&v20 - v13);
    v15 = a1;
    StaticRVCClusterGroup.Command.Template.init(matterCommand:device:)(v15, v9, v14);
    v16 = off_1F4D71968;
    if ((*(off_1F4D71968 + 6))(v14, 1, &type metadata for StaticRVCClusterGroup.Command.Template) == 1)
    {
      sub_1D19D4620(a2);

      (*(v12 + 8))(v14, v11);
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
    }

    else
    {
      *(&v24 + 1) = &type metadata for StaticRVCClusterGroup.Command.Template;
      v25 = v10;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
      v16[4](boxed_opaque_existential_1, v14, &type metadata for StaticRVCClusterGroup.Command.Template);

      sub_1D19D4620(a2);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648650, &qword_1D1E8DDA0);
    result = swift_dynamicCast();
    if (result && v22 != 255)
    {
      v19 = (v21 | (v22 << 32)) >> 32;
      *a3 = v21;
      goto LABEL_9;
    }
  }

  else
  {

    result = sub_1D19D4620(a2);
  }

  *a3 = 0;
  LOBYTE(v19) = -1;
LABEL_9:
  *(a3 + 4) = v19;
  return result;
}

uint64_t sub_1D19D2728@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for StaticMatterDevice(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static MatterDeviceType.primaryDeviceType(for:)(*(a2 + *(v7 + 40)), &v22);
  if (v22 == 23)
  {
    v10 = sub_1D1909778();
    sub_1D19097CC(a2, v9);
    v11 = sub_1D1E685AC();
    v12 = *(v11 - 8);
    MEMORY[0x1EEE9AC00](v11);
    v14 = &v20[-v13];
    v15 = a1;
    StaticRVCClusterGroup.Command.Template.init(matterCommand:device:)(v15, v9, v14);
    v16 = off_1F4D71968;
    if ((*(off_1F4D71968 + 6))(v14, 1, &type metadata for StaticRVCClusterGroup.Command.Template) == 1)
    {
      sub_1D19D4620(a2);

      (*(v12 + 8))(v14, v11);
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
    }

    else
    {
      *(&v23 + 1) = &type metadata for StaticRVCClusterGroup.Command.Template;
      v24 = v10;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
      v16[4](boxed_opaque_existential_1, v14, &type metadata for StaticRVCClusterGroup.Command.Template);

      sub_1D19D4620(a2);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648650, &qword_1D1E8DDA0);
    result = swift_dynamicCast();
    if (result && v21 != 2)
    {
      v19 = v21 & 1;
      goto LABEL_9;
    }
  }

  else
  {

    result = sub_1D19D4620(a2);
  }

  v19 = 2;
LABEL_9:
  *a3 = v19;
  return result;
}

uint64_t sub_1D19D29A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for StaticMatterDevice(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static MatterDeviceType.primaryDeviceType(for:)(*(a2 + *(v7 + 40)), &v21);
  if (v21 != 23)
  {

    result = sub_1D19D4620(a2);
LABEL_8:
    v19 = 7;
    goto LABEL_9;
  }

  v10 = sub_1D1909778();
  sub_1D19097CC(a2, v9);
  v11 = sub_1D1E685AC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20[-v13];
  v15 = a1;
  StaticRVCClusterGroup.Command.Template.init(matterCommand:device:)(v15, v9, v14);
  v16 = off_1F4D71968;
  if ((*(off_1F4D71968 + 6))(v14, 1, &type metadata for StaticRVCClusterGroup.Command.Template) == 1)
  {
    sub_1D19D4620(a2);

    (*(v12 + 8))(v14, v11);
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
  }

  else
  {
    *(&v22 + 1) = &type metadata for StaticRVCClusterGroup.Command.Template;
    v23 = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
    v16[4](boxed_opaque_existential_1, v14, &type metadata for StaticRVCClusterGroup.Command.Template);

    sub_1D19D4620(a2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648650, &qword_1D1E8DDA0);
  result = swift_dynamicCast();
  if (!result)
  {
    goto LABEL_8;
  }

  v19 = v20[15];
LABEL_9:
  *a3 = v19;
  return result;
}

uint64_t MatterCommandTemplate.init(matterCommand:device:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D1E685AC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for StaticMatterDevice(0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static MatterDeviceType.primaryDeviceType(for:)(*(a2 + *(v13 + 40)), &v33);
  if (v33 == 23)
  {
    v30 = v9;
    v32 = a4;
    v29 = sub_1D1909778();
    sub_1D19097CC(a2, v15);
    v16 = sub_1D1E685AC();
    v31 = &v29;
    v17 = *(v16 - 8);
    MEMORY[0x1EEE9AC00](v16);
    v19 = (&v29 - v18);
    v20 = a1;
    StaticRVCClusterGroup.Command.Template.init(matterCommand:device:)(v20, v15, v19);
    v21 = off_1F4D71968;
    if ((*(off_1F4D71968 + 6))(v19, 1, &type metadata for StaticRVCClusterGroup.Command.Template) == 1)
    {
      sub_1D19D4620(a2);

      (*(v17 + 8))(v19, v16);
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
    }

    else
    {
      *(&v34 + 1) = &type metadata for StaticRVCClusterGroup.Command.Template;
      v35 = v29;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
      v21[4](boxed_opaque_existential_1, v19, &type metadata for StaticRVCClusterGroup.Command.Template);

      sub_1D19D4620(a2);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648650, &qword_1D1E8DDA0);
    v24 = swift_dynamicCast();
    v22 = *(a3 - 8);
    v25 = *(v22 + 56);
    if (v24)
    {
      v26 = *(a3 - 8);
      v25(v11, 0, 1, a3);
      v27 = v32;
      (*(v26 + 32))(v32, v11, a3);
      return (v25)(v27, 0, 1, a3);
    }

    v25(v11, 1, 1, a3);
    (*(v30 + 8))(v11, v8);
    a4 = v32;
  }

  else
  {

    sub_1D19D4620(a2);
    v22 = *(a3 - 8);
  }

  return (*(v22 + 56))(a4, 1, 1, a3);
}

uint64_t MatterCommand.isSimilarCommand(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = (*(v6 + 56))(v5, v6);
  if (result)
  {
    v8 = result;
    result = (*(a3 + 56))(a2, a3);
    if (result)
    {
      v9 = 0;
      v10 = 1 << *(v8 + 32);
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      else
      {
        v11 = -1;
      }

      v12 = v11 & *(v8 + 64);
LABEL_8:
      if (v12)
      {
        v13 = v9;
LABEL_13:
        v14 = 0;
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v16 = *(v8 + 48) + ((v13 << 9) | (8 * v15));
        v17 = 1 << *(result + 32);
        if (v17 < 64)
        {
          v18 = ~(-1 << v17);
        }

        else
        {
          v18 = -1;
        }

        v19 = v18 & *(result + 64);
        v20 = *v16;
        v21 = *(v16 + 4);
        v22 = (v17 + 63) >> 6;
        while (v19)
        {
LABEL_22:
          v24 = __clz(__rbit64(v19));
          v19 &= v19 - 1;
          v25 = *(result + 48) + ((v14 << 9) | (8 * v24));
          if (*v25 == v20 && dword_1D1E8DEEC[*(v25 + 4)] == dword_1D1E8DEEC[v21])
          {

            return 1;
          }
        }

        while (1)
        {
          v23 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v23 >= v22)
          {
            v9 = v13;
            goto LABEL_8;
          }

          v19 = *(result + 64 + 8 * v23);
          ++v14;
          if (v19)
          {
            v14 = v23;
            goto LABEL_22;
          }
        }

        __break(1u);
      }

      else
      {
        while (1)
        {
          v13 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v13 >= ((v10 + 63) >> 6))
          {

            goto LABEL_26;
          }

          v12 = *(v8 + 64 + 8 * v13);
          ++v9;
          if (v12)
          {
            goto LABEL_13;
          }
        }
      }

      __break(1u);
    }

    else
    {
LABEL_26:

      return 0;
    }
  }

  return result;
}

uint64_t MatterCommandFields.values.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MatterCommandFields.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1855E28(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D19D32E0()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1855E28(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D19D3330(uint64_t a1)
{
  v2 = *v1;
  sub_1D1E6920C();
  sub_1D1855E28(v4, v2);
  return sub_1D1E6926C();
}

uint64_t Array<A>.byExecutionOrder()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D1E67D1C();
  swift_getWitnessTable();
  return sub_1D1E67ABC();
}

uint64_t sub_1D19D3460(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D1E0C0A8(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1D19D34CC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D19D34CC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D1E68F9C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
        v5 = sub_1D1E67C8C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D19D3740(v7, v8, a1, v4);
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
    return sub_1D19D35D4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D19D35D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_5:
    v24 = a3;
    v7 = v6;
    v17 = v5;
    while (1)
    {
      sub_1D17419CC(v5, &v21);
      sub_1D17419CC(v5 - 40, v18);
      v8 = v22;
      v9 = v23;
      __swift_project_boxed_opaque_existential_1(&v21, v22);
      v10 = (*(v9 + 48))(v8, v9);
      v11 = v19;
      v12 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      v13 = (*(v12 + 48))(v11, v12);
      __swift_destroy_boxed_opaque_existential_1(v18);
      result = __swift_destroy_boxed_opaque_existential_1(&v21);
      if (v10 >= v13)
      {
LABEL_4:
        a3 = v24 + 1;
        v5 = v17 + 40;
        --v6;
        if (v24 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_1D1742190(v5, &v21);
      v14 = *(v5 - 24);
      *v5 = *(v5 - 40);
      *(v5 + 16) = v14;
      *(v5 + 32) = *(v5 - 8);
      result = sub_1D1742190(&v21, v5 - 40);
      v5 -= 40;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D19D3740(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v106 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v8 = *v106;
    if (!*v106)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_123:
      result = sub_1D1E0BE44(v9);
      v9 = result;
    }

    v120 = v9;
    v93 = *(v9 + 16);
    if (v93 >= 2)
    {
      while (1)
      {
        v94 = *v6;
        if (!*v6)
        {
          goto LABEL_127;
        }

        v6 = (v93 - 1);
        v95 = *(v9 + 16 * v93);
        v96 = v9;
        v97 = *(v9 + 16 * (v93 - 1) + 32);
        v9 = *(v9 + 16 * (v93 - 1) + 40);
        sub_1D19D3F04((v94 + 40 * v95), (v94 + 40 * v97), v94 + 40 * v9, v8);
        if (v5)
        {
        }

        if (v9 < v95)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_1D1E0BE44(v96);
        }

        if (v93 - 2 >= *(v96 + 2))
        {
          goto LABEL_117;
        }

        v98 = &v96[16 * v93];
        *v98 = v95;
        *(v98 + 1) = v9;
        v120 = v96;
        result = sub_1D1E0BDB8(v6);
        v9 = v120;
        v93 = *(v120 + 16);
        v6 = a3;
        if (v93 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if ((v8 + 1) >= v7)
    {
      goto LABEL_21;
    }

    v112 = v7;
    v102 = v5;
    v12 = *v6;
    sub_1D17419CC(*v6 + 40 * v11, &v117);
    v13 = 40 * v8;
    v14 = v12 + 40 * v8;
    sub_1D17419CC(v14, v114);
    v15 = v118;
    v16 = v119;
    __swift_project_boxed_opaque_existential_1(&v117, v118);
    v110 = (*(v16 + 48))(v15, v16);
    v18 = v115;
    v17 = v116;
    __swift_project_boxed_opaque_existential_1(v114, v115);
    v108 = (*(v17 + 48))(v18, v17);
    __swift_destroy_boxed_opaque_existential_1(v114);
    result = __swift_destroy_boxed_opaque_existential_1(&v117);
    v104 = v8;
    v19 = v8 + 2;
    v20 = v14 + 80;
    while (1)
    {
      v11 = v112;
      if (v112 == v19)
      {
        break;
      }

      sub_1D17419CC(v20, &v117);
      sub_1D17419CC(v20 - 40, v114);
      v22 = v118;
      v21 = v119;
      __swift_project_boxed_opaque_existential_1(&v117, v118);
      v8 = (*(v21 + 48))(v22, v21);
      v24 = v115;
      v23 = v116;
      __swift_project_boxed_opaque_existential_1(v114, v115);
      v25 = (*(v23 + 48))(v24, v23);
      __swift_destroy_boxed_opaque_existential_1(v114);
      result = __swift_destroy_boxed_opaque_existential_1(&v117);
      ++v19;
      v20 += 40;
      if (v110 < v108 == v8 >= v25)
      {
        v11 = v19 - 1;
        break;
      }
    }

    v5 = v102;
    v6 = a3;
    if (v110 < v108)
    {
      v8 = v104;
      if (v11 < v104)
      {
        goto LABEL_120;
      }

      if (v104 >= v11)
      {
        v10 = v104;
        goto LABEL_21;
      }

      v99 = v9;
      v26 = 40 * v11 - 40;
      v27 = v11;
      do
      {
        if (v8 != --v27)
        {
          v32 = *a3;
          if (!*a3)
          {
            goto LABEL_126;
          }

          v28 = v32 + v13;
          v29 = v32 + v26;
          sub_1D1742190((v32 + v13), &v117);
          v30 = *(v29 + 32);
          v31 = *(v29 + 16);
          *v28 = *v29;
          *(v28 + 16) = v31;
          *(v28 + 32) = v30;
          result = sub_1D1742190(&v117, v29);
        }

        ++v8;
        v26 -= 40;
        v13 += 40;
      }

      while (v8 < v27);
      v9 = v99;
    }

    v10 = v104;
LABEL_21:
    v33 = v6[1];
    if (v11 < v33)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_119;
      }

      if (v11 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_121;
        }

        if (&v10[a4] >= v33)
        {
          v8 = v6[1];
        }

        else
        {
          v8 = &v10[a4];
        }

        if (v8 < v10)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v11 != v8)
        {
          break;
        }
      }
    }

    v8 = v11;
    if (v11 < v10)
    {
      goto LABEL_118;
    }

LABEL_31:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D177D070(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v35 = *(v9 + 16);
    v34 = *(v9 + 24);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_1D177D070((v34 > 1), v35 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v36;
    v37 = v9 + 16 * v35;
    *(v37 + 32) = v10;
    *(v37 + 40) = v8;
    v38 = *v106;
    if (!*v106)
    {
      goto LABEL_128;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v9 + 32);
          v41 = *(v9 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_50:
          if (v43)
          {
            goto LABEL_107;
          }

          v56 = (v9 + 16 * v36);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_110;
          }

          v62 = (v9 + 32 + 16 * v39);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_114;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v66 = (v9 + 16 * v36);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_64:
        if (v61)
        {
          goto LABEL_109;
        }

        v69 = v9 + 16 * v39;
        v71 = *(v69 + 32);
        v70 = *(v69 + 40);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_112;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_71:
        v77 = v39 - 1;
        if (v39 - 1 >= v36)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_122;
        }

        if (!*v6)
        {
          goto LABEL_125;
        }

        v78 = *(v9 + 32 + 16 * v77);
        v79 = *(v9 + 32 + 16 * v39 + 8);
        sub_1D19D3F04((*v6 + 40 * v78), (*v6 + 40 * *(v9 + 32 + 16 * v39)), *v6 + 40 * v79, v38);
        if (v5)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D1E0BE44(v9);
        }

        if (v77 >= *(v9 + 16))
        {
          goto LABEL_104;
        }

        v80 = v9 + 16 * v77;
        *(v80 + 32) = v78;
        *(v80 + 40) = v79;
        v120 = v9;
        result = sub_1D1E0BDB8(v39);
        v9 = v120;
        v36 = *(v120 + 16);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v44 = v9 + 32 + 16 * v36;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_105;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_106;
      }

      v51 = (v9 + 16 * v36);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_108;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_111;
      }

      if (v55 >= v47)
      {
        v73 = (v9 + 32 + 16 * v39);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_115;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_91;
    }
  }

  v100 = v9;
  v103 = v5;
  v105 = v10;
  v81 = *v6;
  v82 = *v6 + 40 * v11;
  v83 = v10 - v11;
  v109 = v8;
LABEL_82:
  v111 = v82;
  v113 = v11;
  v84 = v83;
  while (1)
  {
    sub_1D17419CC(v82, &v117);
    sub_1D17419CC(v82 - 40, v114);
    v85 = v118;
    v86 = v119;
    __swift_project_boxed_opaque_existential_1(&v117, v118);
    v87 = (*(v86 + 48))(v85, v86);
    v88 = v115;
    v89 = v116;
    __swift_project_boxed_opaque_existential_1(v114, v115);
    v90 = (*(v89 + 48))(v88, v89);
    __swift_destroy_boxed_opaque_existential_1(v114);
    result = __swift_destroy_boxed_opaque_existential_1(&v117);
    if (v87 >= v90)
    {
LABEL_81:
      ++v11;
      v82 = v111 + 40;
      --v83;
      v8 = v109;
      if (v113 + 1 != v109)
      {
        goto LABEL_82;
      }

      v5 = v103;
      v10 = v105;
      v6 = a3;
      v9 = v100;
      if (v109 < v105)
      {
        goto LABEL_118;
      }

      goto LABEL_31;
    }

    if (!v81)
    {
      break;
    }

    sub_1D1742190(v82, &v117);
    v91 = *(v82 - 24);
    *v82 = *(v82 - 40);
    *(v82 + 16) = v91;
    *(v82 + 32) = *(v82 - 8);
    sub_1D1742190(&v117, v82 - 40);
    v82 -= 40;
    if (__CFADD__(v84++, 1))
    {
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
  return result;
}

uint64_t sub_1D19D3F04(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = (a2 - __src) / 40;
  v8 = a3 - a2;
  v9 = (a3 - a2) / 40;
  if (v7 >= v9)
  {
    v27 = a2;
    if (a4 != a2 || &a2[40 * v9] <= a4)
    {
      v28 = a4;
      memmove(a4, a2, 40 * v9);
      a4 = v28;
    }

    v12 = &a4[40 * v9];
    v11 = a4;
    if (v8 < 40 || v27 <= v5)
    {
      v26 = v27;
      goto LABEL_36;
    }

    v51 = v5;
    v59 = a4;
    while (1)
    {
      __dst = v27;
      v29 = (v27 - 40);
      v30 = (v12 - 40);
      v31 = v4 - 40;
      while (1)
      {
        v34 = v30 + 40;
        v35 = v31;
        v36 = (v31 + 40);
        sub_1D17419CC(v30, v56);
        v37 = v29;
        sub_1D17419CC(v29, v53);
        v39 = v57;
        v38 = v58;
        __swift_project_boxed_opaque_existential_1(v56, v57);
        v40 = (*(v38 + 48))(v39, v38);
        v42 = v54;
        v41 = v55;
        __swift_project_boxed_opaque_existential_1(v53, v54);
        v43 = (*(v41 + 48))(v42, v41);
        __swift_destroy_boxed_opaque_existential_1(v53);
        __swift_destroy_boxed_opaque_existential_1(v56);
        if (v40 < v43)
        {
          break;
        }

        if (v36 != v34)
        {
          v44 = *v30;
          v45 = *(v30 + 16);
          *(v35 + 32) = *(v30 + 32);
          *v35 = v44;
          *(v35 + 16) = v45;
        }

        v32 = v30 - 40;
        v31 = v35 - 40;
        v11 = v59;
        v33 = v30 > v59;
        v30 -= 40;
        v29 = v37;
        if (!v33)
        {
          v12 = (v32 + 40);
          v26 = __dst;
          goto LABEL_36;
        }
      }

      v26 = v37;
      v4 = v35;
      if (v36 != __dst)
      {
        v46 = *v37;
        v47 = *(v37 + 1);
        *(v35 + 32) = *(v37 + 4);
        *v35 = v46;
        *(v35 + 16) = v47;
      }

      v11 = v59;
      if (v34 > v59)
      {
        v12 = (v30 + 40);
        v27 = v37;
        if (v37 > v51)
        {
          continue;
        }
      }

      v12 = (v30 + 40);
      goto LABEL_36;
    }
  }

  v11 = a4;
  if (a4 != __src || &__src[40 * v7] <= a4)
  {
    memmove(a4, __src, 40 * v7);
  }

  v12 = &v11[40 * v7];
  if (v6 < 40 || a2 >= v4)
  {
    v26 = v5;
    goto LABEL_36;
  }

  v13 = a2;
  do
  {
    v14 = v4;
    v15 = v12;
    sub_1D17419CC(v13, v56);
    sub_1D17419CC(v11, v53);
    v16 = v57;
    v17 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v18 = (*(v17 + 48))(v16, v17);
    v19 = v54;
    v20 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v21 = (*(v20 + 48))(v19, v20);
    __swift_destroy_boxed_opaque_existential_1(v53);
    __swift_destroy_boxed_opaque_existential_1(v56);
    if (v18 < v21)
    {
      v22 = v13;
      v23 = v5 == v13;
      v13 += 40;
      if (v23)
      {
        goto LABEL_14;
      }

LABEL_13:
      v24 = *v22;
      v25 = *(v22 + 1);
      *(v5 + 4) = *(v22 + 4);
      *v5 = v24;
      *(v5 + 1) = v25;
      goto LABEL_14;
    }

    v22 = v11;
    v23 = v5 == v11;
    v11 += 40;
    if (!v23)
    {
      goto LABEL_13;
    }

LABEL_14:
    v5 += 40;
    v12 = v15;
    if (v11 >= v15)
    {
      break;
    }

    v4 = v14;
  }

  while (v13 < v14);
  v26 = v5;
LABEL_36:
  v48 = ((v12 - v11) * 0x6666666666666667) >> 64;
  v49 = (v48 >> 4) + (v48 >> 63);
  if (v26 != v11 || v26 >= &v11[40 * v49])
  {
    memmove(v26, v11, 40 * v49);
  }

  return 1;
}

char *sub_1D19D42DC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  sub_1D1E67C0C();
  return 0;
}

uint64_t sub_1D19D4620(uint64_t a1)
{
  v2 = type metadata accessor for StaticMatterDevice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1D19D467C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v2 + 48);
  v4 = v3(v1, v2);
  return v4 < v3(v1, v2);
}

unint64_t sub_1D19D4708()
{
  result = qword_1EC648658;
  if (!qword_1EC648658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648658);
  }

  return result;
}

uint64_t dispatch thunk of MatterCommandProvider.run(command:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D17C4BFC;

  return v9(a1, a2, a3);
}

HomeDataModel::MatterStatusCode_optional __swiftcall MatterStatusCode.init(rawValue:)(HomeDataModel::MatterStatusCode_optional rawValue)
{
  if (rawValue.value > 0x88u)
  {
    if (rawValue.value == 137)
    {
      rawValue.value = HomeDataModel_MatterStatusCode_resourcesExhausted;
      *v1 = HomeDataModel_MatterStatusCode_resourcesExhausted;
      return rawValue;
    }

    if (rawValue.value != 203)
    {
      if (rawValue.value == 156)
      {
        rawValue.value = HomeDataModel_MatterStatusCode_busy;
        *v1 = HomeDataModel_MatterStatusCode_busy;
        return rawValue;
      }

      goto LABEL_11;
    }

    rawValue.value = HomeDataModel_MatterStatusCode_invalidInState;
    *v1 = HomeDataModel_MatterStatusCode_invalidInState;
  }

  else
  {
    if (rawValue.value < HomeDataModel_MatterStatusCode_busy)
    {
LABEL_12:
      *v1 = rawValue;
      return rawValue;
    }

    if (rawValue.value != 126)
    {
      if (rawValue.value == (HomeDataModel_MatterStatusCode_unsupportedAccess|0x80))
      {
        rawValue.value = HomeDataModel_MatterStatusCode_invalidCommand;
        *v1 = HomeDataModel_MatterStatusCode_invalidCommand;
        return rawValue;
      }

LABEL_11:
      rawValue.value = HomeDataModel_MatterStatusCode_unknownDefault;
      goto LABEL_12;
    }

    rawValue.value = HomeDataModel_MatterStatusCode_unsupportedAccess;
    *v1 = HomeDataModel_MatterStatusCode_unsupportedAccess;
  }

  return rawValue;
}

unint64_t sub_1D19D4B98()
{
  result = qword_1EC648660;
  if (!qword_1EC648660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648660);
  }

  return result;
}

uint64_t sub_1D19D4BEC()
{
  sub_1D1E6920C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19D4C8C(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

unint64_t sub_1D19D4D2C()
{
  result = qword_1EC648668;
  if (!qword_1EC648668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648668);
  }

  return result;
}

uint64_t StaticEndpoint.run(command:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = type metadata accessor for MatterCommandError(0);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = type metadata accessor for ClusterPath(0);
  v2[14] = swift_task_alloc();
  v2[15] = *(type metadata accessor for StaticCluster(0) - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19D4EB4, 0, 0);
}

uint64_t sub_1D19D4EB4()
{
  v41 = v0;
  v1 = *(v0 + 64);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 24))(v2, v3);
  if ((v4 & 0x100000000) != 0)
  {

    v19 = *(v0 + 8);
  }

  else
  {
    v5 = v4;
    v6 = *(v0 + 72);
    v8 = v1[3];
    v7 = v1[4];
    __swift_project_boxed_opaque_existential_1(*(v0 + 64), v8);
    (*(v7 + 40))(&v40, v8, v7);
    v9 = v40;
    v10 = type metadata accessor for StaticEndpoint(0);
    *(v0 + 144) = v10;
    v11 = *(v6 + *(v10 + 36));
    if (*(v11 + 16))
    {
      v12 = sub_1D171D278(v9);
      if (v13)
      {
        v15 = *(v0 + 128);
        v14 = *(v0 + 136);
        sub_1D19D5F74(*(v11 + 56) + *(*(v0 + 120) + 72) * v12, v15, type metadata accessor for StaticCluster);
        sub_1D19D5FDC(v15, v14, type metadata accessor for StaticCluster);
        v16 = swift_task_alloc();
        *(v0 + 152) = v16;
        *v16 = v0;
        v16[1] = sub_1D19D5480;
        v17 = *(v0 + 64);

        return sub_1D1A324EC(v17);
      }
    }

    v20 = sub_1D1A38ABC();
    v21 = sub_1D17198DC(v9, v20);

    if (v21)
    {
      v22 = swift_task_alloc();
      *(v0 + 168) = v22;
      *v22 = v0;
      v22[1] = sub_1D19D5644;
      v23 = *(v0 + 64);

      return sub_1D1A38D68(v23);
    }

    sub_1D17419CC(*(v0 + 64), v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
    if (swift_dynamicCast())
    {
      v24 = swift_task_alloc();
      *(v0 + 184) = v24;
      *v24 = v0;
      v24[1] = sub_1D19D57B8;

      return StaticEndpoint.identify()();
    }

    v25 = *(v0 + 104);
    v26 = *(v0 + 112);
    v27 = *(v0 + 80);
    sub_1D19D5F74(*(v0 + 72) + *(v10 + 20), v26, type metadata accessor for EndpointPath);
    *(v26 + *(v25 + 20)) = v9;
    sub_1D196E660();
    v28 = swift_allocError();
    v30 = v29;
    (*(*(v10 - 8) + 56))(v29 + v27[8], 1, 1, v10);
    *v30 = -1024;
    sub_1D19D5FDC(v26, v30 + v27[5], type metadata accessor for ClusterPath);
    *(v30 + v27[6]) = v5;
    v31 = (v30 + v27[7]);
    *v31 = 0;
    v31[1] = 0;
    swift_willThrow();
    *(v0 + 56) = v28;
    v32 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    if (swift_dynamicCast())
    {
      v33 = *(v0 + 144);
      v34 = *(v0 + 88);
      v35 = *(v0 + 96);
      v37 = *(v0 + 72);
      v36 = *(v0 + 80);

      sub_1D19D5FDC(v35, v34, type metadata accessor for MatterCommandError);
      v38 = *(v36 + 32);
      sub_1D19D5F0C(v34 + v38);
      sub_1D19D5F74(v37, v34 + v38, type metadata accessor for StaticEndpoint);
      (*(*(v33 - 8) + 56))(v34 + v38, 0, 1, v33);
      swift_allocError();
      sub_1D19D5F74(v34, v39, type metadata accessor for MatterCommandError);
      swift_willThrow();
      sub_1D19D6044(v34, type metadata accessor for MatterCommandError);
    }

    v19 = *(v0 + 8);
  }

  return v19();
}

uint64_t sub_1D19D5480()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1D19D592C;
  }

  else
  {
    v2 = sub_1D19D5594;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D19D5594()
{
  sub_1D19D6044(*(v0 + 136), type metadata accessor for StaticCluster);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D19D5644()
{
  v2 = *v1;
  *(v2 + 176) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D19D5B34, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D19D57B8()
{
  v2 = *v1;
  *(v2 + 192) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D19D5D20, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D19D592C()
{
  sub_1D19D6044(*(v0 + 136), type metadata accessor for StaticCluster);
  v1 = *(v0 + 160);
  *(v0 + 56) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 144);
    v4 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);

    sub_1D19D5FDC(v5, v4, type metadata accessor for MatterCommandError);
    v8 = *(v6 + 32);
    sub_1D19D5F0C(v4 + v8);
    sub_1D19D5F74(v7, v4 + v8, type metadata accessor for StaticEndpoint);
    (*(*(v3 - 8) + 56))(v4 + v8, 0, 1, v3);
    sub_1D196E660();
    swift_allocError();
    sub_1D19D5F74(v4, v9, type metadata accessor for MatterCommandError);
    swift_willThrow();
    sub_1D19D6044(v4, type metadata accessor for MatterCommandError);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D19D5B34()
{
  v1 = *(v0 + 176);
  *(v0 + 56) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 144);
    v4 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);

    sub_1D19D5FDC(v5, v4, type metadata accessor for MatterCommandError);
    v8 = *(v6 + 32);
    sub_1D19D5F0C(v4 + v8);
    sub_1D19D5F74(v7, v4 + v8, type metadata accessor for StaticEndpoint);
    (*(*(v3 - 8) + 56))(v4 + v8, 0, 1, v3);
    sub_1D196E660();
    swift_allocError();
    sub_1D19D5F74(v4, v9, type metadata accessor for MatterCommandError);
    swift_willThrow();
    sub_1D19D6044(v4, type metadata accessor for MatterCommandError);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D19D5D20()
{
  v1 = *(v0 + 192);
  *(v0 + 56) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 144);
    v4 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);

    sub_1D19D5FDC(v5, v4, type metadata accessor for MatterCommandError);
    v8 = *(v6 + 32);
    sub_1D19D5F0C(v4 + v8);
    sub_1D19D5F74(v7, v4 + v8, type metadata accessor for StaticEndpoint);
    (*(*(v3 - 8) + 56))(v4 + v8, 0, 1, v3);
    sub_1D196E660();
    swift_allocError();
    sub_1D19D5F74(v4, v9, type metadata accessor for MatterCommandError);
    swift_willThrow();
    sub_1D19D6044(v4, type metadata accessor for MatterCommandError);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D19D5F0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D19D5F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D19D5FDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D19D6044(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t StaticEndpoint.identify()()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for ClusterPath(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19D6138, 0, 0);
}

uint64_t sub_1D19D6138()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = type metadata accessor for StaticEndpoint(0);
  *(v0 + 40) = v4;
  v5 = *(v4 + 20);
  *(v0 + 136) = v5;
  sub_1D19B0B0C(v3 + v5, v2);
  *(v2 + *(v1 + 20)) = 10;
  sub_1D1741B10(0, &qword_1EC648670, 0x1E696F5A0);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_1D19D6224;
  v7 = *(v0 + 32);

  return sub_1D1A092C4(v7);
}

uint64_t sub_1D19D6224(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D19D6324, 0, 0);
}

uint64_t sub_1D19D6324()
{
  v49 = v0;
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 16);
    if ((*(v2 + *(*(v0 + 40) + 60)) - 1) > 3u)
    {
      v3 = 5;
    }

    else
    {
      v3 = qword_1D1E8E388[(*(v2 + *(*(v0 + 40) + 60)) - 1)];
    }

    v6 = v2 + *(v0 + 136);
    v7 = [objc_allocWithZone(MEMORY[0x1E696F638]) init];
    *(v0 + 64) = v7;
    v8 = sub_1D1E685DC();
    [v7 setIdentifyTime_];

    v9 = *(v6 + *(type metadata accessor for EndpointPath(0) + 24));
    v10 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v10;
    v13 = sub_1D171D15C(v9);
    v14 = *(v10 + 16);
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      __break(1u);
    }

    else
    {
      v17 = v12;
      if (*(v10 + 24) >= v16)
      {
        v45 = v1;
        if (isUniquelyReferenced_nonNull_native)
        {
          v18 = MEMORY[0x1E69E7CC8];
        }

        else
        {
          sub_1D1737DF0();
          v18 = v47;
        }
      }

      else
      {
        sub_1D172684C(v16, isUniquelyReferenced_nonNull_native);
        v18 = v47;
        v19 = sub_1D171D15C(v9);
        if ((v17 & 1) != (v20 & 1))
        {

          return sub_1D1E690FC();
        }

        v13 = v19;
        v45 = v1;
      }

      v21 = v3;

      if ((v17 & 1) == 0)
      {
        v22 = sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
        v18[(v13 >> 6) + 8] |= 1 << v13;
        *(v18[6] + 2 * v13) = v9;
        *(v18[7] + 8 * v13) = v22;
        v25 = v18[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          __break(1u);
          return MEMORY[0x1EEE6DFA0](v22, v23, v24);
        }

        v18[2] = v27;
      }

      v28 = MEMORY[0x1E69E7CC0];
      v29 = v18[7];
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v47 = *(v29 + 8 * v13);
      *(v29 + 8 * v13) = 0x8000000000000000;
      sub_1D1753B88(v21, 2, 0xA00000000, v30);
      *(v29 + 8 * v13) = v47;
      v46 = v28;
      v47 = v18;
      sub_1D1A1456C(&v47, &v46);

      v9 = v46;
      *(v0 + 72) = v46;
      v47 = 0x6E45636974617473;
      v48 = 0xEF2D746E696F7064;
      v13 = v45;
      v31 = EndpointPath.description.getter();
      MEMORY[0x1D3890F70](v31);

      v3 = v47;
      v10 = v48;
      *(v0 + 80) = v48;
      isUniquelyReferenced_nonNull_native = swift_allocObject();
      *(v0 + 88) = isUniquelyReferenced_nonNull_native;
      *(isUniquelyReferenced_nonNull_native + 16) = v7;
      v32 = qword_1EC6422E8;
      v33 = v7;
      if (v32 == -1)
      {
LABEL_21:
        if (qword_1EC649398)
        {
        }

        else
        {
          v9 = 0;
        }

        ObjectType = swift_getObjectType();
        v35 = v13;
        v36 = sub_1D190C444(v3, v10, ObjectType, 0x796669746E656469, 0xE800000000000000, v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB0, &qword_1D1E840D8);
        v37 = swift_allocObject();
        *(v0 + 96) = v37;
        *(v37 + 24) = 0;
        *(v37 + 16) = v36;
        v38 = swift_allocObject();
        v38[2] = &unk_1D1E8E0B8;
        v38[3] = isUniquelyReferenced_nonNull_native;
        v38[4] = v35;
        v38[5] = v9;
        v38[6] = v3;
        v38[7] = v10;
        v38[8] = ObjectType;
        v38[9] = 0x796669746E656469;
        v38[10] = 0xE800000000000000;
        v38[11] = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB8, &qword_1D1E840E8);
        v39 = swift_allocObject();
        *(v0 + 104) = v39;
        v40 = v35;

        swift_defaultActor_initialize();
        *(v39 + 16) = 0;
        v41 = *(*v39 + 112);
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
        (*(*(v42 - 8) + 56))(&v39[v41], 1, 1, v42);
        v43 = &v39[*(*v39 + 120)];
        *v43 = 0;
        *(v43 + 1) = 0;
        *(v39 + 14) = &unk_1D1E8E0C8;
        *(v39 + 15) = v38;
        v44 = swift_allocObject();
        *(v0 + 112) = v44;
        v44[2] = v3;
        v44[3] = v10;
        v44[4] = ObjectType;
        v44[5] = 0x796669746E656469;
        v44[6] = 0xE800000000000000;
        v44[7] = v37;

        v22 = sub_1D19D68E4;
        v23 = v39;
        v24 = 0;

        return MEMORY[0x1EEE6DFA0](v22, v23, v24);
      }
    }

    swift_once();
    goto LABEL_21;
  }

  sub_1D19DCC30(*(v0 + 32), type metadata accessor for ClusterPath);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D19D68E4()
{
  v1 = v0[14];
  v2 = (v0[13] + *(*v0[13] + 120));
  v3 = *v2;
  v4 = v2[1];
  *v2 = sub_1D19DCC20;
  v2[1] = v1;
  sub_1D17169C0(v3, v4);
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_1D19D69C0;

  return sub_1D19D7D10(sub_1D19D7D10);
}

uint64_t sub_1D19D69C0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1D19D6AD4;
  }

  else
  {
    v2 = sub_1D19D6BB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D19D6AD4()
{
  v1 = v0[8];
  v2 = v0[7];
  v3 = v0[4];

  sub_1D19DCC30(v3, type metadata accessor for ClusterPath);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D19D6BB4()
{
  v1 = v0[8];
  v2 = v0[7];

  sub_1D19DCC30(v0[4], type metadata accessor for ClusterPath);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D19D6C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v11;
  *(v8 + 120) = v12;
  *(v8 + 96) = v10;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D19D6CC8, 0, 0);
}

uint64_t sub_1D19D6CC8()
{
  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = qword_1EC649398;
  v0[16] = qword_1EC649398;
  v3 = v2;
  v8 = (v1 + *v1);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_1D19D6E08;
  v5 = v0[8];
  v6 = v0[9];

  return (v8)(v0 + 2, v5, v6, v2);
}

uint64_t sub_1D19D6E08()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1D19DD7E8;
  }

  else
  {

    v3 = sub_1D19DD7F0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D19D6F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v11;
  *(v8 + 120) = v12;
  *(v8 + 96) = v10;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D19D6F60, 0, 0);
}

uint64_t sub_1D19D6F60()
{
  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = qword_1EC649398;
  v0[16] = qword_1EC649398;
  v3 = v2;
  v8 = (v1 + *v1);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_1D19D70A0;
  v5 = v0[8];
  v6 = v0[9];

  return (v8)(v0 + 2, v5, v6, v2);
}

uint64_t sub_1D19D70A0()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1D19D7244;
  }

  else
  {

    v3 = sub_1D19D71BC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D19D71BC()
{
  sub_1D190C9A8(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), v0 + 16, *(v0 + 120));
  sub_1D1741A30(v0 + 16, &qword_1EC645D58, &unk_1D1E7E530);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D19D7244()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 80);

  sub_1D190CC44(v7, v6, v5, v4, v3, v1, v2);
  swift_willThrow();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t StaticEndpoint.GeneralCommand.init(clusterKind:commandID:expectedValues:commandFields:)@<X0>(_BYTE *a1@<X0>, int a2@<W1>, char *a3@<X8>)
{

  if (a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = *a1 == 10;
  }

  if (v7)
  {
    v8 = 6;
  }

  else
  {
    v8 = 7;
  }

  *a3 = v8;
  return result;
}

void StaticEndpoint.GeneralCommand.commandFields.getter(unint64_t *a1@<X8>)
{
  v3 = *v1;
  if ((v3 - 1) < 2 || v3 == 4)
  {
    v5 = 20;
LABEL_10:
    sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    v7 = sub_1D1E684DC();
    v6 = sub_1D18D4C50(MEMORY[0x1E69E7CC0]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D17524E4(v5, 2, v7, isUniquelyReferenced_nonNull_native);

    goto LABEL_11;
  }

  if (v3 != 6)
  {
    v5 = 5;
    goto LABEL_10;
  }

  v6 = 0;
LABEL_11:
  *a1 = v6;
}

unint64_t StaticEndpoint.GeneralCommand.expectedValues.getter()
{
  v1 = *v0;
  if (v1 == 6)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
  inited = swift_initStackObject();
  *(inited + 32) = 0;
  v4 = inited + 32;
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 36) = 10;
  if ((v1 - 1) > 3u)
  {
    v5 = 5;
  }

  else
  {
    v5 = qword_1D1E8E388[(v1 - 1)];
  }

  *(inited + 40) = v5;
  *(inited + 48) = 2;
  v6 = sub_1D18D4B28(inited);
  swift_setDeallocating();
  sub_1D1741A30(v4, &qword_1EC646E70, &qword_1D1E83830);
  return v6;
}

uint64_t StaticEndpoint.GeneralCommand.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1919E90(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D19D7590@<X0>(unsigned __int8 *a1@<X0>, int a2@<W1>, char *a3@<X8>)
{

  v6 = *a1;

  if (a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6 == 10;
  }

  if (v8)
  {
    v9 = 6;
  }

  else
  {
    v9 = 7;
  }

  *a3 = v9;
  return result;
}

uint64_t sub_1D19D7610()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1919E90(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D19D7660(uint64_t a1)
{
  v2 = *v1;
  sub_1D1E6920C();
  sub_1D1919E90(v4, v2);
  return sub_1D1E6926C();
}

uint64_t StaticEndpoint.identifyCommand()@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticEndpoint(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t sub_1D19D76E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19D770C, 0, 0);
}

uint64_t sub_1D19D770C()
{
  v1 = v0[20];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[23] = v2;
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D191CA34;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_28;
  v0[14] = v6;
  [v5 identifyWithParams:v3 expectedValues:v2 expectedValueInterval:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t StaticEndpoint.IdentifyType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result;
  if (result >= 6u)
  {
    v2 = 6;
  }

  *a2 = v2;
  return result;
}

id StaticEndpoint.GeneralCommand.command(with:endpoint:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = a2 + *(type metadata accessor for StaticEndpoint(0) + 20);
  v6 = *(v5 + *(type metadata accessor for EndpointPath(0) + 24));

  return sub_1D195A43C(a1, v6, v4);
}

uint64_t StaticEndpoint.GeneralCommand.matterCommand(endpoint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17[-v6 - 8];
  v8 = type metadata accessor for StaticEndpoint(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = *v2;
  sub_1D17419CC(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648678, &qword_1D1E8E0D8);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if ((v13 & 1) == 0)
  {
    v14(v7, 1, 1, v8);
    result = sub_1D1741A30(v7, &qword_1EC644780, &qword_1D1E91AA0);
    goto LABEL_5;
  }

  v14(v7, 0, 1, v8);
  sub_1D19DD29C(v7, v11, type metadata accessor for StaticEndpoint);
  if (v11[*(v8 + 60)] == 6)
  {
    result = sub_1D19DCC30(v11, type metadata accessor for StaticEndpoint);
LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  *(a2 + 24) = &type metadata for StaticEndpoint.GeneralCommand;
  *(a2 + 32) = sub_1D19DCC90();
  *a2 = v12;
  return sub_1D19DCC30(v11, type metadata accessor for StaticEndpoint);
}

uint64_t StaticEndpoint.GeneralCommand.isCompatible(with:)(uint64_t a1)
{
  sub_1D17419CC(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646AB8, &qword_1D1E858C0);
  return swift_dynamicCast();
}

id sub_1D19D7C48(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = a2 + *(type metadata accessor for StaticEndpoint(0) + 20);
  v6 = *(v5 + *(type metadata accessor for EndpointPath(0) + 24));

  return sub_1D195A43C(a1, v6, v4);
}

uint64_t sub_1D19D7CB4(uint64_t a1, uint64_t a2)
{
  sub_1D17419CC(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646AB8, &qword_1D1E858C0);
  return swift_dynamicCast();
}

uint64_t sub_1D19D7D10(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1D19D7D58, v1, 0);
}

uint64_t sub_1D19D7D58()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  v0[6] = v4;
  swift_weakInit();
  v5 = sub_1D19DD3E8(&qword_1EC6486D0, &qword_1EC646FB8, &qword_1D1E840E8);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1D19D7E9C;
  v7 = v0[2];
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v7, &unk_1D1E8E358, v3, sub_1D19DD3B0, v4, v1, v5, v8);
}

uint64_t sub_1D19D7E9C()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x1EEE6DFA0](sub_1D19D7FE4, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1D19D7FE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D19D8050()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1D19D8098, v0, 0);
}

uint64_t sub_1D19D8098()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  v0[6] = v4;
  swift_weakInit();
  v5 = sub_1D19DD3E8(&qword_1EC6486A8, &qword_1EC6486B0, &qword_1D1E8E2C8);
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
  *v6 = v0;
  v6[1] = sub_1D19D81F0;

  return MEMORY[0x1EEE6DE18](v0 + 2, &unk_1D1E8E2C0, v3, sub_1D19DCFB4, v4, v1, v5, v7);
}

uint64_t sub_1D19D81F0()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x1EEE6DFA0](sub_1D19D7FE4, v3, 0);
  }

  else
  {

    v4 = v2[2];
    v5 = v2[1];

    return v5(v4);
  }
}

uint64_t sub_1D19D833C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19D835C, a2, 0);
}

uint64_t sub_1D19D835C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_1D19DD3E8(&qword_1EC6486D0, &qword_1EC646FB8, &qword_1D1E840E8);
  v4 = swift_allocObject();
  v0[5] = v4;
  swift_weakInit();
  v5 = swift_task_alloc();
  v0[6] = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1D19D84A0;
  v7 = v0[2];
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v7, v1, v3, 0x29286E7572, 0xE500000000000000, sub_1D19DD544, v5, v8);
}

uint64_t sub_1D19D84A0()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x1EEE6DFA0](sub_1D19D85E8, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1D19D85E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D19D8654(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D19D8678, a1, 0);
}

uint64_t sub_1D19D8678()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_1D19DD3E8(&qword_1EC6486A8, &qword_1EC6486B0, &qword_1D1E8E2C8);
  v4 = swift_allocObject();
  v0[5] = v4;
  swift_weakInit();
  v5 = swift_task_alloc();
  v0[6] = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
  *v6 = v0;
  v6[1] = sub_1D19D87C8;

  return MEMORY[0x1EEE6DE38](v0 + 2, v1, v3, 0x29286E7572, 0xE500000000000000, sub_1D19DD10C, v5, v7);
}

uint64_t sub_1D19D87C8()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_1D19D85E8;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1D19D88F8;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D19D8914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v22 = a3;
  v23 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v22 - v15;
  v17 = sub_1D1E67E7C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v13, a1, v9);
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  (*(v10 + 32))(v20 + v18, v13, v9);
  *(v20 + v19) = a2;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;

  sub_1D1B1DFC0(0, 0, v16, v23, v20);

  return sub_1D1741A30(v16, &unk_1EC6442C0, &qword_1D1E741A0);
}

uint64_t sub_1D19D8B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D19D8B4C, 0, 0);
}

uint64_t sub_1D19D8B4C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1D19DD7D0;
  v3 = v0[5];

  return sub_1D19D8CEC(v3, Strong);
}

uint64_t sub_1D19D8C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D19D8C2C, 0, 0);
}

uint64_t sub_1D19D8C2C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1D17D3554;
  v3 = v0[5];

  return sub_1D19D988C(v3, Strong);
}

uint64_t sub_1D19D8CEC(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6486D8, &qword_1D1E91190);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19D8D94, 0, 0);
}

uint64_t sub_1D19D8D94()
{
  swift_weakInit();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[9];
    v4 = v0[6];
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
    v6 = *(v5 - 8);
    (*(v6 + 16))(v3, v4, v5);
    (*(v6 + 56))(v3, 0, 1, v5);
    v7 = sub_1D19D9060;
LABEL_3:

    return MEMORY[0x1EEE6DFA0](v7, v2, 0);
  }

  v8 = swift_weakLoadStrong();
  if (v8)
  {
    v9 = *(v8 + 112);
    v0[11] = *(v8 + 120);

    v10 = swift_weakLoadStrong();
    v0[12] = v10;
    v15 = (v9 + *v9);
    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = sub_1D19D9348;

    return (v15)(v0 + 19, v10);
  }

  else
  {
    v12 = swift_weakLoadStrong();
    v0[17] = v12;
    if (v12)
    {
      v2 = v12;
      sub_1D1E67D8C();
      sub_1D19DD0B4();
      v0[18] = swift_allocError();
      sub_1D1E6759C();
      v7 = sub_1D19D96E0;
      goto LABEL_3;
    }

    swift_weakDestroy();

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1D19D9060()
{
  v1 = v0[10];
  v2 = v0[8];
  sub_1D1741A90(v0[9], v2, &qword_1EC6486D8, &qword_1D1E91190);
  v3 = *(*v1 + 112);
  swift_beginAccess();
  sub_1D17B4270(v2, v1 + v3, &qword_1EC6486D8, &qword_1D1E91190);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1D19D9144, 0, 0);
}

uint64_t sub_1D19D9144()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 112);
    v0[11] = *(Strong + 120);

    v3 = swift_weakLoadStrong();
    v0[12] = v3;
    v9 = (v2 + *v2);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_1D19D9348;

    return (v9)(v0 + 19, v3);
  }

  else
  {
    v6 = swift_weakLoadStrong();
    v0[17] = v6;
    if (v6)
    {
      v7 = v6;
      sub_1D1E67D8C();
      sub_1D19DD0B4();
      v0[18] = swift_allocError();
      sub_1D1E6759C();

      return MEMORY[0x1EEE6DFA0](sub_1D19D96E0, v7, 0);
    }

    else
    {
      swift_weakDestroy();

      v8 = v0[1];

      return v8();
    }
  }
}

uint64_t sub_1D19D9348()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1D19D9528;
  }

  else
  {

    v2 = sub_1D19D946C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D19D946C()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D19D95FC, Strong, 0);
  }

  else
  {
    swift_weakDestroy();

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1D19D9528()
{

  Strong = swift_weakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D19D977C, Strong, 0);
  }

  else
  {

    swift_weakDestroy();

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1D19D95FC()
{
  sub_1D19DAB5C();

  return MEMORY[0x1EEE6DFA0](sub_1D19D966C, 0, 0);
}

uint64_t sub_1D19D966C()
{
  swift_weakDestroy();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D19D96E0()
{
  v1 = *(v0 + 144);
  sub_1D19DA8FC(v1, &qword_1EC646FC0, &qword_1D1E840F0, &qword_1EC6486D8, &qword_1D1E91190);

  return MEMORY[0x1EEE6DFA0](sub_1D19DD7EC, 0, 0);
}

uint64_t sub_1D19D977C()
{
  sub_1D19DA8FC(*(v0 + 112), &qword_1EC646FC0, &qword_1D1E840F0, &qword_1EC6486D8, &qword_1D1E91190);

  return MEMORY[0x1EEE6DFA0](sub_1D19D9810, 0, 0);
}

uint64_t sub_1D19D9810()
{
  swift_weakDestroy();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D19D988C(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6486C0, &qword_1D1E8E2E8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19D9934, 0, 0);
}

uint64_t sub_1D19D9934()
{
  swift_weakInit();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[10];
    v4 = v0[7];
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6486B8, &qword_1D1E8E2E0);
    v6 = *(v5 - 8);
    (*(v6 + 16))(v3, v4, v5);
    (*(v6 + 56))(v3, 0, 1, v5);
    v7 = sub_1D19D9C00;
LABEL_3:

    return MEMORY[0x1EEE6DFA0](v7, v2, 0);
  }

  v8 = swift_weakLoadStrong();
  if (v8)
  {
    v9 = *(v8 + 112);
    v0[12] = *(v8 + 120);

    v10 = swift_weakLoadStrong();
    v0[13] = v10;
    v15 = (v9 + *v9);
    v11 = swift_task_alloc();
    v0[14] = v11;
    *v11 = v0;
    v11[1] = sub_1D19D9EE8;

    return (v15)(v0 + 6, v10);
  }

  else
  {
    v12 = swift_weakLoadStrong();
    v0[19] = v12;
    if (v12)
    {
      v2 = v12;
      sub_1D1E67D8C();
      sub_1D19DD0B4();
      v0[20] = swift_allocError();
      sub_1D1E6759C();
      v7 = sub_1D19DA2EC;
      goto LABEL_3;
    }

    swift_weakDestroy();

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1D19D9C00()
{
  v1 = v0[11];
  v2 = v0[9];
  sub_1D1741A90(v0[10], v2, &qword_1EC6486C0, &qword_1D1E8E2E8);
  v3 = *(*v1 + 112);
  swift_beginAccess();
  sub_1D17B4270(v2, v1 + v3, &qword_1EC6486C0, &qword_1D1E8E2E8);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1D19D9CE4, 0, 0);
}

uint64_t sub_1D19D9CE4()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 112);
    v0[12] = *(Strong + 120);

    v3 = swift_weakLoadStrong();
    v0[13] = v3;
    v9 = (v2 + *v2);
    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_1D19D9EE8;

    return (v9)(v0 + 6, v3);
  }

  else
  {
    v6 = swift_weakLoadStrong();
    v0[19] = v6;
    if (v6)
    {
      v7 = v6;
      sub_1D1E67D8C();
      sub_1D19DD0B4();
      v0[20] = swift_allocError();
      sub_1D1E6759C();

      return MEMORY[0x1EEE6DFA0](sub_1D19DA2EC, v7, 0);
    }

    else
    {
      swift_weakDestroy();

      v8 = v0[1];

      return v8();
    }
  }
}

uint64_t sub_1D19D9EE8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1D19DA128;
  }

  else
  {

    v2 = sub_1D19DA00C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D19DA00C()
{
  v1 = v0[6];
  v0[16] = v1;
  Strong = swift_weakLoadStrong();
  v3 = Strong;
  if (v1)
  {
    v0[18] = Strong;
    if (Strong)
    {
      v4 = sub_1D19DA1FC;
LABEL_6:

      return MEMORY[0x1EEE6DFA0](v4, v3, 0);
    }
  }

  else
  {
    v0[19] = Strong;
    if (Strong)
    {
      sub_1D1E67D8C();
      sub_1D19DD0B4();
      v0[20] = swift_allocError();
      sub_1D1E6759C();
      v4 = sub_1D19DA2EC;
      goto LABEL_6;
    }
  }

  swift_weakDestroy();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D19DA128()
{

  Strong = swift_weakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D19DA3FC, Strong, 0);
  }

  else
  {

    swift_weakDestroy();

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1D19DA1FC()
{
  sub_1D19DADCC(*(v0 + 128));

  return MEMORY[0x1EEE6DFA0](sub_1D19DA270, 0, 0);
}

uint64_t sub_1D19DA270()
{

  swift_weakDestroy();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D19DA2EC()
{
  v1 = *(v0 + 160);
  sub_1D19DA8FC(v1, &qword_1EC6486B8, &qword_1D1E8E2E0, &qword_1EC6486C0, &qword_1D1E8E2E8);

  return MEMORY[0x1EEE6DFA0](sub_1D19DA388, 0, 0);
}

uint64_t sub_1D19DA388()
{
  swift_weakDestroy();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D19DA3FC()
{
  sub_1D19DA8FC(*(v0 + 120), &qword_1EC6486B8, &qword_1D1E8E2E0, &qword_1EC6486C0, &qword_1D1E8E2E8);

  return MEMORY[0x1EEE6DFA0](sub_1D19DA490, 0, 0);
}

uint64_t sub_1D19DA490()
{
  swift_weakDestroy();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D19DA50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_1D1E67E7C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;

  sub_1D17C71F0(0, 0, v7, a3, v9);
}

uint64_t sub_1D19DA60C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v28 - v16;
  v18 = v7[16];
  if (v18)
  {
    [v18 cancel];
  }

  v7[16] = 0;
  swift_unknownObjectRelease();
  v19 = *(*v7 + 112);
  swift_beginAccess();
  sub_1D1741C08(v7 + v19, v17, a3, a4);
  if ((*(v9 + 48))(v17, 1, v8))
  {
    sub_1D1741A30(v17, a3, a4);
  }

  else
  {
    (*(v9 + 16))(v11, v17, v8);
    sub_1D1741A30(v17, a3, a4);
    sub_1D1E67D8C();
    sub_1D19DD0B4();
    v20 = swift_allocError();
    sub_1D1E6759C();
    v28[0] = v20;
    sub_1D1E67D5C();
    (*(v9 + 8))(v11, v8);
  }

  (*(v9 + 56))(v15, 1, 1, v8);
  swift_beginAccess();
  sub_1D17B4270(v15, v7 + v19, a3, a4);
  swift_endAccess();
  v21 = (v7 + *(*v7 + 120));
  v22 = *v21;
  if (*v21)
  {
    v23 = v21[1];

    v22(v24);
    sub_1D17169C0(v22, v23);
    v25 = *v21;
  }

  else
  {
    v25 = 0;
  }

  v26 = v21[1];
  *v21 = 0;
  v21[1] = 0;
  return sub_1D17169C0(v25, v26);
}

uint64_t sub_1D19DA8FC(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v23 - v18;
  v20 = *(*v8 + 112);
  swift_beginAccess();
  sub_1D1741C08(v8 + v20, v19, a4, a5);
  if ((*(v11 + 48))(v19, 1, v10))
  {
    sub_1D1741A30(v19, a4, a5);
  }

  else
  {
    (*(v11 + 16))(v13, v19, v10);
    sub_1D1741A30(v19, a4, a5);
    v23[0] = a1;
    v21 = a1;
    sub_1D1E67D5C();
    (*(v11 + 8))(v13, v10);
  }

  (*(v11 + 56))(v17, 1, 1, v10);
  swift_beginAccess();
  sub_1D17B4270(v17, v8 + v20, a4, a5);
  return swift_endAccess();
}

uint64_t sub_1D19DAB5C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6486D8, &qword_1D1E91190);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14[-v10];
  v12 = *(*v1 + 112);
  swift_beginAccess();
  sub_1D1741C08(v1 + v12, v11, &qword_1EC6486D8, &qword_1D1E91190);
  if ((*(v3 + 48))(v11, 1, v2))
  {
    sub_1D1741A30(v11, &qword_1EC6486D8, &qword_1D1E91190);
  }

  else
  {
    (*(v3 + 16))(v5, v11, v2);
    sub_1D1741A30(v11, &qword_1EC6486D8, &qword_1D1E91190);
    sub_1D1E67D6C();
    (*(v3 + 8))(v5, v2);
  }

  (*(v3 + 56))(v9, 1, 1, v2);
  swift_beginAccess();
  sub_1D17B4270(v9, v1 + v12, &qword_1EC6486D8, &qword_1D1E91190);
  return swift_endAccess();
}

uint64_t sub_1D19DADCC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6486B8, &qword_1D1E8E2E0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6486C0, &qword_1D1E8E2E8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - v12;
  v14 = *(*v2 + 112);
  swift_beginAccess();
  sub_1D1741C08(v2 + v14, v13, &qword_1EC6486C0, &qword_1D1E8E2E8);
  if ((*(v5 + 48))(v13, 1, v4))
  {
    sub_1D1741A30(v13, &qword_1EC6486C0, &qword_1D1E8E2E8);
  }

  else
  {
    (*(v5 + 16))(v7, v13, v4);
    sub_1D1741A30(v13, &qword_1EC6486C0, &qword_1D1E8E2E8);
    v16[0] = a1;

    sub_1D1E67D6C();
    (*(v5 + 8))(v7, v4);
  }

  (*(v5 + 56))(v11, 1, 1, v4);
  swift_beginAccess();
  sub_1D17B4270(v11, v2 + v14, &qword_1EC6486C0, &qword_1D1E8E2E8);
  return swift_endAccess();
}

unint64_t sub_1D19DB054(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = a5[7] + 16 * result;
  *v5 = a3;
  *(v5 + 8) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1D19DB0A0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1D19DB0E8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D1E66A7C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_1D1E669FC();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1D19DB1DC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644610, &qword_1D1E6E9B0);
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_1D19DB294(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1D16EEE38(a3, (a4[7] + 32 * a1));
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

uint64_t sub_1D19DB354(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_1D1E66A7C();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = a5(0);
  result = sub_1D19DD29C(a3, v14 + *(*(v15 - 8) + 72) * a1, a6);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

unint64_t sub_1D19DB4F8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  *(a7[6] + 8 * result) = a2;
  v7 = a7[7] + 32 * result;
  *v7 = a3;
  *(v7 + 8) = a4;
  *(v7 + 16) = a5;
  *(v7 + 24) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

unint64_t sub_1D19DB548(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 8 * result;
  *v5 = a2;
  *(v5 + 4) = BYTE4(a2);
  v6 = a5[7] + 16 * result;
  *v6 = a3;
  *(v6 + 8) = a4;
  v7 = a5[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v9;
  }

  return result;
}

unint64_t sub_1D19DB5A0(unint64_t result, __int16 a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 2 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_1D19DB5E8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D16EEE38(a4, (a5[7] + 32 * a1));
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

uint64_t sub_1D19DB654(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
  sub_1D19DD29C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for StaticServiceCharacteristicDoublet);
  v10 = a4[7];
  v11 = type metadata accessor for IconTextValueStringDataHolder(0);
  result = sub_1D19DD29C(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for IconTextValueStringDataHolder);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1D19DB740(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a7[6];
  v15 = sub_1D1E66A7C();
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  v17 = (a7[7] + 32 * a1);
  *v17 = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

uint64_t sub_1D19DB814(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  v21 = a3[2];
  v8 = *(a3 + 6);
  v23 = *(a3 + 88);
  v22 = *(a3 + 104);
  v9 = *(a3 + 15);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_1D1E66A7C();
  v19 = *a3;
  v20 = *(a3 + 56);
  v17 = a3[1];
  v18 = *(a3 + 72);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = a4[7] + (a1 << 7);
  *v13 = v19;
  *(v13 + 16) = v17;
  *(v13 + 32) = v21;
  *(v13 + 48) = v8;
  *(v13 + 72) = v18;
  *(v13 + 56) = v20;
  *(v13 + 88) = v23;
  *(v13 + 104) = v22;
  *(v13 + 120) = v9;
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

unint64_t sub_1D19DB94C(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  v4 = a4[7] + 40 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
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

_OWORD *sub_1D19DB9A4(unint64_t a1, int a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  result = sub_1D16EEE38(a3, (a4[7] + 32 * a1));
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

unint64_t sub_1D19DBA0C(unint64_t result, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1D19DBAB0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for BatchRequestError.ID(0);
  result = sub_1D19DD29C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for BatchRequestError.ID);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1D19DBB64(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1D1E66A7C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
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

uint64_t sub_1D19DBC24(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for StaticMatterDevice(0);
  result = sub_1D19DD29C(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for StaticMatterDevice);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_1D19DBD24(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_1D16EEE38(a3, (a4[7] + 32 * a1));
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

uint64_t sub_1D19DBDB8(unint64_t a1, __int16 a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 2 * a1) = a2;
  v10 = a4[7];
  v11 = a5(0);
  result = sub_1D19DD29C(a3, v10 + *(*(v11 - 8) + 72) * a1, a6);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_1D19DBE60(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 32 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
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

unint64_t sub_1D19DBEB0(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 8 * result;
  *v4 = a2;
  *(v4 + 4) = BYTE4(a2);
  v5 = a4[7] + 40 * result;
  v6 = *(a3 + 16);
  *v5 = *a3;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a3 + 32);
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

unint64_t sub_1D19DBF14(unint64_t result, __int16 a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 2 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1D19DBF58(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1D19DBF9C(unint64_t a1, char a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = a5(a3, a4[7] + 32 * a1);
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

unint64_t sub_1D19DC008(unint64_t result, uint64_t a2, __int16 a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 2 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1D19DC0A4(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D1E66A7C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1D19DC15C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D1E66A7C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1D19DC240(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = a5(0);
  result = sub_1D19DD29C(a2, v11 + *(*(v12 - 8) + 72) * a1, a6);
  *(a4[7] + 8 * a1) = a3;
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

unint64_t sub_1D19DC2EC(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1D19DC3B4(unint64_t a1, char a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v10 = a4[7];
  v11 = a5(0);
  result = sub_1D19DD29C(a3, v10 + *(*(v11 - 8) + 72) * a1, a6);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1D19DC45C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for RoomType(0);
  result = sub_1D19DD29C(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for RoomType);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_1D19DC508(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a4[7] + 40 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
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

uint64_t sub_1D19DC560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D19DC580, 0, 0);
}

uint64_t sub_1D19DC580()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D19DC644, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1D19DC644()
{
  sub_1D19DA60C(&qword_1EC646FC0, &qword_1D1E840F0, &qword_1EC6486D8, &qword_1D1E91190);

  return MEMORY[0x1EEE6DFA0](sub_1D19DD800, 0, 0);
}

uint64_t sub_1D19DC6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1D19DC774;

  return sub_1D19D8654(a2, a3);
}

uint64_t sub_1D19DC774(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1D19DC884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D19DC8A4, 0, 0);
}

uint64_t sub_1D19DC8A4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D19DC968, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1D19DC968()
{
  sub_1D19DA60C(&qword_1EC6486B8, &qword_1D1E8E2E0, &qword_1EC6486C0, &qword_1D1E8E2E8);

  return MEMORY[0x1EEE6DFA0](sub_1D19DC9F8, 0, 0);
}

uint64_t sub_1D19DCA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4CF0;

  return sub_1D19D76E4(a1, a2, a3, a4, v10);
}

uint64_t _s13HomeDataModel14StaticEndpointV14GeneralCommandO2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 6)
  {
    if (v3 == 6)
    {
      return 1;
    }
  }

  else if (v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D19DCB20(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D17C4BFC;

  return sub_1D19D6C8C(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D19DCC30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D19DCC90()
{
  result = qword_1EC648680;
  if (!qword_1EC648680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648680);
  }

  return result;
}

unint64_t sub_1D19DCCE4()
{
  result = qword_1EC648688;
  if (!qword_1EC648688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648688);
  }

  return result;
}

unint64_t sub_1D19DCD3C()
{
  result = qword_1EC648690;
  if (!qword_1EC648690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648690);
  }

  return result;
}

unint64_t sub_1D19DCD94()
{
  result = qword_1EC648698;
  if (!qword_1EC648698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648698);
  }

  return result;
}

uint64_t _s14GeneralCommandOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 6)
  {
    v7 = 6;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 7;
  if (v6 < 6)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

unint64_t sub_1D19DCEA8()
{
  result = qword_1EC6486A0;
  if (!qword_1EC6486A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6486A0);
  }

  return result;
}

uint64_t sub_1D19DCEFC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4CF0;

  return sub_1D19DC6D4(a1, v5, v4);
}

uint64_t sub_1D19DCFEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D19DC884(a1, v4, v5, v6);
}

unint64_t sub_1D19DD0B4()
{
  result = qword_1EC6486C8;
  if (!qword_1EC6486C8)
  {
    sub_1D1E67D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6486C8);
  }

  return result;
}

uint64_t sub_1D19DD154(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6486B8, &qword_1D1E8E2E0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1D17C4BFC;

  return sub_1D19D8C0C(a1, v7, v8, v1 + v6, v9);
}

uint64_t sub_1D19DD29C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D19DD304(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4CF0;

  return sub_1D19D833C(a1, v5, v4);
}

uint64_t sub_1D19DD3E8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroy_30Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D19DD47C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D19DC560(a1, v4, v5, v6);
}

uint64_t objectdestroy_39Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v5 | 7);
}

uint64_t sub_1D19DD670(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1D17C4CF0;

  return sub_1D19D8B2C(a1, v7, v8, v1 + v6, v9);
}

HomeDataModel::ClusterKind_optional __swiftcall ClusterKind.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue > 256)
  {
    if (rawValue > 513)
    {
      if (rawValue <= 767)
      {
        if (rawValue == 514)
        {
          *v1 = 20;
          return rawValue;
        }

        if (rawValue == 516)
        {
          *v1 = 21;
          return rawValue;
        }
      }

      else
      {
        switch(rawValue)
        {
          case 0x300u:
            *v1 = 17;
            return rawValue;
          case 0x1349FC03u:
            *v1 = 28;
            return rawValue;
          case 0x1349FC05u:
            *v1 = 29;
            return rawValue;
        }
      }
    }

    else if (rawValue <= 335)
    {
      if (rawValue == 257)
      {
        *v1 = 22;
        return rawValue;
      }

      if (rawValue == 258)
      {
        *v1 = 23;
        return rawValue;
      }
    }

    else
    {
      switch(rawValue)
      {
        case 0x150u:
          *v1 = 27;
          return rawValue;
        case 0x200u:
          *v1 = 18;
          return rawValue;
        case 0x201u:
          *v1 = 19;
          return rawValue;
      }
    }

LABEL_46:
    *v1 = 30;
    return rawValue;
  }

  v2 = 0;
  v3 = 12;
  switch(rawValue)
  {
    case 3u:
      v2 = 10;
      goto LABEL_38;
    case 6u:
      v2 = 11;
      goto LABEL_38;
    case 8u:
      goto LABEL_39;
    case 0x1Du:
      goto LABEL_38;
    case 0x28u:
      v2 = 1;
      goto LABEL_38;
    case 0x2Eu:
      v2 = 3;
      goto LABEL_38;
    case 0x2Fu:
      v2 = 2;
      goto LABEL_38;
    case 0x32u:
      v2 = 4;
      goto LABEL_38;
    case 0x33u:
      v2 = 5;
      goto LABEL_38;
    case 0x36u:
      v2 = 6;
      goto LABEL_38;
    case 0x3Bu:
      *v1 = 15;
      return rawValue;
    case 0x3Eu:
      v2 = 9;
      goto LABEL_38;
    case 0x40u:
      v2 = 7;
      goto LABEL_38;
    case 0x41u:
      v2 = 8;
LABEL_38:
      v3 = v2;
LABEL_39:
      *v1 = v3;
      break;
    case 0x45u:
      *v1 = 13;
      break;
    case 0x50u:
      *v1 = 14;
      break;
    case 0x54u:
      *v1 = 25;
      break;
    case 0x55u:
      *v1 = 26;
      break;
    case 0x60u:
      *v1 = 16;
      break;
    case 0x61u:
      *v1 = 24;
      break;
    default:
      goto LABEL_46;
  }

  return rawValue;
}

HomeDataModel::ClusterKind_optional __swiftcall ClusterKind.init(clusterID:)(NSNumber clusterID)
{
  v3 = v1;
  v4 = [(objc_class *)clusterID.super.super.isa unsignedIntValue];

  result.value = ClusterKind.init(rawValue:)(v4).value;
  *v3 = v6;
  return result;
}

HomeDataModel::ClusterKind_optional __swiftcall ClusterKind.init(clusterID:)(MTRClusterIDType clusterID)
{
  v2 = v1;
  result.value = ClusterKind.init(rawValue:)(clusterID).value;
  *v2 = v4;
  return result;
}

uint64_t sub_1D19DDAF8()
{
  sub_1D1E6920C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19DDB80(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19DDCB0()
{
  result = sub_1D179B598(&unk_1F4D658F0);
  qword_1EC6486E0 = result;
  return result;
}

BOOL ClusterKind.isRVCClusterKind.getter()
{
  v1 = *v0;
  if (qword_1EC642268 != -1)
  {
    v4 = *v0;
    swift_once();
    v1 = v4;
  }

  v2 = qword_1EC6486E0;

  return sub_1D17198DC(v1, v2);
}

unint64_t sub_1D19DDD50()
{
  result = qword_1EE07CE68;
  if (!qword_1EE07CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07CE68);
  }

  return result;
}

unint64_t sub_1D19DDDA8()
{
  result = qword_1EC6486E8;
  if (!qword_1EC6486E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6486F0, &qword_1D1E8E498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6486E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClusterKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClusterKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D19DDF5C()
{
  result = qword_1EC6486F8;
  if (!qword_1EC6486F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6486F8);
  }

  return result;
}

void MatterAttributeDataBuilder.containedValue.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  if (v4 <= 1)
  {
    if (!*(v1 + 8))
    {
      *(a1 + 24) = MEMORY[0x1E69E6370];
      *a1 = v3 & 1;
      return;
    }

    v7 = MEMORY[0x1E69E6530];
    goto LABEL_13;
  }

  if (v4 == 2)
  {
    v7 = MEMORY[0x1E69E6810];
LABEL_13:
    *(a1 + 24) = v7;
    *a1 = v3;
    return;
  }

  if (v4 == 3)
  {
    v5 = &qword_1EC646A50;
    v6 = &unk_1D1E910D0;
  }

  else
  {
    v5 = &qword_1EC646DE8;
    v6 = &unk_1D1E85520;
  }

  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  *a1 = v3;
}

unint64_t MatterAttributeDataBuilder.dictionary.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 <= 1)
  {
    if (*(v0 + 8))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648700, &qword_1D1E8E5F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E73A90;
      *(inited + 32) = sub_1D1E6781C();
      v25 = *MEMORY[0x1E696F540];
      *(inited + 40) = v26;
      *(inited + 48) = v25;
      *(inited + 56) = sub_1D1E6781C();
      *(inited + 64) = v27;
      v28 = v25;
      v15 = sub_1D1E6821C();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648700, &qword_1D1E8E5F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E73A90;
      *(inited + 32) = sub_1D1E6781C();
      v11 = *MEMORY[0x1E696F508];
      *(inited + 40) = v12;
      *(inited + 48) = v11;
      *(inited + 56) = sub_1D1E6781C();
      *(inited + 64) = v13;
      v14 = v11;
      v15 = sub_1D1E67D2C();
    }

    goto LABEL_11;
  }

  if (v2 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648700, &qword_1D1E8E5F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E73A90;
    *(inited + 32) = sub_1D1E6781C();
    v16 = *MEMORY[0x1E696F560];
    *(inited + 40) = v17;
    *(inited + 48) = v16;
    *(inited + 56) = sub_1D1E6781C();
    *(inited + 64) = v18;
    v19 = v16;
    v15 = sub_1D1E685DC();
LABEL_11:
    *(inited + 72) = v15;
    goto LABEL_12;
  }

  if (v2 == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648700, &qword_1D1E8E5F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E73A90;
    *(inited + 32) = sub_1D1E6781C();
    v4 = *MEMORY[0x1E696F4F8];
    *(inited + 40) = v5;
    *(inited + 48) = v4;
    *(inited + 56) = sub_1D1E6781C();
    *(inited + 64) = v6;
    v7 = v4;
    v8 = sub_1D18F95E0(v1);
    v9 = sub_1D1E6781C();
    sub_1D19DE6D8(v8, v9, v10);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648700, &qword_1D1E8E5F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E73A90;
    *(inited + 32) = sub_1D1E6781C();
    v20 = *MEMORY[0x1E696F4F8];
    *(inited + 40) = v21;
    *(inited + 48) = v20;
    *(inited + 56) = sub_1D1E6781C();
    *(inited + 64) = v22;
    v23 = v20;
    sub_1D19DEA30(v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  v24 = sub_1D1E67BFC();

  *(inited + 72) = v24;
LABEL_12:
  v29 = sub_1D18D6D74(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647728, &unk_1D1E86830);
  swift_arrayDestroy();
  return v29;
}

void AttributeValue.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  if (v4 > 4)
  {
    if (*(v1 + 16) <= 6u)
    {
      if (v4 == 5)
      {
        v5 = 5;
        goto LABEL_14;
      }

      MEMORY[0x1D3892850](6);

      sub_1D1E678EC();
    }

    else if (v4 == 7)
    {
      MEMORY[0x1D3892850](7);
      MEMORY[0x1D3892850](*(v3 + 16));
      v6 = *(v3 + 16);
      if (v6)
      {
        v7 = (v3 + 48);
        do
        {
          v9 = *(v7 - 2);
          v10 = *(v7 - 1);
          v8 = *v7;
          v7 += 24;
          sub_1D1780654(v9, v10, v8);
          AttributeValue.hash(into:)(a1);
          sub_1D1780698(v9, v10, v8);
          --v6;
        }

        while (v6);
      }
    }

    else if (v4 == 8)
    {
      MEMORY[0x1D3892850](8);
      sub_1D1E6850C();
    }

    else
    {
      MEMORY[0x1D3892850](9);

      sub_1D185BEF0(a1, v3);
    }
  }

  else if (*(v1 + 16) <= 1u)
  {
    if (*(v1 + 16))
    {
      MEMORY[0x1D3892850](1);
    }

    else
    {
      MEMORY[0x1D3892850](0);
    }

    sub_1D1E6922C();
  }

  else if (v4 == 2)
  {
    MEMORY[0x1D3892850](2);
    sub_1D1E6923C();
  }

  else
  {
    if (v4 == 3)
    {
      v5 = 3;
LABEL_14:
      MEMORY[0x1D3892850](v5);
      sub_1D1E6924C();
      return;
    }

    MEMORY[0x1D3892850](4);
    MEMORY[0x1D3892890](v3);
  }
}

uint64_t AttributeValue.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1D1E6920C();
  AttributeValue.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D19DE62C()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1D1E6920C();
  AttributeValue.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D19DE684(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_1D1E6920C();
  AttributeValue.hash(into:)(v4);
  return sub_1D1E6926C();
}

unint64_t sub_1D19DE6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = a1 + 32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BA8, &unk_1D1E6E8F0);
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v39[0] = sub_1D1E6781C();
      v39[1] = v7;
      v39[5] = MEMORY[0x1E69E6158];
      v39[2] = a2;
      v39[3] = a3;
      v40[0] = sub_1D1E6781C();
      v40[1] = v8;
      sub_1D1741970(v5, &v41);
      v9 = sub_1D1E68BCC();

      sub_1D19DF8B4(v39, &v36);
      v11 = v36;
      v10 = v37;
      result = sub_1D171D2F0(v36, v37);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v9[6] + 16 * result);
      *v14 = v11;
      v14[1] = v10;
      result = sub_1D1742194(v38, (v9[7] + 32 * result));
      v15 = v9[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_18;
      }

      v9[2] = v17;
      sub_1D19DF8B4(v40, &v36);
      v18 = v36;
      v19 = v37;
      result = sub_1D171D2F0(v36, v37);
      if (v20)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = (v9[6] + 16 * result);
      *v21 = v18;
      v21[1] = v19;
      result = sub_1D1742194(v38, (v9[7] + 32 * result));
      v22 = v9[2];
      v16 = __OFADD__(v22, 1);
      v23 = v22 + 1;
      if (v16)
      {
        goto LABEL_18;
      }

      v9[2] = v23;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
      swift_arrayDestroy();
      v35[0] = sub_1D1E6781C();
      v35[1] = v24;
      v35[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      v35[2] = v9;
      v25 = sub_1D1E68BCC();

      sub_1D19DF8B4(v35, &v36);
      v26 = v36;
      v27 = v37;
      result = sub_1D171D2F0(v36, v37);
      if (v28)
      {
        goto LABEL_19;
      }

      v25[(result >> 6) + 8] |= 1 << result;
      v29 = (v25[6] + 16 * result);
      *v29 = v26;
      v29[1] = v27;
      result = sub_1D1742194(v38, (v25[7] + 32 * result));
      v30 = v25[2];
      v16 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v16)
      {
        goto LABEL_20;
      }

      v25[2] = v31;

      sub_1D19DF924(v35);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1D177D2F8(0, v6[2] + 1, 1, v6);
      }

      v33 = v6[2];
      v32 = v6[3];
      if (v33 >= v32 >> 1)
      {
        v6 = sub_1D177D2F8((v32 > 1), v33 + 1, 1, v6);
      }

      v6[2] = v33 + 1;
      v6[v33 + 4] = v25;
      v5 += 32;
      if (!--v3)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void *sub_1D19DEA30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = (a1 + 52);
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = *(v2 - 5);
    v5 = *(v2 - 16);
    v6 = *(v2 - 3);
    v7 = *(v2 - 8);
    v8 = *(v2 - 1);
    v9 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643388, &unk_1D1E71FF0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D1E73A90;
    *(v10 + 32) = sub_1D19DED90(0, v4);
    *(v10 + 40) = sub_1D19DED90(1, v5);
    if ((v7 & 1) == 0)
    {
      v11 = sub_1D19DED90(2, v6);
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        v28 = v11;
        v10 = sub_1D177D2F8((v12 > 1), v13 + 1, 1, v10);
        v11 = v28;
      }

      *(v10 + 16) = v13 + 1;
      *(v10 + 8 * v13 + 32) = v11;
    }

    if ((v9 & 1) == 0)
    {
      v14 = sub_1D19DED90(3, v8);
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        v29 = v14;
        v10 = sub_1D177D2F8((v15 > 1), v16 + 1, 1, v10);
        v14 = v29;
      }

      *(v10 + 16) = v16 + 1;
      *(v10 + 8 * v16 + 32) = v14;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = sub_1D1E6781C();
    *(inited + 40) = v18;
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_1D1E73A90;
    *(v19 + 32) = sub_1D1E6781C();
    *(v19 + 40) = v20;
    v21 = sub_1D1E6781C();
    *(v19 + 72) = MEMORY[0x1E69E6158];
    *(v19 + 48) = v21;
    *(v19 + 56) = v22;
    *(v19 + 80) = sub_1D1E6781C();
    *(v19 + 88) = v23;
    *(v19 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648308, &unk_1D1E8DD70);
    *(v19 + 96) = v10;
    v24 = sub_1D18D6538(v19);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
    swift_arrayDestroy();
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    *(inited + 48) = v24;
    v25 = sub_1D18D6538(inited);
    swift_setDeallocating();
    sub_1D19DF924(inited + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D177D2F8(0, v3[2] + 1, 1, v3);
    }

    v27 = v3[2];
    v26 = v3[3];
    if (v27 >= v26 >> 1)
    {
      v3 = sub_1D177D2F8((v26 > 1), v27 + 1, 1, v3);
    }

    v3[2] = v27 + 1;
    v3[v27 + 4] = v25;
    v2 += 24;
    --v1;
  }

  while (v1);
  return v3;
}

unint64_t sub_1D19DED90(uint64_t a1, int a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6530];
  *(inited + 40) = v5;
  *(inited + 48) = a1;
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v6;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1D1E73A90;
  *(v7 + 32) = sub_1D1E6781C();
  *(v7 + 40) = v8;
  v9 = sub_1D1E6781C();
  *(v7 + 72) = MEMORY[0x1E69E6158];
  *(v7 + 48) = v9;
  *(v7 + 56) = v10;
  *(v7 + 80) = sub_1D1E6781C();
  *(v7 + 88) = v11;
  *(v7 + 120) = MEMORY[0x1E69E7668];
  *(v7 + 96) = a2;
  v12 = sub_1D18D6538(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
  swift_arrayDestroy();
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  *(inited + 96) = v12;
  v13 = sub_1D18D6538(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v13;
}

uint64_t MatterAttributeDataBuilder.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  if (v5 <= 1)
  {
    if (!v5)
    {
      MEMORY[0x1D3892850](0);
      return sub_1D1E6922C();
    }

    v9 = 1;
    goto LABEL_15;
  }

  if (v5 == 2)
  {
    v9 = 2;
LABEL_15:
    MEMORY[0x1D3892850](v9);
    return MEMORY[0x1D3892850](v4);
  }

  if (v5 == 3)
  {
    MEMORY[0x1D3892850](3);
    result = MEMORY[0x1D3892850](*(v4 + 16));
    v7 = *(v4 + 16);
    if (v7)
    {
      v8 = v4 + 32;
      do
      {
        v8 += 4;
        result = sub_1D1E6924C();
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    MEMORY[0x1D3892850](4);

    return sub_1D176F7B0(a1, v4);
  }

  return result;
}

uint64_t MatterAttributeDataBuilder.hashValue.getter()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_1D1E6920C();
  MatterAttributeDataBuilder.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D19DF068()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_1D1E6920C();
  MatterAttributeDataBuilder.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D19DF0C0(uint64_t a1)
{
  v2 = *(v1 + 8);
  v5 = *v1;
  v6 = v2;
  sub_1D1E6920C();
  MatterAttributeDataBuilder.hash(into:)(v4);
  return sub_1D1E6926C();
}

uint64_t *_s13HomeDataModel015MatterAttributeB7BuilderO2eeoiySbAC_ACtFZ_0(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 <= 1)
  {
    if (!*(result + 8))
    {
      if (!*(a2 + 8))
      {
        sub_1D1757AE8(*result, 0);
        sub_1D1757AE8(v4, 0);
        v8 = v4 ^ v2 ^ 1;
        return (v8 & 1);
      }

      goto LABEL_23;
    }

    if (v5 == 1)
    {
      sub_1D1757AE8(*result, 1u);
      v9 = v4;
      v10 = 1;
      goto LABEL_22;
    }

LABEL_23:
    sub_1D1741AF8(v4, v5);
    sub_1D1757AE8(v2, v3);
    v12 = v4;
    v13 = v5;
LABEL_24:
    sub_1D1757AE8(v12, v13);
    v8 = 0;
    return (v8 & 1);
  }

  if (v3 == 2)
  {
    if (v5 == 2)
    {
      sub_1D1757AE8(*result, 2u);
      v9 = v4;
      v10 = 2;
LABEL_22:
      sub_1D1757AE8(v9, v10);
      v8 = v2 == v4;
      return (v8 & 1);
    }

    goto LABEL_23;
  }

  if (v3 != 3)
  {
    if (v5 == 4)
    {
      v11 = sub_1D177A140(*result, *a2);
      sub_1D1741AF8(v4, 4u);
      sub_1D1741AF8(v2, 4u);
      sub_1D1757AE8(v2, 4u);
      sub_1D1757AE8(v4, 4u);
      return (v11 & 1);
    }

    goto LABEL_19;
  }

  if (v5 != 3)
  {
LABEL_19:

    goto LABEL_23;
  }

  v6 = *(v2 + 16);
  if (v6 != *(v4 + 16))
  {
LABEL_30:
    sub_1D1741AF8(*a2, 3u);
    sub_1D1741AF8(v2, 3u);
    sub_1D1757AE8(v2, 3u);
    v12 = v4;
    v13 = 3;
    goto LABEL_24;
  }

  if (v6)
  {
    v7 = v2 == v4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_11:
    sub_1D1741AF8(*a2, 3u);
    sub_1D1741AF8(v2, 3u);
    sub_1D1757AE8(v2, 3u);
    sub_1D1757AE8(v4, 3u);
    v8 = 1;
    return (v8 & 1);
  }

  v14 = (v2 + 32);
  v15 = (v4 + 32);
  while (v6)
  {
    if (*v14 != *v15)
    {
      goto LABEL_30;
    }

    ++v14;
    ++v15;
    if (!--v6)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s13HomeDataModel14AttributeValueO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 4)
  {
    if (*(a1 + 16) <= 1u)
    {
      if (*(a1 + 16))
      {
        if (v7 == 1)
        {
          v18 = *a1;
          sub_1D1780698(*a1, v3, 1u);
          sub_1D1780698(v5, v6, 1u);
          v15 = v18 == v5;
          return v15 & 1;
        }
      }

      else if (!*(a2 + 16))
      {
        sub_1D1780698(*a1, v3, 0);
        sub_1D1780698(v5, v6, 0);
        v15 = v5 ^ v2 ^ 1;
        return v15 & 1;
      }
    }

    else if (v4 == 2)
    {
      if (v7 == 2)
      {
        v16 = *a1;
        sub_1D1780698(*a1, v3, 2u);
        sub_1D1780698(v5, v6, 2u);
        v15 = v16 == v5;
        return v15 & 1;
      }
    }

    else if (v4 == 3)
    {
      if (v7 == 3)
      {
        sub_1D1780698(*a1, v3, 3u);
        v8 = v5;
        v9 = v6;
        v10 = 3;
LABEL_18:
        sub_1D1780698(v8, v9, v10);
        v15 = v2 == v5;
        return v15 & 1;
      }
    }

    else if (v7 == 4)
    {
      sub_1D1780698(*a1, v3, 4u);
      sub_1D1780698(v5, v6, 4u);
      v15 = v2 == v5;
      return v15 & 1;
    }

    goto LABEL_36;
  }

  if (*(a1 + 16) <= 6u)
  {
    if (v4 == 5)
    {
      if (v7 == 5)
      {
        sub_1D1780698(*a1, v3, 5u);
        v8 = v5;
        v9 = v6;
        v10 = 5;
        goto LABEL_18;
      }

LABEL_36:
      sub_1D1780654(v5, v6, v7);
      sub_1D1780698(v2, v3, v4);
      sub_1D1780698(v5, v6, v7);
      v15 = 0;
      return v15 & 1;
    }

    if (v7 == 6)
    {
      if (v2 == v5 && v3 == v6)
      {
        sub_1D1780654(*a1, v3, 6u);
        sub_1D1780654(v2, v3, 6u);
        sub_1D1780698(v2, v3, 6u);
        sub_1D1780698(v2, v3, 6u);
        v15 = 1;
        return v15 & 1;
      }

      v11 = sub_1D1E6904C();
      sub_1D1780654(v5, v6, 6u);
      sub_1D1780654(v2, v3, 6u);
      sub_1D1780698(v2, v3, 6u);
      v12 = v5;
      v13 = v6;
      v14 = 6;
      goto LABEL_39;
    }

LABEL_35:

    goto LABEL_36;
  }

  if (v4 == 7)
  {
    if (v7 == 7)
    {
      sub_1D1780654(*a2, *(a2 + 8), 7u);
      sub_1D1780654(v2, v3, 7u);
      v11 = sub_1D177AD6C(v2, v5);
      sub_1D1780698(v2, v3, 7u);
      v12 = v5;
      v13 = v6;
      v14 = 7;
      goto LABEL_39;
    }

    goto LABEL_35;
  }

  if (v4 != 8)
  {
    if (v7 == 9)
    {
      sub_1D1780654(*a2, *(a2 + 8), 9u);
      sub_1D1780654(v2, v3, 9u);
      sub_1D184DD88(v2, v5);
      v11 = v17;
      sub_1D1780698(v2, v3, 9u);
      v12 = v5;
      v13 = v6;
      v14 = 9;
      goto LABEL_39;
    }

    goto LABEL_35;
  }

  if (v7 != 8)
  {
    v19 = v2;
    goto LABEL_36;
  }

  sub_1D1877D48();
  sub_1D1780654(v5, v6, 8u);
  sub_1D1780654(v2, v3, 8u);
  sub_1D1780654(v5, v6, 8u);
  sub_1D1780654(v2, v3, 8u);
  v11 = sub_1D1E684FC();
  sub_1D1780698(v2, v3, 8u);
  sub_1D1780698(v5, v6, 8u);
  sub_1D1780698(v5, v6, 8u);
  v12 = v2;
  v13 = v3;
  v14 = 8;
LABEL_39:
  sub_1D1780698(v12, v13, v14);
  return v11 & 1;
}

unint64_t sub_1D19DF73C()
{
  result = qword_1EC648708;
  if (!qword_1EC648708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648708);
  }

  return result;
}

unint64_t sub_1D19DF794()
{
  result = qword_1EC648710;
  if (!qword_1EC648710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648710);
  }

  return result;
}

uint64_t sub_1D19DF7F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 17))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 16);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D19DF83C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
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

uint64_t sub_1D19DF8B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D19DF924(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static MatterDeviceType.primaryDeviceType(for:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    MEMORY[0x1EEE9AC00](v8);
    bzero(v24 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = 0;
    v10 = 0;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_12:
      if (*(*(a1 + 48) + v16) >= 3u)
      {
        *(v24 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v16;
        if (__OFADD__(v9++, 1))
        {
          __break(1u);
LABEL_16:
          v20 = sub_1D19E119C((v24 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, v9, a1);
          goto LABEL_17;
        }
      }
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v14)
      {
        goto LABEL_16;
      }

      v18 = *(a1 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();

  v23 = sub_1D19E315C(v22, v6, a1, sub_1D19E00F0);
  swift_bridgeObjectRelease_n();
  MEMORY[0x1D3893640](v22, -1, -1);
  v20 = v23;
LABEL_17:
  sub_1D1771CC0(v20, a2);
}

HomeDataModel::MatterDeviceType_optional __swiftcall MatterDeviceType.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue <= 259)
  {
    if (rawValue > 38)
    {
      if (rawValue <= 143)
      {
        switch(rawValue)
        {
          case '\'':
            *v1 = 3;
            return rawValue;
          case '+':
            *v1 = 18;
            return rawValue;
          case 't':
            *v1 = 23;
            return rawValue;
        }
      }

      else if (rawValue > 256)
      {
        if (rawValue == 257)
        {
          *v1 = 5;
          return rawValue;
        }

        if (rawValue == 259)
        {
          *v1 = 9;
          return rawValue;
        }
      }

      else
      {
        if (rawValue == 144)
        {
          *v1 = 27;
          return rawValue;
        }

        if (rawValue == 256)
        {
          *v1 = 4;
          return rawValue;
        }
      }
    }

    else if (rawValue <= 16)
    {
      switch(rawValue)
      {
        case 0xAu:
          *v1 = 21;
          return rawValue;
        case 0xBu:
          *v1 = 22;
          return rawValue;
        case 0xFu:
          *v1 = 8;
          return rawValue;
      }
    }

    else if (rawValue > 20)
    {
      if (rawValue == 21)
      {
        *v1 = 24;
        return rawValue;
      }

      if (rawValue == 22)
      {
        *v1 = 0;
        return rawValue;
      }
    }

    else
    {
      if (rawValue == 17)
      {
        *v1 = 1;
        return rawValue;
      }

      if (rawValue == 19)
      {
        *v1 = 2;
        return rawValue;
      }
    }

LABEL_66:
    *v1 = 28;
    return rawValue;
  }

  if (rawValue > 268)
  {
    if (rawValue <= 767)
    {
      switch(rawValue)
      {
        case 0x10Du:
          *v1 = 7;
          return rawValue;
        case 0x202u:
          *v1 = 16;
          return rawValue;
        case 0x203u:
          *v1 = 17;
          return rawValue;
      }
    }

    else if (rawValue > 770)
    {
      if (rawValue == 771)
      {
        *v1 = 19;
        return rawValue;
      }

      if (rawValue == 772)
      {
        *v1 = 20;
        return rawValue;
      }
    }

    else
    {
      if (rawValue == 768)
      {
        *v1 = 14;
        return rawValue;
      }

      if (rawValue == 769)
      {
        *v1 = 15;
        return rawValue;
      }
    }

    goto LABEL_66;
  }

  if (rawValue <= 262)
  {
    if (rawValue == 260)
    {
      *v1 = 10;
    }

    else if (rawValue == 261)
    {
      *v1 = 11;
    }

    else
    {
      *v1 = 25;
    }
  }

  else
  {
    if (rawValue <= 266)
    {
      if (rawValue == 263)
      {
        *v1 = 26;
        return rawValue;
      }

      if (rawValue == 266)
      {
        *v1 = 12;
        return rawValue;
      }

      goto LABEL_66;
    }

    if (rawValue == 267)
    {
      *v1 = 13;
    }

    else
    {
      *v1 = 6;
    }
  }

  return rawValue;
}

Swift::Bool __swiftcall MatterDeviceType.contains(cluster:)(HomeDataModel::ClusterKind cluster)
{
  v2 = *cluster;
  v3 = *v1;
  v4 = 0x186CE0u >> v3;
  if (v3 >= 0x15)
  {
    LOBYTE(v4) = 0;
  }

  v5 = v3 >= 0x15;
  v6 = 0x187EF0u >> v3;
  if (v5)
  {
    LOBYTE(v6) = 0;
  }

  if (v2 != 11)
  {
    LOBYTE(v6) = 0;
  }

  if (v2 == 12)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  return v7 & 1;
}

uint64_t sub_1D19DFF48()
{
  sub_1D1E6920C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19DFFD0(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19E0100()
{
  result = sub_1D19E0120();
  qword_1EC648718 = result;
  return result;
}

uint64_t sub_1D19E0120()
{
  if (qword_1EE07AE38 != -1)
  {
    swift_once();
  }

  if (qword_1EE07AE40 > 3)
  {
    if (qword_1EE07AE40 != 4 && qword_1EE07AE40 != 6 && qword_1EE07AE40 != 7)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (qword_1EE07AE40 < 2)
  {
    if (qword_1EC642278 == -1)
    {
    }

LABEL_20:
    swift_once();
  }

  if (qword_1EE07AE40 == 2 || qword_1EE07AE40 == 3)
  {
LABEL_11:
    if (qword_1EC642280 == -1)
    {
    }

    goto LABEL_20;
  }

LABEL_15:
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EE07A0B0);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6833C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1D1B1312C(0xD000000000000010, 0x80000001D1E8E9D0, &v6);
    _os_log_impl(&dword_1D16EC000, v2, v3, "%s Unsupported context. Cannot get supported devices.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D3893640](v5, -1, -1);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t static MatterDeviceType.contextSupported.getter()
{
  if (qword_1EC642270 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D19E03A8()
{
  result = sub_1D179C134(&unk_1F4D65918);
  qword_1EC648720 = result;
  return result;
}

uint64_t sub_1D19E03D0()
{
  result = sub_1D179C134(&unk_1F4D65940);
  qword_1EC648728 = result;
  return result;
}

uint64_t MatterDeviceType.homeAppSupported.getter()
{
  v1 = *v0;
  if (qword_1EC642278 != -1)
  {
    v3 = *v0;
    swift_once();
    v1 = v3;
  }

  if (sub_1D1719A64(v1, qword_1EC648720))
  {
    return 1;
  }

  if (qword_1EC6422B0 != -1)
  {
    swift_once();
  }

  return byte_1EC649198;
}

void MatterDeviceType.umbrellaCategory.getter(_BYTE *a1@<X8>)
{
  if (*v1 - 4 > 0x16)
  {
    *a1 = 7;
  }

  else
  {
    *a1 = byte_1D1E8EB1A[(*v1 - 4)];
  }
}

uint64_t sub_1D19E04D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for StaticMediaProfile(0);
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v26 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647438, &unk_1D1E8EAE0);
  result = sub_1D1E6882C();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v25 = result + 56;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v28 = (v12 - 1) & v12;
LABEL_16:
    v17 = a4;
    v18 = *(a4 + 48);
    v19 = v26;
    v20 = *(v27 + 72);
    sub_1D19E33E8(v18 + v20 * (v14 | (v13 << 6)), v26, type metadata accessor for StaticMediaProfile);
    sub_1D1E6920C();
    StaticMediaProfile.hash(into:)(v29);
    sub_1D1E6926C();
    v21 = v25;
    v22 = sub_1D1E686CC();
    *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = sub_1D19E3450(v19, *(v10 + 48) + v22 * v20, type metadata accessor for StaticMediaProfile);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    a4 = v17;
    v12 = v28;
    if (!a3)
    {
LABEL_18:

      return v10;
    }
  }

  v15 = v13;
  while (1)
  {
    v13 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_18;
    }

    v16 = a1[v13];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v28 = (v16 - 1) & v16;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D19E073C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for StaticAccessory(0);
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v26 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647450, &qword_1D1E85630);
  result = sub_1D1E6882C();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v25 = result + 56;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v28 = (v12 - 1) & v12;
LABEL_16:
    v17 = a4;
    v18 = *(a4 + 48);
    v19 = v26;
    v20 = *(v27 + 72);
    sub_1D19E33E8(v18 + v20 * (v14 | (v13 << 6)), v26, type metadata accessor for StaticAccessory);
    sub_1D1E6920C();
    StaticAccessory.hash(into:)(v29);
    sub_1D1E6926C();
    v21 = v25;
    v22 = sub_1D1E686CC();
    *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = sub_1D19E3450(v19, *(v10 + 48) + v22 * v20, type metadata accessor for StaticAccessory);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    a4 = v17;
    v12 = v28;
    if (!a3)
    {
LABEL_18:

      return v10;
    }
  }

  v15 = v13;
  while (1)
  {
    v13 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_18;
    }

    v16 = a1[v13];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v28 = (v16 - 1) & v16;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D19E09A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for StaticAccessory(0);
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647450, &qword_1D1E85630);
  result = sub_1D1E6882C();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v20 = *(v32 + 72);
    sub_1D19E33E8(v19 + v20 * (v16 | (v14 << 6)), v10, type metadata accessor for StaticAccessory);
    sub_1D1E6920C();
    StaticAccessory.hash(into:)(v33);
    result = sub_1D1E6926C();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_1D19E3450(v10, *(v11 + 48) + v24 * v20, type metadata accessor for StaticAccessory);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D19E0C6C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for StaticServiceGroup(0);
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v26 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647430, &unk_1D1E8EAB0);
  result = sub_1D1E6882C();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v25 = result + 56;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v28 = (v12 - 1) & v12;
LABEL_16:
    v17 = a4;
    v18 = *(a4 + 48);
    v19 = v26;
    v20 = *(v27 + 72);
    sub_1D19E33E8(v18 + v20 * (v14 | (v13 << 6)), v26, type metadata accessor for StaticServiceGroup);
    sub_1D1E6920C();
    StaticServiceGroup.hash(into:)(v29);
    sub_1D1E6926C();
    v21 = v25;
    v22 = sub_1D1E686CC();
    *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = sub_1D19E3450(v19, *(v10 + 48) + v22 * v20, type metadata accessor for StaticServiceGroup);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    a4 = v17;
    v12 = v28;
    if (!a3)
    {
LABEL_18:

      return v10;
    }
  }

  v15 = v13;
  while (1)
  {
    v13 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_18;
    }

    v16 = a1[v13];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v28 = (v16 - 1) & v16;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D19E0ED0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for StaticService(0);
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439F0, &qword_1D1E72F68);
  result = sub_1D1E6882C();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v20 = *(v32 + 72);
    sub_1D19E33E8(v19 + v20 * (v16 | (v14 << 6)), v10, type metadata accessor for StaticService);
    sub_1D1E6920C();
    StaticService.hash(into:)(v33);
    result = sub_1D1E6926C();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_1D19E3450(v10, *(v11 + 48) + v24 * v20, type metadata accessor for StaticService);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D19E119C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439C8, &qword_1D1E8EB10);
  result = sub_1D1E6882C();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_1D1E6920C();
    sub_1D1E6924C();
    result = sub_1D1E6926C();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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

uint64_t sub_1D19E13B0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1D1E66A7C();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439F8, &qword_1D1E72F70);
  result = sub_1D1E6882C();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1D17579AC();
    result = sub_1D1E676DC();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D19E16BC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643018, &qword_1D1E9AC00);
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v34 - v9);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473F0, &unk_1D1E8EA90);
  result = sub_1D1E6882C();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v34 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v37 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v38 = *(v35 + 72);
    sub_1D1741C08(v19 + v38 * (v16 | (v14 << 6)), v10, &qword_1EC643018, &qword_1D1E9AC00);
    sub_1D1E6920C();
    v21 = v10[3];
    v20 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v21);
    (*(v20 + 8))(v21, v20);
    sub_1D1E678EC();

    v22 = v10[3];
    v23 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v22);
    (*(v23 + 16))(v22, v23);
    sub_1D1E678EC();

    v24 = v36;
    sub_1D1E66A7C();
    sub_1D17579AC();
    sub_1D1E676EC();
    MEMORY[0x1D3892890](*(v10 + *(v24 + 40)));
    result = sub_1D1E6926C();
    v25 = -1 << *(v11 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      a4 = v34;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v15 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
    a4 = v34;
LABEL_26:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = sub_1D1741A90(v10, *(v11 + 48) + v28 * v38, &qword_1EC643018, &qword_1D1E9AC00);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v13 = v37;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v37 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D19E1A90(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647488, &qword_1D1E85660);
  result = sub_1D1E6882C();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_1D1E6920C();
    sub_1D1E6923C();
    sub_1D1E678EC();
    result = sub_1D1E6926C();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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

uint64_t sub_1D19E1D04(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for MatterTilePath(0);
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647480, &unk_1D1E8EB00);
  result = sub_1D1E6882C();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v32 + 72);
    sub_1D19E33E8(v19 + v34 * (v16 | (v14 << 6)), v10, type metadata accessor for MatterTilePath);
    sub_1D1E6920C();
    sub_1D1E66A7C();
    sub_1D17579AC();
    sub_1D1E676EC();
    v20 = v33;
    MEMORY[0x1D3892890](*&v10[*(v33 + 20)]);
    if (v10[*(v20 + 24) + 2] == 1)
    {
      sub_1D1E6922C();
    }

    else
    {
      sub_1D1E6922C();
      sub_1D1E6923C();
    }

    result = sub_1D1E6926C();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    a4 = v31;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_34;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_1D19E3450(v10, *(v11 + 48) + v24 * v34, type metadata accessor for MatterTilePath);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_35;
    }

    if (!a3)
    {
LABEL_31:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_31;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}