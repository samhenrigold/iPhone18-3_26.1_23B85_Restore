void MTR.RVCDevice.firstMopCleaningMode.getter(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 80);
  if (v2)
  {
    v23 = *(v1 + 80);
    v24 = a1;
    v3 = 0;
    v4 = v2 + 56;
    v5 = 1 << *(v2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v2 + 56);
    v8 = (v5 + 63) >> 6;
LABEL_6:
    while (v7)
    {
LABEL_11:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(v2 + 48) + ((v3 << 11) | (32 * v10));
      v12 = *(v11 + 24);
      if (*(v12 + 16))
      {
        v25 = *v11;
        v26 = *(v11 + 16);
        sub_2531DB3F4();
        sub_2531DB424();
        v13 = sub_2531DB454();
        v14 = v12 + 56;
        v15 = -1 << *(v12 + 32);
        v16 = v13 & ~v15;
        if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          v17 = ~v15;
          v18 = *(v12 + 48);
          while (*(v18 + v16) < 0xCu)
          {
            v16 = (v16 + 1) & v17;
            if (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
LABEL_16:
              v2 = v23;
              goto LABEL_6;
            }
          }

          v19 = byte_2864F1008;
          sub_2531DB3F4();
          v20 = word_2531E582A[v19];
          sub_2531DB424();
          for (i = sub_2531DB454() & v17; ((*(v14 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0; i = (i + 1) & v17)
          {
            if (word_2531E582A[*(v18 + i)] == v20)
            {
              goto LABEL_16;
            }
          }

          *v24 = v25;
          *(v24 + 2) = v26;
          *(v24 + 3) = v12;

          return;
        }
      }
    }

    while (1)
    {
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v9 >= v8)
      {
        v22 = 0uLL;
        a1 = v24;
        goto LABEL_23;
      }

      v7 = *(v4 + 8 * v9);
      ++v3;
      if (v7)
      {
        v3 = v9;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v22 = 0uLL;
LABEL_23:
    *a1 = v22;
    a1[1] = v22;
  }
}

void MTR.RVCDevice.firstVacuumAndMopCleaningMode.getter(void *a1@<X8>)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    v4 = 1 << *(v3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v3 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    while (v6)
    {
      v9 = v8;
LABEL_11:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = (*(v3 + 48) + ((v9 << 11) | (32 * v10)));
      v13 = *v11;
      v12 = v11[1];
      v15 = v11[2];
      v14 = v11[3];
      if (sub_25318D5E0(&unk_2864F1010, v14))
      {

        *a1 = v13;
        a1[1] = v12;
        a1[2] = v15;
        a1[3] = v14;
        return;
      }
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        goto LABEL_14;
      }

      v6 = *(v3 + 56 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }
}

uint64_t MTR.RVCDevice.init(device:endpoint:)@<X0>(__int128 *a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v14 = a1;
  v5 = sub_2531DAAA4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2531DAAC4();
  MEMORY[0x28223BE20](v9);
  v10 = sub_2531DA5B4();
  MEMORY[0x28223BE20](v10 - 8);
  v13 = *a2;
  sub_253181ED8(0, &qword_27F58D998, 0x277D85C90);
  sub_2531DA5A4();
  v15 = MEMORY[0x277D84F90];
  sub_253196EDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9A8, &qword_2531E5670);
  sub_253196F34();
  sub_2531DAB54();
  (*(v6 + 104))(v8, *MEMORY[0x277D85268], v5);
  *a3 = sub_2531DAAD4();
  *(a3 + 50) = 118295810;
  *(a3 + 54) = 12;
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  result = sub_253168604(v14, a3 + 8);
  *(a3 + 48) = v13;
  return result;
}

uint64_t MTR.RVCDevice.hash(into:)(__int128 *a1)
{
  v2 = v1;
  sub_2531DB424();
  switch(*(v2 + 51))
  {
    case 0xD:
      break;
    default:
      sub_2531DB424();
      break;
  }

  switch(*(v2 + 52))
  {
    case 0xD:
      break;
    default:
      sub_2531DB424();
      break;
  }

  if (*(v2 + 53) <= 6u)
  {
    sub_2531DB414();
  }

  result = *(v2 + 54);
  if (*(v2 + 54) <= 6u || *(v2 + 54) <= 0xAu || result == 11)
  {
    result = sub_2531DB414();
  }

  v5 = *(v2 + 80);
  if (v5)
  {
    result = sub_25318C9F4(a1, v5);
  }

  v6 = *(v2 + 72);
  if (v6)
  {
    result = sub_25318C9F4(a1, v6);
  }

  v7 = *(v2 + 88);
  if (v7)
  {

    return sub_25318CBA8(a1, v7);
  }

  return result;
}

uint64_t sub_25318F0B0()
{
  v18 = v0;
  v1 = *(v0 + 272);
  *(v0 + 264) = MEMORY[0x277D84F90];
  v2 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D1E8, &qword_2531E1490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2531E14E0;
  *(inited + 32) = v2;
  *(inited + 36) = 0x10000001DLL;
  sub_25318DED4(inited);
  v4 = *(v1 + 48);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_2531E53E0;
  *(v5 + 32) = v4;
  *(v5 + 36) = 0x100000054;
  *(v5 + 44) = v4;
  *(v5 + 48) = 84;
  sub_25318DED4(v5);
  v6 = *(v1 + 48);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_2531E53E0;
  *(v7 + 32) = v6;
  *(v7 + 36) = 0x100000055;
  *(v7 + 44) = v6;
  *(v7 + 48) = 85;
  sub_25318DED4(v7);
  v17 = *(v1 + 48);
  _s23HomeKitDaemonFoundation3MTRO7ClusterO19RVCOperationalStateV14attributePaths8endpointSayAC9AttributeO4PathVGAC8EndpointO2IDV_tFZ_0(&v17);
  sub_25318DED4(v8);
  v9 = *(v1 + 48);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_2531E14E0;
  *(v10 + 32) = v9;
  *(v10 + 36) = 0x300000150;
  sub_25318DED4(v10);
  v11 = *(v1 + 32);
  v12 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1((v1 + 8), v11);
  v13 = *(v0 + 264);
  *(v0 + 280) = v13;
  *(v0 + 224) = xmmword_2531E2770;
  *(v0 + 240) = 10;
  v16 = (*(v12 + 32) + **(v12 + 32));
  v14 = swift_task_alloc();
  *(v0 + 288) = v14;
  *v14 = v0;
  v14[1] = sub_25318F33C;

  return v16(v0 + 248, v13, v0 + 224, v11, v12);
}

uint64_t sub_25318F33C()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_25318F834;
  }

  else
  {
    v2 = sub_25318F46C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25318F46C()
{
  v25 = v0;
  v2 = v0[31];
  v1 = v0[32];
  if (qword_27F58D0F0 != -1)
  {
    swift_once();
  }

  v3 = sub_2531DA274();
  __swift_project_value_buffer(v3, qword_27F59A2A8);

  v4 = sub_2531DA254();
  v5 = sub_2531DAA64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    sub_2531DABC4();

    strcpy(v24, "ReadResponse: ");
    HIBYTE(v24[1]) = -18;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D178, &qword_2531E11F8);
    v9 = MEMORY[0x259BFE6E0](v2, v8);
    MEMORY[0x259BFE570](v9);

    MEMORY[0x259BFE570](0x20726F6620, 0xE500000000000000);
    v10 = MEMORY[0x259BFE6E0](v1, &type metadata for MTR.Attribute.Path);
    MEMORY[0x259BFE570](v10);

    v11 = sub_253196608(v24[0], v24[1], &v23);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_253166000, v4, v5, "Everything : %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x259BFFA80](v7, -1, -1);
    MEMORY[0x259BFFA80](v6, -1, -1);
  }

  v12 = v0[34];
  v24[0] = v2;
  v24[1] = v1;
  LOWORD(v23) = *(v12 + 48);
  v13 = sub_253197D6C(v24, &v23);

  *(v12 + 96) = v13;
  v24[0] = v2;
  v24[1] = v1;
  LOWORD(v23) = *(v12 + 48);
  v14 = sub_2531C3048(v24, &v23);

  *(v12 + 72) = v14;
  v24[0] = v2;
  v24[1] = v1;
  LOWORD(v23) = *(v12 + 48);
  sub_2531BF1B0(v24, &v23, &v22);
  *(v12 + 51) = v22;
  v24[0] = v2;
  v24[1] = v1;
  LOWORD(v23) = *(v12 + 48);
  Result8endpointShyAGGSgAC9AttributeO05BatchnO0V_AC8EndpointO2IDVtFZ_0 = _s23HomeKitDaemonFoundation3MTRO7ClusterO12RVCCleanModeV17allCleanModesFrom15batchReadResult8endpointShyAGGSgAC9AttributeO05BatchnO0V_AC8EndpointO2IDVtFZ_0(v24, &v23);

  *(v12 + 80) = Result8endpointShyAGGSgAC9AttributeO05BatchnO0V_AC8EndpointO2IDVtFZ_0;
  v24[0] = v2;
  v24[1] = v1;
  LOWORD(v23) = *(v12 + 48);
  static MTR.Cluster.RVCCleanMode.currentRunModeFrom(batchReadResult:endpoint:)(v24, &v23, &v22);
  *(v12 + 52) = v22;
  v24[0] = v2;
  v24[1] = v1;
  LOWORD(v23) = *(v12 + 48);
  v16 = sub_2531C48F0(v24, &v23);

  *(v12 + 88) = v16;
  v24[0] = v2;
  v24[1] = v1;
  LOWORD(v23) = *(v12 + 48);
  sub_2531C37B4(v24, &v23);
  *(v12 + 53) = v22;
  v24[0] = v2;
  v24[1] = v1;
  LOWORD(v23) = *(v12 + 48);
  sub_2531C37D8(v24, &v23);
  *(v12 + 54) = v22;
  v24[0] = v2;
  v24[1] = v1;
  LOWORD(v23) = *(v12 + 48);
  v17 = sub_25316FB68(v24, &v23);
  v19 = v18;

  *(v12 + 56) = v17;
  *(v12 + 64) = v19 & 1;
  v20 = v0[1];

  return v20();
}

uint64_t MTR.RVCDevice.goHome()()
{
  v1[37] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9B8, &qword_2531E5688);
  v1[38] = v2;
  v1[39] = *(v2 - 8);
  v1[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25318F918, 0, 0);
}

uint64_t sub_25318F918()
{
  v49 = v0;
  sub_25316B6E4(v0[37] + 8, (v0 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9C0, &qword_2531E5690);
  sub_253181ED8(0, &qword_27F58D9C8, 0x277CD5310);
  if (swift_dynamicCast())
  {
    v1 = v0[37];
    v2 = v0[33];
    v0[41] = v2;
    v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
    v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    v6 = [objc_opt_self() attributePathWithEndpointID:v3 clusterID:v4 attributeID:v5];
    v0[42] = v6;

    v47 = xmmword_2531E5650;
    v48 = 2;
    MTR.Value.makeDataValue()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9D0, &qword_2531E5698);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2531E53E0;
    *(inited + 32) = sub_2531DA6D4();
    *(inited + 40) = v8;
    *(inited + 48) = v6;
    *(inited + 56) = sub_2531DA6D4();
    *(inited + 64) = v9;
    v10 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D730, &qword_2531E48E0);
    v11 = sub_2531DA604();

    *(inited + 72) = v11;
    v12 = sub_2531B589C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9D8, &qword_2531E56A0);
    swift_arrayDestroy();
    v13 = sub_25316A984(0, 1, 1, MEMORY[0x277D84F90]);
    v15 = v13[2];
    v14 = v13[3];
    if (v15 >= v14 >> 1)
    {
      v13 = sub_25316A984((v14 > 1), v15 + 1, 1, v13);
    }

    v0[43] = v13;
    v16 = v0[37];
    v13[2] = v15 + 1;
    v13[v15 + 4] = v12;
    v17 = v2;
    v18 = sub_2531DB474();
    v19 = [objc_allocWithZone(MEMORY[0x277CD52A0]) initWithDevice:v17 endpointID:v18 queue:*v16];
    v0[44] = v19;

    if (v19)
    {
      if (qword_27F58D0F0 != -1)
      {
        swift_once();
      }

      v20 = sub_2531DA274();
      v0[45] = __swift_project_value_buffer(v20, qword_27F59A2A8);

      v21 = sub_2531DA254();
      v22 = sub_2531DAA64();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *&v47 = v24;
        *v23 = 136315138;
        v0[36] = v13;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9E8, &qword_2531E56A8);
        v25 = sub_2531DA704();
        v27 = sub_253196608(v25, v26, &v47);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_253166000, v21, v22, "Issuing goHome command to RVC : %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x259BFFA80](v24, -1, -1);
        MEMORY[0x259BFFA80](v23, -1, -1);
      }

      v46 = v19;
      sub_253190648(v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D170, &qword_2531E2AB0);
      v45 = sub_2531DA894();
      v0[46] = v45;

      if (qword_27F58D0E0 != -1)
      {
        swift_once();
      }

      v28 = v0[39];
      v29 = v0[40];
      v30 = v0[38];
      v44 = qword_27F59A2A0;
      v0[2] = v0;
      v0[7] = v0 + 34;
      v0[3] = sub_253190174;
      swift_continuation_init();
      v0[27] = v30;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 24);
      v0[47] = sub_253181ED8(0, &qword_27F58D9E0, 0x277CD54B8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D758, &qword_2531E4FB0);
      sub_2531DA954();
      (*(v28 + 32))(boxed_opaque_existential_0, v29, v30);
      v0[20] = MEMORY[0x277D85DD0];
      v0[21] = 1107296256;
      v0[22] = sub_253190A1C;
      v0[23] = &block_descriptor_0;
      [v46 goHomeWithExpectedValues:v45 expectedValueInterval:v44 completion:v0 + 20];
      (*(v28 + 8))(boxed_opaque_existential_0, v30);

      return MEMORY[0x282200938](v0 + 2);
    }

    if (qword_27F58D0F0 != -1)
    {
      swift_once();
    }

    v37 = sub_2531DA274();
    __swift_project_value_buffer(v37, qword_27F59A2A8);
    v38 = sub_2531DA254();
    v39 = sub_2531DAA64();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_253166000, v38, v39, "Unable to create MTRClusterRVCOperationalState for goHome command", v40, 2u);
      MEMORY[0x259BFFA80](v40, -1, -1);
    }

    sub_25318DD6C();
    swift_allocError();
    *v41 = 14;
    swift_willThrow();
  }

  else
  {
    if (qword_27F58D0F0 != -1)
    {
      swift_once();
    }

    v32 = sub_2531DA274();
    __swift_project_value_buffer(v32, qword_27F59A2A8);
    v33 = sub_2531DA254();
    v34 = sub_2531DAA84();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_253166000, v33, v34, "goHome: Invalid Matter device", v35, 2u);
      MEMORY[0x259BFFA80](v35, -1, -1);
    }

    sub_25318DD6C();
    swift_allocError();
    *v36 = 13;
    swift_willThrow();
  }

  v42 = v0[1];

  return v42();
}

uint64_t sub_253190174()
{
  v1 = *(*v0 + 48);
  *(*v0 + 384) = v1;
  if (v1)
  {

    v2 = sub_2531905B0;
  }

  else
  {
    v2 = sub_25319028C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25319028C()
{
  v30 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 272);

  v3 = sub_2531DA254();
  v4 = sub_2531DAA64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29[0] = v6;
    *v5 = 136315138;
    *(v0 + 280) = v2;
    v7 = v2;
    v8 = sub_2531DA704();
    v10 = sub_253196608(v8, v9, v29);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_253166000, v3, v4, "goHome command response: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x259BFFA80](v6, -1, -1);
    MEMORY[0x259BFFA80](v5, -1, -1);
  }

  v11 = [v2 commandResponseState];
  v12 = [v11 errorStateID];

  LOBYTE(v11) = [v12 unsignedCharValue];

  sub_253197FBC(v11, v29);
  v13 = v29[0];
  if (LOBYTE(v29[0]))
  {
    v14 = sub_2531DA254();
    v15 = sub_2531DAA84();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      sub_25318DD6C();
      swift_allocError();
      *v18 = v13;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_253166000, v14, v15, "operationalStateCluster.goHome failed with error: %@", v16, 0xCu);
      sub_25316FD44(v17);
      MEMORY[0x259BFFA80](v17, -1, -1);
      MEMORY[0x259BFFA80](v16, -1, -1);
    }

    v20 = *(v0 + 352);
    v22 = *(v0 + 328);
    v21 = *(v0 + 336);

    sub_25318DD6C();
    swift_allocError();
    *v23 = v13;
    swift_willThrow();

    v24 = *(v0 + 8);
  }

  else
  {
    v25 = *(v0 + 352);
    v27 = *(v0 + 328);
    v26 = *(v0 + 336);

    v24 = *(v0 + 8);
  }

  return v24();
}

uint64_t sub_2531905B0(uint64_t a1)
{
  v2 = v1[46];
  v3 = v1[44];
  v5 = v1[41];
  v4 = v1[42];
  swift_willThrow();

  v6 = v1[1];

  return v6();
}

uint64_t sub_253190648(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_2531B46CC(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D1D0, &qword_2531E1478);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D170, &qword_2531E2AB0);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2531B46CC((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_253190778(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    sub_2531DAC94();
    v4 = a1 + 32;
    do
    {
      v4 += 4;
      sub_2531DB484();
      sub_2531DAC64();
      sub_2531DACA4();
      sub_2531DACB4();
      sub_2531DAC74();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

char *sub_253190820(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2531DAD44();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_2531B470C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x259BFEA20](i, a1);
        sub_253181ED8(0, &qword_27F58D978, 0x277CCABB0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2531B470C((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_25318306C(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_253181ED8(0, &qword_27F58D978, 0x277CCABB0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2531B470C((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_25318306C(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t MTR.RVCDevice.pause()()
{
  v1[37] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9B8, &qword_2531E5688);
  v1[38] = v2;
  v1[39] = *(v2 - 8);
  v1[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253190AFC, 0, 0);
}

uint64_t sub_253190AFC()
{
  v59 = v0;
  v1 = v0[37];
  v2 = *(v1 + 53);
  v3 = v2 >= 5;
  v4 = v2 - 5;
  if (v3)
  {
    if (v4 >= 2)
    {
      if (qword_27F58D0F0 != -1)
      {
        swift_once();
      }

      v43 = sub_2531DA274();
      __swift_project_value_buffer(v43, qword_27F59A2A8);
      v33 = sub_2531DA254();
      v34 = sub_2531DAA84();
      if (!os_log_type_enabled(v33, v34))
      {
        goto LABEL_25;
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "pause: Current operational state not available. Cannot pause";
    }

    else
    {
      if (qword_27F58D0F0 != -1)
      {
        swift_once();
      }

      v32 = sub_2531DA274();
      __swift_project_value_buffer(v32, qword_27F59A2A8);
      v33 = sub_2531DA254();
      v34 = sub_2531DAA84();
      if (!os_log_type_enabled(v33, v34))
      {
        goto LABEL_25;
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "Cannot pause RVC while charging or docked";
    }

    _os_log_impl(&dword_253166000, v33, v34, v36, v35, 2u);
    MEMORY[0x259BFFA80](v35, -1, -1);
LABEL_25:

    sub_25318DD6C();
    swift_allocError();
    v42 = 6;
LABEL_26:
    *v41 = v42;
    swift_willThrow();
    goto LABEL_27;
  }

  sub_25316B6E4(v1 + 8, (v0 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9C0, &qword_2531E5690);
  sub_253181ED8(0, &qword_27F58D9C8, 0x277CD5310);
  if (!swift_dynamicCast())
  {
    if (qword_27F58D0F0 != -1)
    {
      swift_once();
    }

    v37 = sub_2531DA274();
    __swift_project_value_buffer(v37, qword_27F59A2A8);
    v38 = sub_2531DA254();
    v39 = sub_2531DAA84();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_253166000, v38, v39, "pause: Invalid Matter device", v40, 2u);
      MEMORY[0x259BFFA80](v40, -1, -1);
    }

    sub_25318DD6C();
    swift_allocError();
    v42 = 13;
    goto LABEL_26;
  }

  v5 = v0[37];
  v6 = v0[33];
  v0[41] = v6;
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v10 = [objc_opt_self() attributePathWithEndpointID:v7 clusterID:v8 attributeID:v9];
  v0[42] = v10;

  v57 = xmmword_2531E5660;
  v58 = 2;
  MTR.Value.makeDataValue()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9D0, &qword_2531E5698);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2531E53E0;
  *(inited + 32) = sub_2531DA6D4();
  *(inited + 40) = v12;
  *(inited + 48) = v10;
  *(inited + 56) = sub_2531DA6D4();
  *(inited + 64) = v13;
  v14 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D730, &qword_2531E48E0);
  v15 = sub_2531DA604();

  *(inited + 72) = v15;
  v16 = sub_2531B589C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9D8, &qword_2531E56A0);
  swift_arrayDestroy();
  v17 = sub_25316A984(0, 1, 1, MEMORY[0x277D84F90]);
  v19 = v17[2];
  v18 = v17[3];
  if (v19 >= v18 >> 1)
  {
    v17 = sub_25316A984((v18 > 1), v19 + 1, 1, v17);
  }

  v20 = v0[37];
  v17[2] = v19 + 1;
  v17[v19 + 4] = v16;
  v21 = v6;
  v22 = sub_2531DB474();
  v23 = [objc_allocWithZone(MEMORY[0x277CD52A0]) initWithDevice:v21 endpointID:v22 queue:*v20];
  v0[43] = v23;

  if (v23)
  {
    if (qword_27F58D0F0 != -1)
    {
      swift_once();
    }

    v24 = sub_2531DA274();
    v0[44] = __swift_project_value_buffer(v24, qword_27F59A2A8);
    swift_bridgeObjectRetain_n();
    v25 = sub_2531DA254();
    v26 = sub_2531DAA64();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v57 = v28;
      *v27 = 136315138;
      v0[36] = v17;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9E8, &qword_2531E56A8);
      v29 = sub_2531DA704();
      v31 = sub_253196608(v29, v30, &v57);

      *(v27 + 4) = v31;

      _os_log_impl(&dword_253166000, v25, v26, "Issuing pause command to RVC : %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x259BFFA80](v28, -1, -1);
      MEMORY[0x259BFFA80](v27, -1, -1);
    }

    else
    {
    }

    sub_253190648(v17);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D170, &qword_2531E2AB0);
    v56 = sub_2531DA894();
    v0[45] = v56;

    if (qword_27F58D0E0 != -1)
    {
      swift_once();
    }

    v51 = v0[39];
    v52 = v0[40];
    v53 = v0[38];
    v55 = qword_27F59A2A0;
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_2531914F4;
    swift_continuation_init();
    v0[27] = v53;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 24);
    v0[46] = sub_253181ED8(0, &qword_27F58D9E0, 0x277CD54B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D758, &qword_2531E4FB0);
    sub_2531DA954();
    (*(v51 + 32))(boxed_opaque_existential_0, v52, v53);
    v0[20] = MEMORY[0x277D85DD0];
    v0[21] = 1107296256;
    v0[22] = sub_253190A1C;
    v0[23] = &block_descriptor_8;
    [v23 pauseWithExpectedValues:v56 expectedValueInterval:v55 completion:v0 + 20];
    (*(v51 + 8))(boxed_opaque_existential_0, v53);

    return MEMORY[0x282200938](v0 + 2);
  }

  if (qword_27F58D0F0 != -1)
  {
    swift_once();
  }

  v46 = sub_2531DA274();
  __swift_project_value_buffer(v46, qword_27F59A2A8);
  v47 = sub_2531DA254();
  v48 = sub_2531DAA64();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_253166000, v47, v48, "Unable to create MTRClusterRVCOperationalState for pause command", v49, 2u);
    MEMORY[0x259BFFA80](v49, -1, -1);
  }

  sub_25318DD6C();
  swift_allocError();
  *v50 = 14;
  swift_willThrow();

LABEL_27:

  v44 = v0[1];

  return v44();
}

uint64_t sub_2531914F4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 376) = v1;
  if (v1)
  {
    v2 = sub_2531917BC;
  }

  else
  {
    v2 = sub_253191604;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_253191604()
{
  v19 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 272);

  v3 = v2;
  v4 = sub_2531DA254();
  v5 = sub_2531DAA64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 344);
    v17 = *(v0 + 336);
    v7 = *(v0 + 328);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    *(v0 + 280) = v3;
    v10 = sub_2531DA704();
    v12 = sub_253196608(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_253166000, v4, v5, "pause command response: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x259BFFA80](v9, -1, -1);
    MEMORY[0x259BFFA80](v8, -1, -1);
  }

  else
  {
    v13 = *(v0 + 344);
    v14 = *(v0 + 328);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2531917BC(uint64_t a1)
{
  v2 = v1[45];
  v4 = v1[42];
  v3 = v1[43];
  v5 = v1[41];
  swift_willThrow();

  v6 = v1[1];

  return v6();
}

uint64_t MTR.RVCDevice.resume()()
{
  v1[37] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9B8, &qword_2531E5688);
  v1[38] = v2;
  v1[39] = *(v2 - 8);
  v1[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253191920, 0, 0);
}

uint64_t sub_253191920()
{
  v58 = v0;
  v1 = v0[37];
  v2 = *(v1 + 53);
  if (((1 << v2) & 0x6F) == 0)
  {
    if (v2 == 4)
    {
      if (qword_27F58D0F0 != -1)
      {
        swift_once();
      }

      v40 = sub_2531DA274();
      __swift_project_value_buffer(v40, qword_27F59A2A8);
      v41 = sub_2531DA254();
      v42 = sub_2531DAA84();
      if (!os_log_type_enabled(v41, v42))
      {
        goto LABEL_35;
      }

      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = "Cannot resume while in seekingCharger state";
    }

    else
    {
      if (qword_27F58D0F0 != -1)
      {
        swift_once();
      }

      v50 = sub_2531DA274();
      __swift_project_value_buffer(v50, qword_27F59A2A8);
      v41 = sub_2531DA254();
      v42 = sub_2531DAA84();
      if (!os_log_type_enabled(v41, v42))
      {
        goto LABEL_35;
      }

      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = "resume: Current operational state not available. Cannot pause";
    }

    _os_log_impl(&dword_253166000, v41, v42, v44, v43, 2u);
    MEMORY[0x259BFFA80](v43, -1, -1);
LABEL_35:

    sub_25318DD6C();
    swift_allocError();
    v39 = 6;
LABEL_36:
    *v38 = v39;
    swift_willThrow();
    goto LABEL_37;
  }

  sub_25316B6E4(v1 + 8, (v0 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9C0, &qword_2531E5690);
  sub_253181ED8(0, &qword_27F58D9C8, 0x277CD5310);
  if (!swift_dynamicCast())
  {
    if (qword_27F58D0F0 != -1)
    {
      swift_once();
    }

    v34 = sub_2531DA274();
    __swift_project_value_buffer(v34, qword_27F59A2A8);
    v35 = sub_2531DA254();
    v36 = sub_2531DAA84();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_253166000, v35, v36, "resume: Invalid Matter device", v37, 2u);
      MEMORY[0x259BFFA80](v37, -1, -1);
    }

    sub_25318DD6C();
    swift_allocError();
    v39 = 13;
    goto LABEL_36;
  }

  v3 = v0[37];
  v4 = v0[33];
  v0[41] = v4;
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v8 = [objc_opt_self() attributePathWithEndpointID:v5 clusterID:v6 attributeID:v7];
  v0[42] = v8;

  v56 = xmmword_2531E1A40;
  v57 = 2;
  MTR.Value.makeDataValue()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9D0, &qword_2531E5698);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2531E53E0;
  *(inited + 32) = sub_2531DA6D4();
  *(inited + 40) = v10;
  *(inited + 48) = v8;
  *(inited + 56) = sub_2531DA6D4();
  *(inited + 64) = v11;
  v12 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D730, &qword_2531E48E0);
  v13 = sub_2531DA604();

  *(inited + 72) = v13;
  v14 = sub_2531B589C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9D8, &qword_2531E56A0);
  swift_arrayDestroy();
  v15 = sub_25316A984(0, 1, 1, MEMORY[0x277D84F90]);
  v17 = v15[2];
  v16 = v15[3];
  if (v17 >= v16 >> 1)
  {
    v15 = sub_25316A984((v16 > 1), v17 + 1, 1, v15);
  }

  v0[43] = v15;
  v18 = v0[37];
  v15[2] = v17 + 1;
  v15[v17 + 4] = v14;
  v19 = v4;
  v20 = sub_2531DB474();
  v21 = [objc_allocWithZone(MEMORY[0x277CD52A0]) initWithDevice:v19 endpointID:v20 queue:*v18];
  v0[44] = v21;

  if (v21)
  {
    if (qword_27F58D0F0 != -1)
    {
      swift_once();
    }

    v22 = sub_2531DA274();
    v0[45] = __swift_project_value_buffer(v22, qword_27F59A2A8);

    v23 = sub_2531DA254();
    v24 = sub_2531DAA64();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v56 = v26;
      *v25 = 136315138;
      v0[36] = v15;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9E8, &qword_2531E56A8);
      v27 = sub_2531DA704();
      v29 = sub_253196608(v27, v28, &v56);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_253166000, v23, v24, "Issuing resume command to RVC : %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x259BFFA80](v26, -1, -1);
      MEMORY[0x259BFFA80](v25, -1, -1);
    }

    v55 = v21;
    sub_253190648(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D170, &qword_2531E2AB0);
    v54 = sub_2531DA894();
    v0[46] = v54;

    if (qword_27F58D0E0 != -1)
    {
      swift_once();
    }

    v30 = v0[39];
    v31 = v0[40];
    v32 = v0[38];
    v53 = qword_27F59A2A0;
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_253192304;
    swift_continuation_init();
    v0[27] = v32;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 24);
    v0[47] = sub_253181ED8(0, &qword_27F58D9E0, 0x277CD54B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D758, &qword_2531E4FB0);
    sub_2531DA954();
    (*(v30 + 32))(boxed_opaque_existential_0, v31, v32);
    v0[20] = MEMORY[0x277D85DD0];
    v0[21] = 1107296256;
    v0[22] = sub_253190A1C;
    v0[23] = &block_descriptor_12;
    [v55 resumeWithExpectedValues:v54 expectedValueInterval:v53 completion:v0 + 20];
    (*(v30 + 8))(boxed_opaque_existential_0, v32);

    return MEMORY[0x282200938](v0 + 2);
  }

  if (qword_27F58D0F0 != -1)
  {
    swift_once();
  }

  v45 = sub_2531DA274();
  __swift_project_value_buffer(v45, qword_27F59A2A8);
  v46 = sub_2531DA254();
  v47 = sub_2531DAA64();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_253166000, v46, v47, "Unable to create MTRClusterRVCOperationalState for pause command", v48, 2u);
    MEMORY[0x259BFFA80](v48, -1, -1);
  }

  sub_25318DD6C();
  swift_allocError();
  *v49 = 14;
  swift_willThrow();

LABEL_37:

  v51 = v0[1];

  return v51();
}

uint64_t sub_253192304()
{
  v1 = *(*v0 + 48);
  *(*v0 + 384) = v1;
  if (v1)
  {

    v2 = sub_25319717C;
  }

  else
  {
    v2 = sub_25319241C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25319241C()
{
  v30 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 272);

  v3 = sub_2531DA254();
  v4 = sub_2531DAA64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29[0] = v6;
    *v5 = 136315138;
    *(v0 + 280) = v2;
    v7 = v2;
    v8 = sub_2531DA704();
    v10 = sub_253196608(v8, v9, v29);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_253166000, v3, v4, "resume command response: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x259BFFA80](v6, -1, -1);
    MEMORY[0x259BFFA80](v5, -1, -1);
  }

  v11 = [v2 commandResponseState];
  v12 = [v11 errorStateID];

  LOBYTE(v11) = [v12 unsignedCharValue];

  sub_253197FBC(v11, v29);
  v13 = v29[0];
  if (LOBYTE(v29[0]))
  {
    v14 = sub_2531DA254();
    v15 = sub_2531DAA84();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      sub_25318DD6C();
      swift_allocError();
      *v18 = v13;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_253166000, v14, v15, "operationalStateCluster.resume failed with error: %@", v16, 0xCu);
      sub_25316FD44(v17);
      MEMORY[0x259BFFA80](v17, -1, -1);
      MEMORY[0x259BFFA80](v16, -1, -1);
    }

    v20 = *(v0 + 352);
    v22 = *(v0 + 328);
    v21 = *(v0 + 336);

    sub_25318DD6C();
    swift_allocError();
    *v23 = v13;
    swift_willThrow();

    v24 = *(v0 + 8);
  }

  else
  {
    v25 = *(v0 + 352);
    v27 = *(v0 + 328);
    v26 = *(v0 + 336);

    v24 = *(v0 + 8);
  }

  return v24();
}

uint64_t sub_253192740()
{
  v1[47] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9F8, &qword_2531E57D8);
  v1[48] = v2;
  v1[49] = *(v2 - 8);
  v1[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25319280C, 0, 0);
}

uint64_t sub_25319280C()
{
  v96 = v0;
  sub_25316B6E4(*(v0 + 376) + 8, v0 + 304);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9C0, &qword_2531E5690);
  sub_253181ED8(0, &qword_27F58D9C8, 0x277CD5310);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 376);
    v2 = *(v0 + 344);
    *(v0 + 408) = v2;
    v3 = *(v1 + 72);
    if (v3)
    {
      v4 = 0;
      v93 = v2;
      v5 = -1 << *(v3 + 32);
      if (-v5 < 64)
      {
        v6 = ~(-1 << -v5);
      }

      else
      {
        v6 = -1;
      }

      v7 = v6 & *(v3 + 56);
      v8 = (63 - v5) >> 6;
      while (1)
      {
LABEL_7:
        if (!v7)
        {
          v2 = v93;
          while (1)
          {
            v9 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
              break;
            }

            if (v9 >= v8)
            {
              goto LABEL_23;
            }

            v7 = *(v3 + 56 + 8 * v9);
            ++v4;
            if (v7)
            {
              v4 = v9;
              goto LABEL_13;
            }
          }

          __break(1u);
          goto LABEL_51;
        }

LABEL_13:
        v10 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v11 = (*(v3 + 48) + ((v4 << 11) | (32 * v10)));
        v12 = v11[3];
        if (*(v12 + 16))
        {
          v13 = *v11;
          sub_2531DB3F4();
          sub_2531DB424();
          v14 = sub_2531DB454();
          v15 = -1 << *(v12 + 32);
          v16 = v14 & ~v15;
          if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
          {
            break;
          }
        }
      }

      v17 = ~v15;
      while (*(*(v12 + 48) + v16) != 11)
      {
        v16 = (v16 + 1) & v17;
        if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v34 = *(v0 + 376);
      v35 = [objc_allocWithZone(MEMORY[0x277CD54C0]) init];
      *(v0 + 416) = v35;
      v36 = sub_2531DAB34();
      v91 = v35;
      [v35 setNewMode_];

      v89 = *(v34 + 48);
      v37 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
      v38 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      v39 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      v88 = objc_opt_self();
      v40 = [v88 attributePathWithEndpointID:v37 clusterID:v38 attributeID:v39];
      *(v0 + 424) = v40;

      v94 = v13;
      v95 = 2;
      MTR.Value.makeDataValue()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9D0, &qword_2531E5698);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2531E53E0;
      *(inited + 32) = sub_2531DA6D4();
      *(inited + 40) = v42;
      *(inited + 48) = v40;
      *(inited + 56) = sub_2531DA6D4();
      *(inited + 64) = v43;
      v87 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D730, &qword_2531E48E0);
      v44 = sub_2531DA604();

      *(inited + 72) = v44;
      v45 = sub_2531B589C(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9D8, &qword_2531E56A0);
      swift_arrayDestroy();
      v46 = sub_25316A984(0, 1, 1, MEMORY[0x277D84F90]);
      v48 = v46[2];
      v47 = v46[3];
      if (v48 >= v47 >> 1)
      {
        v46 = sub_25316A984((v47 > 1), v48 + 1, 1, v46);
      }

      v46[2] = v48 + 1;
      v46[v48 + 4] = v45;
      v49 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
      v50 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      v51 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      v52 = [v88 attributePathWithEndpointID:v49 clusterID:v50 attributeID:v51];
      *(v0 + 432) = v52;

      v94 = xmmword_2531E1A40;
      v95 = 2;
      MTR.Value.makeDataValue()();
      v53 = swift_initStackObject();
      *(v53 + 16) = xmmword_2531E53E0;
      *(v53 + 32) = sub_2531DA6D4();
      *(v53 + 40) = v54;
      *(v53 + 48) = v52;
      *(v53 + 56) = sub_2531DA6D4();
      *(v53 + 64) = v55;
      v56 = v52;
      v57 = sub_2531DA604();

      *(v53 + 72) = v57;
      v58 = sub_2531B589C(v53);
      swift_setDeallocating();
      swift_arrayDestroy();
      v60 = v46[2];
      v59 = v46[3];
      if (v60 >= v59 >> 1)
      {
        v46 = sub_25316A984((v59 > 1), v60 + 1, 1, v46);
      }

      *(v0 + 440) = v46;
      v61 = *(v0 + 376);
      v46[2] = v60 + 1;
      v46[v60 + 4] = v58;
      v62 = v93;
      v63 = sub_2531DB474();
      v64 = [objc_allocWithZone(MEMORY[0x277CD52A8]) initWithDevice:v62 endpointID:v63 queue:*v61];
      *(v0 + 448) = v64;

      if (v64)
      {
        if (qword_27F58D0F0 != -1)
        {
          swift_once();
        }

        v65 = sub_2531DA274();
        *(v0 + 456) = __swift_project_value_buffer(v65, qword_27F59A2A8);
        v66 = v91;

        v67 = sub_2531DA254();
        v68 = sub_2531DAA64();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *&v94 = v70;
          *v69 = 136315394;
          *(v0 + 360) = v66;
          sub_253181ED8(0, &qword_27F58DA08, 0x277CD54C0);
          v71 = v66;
          v72 = sub_2531DA704();
          v74 = sub_253196608(v72, v73, &v94);

          *(v69 + 4) = v74;
          *(v69 + 12) = 2080;
          *(v0 + 368) = v46;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9E8, &qword_2531E56A8);
          v75 = sub_2531DA704();
          v77 = sub_253196608(v75, v76, &v94);

          *(v69 + 14) = v77;
          _os_log_impl(&dword_253166000, v67, v68, "Changing run mode to %s, expected values: %s", v69, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259BFFA80](v70, -1, -1);
          MEMORY[0x259BFFA80](v69, -1, -1);
        }

        sub_253190648(v46);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D170, &qword_2531E2AB0);
        v92 = sub_2531DA894();
        *(v0 + 464) = v92;

        if (qword_27F58D0E0 != -1)
        {
          swift_once();
        }

        v78 = *(v0 + 392);
        v79 = *(v0 + 400);
        v80 = *(v0 + 384);
        v90 = qword_27F59A2A0;
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 352;
        *(v0 + 24) = sub_253193538;
        swift_continuation_init();
        *(v0 + 296) = v80;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 272));
        sub_253181ED8(0, &qword_27F58DA00, 0x277CD54C8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D758, &qword_2531E4FB0);
        sub_2531DA954();
        (*(v78 + 32))(boxed_opaque_existential_0, v79, v80);
        *(v0 + 240) = MEMORY[0x277D85DD0];
        *(v0 + 248) = 1107296256;
        *(v0 + 256) = sub_2531939F0;
        *(v0 + 264) = &block_descriptor_20;
        [v64 changeToModeWithParams:v66 expectedValues:v92 expectedValueInterval:v90 completion:{v0 + 240, v87}];
        (*(v78 + 8))(boxed_opaque_existential_0, v80);

        return MEMORY[0x282200938](v0 + 16);
      }

      if (qword_27F58D0F0 != -1)
      {
        swift_once();
      }

      v82 = sub_2531DA274();
      __swift_project_value_buffer(v82, qword_27F59A2A8);
      v83 = sub_2531DA254();
      v84 = sub_2531DAA64();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&dword_253166000, v83, v84, "Unable to create MTRClusterRVCRunMode", v85, 2u);
        MEMORY[0x259BFFA80](v85, -1, -1);
      }

      sub_25318DD6C();
      swift_allocError();
      *v86 = 14;
      swift_willThrow();
    }

    else
    {
LABEL_23:
      if (qword_27F58D0F0 != -1)
      {
        swift_once();
      }

      v23 = sub_2531DA274();
      __swift_project_value_buffer(v23, qword_27F59A2A8);
      v24 = sub_2531DA254();
      v25 = sub_2531DAA84();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *&v94 = v27;
        *v26 = 136315138;
        *(v0 + 480) = 11;
        v28 = sub_2531DA704();
        v30 = sub_253196608(v28, v29, &v94);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_253166000, v24, v25, "Invalid run mode type %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x259BFFA80](v27, -1, -1);
        MEMORY[0x259BFFA80](v26, -1, -1);
      }

      sub_25318DD6C();
      swift_allocError();
      *v31 = 4;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_27F58D0F0 != -1)
    {
LABEL_51:
      swift_once();
    }

    v18 = sub_2531DA274();
    __swift_project_value_buffer(v18, qword_27F59A2A8);
    v19 = sub_2531DA254();
    v20 = sub_2531DAA84();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_253166000, v19, v20, "start: Invalid Matter device", v21, 2u);
      MEMORY[0x259BFFA80](v21, -1, -1);
    }

    sub_25318DD6C();
    swift_allocError();
    *v22 = 13;
    swift_willThrow();
  }

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_253193538()
{
  v1 = *(*v0 + 48);
  *(*v0 + 472) = v1;
  if (v1)
  {

    v2 = sub_253193948;
  }

  else
  {
    v2 = sub_253193650;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_253193650()
{
  v31 = v0;
  v1 = *(v0 + 464);
  v2 = *(v0 + 352);

  v3 = sub_2531DA254();
  v4 = sub_2531DAA64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_253166000, v3, v4, "runModeCluster.changeToMode response: %@", v5, 0xCu);
    sub_25316FD44(v6);
    MEMORY[0x259BFFA80](v6, -1, -1);
    MEMORY[0x259BFFA80](v5, -1, -1);
  }

  v8 = [v2 status];
  v9 = [v8 unsignedCharValue];

  sub_2531981E8(v9, &v30);
  v10 = v30;
  if (v30)
  {
    v11 = sub_2531DA254();
    v12 = sub_2531DAA84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      sub_25318DD6C();
      swift_allocError();
      *v15 = v10;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_253166000, v11, v12, "runModeCluster.changeToMode failed with error: %@", v13, 0xCu);
      sub_25316FD44(v14);
      MEMORY[0x259BFFA80](v14, -1, -1);
      MEMORY[0x259BFFA80](v13, -1, -1);
    }

    v17 = *(v0 + 448);
    v19 = *(v0 + 424);
    v18 = *(v0 + 432);
    v21 = *(v0 + 408);
    v20 = *(v0 + 416);

    sub_25318DD6C();
    swift_allocError();
    *v22 = v10;
    swift_willThrow();

    v23 = *(v0 + 8);
  }

  else
  {
    v24 = *(v0 + 448);
    v26 = *(v0 + 424);
    v25 = *(v0 + 432);
    v28 = *(v0 + 408);
    v27 = *(v0 + 416);

    v23 = *(v0 + 8);
  }

  return v23();
}

uint64_t sub_253193948(uint64_t a1)
{
  v2 = v1[58];
  v3 = v1[56];
  v5 = v1[53];
  v4 = v1[54];
  v7 = v1[51];
  v6 = v1[52];
  swift_willThrow();

  v8 = v1[1];

  return v8();
}

void sub_253193A04(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v9 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    sub_2531DA964();
  }

  else if (a2)
  {
    v10 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    sub_2531DA974();
  }

  else
  {
    __break(1u);
  }
}

uint64_t MTR.RVCDevice.startCleaning(areas:targetCleanModes:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_253193AD8, 0, 0);
}

uint64_t sub_253193AD8()
{
  sub_25316B6E4(v0[10] + 8, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D9C0, &qword_2531E5690);
  sub_253181ED8(0, &qword_27F58D9C8, 0x277CD5310);
  if (swift_dynamicCast())
  {
    v1 = v0[7];
    v0[11] = v1;
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_253193CF8;
    v3 = v0[8];

    return sub_2531945F8(v3, v1);
  }

  else
  {
    if (qword_27F58D0F0 != -1)
    {
      swift_once();
    }

    v5 = sub_2531DA274();
    __swift_project_value_buffer(v5, qword_27F59A2A8);
    v6 = sub_2531DA254();
    v7 = sub_2531DAA84();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_253166000, v6, v7, "startCleaning: Invalid Matter device", v8, 2u);
      MEMORY[0x259BFFA80](v8, -1, -1);
    }

    sub_25318DD6C();
    swift_allocError();
    *v9 = 13;
    swift_willThrow();
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_253193CF8(char a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_2531944CC;
  }

  else
  {
    *(v4 + 144) = a1 & 1;
    v5 = sub_253193E24;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_253193E24()
{
  if (*(v0 + 144) == 1)
  {
    if (*(*(v0 + 72) + 16))
    {
      v1 = swift_task_alloc();
      *(v0 + 112) = v1;
      *v1 = v0;
      v1[1] = sub_253194068;
      v2 = *(v0 + 88);
      v3 = *(v0 + 72);

      return sub_2531954CC(v3, v2);
    }

    else
    {
      v12 = swift_task_alloc();
      *(v0 + 128) = v12;
      *v12 = v0;
      v12[1] = sub_253194354;

      return sub_253192740();
    }
  }

  else
  {
    if (qword_27F58D0F0 != -1)
    {
      swift_once();
    }

    v5 = sub_2531DA274();
    __swift_project_value_buffer(v5, qword_27F59A2A8);
    v6 = sub_2531DA254();
    v7 = sub_2531DAA84();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_253166000, v6, v7, "startCleaning: Unable to select areas", v8, 2u);
      MEMORY[0x259BFFA80](v8, -1, -1);
    }

    v9 = *(v0 + 88);

    sub_25318DD6C();
    swift_allocError();
    *v10 = 6;
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_253194068(char a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_253194530;
  }

  else
  {
    *(v4 + 145) = a1 & 1;
    v5 = sub_253194194;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_253194194()
{
  if (*(v0 + 145))
  {
    v1 = swift_task_alloc();
    *(v0 + 128) = v1;
    *v1 = v0;
    v1[1] = sub_253194354;

    return sub_253192740();
  }

  else
  {
    if (qword_27F58D0F0 != -1)
    {
      swift_once();
    }

    v3 = sub_2531DA274();
    __swift_project_value_buffer(v3, qword_27F59A2A8);
    v4 = sub_2531DA254();
    v5 = sub_2531DAA84();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_253166000, v4, v5, "Unable to set clean mode", v6, 2u);
      MEMORY[0x259BFFA80](v6, -1, -1);
    }

    v7 = *(v0 + 88);

    sub_25318DD6C();
    swift_allocError();
    *v8 = 4;
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_253194354()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_253194594;
  }

  else
  {
    v2 = sub_253194468;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_253194468()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2531944CC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_253194530()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_253194594()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2531945F8(uint64_t a1, uint64_t a2)
{
  v3[49] = a2;
  v3[50] = v2;
  v3[48] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA48, &qword_2531E5808);
  v3[51] = v4;
  v3[52] = *(v4 - 8);
  v3[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2531946C8, 0, 0);
}

uint64_t sub_2531946C8()
{
  v73 = v0;
  v1 = *(v0[50] + 96);
  if (v1)
  {
    sub_25318B8EC(336, v1);
  }

  if (qword_27F58D0F0 == -1)
  {
    goto LABEL_4;
  }

  while (1)
  {
    swift_once();
LABEL_4:
    v2 = v0[50];
    v3 = sub_2531DA274();
    v0[54] = __swift_project_value_buffer(v3, qword_27F59A2A8);
    sub_2531970E4(v2, (v0 + 26));
    v4 = sub_2531DA254();
    v5 = sub_2531DAA64();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v70 = v7;
      *v6 = 136315138;
      v8 = v0[30];
      __swift_project_boxed_opaque_existential_1(v0 + 27, v8);
      v9 = *(v8 - 8);
      swift_task_alloc();
      (*(v9 + 16))();
      v10 = sub_2531DA704();
      v12 = v11;

      sub_25319711C((v0 + 26));
      v13 = sub_253196608(v10, v12, &v70);

      *(v6 + 4) = v13;
      _os_log_impl(&dword_253166000, v4, v5, "Device %s supports mapping", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x259BFFA80](v7, -1, -1);
      MEMORY[0x259BFFA80](v6, -1, -1);
    }

    else
    {

      sub_25319711C((v0 + 26));
    }

    v14 = v0[49];
    v15 = v0[50];
    v16 = *(v15 + 48);
    v17 = sub_2531DB474();
    v18 = [objc_allocWithZone(MEMORY[0x277CD52B0]) initWithDevice:v14 endpointID:v17 queue:*v15];
    v0[55] = v18;

    if (!v18)
    {
      break;
    }

    v67 = v18;
    v19 = v0[48];
    v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
    v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    v68 = [objc_opt_self() attributePathWithEndpointID:v20 clusterID:v21 attributeID:v22];
    v0[56] = v68;

    v23 = -1;
    v24 = -1 << *(v19 + 32);
    if (-v24 < 64)
    {
      v23 = ~(-1 << -v24);
    }

    v25 = v23 & *(v19 + 56);
    v26 = (63 - v24) >> 6;

    v27 = 0;
    for (i = MEMORY[0x277D84F90]; v25; v33[48] = 2)
    {
LABEL_15:
      v30 = *(*(v19 + 48) + ((v27 << 8) | (4 * __clz(__rbit64(v25)))));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        i = sub_25316A3D4(0, *(i + 2) + 1, 1, i);
      }

      v32 = *(i + 2);
      v31 = *(i + 3);
      if (v32 >= v31 >> 1)
      {
        i = sub_25316A3D4((v31 > 1), v32 + 1, 1, i);
      }

      v25 &= v25 - 1;
      *(i + 2) = v32 + 1;
      v33 = &i[24 * v32];
      *(v33 + 4) = v30;
      *(v33 + 5) = 0;
    }

    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v29 >= v26)
      {

        v34 = swift_allocObject();
        *(v34 + 16) = i;
        v70 = v34;
        v71 = 0;
        LOBYTE(v72) = 7;
        v35 = MTR.Value.makeDataValue()();
        sub_25316D2BC(v70, v71, v72);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA28, &qword_2531E57F8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E53E0;
        *(inited + 32) = sub_2531DA6D4();
        *(inited + 40) = v37;
        *(inited + 72) = sub_253181ED8(0, &qword_27F58DA30, 0x277CD51C0);
        *(inited + 48) = v68;
        *(inited + 80) = sub_2531DA6D4();
        *(inited + 88) = v38;
        *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D178, &qword_2531E11F8);
        *(inited + 96) = v35;
        v39 = v68;
        v40 = sub_2531B54D8(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA38, &qword_2531E5800);
        swift_arrayDestroy();
        v41 = sub_25316A9A8(0, 1, 1, MEMORY[0x277D84F90]);
        v43 = v41[2];
        v42 = v41[3];
        if (v43 >= v42 >> 1)
        {
          v41 = sub_25316A9A8((v42 > 1), v43 + 1, 1, v41);
        }

        v0[57] = v41;
        v44 = v0[48];
        v41[2] = v43 + 1;
        v41[v43 + 4] = v40;
        v45 = [objc_allocWithZone(MEMORY[0x277CD5518]) init];
        v0[58] = v45;
        v46 = *(v44 + 16);
        v69 = v45;
        if (v46)
        {
          v47 = v0[48];
          v48 = sub_253196584(v46, 0);
          v65 = sub_253196D18(&v70, v48 + 8, v46, v47);
          v49 = v70;

          v50 = sub_25319714C(v49);
          if (v65 == v46)
          {
            v45 = v69;
            goto LABEL_32;
          }

          __break(1u);
        }

        else
        {
          v48 = MEMORY[0x277D84F90];
LABEL_32:
          v57 = v45;
          v58 = sub_253190778(v48);

          sub_253190820(v58);

          v59 = sub_2531DA894();

          [v57 setNewAreas_];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D170, &qword_2531E2AB0);
          v66 = sub_2531DA894();
          v0[59] = v66;
          if (qword_27F58D0E0 != -1)
          {
            swift_once();
          }

          v60 = v0[52];
          v61 = v0[53];
          v62 = v0[51];
          v64 = qword_27F59A2A0;
          v0[2] = v0;
          v0[7] = v0 + 47;
          v0[3] = sub_253195038;
          swift_continuation_init();
          v0[46] = v62;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 43);
          sub_253181ED8(0, &qword_27F58DA50, 0x277CD5520);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D758, &qword_2531E4FB0);
          sub_2531DA954();
          (*(v60 + 32))(boxed_opaque_existential_0, v61, v62);
          v0[39] = MEMORY[0x277D85DD0];
          v0[40] = 1107296256;
          v0[41] = sub_25319638C;
          v0[42] = &block_descriptor_28;
          [v67 selectAreasWithParams:v69 expectedValues:v66 expectedValueInterval:v64 completion:v0 + 39];
          (*(v60 + 8))(boxed_opaque_existential_0, v62);
          v50 = (v0 + 2);
        }

        return MEMORY[0x282200938](v50);
      }

      v25 = *(v19 + 56 + 8 * v29);
      ++v27;
      if (v25)
      {
        v27 = v29;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  v51 = sub_2531DA254();
  v52 = sub_2531DAA84();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_253166000, v51, v52, "Unable to create MTRClusterRVCRunMode", v53, 2u);
    MEMORY[0x259BFFA80](v53, -1, -1);
  }

  sub_25318DD6C();
  swift_allocError();
  *v54 = 14;
  swift_willThrow();

  v55 = v0[1];

  return v55(0);
}

uint64_t sub_253195038()
{
  v1 = *(*v0 + 48);
  *(*v0 + 480) = v1;
  if (v1)
  {

    v2 = sub_253195434;
  }

  else
  {
    v2 = sub_253195150;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_253195150()
{
  v28 = v0;
  v1 = *(v0 + 472);
  v2 = *(v0 + 376);

  v3 = sub_2531DA254();
  v4 = sub_2531DAA64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_253166000, v3, v4, "SelectAreaToClean response: %@", v5, 0xCu);
    sub_25316FD44(v6);
    MEMORY[0x259BFFA80](v6, -1, -1);
    MEMORY[0x259BFFA80](v5, -1, -1);
  }

  v8 = [v2 status];
  v9 = [v8 unsignedCharValue];

  sub_253198418(v9, &v27);
  v10 = v27;
  if (v27)
  {
    v11 = sub_2531DA254();
    v12 = sub_2531DAA84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      sub_25318DD6C();
      swift_allocError();
      *v15 = v10;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_253166000, v11, v12, "SelectAreaToClean failed with error: %@", v13, 0xCu);
      sub_25316FD44(v14);
      MEMORY[0x259BFFA80](v14, -1, -1);
      MEMORY[0x259BFFA80](v13, -1, -1);
    }

    v17 = *(v0 + 464);
    v19 = *(v0 + 440);
    v18 = *(v0 + 448);

    sub_25318DD6C();
    swift_allocError();
    *v20 = v10;
    swift_willThrow();

    v21 = *(v0 + 8);
    v22 = 0;
  }

  else
  {
    v23 = *(v0 + 464);
    v25 = *(v0 + 440);
    v24 = *(v0 + 448);

    v21 = *(v0 + 8);
    v22 = 1;
  }

  return v21(v22);
}

uint64_t sub_253195434(uint64_t a1)
{
  v2 = v1[59];
  v3 = v1[58];
  v5 = v1[55];
  v4 = v1[56];
  swift_willThrow();

  v6 = v1[1];

  return v6(0);
}

uint64_t sub_2531954CC(uint64_t a1, uint64_t a2)
{
  v3[51] = a2;
  v3[52] = v2;
  v3[50] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA10, &qword_2531E57E0);
  v3[53] = v4;
  v3[54] = *(v4 - 8);
  v3[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25319559C, 0, 0);
}

uint64_t sub_25319559C()
{
  v74 = v0;
  v1 = *(v0[52] + 80);
  if (v1)
  {
    v2 = -1;
    v3 = -1 << *(v1 + 32);
    if (-v3 < 64)
    {
      v2 = ~(-1 << -v3);
    }

    v4 = v2 & *(v1 + 56);
    v5 = (63 - v3) >> 6;

    v6 = 0;
    do
    {
      if (!v4)
      {
        while (1)
        {
          v7 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (v7 >= v5)
          {

            goto LABEL_25;
          }

          v4 = *(v1 + 56 + 8 * v7);
          ++v6;
          if (v4)
          {
            v6 = v7;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_38;
      }

      v7 = v6;
LABEL_11:
      v8 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v9 = (*(v1 + 48) + ((v7 << 11) | (32 * v8)));
      v10 = *v9;
    }

    while ((sub_25318D5E0(v0[50], v9[3]) & 1) == 0);
    v11 = v0[51];
    v12 = v0[52];

    v13 = *(v12 + 48);
    v14 = sub_2531DB474();
    v15 = [objc_allocWithZone(MEMORY[0x277CD5298]) initWithDevice:v11 endpointID:v14 queue:*v12];
    v0[56] = v15;

    if (v15)
    {
      v71 = v15;
      v16 = [objc_allocWithZone(MEMORY[0x277CD5490]) init];
      v0[57] = v16;
      v17 = sub_2531DAB34();
      [v16 setNewMode_];

      v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
      v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      v21 = [objc_opt_self() attributePathWithEndpointID:v18 clusterID:v19 attributeID:v20];
      v0[58] = v21;

      v72[0] = v10;
      v72[1] = 0;
      v73 = 2;
      v22 = MTR.Value.makeDataValue()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA28, &qword_2531E57F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2531E53E0;
      *(inited + 32) = sub_2531DA6D4();
      *(inited + 40) = v24;
      *(inited + 72) = sub_253181ED8(0, &qword_27F58DA30, 0x277CD51C0);
      *(inited + 48) = v21;
      *(inited + 80) = sub_2531DA6D4();
      *(inited + 88) = v25;
      *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D178, &qword_2531E11F8);
      *(inited + 96) = v22;
      v26 = v21;
      v27 = sub_2531B54D8(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA38, &qword_2531E5800);
      swift_arrayDestroy();
      v28 = sub_25316A9A8(0, 1, 1, MEMORY[0x277D84F90]);
      v30 = v28[2];
      v29 = v28[3];
      if (v30 >= v29 >> 1)
      {
        v28 = sub_25316A9A8((v29 > 1), v30 + 1, 1, v28);
      }

      v0[59] = v28;
      v28[2] = v30 + 1;
      v28[v30 + 4] = v27;
      if (qword_27F58D0F0 != -1)
      {
        swift_once();
      }

      v31 = sub_2531DA274();
      v0[60] = __swift_project_value_buffer(v31, qword_27F59A2A8);
      v32 = v16;
      v33 = sub_2531DA254();
      v34 = sub_2531DAA64();

      v70 = v32;
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v72[0] = v37;
        *v35 = 138412546;
        *(v35 + 4) = v32;
        *v36 = v32;
        *(v35 + 12) = 2080;
        v38 = v32;

        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D170, &qword_2531E2AB0);
        v40 = MEMORY[0x259BFE6E0](v28, v39);
        v42 = v41;

        v43 = sub_253196608(v40, v42, v72);

        *(v35 + 14) = v43;
        _os_log_impl(&dword_253166000, v33, v34, "Going to issue changeToMode command to cleanModeCluster with params: %@ & expectedValues: %s", v35, 0x16u);
        sub_25316FD44(v36);
        MEMORY[0x259BFFA80](v36, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x259BFFA80](v37, -1, -1);
        MEMORY[0x259BFFA80](v35, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D170, &qword_2531E2AB0);
      v69 = sub_2531DA894();
      v0[61] = v69;

      if (qword_27F58D0E0 != -1)
      {
        swift_once();
      }

      v44 = v0[54];
      v45 = v0[55];
      v46 = v0[53];
      v68 = qword_27F59A2A0;
      v0[2] = v0;
      v0[7] = v0 + 49;
      v0[3] = sub_253195FB8;
      swift_continuation_init();
      v0[46] = v46;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 43);
      sub_253181ED8(0, &qword_27F58DA40, 0x277CD5498);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D758, &qword_2531E4FB0);
      sub_2531DA954();
      (*(v44 + 32))(boxed_opaque_existential_0, v45, v46);
      v0[39] = MEMORY[0x277D85DD0];
      v0[40] = 1107296256;
      v0[41] = sub_2531963A0;
      v0[42] = &block_descriptor_24;
      [v71 changeToModeWithParams:v70 expectedValues:v69 expectedValueInterval:v68 completion:v0 + 39];
      (*(v44 + 8))(boxed_opaque_existential_0, v46);

      return MEMORY[0x282200938](v0 + 2);
    }

    if (qword_27F58D0F0 != -1)
    {
      swift_once();
    }

    v63 = sub_2531DA274();
    __swift_project_value_buffer(v63, qword_27F59A2A8);
    v64 = sub_2531DA254();
    v65 = sub_2531DAA84();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_253166000, v64, v65, "Unable to create MTRClusterRVCCleanMode", v66, 2u);
      MEMORY[0x259BFFA80](v66, -1, -1);
    }
  }

  else
  {
LABEL_25:
    if (qword_27F58D0F0 != -1)
    {
LABEL_38:
      swift_once();
    }

    v48 = v0[52];
    v49 = sub_2531DA274();
    __swift_project_value_buffer(v49, qword_27F59A2A8);
    sub_2531970E4(v48, (v0 + 26));

    v50 = sub_2531DA254();
    v51 = sub_2531DAA84();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = v0[50];
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v72[0] = v54;
      *v53 = 136315394;
      v0[47] = v52;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA18, &qword_2531E57E8);
      v55 = sub_2531DA704();
      v57 = sub_253196608(v55, v56, v72);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      v0[48] = v0[36];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA20, &qword_2531E57F0);
      v58 = sub_2531DA704();
      v60 = v59;
      sub_25319711C((v0 + 26));
      v61 = sub_253196608(v58, v60, v72);

      *(v53 + 14) = v61;
      _os_log_impl(&dword_253166000, v50, v51, "Couldn't find a clean mode that contained all the specified tags: %s allRunningModes: %s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259BFFA80](v54, -1, -1);
      MEMORY[0x259BFFA80](v53, -1, -1);
    }

    else
    {

      sub_25319711C((v0 + 26));
    }
  }

  v62 = v0[1];

  return v62(0);
}

uint64_t sub_253195FB8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 496) = v1;
  if (v1)
  {
    v2 = sub_2531962E4;
  }

  else
  {
    v2 = sub_2531960C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2531960C8()
{
  v22 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 392);

  v3 = sub_2531DA254();
  v4 = sub_2531DAA64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_253166000, v3, v4, "Finished changing the clean mode : %@", v5, 0xCu);
    sub_25316FD44(v6);
    MEMORY[0x259BFFA80](v6, -1, -1);
    MEMORY[0x259BFFA80](v5, -1, -1);
  }

  v8 = [v2 status];
  v9 = [v8 unsignedCharValue];

  sub_2531985A0(v9, &v21);
  v10 = v21;
  if (v21 != 26 && v21)
  {
    v16 = *(v0 + 464);
    v18 = *(v0 + 448);
    v17 = *(v0 + 456);
    sub_25318DD6C();
    swift_allocError();
    *v19 = v10;
    swift_willThrow();

    v14 = *(v0 + 8);
    v15 = 0;
  }

  else
  {
    v11 = *(v0 + 464);
    v13 = *(v0 + 448);
    v12 = *(v0 + 456);

    v14 = *(v0 + 8);
    v15 = 1;
  }

  return v14(v15);
}

uint64_t sub_2531962E4(uint64_t a1)
{
  v2 = v1[61];
  v3 = v1[58];
  v5 = v1[56];
  v4 = v1[57];
  swift_willThrow();

  v6 = v1[1];

  return v6(0);
}

uint64_t MTR.RVCDevice.debugDescription.getter()
{
  strcpy(v2, "endpointID: ");
  v0 = sub_2531DAF34();
  MEMORY[0x259BFE570](v0);

  return v2[0];
}

uint64_t MTR.RVCDevice.hashValue.getter()
{
  sub_2531DB3F4();
  MTR.RVCDevice.hash(into:)(v1);
  return sub_2531DB454();
}

uint64_t sub_253196470()
{
  sub_2531DB3F4();
  MTR.RVCDevice.hash(into:)(v1);
  return sub_2531DB454();
}

uint64_t sub_2531964B4(uint64_t a1)
{
  sub_2531DB3F4();
  MTR.RVCDevice.hash(into:)(v2);
  return sub_2531DB454();
}

void *sub_2531964F4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA68, &qword_2531E5820);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_253196584(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA58, &qword_2531E5810);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

unint64_t sub_253196608(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2531966D4(v11, 0, 0, 1, a1, a2);
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
    sub_25317E5F0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2531966D4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2531967E0(a5, a6);
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
    result = sub_2531DAC54();
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

void *sub_2531967E0(uint64_t a1, unint64_t a2)
{
  v3 = sub_25319682C(a1, a2);
  sub_25319695C(&unk_2864F0EA0);
  return v3;
}

void *sub_25319682C(uint64_t a1, unint64_t a2)
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

  v6 = sub_253196A48(v5, 0);
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

  result = sub_2531DAC54();
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
        v10 = sub_2531DA754();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_253196A48(v10, 0);
        result = sub_2531DABB4();
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

uint64_t sub_25319695C(uint64_t result)
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

  result = sub_253196ABC(result, v11, 1, v3);
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

void *sub_253196A48(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA60, &qword_2531E5818);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_253196ABC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA60, &qword_2531E5818);
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

void *sub_253196BB0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v12 << 6);
      v19 = *(a4 + 48) + 12 * v18;
      v20 = *v19;
      LOBYTE(v19) = *(v19 + 8);
      v21 = *(*(a4 + 56) + 8 * v18);
      *v11 = v20;
      *(v11 + 8) = v19;
      *(v11 + 16) = v21;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_253196D18(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

BOOL _s23HomeKitDaemonFoundation3MTRO9RVCDeviceV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v2 = *(a1 + 72);
  v3 = *(a2 + 72);
  if (!v2)
  {
    if (!v3)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = a1;
  v5 = a2;

  v6 = sub_25318C2E4(v2, v3);

  a1 = v4;
  a2 = v5;
  if ((v6 & 1) == 0)
  {
    return 0;
  }

LABEL_5:
  v7 = *(a1 + 80);
  v8 = *(a2 + 80);
  result = (v7 | v8) == 0;
  if (v7)
  {
    if (v8)
    {

      v10 = sub_25318C2E4(v7, v8);

      return v10 & 1;
    }
  }

  return result;
}

unint64_t sub_253196EDC()
{
  result = qword_27F58D9A0;
  if (!qword_27F58D9A0)
  {
    sub_2531DAAC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D9A0);
  }

  return result;
}

unint64_t sub_253196F34()
{
  result = qword_27F58D9B0;
  if (!qword_27F58D9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F58D9A8, &qword_2531E5670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D9B0);
  }

  return result;
}

unint64_t sub_253196FB4()
{
  result = qword_27F58D9F0;
  if (!qword_27F58D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58D9F0);
  }

  return result;
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

uint64_t sub_253197034(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_25319707C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id MTRAccessGrant.init(from:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 4);
  if (v2 >> 6)
  {
    if (v2 >> 6 != 1)
    {
      return [swift_getObjCClassFromMetadata() accessGrantForAllNodesWithPrivilege_];
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = sub_2531DB474();
    v5 = [ObjCClassFromMetadata accessGrantForGroupID:v4 privilege:BYTE3(v1)];

    if (!v5)
    {
      return v5;
    }

    goto LABEL_6;
  }

  v6 = v2 >> 8;
  v7 = swift_getObjCClassFromMetadata();
  v8 = sub_2531DB494();
  v5 = [v7 accessGrantForNodeID:v8 privilege:v6];

  if (v5)
  {
LABEL_6:
  }

  return v5;
}

void *static MTR.Cluster.Descriptor.readCachedChildEndpoints(device:endpoint:)(void *a1, __int16 *a2)
{
  v3 = *a2;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v9 = v3;
  v10 = 0x30000001DLL;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F8, &qword_2531E27D0);
  v7 = sub_2531976A4(&qword_27F58D300, &qword_27F58D2F8, &qword_2531E27D0, sub_2531720C0);
  result = MTR.Device.readCachedAttributeValue<A>(from:of:)(&v9, v4, v6, v5, v7, &v11);
  if (!v2)
  {
    return v11;
  }

  return result;
}

void *static MTR.Cluster.Descriptor.readCachedDeviceTypes(device:endpoint:)(void *a1, __int16 *a2)
{
  v3 = *a2;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v9 = v3;
  v10 = 29;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D310, &qword_2531E27D8);
  v7 = sub_2531976A4(&qword_27F58D318, &qword_27F58D310, &qword_2531E27D8, sub_253172114);
  result = MTR.Device.readCachedAttributeValue<A>(from:of:)(&v9, v4, v6, v5, v7, &v11);
  if (!v2)
  {
    return v11;
  }

  return result;
}

void *static MTR.Cluster.Descriptor.readCachedClientClusters(device:endpoint:)(void *a1, __int16 *a2)
{
  v3 = *a2;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v9 = v3;
  v10 = 0x20000001DLL;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D328, &unk_2531E27E0);
  v7 = sub_2531976A4(&qword_27F58D330, &qword_27F58D328, &unk_2531E27E0, sub_253172168);
  result = MTR.Device.readCachedAttributeValue<A>(from:of:)(&v9, v4, v6, v5, v7, &v11);
  if (!v2)
  {
    return v11;
  }

  return result;
}

void *static MTR.Cluster.Descriptor.readCachedServerClusters(device:endpoint:)(void *a1, __int16 *a2)
{
  v3 = *a2;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v9 = v3;
  v10 = 0x10000001DLL;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D328, &unk_2531E27E0);
  v7 = sub_2531976A4(&qword_27F58D330, &qword_27F58D328, &unk_2531E27E0, sub_253172168);
  result = MTR.Device.readCachedAttributeValue<A>(from:of:)(&v9, v4, v6, v5, v7, &v11);
  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_2531976A4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static MTR.Cluster.Descriptor.readDeviceTypesWithRetry(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  *(v2 + 48) = a1;
  *(v2 + 84) = *a2;
  return MEMORY[0x2822009F8](sub_253197748, 0, 0);
}

uint64_t sub_253197748()
{
  v1 = *(v0 + 84);
  v2 = *(v0 + 48);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  *(v0 + 72) = v1;
  *(v0 + 76) = 29;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D310, &qword_2531E27D8);
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 32) = 10;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v7 = sub_2531976A4(&qword_27F58D318, &qword_27F58D310, &qword_2531E27D8, sub_253172114);
  *v6 = v0;
  v6[1] = sub_253174A10;

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 40, v0 + 72, v5, v0 + 16, v3, v5, v4, v7);
}

uint64_t static MTR.Cluster.Descriptor.readChildEndpointsWithRetry(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  *(v2 + 48) = a1;
  *(v2 + 84) = *a2;
  return MEMORY[0x2822009F8](sub_2531978D4, 0, 0);
}

uint64_t sub_2531978D4()
{
  v1 = *(v0 + 84);
  v2 = *(v0 + 48);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  *(v0 + 72) = v1;
  *(v0 + 76) = 0x30000001DLL;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F8, &qword_2531E27D0);
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 32) = 10;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v7 = sub_2531976A4(&qword_27F58D300, &qword_27F58D2F8, &qword_2531E27D0, sub_2531720C0);
  *v6 = v0;
  v6[1] = sub_253174448;

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 40, v0 + 72, v5, v0 + 16, v3, v5, v4, v7);
}

uint64_t static MTR.Cluster.Descriptor.readClientClustersWithRetry(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  *(v2 + 48) = a1;
  *(v2 + 84) = *a2;
  return MEMORY[0x2822009F8](sub_253197A60, 0, 0);
}

uint64_t sub_253197A60()
{
  v1 = *(v0 + 84);
  v2 = *(v0 + 48);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  *(v0 + 72) = v1;
  *(v0 + 76) = 0x20000001DLL;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D328, &unk_2531E27E0);
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 32) = 10;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v7 = sub_2531976A4(&qword_27F58D330, &qword_27F58D328, &unk_2531E27E0, sub_253172168);
  *v6 = v0;
  v6[1] = sub_253174448;

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 40, v0 + 72, v5, v0 + 16, v3, v5, v4, v7);
}

uint64_t static MTR.Cluster.Descriptor.readServerClustersWithRetry(device:endpoint:)(uint64_t a1, _WORD *a2)
{
  *(v2 + 48) = a1;
  *(v2 + 84) = *a2;
  return MEMORY[0x2822009F8](sub_253197BEC, 0, 0);
}

uint64_t sub_253197BEC()
{
  v1 = *(v0 + 84);
  v2 = *(v0 + 48);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  *(v0 + 72) = v1;
  *(v0 + 76) = 0x10000001DLL;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D328, &unk_2531E27E0);
  *(v0 + 16) = xmmword_2531E2770;
  *(v0 + 32) = 10;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  v7 = sub_2531976A4(&qword_27F58D330, &qword_27F58D328, &unk_2531E27E0, sub_253172168);
  *v6 = v0;
  v6[1] = sub_253174448;

  return MTR.Device.readAttributeValue<A>(from:of:polling:)(v0 + 40, v0 + 72, v5, v0 + 16, v3, v5, v4, v7);
}

uint64_t sub_253197D6C(uint64_t *a1, unsigned __int16 *a2)
{
  v2 = 0;
  v3 = sub_25318B150(*a2 | 0x1D00000000, 1, *a1, a1[1]);
  v12 = *(v3 + 16);
  if (v12)
  {
    v22 = MEMORY[0x277D84F90];
    v13 = v3;
    sub_2531B46AC(0, v12, 0);
    v14 = v13;
    v15 = 32;
    v16 = v22;
    while (1)
    {
      v17 = *(v14 + v15);
      if (HIDWORD(v17))
      {
        break;
      }

      v19 = *(v22 + 16);
      v18 = *(v22 + 24);
      v2 = (v19 + 1);
      if (v19 >= v18 >> 1)
      {
        sub_2531B46AC((v18 > 1), v19 + 1, 1);
        v14 = v13;
      }

      *(v22 + 16) = v2;
      *(v22 + 4 * v19 + 32) = v17;
      v15 += 8;
      if (!--v12)
      {

        goto LABEL_14;
      }
    }

    __break(1u);
    swift_once();
    v4 = sub_2531DA274();
    __swift_project_value_buffer(v4, qword_27F59A2A8);
    v5 = v2;
    v6 = sub_2531DA254();
    v7 = sub_2531DAA84();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_253166000, v6, v7, "Error occurred while parsing run mode response: %@", v8, 0xCu);
      sub_25316FD44(v9);
      MEMORY[0x259BFFA80](v9, -1, -1);
      MEMORY[0x259BFFA80](v8, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
LABEL_14:
    v21 = sub_2531C2BF0(v16);

    return v21;
  }
}

void sub_253197FBC(char a1@<W0>, char *a2@<X8>)
{
  v2 = a1;
  switch(a1)
  {
    case 0:
      break;
    case 1:
      v2 = 27;
      break;
    case 2:
      v2 = 28;
      break;
    case 3:
      v2 = 29;
      break;
    case 64:
      v2 = 30;
      break;
    case 65:
      v2 = 18;
      break;
    case 66:
      v2 = 19;
      break;
    case 67:
      v2 = 20;
      break;
    case 68:
      v2 = 21;
      break;
    case 69:
      v2 = 22;
      break;
    case 70:
      v2 = 23;
      break;
    case 71:
      v2 = 24;
      break;
    case 72:
      v2 = 31;
      break;
    case 73:
      v2 = 32;
      break;
    case 74:
      v2 = 33;
      break;
    case 75:
      v2 = 34;
      break;
    case 76:
      v2 = 35;
      break;
    case 77:
      v2 = 36;
      break;
    case 78:
      v2 = 37;
      break;
    default:
      v3 = a2;
      if (qword_27F58D0F0 != -1)
      {
        swift_once();
      }

      v4 = sub_2531DA274();
      __swift_project_value_buffer(v4, qword_27F59A2A8);
      v5 = sub_2531DA254();
      v6 = sub_2531DAA84();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v12 = v8;
        *v7 = 136315138;
        type metadata accessor for MTRRVCOperationalStateErrorState(0);
        v9 = sub_2531DA6F4();
        v11 = sub_253196608(v9, v10, &v12);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_253166000, v5, v6, "Matter added new status code in MTRRVCCleanModeStatusCode. Add mapping to it: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v8);
        MEMORY[0x259BFFA80](v8, -1, -1);
        MEMORY[0x259BFFA80](v7, -1, -1);
      }

      v2 = 1;
      a2 = v3;
      break;
  }

  *a2 = v2;
}

void sub_2531981E8(char a1@<W0>, char *a2@<X8>)
{
  v4 = a1;
  if (a1 <= 0x43u)
  {
    if (a1 > 0x41u)
    {
      if (a1 != 66)
      {
        if (a1 == 67)
        {
          *a2 = 20;
          return;
        }

        goto LABEL_22;
      }

      v4 = 19;
    }

    else if (a1)
    {
      if (a1 == 65)
      {
        *a2 = 18;
        return;
      }

      goto LABEL_22;
    }

    *a2 = v4;
    return;
  }

  if (a1 <= 0x45u)
  {
    if (a1 == 68)
    {
      *a2 = 21;
      return;
    }

    if (a1 == 69)
    {
      *a2 = 22;
      return;
    }
  }

  else
  {
    switch(a1)
    {
      case 'F':
        *a2 = 23;
        return;
      case 'G':
        *a2 = 24;
        return;
      case 'H':
        *a2 = 25;
        return;
    }
  }

LABEL_22:
  v14[9] = v2;
  v14[10] = v3;
  if (qword_27F58D0F0 != -1)
  {
    swift_once();
  }

  v6 = sub_2531DA274();
  __swift_project_value_buffer(v6, qword_27F59A2A8);
  v7 = sub_2531DA254();
  v8 = sub_2531DAA84();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14[0] = v10;
    *v9 = 136315138;
    type metadata accessor for MTRRVCRunModeStatusCode(0);
    v11 = sub_2531DA6F4();
    v13 = sub_253196608(v11, v12, v14);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_253166000, v7, v8, "Matter added new status code in MTRRVCRunModeStatusCode. Add mapping to it: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x259BFFA80](v10, -1, -1);
    MEMORY[0x259BFFA80](v9, -1, -1);
  }

  *a2 = 1;
}

void sub_253198418(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 >= 4u)
  {
    if (qword_27F58D0F0 != -1)
    {
      swift_once();
    }

    v4 = sub_2531DA274();
    __swift_project_value_buffer(v4, qword_27F59A2A8);
    v5 = sub_2531DA254();
    v6 = sub_2531DAA84();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      type metadata accessor for MTRServiceAreaSelectAreasStatus(0);
      v9 = sub_2531DA6F4();
      v11 = sub_253196608(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_253166000, v5, v6, "Matter added new status code in MTRServiceAreaSelectAreasStatus. Add mapping to it: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x259BFFA80](v8, -1, -1);
      MEMORY[0x259BFFA80](v7, -1, -1);
    }

    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = 0x11100F00u >> (8 * (a1 & 0x1F));
  }

  *a2 = v3;
}

void sub_2531985A0(char a1@<W0>, char *a2@<X8>)
{
  v4 = a1;
  if (a1 == 64)
  {
    v4 = 26;
    goto LABEL_9;
  }

  if (!a1)
  {
LABEL_9:
    *a2 = v4;
    return;
  }

  v14[9] = v2;
  v14[10] = v3;
  if (qword_27F58D0F0 != -1)
  {
    swift_once();
  }

  v6 = sub_2531DA274();
  __swift_project_value_buffer(v6, qword_27F59A2A8);
  v7 = sub_2531DA254();
  v8 = sub_2531DAA84();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14[0] = v10;
    *v9 = 136315138;
    type metadata accessor for MTRRVCCleanModeStatusCode(0);
    v11 = sub_2531DA6F4();
    v13 = sub_253196608(v11, v12, v14);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_253166000, v7, v8, "Matter added new status code in MTRRVCCleanModeStatusCode. Add mapping to it: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x259BFFA80](v10, -1, -1);
    MEMORY[0x259BFFA80](v9, -1, -1);
  }

  *a2 = 1;
}

uint64_t MTR.Error.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 20;
  switch(result)
  {
    case 0:
      goto LABEL_34;
    case 1:
      v2 = 1;
      goto LABEL_34;
    case 2:
      v2 = 2;
      goto LABEL_34;
    case 3:
      v2 = 3;
      goto LABEL_34;
    case 4:
      v2 = 4;
      goto LABEL_34;
    case 5:
      v2 = 5;
      goto LABEL_34;
    case 6:
      v2 = 6;
      goto LABEL_34;
    case 7:
      v2 = 7;
      goto LABEL_34;
    case 8:
      v2 = 8;
      goto LABEL_34;
    case 9:
      v2 = 9;
      goto LABEL_34;
    case 10:
      v2 = 10;
      goto LABEL_34;
    case 11:
      v2 = 11;
      goto LABEL_34;
    case 12:
      v2 = 12;
      goto LABEL_34;
    case 13:
      v2 = 13;
      goto LABEL_34;
    case 14:
      v2 = 14;
      goto LABEL_34;
    case 15:
      v2 = 15;
      goto LABEL_34;
    case 16:
      v2 = 16;
      goto LABEL_34;
    case 17:
      v2 = 17;
      goto LABEL_34;
    case 18:
      v2 = 18;
      goto LABEL_34;
    case 19:
      v2 = 19;
LABEL_34:
      v3 = v2;
      goto LABEL_35;
    case 20:
LABEL_35:
      *a2 = v3;
      break;
    case 21:
      *a2 = 21;
      break;
    case 22:
      *a2 = 22;
      break;
    case 23:
      *a2 = 23;
      break;
    case 24:
      *a2 = 24;
      break;
    case 25:
      *a2 = 25;
      break;
    case 26:
      *a2 = 26;
      break;
    case 27:
      *a2 = 27;
      break;
    case 28:
      *a2 = 28;
      break;
    case 29:
      *a2 = 29;
      break;
    case 30:
      *a2 = 30;
      break;
    case 31:
      *a2 = 31;
      break;
    case 32:
      *a2 = 32;
      break;
    case 33:
      *a2 = 33;
      break;
    case 34:
      *a2 = 34;
      break;
    case 35:
      *a2 = 35;
      break;
    case 36:
      *a2 = 36;
      break;
    case 37:
      *a2 = 37;
      break;
    default:
      *a2 = 38;
      break;
  }

  return result;
}

unint64_t sub_2531988E4()
{
  result = qword_27F58DA70;
  if (!qword_27F58DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DA70);
  }

  return result;
}

uint64_t sub_253198938()
{
  v1 = *v0;
  sub_2531DB3F4();
  MEMORY[0x259BFF270](v1);
  return sub_2531DB454();
}

uint64_t sub_2531989AC(uint64_t a1)
{
  v2 = *v1;
  sub_2531DB3F4();
  MEMORY[0x259BFF270](v2);
  return sub_2531DB454();
}

uint64_t sub_2531989FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_253198BAC();
  v5 = sub_253198C00();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t _s5ErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDB)
  {
    goto LABEL_17;
  }

  if (a2 + 37 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 37) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 37;
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

      return (*a1 | (v4 << 8)) - 37;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 37;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v8 = v6 - 38;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5ErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDB)
  {
    v4 = 0;
  }

  if (a2 > 0xDA)
  {
    v5 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
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
    *result = a2 + 37;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_253198BAC()
{
  result = qword_27F58DA78;
  if (!qword_27F58DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DA78);
  }

  return result;
}

unint64_t sub_253198C00()
{
  result = qword_27F58DA80;
  if (!qword_27F58DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DA80);
  }

  return result;
}

BOOL sub_253198C54(unint64_t a1, unsigned __int8 a2, unint64_t a3, unsigned __int8 a4)
{
  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        a1 = a1 | 0xFFFFFFFE00000000;
      }

      else
      {
        v9 = a1 | 0xFF00;
        if (BYTE2(a1) != 1)
        {
          v9 = 0;
        }

        if (BYTE2(a1))
        {
          v10 = v9;
        }

        else
        {
          v10 = a1;
        }

        a1 = *&v10 | 0xFFFFFFFFFFFF0000;
      }
    }
  }

  else
  {
    if (a2 == 5)
    {
      v4 = a1;
    }

    else
    {
      v4 = 0;
    }

    v5 = a1 | 0xFFFFFFFB00000000;
    if (a2 != 3)
    {
      v5 = a1 | 0xFFFFFFFD00000000;
    }

    if (a2 <= 4u)
    {
      a1 = v5;
    }

    else
    {
      a1 = v4;
    }
  }

  if (a4 <= 2u)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        a3 = a3 | 0xFFFFFFFE00000000;
      }

      else
      {
        v11 = a3 | 0xFF00;
        if (BYTE2(a3) != 1)
        {
          v11 = 0;
        }

        if (BYTE2(a3))
        {
          v12 = v11;
        }

        else
        {
          v12 = a3;
        }

        a3 = *&v12 | 0xFFFFFFFFFFFF0000;
      }
    }
  }

  else
  {
    if (a4 == 5)
    {
      v6 = a3;
    }

    else
    {
      v6 = 0;
    }

    v7 = a3 | 0xFFFFFFFB00000000;
    if (a4 != 3)
    {
      v7 = a3 | 0xFFFFFFFD00000000;
    }

    if (a4 <= 4u)
    {
      a3 = v7;
    }

    else
    {
      a3 = v6;
    }
  }

  return a1 == a3;
}

BOOL sub_253198D50(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = __ROR8__(a1, 32);
  if (a2)
  {
    v4 = a1;
  }

  v5 = __ROR8__(a3, 32);
  if (a4)
  {
    v5 = a3;
  }

  return v4 == v5;
}

uint64_t MTR.ValueDecoder.decode<A>(_:from:)@<X0>(uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *v5;
  v12 = *(a2 + 16);
  _s12ValueDecoderV14ImplementationCMa();
  v13 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D1A0, &qword_2531E48A0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2531E14E0;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  *(v14 + 48) = v12;
  v13[3] = v14;
  v13[4] = 0x8000000000000000;
  v13[2] = v11;

  sub_25316D004(v9, v10, v12);
  sub_25319B444(a3, a4, x8_0);
}

uint64_t sub_253198EA4@<X0>(unsigned __int8 a2@<W3>, void *a3@<X8>)
{
  sub_2531DABC4();

  if (a2 <= 4u)
  {
    v15 = 0xE300000000000000;
    v16 = 7630441;
    v17 = 0xE400000000000000;
    v18 = 1953393013;
    v19 = 0xE500000000000000;
    v20 = 0x74616F6C66;
    if (a2 != 3)
    {
      v20 = 0x656C62756F64;
      v19 = 0xE600000000000000;
    }

    if (a2 != 2)
    {
      v18 = v20;
      v17 = v19;
    }

    if (!a2)
    {
      v16 = 1819242338;
      v15 = 0xE400000000000000;
    }

    if (a2 <= 1u)
    {
      v13 = v16;
    }

    else
    {
      v13 = v18;
    }

    if (a2 <= 1u)
    {
      v14 = v15;
    }

    else
    {
      v14 = v17;
    }
  }

  else
  {
    v5 = 0xE900000000000065;
    v6 = 0x7275746375727473;
    v7 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E75;
    v9 = 0xE400000000000000;
    if (a2 != 9)
    {
      v8 = 1819047278;
      v7 = 0xE400000000000000;
    }

    if (a2 != 8)
    {
      v6 = v8;
      v5 = v7;
    }

    v10 = 0xE600000000000000;
    v11 = 0x676E69727473;
    v12 = 1635017060;
    if (a2 != 6)
    {
      v12 = 0x7961727261;
      v9 = 0xE500000000000000;
    }

    if (a2 != 5)
    {
      v11 = v12;
      v10 = v9;
    }

    if (a2 <= 7u)
    {
      v13 = v11;
    }

    else
    {
      v13 = v6;
    }

    if (a2 <= 7u)
    {
      v14 = v10;
    }

    else
    {
      v14 = v5;
    }
  }

  MEMORY[0x259BFE570](v13, v14);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
  *a3 = MEMORY[0x277CC9318];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a3, v21, v22);
}

uint64_t sub_253199108@<X0>(unsigned __int8 a2@<W3>, void *a3@<X8>)
{
  sub_2531DABC4();

  if (a2 <= 4u)
  {
    v15 = 0xE300000000000000;
    v16 = 7630441;
    v17 = 0xE400000000000000;
    v18 = 1953393013;
    v19 = 0xE500000000000000;
    v20 = 0x74616F6C66;
    if (a2 != 3)
    {
      v20 = 0x656C62756F64;
      v19 = 0xE600000000000000;
    }

    if (a2 != 2)
    {
      v18 = v20;
      v17 = v19;
    }

    if (!a2)
    {
      v16 = 1819242338;
      v15 = 0xE400000000000000;
    }

    if (a2 <= 1u)
    {
      v13 = v16;
    }

    else
    {
      v13 = v18;
    }

    if (a2 <= 1u)
    {
      v14 = v15;
    }

    else
    {
      v14 = v17;
    }
  }

  else
  {
    v5 = 0xE900000000000065;
    v6 = 0x7275746375727473;
    v7 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E75;
    v9 = 0xE400000000000000;
    if (a2 != 9)
    {
      v8 = 1819047278;
      v7 = 0xE400000000000000;
    }

    if (a2 != 8)
    {
      v6 = v8;
      v5 = v7;
    }

    v10 = 0xE600000000000000;
    v11 = 0x676E69727473;
    v12 = 1635017060;
    if (a2 != 6)
    {
      v12 = 0x7961727261;
      v9 = 0xE500000000000000;
    }

    if (a2 != 5)
    {
      v11 = v12;
      v10 = v9;
    }

    if (a2 <= 7u)
    {
      v13 = v11;
    }

    else
    {
      v13 = v6;
    }

    if (a2 <= 7u)
    {
      v14 = v10;
    }

    else
    {
      v14 = v5;
    }
  }

  MEMORY[0x259BFE570](v13, v14);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
  *a3 = MEMORY[0x277D839B0];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a3, v21, v22);
}

uint64_t sub_25319936C@<X0>(unsigned __int8 a2@<W3>, void *a3@<X8>)
{
  sub_2531DABC4();

  if (a2 <= 4u)
  {
    v15 = 0xE300000000000000;
    v16 = 7630441;
    v17 = 0xE400000000000000;
    v18 = 1953393013;
    v19 = 0xE500000000000000;
    v20 = 0x74616F6C66;
    if (a2 != 3)
    {
      v20 = 0x656C62756F64;
      v19 = 0xE600000000000000;
    }

    if (a2 != 2)
    {
      v18 = v20;
      v17 = v19;
    }

    if (!a2)
    {
      v16 = 1819242338;
      v15 = 0xE400000000000000;
    }

    if (a2 <= 1u)
    {
      v13 = v16;
    }

    else
    {
      v13 = v18;
    }

    if (a2 <= 1u)
    {
      v14 = v15;
    }

    else
    {
      v14 = v17;
    }
  }

  else
  {
    v5 = 0xE900000000000065;
    v6 = 0x7275746375727473;
    v7 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E75;
    v9 = 0xE400000000000000;
    if (a2 != 9)
    {
      v8 = 1819047278;
      v7 = 0xE400000000000000;
    }

    if (a2 != 8)
    {
      v6 = v8;
      v5 = v7;
    }

    v10 = 0xE600000000000000;
    v11 = 0x676E69727473;
    v12 = 1635017060;
    if (a2 != 6)
    {
      v12 = 0x7961727261;
      v9 = 0xE500000000000000;
    }

    if (a2 != 5)
    {
      v11 = v12;
      v10 = v9;
    }

    if (a2 <= 7u)
    {
      v13 = v11;
    }

    else
    {
      v13 = v6;
    }

    if (a2 <= 7u)
    {
      v14 = v10;
    }

    else
    {
      v14 = v5;
    }
  }

  MEMORY[0x259BFE570](v13, v14);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
  *a3 = MEMORY[0x277D837D0];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a3, v21, v22);
}

uint64_t sub_2531995D0@<X0>(unsigned __int8 a2@<W3>, void *a3@<X8>)
{
  sub_2531DABC4();

  if (a2 <= 4u)
  {
    v15 = 0xE300000000000000;
    v16 = 7630441;
    v17 = 0xE400000000000000;
    v18 = 1953393013;
    v19 = 0xE500000000000000;
    v20 = 0x74616F6C66;
    if (a2 != 3)
    {
      v20 = 0x656C62756F64;
      v19 = 0xE600000000000000;
    }

    if (a2 != 2)
    {
      v18 = v20;
      v17 = v19;
    }

    if (!a2)
    {
      v16 = 1819242338;
      v15 = 0xE400000000000000;
    }

    if (a2 <= 1u)
    {
      v13 = v16;
    }

    else
    {
      v13 = v18;
    }

    if (a2 <= 1u)
    {
      v14 = v15;
    }

    else
    {
      v14 = v17;
    }
  }

  else
  {
    v5 = 0xE900000000000065;
    v6 = 0x7275746375727473;
    v7 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E75;
    v9 = 0xE400000000000000;
    if (a2 != 9)
    {
      v8 = 1819047278;
      v7 = 0xE400000000000000;
    }

    if (a2 != 8)
    {
      v6 = v8;
      v5 = v7;
    }

    v10 = 0xE600000000000000;
    v11 = 0x676E69727473;
    v12 = 1635017060;
    if (a2 != 6)
    {
      v12 = 0x7961727261;
      v9 = 0xE500000000000000;
    }

    if (a2 != 5)
    {
      v11 = v12;
      v10 = v9;
    }

    if (a2 <= 7u)
    {
      v13 = v11;
    }

    else
    {
      v13 = v6;
    }

    if (a2 <= 7u)
    {
      v14 = v10;
    }

    else
    {
      v14 = v5;
    }
  }

  MEMORY[0x259BFE570](v13, v14);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
  *a3 = MEMORY[0x277D839F8];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a3, v21, v22);
}

uint64_t sub_253199834@<X0>(unsigned __int8 a2@<W3>, void *a3@<X8>)
{
  sub_2531DABC4();

  if (a2 <= 4u)
  {
    v15 = 0xE300000000000000;
    v16 = 7630441;
    v17 = 0xE400000000000000;
    v18 = 1953393013;
    v19 = 0xE500000000000000;
    v20 = 0x74616F6C66;
    if (a2 != 3)
    {
      v20 = 0x656C62756F64;
      v19 = 0xE600000000000000;
    }

    if (a2 != 2)
    {
      v18 = v20;
      v17 = v19;
    }

    if (!a2)
    {
      v16 = 1819242338;
      v15 = 0xE400000000000000;
    }

    if (a2 <= 1u)
    {
      v13 = v16;
    }

    else
    {
      v13 = v18;
    }

    if (a2 <= 1u)
    {
      v14 = v15;
    }

    else
    {
      v14 = v17;
    }
  }

  else
  {
    v5 = 0xE900000000000065;
    v6 = 0x7275746375727473;
    v7 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E75;
    v9 = 0xE400000000000000;
    if (a2 != 9)
    {
      v8 = 1819047278;
      v7 = 0xE400000000000000;
    }

    if (a2 != 8)
    {
      v6 = v8;
      v5 = v7;
    }

    v10 = 0xE600000000000000;
    v11 = 0x676E69727473;
    v12 = 1635017060;
    if (a2 != 6)
    {
      v12 = 0x7961727261;
      v9 = 0xE500000000000000;
    }

    if (a2 != 5)
    {
      v11 = v12;
      v10 = v9;
    }

    if (a2 <= 7u)
    {
      v13 = v11;
    }

    else
    {
      v13 = v6;
    }

    if (a2 <= 7u)
    {
      v14 = v10;
    }

    else
    {
      v14 = v5;
    }
  }

  MEMORY[0x259BFE570](v13, v14);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
  *a3 = MEMORY[0x277D83A90];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a3, v21, v22);
}

uint64_t sub_253199A98@<X0>(unsigned __int8 a2@<W3>, void *a3@<X8>)
{
  sub_2531DABC4();

  if (a2 <= 4u)
  {
    v15 = 0xE300000000000000;
    v16 = 7630441;
    v17 = 0xE400000000000000;
    v18 = 1953393013;
    v19 = 0xE500000000000000;
    v20 = 0x74616F6C66;
    if (a2 != 3)
    {
      v20 = 0x656C62756F64;
      v19 = 0xE600000000000000;
    }

    if (a2 != 2)
    {
      v18 = v20;
      v17 = v19;
    }

    if (!a2)
    {
      v16 = 1819242338;
      v15 = 0xE400000000000000;
    }

    if (a2 <= 1u)
    {
      v13 = v16;
    }

    else
    {
      v13 = v18;
    }

    if (a2 <= 1u)
    {
      v14 = v15;
    }

    else
    {
      v14 = v17;
    }
  }

  else
  {
    v5 = 0xE900000000000065;
    v6 = 0x7275746375727473;
    v7 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E75;
    v9 = 0xE400000000000000;
    if (a2 != 9)
    {
      v8 = 1819047278;
      v7 = 0xE400000000000000;
    }

    if (a2 != 8)
    {
      v6 = v8;
      v5 = v7;
    }

    v10 = 0xE600000000000000;
    v11 = 0x676E69727473;
    v12 = 1635017060;
    if (a2 != 6)
    {
      v12 = 0x7961727261;
      v9 = 0xE500000000000000;
    }

    if (a2 != 5)
    {
      v11 = v12;
      v10 = v9;
    }

    if (a2 <= 7u)
    {
      v13 = v11;
    }

    else
    {
      v13 = v6;
    }

    if (a2 <= 7u)
    {
      v14 = v10;
    }

    else
    {
      v14 = v5;
    }
  }

  MEMORY[0x259BFE570](v13, v14);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
  *a3 = MEMORY[0x277D83B88];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a3, v21, v22);
}

uint64_t sub_253199CFC@<X0>(unsigned __int8 a2@<W3>, void *a3@<X8>)
{
  sub_2531DABC4();

  if (a2 <= 4u)
  {
    v15 = 0xE300000000000000;
    v16 = 7630441;
    v17 = 0xE400000000000000;
    v18 = 1953393013;
    v19 = 0xE500000000000000;
    v20 = 0x74616F6C66;
    if (a2 != 3)
    {
      v20 = 0x656C62756F64;
      v19 = 0xE600000000000000;
    }

    if (a2 != 2)
    {
      v18 = v20;
      v17 = v19;
    }

    if (!a2)
    {
      v16 = 1819242338;
      v15 = 0xE400000000000000;
    }

    if (a2 <= 1u)
    {
      v13 = v16;
    }

    else
    {
      v13 = v18;
    }

    if (a2 <= 1u)
    {
      v14 = v15;
    }

    else
    {
      v14 = v17;
    }
  }

  else
  {
    v5 = 0xE900000000000065;
    v6 = 0x7275746375727473;
    v7 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E75;
    v9 = 0xE400000000000000;
    if (a2 != 9)
    {
      v8 = 1819047278;
      v7 = 0xE400000000000000;
    }

    if (a2 != 8)
    {
      v6 = v8;
      v5 = v7;
    }

    v10 = 0xE600000000000000;
    v11 = 0x676E69727473;
    v12 = 1635017060;
    if (a2 != 6)
    {
      v12 = 0x7961727261;
      v9 = 0xE500000000000000;
    }

    if (a2 != 5)
    {
      v11 = v12;
      v10 = v9;
    }

    if (a2 <= 7u)
    {
      v13 = v11;
    }

    else
    {
      v13 = v6;
    }

    if (a2 <= 7u)
    {
      v14 = v10;
    }

    else
    {
      v14 = v5;
    }
  }

  MEMORY[0x259BFE570](v13, v14);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
  *a3 = MEMORY[0x277D84900];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a3, v21, v22);
}

uint64_t sub_253199F60@<X0>(unsigned __int8 a2@<W3>, void *a3@<X8>)
{
  sub_2531DABC4();

  if (a2 <= 4u)
  {
    v15 = 0xE300000000000000;
    v16 = 7630441;
    v17 = 0xE400000000000000;
    v18 = 1953393013;
    v19 = 0xE500000000000000;
    v20 = 0x74616F6C66;
    if (a2 != 3)
    {
      v20 = 0x656C62756F64;
      v19 = 0xE600000000000000;
    }

    if (a2 != 2)
    {
      v18 = v20;
      v17 = v19;
    }

    if (!a2)
    {
      v16 = 1819242338;
      v15 = 0xE400000000000000;
    }

    if (a2 <= 1u)
    {
      v13 = v16;
    }

    else
    {
      v13 = v18;
    }

    if (a2 <= 1u)
    {
      v14 = v15;
    }

    else
    {
      v14 = v17;
    }
  }

  else
  {
    v5 = 0xE900000000000065;
    v6 = 0x7275746375727473;
    v7 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E75;
    v9 = 0xE400000000000000;
    if (a2 != 9)
    {
      v8 = 1819047278;
      v7 = 0xE400000000000000;
    }

    if (a2 != 8)
    {
      v6 = v8;
      v5 = v7;
    }

    v10 = 0xE600000000000000;
    v11 = 0x676E69727473;
    v12 = 1635017060;
    if (a2 != 6)
    {
      v12 = 0x7961727261;
      v9 = 0xE500000000000000;
    }

    if (a2 != 5)
    {
      v11 = v12;
      v10 = v9;
    }

    if (a2 <= 7u)
    {
      v13 = v11;
    }

    else
    {
      v13 = v6;
    }

    if (a2 <= 7u)
    {
      v14 = v10;
    }

    else
    {
      v14 = v5;
    }
  }

  MEMORY[0x259BFE570](v13, v14);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
  *a3 = MEMORY[0x277D84958];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a3, v21, v22);
}

uint64_t sub_25319A1C4@<X0>(unsigned __int8 a2@<W3>, void *a3@<X8>)
{
  sub_2531DABC4();

  if (a2 <= 4u)
  {
    v15 = 0xE300000000000000;
    v16 = 7630441;
    v17 = 0xE400000000000000;
    v18 = 1953393013;
    v19 = 0xE500000000000000;
    v20 = 0x74616F6C66;
    if (a2 != 3)
    {
      v20 = 0x656C62756F64;
      v19 = 0xE600000000000000;
    }

    if (a2 != 2)
    {
      v18 = v20;
      v17 = v19;
    }

    if (!a2)
    {
      v16 = 1819242338;
      v15 = 0xE400000000000000;
    }

    if (a2 <= 1u)
    {
      v13 = v16;
    }

    else
    {
      v13 = v18;
    }

    if (a2 <= 1u)
    {
      v14 = v15;
    }

    else
    {
      v14 = v17;
    }
  }

  else
  {
    v5 = 0xE900000000000065;
    v6 = 0x7275746375727473;
    v7 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E75;
    v9 = 0xE400000000000000;
    if (a2 != 9)
    {
      v8 = 1819047278;
      v7 = 0xE400000000000000;
    }

    if (a2 != 8)
    {
      v6 = v8;
      v5 = v7;
    }

    v10 = 0xE600000000000000;
    v11 = 0x676E69727473;
    v12 = 1635017060;
    if (a2 != 6)
    {
      v12 = 0x7961727261;
      v9 = 0xE500000000000000;
    }

    if (a2 != 5)
    {
      v11 = v12;
      v10 = v9;
    }

    if (a2 <= 7u)
    {
      v13 = v11;
    }

    else
    {
      v13 = v6;
    }

    if (a2 <= 7u)
    {
      v14 = v10;
    }

    else
    {
      v14 = v5;
    }
  }

  MEMORY[0x259BFE570](v13, v14);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
  *a3 = MEMORY[0x277D849A8];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a3, v21, v22);
}

uint64_t sub_25319A428@<X0>(unsigned __int8 a2@<W3>, void *a3@<X8>)
{
  sub_2531DABC4();

  if (a2 <= 4u)
  {
    v15 = 0xE300000000000000;
    v16 = 7630441;
    v17 = 0xE400000000000000;
    v18 = 1953393013;
    v19 = 0xE500000000000000;
    v20 = 0x74616F6C66;
    if (a2 != 3)
    {
      v20 = 0x656C62756F64;
      v19 = 0xE600000000000000;
    }

    if (a2 != 2)
    {
      v18 = v20;
      v17 = v19;
    }

    if (!a2)
    {
      v16 = 1819242338;
      v15 = 0xE400000000000000;
    }

    if (a2 <= 1u)
    {
      v13 = v16;
    }

    else
    {
      v13 = v18;
    }

    if (a2 <= 1u)
    {
      v14 = v15;
    }

    else
    {
      v14 = v17;
    }
  }

  else
  {
    v5 = 0xE900000000000065;
    v6 = 0x7275746375727473;
    v7 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E75;
    v9 = 0xE400000000000000;
    if (a2 != 9)
    {
      v8 = 1819047278;
      v7 = 0xE400000000000000;
    }

    if (a2 != 8)
    {
      v6 = v8;
      v5 = v7;
    }

    v10 = 0xE600000000000000;
    v11 = 0x676E69727473;
    v12 = 1635017060;
    if (a2 != 6)
    {
      v12 = 0x7961727261;
      v9 = 0xE500000000000000;
    }

    if (a2 != 5)
    {
      v11 = v12;
      v10 = v9;
    }

    if (a2 <= 7u)
    {
      v13 = v11;
    }

    else
    {
      v13 = v6;
    }

    if (a2 <= 7u)
    {
      v14 = v10;
    }

    else
    {
      v14 = v5;
    }
  }

  MEMORY[0x259BFE570](v13, v14);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
  *a3 = MEMORY[0x277D84A28];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a3, v21, v22);
}

uint64_t sub_25319A68C@<X0>(unsigned __int8 a2@<W3>, void *a3@<X8>)
{
  sub_2531DABC4();

  if (a2 <= 4u)
  {
    v15 = 0xE300000000000000;
    v16 = 7630441;
    v17 = 0xE400000000000000;
    v18 = 1953393013;
    v19 = 0xE500000000000000;
    v20 = 0x74616F6C66;
    if (a2 != 3)
    {
      v20 = 0x656C62756F64;
      v19 = 0xE600000000000000;
    }

    if (a2 != 2)
    {
      v18 = v20;
      v17 = v19;
    }

    if (!a2)
    {
      v16 = 1819242338;
      v15 = 0xE400000000000000;
    }

    if (a2 <= 1u)
    {
      v13 = v16;
    }

    else
    {
      v13 = v18;
    }

    if (a2 <= 1u)
    {
      v14 = v15;
    }

    else
    {
      v14 = v17;
    }
  }

  else
  {
    v5 = 0xE900000000000065;
    v6 = 0x7275746375727473;
    v7 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E75;
    v9 = 0xE400000000000000;
    if (a2 != 9)
    {
      v8 = 1819047278;
      v7 = 0xE400000000000000;
    }

    if (a2 != 8)
    {
      v6 = v8;
      v5 = v7;
    }

    v10 = 0xE600000000000000;
    v11 = 0x676E69727473;
    v12 = 1635017060;
    if (a2 != 6)
    {
      v12 = 0x7961727261;
      v9 = 0xE500000000000000;
    }

    if (a2 != 5)
    {
      v11 = v12;
      v10 = v9;
    }

    if (a2 <= 7u)
    {
      v13 = v11;
    }

    else
    {
      v13 = v6;
    }

    if (a2 <= 7u)
    {
      v14 = v10;
    }

    else
    {
      v14 = v5;
    }
  }

  MEMORY[0x259BFE570](v13, v14);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
  *a3 = MEMORY[0x277D83E88];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a3, v21, v22);
}

uint64_t sub_25319A8F0@<X0>(unsigned __int8 a2@<W3>, void *a3@<X8>)
{
  sub_2531DABC4();

  if (a2 <= 4u)
  {
    v15 = 0xE300000000000000;
    v16 = 7630441;
    v17 = 0xE400000000000000;
    v18 = 1953393013;
    v19 = 0xE500000000000000;
    v20 = 0x74616F6C66;
    if (a2 != 3)
    {
      v20 = 0x656C62756F64;
      v19 = 0xE600000000000000;
    }

    if (a2 != 2)
    {
      v18 = v20;
      v17 = v19;
    }

    if (!a2)
    {
      v16 = 1819242338;
      v15 = 0xE400000000000000;
    }

    if (a2 <= 1u)
    {
      v13 = v16;
    }

    else
    {
      v13 = v18;
    }

    if (a2 <= 1u)
    {
      v14 = v15;
    }

    else
    {
      v14 = v17;
    }
  }

  else
  {
    v5 = 0xE900000000000065;
    v6 = 0x7275746375727473;
    v7 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E75;
    v9 = 0xE400000000000000;
    if (a2 != 9)
    {
      v8 = 1819047278;
      v7 = 0xE400000000000000;
    }

    if (a2 != 8)
    {
      v6 = v8;
      v5 = v7;
    }

    v10 = 0xE600000000000000;
    v11 = 0x676E69727473;
    v12 = 1635017060;
    if (a2 != 6)
    {
      v12 = 0x7961727261;
      v9 = 0xE500000000000000;
    }

    if (a2 != 5)
    {
      v11 = v12;
      v10 = v9;
    }

    if (a2 <= 7u)
    {
      v13 = v11;
    }

    else
    {
      v13 = v6;
    }

    if (a2 <= 7u)
    {
      v14 = v10;
    }

    else
    {
      v14 = v5;
    }
  }

  MEMORY[0x259BFE570](v13, v14);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
  *a3 = MEMORY[0x277D84B78];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a3, v21, v22);
}

uint64_t sub_25319AB54@<X0>(unsigned __int8 a2@<W3>, void *a3@<X8>)
{
  sub_2531DABC4();

  if (a2 <= 4u)
  {
    v15 = 0xE300000000000000;
    v16 = 7630441;
    v17 = 0xE400000000000000;
    v18 = 1953393013;
    v19 = 0xE500000000000000;
    v20 = 0x74616F6C66;
    if (a2 != 3)
    {
      v20 = 0x656C62756F64;
      v19 = 0xE600000000000000;
    }

    if (a2 != 2)
    {
      v18 = v20;
      v17 = v19;
    }

    if (!a2)
    {
      v16 = 1819242338;
      v15 = 0xE400000000000000;
    }

    if (a2 <= 1u)
    {
      v13 = v16;
    }

    else
    {
      v13 = v18;
    }

    if (a2 <= 1u)
    {
      v14 = v15;
    }

    else
    {
      v14 = v17;
    }
  }

  else
  {
    v5 = 0xE900000000000065;
    v6 = 0x7275746375727473;
    v7 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E75;
    v9 = 0xE400000000000000;
    if (a2 != 9)
    {
      v8 = 1819047278;
      v7 = 0xE400000000000000;
    }

    if (a2 != 8)
    {
      v6 = v8;
      v5 = v7;
    }

    v10 = 0xE600000000000000;
    v11 = 0x676E69727473;
    v12 = 1635017060;
    if (a2 != 6)
    {
      v12 = 0x7961727261;
      v9 = 0xE500000000000000;
    }

    if (a2 != 5)
    {
      v11 = v12;
      v10 = v9;
    }

    if (a2 <= 7u)
    {
      v13 = v11;
    }

    else
    {
      v13 = v6;
    }

    if (a2 <= 7u)
    {
      v14 = v10;
    }

    else
    {
      v14 = v5;
    }
  }

  MEMORY[0x259BFE570](v13, v14);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
  *a3 = MEMORY[0x277D84C58];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a3, v21, v22);
}

uint64_t sub_25319ADB8@<X0>(unsigned __int8 a2@<W3>, void *a3@<X8>)
{
  sub_2531DABC4();

  if (a2 <= 4u)
  {
    v15 = 0xE300000000000000;
    v16 = 7630441;
    v17 = 0xE400000000000000;
    v18 = 1953393013;
    v19 = 0xE500000000000000;
    v20 = 0x74616F6C66;
    if (a2 != 3)
    {
      v20 = 0x656C62756F64;
      v19 = 0xE600000000000000;
    }

    if (a2 != 2)
    {
      v18 = v20;
      v17 = v19;
    }

    if (!a2)
    {
      v16 = 1819242338;
      v15 = 0xE400000000000000;
    }

    if (a2 <= 1u)
    {
      v13 = v16;
    }

    else
    {
      v13 = v18;
    }

    if (a2 <= 1u)
    {
      v14 = v15;
    }

    else
    {
      v14 = v17;
    }
  }

  else
  {
    v5 = 0xE900000000000065;
    v6 = 0x7275746375727473;
    v7 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E75;
    v9 = 0xE400000000000000;
    if (a2 != 9)
    {
      v8 = 1819047278;
      v7 = 0xE400000000000000;
    }

    if (a2 != 8)
    {
      v6 = v8;
      v5 = v7;
    }

    v10 = 0xE600000000000000;
    v11 = 0x676E69727473;
    v12 = 1635017060;
    if (a2 != 6)
    {
      v12 = 0x7961727261;
      v9 = 0xE500000000000000;
    }

    if (a2 != 5)
    {
      v11 = v12;
      v10 = v9;
    }

    if (a2 <= 7u)
    {
      v13 = v11;
    }

    else
    {
      v13 = v6;
    }

    if (a2 <= 7u)
    {
      v14 = v10;
    }

    else
    {
      v14 = v5;
    }
  }

  MEMORY[0x259BFE570](v13, v14);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
  *a3 = MEMORY[0x277D84CC0];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a3, v21, v22);
}

uint64_t sub_25319B01C@<X0>(unsigned __int8 a2@<W3>, void *a3@<X8>)
{
  sub_2531DABC4();

  if (a2 <= 4u)
  {
    v15 = 0xE300000000000000;
    v16 = 7630441;
    v17 = 0xE400000000000000;
    v18 = 1953393013;
    v19 = 0xE500000000000000;
    v20 = 0x74616F6C66;
    if (a2 != 3)
    {
      v20 = 0x656C62756F64;
      v19 = 0xE600000000000000;
    }

    if (a2 != 2)
    {
      v18 = v20;
      v17 = v19;
    }

    if (!a2)
    {
      v16 = 1819242338;
      v15 = 0xE400000000000000;
    }

    if (a2 <= 1u)
    {
      v13 = v16;
    }

    else
    {
      v13 = v18;
    }

    if (a2 <= 1u)
    {
      v14 = v15;
    }

    else
    {
      v14 = v17;
    }
  }

  else
  {
    v5 = 0xE900000000000065;
    v6 = 0x7275746375727473;
    v7 = 0xE700000000000000;
    v8 = 0x6E776F6E6B6E75;
    v9 = 0xE400000000000000;
    if (a2 != 9)
    {
      v8 = 1819047278;
      v7 = 0xE400000000000000;
    }

    if (a2 != 8)
    {
      v6 = v8;
      v5 = v7;
    }

    v10 = 0xE600000000000000;
    v11 = 0x676E69727473;
    v12 = 1635017060;
    if (a2 != 6)
    {
      v12 = 0x7961727261;
      v9 = 0xE500000000000000;
    }

    if (a2 != 5)
    {
      v11 = v12;
      v10 = v9;
    }

    if (a2 <= 7u)
    {
      v13 = v11;
    }

    else
    {
      v13 = v6;
    }

    if (a2 <= 7u)
    {
      v14 = v10;
    }

    else
    {
      v14 = v5;
    }
  }

  MEMORY[0x259BFE570](v13, v14);

  MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
  *a3 = MEMORY[0x277D84D38];

  sub_2531DAC14();
  v21 = *MEMORY[0x277D84160];
  v22 = sub_2531DAC24();
  v23 = *(*(v22 - 8) + 104);

  return v23(a3, v21, v22);
}

uint64_t sub_25319B280@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  sub_2531DABC4();
  MEMORY[0x259BFE570](0xD000000000000013, 0x80000002531DC810);
  MEMORY[0x259BFE570](a3, a4);
  MEMORY[0x259BFE570](0xD00000000000001DLL, 0x80000002531DC830);
  sub_2531DAD24();
  MEMORY[0x259BFE570](0x64616574736E6920, 0xE90000000000002ELL);

  sub_2531DAC14();
  v9 = *MEMORY[0x277D84168];
  v10 = sub_2531DAC24();
  return (*(*(v10 - 8) + 104))(a6, v9, v10);
}

uint64_t MTR.ValueDecoder.userInfo.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_25319B444@<X0>(char *a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  result = swift_beginAccess();
  v9 = *(v4 + 24);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + 24 * v10;
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    v18 = *(v11 + 8);
    v19 = v12;
    v20 = v13;
    v14 = *(v4 + 32);
    memset(v16, 0, sizeof(v16));
    v17 = -1;
    sub_25316D004(v18, v12, v13);
    v15 = sub_25316B674();

    sub_25319D118(&v18, a2, v14, v16, a2, &_s10_CodingKeyON, a3, v15, x8_0);
    sub_25316D2BC(v18, v19, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t dispatch thunk of MTR.NativeValueDecoder.decode(_:)(uint64_t a1, uint64_t a2)
{
  return (*(a2 + 16))(a1);
}

{
  return (*(a2 + 24))(a1);
}

uint64_t getEnumTagSinglePayload for NWAsyncConnection.Outbound(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for NWAsyncConnection.Outbound(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25319B61C()
{
  v1 = v0;
  result = swift_beginAccess();
  if (*(*(v0 + 24) + 16))
  {
    sub_2531A6B9C(&v6);
    v3 = v8;
    v4 = v6;
    v5 = v7;
    if (v8 == 255)
    {
      sub_253170AB0(v6, v7, 0xFFu);
      sub_2531A6A9C(*(*(v1 + 24) + 16) - 1, &v6);
      v4 = v6;
      v5 = v7;
      v3 = v8;
    }

    swift_endAccess();
    return sub_25316D2BC(v4, v5, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25319B6D4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25319B724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s12ValueDecoderV21GenericKeyedContainerVMa(0, a3, a4, a4);

  swift_getWitnessTable();
  return sub_2531DAE64();
}

uint64_t sub_25319B7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v7 = *(v3 + 24);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 24 * v8;
    v10 = *(v9 + 8);
    v11 = *(v9 + 16);
    v12 = *(v9 + 24);
    if (v12 == 8)
    {
      sub_25316D004(v10, v11, 8u);

      sub_25319B724(v23, a2, a2, a3);

      return sub_25316D2BC(v10, v11, 8u);
    }

    if (v12 == 10 && (v11 | v10) == 0)
    {
      v14 = sub_2531DAC24();
      swift_allocError();
      v16 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      *v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA0, &unk_2531E5F00);
      v25 = *(v3 + 32);

      sub_25316B2C4(v25);

      sub_2531DAC14();
      v26 = MEMORY[0x277D84170];
LABEL_32:
      (*(*(v14 - 8) + 104))(v16, *v26, v14);
      return swift_willThrow();
    }

    v14 = sub_2531DAC24();
    swift_allocError();
    v16 = v15;
    *v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA0, &unk_2531E5F00);
    v17 = *(v3 + 32);

    sub_25316B2C4(v17);

    sub_2531DABC4();

    v18 = *(v3 + 24);
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = *(v18 + 24 * v19 + 24);
      if (v20 <= 4)
      {
        if (v20 <= 1)
        {
          if (v20)
          {
            v21 = 0xE300000000000000;
            v22 = 7630441;
          }

          else
          {
            v21 = 0xE400000000000000;
            v22 = 1819242338;
          }
        }

        else if (v20 == 2)
        {
          v21 = 0xE400000000000000;
          v22 = 1953393013;
        }

        else if (v20 == 3)
        {
          v21 = 0xE500000000000000;
          v22 = 0x74616F6C66;
        }

        else
        {
          v21 = 0xE600000000000000;
          v22 = 0x656C62756F64;
        }
      }

      else if (v20 > 7)
      {
        if (v20 == 8)
        {
          v21 = 0xE900000000000065;
          v22 = 0x7275746375727473;
        }

        else if (v20 == 9)
        {
          v21 = 0xE700000000000000;
          v22 = 0x6E776F6E6B6E75;
        }

        else
        {
          v21 = 0xE400000000000000;
          v22 = 1819047278;
        }
      }

      else if (v20 == 5)
      {
        v21 = 0xE600000000000000;
        v22 = 0x676E69727473;
      }

      else if (v20 == 6)
      {
        v21 = 0xE400000000000000;
        v22 = 1635017060;
      }

      else
      {
        v21 = 0xE500000000000000;
        v22 = 0x7961727261;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      MEMORY[0x259BFE570](v22, v21);

      MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
      sub_2531DAC14();
      v26 = MEMORY[0x277D84160];
      goto LABEL_32;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25319BBF0@<X0>(uint64_t *a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 24 * v5;
    v9 = *(v6 + 8);
    v8 = v6 + 8;
    v7 = v9;
    v10 = *(v8 + 16);
    if (v10 == 7)
    {
      v20 = *(v7 + 16);
      v21 = *(v1 + 32);
      a1[3] = &_s12ValueDecoderV16UnkeyedContainerVN;
      a1[4] = sub_2531A4AE4();
      v22 = swift_allocObject();
      *a1 = v22;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = -1;
      *(v22 + 16) = v1;
      *(v22 + 24) = v21;
      *(v22 + 32) = v20;
      *(v22 + 40) = 0;
    }

    if (v10 == 10 && !(*(v8 + 8) | v7))
    {
      v11 = sub_2531DAC24();
      swift_allocError();
      v13 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      *v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA90, &unk_2531E5EF0);
      v24 = *(v1 + 32);

      sub_25316B2C4(v24);

      sub_2531DAC14();
      v25 = MEMORY[0x277D84170];
LABEL_30:
      (*(*(v11 - 8) + 104))(v13, *v25, v11);
      return swift_willThrow();
    }

    v11 = sub_2531DAC24();
    swift_allocError();
    v13 = v12;
    *v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DA90, &unk_2531E5EF0);
    v14 = *(v1 + 32);

    sub_25316B2C4(v14);

    sub_2531DABC4();

    v15 = *(v1 + 24);
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = *(v15 + 24 * v16 + 24);
      if (v17 <= 4)
      {
        if (v17 <= 1)
        {
          if (v17)
          {
            v18 = 0xE300000000000000;
            v19 = 7630441;
          }

          else
          {
            v18 = 0xE400000000000000;
            v19 = 1819242338;
          }
        }

        else if (v17 == 2)
        {
          v18 = 0xE400000000000000;
          v19 = 1953393013;
        }

        else if (v17 == 3)
        {
          v18 = 0xE500000000000000;
          v19 = 0x74616F6C66;
        }

        else
        {
          v18 = 0xE600000000000000;
          v19 = 0x656C62756F64;
        }
      }

      else if (v17 > 7)
      {
        if (v17 == 8)
        {
          v18 = 0xE900000000000065;
          v19 = 0x7275746375727473;
        }

        else if (v17 == 9)
        {
          v18 = 0xE700000000000000;
          v19 = 0x6E776F6E6B6E75;
        }

        else
        {
          v18 = 0xE400000000000000;
          v19 = 1819047278;
        }
      }

      else if (v17 == 5)
      {
        v18 = 0xE600000000000000;
        v19 = 0x676E69727473;
      }

      else if (v17 == 6)
      {
        v18 = 0xE400000000000000;
        v19 = 1635017060;
      }

      else
      {
        v18 = 0xE500000000000000;
        v19 = 0x7961727261;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      MEMORY[0x259BFE570](v19, v18);

      MEMORY[0x259BFE570](0x616574736E692027, 0xEA00000000002E64);
      sub_2531DAC14();
      v25 = MEMORY[0x277D84160];
      goto LABEL_30;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25319C06C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  a2[3] = a1;
  a2[4] = sub_2531A4AA0(&qword_27F58DA88, &unk_2531E5DEC);
  *a2 = v4;
}

uint64_t sub_25319C0D4()
{
  result = swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 24 * v3;
    v6 = *(v4 + 24) == 10;
    v5 = *(v4 + 16) | *(v4 + 8);
    return v6 && v5 == 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25319C134(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v18 = sub_2531DAC24();
      swift_allocError();
      v20 = v19;
      *v19 = MEMORY[0x277D839B0];
      v21 = a8;
      v22 = ~a8;
      v10 = sub_25316B2C4(a4);
      if (v22)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v24 = swift_allocObject();
        *(inited + 32) = v24;
        *(v24 + 16) = a5;
        *(v24 + 24) = a6;
        *(v24 + 32) = a7;
        *(v24 + 40) = v21;
        sub_2531A7D7C(a5, a6, a7, v21);
        sub_25318DDCC(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](1819242306, 0xE400000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84170], v18);
      goto LABEL_6;
    }
  }

  else if (!a3)
  {
    return v10 & 1;
  }

  v11 = *(v8 + 32);

  sub_25316B2C4(v11);

  sub_2531DAC24();
  swift_allocError();
  sub_253199108(a3, v12);

LABEL_6:
  swift_willThrow();
  return v10 & 1;
}

uint64_t sub_25319C3E4(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  v8 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v15 = sub_2531DAC24();
      swift_allocError();
      v17 = v16;
      *v16 = MEMORY[0x277D839B0];
      if (a6 == -1)
      {
        v8 = sub_25316B2C4(a4);
      }

      else
      {
        v18 = sub_25316B2C4(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
        *(inited + 64) = sub_253168DD0();
        *(inited + 32) = a5;
        *(inited + 40) = a6 & 1;
        sub_25318DDCC(inited);
        v8 = v18;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](1819242306, 0xE400000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84170], v15);
      goto LABEL_6;
    }
  }

  else if (!a3)
  {
    return v8 & 1;
  }

  v9 = *(v6 + 32);

  sub_25316B2C4(v9);

  sub_2531DAC24();
  swift_allocError();
  sub_253199108(a3, v10);

LABEL_6:
  swift_willThrow();
  return v8 & 1;
}

uint64_t sub_25319C668(uint64_t result, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a3 != 3)
  {
    if (a3 == 10)
    {
      if (!(a2 | result))
      {
        v16 = sub_2531DAC24();
        swift_allocError();
        v18 = v17;
        *v17 = MEMORY[0x277D839F8];
        sub_25316B2C4(a4);
        if (a8 != -1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_2531E14E0;
          *(inited + 56) = &_s10_CodingKeyON;
          *(inited + 64) = sub_25316B674();
          v20 = swift_allocObject();
          *(inited + 32) = v20;
          *(v20 + 16) = a5;
          *(v20 + 24) = a6;
          *(v20 + 32) = a7;
          *(v20 + 40) = a8;
          sub_2531A7D7C(a5, a6, a7, a8);
          sub_25318DDCC(inited);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
        sub_2531DABC4();
        MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
        MEMORY[0x259BFE570](0x656C62756F44, 0xE600000000000000);
        MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
        sub_2531DAC14();
        (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
        return swift_willThrow();
      }
    }

    else if (a3 == 4)
    {
      return result;
    }

    v10 = *(v8 + 32);

    sub_25316B2C4(v10);

    sub_2531DAC24();
    swift_allocError();
    sub_2531995D0(a3, v11);

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25319C934(uint64_t result, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a3 != 3)
  {
    if (a3 == 10)
    {
      if (!(a2 | result))
      {
        v13 = sub_2531DAC24();
        swift_allocError();
        v15 = v14;
        *v14 = MEMORY[0x277D839F8];
        sub_25316B2C4(a4);
        if (a6 != -1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_2531E14E0;
          *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
          *(inited + 64) = sub_253168DD0();
          *(inited + 32) = a5;
          *(inited + 40) = a6 & 1;
          sub_25318DDCC(inited);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
        sub_2531DABC4();
        MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
        MEMORY[0x259BFE570](0x656C62756F44, 0xE600000000000000);
        MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
        sub_2531DAC14();
        (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D84170], v13);
        return swift_willThrow();
      }
    }

    else if (a3 == 4)
    {
      return result;
    }

    v8 = *(v6 + 32);

    sub_25316B2C4(v8);

    sub_2531DAC24();
    swift_allocError();
    sub_2531995D0(a3, v9);

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25319CBD4(uint64_t result, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a3 == 10)
  {
    if (!(a2 | result))
    {
      v16 = sub_2531DAC24();
      swift_allocError();
      v18 = v17;
      *v17 = MEMORY[0x277D83A90];
      sub_25316B2C4(a4);
      if (a8 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v20 = swift_allocObject();
        *(inited + 32) = v20;
        *(v20 + 16) = a5;
        *(v20 + 24) = a6;
        *(v20 + 32) = a7;
        *(v20 + 40) = a8;
        sub_2531A7D7C(a5, a6, a7, a8);
        sub_25318DDCC(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x74616F6C46, 0xE500000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
      return swift_willThrow();
    }

LABEL_5:
    v10 = *(v8 + 32);

    sub_25316B2C4(v10);

    sub_2531DAC24();
    swift_allocError();
    sub_253199834(a3, v11);

    return swift_willThrow();
  }

  if (a3 != 3)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_25319CE8C(uint64_t result, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a3 == 10)
  {
    if (!(a2 | result))
    {
      v13 = sub_2531DAC24();
      swift_allocError();
      v15 = v14;
      *v14 = MEMORY[0x277D83A90];
      sub_25316B2C4(a4);
      if (a6 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
        *(inited + 64) = sub_253168DD0();
        *(inited + 32) = a5;
        *(inited + 40) = a6 & 1;
        sub_25318DDCC(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x74616F6C46, 0xE500000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D84170], v13);
      return swift_willThrow();
    }

LABEL_5:
    v8 = *(v6 + 32);

    sub_25316B2C4(v8);

    sub_2531DAC24();
    swift_allocError();
    sub_253199834(a3, v9);

    return swift_willThrow();
  }

  if (a3 != 3)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_25319D118@<X0>(uint64_t a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v103 = a8;
  v104 = a2;
  v95 = a7;
  v96 = a9;
  v105 = a4;
  v109 = a3;
  v100 = *(a6 - 1);
  v12 = MEMORY[0x28223BE20](a1);
  v93 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v94 = &v88 - v14;
  v15 = sub_2531DAAF4();
  v101 = *(v15 - 8);
  v102 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v88 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v88 - v23;
  MEMORY[0x28223BE20](v22);
  v97 = &v88 - v25;
  v26 = sub_2531DAAF4();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v88 - v28;
  MEMORY[0x28223BE20](v27);
  v33 = &v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a1 + 8);
  v35 = *(a1 + 16);
  if (v104 != MEMORY[0x277CC9318])
  {
    v36 = v105;
    v91 = *a1;
    v92 = v34;
    v90 = v35;
    v104 = a6;
    if (swift_conformsToProtocol2())
    {
      v106 = 0;
      v107 = 0xE000000000000000;
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000010, 0x80000002531DCBA0);
      v37 = sub_2531DB544();
      MEMORY[0x259BFE570](v37);

      MEMORY[0x259BFE570](0xD00000000000002BLL, 0x80000002531DCBC0);
      v98 = v107;
      v99 = v106;
      v38 = sub_2531DAC24();
      swift_allocError();
      v96 = v39;
      v40 = v101;
      v41 = v102;
      v42 = *(v101 + 16);
      v43 = v97;
      v42();
      (v42)(v24, v43, v41);
      v44 = v100;
      v45 = v104;
      if ((*(v100 + 48))(v24, 1, v104) == 1)
      {
        v46 = *(v40 + 8);
        v46(v43, v41);
        v46(v24, v41);
        v47 = v109;

LABEL_19:
        sub_25316B2C4(v47);

        v78 = v96;
        sub_2531DAC14();
        (*(*(v38 - 8) + 104))(v78, *MEMORY[0x277D84168], v38);
        return swift_willThrow();
      }

      v64 = *(v44 + 32);
      v60 = v94;
      v64(v94, v24, v45);
      v47 = swift_allocObject();
      v65 = v103;
      *(v47 + 40) = v45;
      *(v47 + 48) = v65;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v47 + 16));
      v64(boxed_opaque_existential_0, v60, v45);
      v67 = *(v40 + 8);
      a5 = v40 + 8;
      v67(v97, v41);
      v68 = v109;
      *(v47 + 56) = v109;
      if (v68 >> 62)
      {
        if (v68 >> 62 != 1)
        {
          v77 = 1;
          goto LABEL_18;
        }

        v69 = ((v68 & 0x3FFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v69 = (v68 + 64);
      }

      v76 = *v69;

      v77 = v76 + 1;
      if (!__OFADD__(v76, 1))
      {
LABEL_18:
        *(v47 + 64) = v77;
        goto LABEL_19;
      }

      __break(1u);
    }

    else
    {
      v57 = v101;
      v56 = v102;
      v58 = *(v101 + 16);
      v58(v21, v36, v102);
      v58(v18, v21, v56);
      v59 = v100;
      v60 = v104;
      v61 = (*(v100 + 48))(v18, 1, v104);
      v89 = a5;
      if (v61 == 1)
      {
        v62 = *(v57 + 8);
        v62(v21, v56);
        v62(v18, v56);
        v47 = v109;

        v63 = v98;
        goto LABEL_25;
      }

      v70 = *(v59 + 32);
      v71 = v93;
      v70(v93, v18, v60);
      v47 = swift_allocObject();
      v72 = v103;
      *(v47 + 40) = v60;
      *(v47 + 48) = v72;
      v73 = __swift_allocate_boxed_opaque_existential_0((v47 + 16));
      v70(v73, v71, v60);
      (*(v57 + 8))(v21, v56);
      v74 = v109;
      *(v47 + 56) = v109;
      if (v74 >> 62)
      {
        v63 = v98;
        if (v74 >> 62 != 1)
        {
          v80 = 1;
LABEL_24:
          *(v47 + 64) = v80;
LABEL_25:
          a5 = v63[4];
          v63[4] = v47;
          swift_beginAccess();
          v47 = v63[3];

          sub_25316D004(v91, v92, v90);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v63[3] = v47;
          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_26:
            v83 = *(v47 + 16);
            v82 = *(v47 + 24);
            v85 = v91;
            v84 = v92;
            if (v83 >= v82 >> 1)
            {
              v87 = sub_25316A3D4((v82 > 1), v83 + 1, 1, v47);
              v85 = v91;
              v84 = v92;
              v47 = v87;
            }

            *(v47 + 16) = v83 + 1;
            v86 = v47 + 24 * v83;
            *(v86 + 32) = v85;
            *(v86 + 40) = v84;
            *(v86 + 48) = v90;
            v63[3] = v47;
            swift_endAccess();
            sub_2531A1840(v63, v89, v60, v95);
            v63[4] = a5;

            sub_25319B61C();
          }

LABEL_32:
          v47 = sub_25316A3D4(0, *(v47 + 16) + 1, 1, v47);
          v63[3] = v47;
          goto LABEL_26;
        }

        v75 = ((v74 & 0x3FFFFFFFFFFFFFFFLL) + 32);
LABEL_23:
        v79 = *v75;

        v80 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
          __break(1u);
          goto LABEL_32;
        }

        goto LABEL_24;
      }
    }

    v75 = (v74 + 64);
    v63 = v98;
    goto LABEL_23;
  }

  v48 = v31;
  v49 = v30;
  v106 = *a1;
  v107 = v34;
  v108 = v35;
  v50 = v99;
  result = sub_2531A6C90(&v106, v109, v105, a6, v103);
  if (!v50)
  {
    v53 = result;
    v54 = v52;
    v106 = result;
    v107 = v52;
    sub_25316D050(result, v52);
    sub_25316D050(v53, v54);
    if (swift_dynamicCast())
    {
      sub_25316D308(v53, v54);
      (*(v49 + 56))(v29, 0, 1, a5);
      v55 = *(v49 + 32);
      v55(v33, v29, a5);
      return (v55)(v96, v33, a5);
    }

    else
    {
      (*(v49 + 56))(v29, 1, 1, a5);
      (*(v48 + 8))(v29, v26);
      result = sub_2531DAD34();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_25319DAD4(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v17 = sub_2531DAC24();
      swift_allocError();
      v19 = v18;
      *v18 = MEMORY[0x277D83B88];
      sub_25316B2C4(a4);
      if (a8 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v21 = swift_allocObject();
        *(inited + 32) = v21;
        *(v21 + 16) = a5;
        *(v21 + 24) = a6;
        *(v21 + 32) = a7;
        *(v21 + 40) = a8;
        sub_2531A7D7C(a5, a6, a7, a8);
        sub_25318DDCC(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](7630409, 0xE300000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
      goto LABEL_6;
    }

LABEL_5:
    v11 = *(v8 + 32);

    sub_25316B2C4(v11);

    sub_2531DAC24();
    swift_allocError();
    sub_253199A98(a3, v12);

LABEL_6:
    swift_willThrow();
    return a1;
  }

  if (a3 != 1)
  {
    goto LABEL_5;
  }

  return a1;
}

uint64_t sub_25319DD88(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v20 = sub_2531DAC24();
      swift_allocError();
      v22 = v21;
      *v21 = MEMORY[0x277D84900];
      v23 = a8;
      v24 = ~a8;
      v10 = sub_25316B2C4(a4);
      if (v24)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v26 = swift_allocObject();
        *(inited + 32) = v26;
        *(v26 + 16) = a5;
        *(v26 + 24) = a6;
        *(v26 + 32) = a7;
        *(v26 + 40) = v23;
        sub_2531A7D7C(a5, a6, a7, v23);
        sub_25318DDCC(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](947154505, 0xE400000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
      goto LABEL_8;
    }
  }

  else if (a3 == 1)
  {
    if (a1 == a1)
    {
      return v10;
    }

    v11 = *(v8 + 32);

    sub_25316B2C4(v11);

    sub_2531DAC24();
    swift_allocError();
    sub_25319B280(947154505, 0xE400000000000000, v12);
    goto LABEL_7;
  }

  v13 = *(v8 + 32);

  sub_25316B2C4(v13);

  sub_2531DAC24();
  swift_allocError();
  sub_253199CFC(a3, v14);
LABEL_7:

LABEL_8:
  swift_willThrow();
  return v10;
}

uint64_t sub_25319E0AC(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v20 = sub_2531DAC24();
      swift_allocError();
      v22 = v21;
      *v21 = MEMORY[0x277D84958];
      v23 = a8;
      v24 = ~a8;
      v10 = sub_25316B2C4(a4);
      if (v24)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v26 = swift_allocObject();
        *(inited + 32) = v26;
        *(v26 + 16) = a5;
        *(v26 + 24) = a6;
        *(v26 + 32) = a7;
        *(v26 + 40) = v23;
        sub_2531A7D7C(a5, a6, a7, v23);
        sub_25318DDCC(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x3631746E49, 0xE500000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
      goto LABEL_8;
    }
  }

  else if (a3 == 1)
  {
    if (a1 == a1)
    {
      return v10;
    }

    v11 = *(v8 + 32);

    sub_25316B2C4(v11);

    sub_2531DAC24();
    swift_allocError();
    sub_25319B280(0x3631746E49, 0xE500000000000000, v12);
    goto LABEL_7;
  }

  v13 = *(v8 + 32);

  sub_25316B2C4(v13);

  sub_2531DAC24();
  swift_allocError();
  sub_253199F60(a3, v14);
LABEL_7:

LABEL_8:
  swift_willThrow();
  return v10;
}

uint64_t sub_25319E3D8(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v20 = sub_2531DAC24();
      swift_allocError();
      v22 = v21;
      *v21 = MEMORY[0x277D849A8];
      v23 = a8;
      v24 = ~a8;
      v10 = sub_25316B2C4(a4);
      if (v24)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v26 = swift_allocObject();
        *(inited + 32) = v26;
        *(v26 + 16) = a5;
        *(v26 + 24) = a6;
        *(v26 + 32) = a7;
        *(v26 + 40) = v23;
        sub_2531A7D7C(a5, a6, a7, v23);
        sub_25318DDCC(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x3233746E49, 0xE500000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
      goto LABEL_8;
    }
  }

  else if (a3 == 1)
  {
    if (a1 == a1)
    {
      return v10;
    }

    v11 = *(v8 + 32);

    sub_25316B2C4(v11);

    sub_2531DAC24();
    swift_allocError();
    sub_25319B280(0x3233746E49, 0xE500000000000000, v12);
    goto LABEL_7;
  }

  v13 = *(v8 + 32);

  sub_25316B2C4(v13);

  sub_2531DAC24();
  swift_allocError();
  sub_25319A1C4(a3, v14);
LABEL_7:

LABEL_8:
  swift_willThrow();
  return v10;
}

uint64_t sub_25319E704(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a3 != 1)
  {
    if (a3 == 10 && !(a2 | a1))
    {
      v17 = sub_2531DAC24();
      swift_allocError();
      v19 = v18;
      *v18 = MEMORY[0x277D84A28];
      sub_25316B2C4(a4);
      if (a8 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v21 = swift_allocObject();
        *(inited + 32) = v21;
        *(v21 + 16) = a5;
        *(v21 + 24) = a6;
        *(v21 + 32) = a7;
        *(v21 + 40) = a8;
        sub_2531A7D7C(a5, a6, a7, a8);
        sub_25318DDCC(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x3436746E49, 0xE500000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    }

    else
    {
      v11 = *(v8 + 32);

      sub_25316B2C4(v11);

      sub_2531DAC24();
      swift_allocError();
      sub_25319A428(a3, v12);
    }

    swift_willThrow();
  }

  return a1;
}

uint64_t sub_25319E9B8(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v15 = sub_2531DAC24();
      swift_allocError();
      v17 = v16;
      *v16 = MEMORY[0x277D83B88];
      sub_25316B2C4(a4);
      if (a6 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
        *(inited + 64) = sub_253168DD0();
        *(inited + 32) = a5;
        *(inited + 40) = a6 & 1;
        sub_25318DDCC(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](7630409, 0xE300000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84170], v15);
      goto LABEL_6;
    }

LABEL_5:
    v9 = *(v6 + 32);

    sub_25316B2C4(v9);

    sub_2531DAC24();
    swift_allocError();
    sub_253199A98(a3, v10);

LABEL_6:
    swift_willThrow();
    return a1;
  }

  if (a3 != 1)
  {
    goto LABEL_5;
  }

  return a1;
}

uint64_t sub_25319EC40(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  v8 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v17 = sub_2531DAC24();
      swift_allocError();
      v19 = v18;
      *v18 = MEMORY[0x277D84900];
      if (a6 == -1)
      {
        v8 = sub_25316B2C4(a4);
      }

      else
      {
        v20 = sub_25316B2C4(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
        *(inited + 64) = sub_253168DD0();
        *(inited + 32) = a5;
        *(inited + 40) = a6 & 1;
        sub_25318DDCC(inited);
        v8 = v20;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](947154505, 0xE400000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
      goto LABEL_8;
    }
  }

  else if (a3 == 1)
  {
    if (a1 == a1)
    {
      return v8;
    }

    v9 = *(v6 + 32);

    sub_25316B2C4(v9);

    sub_2531DAC24();
    swift_allocError();
    sub_25319B280(947154505, 0xE400000000000000, v10);
    goto LABEL_7;
  }

  v11 = *(v6 + 32);

  sub_25316B2C4(v11);

  sub_2531DAC24();
  swift_allocError();
  sub_253199CFC(a3, v12);
LABEL_7:

LABEL_8:
  swift_willThrow();
  return v8;
}

uint64_t sub_25319EF38(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  v8 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v17 = sub_2531DAC24();
      swift_allocError();
      v19 = v18;
      *v18 = MEMORY[0x277D84958];
      if (a6 == -1)
      {
        v8 = sub_25316B2C4(a4);
      }

      else
      {
        v20 = sub_25316B2C4(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
        *(inited + 64) = sub_253168DD0();
        *(inited + 32) = a5;
        *(inited + 40) = a6 & 1;
        sub_25318DDCC(inited);
        v8 = v20;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x3631746E49, 0xE500000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
      goto LABEL_8;
    }
  }

  else if (a3 == 1)
  {
    if (a1 == a1)
    {
      return v8;
    }

    v9 = *(v6 + 32);

    sub_25316B2C4(v9);

    sub_2531DAC24();
    swift_allocError();
    sub_25319B280(0x3631746E49, 0xE500000000000000, v10);
    goto LABEL_7;
  }

  v11 = *(v6 + 32);

  sub_25316B2C4(v11);

  sub_2531DAC24();
  swift_allocError();
  sub_253199F60(a3, v12);
LABEL_7:

LABEL_8:
  swift_willThrow();
  return v8;
}

uint64_t sub_25319F238(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  v8 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v17 = sub_2531DAC24();
      swift_allocError();
      v19 = v18;
      *v18 = MEMORY[0x277D849A8];
      if (a6 == -1)
      {
        v8 = sub_25316B2C4(a4);
      }

      else
      {
        v20 = sub_25316B2C4(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
        *(inited + 64) = sub_253168DD0();
        *(inited + 32) = a5;
        *(inited + 40) = a6 & 1;
        sub_25318DDCC(inited);
        v8 = v20;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x3233746E49, 0xE500000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
      goto LABEL_8;
    }
  }

  else if (a3 == 1)
  {
    if (a1 == a1)
    {
      return v8;
    }

    v9 = *(v6 + 32);

    sub_25316B2C4(v9);

    sub_2531DAC24();
    swift_allocError();
    sub_25319B280(0x3233746E49, 0xE500000000000000, v10);
    goto LABEL_7;
  }

  v11 = *(v6 + 32);

  sub_25316B2C4(v11);

  sub_2531DAC24();
  swift_allocError();
  sub_25319A1C4(a3, v12);
LABEL_7:

LABEL_8:
  swift_willThrow();
  return v8;
}

uint64_t sub_25319F538(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a3 != 1)
  {
    if (a3 == 10 && !(a2 | a1))
    {
      v15 = sub_2531DAC24();
      swift_allocError();
      v17 = v16;
      *v16 = MEMORY[0x277D84A28];
      sub_25316B2C4(a4);
      if (a6 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
        *(inited + 64) = sub_253168DD0();
        *(inited + 32) = a5;
        *(inited + 40) = a6 & 1;
        sub_25318DDCC(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x3436746E49, 0xE500000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84170], v15);
    }

    else
    {
      v9 = *(v6 + 32);

      sub_25316B2C4(v9);

      sub_2531DAC24();
      swift_allocError();
      sub_25319A428(a3, v10);
    }

    swift_willThrow();
  }

  return a1;
}

uint64_t sub_25319F7C0(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v17 = sub_2531DAC24();
      swift_allocError();
      v19 = v18;
      *v18 = MEMORY[0x277D83E88];
      sub_25316B2C4(a4);
      if (a8 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v21 = swift_allocObject();
        *(inited + 32) = v21;
        *(v21 + 16) = a5;
        *(v21 + 24) = a6;
        *(v21 + 32) = a7;
        *(v21 + 40) = a8;
        sub_2531A7D7C(a5, a6, a7, a8);
        sub_25318DDCC(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](1953384789, 0xE400000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
      goto LABEL_6;
    }

LABEL_5:
    v11 = *(v8 + 32);

    sub_25316B2C4(v11);

    sub_2531DAC24();
    swift_allocError();
    sub_25319A68C(a3, v12);

LABEL_6:
    swift_willThrow();
    return a1;
  }

  if (a3 != 2)
  {
    goto LABEL_5;
  }

  return a1;
}

uint64_t sub_25319FA74(unint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v20 = sub_2531DAC24();
      swift_allocError();
      v22 = v21;
      *v21 = MEMORY[0x277D84B78];
      v23 = a8;
      v24 = ~a8;
      v10 = sub_25316B2C4(a4);
      if (v24)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v26 = swift_allocObject();
        *(inited + 32) = v26;
        *(v26 + 16) = a5;
        *(v26 + 24) = a6;
        *(v26 + 32) = a7;
        *(v26 + 40) = v23;
        sub_2531A7D7C(a5, a6, a7, v23);
        sub_25318DDCC(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x38746E4955, 0xE500000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
      goto LABEL_8;
    }
  }

  else if (a3 == 2)
  {
    if (a1 <= 0xFF)
    {
      return v10;
    }

    v11 = *(v8 + 32);

    sub_25316B2C4(v11);

    sub_2531DAC24();
    swift_allocError();
    sub_25319B280(0x38746E4955, 0xE500000000000000, v12);
    goto LABEL_7;
  }

  v13 = *(v8 + 32);

  sub_25316B2C4(v13);

  sub_2531DAC24();
  swift_allocError();
  sub_25319A8F0(a3, v14);
LABEL_7:

LABEL_8:
  swift_willThrow();
  return v10;
}

uint64_t sub_25319FDA0(unint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v20 = sub_2531DAC24();
      swift_allocError();
      v22 = v21;
      *v21 = MEMORY[0x277D84C58];
      v23 = a8;
      v24 = ~a8;
      v10 = sub_25316B2C4(a4);
      if (v24)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v26 = swift_allocObject();
        *(inited + 32) = v26;
        *(v26 + 16) = a5;
        *(v26 + 24) = a6;
        *(v26 + 32) = a7;
        *(v26 + 40) = v23;
        sub_2531A7D7C(a5, a6, a7, v23);
        sub_25318DDCC(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
      goto LABEL_8;
    }
  }

  else if (a3 == 2)
  {
    if (!(a1 >> 16))
    {
      return v10;
    }

    v11 = *(v8 + 32);

    sub_25316B2C4(v11);

    sub_2531DAC24();
    swift_allocError();
    sub_25319B280(0x3631746E4955, 0xE600000000000000, v12);
    goto LABEL_7;
  }

  v13 = *(v8 + 32);

  sub_25316B2C4(v13);

  sub_2531DAC24();
  swift_allocError();
  sub_25319AB54(a3, v14);
LABEL_7:

LABEL_8:
  swift_willThrow();
  return v10;
}

uint64_t sub_2531A00CC(unint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v20 = sub_2531DAC24();
      swift_allocError();
      v22 = v21;
      *v21 = MEMORY[0x277D84CC0];
      v23 = a8;
      v24 = ~a8;
      v10 = sub_25316B2C4(a4);
      if (v24)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v26 = swift_allocObject();
        *(inited + 32) = v26;
        *(v26 + 16) = a5;
        *(v26 + 24) = a6;
        *(v26 + 32) = a7;
        *(v26 + 40) = v23;
        sub_2531A7D7C(a5, a6, a7, v23);
        sub_25318DDCC(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
      goto LABEL_8;
    }
  }

  else if (a3 == 2)
  {
    if (!HIDWORD(a1))
    {
      return v10;
    }

    v11 = *(v8 + 32);

    sub_25316B2C4(v11);

    sub_2531DAC24();
    swift_allocError();
    sub_25319B280(0x3233746E4955, 0xE600000000000000, v12);
    goto LABEL_7;
  }

  v13 = *(v8 + 32);

  sub_25316B2C4(v13);

  sub_2531DAC24();
  swift_allocError();
  sub_25319ADB8(a3, v14);
LABEL_7:

LABEL_8:
  swift_willThrow();
  return v10;
}

uint64_t sub_2531A03F8(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a3 != 2)
  {
    if (a3 == 10 && !(a2 | a1))
    {
      v17 = sub_2531DAC24();
      swift_allocError();
      v19 = v18;
      *v18 = MEMORY[0x277D84D38];
      sub_25316B2C4(a4);
      if (a8 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s10_CodingKeyON;
        *(inited + 64) = sub_25316B674();
        v21 = swift_allocObject();
        *(inited + 32) = v21;
        *(v21 + 16) = a5;
        *(v21 + 24) = a6;
        *(v21 + 32) = a7;
        *(v21 + 40) = a8;
        sub_2531A7D7C(a5, a6, a7, a8);
        sub_25318DDCC(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
    }

    else
    {
      v11 = *(v8 + 32);

      sub_25316B2C4(v11);

      sub_2531DAC24();
      swift_allocError();
      sub_25319B01C(a3, v12);
    }

    swift_willThrow();
  }

  return a1;
}

uint64_t sub_2531A06AC(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v15 = sub_2531DAC24();
      swift_allocError();
      v17 = v16;
      *v16 = MEMORY[0x277D83E88];
      sub_25316B2C4(a4);
      if (a6 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
        *(inited + 64) = sub_253168DD0();
        *(inited + 32) = a5;
        *(inited + 40) = a6 & 1;
        sub_25318DDCC(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](1953384789, 0xE400000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84170], v15);
      goto LABEL_6;
    }

LABEL_5:
    v9 = *(v6 + 32);

    sub_25316B2C4(v9);

    sub_2531DAC24();
    swift_allocError();
    sub_25319A68C(a3, v10);

LABEL_6:
    swift_willThrow();
    return a1;
  }

  if (a3 != 2)
  {
    goto LABEL_5;
  }

  return a1;
}

uint64_t sub_2531A0934(unint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  v8 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v17 = sub_2531DAC24();
      swift_allocError();
      v19 = v18;
      *v18 = MEMORY[0x277D84B78];
      if (a6 == -1)
      {
        v8 = sub_25316B2C4(a4);
      }

      else
      {
        v20 = sub_25316B2C4(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
        *(inited + 64) = sub_253168DD0();
        *(inited + 32) = a5;
        *(inited + 40) = a6 & 1;
        sub_25318DDCC(inited);
        v8 = v20;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x38746E4955, 0xE500000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
      goto LABEL_8;
    }
  }

  else if (a3 == 2)
  {
    if (a1 <= 0xFF)
    {
      return v8;
    }

    v9 = *(v6 + 32);

    sub_25316B2C4(v9);

    sub_2531DAC24();
    swift_allocError();
    sub_25319B280(0x38746E4955, 0xE500000000000000, v10);
    goto LABEL_7;
  }

  v11 = *(v6 + 32);

  sub_25316B2C4(v11);

  sub_2531DAC24();
  swift_allocError();
  sub_25319A8F0(a3, v12);
LABEL_7:

LABEL_8:
  swift_willThrow();
  return v8;
}

uint64_t sub_2531A0C34(unint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  v8 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v17 = sub_2531DAC24();
      swift_allocError();
      v19 = v18;
      *v18 = MEMORY[0x277D84C58];
      if (a6 == -1)
      {
        v8 = sub_25316B2C4(a4);
      }

      else
      {
        v20 = sub_25316B2C4(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
        *(inited + 64) = sub_253168DD0();
        *(inited + 32) = a5;
        *(inited + 40) = a6 & 1;
        sub_25318DDCC(inited);
        v8 = v20;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
      goto LABEL_8;
    }
  }

  else if (a3 == 2)
  {
    if (!(a1 >> 16))
    {
      return v8;
    }

    v9 = *(v6 + 32);

    sub_25316B2C4(v9);

    sub_2531DAC24();
    swift_allocError();
    sub_25319B280(0x3631746E4955, 0xE600000000000000, v10);
    goto LABEL_7;
  }

  v11 = *(v6 + 32);

  sub_25316B2C4(v11);

  sub_2531DAC24();
  swift_allocError();
  sub_25319AB54(a3, v12);
LABEL_7:

LABEL_8:
  swift_willThrow();
  return v8;
}

uint64_t sub_2531A0F34(unint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  v8 = a1;
  if (a3 == 10)
  {
    if (!(a2 | a1))
    {
      v17 = sub_2531DAC24();
      swift_allocError();
      v19 = v18;
      *v18 = MEMORY[0x277D84CC0];
      if (a6 == -1)
      {
        v8 = sub_25316B2C4(a4);
      }

      else
      {
        v20 = sub_25316B2C4(a4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
        *(inited + 64) = sub_253168DD0();
        *(inited + 32) = a5;
        *(inited + 40) = a6 & 1;
        sub_25318DDCC(inited);
        v8 = v20;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84170], v17);
      goto LABEL_8;
    }
  }

  else if (a3 == 2)
  {
    if (!HIDWORD(a1))
    {
      return v8;
    }

    v9 = *(v6 + 32);

    sub_25316B2C4(v9);

    sub_2531DAC24();
    swift_allocError();
    sub_25319B280(0x3233746E4955, 0xE600000000000000, v10);
    goto LABEL_7;
  }

  v11 = *(v6 + 32);

  sub_25316B2C4(v11);

  sub_2531DAC24();
  swift_allocError();
  sub_25319ADB8(a3, v12);
LABEL_7:

LABEL_8:
  swift_willThrow();
  return v8;
}

uint64_t sub_2531A1234(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a3 != 2)
  {
    if (a3 == 10 && !(a2 | a1))
    {
      v15 = sub_2531DAC24();
      swift_allocError();
      v17 = v16;
      *v16 = MEMORY[0x277D84D38];
      sub_25316B2C4(a4);
      if (a6 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D190, &qword_2531E1448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2531E14E0;
        *(inited + 56) = &_s3TagO14CodingKeyProxyVN;
        *(inited + 64) = sub_253168DD0();
        *(inited + 32) = a5;
        *(inited + 40) = a6 & 1;
        sub_25318DDCC(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      sub_2531DABC4();
      MEMORY[0x259BFE570](0xD000000000000019, 0x80000002531DC7A0);
      MEMORY[0x259BFE570](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x259BFE570](0xD00000000000001CLL, 0x80000002531DC7C0);
      sub_2531DAC14();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84170], v15);
    }

    else
    {
      v9 = *(v6 + 32);

      sub_25316B2C4(v9);

      sub_2531DAC24();
      swift_allocError();
      sub_25319B01C(a3, v10);
    }

    swift_willThrow();
  }

  return a1;
}

uint64_t sub_2531A14BC()
{
  v1 = *(*v0 + 32);

  v2 = sub_25316B2C4(v1);

  return v2;
}

uint64_t sub_2531A1840(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2531A4AA0(&qword_27F58D718, &unk_2531E5EA4);

  return sub_2531DA9E4();
}

uint64_t sub_2531A18F8@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 24 * v5;
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    *a1 = v7;
    *(a1 + 8) = v8;
    v9 = *(v6 + 24);
    *(a1 + 16) = v9;
    return sub_25316D004(v7, v8, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2531A19B0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = v1;
  v5 = v2;
  v6 = v3;
  if (v3 != 255)
  {
LABEL_6:
    if (v6 != 10 || (v5 | v4) != 0)
    {
      sub_2531A8148(v1, v2, v3);
      sub_25316D2BC(v4, v5, v6);
      return;
    }

    v15 = *(v0 + 24);
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (!v16)
    {
      *(v0 + 24) = v17;
      v18 = *(v0 + 32);
      v19 = *(v0 + 40);
      v20 = *(v0 + 48);
      sub_2531A8148(v1, v2, v3);
      sub_253170AB0(v18, v19, v20);
      *(v0 + 32) = 0;
      *(v0 + 40) = 0;
      *(v0 + 48) = -1;
      return;
    }

    __break(1u);
    goto LABEL_21;
  }

  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  if (v8 >= *(v7 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    v21 = MEMORY[0x277D84A98];
    v22 = sub_2531DAC24();
    swift_allocError();
    v24 = v23;
    *v23 = v21;
    v25 = *(v0 + 8);
    v26 = swift_allocObject();
    *(v26 + 16) = v8;
    *(v26 + 24) = v25;
    if (v25 >> 62)
    {
      v27 = 0;
      if (v25 >> 62 != 1)
      {
        goto LABEL_18;
      }

      v28 = ((v25 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v28 = (v25 + 64);
    }

    v27 = *v28;

LABEL_18:
    if (!__OFADD__(v27, 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      *(v26 + 32) = v27 + 1;
      sub_25316B2C4(v26 | 0x4000000000000000);

      sub_2531DAC14();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84170], v22);
      swift_willThrow();
      return;
    }

    goto LABEL_22;
  }

  if (v8 < 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = *(v0 + 48);
  v10 = v7 + 24 * v8;
  v11 = *(v10 + 32);
  v12 = *(v10 + 40);
  v13 = *(v10 + 48);
  *(v0 + 32) = v11;
  *(v0 + 40) = v12;
  *(v0 + 48) = v13;
  sub_25316D004(v11, v12, v13);
  sub_253170AB0(v1, v2, 0xFFu);
  v6 = *(v0 + 48);
  if (v6 != 255)
  {
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    sub_25316D004(v4, v5, *(v0 + 48));
    LOBYTE(v3) = v9;
    goto LABEL_6;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_2531A1C68@<X0>(uint64_t result@<X0>, ValueMetadata *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v7 = result;
  v8 = *(v4 + 32);
  v45 = (v4 + 32);
  v9 = *(v4 + 40);
  v10 = *(v4 + 48);
  v11 = v8;
  v12 = v9;
  LOBYTE(v13) = *(v4 + 48);
  if (v10 == 255)
  {
    v14 = a2;
    v39 = result;
    v15 = *(v6 + 16);
    v16 = *(v6 + 24);
    if (v16 < *(v15 + 16))
    {
      v37 = a4;
      v38 = a3;
      if (v16 < 0)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v17 = v15 + 24 * v16;
      v18 = *(v17 + 32);
      v19 = *(v17 + 40);
      v20 = *(v17 + 48);
      *(v6 + 32) = v18;
      *(v6 + 40) = v19;
      *(v6 + 48) = v20;
      sub_25316D004(v18, v19, v20);
      result = sub_253170AB0(v8, v9, 0xFFu);
      v13 = *(v6 + 48);
      if (v13 == 255)
      {
LABEL_22:
        __break(1u);
        return result;
      }

      v11 = *(v6 + 32);
      v12 = *(v6 + 40);
      sub_25316D004(v11, v12, *(v6 + 48));
      v7 = v39;
      a2 = v14;
      a3 = v38;
      a4 = v37;
      goto LABEL_6;
    }

    if (a2 != &_s12ValueDecoderV16UnkeyedContainerVN)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
    }

    v30 = sub_2531DAC24();
    swift_allocError();
    v32 = v31;
    *v31 = v39;
    v33 = *(v6 + 8);
    result = swift_allocObject();
    v34 = result;
    *(result + 16) = v16;
    *(result + 24) = v33;
    if (v33 >> 62)
    {
      v35 = 0;
      if (v33 >> 62 != 1)
      {
LABEL_16:
        if (__OFADD__(v35, 1))
        {
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
        *(v34 + 32) = v35 + 1;
        sub_25316B2C4(v34 | 0x4000000000000000);

        sub_2531DAC14();
        (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84170], v30);
        return swift_willThrow();
      }

      v36 = ((v33 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v36 = (v33 + 64);
    }

    v35 = *v36;

    goto LABEL_16;
  }

LABEL_6:
  v42 = v11;
  v43 = v12;
  v44 = v13;
  v21 = *(v6 + 8);
  v22 = *(v6 + 24);
  v40[1] = 0;
  v40[2] = 0;
  v40[0] = v22;
  v41 = 2;
  v23 = a2;
  v24 = v9;
  v25 = a3;
  v26 = v10;
  v27 = a4;
  sub_2531A8148(v8, v24, v26);
  v28 = sub_25316B674();
  sub_25319D118(&v42, v7, v21, v40, v23, &_s10_CodingKeyON, v25, v28, v27);
  result = sub_25316D2BC(v42, v43, v44);
  if (!v5)
  {
    if (!__OFADD__(v22, 1))
    {
      *(v6 + 24) = v22 + 1;
      result = sub_253170AB0(*(v6 + 32), *(v6 + 40), *(v6 + 48));
      v29 = v45;
      *v45 = 0;
      v29[1] = 0;
      *(v6 + 48) = -1;
      return result;
    }

    __break(1u);
    goto LABEL_20;
  }

  return result;
}

ValueMetadata *sub_2531A1FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *v4;
  result = sub_2531DAE54();
  v8 = v4[4];
  v9 = v4[5];
  v10 = *(v4 + 48);
  if (v10 != 255)
  {
    v39 = a3;

    v11 = v8;
    v44 = v8;
    v40 = v9;
    v45 = v10;
LABEL_7:
    v19 = v4[1];
    v20 = v4[3];
    v13 = swift_allocObject();
    *(v13 + 16) = v20;
    *(v13 + 24) = v19;
    if (v19 >> 62)
    {
      if (v19 >> 62 != 1)
      {
        v23 = 1;
        goto LABEL_12;
      }

      v21 = ((v19 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v21 = (v19 + 64);
    }

    v22 = *v21;

    v23 = v22 + 1;
    if (!__OFADD__(v22, 1))
    {
LABEL_12:
      *(v13 + 32) = v23;
      v38 = *(v6 + 32);
      *(v6 + 32) = v13 | 0x4000000000000000;
      swift_beginAccess();
      v24 = *(v6 + 24);
      sub_2531A8148(v11, v40, v10);

      sub_25316D004(v44, v9, v45);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v6 + 24) = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_25316A3D4(0, *(v24 + 2) + 1, 1, v24);
        *(v6 + 24) = v24;
      }

      v27 = *(v24 + 2);
      v26 = *(v24 + 3);
      if (v27 >= v26 >> 1)
      {
        v24 = sub_25316A3D4((v26 > 1), v27 + 1, 1, v24);
      }

      *(v24 + 2) = v27 + 1;
      v28 = &v24[24 * v27];
      *(v28 + 4) = v44;
      *(v28 + 5) = v9;
      v28[48] = v45;
      *(v6 + 24) = v24;
      swift_endAccess();

      sub_25319B7DC(a1, a2, v39);

      if (v43)
      {
        *(v6 + 32) = v38;

        sub_25319B61C();

        sub_25316D2BC(v44, v9, v45);
      }

      *(v6 + 32) = v38;

      sub_25319B61C();

      sub_25316D2BC(v44, v9, v45);

      if (!__OFADD__(v20, 1))
      {
        v4[3] = v20 + 1;
        result = sub_253170AB0(v4[4], v4[5], *(v4 + 48));
        v4[4] = 0;
        v4[5] = 0;
        *(v4 + 48) = -1;
        return result;
      }

      __break(1u);
      goto LABEL_33;
    }

    __break(1u);
LABEL_22:
    if (result == &_s12ValueDecoderV16UnkeyedContainerVN)
    {
      v30 = result;
    }

    else
    {
      v29 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DAA8, &qword_2531E5F10);
      v30 = v29;
    }

    v31 = sub_2531DAC24();
    swift_allocError();
    v33 = v32;
    *v32 = v30;
    v34 = v4[1];
    result = swift_allocObject();
    v35 = result;
    result[1].Kind = v13;
    result[1].Description = v34;
    if (v34 >> 62)
    {
      v36 = 0;
      if (v34 >> 62 != 1)
      {
        goto LABEL_30;
      }

      v37 = ((v34 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v37 = (v34 + 64);
    }

    v36 = *v37;

LABEL_30:
    if (!__OFADD__(v36, 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      *(v35 + 32) = v36 + 1;
      sub_25316B2C4(v35 | 0x4000000000000000);

      sub_2531DAC14();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84170], v31);
      return swift_willThrow();
    }

    goto LABEL_34;
  }

  v12 = v4[2];
  v13 = v4[3];
  if (v13 >= *(v12 + 16))
  {
    goto LABEL_22;
  }

  v39 = a3;
  v40 = v4[5];
  if (v13 < 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v14 = v12 + 24 * v13;
  v16 = *(v14 + 32);
  v15 = *(v14 + 40);
  v17 = *(v14 + 48);
  v4[4] = v16;
  v4[5] = v15;
  *(v4 + 48) = v17;

  sub_25316D004(v16, v15, v17);
  result = sub_253170AB0(v8, v40, 0xFFu);
  v18 = *(v4 + 48);
  if (v18 != 255)
  {
    v11 = v8;
    v9 = v4[5];
    v44 = v4[4];
    v45 = *(v4 + 48);
    sub_25316D004(v44, v9, v18);
    goto LABEL_7;
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_2531A24A8(uint64_t *a1@<X8>)
{
  v3 = v1;
  v4 = *v1;
  v5 = v3[4];
  v6 = v3[5];
  v7 = *(v3 + 48);
  if (v7 != 255)
  {
    v41 = a1;
    v39 = v2;

    v8 = v5;
    v38 = v5;
    v42 = v6;
    v40 = v6;
    v9 = v7;
LABEL_7:
    v18 = v3[1];
    v19 = v3[3];
    v20 = swift_allocObject();
    v37 = v19;
    *(v20 + 16) = v19;
    *(v20 + 24) = v18;
    if (v18 >> 62)
    {
      if (v18 >> 62 != 1)
      {
        LOBYTE(v11) = v9;
        v23 = 1;
        goto LABEL_12;
      }

      v21 = ((v18 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v21 = (v18 + 64);
    }

    v11 = v9;
    v22 = *v21;

    v23 = v22 + 1;
    if (!__OFADD__(v22, 1))
    {
LABEL_12:
      *(v20 + 32) = v23;
      v24 = *(v4 + 32);
      *(v4 + 32) = v20 | 0x4000000000000000;
      swift_beginAccess();
      v25 = *(v4 + 24);
      sub_2531A8148(v8, v42, v7);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 24) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_25316A3D4(0, *(v25 + 2) + 1, 1, v25);
        *(v4 + 24) = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      if (v28 >= v27 >> 1)
      {
        v25 = sub_25316A3D4((v27 > 1), v28 + 1, 1, v25);
      }

      *(v25 + 2) = v28 + 1;
      v29 = &v25[24 * v28];
      *(v29 + 4) = v38;
      *(v29 + 5) = v40;
      v29[48] = v11;
      *(v4 + 24) = v25;
      swift_endAccess();
      sub_25316D004(v38, v40, v11);
      sub_25319BBF0(v41);
      if (v39)
      {
        *(v4 + 32) = v24;

        sub_25319B61C();

        sub_25316D2BC(v38, v40, v11);
        return;
      }

      *(v4 + 32) = v24;

      sub_25319B61C();

      sub_25316D2BC(v38, v40, v11);
      if (!__OFADD__(v37, 1))
      {
        v3[3] = v37 + 1;
        sub_253170AB0(v3[4], v3[5], *(v3 + 48));
        v3[4] = 0;
        v3[5] = 0;
        *(v3 + 48) = -1;
        return;
      }

      __break(1u);
      goto LABEL_30;
    }

    __break(1u);
LABEL_22:
    v30 = sub_2531DAC24();
    swift_allocError();
    v32 = v31;
    *v31 = &_s12ValueDecoderV16UnkeyedContainerVN;
    v33 = v3[1];
    v34 = swift_allocObject();
    *(v34 + 16) = v11;
    *(v34 + 24) = v33;
    if (v33 >> 62)
    {
      v35 = 0;
      if (v33 >> 62 != 1)
      {
        goto LABEL_27;
      }

      v36 = ((v33 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v36 = (v33 + 64);
    }

    v35 = *v36;

LABEL_27:
    if (!__OFADD__(v35, 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D2F0, &qword_2531E27C8);
      *(v34 + 32) = v35 + 1;
      sub_25316B2C4(v34 | 0x4000000000000000);

      sub_2531DAC14();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84170], v30);
      swift_willThrow();
      return;
    }

    goto LABEL_31;
  }

  v10 = v3[2];
  v11 = v3[3];
  if (v11 >= *(v10 + 16))
  {
    goto LABEL_22;
  }

  v42 = v3[5];
  v41 = a1;
  if (v11 < 0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v12 = v2;
  v13 = v10 + 24 * v11;
  v14 = *(v13 + 32);
  v15 = *(v13 + 40);
  v16 = *(v13 + 48);
  v3[4] = v14;
  v3[5] = v15;
  *(v3 + 48) = v16;

  sub_25316D004(v14, v15, v16);
  v8 = v5;
  sub_253170AB0(v5, v42, 0xFFu);
  v17 = *(v3 + 48);
  if (v17 != 255)
  {
    v38 = v3[4];
    v39 = v12;
    v40 = v3[5];
    v9 = *(v3 + 48);
    sub_25316D004(v38, v40, v17);
    goto LABEL_7;
  }

LABEL_32:
  __break(1u);
}