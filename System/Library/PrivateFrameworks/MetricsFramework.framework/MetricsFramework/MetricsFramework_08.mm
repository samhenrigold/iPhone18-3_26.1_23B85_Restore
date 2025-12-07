uint64_t dispatch thunk of ODDIMetricsTaskExecutorBase.execute(for:defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 32) + **(a9 + 32));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_258DE1DC4;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_258E910F0(uint64_t a1)
{
  result = sub_258F0A370();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_258E9119C()
{
  result = qword_27F989F08;
  if (!qword_27F989F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989F08);
  }

  return result;
}

uint64_t sub_258E912D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[40] = a4;
  v5[41] = v4;
  v5[38] = a2;
  v5[39] = a3;
  v5[37] = a1;
  v6 = *(type metadata accessor for PoirotODDIMetricsConcluder(0) - 8);
  v5[42] = v6;
  v5[43] = *(v6 + 64);
  v5[44] = swift_task_alloc();
  v7 = sub_258F09D50();
  v5[45] = v7;
  v5[46] = *(v7 - 8);
  v5[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989F88, &qword_258F13530);
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v8 = sub_258F098A0();
  v5[50] = v8;
  v5[51] = *(v8 - 8);
  v5[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v9 = sub_258F098D0();
  v5[55] = v9;
  v5[56] = *(v9 - 8);
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  v5[60] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E915B8, 0, 0);
}

uint64_t sub_258E915B8()
{
  v1 = v0[60];
  if (v0[38])
  {
    sub_258F0A0A0();
  }

  else
  {
    v2 = sub_258F09A20();
    (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  }

  v3 = v0[37];
  sub_258F0A050();
  v4 = sub_258F09DD0();
  v5 = swift_task_alloc();
  v0[61] = v5;
  *v5 = v0;
  v5[1] = sub_258E9170C;
  v6 = v0[60];

  return MEMORY[0x282159D80](v4, v3, 0, 0, v6);
}

uint64_t sub_258E9170C(uint64_t a1)
{
  v2 = *(*v1 + 480);
  *(*v1 + 496) = a1;

  sub_258DE2184(v2, &qword_27F988728, &unk_258F0B840);

  return MEMORY[0x2822009F8](sub_258E91868, 0, 0);
}

uint64_t sub_258E91868()
{
  v1 = v0[62];
  if (v1)
  {
    type metadata accessor for ODDIPoirotMetricsPlugin(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = [v3 resourceURL];

    if (v4)
    {
      sub_258F098B0();

      v5 = 0;
    }

    else
    {
      v5 = 1;
    }

    v6 = v0[55];
    v7 = v0[56];
    v9 = v0[53];
    v8 = v0[54];
    (*(v7 + 56))(v9, v5, 1, v6);
    sub_258E25BDC(v9, v8);
    if ((*(v7 + 48))(v8, 1, v6) == 1)
    {
      sub_258DE2184(v0[54], &qword_27F988720, &qword_258F0B830);
      return sub_258F0AB90();
    }

    v97 = v1;
    v12 = v0[58];
    v11 = v0[59];
    v13 = v0[56];
    v92 = v0[57];
    v14 = v0[54];
    v15 = v0[55];
    v16 = v0[51];
    v17 = v0[52];
    v18 = v0[50];
    v95 = v0[49];
    v19 = v0[48];
    v98 = v0[46];
    v100 = v0[47];
    v101 = v0[45];
    (*(v16 + 104))(v17, *MEMORY[0x277CC91D8], v18);
    sub_258DEF388();
    sub_258F098C0();
    (*(v16 + 8))(v17, v18);
    v94 = *(v13 + 8);
    v94(v14, v15);
    (*(v13 + 32))(v11, v12, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989F90, &qword_258F13538);
    (*(v13 + 16))(v92, v11, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989F98, &qword_258F13540);
    sub_258F09D20();
    *(swift_allocObject() + 16) = xmmword_258F0B820;
    v20 = v97;
    sub_258F09D10();
    v21 = sub_258F09D60();
    v22 = *(*(v21 - 8) + 56);
    v22(v95, 1, 1, v21);
    v22(v19, 1, 1, v21);
    (*(v98 + 104))(v100, *MEMORY[0x277D3DF70], v101);
    sub_258F09D00();
    v1 = v97;
    v23 = sub_258F09CE0();
    v91 = v20;
    v24 = MEMORY[0x259C9DA60]();
    v25 = *(v24 + 16);
    v96 = v23;
    if (v25)
    {
      v26 = sub_258F0A190();
      v27 = *(v26 - 8);
      v28 = v24 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
      v102 = *(v27 + 72);
      v99 = (v27 + 16);
      v29 = (v27 + 8);
      v93 = v26;
      do
      {
        v31 = swift_task_alloc();
        (*v99)(v31, v28, v26);
        if (v23)
        {
          v32 = v23;
          sub_258F0A170();
          v33 = sub_258F0A4E0();

          v34 = sub_258F0A180();
          v35 = sub_258F0A150();
          v37 = v36;
          v38 = swift_allocObject();
          *(v38 + 16) = v35;
          *(v38 + 24) = v37;
          v0[30] = sub_258E94910;
          v0[31] = v38;
          v0[26] = MEMORY[0x277D85DD0];
          v0[27] = 1107296256;
          v0[28] = sub_258E92604;
          v0[29] = &block_descriptor_48;
          v39 = _Block_copy(v0 + 26);

          v0[36] = 0;
          LODWORD(v34) = [v32 registerFunctionWithName:v33 numArgs:v34 function:v39 error:v0 + 36];
          _Block_release(v39);

          v40 = v0[36];
          if (v34)
          {
            v30 = v40;
          }

          else
          {
            v41 = v40;
            v42 = sub_258F09890();

            swift_willThrow();
          }

          v23 = v96;
          v26 = v93;
        }

        (*v29)(v31, v26);

        v28 += v102;
        --v25;
      }

      while (v25);

      v1 = v97;
    }

    else
    {
    }

    if (v23)
    {
      v43 = v96;
      v44 = sub_258F0A4E0();
      v0[24] = sub_258E9277C;
      v0[25] = 0;
      v0[20] = MEMORY[0x277D85DD0];
      v0[21] = 1107296256;
      v0[22] = sub_258E92604;
      v0[23] = &block_descriptor_42;
      v45 = _Block_copy(v0 + 20);

      v0[35] = 0;
      v46 = [v43 registerFunctionWithName:v44 numArgs:1 function:v45 error:v0 + 35];
      _Block_release(v45);

      v47 = v0[35];
      if (v46)
      {
        v48 = v47;
      }

      else
      {
        v49 = v47;
        v50 = sub_258F09890();

        swift_willThrow();
      }

      v51 = v43;
      v52 = sub_258F0A4E0();
      v0[18] = sub_258E92794;
      v0[19] = 0;
      v0[14] = MEMORY[0x277D85DD0];
      v0[15] = 1107296256;
      v0[16] = sub_258E92604;
      v0[17] = &block_descriptor_39;
      v53 = _Block_copy(v0 + 14);

      v0[34] = 0;
      v54 = [v51 registerFunctionWithName:v52 numArgs:1 function:v53 error:v0 + 34];
      _Block_release(v53);

      v55 = v0[34];
      if (v54)
      {
        v56 = v55;
      }

      else
      {
        v57 = v55;
        v58 = sub_258F09890();

        swift_willThrow();
      }

      v59 = v51;
      v60 = sub_258F0A4E0();
      v61 = sub_258F0A1C0();
      v63 = v62;
      v64 = swift_allocObject();
      *(v64 + 16) = v61;
      *(v64 + 24) = v63;
      v0[12] = sub_258E94948;
      v0[13] = v64;
      v0[8] = MEMORY[0x277D85DD0];
      v0[9] = 1107296256;
      v0[10] = sub_258E92604;
      v0[11] = &block_descriptor_36;
      v65 = _Block_copy(v0 + 8);

      v0[33] = 0;
      LODWORD(v63) = [v59 registerFunctionWithName:v60 numArgs:2 function:v65 error:v0 + 33];
      _Block_release(v65);

      v66 = v0[33];
      if (v63)
      {
        v67 = v66;
      }

      else
      {
        v68 = v66;
        v69 = sub_258F09890();

        swift_willThrow();
      }

      v70 = v59;
      v71 = sub_258F0A4E0();
      v72 = sub_258F0A1B0();
      v74 = v73;
      v75 = swift_allocObject();
      *(v75 + 16) = v72;
      *(v75 + 24) = v74;
      v0[6] = sub_258E94894;
      v0[7] = v75;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_258E92604;
      v0[5] = &block_descriptor_4;
      v76 = _Block_copy(v0 + 2);

      v0[32] = 0;
      LODWORD(v72) = [v70 registerFunctionWithName:v71 numArgs:2 function:v76 error:v0 + 32];
      _Block_release(v76);

      v77 = v0[32];
      if (v72)
      {
        v78 = v77;
      }

      else
      {
        v79 = v77;
        v80 = sub_258F09890();

        swift_willThrow();
      }
    }

    v82 = v0[43];
    v81 = v0[44];
    v83 = v0[42];
    v85 = v0[39];
    v84 = v0[40];
    sub_258E94730(v0[41], v81);
    v86 = (*(v83 + 80) + 16) & ~*(v83 + 80);
    v87 = (v82 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
    v88 = swift_allocObject();
    sub_258E94794(v81, v88 + v86);
    v89 = (v88 + v87);
    *v89 = v85;
    v89[1] = v84;

    sub_258F09CF0();
    v94(v0[59], v0[55]);
  }

  v90 = v0[1];

  return v90(v1 != 0);
}

id sub_258E92604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_258F0A6B0();

  v4(v13, v5, a3);

  v6 = v14;
  if (v14)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v8 = *(v6 - 8);
    MEMORY[0x28223BE20](v7, v7);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_258F0AD70();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

double sub_258E927AC@<D0>(uint64_t (*a1)(void)@<X2>, _OWORD *a2@<X8>)
{
  v3 = a1();
  if (v4)
  {
    v7 = MEMORY[0x277D837D0];
    *&v6 = v3;
    *(&v6 + 1) = v4;
    sub_258DEB8B8(&v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

_OWORD *sub_258E92808(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v73 = a3;
  v74 = a4;
  v6 = sub_258F09D80();
  v7 = *(v6 - 8);
  v84 = v6;
  v85 = v7;
  MEMORY[0x28223BE20](v6, v8);
  v83 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_258F09D40();
  v78 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v10);
  v75 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_258F09DB0();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v63 - v19;
  sub_258F09DC0();
  type metadata accessor for PoirotODDIMetricsConcluder(0);
  v21 = *(v13 + 16);
  v64 = v20;
  v21(v17, v20, v12);
  v22 = sub_258F0A350();
  v23 = sub_258F0A800();
  v24 = os_log_type_enabled(v22, v23);
  v77 = v13;
  if (v24)
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    v26 = sub_258F09DA0();
    v63 = *(v13 + 8);
    v63(v17, v12);
    *(v25 + 4) = v26;
    _os_log_impl(&dword_258DD8000, v22, v23, "ODDIMetricsQuery yielded %ld rows)", v25, 0xCu);
    MEMORY[0x259C9EF40](v25, -1, -1);
  }

  else
  {
    v63 = *(v13 + 8);
    v63(v17, v12);
  }

  v27 = sub_258F09D90();
  v72 = *(v27 + 16);
  if (v28 != v72)
  {
    v29 = v28;
    v30 = v27;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B90, &unk_258F0D0F0);
    result = v30;
    v70 = v30 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
    v69 = v78 + 16;
    v68 = v78 + 8;
    v81 = v85 + 8;
    v82 = v85 + 16;
    v32 = v29;
    v67 = v12;
    v66 = v30;
    v65 = v29;
    while (2)
    {
      if ((v29 & 0x8000000000000000) != 0)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v32 >= *(result + 2))
      {
LABEL_29:
        __break(1u);
        return result;
      }

      v80 = v5;
      v33 = v78;
      v35 = v75;
      v34 = v76;
      (*(v78 + 16))(v75, &v70[*(v78 + 72) * v32], v76);
      v79 = v32 + 1;
      v36 = sub_258F09D30();
      (*(v33 + 8))(v35, v34);
      result = sub_258F0ABB0();
      v37 = result;
      v38 = 0;
      v40 = v36 + 64;
      v39 = *(v36 + 64);
      v87 = result;
      v88 = v36;
      v41 = 1 << *(v36 + 32);
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      else
      {
        v42 = -1;
      }

      v43 = v42 & v39;
      v44 = (v41 + 63) >> 6;
      v86 = result + 4;
      if (v43)
      {
        while (1)
        {
          v45 = __clz(__rbit64(v43));
          v89 = (v43 - 1) & v43;
LABEL_18:
          v48 = v45 | (v38 << 6);
          v49 = *(v88 + 56);
          v50 = (*(v88 + 48) + 16 * v48);
          v51 = v50[1];
          v91 = *v50;
          v52 = v84;
          v53 = v85;
          v54 = v83;
          (*(v85 + 16))(v83, v49 + *(v85 + 72) * v48, v84);

          sub_258F09D70();
          (*(v53 + 8))(v54, v52);
          v37 = v87;
          *(v86 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
          v55 = (v37[6] + 16 * v48);
          *v55 = v91;
          v55[1] = v51;
          result = sub_258DEB8B8(&v90, (v37[7] + 32 * v48));
          v56 = v37[2];
          v57 = __OFADD__(v56, 1);
          v58 = v56 + 1;
          if (v57)
          {
            break;
          }

          v37[2] = v58;
          v43 = v89;
          if (!v89)
          {
            goto LABEL_13;
          }
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_13:
      v46 = v38;
      while (1)
      {
        v38 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          __break(1u);
          goto LABEL_27;
        }

        if (v38 >= v44)
        {
          break;
        }

        v47 = *(v40 + 8 * v38);
        ++v46;
        if (v47)
        {
          v45 = __clz(__rbit64(v47));
          v89 = (v47 - 1) & v47;
          goto LABEL_18;
        }
      }

      v59 = sub_258DFA528(v37);

      v60 = v80;
      v73(v59);
      v5 = v60;
      if (v60)
      {

        v61 = v64;
        v62 = v67;
        return (v63)(v61, v62);
      }

      v32 = v79;
      v12 = v67;
      result = v66;
      v29 = v65;
      if (v79 != v72)
      {
        continue;
      }

      break;
    }
  }

  v61 = v64;
  v62 = v12;
  return (v63)(v61, v62);
}

uint64_t sub_258E92E84()
{
  v0 = qword_27F989F10;

  return v0;
}

uint64_t sub_258E92F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_258E85FAC;

  return sub_258E912D4(a1, a2, a3, a4);
}

void *sub_258E92FF8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_258E2E9B4(a1, a2);
  if (v7)
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    v9 = v8;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_258E93094()
{

  return swift_deallocClassInstance();
}

uint64_t sub_258E930CC(void *a1)
{
  v3 = *v1;
  v4 = sub_258F0A130();
  v6 = v5;
  swift_beginAccess();
  v7 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_258ED7530(v7, v4, v6, isUniquelyReferenced_nonNull_native);

  *(v3 + 16) = v10;
  return swift_endAccess();
}

uint64_t sub_258E931A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_258E931C8, 0, 0);
}

uint64_t sub_258E931C8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v1();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_258E93234()
{
  v1 = *v0;
  swift_beginAccess();
  *(v1 + 16) = MEMORY[0x277D84F98];
}

uint64_t ODDIPoirotMetricsPlugin.__allocating_init(taskParams:defaults:logger:fbfBundleId:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v10 = swift_allocObject();
  ODDIPoirotMetricsPlugin.init(taskParams:defaults:logger:fbfBundleId:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t ODDIPoirotMetricsPlugin.init(taskParams:defaults:logger:fbfBundleId:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v68 = a5;
  v54 = a4;
  v75 = a2;
  v62 = type metadata accessor for PoirotODDIMetricsConcluder(0);
  MEMORY[0x28223BE20](v62, v8);
  v63 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258F09B00();
  v60 = *(v10 - 8);
  v61 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v58 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_258F09A20();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v13);
  v56 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_258F0A370();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v65 = v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v22 = v53 - v21;
  v23 = sub_258F09CD0();
  v24 = *(*(v23 - 8) + 48);
  v70 = a1;
  v25 = v24(a1, 1, v23);
  v26 = *(v16 + 16);
  v64 = OBJC_IVAR____TtC16MetricsFramework23ODDIPoirotMetricsPlugin_logger;
  v26(v5 + OBJC_IVAR____TtC16MetricsFramework23ODDIPoirotMetricsPlugin_logger, a3, v15);
  v27 = a3;
  v66 = v26;
  v26(v22, a3, v15);
  v28 = v15;
  type metadata accessor for ODDIMetricsDataProvider(0);
  v29 = swift_allocObject();
  v69 = v16;
  v30 = *(v16 + 32);
  v53[1] = v16 + 32;
  v53[0] = v30;
  v30(v29 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsDataProvider_logger, v22, v15);
  v71 = v5;
  *(v5 + OBJC_IVAR____TtC16MetricsFramework23ODDIPoirotMetricsPlugin_dataProvider) = v29;
  v55 = v25;
  if (v25 == 1)
  {
    v31 = sub_258F0A1F0();
    swift_allocObject();
    v32 = v75;
    v33 = sub_258F0A1E0();
    v34 = MEMORY[0x277D04548];
  }

  else
  {
    v31 = type metadata accessor for NoActionBookmarkStore();
    v33 = swift_allocObject();
    *(v33 + 16) = sub_258DFBF44(MEMORY[0x277D84F90]);
    v34 = sub_258E94194(&qword_27F989F48, v35, type metadata accessor for NoActionBookmarkStore, &unk_258F134E0);
  }

  v73 = v31;
  v74 = v34;
  v72 = v33;
  v36 = v66;
  v66(v65, v27, v15);
  sub_258F09C20();
  swift_allocObject();
  v37 = v67;
  v38 = sub_258F09BE0();
  if (v37)
  {
    v39 = *(v69 + 8);
    v39(v27, v15);

    sub_258DE2184(v70, &qword_27F989F30, qword_258F132E0);
    v40 = v71;
    v39(v71 + v64, v15);

    type metadata accessor for ODDIPoirotMetricsPlugin(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v38;
    v67 = 0;
    v42 = v56;
    sub_258F0A090();
    v43 = v58;
    sub_258F09AC0();
    sub_258F09C00();
    (*(v60 + 8))(v43, v61);
    (*(v57 + 8))(v42, v59);
    v44 = v63;
    v36(&v63[*(v62 + 20)], v27, v28);
    sub_258E93AD4(v70, v44);
    v36(v22, v27, v28);

    v45 = sub_258E7FC74(v44, v22, v41);
    *(v71 + OBJC_IVAR____TtC16MetricsFramework23ODDIPoirotMetricsPlugin_calculator) = v45;
    if (v55 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_258F0CA20;
      v36(v22, v27, v28);
      v47 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v54, v68);
      type metadata accessor for ODDIMetricsSELFReporter(0);
      v48 = swift_allocObject();
      v49 = (v48 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_reportingService);
      v49[3] = type metadata accessor for SELFReportingService();
      v49[4] = &protocol witness table for SELFReportingService;
      *v49 = v47;
      *(v48 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_oddSiriClientEvents) = MEMORY[0x277D84F90];
      (v53[0])(v48 + OBJC_IVAR____TtC16MetricsFramework23ODDIMetricsSELFReporter_logger, v22, v28);
      *(v46 + 32) = v48;
    }

    else
    {
    }

    v50 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E00, &qword_258F12B80);
    swift_allocObject();
    v72 = sub_258F09BA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989E08, qword_258F12B88);
    swift_allocObject();
    v51 = sub_258F09BC0();

    (*(v69 + 8))(v27, v28);
    sub_258DE2184(v70, &qword_27F989F30, qword_258F132E0);
    v40 = v71;
    *(v71 + OBJC_IVAR____TtC16MetricsFramework23ODDIPoirotMetricsPlugin_reporter) = v51;
  }

  return v40;
}

uint64_t sub_258E93AD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989F30, qword_258F132E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E93B44(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E93B64, 0, 0);
}

uint64_t sub_258E93B64()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DEE374;

  return sub_258E7F500();
}

uint64_t sub_258E93C08(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E93C38, 0, 0);
}

uint64_t sub_258E93C38()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v4 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_258DED218;

  return v4(v0 + 16);
}

uint64_t sub_258E93D04(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E93D24, 0, 0);
}

uint64_t sub_258E93D24()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DEE374;
  v2 = *(v0 + 16);

  return sub_258E81A14(v2);
}

uint64_t ODDIPoirotMetricsPlugin.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework23ODDIPoirotMetricsPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ODDIPoirotMetricsPlugin.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework23ODDIPoirotMetricsPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_258E93F38(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E93F5C, 0, 0);
}

uint64_t sub_258E93F5C()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED7D0;

  return sub_258E7F500();
}

uint64_t sub_258E94000(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E93D24, 0, 0);
}

uint64_t sub_258E94024(uint64_t a1)
{
  *(v2 + 40) = *v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E94058, 0, 0);
}

uint64_t sub_258E94058()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v4 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_258DEDBC8;

  return v4(v0 + 16);
}

uint64_t sub_258E94194(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t dispatch thunk of ODDIPoirotMetricsPlugin.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of ODDIPoirotMetricsPlugin.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of ODDIPoirotMetricsPlugin.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 136) + **(*v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

void sub_258E94654(uint64_t a1)
{
  sub_258E946D8(319);
  if (v1 <= 0x3F)
  {
    sub_258F0A370();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_258E946D8(uint64_t a1)
{
  if (!qword_280CC5DF8)
  {
    sub_258F09CD0();
    v1 = sub_258F0A920();
    if (!v2)
    {
      atomic_store(v1, &qword_280CC5DF8);
    }
  }
}

uint64_t sub_258E94730(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PoirotODDIMetricsConcluder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E94794(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PoirotODDIMetricsConcluder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_OWORD *sub_258E947F8(uint64_t a1)
{
  v3 = *(type metadata accessor for PoirotODDIMetricsConcluder(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_258E92808(a1, v1 + v4, *v5, *(v5 + 8));
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_258E948B0@<D0>(_OWORD *a1@<X8>)
{
  v3 = (*(v1 + 16))();
  if (v4)
  {
    v7 = MEMORY[0x277D837D0];
    *&v6 = v3;
    *(&v6 + 1) = v4;
    sub_258DEB8B8(&v6, a1);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t ODDIPoirotMetricsTaskExecutor.Subtask.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_258F0ABE0();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_258E949D4()
{
  sub_258F0AE40();
  sub_258F0A5B0();
  return sub_258F0AE90();
}

uint64_t sub_258E94A50(uint64_t a1)
{
  sub_258F0AE40();
  sub_258F0A5B0();
  return sub_258F0AE90();
}

uint64_t sub_258E94AA8@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_258F0ABE0();

  *a2 = v3 != 0;
  return result;
}

uint64_t ODDIPoirotMetricsTaskExecutor.__allocating_init(taskParams:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_258E94B94(a1, v2 + OBJC_IVAR____TtC16MetricsFramework29ODDIPoirotMetricsTaskExecutor_taskParams);
  return v2;
}

uint64_t sub_258E94B94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989F30, qword_258F132E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E94C04(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v7;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 24) = a1;
  v10 = sub_258F0A370();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989F30, qword_258F132E0);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 152) = *a2;

  return MEMORY[0x2822009F8](sub_258E94D14, 0, 0);
}

uint64_t sub_258E94D14(uint64_t a1)
{
  if (*(v1 + 152))
  {
    v2 = *(v1 + 24);
    v3 = *MEMORY[0x277D81758];
    v4 = sub_258F09E50();
    (*(*(v4 - 8) + 104))(v2, v3, v4);
    goto LABEL_3;
  }

  v6 = sub_258F0A350();
  v7 = sub_258F0A810();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_258DD8000, v6, v7, "#ODDIPoirotMetricsTaskExecutor: Call Poirot ODDIMetrics", v8, 2u);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v9 = *(v1 + 96);
  v10 = *(v1 + 104);
  v11 = *(v1 + 80);
  v12 = *(v1 + 88);
  v13 = *(v1 + 64);
  v14 = *(v1 + 72);
  v15 = *(v1 + 48);
  v28 = *(v1 + 56);
  v16 = *(v1 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0);
  v17 = swift_task_alloc();
  *(v1 + 112) = v17;
  sub_258E93AD4(v14 + OBJC_IVAR____TtC16MetricsFramework29ODDIPoirotMetricsTaskExecutor_taskParams, v10);
  (*(v12 + 16))(v9, v15, v11);
  type metadata accessor for ODDIPoirotMetricsPlugin(0);
  swift_allocObject();

  *(v1 + 16) = ODDIPoirotMetricsPlugin.init(taskParams:defaults:logger:fbfBundleId:)(v10, v16, v9, v28, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989FA8, &unk_258F13558);
  swift_allocObject();
  v19 = sub_258F09E40();
  *(v1 + 120) = v19;
  if (!v19)
  {
    v25 = *(v1 + 24);
    v26 = sub_258F09E50();
    v27 = *(v26 - 8);
    (*(v27 + 56))(v17, 1, 1, v26);
    (*(v27 + 104))(v25, *MEMORY[0x277D81758], v26);

LABEL_3:

    v5 = *(v1 + 8);

    return v5();
  }

  v20 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0);
  v21 = swift_task_alloc();
  *(v1 + 128) = v21;
  v22 = sub_258F09E00();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v21, v20, v22);
  (*(v23 + 56))(v21, 0, 1, v22);
  v24 = swift_task_alloc();
  *(v1 + 136) = v24;
  *v24 = v1;
  v24[1] = sub_258E95178;

  return MEMORY[0x2821ED078](v17, v21);
}

uint64_t sub_258E95178()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  sub_258DE2184(*(v2 + 128), &qword_27F988B20, &unk_258F0CDB0);

  if (v0)
  {
    v3 = sub_258E953F4;
  }

  else
  {

    v3 = sub_258E952E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258E952E4()
{
  v1 = v0[14];
  v2 = v0[3];
  v3 = sub_258F09E50();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 0, 1, v3);
  (*(v4 + 32))(v2, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_258E953F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ODDIPoirotMetricsTaskExecutor.__deallocating_deinit()
{
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework29ODDIPoirotMetricsTaskExecutor_taskParams, &qword_27F989F30, qword_258F132E0);

  return swift_deallocClassInstance();
}

uint64_t sub_258E95528(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_258DE1DC4;

  return sub_258E94C04(a1, a2, a3, a4, a5, a6, a7);
}

unint64_t sub_258E95614()
{
  result = qword_27F989FB0;
  if (!qword_27F989FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989FB0);
  }

  return result;
}

unint64_t sub_258E9566C()
{
  result = qword_27F989FB8;
  if (!qword_27F989FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989FB8);
  }

  return result;
}

uint64_t type metadata accessor for ODDIPoirotMetricsTaskExecutor(uint64_t a1)
{
  result = qword_280CC5CB8;
  if (!qword_280CC5CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258E95714(uint64_t a1)
{
  sub_258E946D8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ODDIPoirotMetricsTaskExecutor.execute(for:defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = (*(*v7 + 96) + **(*v7 + 96));
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_258DE1DC4;

  return v18(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t ODDISegmentsCohortResults.eventStreamMetadata.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ODDISegmentsCohortResults.conversationStreamMetadata.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ODDISegmentsCohortResults.deviceSegmentsCohorts.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ODDISegmentsCohortResults.init(eventStreamMetadata:conversationStreamMetadata:deviceSegmentsCohorts:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_258E95C10@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 112);
  v4 = sub_258F0A370();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t *ODDISegmentsCohortsCalculator.__allocating_init(concluder:logger:bookmarkService:)(char *a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v6 = sub_258F0A370();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 80);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v9, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v13 + 16);
  v29 = a1;
  v17(v16, a1, v12);
  v18 = *(v7 + 16);
  v28 = a2;
  v18(v11, a2, v6);
  v19 = *(v3 + 88);
  (*(v19 + 16))(v12, v19);
  v20 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v21 = sub_258F0A4E0();

  v22 = [v20 initWithSuiteName_];

  if (!v22)
  {
    v22 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  }

  sub_258F09F30();
  sub_258F09F20();
  v23 = sub_258E98F24(v16, v11, v27, v22, v12, v19);

  v24 = *(v13 + 8);
  v24(v16, v12);
  (*(v7 + 8))(v28, v6);
  v24(v29, v12);
  return v23;
}

uint64_t sub_258E95F6C(uint64_t a1)
{
  v2[113] = v1;
  v2[112] = a1;
  v2[114] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v3 = type metadata accessor for DeviceSegmentsCohorts(0);
  v2[117] = v3;
  v2[118] = *(v3 - 8);
  v2[119] = swift_task_alloc();
  v2[120] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v2[123] = swift_task_alloc();
  v4 = sub_258F09B00();
  v2[124] = v4;
  v2[125] = *(v4 - 8);
  v2[126] = swift_task_alloc();
  v5 = sub_258F09A20();
  v2[127] = v5;
  v2[128] = *(v5 - 8);
  v2[129] = swift_task_alloc();
  v2[130] = swift_task_alloc();
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();
  v2[133] = swift_task_alloc();
  v2[134] = swift_task_alloc();
  v2[135] = swift_task_alloc();
  v2[136] = swift_task_alloc();
  v2[137] = swift_task_alloc();
  v2[138] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E9621C, 0, 0);
}

void sub_258E9621C(uint64_t a1)
{
  v205 = v1;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#ODDISegmentCohortCalculator: SQL calculator invoked: ", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v1[114];
  v6 = v1[113];

  v7 = *(v6 + *(*v6 + 128));
  v8 = *(v5 + 80);
  v9 = *(v5 + 88);
  (*(v9 + 24))(v8, v9);
  v10 = sub_258F0A4E0();

  v11 = [v7 BOOLForKey_];

  v12 = sub_258F0A350();
  v13 = sub_258F0A810();
  if (os_log_type_enabled(v12, v13))
  {
    if (v11)
    {
      v14 = "#ODDISegmentCohortCalculator: Include current date data for aggregation.";
    }

    else
    {
      v14 = "#ODDISegmentCohortCalculator: current date data NOT included for aggregation.";
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_258DD8000, v12, v13, v14, v15, 2u);
    MEMORY[0x259C9EF40](v15, -1, -1);
  }

  sub_258E98654();
  v17 = type metadata accessor for ODDISegmentsCohortsCalculator(0, v8, v9, v16);
  WitnessTable = swift_getWitnessTable();
  v163 = sub_258E3A5B0(v17, WitnessTable);
  v19 = (v1[113] + *(*v1[113] + 136));
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v20 = sub_258F09BD0();
  sub_258F0A100();
  v22 = v21;

  v173 = v1;
  if (v22)
  {
    v23 = v1[135];
    v189 = v1[128];
    v192 = v1[137];
    v196 = v1[127];
    v24 = v1[126];
    v25 = v1[125];
    v26 = v1[124];
    v187 = v1[136];
    sub_258F0A090();
    swift_getWitnessTable();
    sub_258E3B9F0(v17);
    sub_258F09960();
    v184 = *(v25 + 8);
    v27 = v26;
    v184(v24, v26);
    v28 = v17;
    v190 = *(v189 + 8);
    v190(v23, v196);
    sub_258E3B9F0(v17);
    sub_258F09940();
    v184(v24, v27);
    v190(v187, v196);
    sub_258E3B9F0(v17);
    sub_258F09950();
    v184(v24, v27);
    v190(v192, v196);
  }

  else
  {
    sub_258F09910();
    v28 = v17;
  }

  v194 = v1[133];
  v197 = v1[132];
  v29 = v1[126];
  v30 = v1[125];
  v31 = v1[124];
  sub_258F09AC0();
  sub_258F09960();
  v32 = *(v30 + 8);
  v32(v29, v31);
  sub_258F0A140();
  sub_258F09920();
  v199 = sub_258F0A120();
  swift_getWitnessTable();
  sub_258E3B9F0(v28);
  sub_258F09960();
  v32(v29, v31);
  v160 = v28;
  sub_258E3B9F0(v28);
  sub_258F09BB0();
  v159 = v32;
  v32(v29, v31);
  v33 = sub_258E98220(v194, v197);
  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989FC0, &qword_258F13C30);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_258F0B820;
  *(v36 + 56) = MEMORY[0x277D837D0];
  *(v36 + 64) = sub_258E98FA8();
  *(v36 + 32) = v33;
  *(v36 + 40) = v35;
  v37 = sub_258F0A520();
  v39 = v38;

  v40 = sub_258F0A350();
  v41 = sub_258F0A810();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v204[0] = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_258DE3018(v37, v39, v204);
    _os_log_impl(&dword_258DD8000, v40, v41, "SQL with dates: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x259C9EF40](v43, -1, -1);
    MEMORY[0x259C9EF40](v42, -1, -1);
  }

  v44 = v1;
  sub_258F0A050();
  v162 = v199;
  v161 = sub_258F0A020();
  sub_258F0A040();

  sub_258F0A090();
  if ((sub_258F0A070() & 1) == 0)
  {
    v191 = 0;
    v185 = 0;
    v186 = 0;
    v45 = MEMORY[0x277D84F90];
LABEL_125:

    v148 = sub_258F0A350();
    v149 = sub_258F0A810();
    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      *v150 = 134217984;
      *(v150 + 4) = v45[2];

      _os_log_impl(&dword_258DD8000, v148, v149, "SiriSegmentCohortCalculator query yielded %ld results", v150, 0xCu);
      MEMORY[0x259C9EF40](v150, -1, -1);
    }

    else
    {
    }

    v175 = v44[138];
    v171 = v44[133];
    v172 = v44[134];
    v167 = v44[132];
    v169 = v44[131];
    v151 = v44[128];
    v168 = v44[127];
    v166 = v44[113];
    v170 = v44[112];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BE8, &unk_258F13720);
    v152 = swift_allocObject();
    v152[4] = v186;
    v152[5] = 0xD000000000000017;
    v152[6] = 0x8000000258F1AF40;
    v152[7] = v185;
    v152[8] = 0xD000000000000015;
    v152[9] = 0x8000000258F1D230;
    v152[10] = v191;
    v152[11] = 0xD00000000000001CLL;
    v152[12] = 0x8000000258F1D250;

    sub_258E98178(v186, 0xD000000000000017, 0x8000000258F1AF40, v166);

    sub_258E98178(v185, 0xD000000000000015, 0x8000000258F1D230, v166);

    sub_258E98178(v191, 0xD00000000000001CLL, 0x8000000258F1D250, v166);

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BF0, &unk_258F11F00);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_258F0A0F0();
    v153 = sub_258F09B70();

    v154 = *(v151 + 8);
    v154(v169, v168);
    v154(v167, v168);
    v154(v171, v168);
    v154(v172, v168);
    v154(v175, v168);
    *v170 = v153;
    v170[1] = MEMORY[0x277D84F90];
    v170[2] = v45;

    v155 = v173[1];

    v155();
    return;
  }

  v191 = 0;
  v185 = 0;
  v186 = 0;
  v164 = v1[117];
  v165 = v1[118];
  v158 = v1[113];
  v157 = *(*v158 + 144);
  v156 = (v1[128] + 8);
  v45 = MEMORY[0x277D84F90];
  while (1)
  {
    v46 = sub_258F0A060();
    if (!v46)
    {
      goto LABEL_20;
    }

    v47 = v46;
    v48 = sub_258F0A350();
    v49 = sub_258F0A810();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v204[0] = v51;
      *v50 = 136315138;
      v52 = sub_258F0A420();
      v54 = v45;
      v55 = sub_258DE3018(v52, v53, v204);

      *(v50 + 4) = v55;
      v45 = v54;
      _os_log_impl(&dword_258DD8000, v48, v49, "SiriSegmentCohort row data: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x259C9EF40](v51, -1, -1);
      MEMORY[0x259C9EF40](v50, -1, -1);
    }

    v44[102] = 0xD000000000000010;
    v44[103] = 0x8000000258F1D270;
    sub_258F0AA80();
    if (*(v47 + 16) && (v56 = sub_258E2EA2C((v44 + 7)), (v57 & 1) != 0))
    {
      sub_258DE4090(*(v47 + 56) + 32 * v56, (v44 + 47));
      sub_258E0F590((v44 + 7));
      if (swift_dynamicCast())
      {
        v58 = *(v44 + 1121);
      }

      else
      {
        v58 = 2;
      }
    }

    else
    {
      sub_258E0F590((v44 + 7));
      v58 = 2;
    }

    v44[90] = 0xD000000000000015;
    v44[91] = 0x8000000258F1D290;
    sub_258F0AA80();
    if (!*(v47 + 16) || (v59 = sub_258E2EA2C((v44 + 22)), (v60 & 1) == 0))
    {
      sub_258E0F590((v44 + 22));
LABEL_37:
      v61 = 2;
LABEL_38:
      v62 = 1;
      if (v58 == 2)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

    sub_258DE4090(*(v47 + 56) + 32 * v59, (v44 + 75));
    sub_258E0F590((v44 + 22));
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_37;
    }

    if ((v44[140] & 1) == 0)
    {
      v61 = 0;
      goto LABEL_38;
    }

    v61 = 1;
    v62 = 2;
    if (v58 == 2)
    {
      goto LABEL_41;
    }

LABEL_39:
    if (v58)
    {
      v63 = 2;
LABEL_45:
      v195 = v63;
      goto LABEL_46;
    }

LABEL_41:
    if (v61 == 2 || (v61 & 1) == 0)
    {
      v63 = 1;
      goto LABEL_45;
    }

    v195 = 0;
LABEL_46:
    v44[96] = 0xD000000000000025;
    v44[97] = 0x8000000258F1AD60;
    sub_258F0AA80();
    if (!*(v47 + 16) || (v64 = sub_258E2EA2C((v44 + 37)), (v65 & 1) == 0))
    {
      sub_258E0F590((v44 + 37));
LABEL_52:
      v66 = 0;
      if (v58 == 2)
      {
        goto LABEL_59;
      }

      goto LABEL_53;
    }

    sub_258DE4090(*(v47 + 56) + 32 * v64, (v44 + 71));
    sub_258E0F590((v44 + 37));
    if (!swift_dynamicCast())
    {
      goto LABEL_52;
    }

    v66 = *(v173 + 279);
    if (v58 == 2)
    {
      goto LABEL_59;
    }

LABEL_53:
    if (v61 != 2 && (v58 & 1) == 0 && !v66 && (v61 & 1) != 0)
    {

      v67 = sub_258F0A350();
      v68 = sub_258F0A810();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v204[0] = v70;
        *v69 = 67109634;
        *(v69 + 8) = 2080;
        *(v69 + 10) = sub_258DE3018(0x65736C6166, 0xE500000000000000, v204);
        *(v69 + 18) = 2080;
        *(v69 + 20) = sub_258DE3018(1702195828, 0xE400000000000000, v204);
        _os_log_impl(&dword_258DD8000, v67, v68, "#ODDISegmentCohortCalculator: Skip creating message daysWithTwoValidAssistantTurnsPerWeek: %u, isTwoByThree: %s, dataIncomplete: %s.", v69, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x259C9EF40](v70, -1, -1);
        MEMORY[0x259C9EF40](v69, -1, -1);
      }

      goto LABEL_20;
    }

LABEL_59:
    v183 = v66;
    v71 = v44[123];
    v72 = sub_258F09A70();
    v200 = *(*(v72 - 8) + 56);
    v202 = v72;
    v200(v71, 1, 1);
    v44[100] = 0xD000000000000015;
    v44[101] = 0x8000000258F189D0;
    sub_258F0AA80();
    if (*(v47 + 16) && (v73 = sub_258E2EA2C((v44 + 2)), (v74 & 1) != 0))
    {
      sub_258DE4090(*(v47 + 56) + 32 * v73, (v44 + 63));
      sub_258E0F590((v44 + 2));
      if (swift_dynamicCast())
      {
        v75 = v44[123];
        v76 = v44[122];
        sub_258F09A30();

        sub_258DE2184(v75, &qword_27F988730, &unk_258F0F8E0);
        sub_258E2EAD8(v76, v75, &qword_27F988730, &unk_258F0F8E0);
        goto LABEL_68;
      }
    }

    else
    {
      sub_258E0F590((v44 + 2));
    }

    v77 = sub_258F0A350();
    v78 = sub_258F0A820();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_258DD8000, v77, v78, "observed NilDeviceAggregationId", v79, 2u);
      MEMORY[0x259C9EF40](v79, -1, -1);
    }

    if (__OFADD__(v186, 1))
    {
      goto LABEL_134;
    }

    ++v186;
LABEL_68:
    (v200)(v44[121], 1, 1, v202);
    v44[94] = 0xD000000000000013;
    v44[95] = 0x8000000258F1A5E0;
    sub_258F0AA80();
    if (*(v47 + 16) && (v80 = sub_258E2EA2C((v44 + 42)), (v81 & 1) != 0))
    {
      sub_258DE4090(*(v47 + 56) + 32 * v80, (v44 + 59));
      sub_258E0F590((v44 + 42));
      if (swift_dynamicCast())
      {
        v82 = v44[122];
        v83 = v44[121];
        sub_258F09A30();

        sub_258DE2184(v83, &qword_27F988730, &unk_258F0F8E0);
        sub_258E2EAD8(v82, v83, &qword_27F988730, &unk_258F0F8E0);
        goto LABEL_77;
      }
    }

    else
    {
      sub_258E0F590((v44 + 42));
    }

    v84 = sub_258F0A350();
    v85 = sub_258F0A820();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_258DD8000, v84, v85, "observed NilUserAggregationId", v86, 2u);
      MEMORY[0x259C9EF40](v86, -1, -1);
    }

    if (__OFADD__(v185, 1))
    {
      goto LABEL_135;
    }

    ++v185;
LABEL_77:
    v44[92] = 0xD000000000000029;
    v44[93] = 0x8000000258F18AC0;
    sub_258F0AA80();
    if (*(v47 + 16) && (v87 = sub_258E2EA2C((v44 + 32)), (v88 & 1) != 0))
    {
      sub_258DE4090(*(v47 + 56) + 32 * v87, (v44 + 67));
      sub_258E0F590((v44 + 32));
      v89 = swift_dynamicCast();
      if (v89)
      {
        v90 = v173[111];
      }

      else
      {
        v90 = 0;
      }

      v91 = v89 ^ 1;
    }

    else
    {
      sub_258E0F590((v44 + 32));
      v90 = 0;
      v91 = 1;
    }

    v44[88] = 0xD00000000000002BLL;
    v44[89] = 0x8000000258F18AF0;
    sub_258F0AA80();
    if (*(v47 + 16) && (v92 = sub_258E2EA2C((v44 + 27)), (v93 & 1) != 0))
    {
      sub_258DE4090(*(v47 + 56) + 32 * v92, (v44 + 79));
      sub_258E0F590((v44 + 27));
      v94 = swift_dynamicCast();
      if (v94)
      {
        v95 = v173[110];
      }

      else
      {
        v95 = 0;
      }

      v96 = v94 ^ 1;
    }

    else
    {
      sub_258E0F590((v44 + 27));
      v95 = 0;
      v96 = 1;
    }

    v178 = v96;
    v188 = [objc_allocWithZone(MEMORY[0x277D593F8]) init];
    v44[86] = 0x61645F746E657665;
    v44[87] = 0xEA00000000006574;
    sub_258F0AA80();
    v193 = v45;
    v182 = v62;
    v181 = v90;
    v180 = v91;
    v179 = v95;
    if (!*(v47 + 16) || (v97 = sub_258E2EA2C((v44 + 17)), (v98 & 1) == 0))
    {

      sub_258E0F590((v44 + 17));
LABEL_99:
      if (__OFADD__(v191, 1))
      {
        goto LABEL_133;
      }

      ++v191;
      goto LABEL_101;
    }

    sub_258DE4090(*(v47 + 56) + 32 * v97, (v44 + 51));
    sub_258E0F590((v44 + 17));
    if ((swift_dynamicCast() & 1) == 0 || (v99 = *(v158 + v157), v100 = sub_258F0A4E0(), , v101 = [v99 dateFromString_], v100, !v101))
    {

      goto LABEL_99;
    }

    v102 = v44[126];
    v103 = v44;
    v104 = v44[124];
    sub_258F09A00();

    sub_258E3B9F0(v160);
    sub_258F09950();
    v159(v102, v104);
    if (sub_258F099C0())
    {
      v105 = v103[130];
      v106 = v103[129];
      v107 = v103[127];
      v108 = v103[123];
      v109 = v103[121];

      v110 = *v156;
      (*v156)(v106, v107);
      v110(v105, v107);
      sub_258DE2184(v109, &qword_27F988730, &unk_258F0F8E0);
      sub_258DE2184(v108, &qword_27F988730, &unk_258F0F8E0);
      v44 = v103;
      v45 = v193;
      goto LABEL_20;
    }

    if (v188)
    {
      v134 = v173[137];
      v177 = v173[127];
      v135 = v173[126];
      v136 = v173[124];
      v137 = v188;
      sub_258E3B9F0(v160);
      sub_258F09930();
      v159(v135, v136);
      sub_258F099E0();
      v139 = v138;
      v140 = v138;
      v141 = *v156;
      (*v156)(v134, v177);
      if ((*&v140 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_136;
      }

      if (v139 <= -1.0)
      {
        goto LABEL_137;
      }

      v44 = v173;
      if (v139 >= 1.84467441e19)
      {
        goto LABEL_138;
      }

      [v137 setStartTimestampInSecondsSince1970_];

      v173[104] = 0xD000000000000018;
      v173[105] = 0x8000000258F1A780;
      v142 = v137;
      sub_258F0AA80();
      if (*(v47 + 16) && (v143 = sub_258E2EA2C((v173 + 12)), (v144 & 1) != 0))
      {
        sub_258DE4090(*(v47 + 56) + 32 * v143, (v173 + 55));
        sub_258E0F590((v173 + 12));

        v145 = swift_dynamicCast() ? *(v173 + 278) : 86400;
      }

      else
      {
        v145 = 86400;

        sub_258E0F590((v173 + 12));
      }

      [v142 setNumberOfSeconds_];
    }

    else
    {

      v141 = *v156;
      v44 = v173;
    }

    v146 = v44[130];
    v147 = v44[127];
    v141(v44[129], v147);
    v141(v146, v147);
LABEL_101:
    v111 = v44[123];
    v112 = v44[121];
    v113 = v44[116];
    type metadata accessor for DeviceSegmentsCohortsImpl(0);
    v114 = swift_allocObject();
    v115 = v114 + OBJC_IVAR____TtC16MetricsFramework25DeviceSegmentsCohortsImpl_eventMetadata;
    v116 = type metadata accessor for EventMetadata(0);
    v117 = *(*(v116 - 1) + 56);
    v117(v115, 1, 1, v116);
    *(v114 + OBJC_IVAR____TtC16MetricsFramework25DeviceSegmentsCohortsImpl_deviceSegmentsReported) = 0;
    sub_258F09A60();
    (v200)(v113, 0, 1, v202);
    sub_258DE20C0(v111, v113 + v116[5], &qword_27F988730, &unk_258F0F8E0);
    sub_258DE20C0(v112, v113 + v116[6], &qword_27F988730, &unk_258F0F8E0);
    sub_258F099E0();
    if ((*&v118 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v118 <= -1.0)
    {
      goto LABEL_130;
    }

    if (v118 >= 1.84467441e19)
    {
      goto LABEL_131;
    }

    if (!is_mul_ok(v118, 0x3E8uLL))
    {
      goto LABEL_132;
    }

    v174 = 1000 * v118;
    v44 = v173;
    v198 = v173[120];
    v201 = v173[119];
    v119 = v173[116];
    v176 = v173[115];
    v120 = objc_opt_self();
    v203 = v188;
    v121 = [v120 sharedPreferences];
    v122 = [v121 longLivedIdentifierUploadingEnabled];

    v123 = v119 + v116[7];
    *v123 = v174;
    *(v123 + 8) = 0;
    *(v119 + v116[8]) = v188;
    v124 = v119 + v116[9];
    *v124 = v181;
    *(v124 + 8) = v180;
    v125 = v119 + v116[10];
    *v125 = v179;
    *(v125 + 8) = v178;
    v126 = v119 + v116[11];
    *v126 = 3;
    *(v126 + 4) = 0;
    *(v119 + v116[12]) = v122 ^ 1;
    v117(v119, 0, 1, v116);
    sub_258E2EAD8(v119, v176, &qword_27F9894E0, &unk_258F106A0);
    swift_beginAccess();
    sub_258E98FFC(v176, v115);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989FD0, &qword_258F13730);
    v127 = swift_allocObject();
    *(v127 + 16) = xmmword_258F0B820;
    *(v127 + 32) = v195;
    *(v127 + 36) = 0;
    *(v127 + 40) = v182;
    *(v127 + 44) = 0;
    *(v127 + 48) = v183;
    *(v127 + 52) = 0;
    *(v127 + 56) = 0;
    *(v127 + 60) = 1;
    sub_258DE20C0(v115, v198, &qword_27F9894E0, &unk_258F106A0);
    swift_setDeallocating();
    sub_258DE2184(v114 + OBJC_IVAR____TtC16MetricsFramework25DeviceSegmentsCohortsImpl_eventMetadata, &qword_27F9894E0, &unk_258F106A0);
    swift_deallocClassInstance();
    *(v198 + *(v164 + 20)) = v127;
    *(v198 + *(v164 + 24)) = 0;
    sub_258E9906C(v198, v201);
    v45 = v193;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_258DE2A9C(0, v193[2] + 1, 1, v193);
    }

    v129 = v45[2];
    v128 = v45[3];
    if (v129 >= v128 >> 1)
    {
      v45 = sub_258DE2A9C((v128 > 1), v129 + 1, 1, v45);
    }

    v130 = v173[123];
    v131 = v173[121];
    v132 = v173[120];
    v133 = v173[119];

    sub_258E990D0(v132);
    sub_258DE2184(v131, &qword_27F988730, &unk_258F0F8E0);
    sub_258DE2184(v130, &qword_27F988730, &unk_258F0F8E0);
    v45[2] = v129 + 1;
    sub_258E9912C(v133, v45 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v129);
LABEL_20:
    if ((sub_258F0A070() & 1) == 0)
    {
      goto LABEL_125;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
}

uint64_t sub_258E98178(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ODDISegmentsCohortsCalculator(0, *(*a4 + 80), *(*a4 + 88), a4);
  WitnessTable = swift_getWitnessTable();
  return sub_258E38C54(a1, a2, a3, v7, WitnessTable);
}

uint64_t sub_258E98220(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46 = *v3;
  v45 = sub_258F09B00();
  v6 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258F09A20();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v44 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v38 - v16;
  (*(v11 + 16))(&v38 - v16, a1, v10);
  v18 = sub_258E996E0();
  v47 = a2;
  v43 = v18;
  v19 = sub_258F0A4A0();
  v39 = v11;
  if (v19)
  {
    v20 = MEMORY[0x277D84F90];
  }

  else
  {
    v23 = *(v3 + *(*v3 + 144));
    v41 = (v6 + 8);
    v42 = v23;
    v40 = (v11 + 8);
    v24 = (v11 + 32);
    v20 = MEMORY[0x277D84F90];
    do
    {
      v48 = 39;
      v49 = 0xE100000000000000;
      v25 = sub_258F099A0();
      v26 = [v42 stringFromDate_];

      v27 = sub_258F0A4F0();
      v29 = v28;

      MEMORY[0x259C9DEB0](v27, v29);

      MEMORY[0x259C9DEB0](39, 0xE100000000000000);
      v30 = v48;
      v31 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_258DE2990(0, *(v20 + 2) + 1, 1, v20);
      }

      v34 = *(v20 + 2);
      v33 = *(v20 + 3);
      if (v34 >= v33 >> 1)
      {
        v20 = sub_258DE2990((v33 > 1), v34 + 1, 1, v20);
      }

      *(v20 + 2) = v34 + 1;
      v35 = &v20[16 * v34];
      *(v35 + 4) = v30;
      *(v35 + 5) = v31;
      v36 = type metadata accessor for ODDISegmentsCohortsCalculator(0, *(v46 + 80), *(v46 + 88), v32);
      swift_getWitnessTable();
      sub_258E3B9F0(v36);
      v37 = v44;
      sub_258F09960();
      (*v41)(v9, v45);
      (*v40)(v17, v10);
      (*v24)(v17, v37, v10);
    }

    while ((sub_258F0A4A0() & 1) == 0);
  }

  v48 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DB0, &unk_258F13940);
  sub_258E99738();
  v21 = sub_258F0A490();

  (*(v39 + 8))(v17, v10);
  return v21;
}

uint64_t sub_258E98654()
{
  v2 = sub_258F0A540();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_258F098D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(*v0 + 88) + 40))(*(*v0 + 80));
  sub_258F0A530();
  v9 = sub_258F0A4C0();
  v11 = v10;
  if (v1)
  {
    (*(v5 + 8))(v8, v4);
    v12 = sub_258F0A350();
    v13 = sub_258F0A820();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_258DD8000, v12, v13, "#ODDISegmentsCohortsCalculator: SQL file could not be loaded", v14, 2u);
      MEMORY[0x259C9EF40](v14, -1, -1);
    }

    sub_258DE403C();
    swift_allocError();
    *v15 = 10;
    swift_willThrow();
  }

  else
  {
    (*(v5 + 8))(v8, v4);

    v16 = sub_258F0A350();
    v17 = sub_258F0A810();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_258DE3018(v9, v11, &v22);
      _os_log_impl(&dword_258DD8000, v16, v17, "#ODDISegmentsCohortsCalculator: SQL: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x259C9EF40](v19, -1, -1);
      MEMORY[0x259C9EF40](v18, -1, -1);
    }
  }

  return v9;
}

uint64_t ODDISegmentsCohortsCalculator.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 104)));
  v1 = *(*v0 + 112);
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 136)));
  return v0;
}

uint64_t ODDISegmentsCohortsCalculator.__deallocating_deinit()
{
  ODDISegmentsCohortsCalculator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_258E98B60()
{
  sub_258E98CB4();
}

id sub_258E98BA0()
{
  v0 = sub_258E98C98();

  return v0;
}

uint64_t sub_258E98BCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258E95F6C(a1);
}

uint64_t sub_258E98C68@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t *sub_258E98CD0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = (v5 + *(*v5 + 104));
  v12 = type metadata accessor for CAAnalyticsEventSubmitter();
  v13 = swift_allocObject();
  v11[3] = v12;
  v11[4] = &off_286A2C648;
  *v11 = v13;
  (*(*(*(v10 + 80) - 8) + 16))(v5 + *(*v5 + 96), a1);
  v14 = *(*v5 + 112);
  v15 = sub_258F0A370();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v5 + v14, a2, v15);
  *(v5 + *(*v5 + 128)) = a4;
  v17 = (v5 + *(*v5 + 136));
  v17[3] = sub_258F09C20();
  v17[4] = &off_286A2FA30;
  *v17 = a3;
  sub_258F09F30();
  v18 = a4;

  *(v5 + *(*v5 + 120)) = sub_258F09F20();
  v19 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  *(v5 + *(*v5 + 144)) = v19;
  v20 = sub_258F0A4E0();
  [v19 setDateFormat_];

  (*(v16 + 8))(a2, v15);
  return v5;
}

uint64_t *sub_258E98F24(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for ODDISegmentsCohortsCalculator(0, a5, a6, a4);
  swift_allocObject();
  return sub_258E98CD0(a1, a2, a3, a4);
}

unint64_t sub_258E98FA8()
{
  result = qword_27F989FC8;
  if (!qword_27F989FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989FC8);
  }

  return result;
}

uint64_t sub_258E98FFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E9906C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceSegmentsCohorts(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E990D0(uint64_t a1)
{
  v2 = type metadata accessor for DeviceSegmentsCohorts(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258E9912C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceSegmentsCohorts(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_258E99190()
{
  result = qword_27F989FD8;
  if (!qword_27F989FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989FD8);
  }

  return result;
}

uint64_t sub_258E991E4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258E99220(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258E9925C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258E99298()
{
  result = qword_27F989FE0[0];
  if (!qword_27F989FE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F989FE0);
  }

  return result;
}

uint64_t dispatch thunk of ODDISegmentsCohortConcluding.conclude(with:endTimes:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 48) + **(a6 + 48));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_258E08B24;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_258E994A8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_258F0A370();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of ODDISegmentsCohortsCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 168) + **(*v2 + 168));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

unint64_t sub_258E996E0()
{
  result = qword_27F989870;
  if (!qword_27F989870)
  {
    sub_258F09A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989870);
  }

  return result;
}

unint64_t sub_258E99738()
{
  result = qword_27F988DB8;
  if (!qword_27F988DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988DB0, &unk_258F13940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988DB8);
  }

  return result;
}

uint64_t ODDISegmentsCohortsDataProvider.__allocating_init(logger:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t ODDISegmentsCohortsDataProvider.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_258E998B4(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: ODDISegmentsCohortsDataProvider", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t ODDISegmentsCohortsDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ODDISegmentsCohortsDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_258E99A90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258DE1DC4;

  return sub_258E99894();
}

uint64_t type metadata accessor for ODDISegmentsCohortsDataProvider(uint64_t a1)
{
  result = qword_27F98A070;
  if (!qword_27F98A070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of ODDISegmentsCohortsDataProvider.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 96) + **(*v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t ODDISegmentsCohortsPlugin.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, void *a2, unint64_t a3, unint64_t a4)
{
  v8 = swift_allocObject();
  ODDISegmentsCohortsPlugin.init(defaults:logger:fbfBundleId:)(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_258E99D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v5 = sub_258F0A370();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ODDISegmentsCohortsConcluder(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  sub_258E9E160(a1, v13, type metadata accessor for ODDISegmentsCohortsConcluder);
  v14 = *(v6 + 16);
  v30 = v9;
  v31 = a2;
  v14(v9, a2, v5);
  v15 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v16 = sub_258F0A4E0();

  v17 = [v15 initWithSuiteName_];

  if (!v17)
  {
    v17 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  }

  sub_258F09F30();
  v28[1] = sub_258F09F20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A0F8, qword_258F13C38);
  v18 = swift_allocObject();
  v19 = (v18 + *(*v18 + 104));
  v20 = type metadata accessor for CAAnalyticsEventSubmitter();
  v21 = swift_allocObject();
  v19[3] = v20;
  v19[4] = &off_286A2C648;
  *v19 = v21;
  sub_258E9E160(v13, v18 + *(*v18 + 96), type metadata accessor for ODDISegmentsCohortsConcluder);
  v22 = v30;
  v14((v18 + *(*v18 + 112)), v30, v5);
  *(v18 + *(*v18 + 128)) = v17;
  v23 = (v18 + *(*v18 + 136));
  v23[3] = sub_258F09C20();
  v23[4] = &off_286A2FA30;
  *v23 = v29;
  *(v18 + *(*v18 + 120)) = sub_258F09F20();
  v24 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  *(v18 + *(*v18 + 144)) = v24;
  v25 = sub_258F0A4E0();
  [v24 setDateFormat_];

  v26 = *(v6 + 8);
  v26(v31, v5);
  sub_258E9E1C8(v32, type metadata accessor for ODDISegmentsCohortsConcluder);
  v26(v22, v5);
  sub_258E9E1C8(v13, type metadata accessor for ODDISegmentsCohortsConcluder);
  return v18;
}

uint64_t sub_258E9A110(uint64_t a1)
{
  v2[113] = v1;
  v2[112] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v2[114] = swift_task_alloc();
  v2[115] = swift_task_alloc();
  v3 = type metadata accessor for DeviceSegmentsCohorts(0);
  v2[116] = v3;
  v2[117] = *(v3 - 8);
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v4 = sub_258F09B00();
  v2[123] = v4;
  v2[124] = *(v4 - 8);
  v2[125] = swift_task_alloc();
  v5 = sub_258F09A20();
  v2[126] = v5;
  v2[127] = *(v5 - 8);
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  v2[130] = swift_task_alloc();
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();
  v2[133] = swift_task_alloc();
  v2[134] = swift_task_alloc();
  v2[135] = swift_task_alloc();
  v2[136] = swift_task_alloc();
  v2[137] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E9A398, 0, 0);
}

void sub_258E9A398(uint64_t a1)
{
  v203 = v1;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#ODDISegmentCohortCalculator: SQL calculator invoked: ", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v1[113];

  v6 = *(v5 + *(*v5 + 128));
  v7 = sub_258F0A4E0();
  v8 = [v6 BOOLForKey_];

  v9 = sub_258F0A350();
  v10 = sub_258F0A810();
  if (os_log_type_enabled(v9, v10))
  {
    if (v8)
    {
      v11 = "#ODDISegmentCohortCalculator: Include current date data for aggregation.";
    }

    else
    {
      v11 = "#ODDISegmentCohortCalculator: current date data NOT included for aggregation.";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_258DD8000, v9, v10, v11, v12, 2u);
    MEMORY[0x259C9EF40](v12, -1, -1);
  }

  sub_258E9C590();
  v174 = sub_258DE04C8();
  v13 = (v1[113] + *(*v1[113] + 136));
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v14 = sub_258F09BD0();
  sub_258F0A100();
  v16 = v15;

  v177 = v1;
  if (v16)
  {
    v193 = v1[135];
    v196 = v1[136];
    v17 = v1[134];
    v18 = v1[127];
    v19 = v1[126];
    v20 = v1[125];
    v21 = v1[124];
    v22 = v1[123];
    sub_258F0A090();
    sub_258F09AC0();
    sub_258F09960();
    v23 = *(v21 + 8);
    v23(v20, v22);
    v24 = *(v18 + 8);
    v24(v17, v19);
    sub_258F09AC0();
    sub_258F09940();
    v23(v20, v22);
    v24(v193, v19);
    sub_258F09AC0();
    sub_258F09950();
    v23(v20, v22);
    v24(v196, v19);
  }

  else
  {
    sub_258F09910();
  }

  v25 = v1[131];
  v26 = v1[125];
  v27 = v1[124];
  v28 = v1[123];
  v197 = v1[132];
  sub_258F09AC0();
  sub_258F09960();
  v29 = *(v27 + 8);
  v29(v26, v28);
  sub_258F0A140();
  sub_258F09920();
  v30 = sub_258F0A120();
  sub_258F09AC0();
  sub_258F09960();
  v29(v26, v28);
  sub_258F09AC0();
  sub_258F09BB0();
  v171 = v29;
  v29(v26, v28);
  v31 = sub_258E9C198(v197, v25);
  v33 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989FC0, &qword_258F13C30);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_258F0B820;
  *(v34 + 56) = MEMORY[0x277D837D0];
  *(v34 + 64) = sub_258E98FA8();
  *(v34 + 32) = v31;
  *(v34 + 40) = v33;
  v35 = sub_258F0A520();
  v37 = v36;

  v38 = sub_258F0A350();
  v39 = sub_258F0A810();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v202[0] = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_258DE3018(v35, v37, v202);
    _os_log_impl(&dword_258DD8000, v38, v39, "SQL with dates: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x259C9EF40](v41, -1, -1);
    MEMORY[0x259C9EF40](v40, -1, -1);
  }

  v42 = v1;
  sub_258F0A050();
  v173 = v30;
  v172 = sub_258F0A020();
  sub_258F0A040();

  sub_258F0A090();
  v43 = sub_258F0A070();
  v44 = MEMORY[0x277D84F90];
  if ((v43 & 1) == 0)
  {
    v191 = 0;
    v192 = 0;
    v189 = 0;
LABEL_125:

    v152 = sub_258F0A350();
    v153 = sub_258F0A810();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      *v154 = 134217984;
      *(v154 + 4) = v44[2];

      _os_log_impl(&dword_258DD8000, v152, v153, "SiriSegmentCohortCalculator query yielded %ld results", v154, 0xCu);
      MEMORY[0x259C9EF40](v154, -1, -1);
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BE8, &unk_258F13720);
    v155 = swift_allocObject();
    v155[4] = v189;
    v155[5] = 0xD000000000000017;
    v155[6] = 0x8000000258F1AF40;
    v156 = v191;
    v155[7] = v191;
    v155[8] = 0xD000000000000015;
    v155[9] = 0x8000000258F1D230;
    v155[10] = v192;
    v155[11] = 0xD00000000000001CLL;
    v155[12] = 0x8000000258F1D250;
    if (v189 >= 1)
    {

      sub_258E2D7AC(v189, 0xD000000000000017, 0x8000000258F1AF40);

      v156 = v191;
    }

    if (v156 >= 1)
    {
      v157 = v156;

      sub_258E2D7AC(v157, 0xD000000000000015, 0x8000000258F1D230);
    }

    if (v192 >= 1)
    {

      sub_258E2D7AC(v192, 0xD00000000000001CLL, 0x8000000258F1D250);
    }

    v158 = v42[137];
    v159 = v42[133];
    v160 = v42;
    v161 = v42[132];
    v162 = v42[131];
    v182 = v42[130];
    v163 = v42[127];
    v164 = v160[126];
    v165 = v160[112];
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BF0, &unk_258F11F00);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_258F0A0F0();
    v184 = sub_258F09B70();

    v166 = *(v163 + 8);
    v166(v182, v164);
    v166(v162, v164);
    v166(v161, v164);
    v166(v159, v164);
    v166(v158, v164);
    *v165 = v184;
    v165[1] = MEMORY[0x277D84F90];
    v165[2] = v44;

    v167 = v160[1];

    v167();
    return;
  }

  v191 = 0;
  v192 = 0;
  v189 = 0;
  v175 = v1[116];
  v176 = v1[117];
  v170 = v1[113];
  v169 = *(*v170 + 144);
  v168 = (v1[127] + 8);
  while (1)
  {
    v201 = v44;
    v45 = sub_258F0A060();
    if (!v45)
    {
      goto LABEL_20;
    }

    v46 = v45;
    v47 = sub_258F0A350();
    v48 = sub_258F0A810();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v202[0] = v50;
      *v49 = 136315138;
      v51 = sub_258F0A420();
      v53 = sub_258DE3018(v51, v52, v202);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_258DD8000, v47, v48, "SiriSegmentCohort row data: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x259C9EF40](v50, -1, -1);
      MEMORY[0x259C9EF40](v49, -1, -1);
    }

    v42[102] = 0xD000000000000010;
    v42[103] = 0x8000000258F1D270;
    sub_258F0AA80();
    if (*(v46 + 16) && (v54 = sub_258E2EA2C((v42 + 7)), (v55 & 1) != 0))
    {
      sub_258DE4090(*(v46 + 56) + 32 * v54, (v42 + 47));
      sub_258E0F590((v42 + 7));
      if (swift_dynamicCast())
      {
        v56 = *(v42 + 1113);
      }

      else
      {
        v56 = 2;
      }
    }

    else
    {
      sub_258E0F590((v42 + 7));
      v56 = 2;
    }

    v42[90] = 0xD000000000000015;
    v42[91] = 0x8000000258F1D290;
    sub_258F0AA80();
    if (!*(v46 + 16) || (v57 = sub_258E2EA2C((v42 + 22)), (v58 & 1) == 0))
    {
      sub_258E0F590((v42 + 22));
LABEL_40:
      v59 = 2;
      v60 = 1;
      if (v56 == 2)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    sub_258DE4090(*(v46 + 56) + 32 * v57, (v42 + 75));
    sub_258E0F590((v42 + 22));
    if (!swift_dynamicCast())
    {
      goto LABEL_40;
    }

    v59 = *(v42 + 1112);
    if (*(v42 + 1112))
    {
      v60 = 2;
    }

    else
    {
      v60 = 1;
    }

    if (v56 == 2)
    {
      goto LABEL_43;
    }

LABEL_41:
    if (v56)
    {
      v61 = 2;
      goto LABEL_47;
    }

LABEL_43:
    v61 = v59 == 2 || (v59 & 1) == 0;
LABEL_47:
    v42[96] = 0xD000000000000025;
    v42[97] = 0x8000000258F1AD60;
    sub_258F0AA80();
    if (!*(v46 + 16) || (v62 = sub_258E2EA2C((v42 + 37)), (v63 & 1) == 0))
    {
      sub_258E0F590((v42 + 37));
LABEL_52:
      v64 = 0;
      goto LABEL_53;
    }

    sub_258DE4090(*(v46 + 56) + 32 * v62, (v42 + 71));
    sub_258E0F590((v42 + 37));
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_52;
    }

    v64 = *(v177 + 277);
LABEL_53:
    if (v56 != 2 && !v64 && (v56 & 1) == 0 && v59 != 2 && (v59 & 1) != 0)
    {

      v65 = sub_258F0A350();
      v66 = sub_258F0A810();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v202[0] = v68;
        *v67 = 67109634;
        *(v67 + 8) = 2080;
        *(v67 + 10) = sub_258DE3018(0x65736C6166, 0xE500000000000000, v202);
        *(v67 + 18) = 2080;
        *(v67 + 20) = sub_258DE3018(1702195828, 0xE400000000000000, v202);
        _os_log_impl(&dword_258DD8000, v65, v66, "#ODDISegmentCohortCalculator: Skip creating message daysWithTwoValidAssistantTurnsPerWeek: %u, isTwoByThree: %s, dataIncomplete: %s.", v67, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x259C9EF40](v68, -1, -1);
        MEMORY[0x259C9EF40](v67, -1, -1);
      }

LABEL_20:
      v44 = v201;
      goto LABEL_21;
    }

    v188 = v64;
    v69 = v42[122];
    v70 = sub_258F09A70();
    v199 = *(*(v70 - 8) + 56);
    v199(v69, 1, 1, v70);
    v42[100] = 0xD000000000000015;
    v42[101] = 0x8000000258F189D0;
    sub_258F0AA80();
    v194 = v70;
    if (*(v46 + 16) && (v71 = sub_258E2EA2C((v42 + 2)), (v72 & 1) != 0))
    {
      sub_258DE4090(*(v46 + 56) + 32 * v71, (v42 + 63));
      sub_258E0F590((v42 + 2));
      if (swift_dynamicCast())
      {
        v73 = v42[122];
        v74 = v42[120];
        sub_258F09A30();

        sub_258DE2184(v73, &qword_27F988730, &unk_258F0F8E0);
        sub_258E2EAD8(v74, v73, &qword_27F988730, &unk_258F0F8E0);
        goto LABEL_69;
      }
    }

    else
    {
      sub_258E0F590((v42 + 2));
    }

    v75 = sub_258F0A350();
    v76 = sub_258F0A820();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_258DD8000, v75, v76, "observed NilDeviceAggregationId", v77, 2u);
      v78 = v77;
      v70 = v194;
      MEMORY[0x259C9EF40](v78, -1, -1);
    }

    if (__OFADD__(v189, 1))
    {
      goto LABEL_140;
    }

    ++v189;
LABEL_69:
    v199(v42[121], 1, 1, v70);
    v42[94] = 0xD000000000000013;
    v42[95] = 0x8000000258F1A5E0;
    sub_258F0AA80();
    v187 = v61;
    if (*(v46 + 16) && (v79 = sub_258E2EA2C((v42 + 42)), (v80 & 1) != 0))
    {
      sub_258DE4090(*(v46 + 56) + 32 * v79, (v42 + 59));
      sub_258E0F590((v42 + 42));
      if (swift_dynamicCast())
      {
        v81 = v42[121];
        v82 = v42[120];
        sub_258F09A30();

        sub_258DE2184(v81, &qword_27F988730, &unk_258F0F8E0);
        v70 = v194;
        sub_258E2EAD8(v82, v81, &qword_27F988730, &unk_258F0F8E0);
        v83 = v192;
        goto LABEL_78;
      }
    }

    else
    {
      sub_258E0F590((v42 + 42));
    }

    v84 = sub_258F0A350();
    v85 = sub_258F0A820();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_258DD8000, v84, v85, "observed NilUserAggregationId", v86, 2u);
      v87 = v86;
      v70 = v194;
      MEMORY[0x259C9EF40](v87, -1, -1);
    }

    v83 = v192;
    if (__OFADD__(v191, 1))
    {
      goto LABEL_141;
    }

    ++v191;
LABEL_78:
    v42[92] = 0xD000000000000029;
    v42[93] = 0x8000000258F18AC0;
    sub_258F0AA80();
    if (*(v46 + 16) && (v88 = sub_258E2EA2C((v42 + 32)), (v89 & 1) != 0))
    {
      sub_258DE4090(*(v46 + 56) + 32 * v88, (v42 + 67));
      sub_258E0F590((v42 + 32));
      v90 = swift_dynamicCast();
      v91 = v177[111];
      if (!v90)
      {
        v91 = 0;
      }

      v186 = v91;
      v92 = v90 ^ 1;
    }

    else
    {
      sub_258E0F590((v42 + 32));
      v186 = 0;
      v92 = 1;
    }

    v185 = v92;
    v42[88] = 0xD00000000000002BLL;
    v42[89] = 0x8000000258F18AF0;
    sub_258F0AA80();
    if (*(v46 + 16) && (v93 = sub_258E2EA2C((v42 + 27)), (v94 & 1) != 0))
    {
      sub_258DE4090(*(v46 + 56) + 32 * v93, (v42 + 79));
      sub_258E0F590((v42 + 27));
      v95 = swift_dynamicCast();
      if (v95)
      {
        v96 = v177[110];
      }

      else
      {
        v96 = 0;
      }

      v97 = v95 ^ 1;
    }

    else
    {
      sub_258E0F590((v42 + 27));
      v96 = 0;
      v97 = 1;
    }

    v183 = v97;
    v190 = [objc_allocWithZone(MEMORY[0x277D593F8]) init];
    v42[86] = 0x61645F746E657665;
    v42[87] = 0xEA00000000006574;
    sub_258F0AA80();
    v181 = v60;
    v180 = v96;
    if (!*(v46 + 16) || (v98 = sub_258E2EA2C((v42 + 17)), (v99 & 1) == 0))
    {

      sub_258E0F590((v42 + 17));
LABEL_98:
      v111 = __OFADD__(v83, 1);
      v112 = v83 + 1;
      if (v111)
      {
        goto LABEL_139;
      }

      v192 = v112;
      goto LABEL_100;
    }

    sub_258DE4090(*(v46 + 56) + 32 * v98, (v42 + 51));
    sub_258E0F590((v42 + 17));
    if (!swift_dynamicCast())
    {

      goto LABEL_98;
    }

    v100 = *(v170 + v169);
    v101 = sub_258F0A4E0();

    v102 = [v100 dateFromString_];

    if (!v102)
    {

      v70 = v194;
      goto LABEL_98;
    }

    v103 = v42[125];
    v104 = v42[123];
    sub_258F09A00();

    sub_258F09AC0();
    sub_258F09950();
    v171(v103, v104);
    if (sub_258F099C0())
    {
      v105 = v42[129];
      v106 = v42[128];
      v107 = v42[126];
      v108 = v42[122];
      v109 = v42[121];

      v110 = *v168;
      (*v168)(v106, v107);
      v110(v105, v107);
      sub_258DE2184(v109, &qword_27F988730, &unk_258F0F8E0);
      sub_258DE2184(v108, &qword_27F988730, &unk_258F0F8E0);
      v44 = v201;
      goto LABEL_21;
    }

    if (v190)
    {
      v137 = v42[136];
      v138 = v42[126];
      v139 = v42[125];
      v140 = v42[123];
      v141 = v190;
      sub_258F09AC0();
      sub_258F09930();
      v171(v139, v140);
      sub_258F099E0();
      v143 = v142;
      v144 = v142;
      v145 = *v168;
      (*v168)(v137, v138);
      if ((*&v144 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_142;
      }

      if (v143 <= -1.0)
      {
        goto LABEL_143;
      }

      v70 = v194;
      if (v143 >= 1.84467441e19)
      {
        goto LABEL_144;
      }

      [v141 setStartTimestampInSecondsSince1970_];

      v42[104] = 0xD000000000000018;
      v42[105] = 0x8000000258F1A780;
      v146 = v141;
      sub_258F0AA80();
      if (*(v46 + 16) && (v147 = sub_258E2EA2C((v42 + 12)), (v148 & 1) != 0))
      {
        sub_258DE4090(*(v46 + 56) + 32 * v147, (v42 + 55));
        sub_258E0F590((v42 + 12));

        v149 = (swift_dynamicCast() & 1) != 0 ? *(v177 + 276) : 86400;
      }

      else
      {
        v149 = 86400;

        sub_258E0F590((v42 + 12));
      }

      [v146 setNumberOfSeconds_];
    }

    else
    {

      v145 = *v168;
      v70 = v194;
    }

    v150 = v42[129];
    v151 = v42[126];
    v145(v42[128], v151);
    v145(v150, v151);
LABEL_100:
    v113 = v42;
    v114 = v42[122];
    v115 = v113[121];
    v116 = v113[115];
    type metadata accessor for DeviceSegmentsCohortsImpl(0);
    v117 = swift_allocObject();
    v118 = v117 + OBJC_IVAR____TtC16MetricsFramework25DeviceSegmentsCohortsImpl_eventMetadata;
    v119 = type metadata accessor for EventMetadata(0);
    v120 = *(*(v119 - 1) + 56);
    v120(v118, 1, 1, v119);
    *(v117 + OBJC_IVAR____TtC16MetricsFramework25DeviceSegmentsCohortsImpl_deviceSegmentsReported) = 0;
    sub_258F09A60();
    v199(v116, 0, 1, v70);
    sub_258DE20C0(v114, v116 + v119[5], &qword_27F988730, &unk_258F0F8E0);
    sub_258DE20C0(v115, v116 + v119[6], &qword_27F988730, &unk_258F0F8E0);
    sub_258F099E0();
    if ((*&v121 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v121 <= -1.0)
    {
      goto LABEL_136;
    }

    if (v121 >= 1.84467441e19)
    {
      goto LABEL_137;
    }

    if (!is_mul_ok(v121, 0x3E8uLL))
    {
      goto LABEL_138;
    }

    v178 = 1000 * v121;
    v42 = v177;
    v195 = v177[119];
    v198 = v177[118];
    v122 = v177[115];
    v179 = v177[114];
    v123 = objc_opt_self();
    v200 = v190;
    v124 = [v123 sharedPreferences];
    v125 = [v124 longLivedIdentifierUploadingEnabled];

    v126 = v122 + v119[7];
    *v126 = v178;
    *(v126 + 8) = 0;
    *(v122 + v119[8]) = v190;
    v127 = v122 + v119[9];
    *v127 = v186;
    *(v127 + 8) = v185;
    v128 = v122 + v119[10];
    *v128 = v180;
    *(v128 + 8) = v183;
    v129 = v122 + v119[11];
    *v129 = 3;
    *(v129 + 4) = 0;
    *(v122 + v119[12]) = v125 ^ 1;
    v120(v122, 0, 1, v119);
    sub_258E2EAD8(v122, v179, &qword_27F9894E0, &unk_258F106A0);
    swift_beginAccess();
    sub_258E98FFC(v179, v118);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989FD0, &qword_258F13730);
    v130 = swift_allocObject();
    *(v130 + 16) = xmmword_258F0B820;
    *(v130 + 32) = v187;
    *(v130 + 36) = 0;
    *(v130 + 40) = v181;
    *(v130 + 44) = 0;
    *(v130 + 48) = v188;
    *(v130 + 52) = 0;
    *(v130 + 56) = 0;
    *(v130 + 60) = 1;
    sub_258DE20C0(v118, v195, &qword_27F9894E0, &unk_258F106A0);
    swift_setDeallocating();
    sub_258DE2184(v117 + OBJC_IVAR____TtC16MetricsFramework25DeviceSegmentsCohortsImpl_eventMetadata, &qword_27F9894E0, &unk_258F106A0);
    swift_deallocClassInstance();
    *(v195 + *(v175 + 20)) = v130;
    *(v195 + *(v175 + 24)) = 0;
    sub_258E9E160(v195, v198, type metadata accessor for DeviceSegmentsCohorts);
    v44 = v201;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_258DE2A9C(0, v201[2] + 1, 1, v201);
    }

    v132 = v44[2];
    v131 = v44[3];
    if (v132 >= v131 >> 1)
    {
      v44 = sub_258DE2A9C((v131 > 1), v132 + 1, 1, v44);
    }

    v133 = v177[122];
    v134 = v177[121];
    v135 = v177[119];
    v136 = v177[118];

    sub_258E9E1C8(v135, type metadata accessor for DeviceSegmentsCohorts);
    sub_258DE2184(v134, &qword_27F988730, &unk_258F0F8E0);
    sub_258DE2184(v133, &qword_27F988730, &unk_258F0F8E0);
    v44[2] = v132 + 1;
    sub_258E9912C(v136, v44 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v132);
LABEL_21:
    if ((sub_258F0A070() & 1) == 0)
    {
      goto LABEL_125;
    }
  }

  __break(1u);
LABEL_136:
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
LABEL_144:
  __break(1u);
}

uint64_t sub_258E9C198(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43 = sub_258F09B00();
  v6 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258F09A20();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v42 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v37 - v16;
  (*(v11 + 16))(&v37 - v16, a1, v10);
  v18 = sub_258E9DCF0(&qword_27F989870, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v44 = a2;
  v41 = v18;
  v19 = sub_258F0A4A0();
  v38 = v11;
  if (v19)
  {
    v20 = MEMORY[0x277D84F90];
  }

  else
  {
    v23 = *(v3 + *(*v3 + 144));
    v39 = (v6 + 8);
    v40 = v23;
    v24 = (v11 + 8);
    v25 = (v11 + 32);
    v20 = MEMORY[0x277D84F90];
    do
    {
      v45 = 39;
      v46 = 0xE100000000000000;
      v26 = sub_258F099A0();
      v27 = [v40 stringFromDate_];

      v28 = sub_258F0A4F0();
      v30 = v29;

      MEMORY[0x259C9DEB0](v28, v30);

      MEMORY[0x259C9DEB0](39, 0xE100000000000000);
      v31 = v45;
      v32 = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_258DE2990(0, *(v20 + 2) + 1, 1, v20);
      }

      v34 = *(v20 + 2);
      v33 = *(v20 + 3);
      if (v34 >= v33 >> 1)
      {
        v20 = sub_258DE2990((v33 > 1), v34 + 1, 1, v20);
      }

      *(v20 + 2) = v34 + 1;
      v35 = &v20[16 * v34];
      *(v35 + 4) = v31;
      *(v35 + 5) = v32;
      sub_258F09AC0();
      v36 = v42;
      sub_258F09960();
      (*v39)(v9, v43);
      (*v24)(v17, v10);
      (*v25)(v17, v36, v10);
    }

    while ((sub_258F0A4A0() & 1) == 0);
  }

  v45 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DB0, &unk_258F13940);
  sub_258E99738();
  v21 = sub_258F0A490();

  (*(v38 + 8))(v17, v10);
  return v21;
}

uint64_t sub_258E9C590()
{
  v1 = sub_258F0A540();
  MEMORY[0x28223BE20](v1 - 8, v2);
  type metadata accessor for ODDISegmentsCohortsConcluder(0);
  sub_258F0A530();
  v3 = sub_258F0A4C0();
  v5 = v4;
  if (v0)
  {
    v6 = sub_258F0A350();
    v7 = sub_258F0A820();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_258DD8000, v6, v7, "#ODDISegmentsCohortsCalculator: SQL file could not be loaded", v8, 2u);
      MEMORY[0x259C9EF40](v8, -1, -1);
    }

    sub_258DE403C();
    swift_allocError();
    *v9 = 10;
    swift_willThrow();
  }

  else
  {

    v10 = sub_258F0A350();
    v11 = sub_258F0A810();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_258DE3018(v3, v5, &v15);
      _os_log_impl(&dword_258DD8000, v10, v11, "#ODDISegmentsCohortsCalculator: SQL: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x259C9EF40](v13, -1, -1);
      MEMORY[0x259C9EF40](v12, -1, -1);
    }
  }

  return v3;
}

uint64_t sub_258E9C808()
{
  v1 = sub_258F0A540();
  MEMORY[0x28223BE20](v1 - 8, v2);
  type metadata accessor for ODDISegmentsCohortsConcluder(0);
  sub_258F0A530();
  v3 = sub_258F0A4C0();
  v5 = v4;
  if (v0)
  {
    v6 = sub_258F0A350();
    v7 = sub_258F0A820();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_258DD8000, v6, v7, "#ODDISegmentsCohortsConcluder: SQL file could not be loaded", v8, 2u);
      MEMORY[0x259C9EF40](v8, -1, -1);
    }

    sub_258DE403C();
    swift_allocError();
    *v9 = 10;
    swift_willThrow();
  }

  else
  {

    v10 = sub_258F0A350();
    v11 = sub_258F0A810();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_258DE3018(v3, v5, &v15);
      _os_log_impl(&dword_258DD8000, v10, v11, "#ODDISegmentsCohortsConcluder: SQL: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x259C9EF40](v13, -1, -1);
      MEMORY[0x259C9EF40](v12, -1, -1);
    }
  }

  return v3;
}

uint64_t sub_258E9CA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_258E9CA74, 0, 0);
}

uint64_t sub_258E9CA74()
{
  v1 = sub_258E9C808();
  v0[7] = 0;
  v0[8] = v2;
  v0[9] = v1;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_258E85BF0;
  v5 = v0[2];
  v4 = v0[3];

  return sub_258E6A310(v5, v4);
}

uint64_t sub_258E9CB84()
{
  v0 = qword_27F98A080;

  return v0;
}

uint64_t sub_258E9CBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_258E85FAC;

  return sub_258E9CA4C(a1, a2, a3, a4);
}

uint64_t sub_258E9CC9C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v22 - v9;
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v22 - v12;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  v16 = sub_258F0A4E0();
  v17 = sub_258F0A4E0();
  v18 = [v15 URLForResource:v16 withExtension:v17];

  if (v18)
  {
    sub_258F098B0();

    v19 = sub_258F098D0();
    (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
  }

  else
  {
    v19 = sub_258F098D0();
    (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  }

  sub_258E2EAD8(v10, v13, &qword_27F988720, &qword_258F0B830);
  sub_258DE20C0(v13, v6, &qword_27F988720, &qword_258F0B830);
  sub_258F098D0();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v6, 1, v19) == 1)
  {
    sub_258DE2184(v6, &qword_27F988720, &qword_258F0B830);
    result = sub_258F0AB90();
    __break(1u);
  }

  else
  {
    sub_258DE2184(v13, &qword_27F988720, &qword_258F0B830);
    return (*(v20 + 32))(a1, v6, v19);
  }

  return result;
}

void *ODDISegmentsCohortsPlugin.init(defaults:logger:fbfBundleId:)(void *a1, void *a2, unint64_t a3, unint64_t a4)
{
  v60 = a4;
  v5 = v4;
  v56 = a3;
  v66 = a1;
  v54 = *v4;
  v53 = type metadata accessor for ODDISegmentsCohortsConcluder(0);
  MEMORY[0x28223BE20](v53, v7);
  v55 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_258F09B00();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_258F09A20();
  v46 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v12);
  v45 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_258F0A370();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v45 - v21;
  v23 = *(v15 + 16);
  v57 = OBJC_IVAR____TtC16MetricsFramework25ODDISegmentsCohortsPlugin_logger;
  v23(v4 + OBJC_IVAR____TtC16MetricsFramework25ODDISegmentsCohortsPlugin_logger, a2, v14);
  v23(v22, a2, v14);
  type metadata accessor for ODDISegmentsCohortsDataProvider(0);
  v24 = swift_allocObject();
  v61 = v15;
  v25 = *(v15 + 32);
  v50 = v15 + 32;
  v48 = v25;
  v25(v24 + OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsDataProvider_logger, v22, v14);
  v62 = v5;
  *(v5 + OBJC_IVAR____TtC16MetricsFramework25ODDISegmentsCohortsPlugin_dataProvider) = v24;
  v26 = sub_258F0A1F0();
  swift_allocObject();
  v58 = v66;
  v27 = sub_258F0A1E0();
  v64 = v26;
  v65 = MEMORY[0x277D04548];
  v63 = v27;
  v66 = a2;
  v23(v19, a2, v14);
  sub_258F09C20();
  swift_allocObject();
  v28 = v59;
  v29 = sub_258F09BE0();
  v59 = v28;
  if (v28)
  {
    v30 = *(v61 + 8);
    v30(v66, v14);

    v31 = v62;
    v30(v62 + v57, v14);

    type metadata accessor for ODDISegmentsCohortsPlugin(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v32 = v29;
    v33 = v45;
    sub_258F0A090();
    v34 = v47;
    sub_258F09AC0();
    sub_258F09C00();
    (*(v51 + 8))(v34, v52);
    (*(v46 + 8))(v33, v49);
    v35 = v53;
    v36 = v55;
    sub_258E9CC9C(v55 + *(v53 + 20));
    v37 = v36 + *(v35 + 24);
    v38 = v66;
    v23(v37, v66, v14);
    type metadata accessor for ODDIDatabaseFactory();
    *v36 = swift_allocObject();
    v23(v22, v38, v14);

    v39 = sub_258E99D44(v36, v22, v32);
    v31 = v62;
    *(v62 + OBJC_IVAR____TtC16MetricsFramework25ODDISegmentsCohortsPlugin_calculator) = v39;
    v23(v22, v38, v14);
    v40 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v56, v60);
    type metadata accessor for ODDISegmentsCohortsSELFReporter(0);
    v41 = swift_allocObject();
    v48(v41 + OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsSELFReporter_logger, v22, v14);
    *(v41 + OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsSELFReporter_reportingService) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_258F0CA20;
    *(v42 + 32) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A0A8, &qword_258F13A38);
    swift_allocObject();

    v63 = sub_258F09BA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A0B0, qword_258F13A40);
    swift_allocObject();
    v43 = sub_258F09BC0();

    (*(v61 + 8))(v38, v14);
    *(v31 + OBJC_IVAR____TtC16MetricsFramework25ODDISegmentsCohortsPlugin_reporter) = v43;
  }

  return v31;
}

uint64_t sub_258E9D680(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E9D6A0, 0, 0);
}

uint64_t sub_258E9D6A0()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DEE374;

  return sub_258E99894();
}

uint64_t sub_258E9D744(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E9D774, 0, 0);
}

uint64_t sub_258E9D774()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v4 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_258DED218;

  return v4(v0 + 16);
}

uint64_t sub_258E9D840(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E9D860, 0, 0);
}

uint64_t sub_258E9D860()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DEE374;
  v2 = *(v0 + 16);

  return sub_258E9A110(v2);
}

uint64_t ODDISegmentsCohortsPlugin.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework25ODDISegmentsCohortsPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ODDISegmentsCohortsPlugin.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework25ODDISegmentsCohortsPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_258E9DA74(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E9DA98, 0, 0);
}

uint64_t sub_258E9DA98()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED7D0;

  return sub_258E99894();
}

uint64_t sub_258E9DB3C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E9D860, 0, 0);
}

uint64_t sub_258E9DB60(uint64_t a1)
{
  *(v2 + 40) = *v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E9DB94, 0, 0);
}

uint64_t sub_258E9DB94()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v4 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_258DEDBC8;

  return v4(v0 + 16);
}

uint64_t sub_258E9DCF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of ODDISegmentsCohortsPlugin.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of ODDISegmentsCohortsPlugin.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of ODDISegmentsCohortsPlugin.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 136) + **(*v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t sub_258E9E160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258E9E1C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258E9E2E0(uint64_t a1)
{
  v6 = (*(**v1 + 80) + **(**v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t dispatch thunk of ODDISegmentsCohortsReporter.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 80) + **(*v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t ODDISegmentsCohortsSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsSELFReporter_logger;
  v6 = sub_258F0A370();
  (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  *(v4 + OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsSELFReporter_reportingService) = a2;
  return v4;
}

uint64_t ODDISegmentsCohortsSELFReporter.init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsSELFReporter_logger;
  v6 = sub_258F0A370();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsSELFReporter_reportingService) = a2;
  return v2;
}

uint64_t sub_258E9E674(uint64_t a1)
{
  v2[2] = v1;
  v2[3] = *(type metadata accessor for DeviceSegmentsCohorts(0) - 8);
  v4 = swift_task_alloc();
  v5 = *(a1 + 16);
  v2[4] = v4;
  v2[5] = v5;

  return MEMORY[0x2822009F8](sub_258E9E738, 0, 0);
}

uint64_t sub_258E9E738()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  *(v0 + 48) = v2;
  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsSELFReporter_logger;
    *(v0 + 56) = OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsSELFReporter_reportingService;
    *(v0 + 64) = v4;
    *(v0 + 128) = *(v3 + 80);
    *(v0 + 72) = 0;
    if (*(v1 + 16))
    {
      v5 = 0;
      while (1)
      {
        v6 = *(v0 + 32);
        sub_258E9906C(v1 + ((*(v0 + 128) + 32) & ~*(v0 + 128)) + *(*(v0 + 24) + 72) * v5, v6);
        v7 = sub_258E9ED88();
        *(v0 + 80) = v7;
        sub_258E9F5EC(v6, type metadata accessor for DeviceSegmentsCohorts);
        result = v7 >> 62 ? sub_258F0AA20() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v0 + 88) = result;
        v9 = *(v0 + 80);
        if (result)
        {
          break;
        }

        v10 = *(v0 + 72);
        v11 = *(v0 + 48);

        if (v10 + 1 == v11)
        {
          goto LABEL_11;
        }

        v5 = *(v0 + 72) + 1;
        *(v0 + 72) = v5;
        v1 = *(v0 + 40);
        if (v5 >= *(v1 + 16))
        {
          goto LABEL_20;
        }
      }

      if ((v9 & 0xC000000000000001) == 0)
      {
        if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v13 = *(v9 + 32);
        goto LABEL_17;
      }
    }

    else
    {
LABEL_20:
      __break(1u);
    }

    v13 = MEMORY[0x259C9E3B0](0);
LABEL_17:
    v14 = v13;
    *(v0 + 96) = v13;
    *(v0 + 104) = 1;
    v15 = *(v0 + 64);
    v16 = *(v0 + 16);
    v17 = swift_task_alloc();
    *(v0 + 112) = v17;
    *v17 = v0;
    v17[1] = sub_258E9E95C;

    return sub_258EB5738(v14, v16 + v15);
  }

LABEL_11:

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_258E9E95C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_258E9EC88;
  }

  else
  {
    v2 = sub_258E9EA78;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_258E9EA78()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);

  if (v1 != v2)
  {
    v4 = *(v0 + 104);
LABEL_10:
    v11 = *(v0 + 80);
    if ((v11 & 0xC000000000000001) != 0)
    {
LABEL_21:
      v12 = MEMORY[0x259C9E3B0](v4);
    }

    else
    {
      if (v4 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v12 = *(v11 + 8 * v4 + 32);
    }

    v13 = v12;
    *(v0 + 96) = v12;
    *(v0 + 104) = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      v14 = *(v0 + 64);
      v15 = *(v0 + 16);
      v16 = swift_task_alloc();
      *(v0 + 112) = v16;
      *v16 = v0;
      v16[1] = sub_258E9E95C;

      sub_258EB5738(v13, v15 + v14);
      return;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  while (1)
  {
    v3 = *(v0 + 72);
    v4 = *(v0 + 48);

    if (v3 + 1 == v4)
    {
      break;
    }

    v5 = *(v0 + 72) + 1;
    *(v0 + 72) = v5;
    v6 = *(v0 + 40);
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v7 = *(v0 + 32);
    sub_258E9906C(v6 + ((*(v0 + 128) + 32) & ~*(v0 + 128)) + *(*(v0 + 24) + 72) * v5, v7);
    v8 = sub_258E9ED88();
    *(v0 + 80) = v8;
    sub_258E9F5EC(v7, type metadata accessor for DeviceSegmentsCohorts);
    if (v8 >> 62)
    {
      v10 = sub_258F0AA20();
      *(v0 + 88) = v10;
      if (v10)
      {
LABEL_8:
        v4 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 88) = v9;
      if (v9)
      {
        goto LABEL_8;
      }
    }
  }

  v17 = *(v0 + 8);

  v17();
}

uint64_t sub_258E9EC88(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Unable to report event", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v1 + 96);

  swift_willThrow();

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_258E9ED88()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v53 - v4;
  v6 = type metadata accessor for EventMetadata(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x277D84F90];
  sub_258E9F57C(v1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_258E4B7F0(v5);
    return MEMORY[0x277D84F90];
  }

  else
  {
    sub_258E3F8CC(v5, v10);
    v12 = type metadata accessor for DeviceSegmentsCohorts(0);
    v13 = *&v1[*(v12 + 20)];
    if (v13 && (v14 = [objc_allocWithZone(MEMORY[0x277D593E0]) init]) != 0)
    {
      v15 = v14;
      v54 = v12;
      v55 = v1;
      v57 = 0;
      v56 = v10;
      v16 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(3);
      v53 = v15;
      [v15 setEventMetadata_];

      v17 = [objc_allocWithZone(MEMORY[0x277D592E8]) init];
      v18 = *(v13 + 16);
      if (v18)
      {
        v19 = (v13 + 44);
        do
        {
          v20 = *(v19 - 3);
          v21 = *(v19 - 8);
          v22 = *(v19 - 1);
          v23 = *v19;
          v24 = [objc_allocWithZone(MEMORY[0x277D592E0]) init];
          if (v24)
          {
            if (v21)
            {
              v25 = 0;
            }

            else
            {
              v25 = v20;
            }

            v26 = v24;
            [v24 setSegmentType_];
            if (v23)
            {
              v27 = 0;
            }

            else
            {
              v27 = v22;
            }

            [v26 setSegmentDataAvailabilityState_];
            v28 = v17;
            [v28 addSegments_];
          }

          v19 += 32;
          --v18;
        }

        while (v18);
      }

      v29 = v53;
      [v53 setDeviceSegmentsReported_];
      v30 = v29;
      MEMORY[0x259C9DF50]();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_258F0A6D0();
      }

      sub_258F0A700();

      v11 = v59;
      v1 = v55;
      v10 = v56;
      v12 = v54;
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    v31 = *&v1[*(v12 + 24)];
    if (v31 && (v32 = [objc_allocWithZone(MEMORY[0x277D593E0]) init]) != 0)
    {
      v33 = v32;
      v58 = 0;
      v56 = v10;
      v34 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(3);
      v55 = v33;
      [v33 setEventMetadata_];

      v35 = [objc_allocWithZone(MEMORY[0x277D592D8]) init];
      v36 = *(v31 + 16);
      if (v36)
      {
        v37 = (v31 + 48);
        do
        {
          v38 = *(v37 - 4);
          v39 = *(v37 - 12);
          v40 = *(v37 - 2);
          v41 = *(v37 - 4);
          v42 = *v37;
          v43 = objc_allocWithZone(MEMORY[0x277D592D0]);
          v44 = v42;
          v45 = [v43 0x2798CCB78];
          if (v45)
          {
            if (v39)
            {
              v46 = 0;
            }

            else
            {
              v46 = v38;
            }

            v47 = v45;
            [v45 setCohortType_];
            if (v41)
            {
              v48 = 0;
            }

            else
            {
              v48 = v40;
            }

            [v47 setCohortDataAvailabilityState_];
            [v47 setCohortInterval_];
            v49 = v35;
            [v49 addCohorts_];

            v44 = v47;
          }

          v37 += 3;

          --v36;
        }

        while (v36);
      }

      v50 = v55;
      [v55 setDeviceCohortsReported_];
      v51 = v50;
      MEMORY[0x259C9DF50]();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_258F0A6D0();
      }

      sub_258F0A700();

      sub_258E9F5EC(v56, type metadata accessor for EventMetadata);
      return v59;
    }

    else
    {
      sub_258E9F5EC(v10, type metadata accessor for EventMetadata);
    }
  }

  return v11;
}

uint64_t sub_258E9F2A4()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t ODDISegmentsCohortsSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ODDISegmentsCohortsSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework31ODDISegmentsCohortsSELFReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ODDISegmentsCohortsSELFReporter(uint64_t a1)
{
  result = qword_27F98A110;
  if (!qword_27F98A110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E9F4B4(uint64_t a1)
{
  result = sub_258F0A370();
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

uint64_t sub_258E9F57C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E9F5EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t dispatch thunk of ReportingService.reportEvent(event:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_258DE1DC4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ReportingService.reportODSampleEvent(event:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_258DEE37C;

  return v11(a1, a2, a3, a4);
}

unint64_t sub_258E9F8B0(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
    case 7:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x75426D6574737973;
      break;
    case 4:
      result = 0x7954656369766564;
      break;
    case 5:
      result = 0x436D6172676F7270;
      break;
    case 6:
      result = 0x75706E4969726973;
      break;
    case 8:
      result = 0x5474736575716572;
      break;
    case 9:
      result = 0x6E656E6F706D6F63;
      break;
    case 10:
      result = 0x65646F4D6C6ELL;
      break;
    case 11:
      result = 0x65646F4D727361;
      break;
    case 12:
      result = 0x65757165526D756ELL;
      break;
    case 13:
      result = 0x6552414E526D756ELL;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 0x7465537465737361;
      break;
    case 16:
      result = 0xD00000000000002CLL;
      break;
    case 17:
      result = 0xD000000000000013;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_258E9FB04(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_258E9F8B0(*a1);
  v5 = v4;
  if (v3 == sub_258E9F8B0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_258F0AD80();
  }

  return v8 & 1;
}

uint64_t sub_258E9FB8C()
{
  v1 = *v0;
  sub_258F0AE40();
  sub_258E9F8B0(v1);
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258E9FBF0(uint64_t a1)
{
  sub_258E9F8B0(*v1);
  sub_258F0A5B0();
}

uint64_t sub_258E9FC44(uint64_t a1)
{
  v2 = *v1;
  sub_258F0AE40();
  sub_258E9F8B0(v2);
  sub_258F0A5B0();

  return sub_258F0AE90();
}

unint64_t sub_258E9FCA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_258EA35F0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_258E9FCD4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_258E9F8B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_258E9FD1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_258EA35F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_258E9FD60(uint64_t a1)
{
  v2 = sub_258EA2328();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E9FD9C(uint64_t a1)
{
  v2 = sub_258EA2328();

  return MEMORY[0x2821FE720](a1, v2);
}

char *sub_258E9FDD8(uint64_t a1, uint64_t a2)
{
  v3 = sub_258F0A370();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if ((sub_258F0A070() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = *(v4 + 16);
  v9 = MEMORY[0x277D84F90];
  v8(v7, a2, v3);
  while (1)
  {

    sub_258E9FF90(v10, v7, v15);
    memcpy(v16, v15, 0x110uLL);
    if (sub_258E34E74(v16) != 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_258DE2AC4(0, *(v9 + 2) + 1, 1, v9);
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = sub_258DE2AC4((v11 > 1), v12 + 1, 1, v9);
      }

      *(v9 + 2) = v12 + 1;
      memcpy(&v9[272 * v12 + 32], v16, 0x110uLL);
    }

    if ((sub_258F0A070() & 1) == 0)
    {
      break;
    }

    v8(v7, a2, v3);
  }

  return v9;
}

void *sub_258E9FF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v225 = a3;
  v250 = *MEMORY[0x277D85DE8];
  v5 = sub_258F0A540();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v186 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258F0A060();
  v228 = a2;
  if (v10)
  {
    v11 = v10;
    v187 = v9;

    v12 = sub_258F0A350();
    v13 = sub_258F0A810();

    v14 = os_log_type_enabled(v12, v13);
    v224 = a1;
    v226 = v6;
    *&v227 = v5;
    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v249[0] = v16;
      *v15 = 136315138;
      v17 = sub_258F0A420();
      v19 = sub_258DE3018(v17, v18, v249);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_258DD8000, v12, v13, "row data: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x259C9EF40](v16, -1, -1);
      MEMORY[0x259C9EF40](v15, -1, -1);
    }

    v20 = *(v11 + 16);
    v231 = MEMORY[0x277D84F90];
    swift_bridgeObjectRetain_n();
    sub_258E14BA8(0, v20, 0);
    v21 = v11;
    v22 = v231;
    sub_258EA3354(v21, v21, v247);
    v229 = v21;
    if (v20)
    {

      while (1)
      {
        sub_258EA33C0(v249);
        if (!*(&v249[1] + 1))
        {
          break;
        }

        sub_258DE4090(&v249[2] + 8, v237);
        if (swift_dynamicCast())
        {

          *&v237[0] = 0;
          *(&v237[0] + 1) = 0xE000000000000000;
          MEMORY[0x259C9DEB0](34, 0xE100000000000000);
          sub_258F0AB70();
          MEMORY[0x259C9DEB0](34, 0xE100000000000000);
        }

        else
        {
          *&v237[0] = 0;
          *(&v237[0] + 1) = 0xE000000000000000;
          sub_258F0AB70();
        }

        v23 = v237[0];
        *&v237[0] = 34;
        *(&v237[0] + 1) = 0xE100000000000000;
        v24 = sub_258F0AA50();
        MEMORY[0x259C9DEB0](v24);

        MEMORY[0x259C9DEB0](2112034, 0xE300000000000000);
        MEMORY[0x259C9DEB0](v23, *(&v23 + 1));

        v25 = v237[0];
        sub_258DE2184(v249, &qword_27F988DA0, &unk_258F0FFA0);
        v231 = v22;
        v27 = *(v22 + 16);
        v26 = *(v22 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_258E14BA8((v26 > 1), v27 + 1, 1);
          v22 = v231;
        }

        *(v22 + 16) = v27 + 1;
        *(v22 + 16 * v27 + 32) = v25;
        if (!--v20)
        {
          goto LABEL_18;
        }
      }

LABEL_253:
      __break(1u);
    }

LABEL_18:
    sub_258EA33C0(&v239);
    while (*(&v240 + 1))
    {
      v245[0] = v241;
      v245[1] = v242;
      v246 = v243;
      v244[0] = v239;
      v244[1] = v240;
      sub_258DE4090(v245 + 8, v249);
      if (swift_dynamicCast())
      {

        *&v249[0] = 0;
        *(&v249[0] + 1) = 0xE000000000000000;
        MEMORY[0x259C9DEB0](34, 0xE100000000000000);
        sub_258F0AB70();
        MEMORY[0x259C9DEB0](34, 0xE100000000000000);
      }

      else
      {
        *&v249[0] = 0;
        *(&v249[0] + 1) = 0xE000000000000000;
        sub_258F0AB70();
      }

      v33 = v249[0];
      *&v249[0] = 34;
      *(&v249[0] + 1) = 0xE100000000000000;
      v34 = sub_258F0AA50();
      MEMORY[0x259C9DEB0](v34);

      MEMORY[0x259C9DEB0](2112034, 0xE300000000000000);
      MEMORY[0x259C9DEB0](v33, *(&v33 + 1));

      v35 = v249[0];
      sub_258DE2184(v244, &qword_27F988DA0, &unk_258F0FFA0);
      v231 = v22;
      v37 = *(v22 + 16);
      v36 = *(v22 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_258E14BA8((v36 > 1), v37 + 1, 1);
        v22 = v231;
      }

      *(v22 + 16) = v37 + 1;
      *(v22 + 16 * v37 + 32) = v35;
      sub_258EA33C0(&v239);
    }

    v237[2] = v247[2];
    v237[3] = v247[3];
    v237[4] = v247[4];
    v238 = v248;
    v237[0] = v247[0];
    v237[1] = v247[1];
    sub_258DE2184(v237, &qword_27F988D98, &qword_258F14070);
    sub_258DE2184(&v239, &qword_27F988DA8, &unk_258F0D740);
    *&v249[0] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DB0, &unk_258F13940);
    sub_258E0F5E4(&qword_27F988DB8, &qword_27F988DB0, &unk_258F13940, MEMORY[0x277D83958]);
    v38 = sub_258F0A490();
    v40 = v39;

    v41 = sub_258F0A350();
    v42 = sub_258F0A810();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v249[0] = v44;
      *v43 = 136315138;
      v45 = sub_258DE3018(v38, v40, v249);

      *(v43 + 4) = v45;
      _os_log_impl(&dword_258DD8000, v41, v42, "Request no asset raw query results: \n{%s}", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x259C9EF40](v44, -1, -1);
      MEMORY[0x259C9EF40](v43, -1, -1);
    }

    else
    {
    }

    strcpy(&v235, "eventDate");
    WORD5(v235) = 0;
    HIDWORD(v235) = -385875968;
    sub_258F0AA80();
    v46 = v229;
    if (v229[2] && (v47 = sub_258E2EA2C(v249), (v48 & 1) != 0))
    {
      sub_258DE4090(*(v46 + 56) + 32 * v47, &v235);
      sub_258E0F590(v249);
      v49 = swift_dynamicCast();
      if (v49)
      {
        v50 = v233;
      }

      else
      {
        v50 = 0;
      }

      if (v49)
      {
        v51 = *(&v233 + 1);
      }

      else
      {
        v51 = 0;
      }
    }

    else
    {
      sub_258E0F590(v249);
      v50 = 0;
      v51 = 0;
    }

    *&v235 = 0xD000000000000015;
    *(&v235 + 1) = 0x8000000258F18C70;
    sub_258F0AA80();
    if (*(v46 + 16) && (v52 = sub_258E2EA2C(v249), (v53 & 1) != 0))
    {
      sub_258DE4090(*(v46 + 56) + 32 * v52, &v235);
      sub_258E0F590(v249);
      v54 = swift_dynamicCast();
      v55 = v233;
      if (!v54)
      {
        v55 = 0;
      }

      v222 = v55;
      v56 = v54 ^ 1;
    }

    else
    {
      sub_258E0F590(v249);
      v222 = 0;
      v56 = 1;
    }

    v223 = v56;
    *&v235 = 0xD000000000000013;
    *(&v235 + 1) = 0x8000000258F18690;
    sub_258F0AA80();
    if (*(v46 + 16) && (v57 = sub_258E2EA2C(v249), (v58 & 1) != 0))
    {
      sub_258DE4090(*(v46 + 56) + 32 * v57, &v235);
      sub_258E0F590(v249);
      v59 = swift_dynamicCast();
      if (v59)
      {
        v60 = v233;
      }

      else
      {
        v60 = 0;
      }

      if (v59)
      {
        v61 = *(&v233 + 1);
      }

      else
      {
        v61 = 0;
      }

      v220 = v61;
      v221 = v60;
    }

    else
    {
      sub_258E0F590(v249);
      v220 = 0;
      v221 = 0;
    }

    strcpy(&v235, "systemBuild");
    HIDWORD(v235) = -352321536;
    sub_258F0AA80();
    if (*(v46 + 16) && (v62 = sub_258E2EA2C(v249), (v63 & 1) != 0))
    {
      sub_258DE4090(*(v46 + 56) + 32 * v62, &v235);
      sub_258E0F590(v249);
      v64 = swift_dynamicCast();
      if (v64)
      {
        v65 = v233;
      }

      else
      {
        v65 = 0;
      }

      if (v64)
      {
        v66 = *(&v233 + 1);
      }

      else
      {
        v66 = 0;
      }

      v218 = v66;
      v219 = v65;
    }

    else
    {
      sub_258E0F590(v249);
      v218 = 0;
      v219 = 0;
    }

    strcpy(&v235, "deviceType");
    BYTE11(v235) = 0;
    HIDWORD(v235) = -369098752;
    sub_258F0AA80();
    if (*(v46 + 16) && (v67 = sub_258E2EA2C(v249), (v68 & 1) != 0))
    {
      sub_258DE4090(*(v46 + 56) + 32 * v67, &v235);
      sub_258E0F590(v249);
      v69 = swift_dynamicCast();
      if (v69)
      {
        v70 = v233;
      }

      else
      {
        v70 = 0;
      }

      if (v69)
      {
        v71 = *(&v233 + 1);
      }

      else
      {
        v71 = 0;
      }

      v216 = v71;
      v217 = v70;
    }

    else
    {
      sub_258E0F590(v249);
      v216 = 0;
      v217 = 0;
    }

    strcpy(&v235, "programCode");
    HIDWORD(v235) = -352321536;
    sub_258F0AA80();
    if (*(v46 + 16) && (v72 = sub_258E2EA2C(v249), (v73 & 1) != 0))
    {
      sub_258DE4090(*(v46 + 56) + 32 * v72, &v235);
      sub_258E0F590(v249);
      v74 = swift_dynamicCast();
      if (v74)
      {
        v75 = v233;
      }

      else
      {
        v75 = 0;
      }

      if (v74)
      {
        v76 = *(&v233 + 1);
      }

      else
      {
        v76 = 0;
      }

      v214 = v76;
      v215 = v75;
    }

    else
    {
      sub_258E0F590(v249);
      v214 = 0;
      v215 = 0;
    }

    *&v235 = 0x75706E4969726973;
    *(&v235 + 1) = 0xEF656C61636F4C74;
    sub_258F0AA80();
    if (*(v46 + 16) && (v77 = sub_258E2EA2C(v249), (v78 & 1) != 0))
    {
      sub_258DE4090(*(v46 + 56) + 32 * v77, &v235);
      sub_258E0F590(v249);
      v79 = swift_dynamicCast();
      if (v79)
      {
        v80 = v233;
      }

      else
      {
        v80 = 0;
      }

      if (v79)
      {
        v81 = *(&v233 + 1);
      }

      else
      {
        v81 = 0;
      }

      v212 = v81;
      v213 = v80;
    }

    else
    {
      sub_258E0F590(v249);
      v212 = 0;
      v213 = 0;
    }

    *&v235 = 0xD000000000000015;
    *(&v235 + 1) = 0x8000000258F186C0;
    sub_258F0AA80();
    if (*(v46 + 16) && (v82 = sub_258E2EA2C(v249), (v83 & 1) != 0))
    {
      sub_258DE4090(*(v46 + 56) + 32 * v82, &v235);
      sub_258E0F590(v249);
      v84 = swift_dynamicCast();
      if (v84)
      {
        v85 = v233;
      }

      else
      {
        v85 = 0;
      }

      if (v84)
      {
        v86 = *(&v233 + 1);
      }

      else
      {
        v86 = 0;
      }

      v210 = v86;
      v211 = v85;
    }

    else
    {
      sub_258E0F590(v249);
      v210 = 0;
      v211 = 0;
    }

    strcpy(&v235, "requestType");
    HIDWORD(v235) = -352321536;
    sub_258F0AA80();
    if (*(v46 + 16))
    {
      v87 = sub_258E2EA2C(v249);
      v88 = v228;
      if (v89)
      {
        sub_258DE4090(*(v46 + 56) + 32 * v87, &v235);
      }

      else
      {
        v235 = 0u;
        v236 = 0u;
      }
    }

    else
    {
      v235 = 0u;
      v236 = 0u;
      v88 = v228;
    }

    sub_258E0F590(v249);
    if (*(&v236 + 1))
    {
      v90 = swift_dynamicCast();
      if (v90)
      {
        v91 = v233;
      }

      else
      {
        v91 = 0;
      }

      if (v90)
      {
        v92 = *(&v233 + 1);
      }

      else
      {
        v92 = 0;
      }

      v208 = v92;
      v209 = v91;
    }

    else
    {
      sub_258DE2184(&v235, &qword_27F989868, &unk_258F12D70);
      v208 = 0;
      v209 = 0;
    }

    strcpy(&v235, "componentName");
    HIWORD(v235) = -4864;
    sub_258F0AA80();
    if (*(v46 + 16) && (v93 = sub_258E2EA2C(v249), (v94 & 1) != 0))
    {
      sub_258DE4090(*(v46 + 56) + 32 * v93, &v235);
    }

    else
    {
      v235 = 0u;
      v236 = 0u;
    }

    sub_258E0F590(v249);
    if (*(&v236 + 1))
    {
      v95 = swift_dynamicCast();
      if (v95)
      {
        v96 = v233;
      }

      else
      {
        v96 = 0;
      }

      if (v95)
      {
        v97 = *(&v233 + 1);
      }

      else
      {
        v97 = 0;
      }

      v206 = v97;
      v207 = v96;
    }

    else
    {
      sub_258DE2184(&v235, &qword_27F989868, &unk_258F12D70);
      v206 = 0;
      v207 = 0;
    }

    *&v235 = 0x65646F4D6C6ELL;
    *(&v235 + 1) = 0xE600000000000000;
    sub_258F0AA80();
    if (*(v46 + 16) && (v98 = sub_258E2EA2C(v249), (v99 & 1) != 0))
    {
      sub_258DE4090(*(v46 + 56) + 32 * v98, &v235);
    }

    else
    {
      v235 = 0u;
      v236 = 0u;
    }

    sub_258E0F590(v249);
    if (*(&v236 + 1))
    {
      v100 = swift_dynamicCast();
      if (v100)
      {
        v101 = v233;
      }

      else
      {
        v101 = 0;
      }

      if (v100)
      {
        v102 = *(&v233 + 1);
      }

      else
      {
        v102 = 0;
      }

      v204 = v102;
      v205 = v101;
    }

    else
    {
      sub_258DE2184(&v235, &qword_27F989868, &unk_258F12D70);
      v204 = 0;
      v205 = 0;
    }

    strcpy(&v235, "asrMode");
    *(&v235 + 1) = 0xE700000000000000;
    sub_258F0AA80();
    if (*(v46 + 16) && (v103 = sub_258E2EA2C(v249), (v104 & 1) != 0))
    {
      sub_258DE4090(*(v46 + 56) + 32 * v103, &v235);
    }

    else
    {
      v235 = 0u;
      v236 = 0u;
    }

    sub_258E0F590(v249);
    if (*(&v236 + 1))
    {
      v105 = swift_dynamicCast();
      if (v105)
      {
        v106 = v233;
      }

      else
      {
        v106 = 0;
      }

      if (v105)
      {
        v107 = *(&v233 + 1);
      }

      else
      {
        v107 = 0;
      }

      v202 = v107;
      v203 = v106;
    }

    else
    {
      sub_258DE2184(&v235, &qword_27F989868, &unk_258F12D70);
      v202 = 0;
      v203 = 0;
    }

    strcpy(&v235, "numRequests");
    HIDWORD(v235) = -352321536;
    sub_258F0AA80();
    if (*(v46 + 16) && (v108 = sub_258E2EA2C(v249), (v109 & 1) != 0))
    {
      sub_258DE4090(*(v46 + 56) + 32 * v108, &v235);
    }

    else
    {
      v235 = 0u;
      v236 = 0u;
    }

    sub_258E0F590(v249);
    if (*(&v236 + 1))
    {
      v110 = swift_dynamicCast();
      v111 = v233;
      if (!v110)
      {
        v111 = 0;
      }

      v201 = v111;
      v112 = v110 ^ 1;
    }

    else
    {
      sub_258DE2184(&v235, &qword_27F989868, &unk_258F12D70);
      v201 = 0;
      v112 = 1;
    }

    v200 = v112;
    strcpy(&v235, "numRNARequests");
    HIBYTE(v235) = -18;
    sub_258F0AA80();
    if (*(v46 + 16) && (v113 = sub_258E2EA2C(v249), (v114 & 1) != 0))
    {
      sub_258DE4090(*(v46 + 56) + 32 * v113, &v235);
    }

    else
    {
      v235 = 0u;
      v236 = 0u;
    }

    sub_258E0F590(v249);
    if (*(&v236 + 1))
    {
      v115 = swift_dynamicCast();
      v116 = v233;
      if (!v115)
      {
        v116 = 0;
      }

      v199 = v116;
      v117 = v115 ^ 1;
    }

    else
    {
      sub_258DE2184(&v235, &qword_27F989868, &unk_258F12D70);
      v199 = 0;
      v117 = 1;
    }

    v198 = v117;
    *&v235 = 0xD000000000000016;
    *(&v235 + 1) = 0x8000000258F18CD0;
    sub_258F0AA80();
    if (*(v46 + 16) && (v118 = sub_258E2EA2C(v249), (v119 & 1) != 0))
    {
      sub_258DE4090(*(v46 + 56) + 32 * v118, &v235);
    }

    else
    {
      v235 = 0u;
      v236 = 0u;
    }

    sub_258E0F590(v249);
    if (*(&v236 + 1))
    {
      v120 = swift_dynamicCast();
      v121 = v233;
      if (!v120)
      {
        v121 = 0;
      }

      v197 = v121;
      v122 = v120 ^ 1;
    }

    else
    {
      sub_258DE2184(&v235, &qword_27F989868, &unk_258F12D70);
      v197 = 0;
      v122 = 1;
    }

    v196 = v122;
    strcpy(&v235, "assetSetName");
    BYTE13(v235) = 0;
    HIWORD(v235) = -5120;
    sub_258F0AA80();
    if (*(v46 + 16) && (v123 = sub_258E2EA2C(v249), (v124 & 1) != 0))
    {
      sub_258DE4090(*(v46 + 56) + 32 * v123, &v235);
    }

    else
    {
      v235 = 0u;
      v236 = 0u;
    }

    sub_258E0F590(v249);
    if (*(&v236 + 1))
    {
      v125 = swift_dynamicCast();
      if (v125)
      {
        v126 = v233;
      }

      else
      {
        v126 = 0;
      }

      if (v125)
      {
        v127 = *(&v233 + 1);
      }

      else
      {
        v127 = 0;
      }

      v194 = v127;
      v195 = v126;
    }

    else
    {
      sub_258DE2184(&v235, &qword_27F989868, &unk_258F12D70);
      v194 = 0;
      v195 = 0;
    }

    *&v235 = 0xD000000000000013;
    *(&v235 + 1) = 0x8000000258F18A80;
    sub_258F0AA80();
    if (*(v46 + 16) && (v128 = sub_258E2EA2C(v249), (v129 & 1) != 0))
    {
      sub_258DE4090(*(v46 + 56) + 32 * v128, &v235);
    }

    else
    {
      v235 = 0u;
      v236 = 0u;
    }

    sub_258E0F590(v249);
    if (*(&v236 + 1))
    {
      v130 = swift_dynamicCast();
      if (v130)
      {
        v131 = v233;
      }

      else
      {
        v131 = 0;
      }

      if (v130)
      {
        v132 = *(&v233 + 1);
      }

      else
      {
        v132 = 0;
      }

      v192 = v132;
      v193 = v131;
    }

    else
    {
      sub_258DE2184(&v235, &qword_27F989868, &unk_258F12D70);
      v192 = 0;
      v193 = 0;
    }

    *&v235 = 0xD00000000000002CLL;
    *(&v235 + 1) = 0x8000000258F18A50;
    sub_258F0AA80();
    sub_258E262F8(v249, v46, &v235);
    sub_258E0F590(v249);
    if (*(&v236 + 1))
    {
      v133 = swift_dynamicCast();
      v134 = v233;
      if (!v133)
      {
        v134 = 0;
      }

      v191 = v134;
      v135 = v133 ^ 1;
    }

    else
    {
      sub_258DE2184(&v235, &qword_27F989868, &unk_258F12D70);
      v191 = 0;
      v135 = 1;
    }

    v190 = v135;
    *&v233 = 0xD000000000000012;
    *(&v233 + 1) = 0x8000000258F18CF0;
    sub_258F0AA80();
    sub_258E262F8(v249, v46, &v233);

    sub_258E0F590(v249);
    if (!v234)
    {
      sub_258DE2184(&v233, &qword_27F989868, &unk_258F12D70);
      v145 = sub_258F0A350();
      v146 = sub_258F0A810();
      if (os_log_type_enabled(v145, v146))
      {
        v147 = v51;
        v148 = v88;
        v149 = swift_slowAlloc();
        *v149 = 0;
        _os_log_impl(&dword_258DD8000, v145, v146, "assetFailureReason is nil or empty", v149, 2u);
        MEMORY[0x259C9EF40](v149, -1, -1);

        v150 = sub_258F0A370();
        v151 = v148;
        v51 = v147;
        (*(*(v150 - 8) + 8))(v151, v150);
      }

      else
      {

        v163 = sub_258F0A370();
        (*(*(v163 - 8) + 8))(v88, v163);
      }

      v164 = MEMORY[0x277D84F90];
LABEL_250:
      *&v249[1] = v222;
      *&v249[2] = v221;
      *(&v249[2] + 1) = v220;
      *&v249[3] = v219;
      *(&v249[3] + 1) = v218;
      *&v249[4] = v217;
      *(&v249[4] + 1) = v216;
      LOBYTE(v235) = v200;
      LOBYTE(v233) = v198;
      LOBYTE(v232[0]) = v196;
      *&v249[0] = v50;
      *(&v249[0] + 1) = v51;
      BYTE8(v249[1]) = v223;
      *&v249[5] = v215;
      *(&v249[5] + 1) = v214;
      *&v249[6] = v213;
      *(&v249[6] + 1) = v212;
      *&v249[7] = v211;
      *(&v249[7] + 1) = v210;
      *&v249[8] = v209;
      *(&v249[8] + 1) = v208;
      *&v249[9] = v207;
      *(&v249[9] + 1) = v206;
      *&v249[10] = v203;
      *(&v249[10] + 1) = v202;
      *&v249[11] = v205;
      *(&v249[11] + 1) = v204;
      LODWORD(v249[12]) = v201;
      BYTE4(v249[12]) = v200;
      DWORD2(v249[12]) = v199;
      BYTE12(v249[12]) = v198;
      LODWORD(v249[13]) = v197;
      BYTE4(v249[13]) = v196;
      *(&v249[13] + 1) = v195;
      *&v249[14] = v194;
      *(&v249[14] + 1) = v191;
      LOBYTE(v249[15]) = v190;
      *(&v249[15] + 1) = v193;
      *&v249[16] = v192;
      *(&v249[16] + 1) = v164;
      nullsub_1();
      return memcpy(v225, v249, 0x110uLL);
    }

    sub_258DEB8B8(&v233, &v235);
    sub_258DE4090(&v235, v249);
    v136 = sub_258F0A350();
    v137 = sub_258F0A810();
    v138 = os_log_type_enabled(v136, v137);
    v188 = v51;
    v189 = v50;
    if (v138)
    {
      v139 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      *&v233 = v140;
      *v139 = 136315138;
      __swift_project_boxed_opaque_existential_1(v249, *(&v249[1] + 1));
      swift_getDynamicType();
      v141 = sub_258F0AF10();
      v143 = v142;
      __swift_destroy_boxed_opaque_existential_1Tm(v249);
      v144 = sub_258DE3018(v141, v143, &v233);

      *(v139 + 4) = v144;
      _os_log_impl(&dword_258DD8000, v136, v137, "assetFailureReason type: %s", v139, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v140);
      MEMORY[0x259C9EF40](v140, -1, -1);
      MEMORY[0x259C9EF40](v139, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v249);
    }

    sub_258DE4090(&v235, v249);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A168, &qword_258F14078);
    v152 = swift_dynamicCast();
    v153 = v228;
    if (v152)
    {
      v154 = v233;
      v232[0] = v233;
    }

    else
    {
      sub_258DE4090(&v235, v232);
      if (!swift_dynamicCast() || (v155 = v187, sub_258F0A530(), v156 = sub_258F0A500(), v158 = v157, , (*(v226 + 8))(v155, v227), v158 >> 60 == 15))
      {
        v156 = 0;
        v158 = 0xC000000000000000;
      }

      v159 = objc_opt_self();
      v160 = sub_258F098F0();
      sub_258DEB978(v156, v158);
      v232[0] = 0;
      v161 = [v159 JSONObjectWithData:v160 options:0 error:v232];

      v162 = v232[0];
      if (!v161)
      {
        v165 = v162;
        v166 = sub_258F09890();

        swift_willThrow();
        v164 = MEMORY[0x277D84F90];
        goto LABEL_240;
      }

      sub_258F0A9C0();
      swift_unknownObjectRelease();
      if (swift_dynamicCast())
      {
        v154 = v232[0];
      }

      else
      {
        v154 = 0;
        v232[0] = 0;
      }

      v153 = v228;
    }

    v164 = MEMORY[0x277D84F90];
    if (!v154)
    {
LABEL_242:
      v172 = v164[2];
      swift_bridgeObjectRetain_n();
      if (v172)
      {
        v174 = 0;
        v175 = v164 + 5;
        *&v173 = 134218498;
        v227 = v173;
        v229 = v164;
        v226 = v172;
        while (v174 < v164[2])
        {
          v177 = *(v175 - 1);
          v176 = *v175;

          v178 = sub_258F0A350();
          v179 = sub_258F0A810();
          if (os_log_type_enabled(v178, v179))
          {
            v180 = swift_slowAlloc();
            v181 = swift_slowAlloc();
            *&v249[0] = v181;
            *v180 = v227;
            *(v180 + 4) = v174;
            *(v180 + 12) = 2080;
            v182 = sub_258DE3018(v177, v176, v249);

            *(v180 + 14) = v182;
            *(v180 + 22) = 2080;
            *(v180 + 24) = sub_258DE3018(0x676E69727453, 0xE600000000000000, v249);
            _os_log_impl(&dword_258DD8000, v178, v179, "assetFailureReason[%ld] = %s (type: %s)", v180, 0x20u);
            swift_arrayDestroy();
            v183 = v181;
            v172 = v226;
            v153 = v228;
            MEMORY[0x259C9EF40](v183, -1, -1);
            MEMORY[0x259C9EF40](v180, -1, -1);
          }

          else
          {
          }

          ++v174;
          v175 += 2;
          v164 = v229;
          if (v172 == v174)
          {
            goto LABEL_249;
          }
        }

        __break(1u);
        goto LABEL_253;
      }

LABEL_249:

      v184 = sub_258F0A370();
      (*(*(v184 - 8) + 8))(v153, v184);
      __swift_destroy_boxed_opaque_existential_1Tm(&v235);

      v51 = v188;
      v50 = v189;
      goto LABEL_250;
    }

    v167 = v154[2];
    if (!v167)
    {

      goto LABEL_242;
    }

    v230 = MEMORY[0x277D84F90];
    sub_258E14BA8(0, v167, 0);
    v164 = v230;
    v229 = v154;
    v168 = (v154 + 4);
    do
    {
      sub_258DE4090(v168, v249);
      *&v233 = 0;
      *(&v233 + 1) = 0xE000000000000000;
      sub_258F0AB70();
      v169 = v233;
      __swift_destroy_boxed_opaque_existential_1Tm(v249);
      v230 = v164;
      v171 = v164[2];
      v170 = v164[3];
      if (v171 >= v170 >> 1)
      {
        sub_258E14BA8((v170 > 1), v171 + 1, 1);
        v164 = v230;
      }

      v164[2] = v171 + 1;
      *&v164[2 * v171 + 4] = v169;
      v168 += 32;
      --v167;
    }

    while (v167);

LABEL_240:
    v153 = v228;
    goto LABEL_242;
  }

  v28 = sub_258F0A350();
  v29 = sub_258F0A840();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_258DD8000, v28, v29, "failed to get row", v30, 2u);
    v31 = v30;
    a2 = v228;
    MEMORY[0x259C9EF40](v31, -1, -1);
  }

  v32 = sub_258F0A370();
  (*(*(v32 - 8) + 8))(a2, v32);
  sub_258EA3644(v249);
  return memcpy(v225, v249, 0x110uLL);
}

uint64_t RequestWithNoAssetData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A120, &unk_258F13DB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v24 - v6;
  v56 = *(v1 + 16);
  LODWORD(v55) = *(v1 + 24);
  v8 = *(v1 + 32);
  v53 = *(v1 + 40);
  v54 = v8;
  v9 = *(v1 + 48);
  v51 = *(v1 + 56);
  v52 = v9;
  v10 = *(v1 + 64);
  v49 = *(v1 + 72);
  v50 = v10;
  v11 = *(v1 + 88);
  v47 = *(v1 + 80);
  v48 = v11;
  v12 = *(v1 + 104);
  v45 = *(v1 + 96);
  v46 = v12;
  v13 = *(v1 + 120);
  v43 = *(v1 + 112);
  v44 = v13;
  v14 = *(v1 + 136);
  v41 = *(v1 + 128);
  v42 = v14;
  v15 = *(v1 + 152);
  v39 = *(v1 + 144);
  v40 = v15;
  v16 = *(v1 + 168);
  v38 = *(v1 + 160);
  v35 = v16;
  v17 = *(v1 + 184);
  v37 = *(v1 + 176);
  v36 = v17;
  v34 = *(v1 + 192);
  v59 = *(v1 + 196);
  v33 = *(v1 + 200);
  v32 = *(v1 + 204);
  v31 = *(v1 + 208);
  v30 = *(v1 + 212);
  v18 = *(v1 + 224);
  v28 = *(v1 + 216);
  v29 = v18;
  v26 = *(v1 + 232);
  v27 = *(v1 + 240);
  v19 = *(v1 + 256);
  v24[1] = *(v1 + 248);
  v24[2] = v19;
  v25 = *(v1 + 264);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258EA2328();
  sub_258F0AEE0();
  LOBYTE(v58) = 0;
  v20 = v57;
  sub_258F0ACA0();
  if (v20)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v57 = v4;
  LOBYTE(v58) = 1;
  sub_258F0ACC0();
  LOBYTE(v58) = 2;
  sub_258F0ACA0();
  LOBYTE(v58) = 3;
  sub_258F0ACA0();
  LOBYTE(v58) = 4;
  sub_258F0ACA0();
  LOBYTE(v58) = 5;
  sub_258F0ACA0();
  LOBYTE(v58) = 6;
  sub_258F0ACA0();
  LOBYTE(v58) = 7;
  sub_258F0ACA0();
  LOBYTE(v58) = 8;
  sub_258F0ACA0();
  LOBYTE(v58) = 9;
  v55 = v7;
  v56 = v3;
  sub_258F0ACA0();
  LOBYTE(v58) = 10;
  sub_258F0ACA0();
  LOBYTE(v58) = 11;
  sub_258F0ACA0();
  LOBYTE(v58) = 12;
  v60[0] = v59;
  sub_258F0ACE0();
  LOBYTE(v58) = 13;
  v60[0] = v32;
  sub_258F0ACE0();
  LOBYTE(v58) = 14;
  v60[0] = v30;
  sub_258F0ACE0();
  LOBYTE(v58) = 15;
  sub_258F0ACA0();
  LOBYTE(v58) = 16;
  sub_258F0ACF0();
  LOBYTE(v58) = 17;
  sub_258F0ACA0();
  v58 = v25;
  v60[0] = 18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DB0, &unk_258F13940);
  sub_258EA2FE8(&qword_27F98A130, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  v22 = v55;
  v23 = v56;
  sub_258F0ACD0();
  return (*(v57 + 8))(v22, v23);
}

unint64_t sub_258EA2328()
{
  result = qword_27F98A128;
  if (!qword_27F98A128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A128);
  }

  return result;
}

uint64_t RequestWithNoAssetData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A138, &qword_258F13DC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v38 - v8;
  v10 = a1[3];
  v133 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_258EA2328();
  sub_258F0AED0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v133);
  }

  v11 = v6;
  LOBYTE(v75[0]) = 0;
  v13 = sub_258F0ABF0();
  v72 = v14;
  LOBYTE(v75[0]) = 1;
  v15 = sub_258F0AC10();
  v132 = v16 & 1;
  LOBYTE(v75[0]) = 2;
  v71 = sub_258F0ABF0();
  v69 = v17;
  LOBYTE(v75[0]) = 3;
  v70 = sub_258F0ABF0();
  v68 = v18;
  LOBYTE(v75[0]) = 4;
  v59 = sub_258F0ABF0();
  v67 = v19;
  LOBYTE(v75[0]) = 5;
  v58 = sub_258F0ABF0();
  v66 = v20;
  LOBYTE(v75[0]) = 6;
  v57 = sub_258F0ABF0();
  v65 = v21;
  LOBYTE(v75[0]) = 7;
  v56 = sub_258F0ABF0();
  v64 = v22;
  LOBYTE(v75[0]) = 8;
  v55 = sub_258F0ABF0();
  v63 = v23;
  v73 = 0;
  LOBYTE(v75[0]) = 9;
  v24 = sub_258F0ABF0();
  v62 = v25;
  v73 = 0;
  v26 = v24;
  LOBYTE(v75[0]) = 10;
  v54 = sub_258F0ABF0();
  v61 = v27;
  v73 = 0;
  LOBYTE(v75[0]) = 11;
  v53 = sub_258F0ABF0();
  v60 = v28;
  v73 = 0;
  LOBYTE(v75[0]) = 12;
  v52 = sub_258F0AC30();
  v73 = 0;
  v130 = BYTE4(v52) & 1;
  LOBYTE(v75[0]) = 13;
  v51 = sub_258F0AC30();
  v73 = 0;
  v127 = BYTE4(v51) & 1;
  LOBYTE(v75[0]) = 14;
  v50 = sub_258F0AC30();
  v73 = 0;
  v124 = BYTE4(v50) & 1;
  LOBYTE(v75[0]) = 15;
  v47 = sub_258F0ABF0();
  v48 = v29;
  v49 = 0;
  LOBYTE(v75[0]) = 16;
  v45 = sub_258F0AC40();
  v73 = 0;
  v121 = v30 & 1;
  LOBYTE(v75[0]) = 17;
  v44 = sub_258F0ABF0();
  v46 = v31;
  v73 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DB0, &unk_258F13940);
  v118 = 18;
  sub_258EA2FE8(&qword_27F989BA0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  v32 = v73;
  sub_258F0AC20();
  v73 = v32;
  if (v32)
  {
    (*(v11 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v133);

    if (!v49)
    {
    }
  }

  else
  {
    (*(v11 + 8))(v9, v5);
    v39 = v119;
    v74[0] = v13;
    v74[1] = v72;
    v41 = v15;
    v74[2] = v15;
    v40 = v132;
    LOBYTE(v74[3]) = v132;
    v74[4] = v71;
    v74[5] = v69;
    v74[6] = v70;
    v74[7] = v68;
    v74[8] = v59;
    v74[9] = v67;
    v74[10] = v58;
    v74[11] = v66;
    v74[12] = v57;
    v74[13] = v65;
    v74[14] = v56;
    v74[15] = v64;
    v74[16] = v55;
    v74[17] = v63;
    v74[18] = v26;
    v43 = v26;
    v74[19] = v62;
    v74[20] = v53;
    v74[21] = v60;
    v74[22] = v54;
    v74[23] = v61;
    LODWORD(v74[24]) = v52;
    LODWORD(v49) = v130;
    BYTE4(v74[24]) = v130;
    *(&v74[24] + 5) = v128;
    HIBYTE(v74[24]) = v129;
    LODWORD(v74[25]) = v51;
    v42 = v127;
    BYTE4(v74[25]) = v127;
    *(&v74[25] + 5) = v125;
    HIBYTE(v74[25]) = v126;
    LODWORD(v74[26]) = v50;
    *(&v74[26] + 5) = v122;
    HIDWORD(v74[30]) = *&v120[3];
    *(&v74[30] + 1) = *v120;
    v33 = v124;
    BYTE4(v74[26]) = v124;
    HIBYTE(v74[26]) = v123;
    v35 = v47;
    v34 = v48;
    v74[27] = v47;
    v74[28] = v48;
    v36 = v45;
    v74[29] = v45;
    v37 = v121;
    LOBYTE(v74[30]) = v121;
    v74[31] = v44;
    v74[32] = v46;
    v74[33] = v119;
    memcpy(a2, v74, 0x110uLL);
    sub_258EA3054(v74, v75);
    __swift_destroy_boxed_opaque_existential_1Tm(v133);
    v75[0] = v13;
    v75[1] = v72;
    v75[2] = v41;
    v76 = v40;
    v78 = v71;
    v79 = v69;
    v80 = v70;
    v81 = v68;
    *v77 = *v131;
    *&v77[3] = *&v131[3];
    v82 = v59;
    v83 = v67;
    v84 = v58;
    v85 = v66;
    v86 = v57;
    v87 = v65;
    v88 = v56;
    v89 = v64;
    v90 = v55;
    v91 = v63;
    v92 = v43;
    v93 = v62;
    v94 = v53;
    v95 = v60;
    v96 = v54;
    v97 = v61;
    v98 = v52;
    v99 = v49;
    v100 = v128;
    v101 = v129;
    v102 = v51;
    v103 = v42;
    v104 = v125;
    v105 = v126;
    v106 = v50;
    v107 = v33;
    v108 = v122;
    v109 = v123;
    v110 = v35;
    v111 = v34;
    v112 = v36;
    v113 = v37;
    *&v114[3] = *&v120[3];
    *v114 = *v120;
    v115 = v44;
    v116 = v46;
    v117 = v39;
    return sub_258EA308C(v75);
  }
}

uint64_t sub_258EA2FE8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988DB0, &unk_258F13940);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258EA30F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 272))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_258EA3150(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_258EA3250()
{
  result = qword_27F98A150;
  if (!qword_27F98A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A150);
  }

  return result;
}

unint64_t sub_258EA32A8()
{
  result = qword_27F98A158;
  if (!qword_27F98A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A158);
  }

  return result;
}

unint64_t sub_258EA3300()
{
  result = qword_27F98A160;
  if (!qword_27F98A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A160);
  }

  return result;
}

uint64_t sub_258EA3354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = -1 << *(a1 + 32);
  v4 = ~v3;
  *a3 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = -v3;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  *(a3 + 8) = result;
  *(a3 + 16) = v4;
  *(a3 + 24) = 0;
  *(a3 + 32) = v9 & v6;
  v10 = -1 << *(a2 + 32);
  v11 = ~v10;
  *(a3 + 40) = a2;
  v14 = *(a2 + 64);
  v12 = a2 + 64;
  v13 = v14;
  v15 = -v10;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  *(a3 + 48) = v12;
  *(a3 + 56) = v11;
  *(a3 + 64) = 0;
  *(a3 + 72) = v16 & v13;
  *(a3 + 80) = 0;
  return result;
}

void sub_258EA33C0(uint64_t a1@<X8>)
{
  if (*(v1 + 80) == 1)
  {
    *(a1 + 64) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (!v7)
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v33 = 0;
        v31 = 0u;
        v32 = 0u;
        *v1 = v3;
        v1[1] = v4;
        v1[2] = v6;
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_25;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v8 = v1[3];
LABEL_12:
  v12 = (v7 - 1) & v7;
  sub_258DEB85C(*(v3 + 48) + 40 * (__clz(__rbit64(v7)) | (v8 << 6)), &v31);
  v13 = *(&v32 + 1);
  *v1 = v3;
  v1[1] = v4;
  v1[2] = v6;
  v1[3] = v8;
  v1[4] = v12;
  if (v13)
  {
    v34 = v31;
    v35 = v32;
    v36 = v33;
    v14 = v1[5];
    v15 = v1[6];
    v17 = v1[7];
    v16 = v1[8];
    v18 = v1[9];
    if (v18)
    {
      v19 = v1[8];
LABEL_22:
      v23 = (v18 - 1) & v18;
      sub_258DE4090(*(v14 + 56) + ((v19 << 11) | (32 * __clz(__rbit64(v18)))), &v29);
      v24 = *(&v30 + 1);
      v1[5] = v14;
      v1[6] = v15;
      v1[7] = v17;
      v1[8] = v19;
      v1[9] = v23;
      if (v24)
      {
        sub_258DEB8B8(&v29, &v31);
        v25 = v35;
        *a1 = v34;
        *(a1 + 16) = v25;
        *(a1 + 32) = v36;
        sub_258DEB8B8(&v31, (a1 + 40));
        return;
      }

LABEL_27:
      sub_258E0F590(&v34);
      v26 = &qword_27F989868;
      v27 = &unk_258F12D70;
      v28 = &v29;
      goto LABEL_28;
    }

    v20 = (v17 + 64) >> 6;
    if (v20 <= v16 + 1)
    {
      v21 = v16 + 1;
    }

    else
    {
      v21 = (v17 + 64) >> 6;
    }

    v22 = v21 - 1;
    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v19 >= v20)
      {
        v29 = 0u;
        v30 = 0u;
        v1[5] = v14;
        v1[6] = v15;
        v1[7] = v17;
        v1[8] = v22;
        v1[9] = 0;
        goto LABEL_27;
      }

      v18 = *(v15 + 8 * v19);
      ++v16;
      if (v18)
      {
        goto LABEL_22;
      }
    }

LABEL_31:
    __break(1u);
    return;
  }

LABEL_25:
  v26 = &unk_27F98A170;
  v27 = &unk_258F14080;
  v28 = &v31;
LABEL_28:
  sub_258DE2184(v28, v26, v27);
  *(v1 + 80) = 1;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
}

unint64_t sub_258EA35F0(uint64_t a1, uint64_t a2)
{
  v2 = sub_258F0AD90();

  if (v2 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v2;
  }
}

double sub_258EA3644(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_258F0FD10;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  return result;
}

uint64_t sub_258EA36AC(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: RequestWithNoAssetDataProvider", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_258EA378C()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RequestWithNoAssetDataProvider(uint64_t a1)
{
  result = qword_27F98A180;
  if (!qword_27F98A180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_258EA387C()
{
  result = qword_27F98A190;
  if (!qword_27F98A190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A190);
  }

  return result;
}

uint64_t sub_258EA38D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258DE1DC4;

  return sub_258EA368C();
}

uint64_t RequestWithNoAssetMetrics.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  RequestWithNoAssetMetrics.init(defaults:logger:fbfBundleId:)(a1, a2, a3, a4);
  return v8;
}

uint64_t RequestWithNoAssetMetrics.init(defaults:logger:fbfBundleId:)(void *a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v112 = a3;
  v111 = a4;
  v117 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v101 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v108 = &v90 - v10;
  v96 = sub_258F09B00();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96, v11);
  v93 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_258F09A20();
  v92 = *(v94 - 8);
  MEMORY[0x28223BE20](v94, v13);
  v91 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_258F09A70();
  v118 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v106 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v90 - v20;
  v22 = sub_258F0A370();
  v23 = *(v22 - 8);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v103 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v109 = &v90 - v29;
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v90 - v31;
  v33 = v23 + 16;
  v34 = *(v23 + 16);
  v34(&v90 - v31, a2, v22);
  type metadata accessor for RequestWithNoAssetDataProvider(0);
  v35 = swift_allocObject();
  v114 = v23;
  v36 = *(v23 + 32);
  v107 = v32;
  v100 = v23 + 32;
  v99 = v36;
  v36(v35 + OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetDataProvider_logger, v32, v22);
  v37 = v125;
  *(v125 + 16) = v35;
  v102 = OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_logger;
  v38 = v37;
  v39 = a2;
  v34((v37 + OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_logger), a2, v22);
  sub_258F09A60();
  v40 = *(v118 + 32);
  v110 = OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_oddId;
  v105 = v21;
  v116 = v15;
  v98 = v118 + 32;
  v97 = v40;
  v40(v38 + OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_oddId, v21, v15);
  v41 = (v38 + OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_fbfBundleId);
  v42 = v111;
  *v41 = v112;
  v41[1] = v42;
  v112 = v41;
  v43 = sub_258F0A1F0();
  swift_allocObject();
  v44 = v117;
  v45 = sub_258F0A1E0();
  v123 = v43;
  v124 = MEMORY[0x277D04548];
  v122 = v45;
  v117 = v39;
  v115 = v22;
  v104 = v33;
  v34(v109, v39, v22);
  v46 = sub_258F09C20();
  swift_allocObject();
  v47 = v113;
  v48 = sub_258F09BE0();
  v113 = v47;
  if (v47)
  {
    v49 = v115;
    v50 = *(v114 + 8);
    v50(v117, v115);

    v51 = v125;

    v50(v102 + v51, v49);
    (*(v118 + 8))(&v110[v51], v116);

    type metadata accessor for RequestWithNoAssetMetrics(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v52 = v48;
    v53 = v91;
    sub_258F0A090();
    v54 = v93;
    sub_258F09AC0();
    v111 = v52;
    sub_258F09C10();
    (*(v95 + 8))(v54, v96);
    (*(v92 + 8))(v53, v94);
    v55 = v107;
    v56 = v115;
    v34(v107, v117, v115);
    v109 = v46;
    v57 = v34;
    v102 = *(v118 + 16);
    v58 = v105;
    v59 = v116;
    (v102)(v105, &v110[v125], v116);
    v110 = v44;

    v60 = v108;
    sub_258EA4518(v108);
    v57(v103, v55, v56);
    v61 = v57;
    v62 = v101;
    sub_258DECF90(v60, v101);
    (v102)(v106, v58, v59);
    type metadata accessor for BiomeResultsWrapperFactory();
    v63 = swift_allocObject();
    v64 = type metadata accessor for CAAnalyticsEventSubmitter();
    v65 = swift_allocObject();
    v123 = v64;
    v124 = &off_286A2C648;
    v122 = v65;
    type metadata accessor for RequestWithNoAssetsCalculator(0);
    v66 = swift_allocObject();
    v67 = __swift_mutable_project_boxed_opaque_existential_1(&v122, v64);
    v102 = &v90;
    MEMORY[0x28223BE20](v67, v67);
    v69 = (&v90 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v70 + 16))(v69);
    v71 = *v69;
    v120 = v64;
    v121 = &off_286A2C648;
    *&v119 = v71;
    v72 = v103;
    v73 = v115;
    v61(v66 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_logger, v103, v115);
    sub_258DECF90(v62, v66 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_sqlFileURL);
    v74 = (v66 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_bookmarkService);
    v74[3] = v109;
    v74[4] = &off_286A2FA30;
    *v74 = v111;
    sub_258DED000(v62);
    v75 = *(v114 + 8);
    v76 = v73;
    v75(v72, v73);
    sub_258DED000(v108);
    v77 = v116;
    (*(v118 + 8))(v105, v116);
    v78 = v107;
    v75(v107, v76);
    v97(v66 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_oddId, v106, v77);
    *(v66 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_biomeResultsFactory) = v63;
    sub_258DEE384(&v119, v66 + 16);
    *(v66 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_defaults) = v110;
    __swift_destroy_boxed_opaque_existential_1Tm(&v122);
    *(v125 + OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_calculator) = v66;
    v79 = v78;
    v80 = v117;
    v61(v78, v117, v76);
    v82 = *v112;
    v81 = v112[1];

    v83 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v82, v81);
    type metadata accessor for RequestWithNoAssetSELFReporter(0);
    v84 = swift_allocObject();
    v85 = (v84 + OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetSELFReporter_reportingService);
    v85[3] = type metadata accessor for SELFReportingService();
    v85[4] = &protocol witness table for SELFReportingService;
    *v85 = v83;
    v99(v84 + OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetSELFReporter_logger, v79, v76);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_258F0CA20;
    *(v86 + 32) = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A1B8, &qword_258F14160);
    swift_allocObject();

    v122 = sub_258F09BA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A1C0, qword_258F14168);
    swift_allocObject();
    v87 = sub_258F09BC0();

    v75(v80, v76);
    v88 = v125;
    *(v125 + OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_reporter) = v87;
    return v88;
  }

  return v51;
}

uint64_t sub_258EA4518@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for RequestWithNoAssetsCalculator(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258F0A4E0();
  v5 = sub_258F0A4E0();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_258F098B0();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_258F098D0();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t type metadata accessor for RequestWithNoAssetMetrics(uint64_t a1)
{
  result = qword_27F98A1F0;
  if (!qword_27F98A1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EA469C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258EA46BC, 0, 0);
}

uint64_t sub_258EA46BC()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DEE374;

  return sub_258EA368C();
}

uint64_t sub_258EA4758(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258EA4788, 0, 0);
}

uint64_t sub_258EA4788()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v4 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_258DED218;

  return v4(v0 + 16);
}

uint64_t sub_258EA4854(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258EA4874, 0, 0);
}

uint64_t sub_258EA4874(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A840();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Doing work", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v1 + 32) = v5;
  *v5 = v1;
  v5[1] = sub_258DED984;
  v6 = *(v1 + 16);

  return sub_258EA5D8C(v6);
}

uint64_t RequestWithNoAssetMetrics.deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_oddId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t RequestWithNoAssetMetrics.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_oddId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_258EA4B90(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258EA4BB4, 0, 0);
}

uint64_t sub_258EA4BB4()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED7D0;

  return sub_258EA368C();
}

uint64_t sub_258EA4C50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258EA4854(a1);
}

uint64_t sub_258EA4CEC(uint64_t a1)
{
  *(v2 + 40) = *v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258EA4D20, 0, 0);
}

uint64_t sub_258EA4D20()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v4 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_258DEDBC8;

  return v4(v0 + 16);
}

uint64_t sub_258EA4E88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RequestWithNoAssetMetrics(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258EA4ECC()
{
  result = qword_27F98A1E8;
  if (!qword_27F98A1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A1E8);
  }

  return result;
}

uint64_t sub_258EA4F28(uint64_t a1)
{
  result = sub_258F0A370();
  if (v2 <= 0x3F)
  {
    result = sub_258F09A70();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of RequestWithNoAssetMetrics.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of RequestWithNoAssetMetrics.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 144) + **(*v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of RequestWithNoAssetMetrics.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 152) + **(*v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t sub_258EA5480(uint64_t a1)
{
  v6 = (*(**v1 + 80) + **(**v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t dispatch thunk of RequestWithNoAssetReporter.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 80) + **(*v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

void *RequestWithNoAssetsCalculator.__allocating_init(logger:sqlFileURL:bookmarkService:oddId:userDefaults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v44 = a4;
  v42 = a3;
  v38 = a2;
  v40 = a1;
  v6 = sub_258F09A70();
  v7 = *(v6 - 8);
  v36 = v6;
  v37 = v7;
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v34 - v13;
  v15 = sub_258F0A370();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v34 = *(v16 + 16);
  v35 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34();
  sub_258DE20C0(a2, v14, &qword_27F988720, &qword_258F0B830);
  (*(v7 + 16))(v10, v44, v6);
  type metadata accessor for BiomeResultsWrapperFactory();
  v39 = swift_allocObject();
  v19 = type metadata accessor for CAAnalyticsEventSubmitter();
  v20 = swift_allocObject();
  v45[3] = v19;
  v45[4] = &off_286A2C648;
  v45[0] = v20;
  type metadata accessor for RequestWithNoAssetsCalculator(0);
  v21 = swift_allocObject();
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v45, v19);
  MEMORY[0x28223BE20](v22, v22);
  v24 = (&v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  v21[5] = v19;
  v21[6] = &off_286A2C648;
  v21[2] = v26;
  v27 = v35;
  (v34)(v21 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_logger, v35, v15);
  v28 = v14;
  sub_258DE20C0(v14, v21 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  v29 = (v21 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_bookmarkService);
  v29[3] = sub_258F09C20();
  v29[4] = &off_286A2FA30;
  *v29 = v42;
  v30 = v36;
  v31 = v37;
  (*(v37 + 8))(v44, v36);
  sub_258DE2184(v38, &qword_27F988720, &qword_258F0B830);
  v32 = *(v16 + 8);
  v32(v40, v15);
  sub_258DE2184(v28, &qword_27F988720, &qword_258F0B830);
  v32(v27, v15);
  (*(v31 + 32))(v21 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_oddId, v41, v30);
  *(v21 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_biomeResultsFactory) = v39;
  *(v21 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_defaults) = v43;
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  return v21;
}

uint64_t RequestWithNoAssetResults.eventStreamMetadata.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t RequestWithNoAssetResults.conversationStreamMetadata.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t RequestWithNoAssetResults.combinedRequestNoAssetData.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t CombinedRequestNoAssetData.requestWithNoAssetData.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t CombinedRequestNoAssetData.eventMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CombinedRequestNoAssetData(0) + 20);

  return sub_258DDE438(v3, a1);
}

uint64_t CombinedRequestNoAssetData.eventMetadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CombinedRequestNoAssetData(0) + 20);

  return sub_258DDE4E0(a1, v3);
}

uint64_t sub_258EA5D8C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_258F09B00();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = sub_258F09A20();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258EA5EE0, 0, 0);
}

uint64_t sub_258EA5EE0()
{
  v50 = v0;

  v1 = sub_258F0A350();
  v2 = sub_258F0A810();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v49[0] = v4;
    *v3 = 136315138;
    sub_258F09A70();
    sub_258EA7E04(&qword_27F988758, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v5 = sub_258F0AD60();
    v7 = sub_258DE3018(v5, v6, v49);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_258DD8000, v1, v2, "SQL calculator invoked: RequestWithNoAssetsCalculator %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x259C9EF40](v4, -1, -1);
    MEMORY[0x259C9EF40](v3, -1, -1);
  }

  v8 = v0[14];
  sub_258DE20C0(v0[7] + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_sqlFileURL, v8, &qword_27F988720, &qword_258F0B830);
  v9 = sub_258F098D0();
  v10 = (*(*(v9 - 8) + 48))(v8, 1, v9);
  sub_258DE2184(v8, &qword_27F988720, &qword_258F0B830);
  if (v10 == 1)
  {
    v11 = sub_258F0A350();
    v12 = sub_258F0A840();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_258DD8000, v11, v12, "No URL provided for the sql file", v13, 2u);
      MEMORY[0x259C9EF40](v13, -1, -1);
    }

    sub_258DE1858();
    swift_allocError();
    *v14 = 9;
    swift_willThrow();

    v31 = v0[1];
  }

  else
  {
    sub_258DE0310();
    v15 = sub_258DE05FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988740, &qword_258F0B850);
    sub_258F0A190();
    *(swift_allocObject() + 16) = xmmword_258F0F8A0;
    v16 = sub_258F0A1B0();
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v19 + 24) = v18;
    sub_258F0A160();
    sub_258F0A160();
    v20 = v15;
    v21 = sub_258F0A350();
    v22 = sub_258F0A810();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v49[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_258DE3018(0xD000000000000013, 0x8000000258F1A7D0, v49);
      _os_log_impl(&dword_258DD8000, v21, v22, "%s: current date data NOT included for aggregation.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x259C9EF40](v24, -1, -1);
      MEMORY[0x259C9EF40](v23, -1, -1);
    }

    v25 = v0[7];
    sub_258F0A050();
    v26 = v20;

    v27 = sub_258F0A010();
    v28 = sub_258F0A040();

    type metadata accessor for BiomeResultsWrapper();
    inited = swift_initStackObject();
    *(inited + 16) = v28;
    v30 = MEMORY[0x259C9E880]();
    sub_258EA6630(inited, v25, v0 + 5, v49);
    v33 = v0[13];
    v47 = v26;
    v34 = v0[11];
    v35 = v0[12];
    v37 = v0[9];
    v36 = v0[10];
    v38 = v0[8];
    v48 = v0[6];
    objc_autoreleasePoolPop(v30);
    v39 = v49[0];
    sub_258F09AC0();
    sub_258F09BB0();
    (*(v37 + 8))(v36, v38);
    v46 = sub_258F09B70();
    v40 = *(v35 + 8);
    v40(v33, v34);
    v41 = sub_258F09B50();
    v42 = MEMORY[0x259C9E880](v41);
    sub_258EA6764(v39);
    v44 = v43;

    objc_autoreleasePoolPop(v42);
    swift_setDeallocating();

    v40(v33, v34);
    v45 = MEMORY[0x277D84F90];
    *v48 = v46;
    v48[1] = v45;
    v48[2] = v44;

    v31 = v0[1];
  }

  return v31();
}

uint64_t sub_258EA65EC@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = sub_258EDECA4(a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A258, qword_258F145E0);
  *(a1 + 24) = result;
  *a1 = v3;
  return result;
}

void sub_258EA6630(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char **a4@<X8>)
{
  v8 = sub_258E9FDD8(*(a1 + 16), a2 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_logger);
  sub_258DFCFC4(a1, 0);
  if (v4)
  {

    *a3 = v4;
  }

  else
  {

    v9 = sub_258F0A350();
    v10 = sub_258F0A810();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = *(v8 + 2);

      _os_log_impl(&dword_258DD8000, v9, v10, "RequestWithNoAssetsCalculator query yielded %ld results", v11, 0xCu);
      MEMORY[0x259C9EF40](v11, -1, -1);
    }

    else
    {
    }

    *a4 = v8;
  }
}

void sub_258EA6764(int64_t a1)
{
  v172 = a1;
  v1 = type metadata accessor for CombinedRequestNoAssetData(0);
  v141 = *(v1 - 8);
  v142 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v145 = (&v138 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v140 = type metadata accessor for EventMetadata(0);
  MEMORY[0x28223BE20](v140, v4);
  v144 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v146 = &v138 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A240, &qword_258F145C8);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v165 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v138 - v14;
  v16 = sub_258F09B00();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_258F09A20();
  v157 = *(v170 - 8);
  v22 = MEMORY[0x28223BE20](v170, v21);
  v24 = &v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = (&v138 - v27);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v171 = &v138 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v155 = &v138 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v166 = (&v138 - v37);
  MEMORY[0x28223BE20](v36, v38);
  v40 = &v138 - v39;
  if (qword_27F988680 != -1)
  {
    goto LABEL_89;
  }

  while (1)
  {
    v168 = qword_280CC6068;
    sub_258F09AC0();
    sub_258F09930();
    v42 = *(v17 + 8);
    v41 = v17 + 8;
    v43 = v20;
    v163 = v42;
    v42(v20, v16);
    sub_258F099E0();
    if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v44 <= -1.0)
    {
      goto LABEL_91;
    }

    if (v44 >= 1.84467441e19)
    {
      goto LABEL_92;
    }

    v158 = v44;
    if (!is_mul_ok(v44, 0x3E8uLL))
    {
      goto LABEL_93;
    }

    v152 = v40;
    v159 = v28;
    v150 = v24;
    v161 = v41;
    v162 = v16;
    v169 = v15;
    v177 = MEMORY[0x277D84FA0];
    v176 = sub_258DFC054(MEMORY[0x277D84F90]);
    v45 = v172;
    v16 = *(v172 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A248, &qword_258F145D0);
    sub_258F0A430();
    v40 = v165;
    v28 = v166;
    v15 = v170;
    v160 = v43;
    if (!v16)
    {
LABEL_38:
      v16 = 0;
      v139 = 1000 * v158;
      v65 = v176 + 64;
      v64 = *(v176 + 64);
      v156 = v176;
      v66 = 1 << *(v176 + 32);
      v67 = -1;
      if (v66 < 64)
      {
        v67 = ~(-1 << v66);
      }

      v17 = v67 & v64;
      v151 = OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_defaults;
      v138 = OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_oddId;
      v172 = (v66 + 63) >> 6;
      v166 = (v157 + 16);
      v168 = (v157 + 32);
      v164 = (v157 + 8);
      v153 = "bmitter";
      v154 = OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_logger;
      v147 = MEMORY[0x277D84F90];
      v28 = &qword_258F145D8;
      *&v46 = 67109120;
      v149 = v46;
      *&v46 = 134217984;
      v148 = v46;
      v24 = v169;
      v68 = v159;
      v158 = v176 + 64;
LABEL_41:
      v20 = v167;
      while (v17)
      {
        v70 = v40;
        v71 = v16;
LABEL_53:
        v74 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v75 = v74 | (v71 << 6);
        v76 = v156;
        v77 = v157;
        v78 = v155;
        (*(v157 + 16))(v155, *(v156 + 48) + *(v157 + 72) * v75, v15);
        v79 = *(*(v76 + 56) + 8 * v75);
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A250, &qword_258F145D8);
        v81 = v15;
        v82 = v80;
        v83 = *(v80 + 48);
        v84 = v78;
        v40 = v70;
        (*(v77 + 32))(v70, v84, v81);
        *&v70[v83] = v79;
        (*(*(v82 - 8) + 56))(v70, 0, 1, v82);

        v20 = v167;
        v68 = v159;
        v24 = v169;
LABEL_54:
        sub_258EA8228(v40, v24);
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A250, &qword_258F145D8);
        if ((*(*(v85 - 8) + 48))(v24, 1, v85) == 1)
        {

          (*v164)(v152, v170);

          return;
        }

        v86 = v24;
        v87 = *&v24[*(v85 + 48)];
        v15 = v170;
        (*v168)(v171, v86, v170);
        v88 = v160;
        sub_258F09AC0();
        sub_258F09930();
        v163(v88, v162);
        sub_258F099E0();
        if (v89 > -1.0 && v89 < 1.84467441e19 && v89 == trunc(v89))
        {
          v90 = v89;
          sub_258EA7E04(&qword_27F989520, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
          if ((sub_258F0A4B0() & 1) == 0 || (v91 = *&v20[v151], v92 = sub_258F0A4E0(), v93 = [v91 BOOLForKey_], v92, v93))
          {
            v112 = v87 - 208;
            v113 = *(v87 + 16) + 1;
            do
            {
              if (!--v113)
              {
                v117 = sub_258F09A70();
                (*(*(v117 - 8) + 56))(v146, 1, 1, v117);
                goto LABEL_75;
              }

              v114 = *(v112 + 280);
              v112 += 272;
            }

            while (!v114);
            swift_bridgeObjectRetain_n();
            v115 = v146;
            sub_258F09A30();
            swift_bridgeObjectRelease_n();
            v116 = sub_258F09A70();
            if ((*(*(v116 - 8) + 48))(v115, 1, v116) != 1)
            {
              goto LABEL_78;
            }

LABEL_75:
            v118 = sub_258F0A350();
            v119 = sub_258F0A810();
            if (os_log_type_enabled(v118, v119))
            {
              v120 = swift_slowAlloc();
              *v120 = 0;
              _os_log_impl(&dword_258DD8000, v118, v119, "Request with no asset Calculator: Found no device aggregation Id", v120, 2u);
              MEMORY[0x259C9EF40](v120, -1, -1);
            }

LABEL_78:
            v121 = [objc_allocWithZone(MEMORY[0x277D593F8]) init];
            [v121 setStartTimestampInSecondsSince1970_];
            v143 = v121;
            if (v121)
            {
              [v143 setNumberOfSeconds_];
            }

            v122 = sub_258F09A70();
            v123 = *(v122 - 8);
            v124 = v144;
            (*(v123 + 16))(v144, &v167[v138], v122);
            v125 = *(v123 + 56);
            v125(v124, 0, 1, v122);
            v126 = v140;
            sub_258DE20C0(v146, v124 + *(v140 + 20), &qword_27F988730, &unk_258F0F8E0);
            v125(v124 + v126[6], 1, 1, v122);
            v127 = v124 + v126[7];
            *v127 = v139;
            *(v127 + 8) = 0;
            *(v124 + v126[8]) = v143;
            v128 = v124 + v126[9];
            *v128 = 0;
            *(v128 + 8) = 1;
            v129 = v124 + v126[10];
            *v129 = 0;
            *(v129 + 8) = 1;
            v130 = v124 + v126[11];
            *v130 = 0;
            *(v130 + 4) = 1;
            *(v124 + v126[12]) = 2;
            v131 = v145;
            sub_258DDE438(v124, v145 + *(v142 + 20));
            *v131 = v87;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v147 = sub_258DE2BE4(0, v147[2] + 1, 1, v147);
            }

            v132 = v165;
            v134 = v147[2];
            v133 = v147[3];
            if (v134 >= v133 >> 1)
            {
              v147 = sub_258DE2BE4((v133 > 1), v134 + 1, 1, v147);
            }

            sub_258DE2128(v144);
            v135 = *v164;
            v136 = v170;
            (*v164)(v68, v170);
            v135(v171, v136);
            v15 = v136;
            v137 = v147;
            v147[2] = v134 + 1;
            sub_258EA8298(v145, v137 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v134);
            sub_258DE2184(v146, &qword_27F988730, &unk_258F0F8E0);
            v65 = v158;
            v40 = v132;
            v28 = &qword_258F145D8;
            v24 = v169;
            goto LABEL_41;
          }

          v94 = sub_258F0A350();
          v95 = sub_258F0A800();
          if (os_log_type_enabled(v94, v95))
          {
            v96 = swift_slowAlloc();
            *v96 = v149;
            v97 = sub_258F0A4E0();
            v98 = [v91 BOOLForKey_];

            v20 = v167;
            *(v96 + 4) = v98;

            _os_log_impl(&dword_258DD8000, v94, v95, "Skipping asset request metrics execution for current date; AssetMetricsWorker.includeCurrentDateForAggregation: %{BOOL}d", v96, 8u);
            MEMORY[0x259C9EF40](v96, -1, -1);
          }

          else
          {
          }

          v24 = v169;
          v28 = &qword_258F145D8;

          v109 = *v164;
          v15 = v170;
          (*v164)(v68, v170);
          v109(v171, v15);
          v40 = v165;
          v65 = v158;
        }

        else
        {

          sub_258F099E0();
          if (v99 > 0.0)
          {
            v69 = *v164;
            (*v164)(v68, v15);
            v69(v171, v15);
            v24 = v169;
            v65 = v158;
            v28 = &qword_258F145D8;
          }

          else
          {
            v100 = v68;
            v101 = v150;
            (*v166)(v150, v100, v15);
            v102 = sub_258F0A350();
            v103 = sub_258F0A820();
            if (os_log_type_enabled(v102, v103))
            {
              v104 = swift_slowAlloc();
              *v104 = v148;
              sub_258F099E0();
              v106 = v105;
              v107 = *v164;
              (*v164)(v101, v15);
              *(v104 + 4) = v106;
              _os_log_impl(&dword_258DD8000, v102, v103, "Request with no asset event contains date before 1970 %f", v104, 0xCu);
              v108 = v104;
              v20 = v167;
              MEMORY[0x259C9EF40](v108, -1, -1);

              v68 = v159;
              v107(v159, v15);
              v107(v171, v15);
              v28 = &qword_258F145D8;
              v24 = v169;
              v65 = v158;
              v40 = v165;
            }

            else
            {

              v111 = *v164;
              (*v164)(v101, v15);
              v111(v100, v15);
              v111(v171, v15);
              v24 = v169;
              v68 = v100;
              v65 = v158;
              v40 = v165;
              v28 = &qword_258F145D8;
            }
          }
        }
      }

      if (v172 <= (v16 + 1))
      {
        v72 = v16 + 1;
      }

      else
      {
        v72 = v172;
      }

      v73 = v72 - 1;
      while (1)
      {
        v71 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v71 >= v172)
        {
          v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A250, &qword_258F145D8);
          (*(*(v110 - 8) + 56))(v40, 1, 1, v110);
          v17 = 0;
          v16 = v73;
          goto LABEL_54;
        }

        v17 = *(v65 + 8 * v71);
        ++v16;
        if (v17)
        {
          v70 = v40;
          v16 = v71;
          goto LABEL_53;
        }
      }

      __break(1u);
      goto LABEL_87;
    }

    v47 = 0;
    v172 = v45 + 32;
    v164 = (v157 + 8);
    while (1)
    {
      v48 = (v172 + 272 * v47);
      v24 = v48[1];
      if (!v24)
      {
        goto LABEL_9;
      }

      v20 = *v48;

      v49 = sub_258F0A4E0();
      v50 = [v168 dateFromString_];

      if (v50)
      {
        break;
      }

      v15 = v170;
LABEL_9:
      if (++v47 == v16)
      {
        goto LABEL_38;
      }
    }

    sub_258F09A00();

    v51 = v177;
    if (*(v177 + 16))
    {
      sub_258F0AE40();
      sub_258F0A5B0();
      v52 = sub_258F0AE90();
      v53 = -1 << *(v51 + 32);
      v54 = v52 & ~v53;
      if ((*(v51 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
      {
        v55 = ~v53;
        while (1)
        {
          v56 = (*(v51 + 48) + 16 * v54);
          v57 = *v56 == v20 && v24 == v56[1];
          if (v57 || (sub_258F0AD80() & 1) != 0)
          {
            break;
          }

          v54 = (v54 + 1) & v55;
          if (((*(v51 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        v15 = v170;
        (*v164)(v28, v170);

LABEL_37:
        v40 = v165;
        goto LABEL_9;
      }
    }

LABEL_21:
    v17 = 0;
    v15 = MEMORY[0x277D84F90];
LABEL_22:
    v58 = (v172 + 272 * v17);
    v40 = v17;
    while (v40 < v16)
    {
      memcpy(v174, v58, sizeof(v174));
      v17 = (v40 + 1);
      if (__OFADD__(v40, 1))
      {
        goto LABEL_88;
      }

      if (v174[1] && (v174[0] == v20 && v174[1] == v24 || (sub_258F0AD80() & 1) != 0))
      {
        sub_258EA3054(v174, &v173);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v175 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_258E14D98(0, *(v15 + 2) + 1, 1);
          v15 = v175;
        }

        v61 = *(v15 + 2);
        v60 = *(v15 + 3);
        if (v61 >= v60 >> 1)
        {
          sub_258E14D98((v60 > 1), v61 + 1, 1);
          v15 = v175;
        }

        *(v15 + 2) = v61 + 1;
        memcpy(&v15[272 * v61 + 32], v174, 0x110uLL);
        v28 = v166;
        if (v17 == v16)
        {
LABEL_35:
          v62 = v176;
          v63 = swift_isUniquelyReferenced_nonNull_native();
          v174[0] = v62;
          sub_258ED76A8(v15, v28, v63);
          v176 = v174[0];
          sub_258E05B1C(v174, v20, v24);

          v15 = v170;
          (*v164)(v28, v170);
          goto LABEL_37;
        }

        goto LABEL_22;
      }

      ++v40;
      v58 += 272;
      if (v17 == v16)
      {
        goto LABEL_35;
      }
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    swift_once();
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
}

uint64_t RequestWithNoAssetsCalculator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_bookmarkService));
  v3 = OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_oddId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t RequestWithNoAssetsCalculator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_bookmarkService));
  v3 = OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_oddId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_258EA7C88@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_logger;
  v4 = sub_258F0A370();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_258EA7D10(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258EA5D8C(a1);
}

uint64_t sub_258EA7DAC(uint64_t a1)
{
  result = sub_258EA7E04(&qword_27F98A208, type metadata accessor for RequestWithNoAssetsCalculator, &unk_258F14448);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258EA7E04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258EA7E4C(uint64_t a1)
{
  result = sub_258EA7E04(&qword_27F98A210, type metadata accessor for RequestWithNoAssetsCalculator, &protocol conformance descriptor for RequestWithNoAssetsCalculator);
  *(a1 + 8) = result;
  return result;
}

void sub_258EA7EDC(uint64_t a1)
{
  sub_258EA7F60();
  if (v1 <= 0x3F)
  {
    type metadata accessor for EventMetadata(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_258EA7F60()
{
  if (!qword_27F98A228)
  {
    v0 = sub_258F0A710();
    if (!v1)
    {
      atomic_store(v0, &qword_27F98A228);
    }
  }
}

void sub_258EA7FB8(uint64_t a1)
{
  sub_258F0A370();
  if (v1 <= 0x3F)
  {
    sub_258DE3B74(319);
    if (v2 <= 0x3F)
    {
      sub_258F09A70();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of RequestWithNoAssetsCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 216) + **(*v2 + 216));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t sub_258EA8228(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A240, &qword_258F145C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258EA8298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CombinedRequestNoAssetData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258EA82FC(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v5 = *(a3 + 16);
  if (v5)
  {
    for (i = (a3 + 40); ; i += 2)
    {
      v8 = *i;
      v12[0] = *(i - 1);
      v12[1] = v8;

      (a1)(&v11, v12);
      if (v3)
      {
        break;
      }

      if (v11)
      {
        MEMORY[0x259C9DF50](v9);
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_258F0A6D0();
        }

        sub_258F0A700();
        v4 = v13;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

uint64_t sub_258EA8418(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x277D84F90];
  sub_258E14D38(0, v5, 0);
  v6 = v17;
  v9 = (a3 + 40);
  while (1)
  {
    v10 = *v9;
    v15[0] = *(v9 - 1);
    v15[1] = v10;

    (a1)(&v16, v15);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v16;
    v17 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_258E14D38((v12 > 1), v13 + 1, 1);
      v6 = v17;
    }

    v9 += 2;
    *(v6 + 16) = v13 + 1;
    *(v6 + 8 * v13 + 32) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_258EA855C(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v30 = MEMORY[0x277D84F90];
    sub_258F0AB40();
    v9 = a3 + 32;
    for (i = v6 - 1; ; --i)
    {
      v11 = *(v9 + 16);
      v12 = *(v9 + 48);
      v27 = *(v9 + 32);
      v28 = v12;
      v13 = *(v9 + 16);
      v26[0] = *v9;
      v26[1] = v13;
      v14 = *(v9 + 48);
      v22 = v27;
      v23 = v14;
      v29 = *(v9 + 64);
      v24 = *(v9 + 64);
      v20 = v26[0];
      v21 = v11;
      sub_258E1A4E0(v26, &v15);
      a1(&v25, &v20);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v17 = v22;
      v18 = v23;
      v19 = v24;
      v15 = v20;
      v16 = v21;
      sub_258E1A518(&v15);
      sub_258F0AB20();
      sub_258F0AB50();
      sub_258F0AB60();
      sub_258F0AB30();
      if (!i)
      {
        return v30;
      }

      v9 += 72;
    }

    v17 = v22;
    v18 = v23;
    v19 = v24;
    v15 = v20;
    v16 = v21;
    sub_258E1A518(&v15);

    __break(1u);
  }

  return result;
}

uint64_t sub_258EA86C8(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v46 = MEMORY[0x277D84F90];
    sub_258F0AB40();
    v9 = a3 + 32;
    for (i = v6 - 1; ; --i)
    {
      v11 = *(v9 + 80);
      v12 = *(v9 + 112);
      v43 = *(v9 + 96);
      v44 = v12;
      v13 = *(v9 + 16);
      v14 = *(v9 + 48);
      v39 = *(v9 + 32);
      v40 = v14;
      v15 = *(v9 + 48);
      v16 = *(v9 + 80);
      v41 = *(v9 + 64);
      v42 = v16;
      v17 = *(v9 + 16);
      v38[0] = *v9;
      v38[1] = v17;
      v18 = *(v9 + 112);
      v34 = v43;
      v35 = v18;
      v30 = v39;
      v31 = v15;
      v32 = v41;
      v33 = v11;
      v45 = *(v9 + 128);
      v36 = *(v9 + 128);
      v28 = v38[0];
      v29 = v13;
      sub_258E1976C(v38, &v19);
      a1(&v37, &v28);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v25 = v34;
      v26 = v35;
      v27 = v36;
      v21 = v30;
      v22 = v31;
      v23 = v32;
      v24 = v33;
      v19 = v28;
      v20 = v29;
      sub_258E197A4(&v19);
      sub_258F0AB20();
      sub_258F0AB50();
      sub_258F0AB60();
      sub_258F0AB30();
      if (!i)
      {
        return v46;
      }

      v9 += 136;
    }

    v25 = v34;
    v26 = v35;
    v27 = v36;
    v21 = v30;
    v22 = v31;
    v23 = v32;
    v24 = v33;
    v19 = v28;
    v20 = v29;
    sub_258E197A4(&v19);

    __break(1u);
  }

  return result;
}

uint64_t sub_258EA8874(void (*a1)(uint64_t *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v15 = MEMORY[0x277D84F90];
    sub_258F0AB40();
    v9 = (a3 + 32);
    for (i = v6 - 1; ; --i)
    {
      memcpy(__dst, v9, sizeof(__dst));
      memcpy(__src, v9, sizeof(__src));
      sub_258EA3054(__dst, v11);
      a1(&v13, __src);
      if (v4)
      {
        break;
      }

      v4 = 0;
      memcpy(v11, __src, sizeof(v11));
      sub_258EA308C(v11);
      sub_258F0AB20();
      sub_258F0AB50();
      sub_258F0AB60();
      sub_258F0AB30();
      if (!i)
      {
        return v15;
      }

      v9 += 272;
    }

    memcpy(v11, __src, sizeof(v11));
    sub_258EA308C(v11);

    __break(1u);
  }

  return result;
}

uint64_t RequestWithNoAssetSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_258EAB414(a1, v7, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v8;
}

uint64_t RequestWithNoAssetSELFReporter.init(logger:reportingService:)(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  MEMORY[0x28223BE20](v7, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_258EAB000(a1, v9, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v11;
}

uint64_t sub_258EA8B20(uint64_t a1)
{
  *(v2 + 24) = v1;
  v4 = sub_258F0A370();
  *(v2 + 32) = v4;
  *(v2 + 40) = *(v4 - 8);
  *(v2 + 48) = swift_task_alloc();
  v5 = type metadata accessor for CombinedRequestNoAssetData(0);
  *(v2 + 56) = v5;
  *(v2 + 64) = *(v5 - 8);
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = *a1;
  *(v2 + 120) = *(a1 + 16);

  return MEMORY[0x2822009F8](sub_258EA8C74, 0, 0);
}

void sub_258EA8C74()
{
  v50 = v0;
  v0[16] = OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetSELFReporter_logger;

  v1 = sub_258F0A350();
  v2 = sub_258F0A810();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[15];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_258DD8000, v1, v2, "RequestWithNoAssetSELFReporter reporting results for %ld days", v5, 0xCu);
    MEMORY[0x259C9EF40](v5, -1, -1);
  }

  else
  {
  }

  v6 = v0[15];
  v7 = *(v6 + 16);
  v0[17] = v7;
  if (v7)
  {
    v8 = v0[8];
    v9 = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    do
    {
      v14 = v0[11];
      v15 = v0[12];
      sub_258EAB514(v9, v15);
      v16 = *(*v15 + 16);
      v48 = 0;
      v49 = 0xE000000000000000;
      sub_258F0AAE0();

      v48 = 0xD000000000000013;
      v49 = 0x8000000258F1D600;
      v0[2] = v16;
      v17 = sub_258F0AD60();
      MEMORY[0x259C9DEB0](v17);

      MEMORY[0x259C9DEB0](0xD000000000000010, 0x8000000258F1D620);
      sub_258EA8298(v15, v14);
      v18 = sub_258F0A550();
      MEMORY[0x259C9DEB0](v18);

      v20 = v48;
      v19 = v49;

      v21 = sub_258F0A350();
      v22 = sub_258F0A810();

      if (os_log_type_enabled(v21, v22))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v48 = v12;
        *v11 = 136315138;
        v13 = sub_258DE3018(v20, v19, &v48);

        *(v11 + 4) = v13;
        _os_log_impl(&dword_258DD8000, v21, v22, "%s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        MEMORY[0x259C9EF40](v12, -1, -1);
        MEMORY[0x259C9EF40](v11, -1, -1);
      }

      else
      {
      }

      v9 += v10;
      --v7;
    }

    while (v7);
    v23 = v0[8];
    v24 = v0[5];
    v25 = v0[3];
    v0[18] = OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetSELFReporter_reportingService;
    v0[19] = 0;
    v26 = v0[15];
    if (!*(v26 + 16))
    {
      __break(1u);
      return;
    }

    v27 = v0[16];
    v28 = v0[10];
    v29 = v0[11];
    v30 = v0[6];
    v31 = v0[4];
    sub_258EAB514(v26 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v28);
    sub_258DEB8C8(0, &qword_27F98A270, 0x277D593C0);
    sub_258EAB514(v28, v29);
    (*(v24 + 16))(v30, v25 + v27, v31);
    v32 = sub_258EAA04C(v29, v30);
    v0[20] = v32;
    v33 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
    v0[21] = v33;
    if (v33)
    {
      v34 = v0[16];
      v35 = v0[3];
      v36 = (v35 + v0[18]);
      v37 = v33;
      [v33 setRequestsWithoutAssetsDigestReported_];
      LOBYTE(v48) = 1;
      v38 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
      [v37 setEventMetadata_];

      v39 = v36[3];
      v40 = v36[4];
      __swift_project_boxed_opaque_existential_1(v36, v39);
      v47 = (*(v40 + 8) + **(v40 + 8));
      v41 = swift_task_alloc();
      v0[22] = v41;
      *v41 = v0;
      v41[1] = sub_258EA92E4;

      v47(v37, v35 + v34, v39, v40);
      return;
    }

    v42 = sub_258F0A350();
    v43 = sub_258F0A820();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_258DD8000, v42, v43, "Failed to generate final payload", v44, 2u);
      MEMORY[0x259C9EF40](v44, -1, -1);
    }

    v45 = v0[10];

    sub_258EAB578(v45);
  }

  v46 = v0[1];

  v46();
}

uint64_t sub_258EA92E4()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_258EA9C2C;
  }

  else
  {
    v2 = sub_258EA93F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_258EA93F8()
{
  v72 = v0;
  sub_258EAB514(*(v0 + 80), *(v0 + 72));
  v1 = sub_258F0A350();
  v2 = sub_258F0A810();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 88);
    v4 = *(v0 + 72);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v71 = v6;
    *v5 = 136315138;
    sub_258EAB514(v4, v3);
    v7 = sub_258F0A550();
    v9 = v8;
    sub_258EAB578(v4);
    v10 = sub_258DE3018(v7, v9, &v71);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_258DD8000, v1, v2, "Successfully reported final payload: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x259C9EF40](v6, -1, -1);
    MEMORY[0x259C9EF40](v5, -1, -1);
  }

  else
  {
    v11 = *(v0 + 72);

    sub_258EAB578(v11);
  }

  v12 = **(v0 + 80);
  if (*(v12 + 16))
  {
    v13 = *(v12 + 296);
    if (v13)
    {

      v14 = sub_258F0A350();
      v15 = sub_258F0A810();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v71 = v17;
        *v16 = 136315138;
        v18 = MEMORY[0x259C9DF80](v13, MEMORY[0x277D837D0]);
        v20 = v19;

        v21 = sub_258DE3018(v18, v20, &v71);

        *(v16 + 4) = v21;
        _os_log_impl(&dword_258DD8000, v14, v15, "Original assetFailureReasons: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        MEMORY[0x259C9EF40](v17, -1, -1);
        MEMORY[0x259C9EF40](v16, -1, -1);
      }

      else
      {
      }
    }
  }

  v22 = [*(v0 + 160) digests];
  if (!v22)
  {
    goto LABEL_19;
  }

  v23 = v22;
  sub_258DEB8C8(0, &qword_27F98A278, 0x277D593B8);
  v24 = sub_258F0A6B0();

  if (!(v24 >> 62))
  {
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_22:
    v44 = *(v0 + 160);
    v43 = *(v0 + 168);

    goto LABEL_23;
  }

  if (!sub_258F0AA20())
  {
    goto LABEL_22;
  }

LABEL_12:
  if ((v24 & 0xC000000000000001) != 0)
  {
    goto LABEL_36;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v24 + 32); ; i = MEMORY[0x259C9E3B0](0, v24))
    {
      v26 = i;

      v27 = [v26 dimensions];

      if (v27 && (v28 = [v27 assetFailureReasons], v27, v28))
      {
        v29 = sub_258DEB8C8(0, &qword_27F988A10, 0x277CCABB0);
        v30 = sub_258F0A6B0();

        v31 = sub_258F0A350();
        v32 = sub_258F0A810();

        v33 = os_log_type_enabled(v31, v32);
        v35 = *(v0 + 160);
        v34 = *(v0 + 168);
        if (v33)
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v71 = v37;
          *v36 = 136315138;
          v38 = MEMORY[0x259C9DF80](v30, v29);
          v40 = v39;

          v41 = sub_258DE3018(v38, v40, &v71);

          *(v36 + 4) = v41;
          _os_log_impl(&dword_258DD8000, v31, v32, "Reported assetFailureReasons: %s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v37);
          MEMORY[0x259C9EF40](v37, -1, -1);
          MEMORY[0x259C9EF40](v36, -1, -1);
        }

        else
        {
        }
      }

      else
      {
LABEL_19:
        v42 = *(v0 + 160);
      }

LABEL_23:
      v24 = *(v0 + 136);
      v45 = *(v0 + 152) + 1;
      sub_258EAB578(*(v0 + 80));
      if (v45 == v24)
      {
        break;
      }

      v46 = *(v0 + 152) + 1;
      *(v0 + 152) = v46;
      v47 = *(v0 + 120);
      if (v46 < *(v47 + 16))
      {
        v48 = *(v0 + 128);
        v49 = *(v0 + 80);
        v50 = *(v0 + 88);
        v52 = *(v0 + 40);
        v51 = *(v0 + 48);
        v54 = *(v0 + 24);
        v53 = *(v0 + 32);
        sub_258EAB514(v47 + ((*(*(v0 + 64) + 80) + 32) & ~*(*(v0 + 64) + 80)) + *(*(v0 + 64) + 72) * v46, v49);
        sub_258DEB8C8(0, &qword_27F98A270, 0x277D593C0);
        sub_258EAB514(v49, v50);
        (*(v52 + 16))(v51, v54 + v48, v53);
        v55 = sub_258EAA04C(v50, v51);
        *(v0 + 160) = v55;
        v56 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
        *(v0 + 168) = v56;
        if (v56)
        {
          v57 = *(v0 + 128);
          v58 = *(v0 + 24);
          v59 = (v58 + *(v0 + 144));
          v60 = v56;
          [v56 setRequestsWithoutAssetsDigestReported_];
          LOBYTE(v71) = 1;
          v61 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
          [v60 setEventMetadata_];

          v62 = v59[3];
          v63 = v59[4];
          __swift_project_boxed_opaque_existential_1(v59, v62);
          v70 = (*(v63 + 8) + **(v63 + 8));
          v64 = swift_task_alloc();
          *(v0 + 176) = v64;
          *v64 = v0;
          v64[1] = sub_258EA92E4;

          v70(v60, v58 + v57, v62, v63);
          return;
        }

        v65 = sub_258F0A350();
        v66 = sub_258F0A820();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&dword_258DD8000, v65, v66, "Failed to generate final payload", v67, 2u);
          MEMORY[0x259C9EF40](v67, -1, -1);
        }

        v68 = *(v0 + 80);

        sub_258EAB578(v68);
        break;
      }

      __break(1u);
LABEL_36:
      ;
    }

    v69 = *(v0 + 8);

    v69();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258EA9C2C(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[23];
  v7 = v1[20];
  v6 = v1[21];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Failed to report final payload", v8, 2u);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v9 = v1[17];
  v10 = v1[19] + 1;
  result = sub_258EAB578(v1[10]);
  if (v10 != v9)
  {
    v12 = v1[19] + 1;
    v1[19] = v12;
    v13 = v1[15];
    if (v12 >= *(v13 + 16))
    {
      __break(1u);
      return result;
    }

    v14 = v1[16];
    v15 = v1[10];
    v16 = v1[11];
    v18 = v1[5];
    v17 = v1[6];
    v20 = v1[3];
    v19 = v1[4];
    sub_258EAB514(v13 + ((*(v1[8] + 80) + 32) & ~*(v1[8] + 80)) + *(v1[8] + 72) * v12, v15);
    sub_258DEB8C8(0, &qword_27F98A270, 0x277D593C0);
    sub_258EAB514(v15, v16);
    (*(v18 + 16))(v17, v20 + v14, v19);
    v21 = sub_258EAA04C(v16, v17);
    v1[20] = v21;
    v22 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
    v1[21] = v22;
    if (v22)
    {
      v23 = v1[16];
      v24 = v1[3];
      v25 = (v24 + v1[18]);
      v26 = v22;
      [v22 setRequestsWithoutAssetsDigestReported_];
      v27 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
      [v26 setEventMetadata_];

      v28 = v25[3];
      v29 = v25[4];
      __swift_project_boxed_opaque_existential_1(v25, v28);
      v36 = (*(v29 + 8) + **(v29 + 8));
      v30 = swift_task_alloc();
      v1[22] = v30;
      *v30 = v1;
      v30[1] = sub_258EA92E4;

      return v36(v26, v24 + v23, v28, v29);
    }

    v31 = sub_258F0A350();
    v32 = sub_258F0A820();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_258DD8000, v31, v32, "Failed to generate final payload", v33, 2u);
      MEMORY[0x259C9EF40](v33, -1, -1);
    }

    v34 = v1[10];

    sub_258EAB578(v34);
  }

  v35 = v1[1];

  return v35();
}

char *sub_258EAA04C(uint64_t *a1, uint64_t a2)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!result)
  {
    goto LABEL_42;
  }

  v6 = *a1;
  v24[2] = a2;
  v7 = MEMORY[0x28223BE20](result, v5);
  sub_258EA8874(sub_258EAB750, v24, v6);
  sub_258DEB8C8(0, &qword_27F98A278, 0x277D593B8);
  v8 = sub_258F0A6A0();

  [v7 setDigests_];

  v9 = MEMORY[0x277D84F90];
  v30 = MEMORY[0x277D84F90];
  v10 = *(v6 + 16);
  if (v10)
  {
    v25 = v7;
    v26 = a1;
    v27 = a2;
    v7 = 0;
    v11 = (v6 + 32);
    a1 = &selRef_setSampledErrorAsset_;
    while (v7 < *(v6 + 16))
    {
      memcpy(v29, v11, sizeof(v29));
      v12 = objc_allocWithZone(MEMORY[0x277D59350]);
      sub_258EA3054(v29, v28);
      sub_258EA3054(v29, v28);
      result = [v12 init];
      if (!result)
      {
        goto LABEL_41;
      }

      v13 = result;
      if (v29[9])
      {
        v14 = result;

        v15 = sub_258F0A4E0();
      }

      else
      {
        v16 = result;
        v15 = 0;
      }

      a2 = v29[10];
      v17 = v29[11];
      [v13 setDeviceType_];

      if (v17)
      {

        sub_258EA308C(v29);
        v18 = sub_258F0A4E0();

        v19 = v18;
        if ([v19 isEqualToString:@"PROGRAMCODE_UNKNOWN"])
        {
          a2 = 0;
        }

        else if ([v19 isEqualToString:@"PROGRAMCODE_IOS"])
        {
          a2 = 1;
        }

        else if ([v19 isEqualToString:@"PROGRAMCODE_MACOS"])
        {
          a2 = 2;
        }

        else if ([v19 isEqualToString:@"PROGRAMCODE_TVOS"])
        {
          a2 = 3;
        }

        else if ([v19 isEqualToString:@"PROGRAMCODE_WATCHOS"])
        {
          a2 = 4;
        }

        else if ([v19 isEqualToString:@"PROGRAMCODE_VISIONOS"])
        {
          a2 = 5;
        }

        else
        {
          a2 = 0;
        }

        [v13 setProgramCode_];
      }

      else
      {
        sub_258EA308C(v29);
      }

      v20 = sub_258EA308C(v29);
      v9 = &v30;
      MEMORY[0x259C9DF50](v20);
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a2 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_258F0A6D0();
      }

      ++v7;
      sub_258F0A700();
      v11 += 272;
      if (v10 == v7)
      {
        v9 = v30;
        a1 = v26;
        a2 = v27;
        v7 = v25;
        goto LABEL_29;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_29:
    if (!(v9 >> 62))
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
LABEL_37:
        v22 = 0;
        goto LABEL_38;
      }

      goto LABEL_31;
    }
  }

  result = sub_258F0AA20();
  if (!result)
  {
    goto LABEL_37;
  }

LABEL_31:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x259C9E3B0](0, v9);
    goto LABEL_34;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v9 + 32);
LABEL_34:
    v22 = v21;
LABEL_38:

    [v7 setFixedDimensions_];

    sub_258EAB578(a1);
    v23 = sub_258F0A370();
    (*(*(v23 - 8) + 8))(a2, v23);
    return v7;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_258EAA484()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetSELFReporter_reportingService));
}

uint64_t RequestWithNoAssetSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetSELFReporter_reportingService));
  return v0;
}

uint64_t RequestWithNoAssetSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetSELFReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetSELFReporter_reportingService));

  return swift_deallocClassInstance();
}

id sub_258EAA630@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_258F0A370();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v15, a1, 0x110uLL);
  sub_258DEB8C8(0, &qword_27F98A278, 0x277D593B8);
  memcpy(v14, a1, sizeof(v14));
  (*(v7 + 16))(v10, a2, v6);
  sub_258EA3054(v15, &v13);
  result = sub_258EAA77C(v14, v10);
  *a3 = result;
  return result;
}

id sub_258EAA77C(const void *a1, uint64_t a2)
{
  v4 = sub_258F0A370();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memcpy(v16, a1, sizeof(v16));
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = result;
  sub_258DEB8C8(0, qword_27F98A290, 0x277D593C8);
  memcpy(v15, a1, sizeof(v15));
  (*(v5 + 16))(v8, a2, v4);
  v11 = v10;
  sub_258EA3054(v16, v14);
  v12 = sub_258EAA9BC(v15, v8);
  [v11 setDimensions_];

  result = [objc_allocWithZone(MEMORY[0x277D593B0]) init];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v13 = result;
  if ((v16[49] & 1) == 0)
  {
    [result setRequestsRequiringAssetsCount_];
  }

  if ((v16[51] & 1) == 0)
  {
    [v13 setRequestsMissingAssetsCount_];
  }

  sub_258EA308C(v16);
  if ((v16[53] & 1) == 0)
  {
    [v13 setRequestsWithFailuresCount_];
  }

  [v11 setCounts_];

  (*(v5 + 8))(a2, v4);
  return v11;
}

id sub_258EAA9BC(char *__src, uint64_t a2)
{
  memcpy(v18, __src, sizeof(v18));
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v5 = result;
    v19 = *(__src + 216);
    v6 = *(&v19 + 1);
    if (*(&v19 + 1))
    {
      v7 = result;
      sub_258E38B44(&v19, v17);
      v6 = sub_258F0A4E0();
      sub_258E38BB4(&v19);
    }

    else
    {
      v8 = result;
    }

    [v5 setAssetSetName_];

    if (v18[32])
    {

      v9 = sub_258F0A4E0();
    }

    else
    {
      v9 = 0;
    }

    [v5 setPreviousSystemBuild_];

    if ((v18[30] & 1) == 0)
    {
      [v5 setBuildInstallationTimestampInSecondsSince1970_];
    }

    sub_258EA3054(v18, v17);
    v10 = sub_258EAB0C0(v18);
    [v5 setAssistantDimensions_];

    v13 = v18[33];
    if (v18[33])
    {
      MEMORY[0x28223BE20](v11, v12);
      v16[2] = a2;

      sub_258EA82FC(sub_258EAB770, v16, v13);
      sub_258EA308C(v18);

      sub_258DEB8C8(0, &qword_27F988A10, 0x277CCABB0);
      v14 = sub_258F0A6A0();
    }

    else
    {
      sub_258EA308C(v18);
      v14 = 0;
    }

    [v5 setAssetFailureReasons_];

    v15 = sub_258F0A370();
    (*(*(v15 - 8) + 8))(a2, v15);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_258EAAC3C@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v5 = HIBYTE(v4) & 0xF;
  v6 = *result & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v7 = *result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
LABEL_63:

    v27 = sub_258F0A350();
    v28 = sub_258F0A820();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_258DE3018(v3, v4, v31);
      _os_log_impl(&dword_258DD8000, v27, v28, "Invalid assetFailureReason value: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x259C9EF40](v30, -1, -1);
      MEMORY[0x259C9EF40](v29, -1, -1);
    }

    result = 0;
    goto LABEL_68;
  }

  if ((v4 & 0x1000000000000000) != 0)
  {

    v9 = sub_258EAF03C(v3, v4, 10);

    if ((v9 & 0x100000000) != 0)
    {
      goto LABEL_63;
    }

    goto LABEL_67;
  }

  if ((v4 & 0x2000000000000000) == 0)
  {
    if ((v3 & 0x1000000000000000) != 0)
    {
      result = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_258F0AB10();
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          v9 = 0;
          if (result)
          {
            v16 = result + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_61;
              }

              v18 = 10 * v9;
              if (v18 != v18)
              {
                goto LABEL_61;
              }

              v9 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                goto LABEL_61;
              }

              ++v16;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v8 != 45)
    {
      if (v6)
      {
        v9 = 0;
        if (result)
        {
          while (1)
          {
            v22 = *result - 48;
            if (v22 > 9)
            {
              goto LABEL_61;
            }

            v23 = 10 * v9;
            if (v23 != v23)
            {
              goto LABEL_61;
            }

            v9 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              goto LABEL_61;
            }

            result = (result + 1);
            if (!--v6)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v9 = 0;
      LOBYTE(v5) = 1;
LABEL_62:
      v32 = v5;
      if (v5)
      {
        goto LABEL_63;
      }

LABEL_67:
      result = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
LABEL_68:
      *a2 = result;
      return result;
    }

    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        v9 = 0;
        if (result)
        {
          v10 = result + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              goto LABEL_61;
            }

            v12 = 10 * v9;
            if (v12 != v12)
            {
              goto LABEL_61;
            }

            v9 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              goto LABEL_61;
            }

            ++v10;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v5) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v31[0] = *result;
  v31[1] = v4 & 0xFFFFFFFFFFFFFFLL;
  if (v3 != 43)
  {
    if (v3 != 45)
    {
      if (v5)
      {
        LODWORD(v9) = 0;
        v24 = v31;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v9;
          if (v26 != v26)
          {
            break;
          }

          v9 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          v24 = (v24 + 1);
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      if (--v5)
      {
        LODWORD(v9) = 0;
        v13 = v31 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          v15 = 10 * v9;
          if (v15 != v15)
          {
            break;
          }

          v9 = v15 - v14;
          if (__OFSUB__(v15, v14))
          {
            break;
          }

          ++v13;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v5)
  {
    if (--v5)
    {
      LODWORD(v9) = 0;
      v19 = v31 + 1;
      while (1)
      {
        v20 = *v19 - 48;
        if (v20 > 9)
        {
          break;
        }

        v21 = 10 * v9;
        if (v21 != v21)
        {
          break;
        }

        v9 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        ++v19;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}