uint64_t sub_22FDC1F84@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_22FE43904();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s10PhotosFace9ShuffleIDV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (_s10PhotosFace7DailyIDV2eeoiySbAC_ACtFZ_0() & 1) != 0 && (v4 = type metadata accessor for ShuffleID(0), (sub_22FDBF9D4(*(a1 + v4[5]), *(a2 + v4[5]))) && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]))
  {
    v5 = *(a1 + v4[8]) ^ *(a2 + v4[8]) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_22FDC2070(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x23190B100](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22FDC05CC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_22FDC2108(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_22FE088A0(result);
    }

    else
    {
      sub_22FE42694();
      swift_allocObject();
      sub_22FE42664();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_22FE427A4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_22FDC21A8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_22FE42694();
  swift_allocObject();
  result = sub_22FE42644();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22FE427A4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_22FDC2224(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_22FE42694();
  swift_allocObject();
  result = sub_22FE42644();
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

uint64_t sub_22FDC22A8(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4518, &qword_22FE4B648);
  v10 = sub_22FDC2774();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_22FDC0FC8(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

uint64_t sub_22FDC2358(uint64_t a1)
{
  v2 = type metadata accessor for ShuffleIDProto(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FDC241C(uint64_t a1)
{
  *(a1 + 16) = sub_22FDC24A0(&qword_28148AF38, type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
  result = sub_22FDC24A0(&qword_28148AF48, type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_22FDC24A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22FDC2558(uint64_t a1)
{
  sub_22FE428C4();
  if (v1 <= 0x3F)
  {
    sub_22FDC25E8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FDC25E8()
{
  if (!qword_28148AE60)
  {
    v0 = sub_22FE43554();
    if (!v1)
    {
      atomic_store(v0, &qword_28148AE60);
    }
  }
}

uint64_t sub_22FDC2640(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4510, &qword_22FE4B640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_22FDC26A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_22FDC105C(sub_22FDC2754, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
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

unint64_t sub_22FDC2774()
{
  result = qword_27DAE4520;
  if (!qword_27DAE4520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE4518, &qword_22FE4B648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4520);
  }

  return result;
}

void pickPhotos(totalCount:day:picking:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= a1)
  {
    if (qword_27DAE2AC8 == -1)
    {
      goto LABEL_53;
    }

    goto LABEL_67;
  }

  if (!a3)
  {
    goto LABEL_66;
  }

  v6 = a1 % a3 != 0;
  v7 = a1 / a3 + v6;
  if (__OFADD__(a1 / a3, v6))
  {
    goto LABEL_69;
  }

  v4 = v7 * a3;
  if ((v7 * a3) >> 64 != (v7 * a3) >> 63)
  {
    goto LABEL_70;
  }

  v3 = a2;
  if (qword_27DAE2AC8 != -1)
  {
    goto LABEL_71;
  }

  while (1)
  {
    v8 = sub_22FE42D34();
    __swift_project_value_buffer(v8, qword_27DAE5118);
    v9 = sub_22FE42D14();
    v10 = sub_22FE43694();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134218496;
      *(v11 + 4) = a3;
      *(v11 + 12) = 2048;
      *(v11 + 14) = a1;
      *(v11 + 22) = 2048;
      *(v11 + 24) = v4;
      _os_log_impl(&dword_22FD6D000, v9, v10, "Picking %ld from array of size %ld, picking from %ld elements", v11, 0x20u);
      MEMORY[0x23190C380](v11, -1, -1);
    }

    if (a3 == -1 && v4 == 0x8000000000000000)
    {
      goto LABEL_82;
    }

    v12 = v4 / a3;
    if (!(v4 / a3))
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      return;
    }

    if (v3 == 0x8000000000000000 && v12 == -1)
    {
      goto LABEL_83;
    }

    v13 = v3 / v12;
    v14 = v3 % v12;
    v15 = sub_22FE42D14();
    v16 = sub_22FE43694();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134218496;
      *(v17 + 4) = v13;
      *(v17 + 12) = 2048;
      *(v17 + 14) = v14;
      *(v17 + 22) = 2048;
      *(v17 + 24) = v12;
      _os_log_impl(&dword_22FD6D000, v15, v16, "Position: Cycle %ld (%ld/%ld)", v17, 0x20u);
      MEMORY[0x23190C380](v17, -1, -1);
    }

    v18 = __clz(v4);
    v19 = 64 - v18;
    v20 = sub_22FE42D14();
    v21 = sub_22FE43694();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134218240;
      *(v22 + 4) = v19;
      *(v22 + 12) = 2048;
      *(v22 + 14) = v4;
      _os_log_impl(&dword_22FD6D000, v20, v21, "Need %ld bits for count of %ld", v22, 0x16u);
      MEMORY[0x23190C380](v22, -1, -1);
    }

    v23 = 63 - v18;
    v24 = 2 << v23;
    if (!v4)
    {
      v24 = 1;
    }

    v25 = __OFSUB__(v24, 1);
    v26 = v24 - 1;
    if (v25)
    {
      goto LABEL_73;
    }

    if (!v26)
    {
      goto LABEL_74;
    }

    if (v13 == 0x8000000000000000 && v26 == -1)
    {
      goto LABEL_84;
    }

    v28 = v13 % v26;
    if (v28 < 0)
    {
      goto LABEL_75;
    }

    v29 = v28 + 1;
    v3 = sub_22FE1765C(v19);
    v30 = sub_22FE42D14();
    v31 = sub_22FE43694();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134218240;
      *(v32 + 4) = v19;
      *(v32 + 12) = 2048;
      *(v32 + 14) = v29;
      _os_log_impl(&dword_22FD6D000, v30, v31, "Created RNG with size %ld and seed %llu", v32, 0x16u);
      MEMORY[0x23190C380](v32, -1, -1);
    }

    v33 = sub_22FE42D14();
    v34 = sub_22FE43694();
    v35 = (v14 * a3) >> 64;
    if (os_log_type_enabled(v33, v34))
    {
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      if (v35 != (v14 * a3) >> 63)
      {
        goto LABEL_85;
      }

      *(v36 + 4) = v14 * a3;
      v37 = v34;
      v38 = v36;
      _os_log_impl(&dword_22FD6D000, v33, v37, "Discarding %ld previous values", v36, 0xCu);
      MEMORY[0x23190C380](v38, -1, -1);
    }

    if (a1 < 0)
    {
      goto LABEL_76;
    }

    v39 = v14 * a3;
    if (v35 != (v14 * a3) >> 63)
    {
      goto LABEL_77;
    }

    if (v39 < 0)
    {
      goto LABEL_78;
    }

    v4 = v23 & 0x3F;
    if (v39)
    {
      if (!a1)
      {
        goto LABEL_81;
      }

      v40 = 0;
      while (1)
      {
        v25 = __OFADD__(v40++, 1);
        if (v25)
        {
          break;
        }

        do
        {
          v29 = ((vaddlv_u8(vcnt_s8((v29 & v3))) & 1) << v4) | (v29 >> 1);
        }

        while (v29 - 1 >= a1);
        if (v40 == v39)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
LABEL_40:
      v41 = sub_22FE42D14();
      v42 = sub_22FE43694();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 134218496;
        *(v43 + 4) = a3;
        *(v43 + 12) = 2048;
        *(v43 + 14) = v14;
        *(v43 + 22) = 2048;
        *(v43 + 24) = v13;
        _os_log_impl(&dword_22FD6D000, v41, v42, "Using next %ld values for position %ld in cycle %ld", v43, 0x20u);
        MEMORY[0x23190C380](v43, -1, -1);
      }

      if (a3 < 0)
      {
        goto LABEL_79;
      }

      v60[0] = MEMORY[0x277D84F90];
      sub_22FD92558(0, a3, 0);
      if (!a1)
      {
        goto LABEL_80;
      }

      v44 = 0;
      v45 = a3;
      v46 = v60[0];
      while (v44 < v45)
      {
        v25 = __OFADD__(v44++, 1);
        if (v25)
        {
          goto LABEL_64;
        }

        do
        {
          v29 = ((vaddlv_u8(vcnt_s8((v29 & v3))) & 1) << v4) | (v29 >> 1);
        }

        while (v29 - 1 >= a1);
        v60[0] = v46;
        v48 = v46[2];
        v47 = v46[3];
        if (v48 >= v47 >> 1)
        {
          sub_22FD92558((v47 > 1), v48 + 1, 1);
          v45 = a3;
          v46 = v60[0];
        }

        v46[2] = v48 + 1;
        v46[v48 + 4] = v29 - 1;
        if (v44 == v45)
        {
          goto LABEL_59;
        }
      }

      __break(1u);
LABEL_64:
      __break(1u);
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
LABEL_53:
    v49 = sub_22FE42D34();
    __swift_project_value_buffer(v49, qword_27DAE5118);
    v50 = sub_22FE42D14();
    v51 = sub_22FE43694();
    if (os_log_type_enabled(v50, v51))
    {
      v3 = swift_slowAlloc();
      *v3 = 134218240;
      *(v3 + 4) = a1;
      *(v3 + 12) = 2048;
      *(v3 + 14) = a3;
      _os_log_impl(&dword_22FD6D000, v50, v51, "Total Count (%ld) is less than %ld, using entire array.", v3, 0x16u);
      MEMORY[0x23190C380](v3, -1, -1);
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    swift_once();
  }

  if (a1)
  {
    v46 = sub_22FDC0548(a1, 0);
    if (sub_22FDC3024(v60, (v46 + 4), a1, 0, a1) != a1)
    {
      __break(1u);
LABEL_59:

      v52 = sub_22FE42D14();
      v53 = sub_22FE43694();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v60[0] = v55;
        *v54 = 136315138;
        v56 = MEMORY[0x23190AE90](v46, MEMORY[0x277D83B88]);
        v58 = sub_22FD98218(v56, v57, v60);

        *(v54 + 4) = v58;
        _os_log_impl(&dword_22FD6D000, v52, v53, "Picked %s.", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x23190C380](v55, -1, -1);
        MEMORY[0x23190C380](v54, -1, -1);
      }
    }
  }
}

uint64_t *sub_22FDC3024(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PhotosFaceInterface.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4528, &qword_22FE4B660);
  v1 = swift_allocObject();
  v1[3] = 0x800000022FE48140;
  v1[4] = 0;
  v1[2] = 0xD000000000000014;
  type metadata accessor for PhotosXPCClient();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t PhotosFaceInterface.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4528, &qword_22FE4B660);
  v1 = swift_allocObject();
  v1[3] = 0x800000022FE48140;
  v1[4] = 0;
  v1[2] = 0xD000000000000014;
  type metadata accessor for PhotosXPCClient();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t PhotosFaceInterface.process(photos:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;

  v6 = sub_22FDCF488("process(photos:)", 16, 2, &unk_22FE4B670, v5, &unk_2844D0D68, &unk_22FE4B9E8);

  *a2 = v6;
  return result;
}

uint64_t sub_22FDC3294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v3[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE45C8, &qword_22FE4BA00);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDC3338, 0, 0);
}

uint64_t sub_22FDC3338()
{
  v0[2] = v0[5];

  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_22FDC33F4;
  v2 = v0[7];

  return PhotosXPCClient.generatePhoto(request:)(v2, v0 + 2);
}

uint64_t sub_22FDC33F4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_22FDC3644;
  }

  else
  {
    v2 = sub_22FDC3510;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FDC3510()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE45D0, &unk_22FE4BA10);
  sub_22FDBC930(&qword_27DAE45D8, &qword_27DAE45C8, &qword_22FE4BA00, MEMORY[0x277D85A00]);
  sub_22FDBC930(&qword_27DAE45E0, &qword_27DAE45D0, &unk_22FE4BA10, &protocol conformance descriptor for AsyncSyncSequence<A>);
  sub_22FE43B24();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FDC3644()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FDC36A8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_22FDC36CC, 0, 0);
}

uint64_t sub_22FDC36CC()
{
  **(v0 + 16) = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t PhotosFaceInterface.send(message:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FDC375C, 0, 0);
}

uint64_t sub_22FDC375C()
{

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_22FDC3818;
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  return sub_22FDCF69C("send(message:)", 14, 2, v2, v4, v3);
}

uint64_t sub_22FDC3818(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_22FDC3968(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 80) = a4;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  return MEMORY[0x2822009F8](sub_22FDC3990, 0, 0);
}

uint64_t sub_22FDC3990()
{
  v14 = v0;
  v1 = sub_22FE177CC(100);
  v0[6] = v1;
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D34();
  v0[7] = __swift_project_value_buffer(v2, qword_27DAE5190);
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315394;
    v7 = sub_22FE43914();
    v9 = sub_22FD98218(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v1;
    _os_log_impl(&dword_22FD6D000, v3, v4, "Executing %s (%ld)", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23190C380](v6, -1, -1);
    MEMORY[0x23190C380](v5, -1, -1);
  }

  v12 = (v0[4] + *v0[4]);
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_22FDC3BD8;

  return v12();
}

uint64_t sub_22FDC3BD8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_22FDC3E94;
  }

  else
  {
    v2 = sub_22FDC3CEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FDC3CEC(uint64_t a1)
{
  v16 = v1;
  v2 = sub_22FE42D14();
  v3 = sub_22FE436C4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 48);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315650;
    v7 = sub_22FE43914();
    v9 = sub_22FD98218(v7, v8, &v15);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v4;
    *(v5 + 22) = 2080;
    v10 = sub_22FE430B4();
    v12 = sub_22FD98218(v10, v11, &v15);

    *(v5 + 24) = v12;
    _os_log_impl(&dword_22FD6D000, v2, v3, "%s (%ld) finished: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23190C380](v6, -1, -1);
    MEMORY[0x23190C380](v5, -1, -1);
  }

  v13 = *(v1 + 8);

  return v13();
}

uint64_t sub_22FDC3E94()
{
  v18 = v0;
  v1 = v0[9];
  v2 = v1;
  v3 = sub_22FE42D14();
  v4 = sub_22FE436A4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v16 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136315650;
    v9 = sub_22FE43914();
    v11 = sub_22FD98218(v9, v10, &v17);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v16;
    *(v6 + 22) = 2112;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v13;
    *v7 = v13;
    _os_log_impl(&dword_22FD6D000, v3, v4, "%s (%ld) failed: %@", v6, 0x20u);
    sub_22FD93E6C(v7, &qword_27DAE4208, &qword_22FE4ACE0);
    MEMORY[0x23190C380](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23190C380](v8, -1, -1);
    MEMORY[0x23190C380](v6, -1, -1);
  }

  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t sub_22FDC4078(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  *(v5 + 96) = a3;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  return MEMORY[0x2822009F8](sub_22FDC40A0, 0, 0);
}

uint64_t sub_22FDC40A0()
{
  v14 = v0;
  v1 = sub_22FE177CC(100);
  v0[8] = v1;
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D34();
  v0[9] = __swift_project_value_buffer(v2, qword_27DAE5190);
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315394;
    v7 = sub_22FE43914();
    v9 = sub_22FD98218(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v1;
    _os_log_impl(&dword_22FD6D000, v3, v4, "Executing %s (%ld)", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23190C380](v6, -1, -1);
    MEMORY[0x23190C380](v5, -1, -1);
  }

  v12 = (v0[6] + *v0[6]);
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_22FDC42F0;

  return v12(v0 + 2);
}

uint64_t sub_22FDC42F0()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_22FDD4648;
  }

  else
  {
    v2 = sub_22FDD4660;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FDC4404(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  *(v5 + 96) = a3;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  return MEMORY[0x2822009F8](sub_22FDC442C, 0, 0);
}

uint64_t sub_22FDC442C()
{
  v14 = v0;
  v1 = sub_22FE177CC(100);
  v0[8] = v1;
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D34();
  v0[9] = __swift_project_value_buffer(v2, qword_27DAE5190);
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315394;
    v7 = sub_22FE43914();
    v9 = sub_22FD98218(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v1;
    _os_log_impl(&dword_22FD6D000, v3, v4, "Executing %s (%ld)", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23190C380](v6, -1, -1);
    MEMORY[0x23190C380](v5, -1, -1);
  }

  v12 = (v0[6] + *v0[6]);
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_22FDC467C;

  return v12(v0 + 2);
}

uint64_t sub_22FDC467C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_22FDC497C;
  }

  else
  {
    v2 = sub_22FDC4790;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FDC4790()
{
  v16 = v0;
  v1 = v0[2];
  swift_bridgeObjectRetain_n();
  v2 = sub_22FE42D14();
  v3 = sub_22FE436C4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315650;
    v7 = sub_22FE43914();
    v9 = sub_22FD98218(v7, v8, &v15);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v4;
    *(v5 + 22) = 2080;
    v0[3] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4570, &qword_22FE4B968);
    v10 = sub_22FE430B4();
    v12 = sub_22FD98218(v10, v11, &v15);

    *(v5 + 24) = v12;
    _os_log_impl(&dword_22FD6D000, v2, v3, "%s (%ld) finished: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23190C380](v6, -1, -1);
    MEMORY[0x23190C380](v5, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13(v1);
}

uint64_t sub_22FDC497C()
{
  v18 = v0;
  v1 = v0[11];
  v2 = v1;
  v3 = sub_22FE42D14();
  v4 = sub_22FE436A4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v16 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136315650;
    v9 = sub_22FE43914();
    v11 = sub_22FD98218(v9, v10, &v17);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v16;
    *(v6 + 22) = 2112;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v13;
    *v7 = v13;
    _os_log_impl(&dword_22FD6D000, v3, v4, "%s (%ld) failed: %@", v6, 0x20u);
    sub_22FD93E6C(v7, &qword_27DAE4208, &qword_22FE4ACE0);
    MEMORY[0x23190C380](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23190C380](v8, -1, -1);
    MEMORY[0x23190C380](v6, -1, -1);
  }

  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t sub_22FDC4B60(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 72) = a5;
  *(v6 + 80) = a6;
  *(v6 + 120) = a4;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  *(v6 + 48) = a1;
  return MEMORY[0x2822009F8](sub_22FDC4B8C, 0, 0);
}

uint64_t sub_22FDC4B8C()
{
  v14 = v0;
  v1 = sub_22FE177CC(100);
  v0[11] = v1;
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D34();
  v0[12] = __swift_project_value_buffer(v2, qword_27DAE5190);
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315394;
    v7 = sub_22FE43914();
    v9 = sub_22FD98218(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v1;
    _os_log_impl(&dword_22FD6D000, v3, v4, "Executing %s (%ld)", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23190C380](v6, -1, -1);
    MEMORY[0x23190C380](v5, -1, -1);
  }

  v12 = (v0[9] + *v0[9]);
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_22FDC4DDC;

  return v12(v0 + 2);
}

uint64_t sub_22FDC4DDC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_22FDC50F0;
  }

  else
  {
    v2 = sub_22FDC4EF0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FDC4EF0()
{
  v17 = v0;
  v1 = v0[2];
  v2 = v0[3];
  sub_22FDB4380(v1, v2);
  sub_22FDB4380(v1, v2);
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();
  sub_22FD917D4(v1, v2);
  if (os_log_type_enabled(v3, v4))
  {
    v15 = v0[11];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315650;
    v7 = sub_22FE43914();
    v9 = sub_22FD98218(v7, v8, &v16);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v15;
    *(v5 + 22) = 2080;
    v0[4] = v1;
    v0[5] = v2;
    v10 = sub_22FE430B4();
    v12 = sub_22FD98218(v10, v11, &v16);

    *(v5 + 24) = v12;
    _os_log_impl(&dword_22FD6D000, v3, v4, "%s (%ld) finished: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23190C380](v6, -1, -1);
    MEMORY[0x23190C380](v5, -1, -1);
  }

  else
  {
    sub_22FD917D4(v1, v2);
  }

  *v0[6] = *(v0 + 1);
  v13 = v0[1];

  return v13();
}

uint64_t sub_22FDC50F0()
{
  v18 = v0;
  v1 = v0[14];
  v2 = v1;
  v3 = sub_22FE42D14();
  v4 = sub_22FE436A4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[14];
    v16 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136315650;
    v9 = sub_22FE43914();
    v11 = sub_22FD98218(v9, v10, &v17);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v16;
    *(v6 + 22) = 2112;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v13;
    *v7 = v13;
    _os_log_impl(&dword_22FD6D000, v3, v4, "%s (%ld) failed: %@", v6, 0x20u);
    sub_22FD93E6C(v7, &qword_27DAE4208, &qword_22FE4ACE0);
    MEMORY[0x23190C380](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23190C380](v8, -1, -1);
    MEMORY[0x23190C380](v6, -1, -1);
  }

  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t PhotosFaceInterface.track(album:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for AlbumID(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_22FDD4464(a1, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlbumID);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  sub_22FDD43FC(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for AlbumID);

  v10 = sub_22FDCF488("track(album:)", 13, 2, &unk_22FE4B690, v9, &unk_2844D0D18, &unk_22FE4B9B8);

  *a2 = v10;
  return result;
}

uint64_t sub_22FDC5440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_22FDC5464, 0, 0);
}

uint64_t sub_22FDC5464()
{
  *(v0 + 48) = *(*(v0 + 32) + 16);
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v2 = sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FDC555C, v2, v1);
}

uint64_t sub_22FDC555C()
{
  v12 = v0;
  v1 = *(v0[6] + 16);
  v11[0] = 2;
  v2 = off_2844D07B0[0];
  v3 = type metadata accessor for AlbumID(0);
  v4 = v2(v11, v3);
  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = 3;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;

  sub_22FDB4380(v4, v6);
  v8 = sub_22FE275DC(&unk_22FE4B9D8, v7);

  sub_22FD917D4(v4, v6);
  v0[2] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4550, &qword_22FE4B908);
  type metadata accessor for StoredPhoto(0);
  sub_22FDBC930(&qword_27DAE4558, &qword_27DAE4550, &qword_22FE4B908, &protocol conformance descriptor for DestructableSequence<A>);
  sub_22FE43C54();
  v9 = v0[1];

  return v9();
}

uint64_t PhotosFaceInterface.untrack(album:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FDC5754, 0, 0);
}

uint64_t sub_22FDC5754()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_22FDC5824;

  return sub_22FDC3968(v2, "untrack(album:)", 15, 2, &unk_22FE4B6A8, v1);
}

uint64_t sub_22FDC5824()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_22FDC5940;
  }

  else
  {

    v2 = sub_22FD908B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FDC5940()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FDC59A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v5 = sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FDC5A94, v5, v4);
}

uint64_t sub_22FDC5A94()
{
  v9 = v0;
  v1 = *(*(*(v0 + 16) + 16) + 16);
  v8 = 2;
  v2 = UUID.serialized(version:)(&v8);
  v4 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = 4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;

  sub_22FDB4380(v2, v4);
  sub_22FE275DC(&unk_22FE4B9A8, v5);

  sub_22FD917D4(v2, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22FDC5BBC()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_22FDC5C6C;
  v2 = *(v0 + 16);

  return sub_22FDD001C("listAlbums()", 12, 2, v2);
}

uint64_t sub_22FDC5C6C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_22FDC5D90(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 72) = a1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v4 = sub_22FE43374();
  *(v2 + 24) = v4;
  *(v2 + 32) = v3;

  return MEMORY[0x2822009F8](sub_22FDC5E84, v4, v3);
}

uint64_t sub_22FDC5E84()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = 0x180A0F05u >> (8 * *(v0 + 72));
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = xmmword_22FE4B510;

  *(v0 + 40) = sub_22FE275DC(&unk_22FE4B9A0, v3);

  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_22FDC5FA8;

  return sub_22FE1C78C();
}

uint64_t sub_22FDC5FA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {
    v7 = v3[3];
    v8 = v3[4];

    return MEMORY[0x2822009F8](sub_22FDC610C, v7, v8);
  }
}

uint64_t sub_22FDC610C()
{
  v1 = v0[7];
  if (v1[2] == 1)
  {
    v2 = v0[8];
    v4 = v1[4];
    v3 = v1[5];
    sub_22FDB4380(v4, v3);

    v5 = sub_22FE1B164(v4, v3, 2);
    if (!v2)
    {
      v6 = v0[1];

      return v6(v5);
    }
  }

  else
  {

    sub_22FDD4264();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_22FDC6228(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 72) = a1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v4 = sub_22FE43374();
  *(v2 + 24) = v4;
  *(v2 + 32) = v3;

  return MEMORY[0x2822009F8](sub_22FDC631C, v4, v3);
}

uint64_t sub_22FDC631C()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = 0x180A0F05u >> (8 * *(v0 + 72));
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = xmmword_22FE4B510;

  *(v0 + 40) = sub_22FE275DC(&unk_22FE4B920, v3);

  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_22FDC6440;

  return sub_22FE1C78C();
}

uint64_t sub_22FDC6440(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {
    v7 = v3[3];
    v8 = v3[4];

    return MEMORY[0x2822009F8](sub_22FDC65A4, v7, v8);
  }
}

uint64_t sub_22FDC65A4()
{
  v1 = v0[7];
  if (v1[2] == 1)
  {
    v2 = v0[8];
    v4 = v1[4];
    v3 = v1[5];
    sub_22FDB4380(v4, v3);

    v5 = sub_22FE1BC8C(v4, v3, 2);
    if (!v2)
    {
      v6 = v0[1];

      return v6(v5);
    }
  }

  else
  {

    sub_22FDD4264();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_22FDC66C0(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 72) = a1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v4 = sub_22FE43374();
  *(v2 + 24) = v4;
  *(v2 + 32) = v3;

  return MEMORY[0x2822009F8](sub_22FDC67B4, v4, v3);
}

uint64_t sub_22FDC67B4()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = 0x180A0F05u >> (8 * *(v0 + 72));
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = xmmword_22FE4B510;

  *(v0 + 40) = sub_22FE275DC(&unk_22FE4B8F0, v3);

  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_22FDC68D8;

  return sub_22FE1C78C();
}

uint64_t sub_22FDC68D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {
    v7 = v3[3];
    v8 = v3[4];

    return MEMORY[0x2822009F8](sub_22FDC6A3C, v7, v8);
  }
}

uint64_t sub_22FDC6A3C()
{
  v1 = v0[7];
  if (v1[2] == 1)
  {
    v2 = v0[8];
    v4 = v1[4];
    v3 = v1[5];
    sub_22FDB4380(v4, v3);

    v5 = sub_22FE1C084(v4, v3, 2);
    if (!v2)
    {
      v6 = v0[1];

      return v6(v5);
    }
  }

  else
  {

    sub_22FDD4264();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_22FDC6B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for FetchFaceRequest(0);
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDC6C1C, 0, 0);
}

uint64_t sub_22FDC6C1C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_22FE428C4();
  (*(*(v4 - 8) + 16))(v1, v3, v4);
  v5 = v1 + *(v2 + 20);
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_22FDC6D20;
  v7 = v0[6];
  v8 = v0[2];

  return PhotosXPCClient.fetchFace(type:request:)(v8, 0, v7);
}

uint64_t sub_22FDC6D20()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 64) = v0;

  sub_22FDD44CC(v2, type metadata accessor for FetchFaceRequest);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FDC6E98, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_22FDC6E98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FDC6F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 48) = type metadata accessor for FetchFaceRequest(0);
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDC6FC4, 0, 0);
}

uint64_t sub_22FDC6FC4()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = sub_22FE428C4();
  (*(*(v6 - 8) + 16))(v1, v4, v6);
  v7 = v1 + *(v2 + 20);
  *v7 = v5;
  *(v7 + 8) = v3 & 1;
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_22FDC70D8;
  v9 = *(v0 + 56);
  v10 = *(v0 + 16);

  return PhotosXPCClient.fetchFace(type:request:)(v10, 0, v9);
}

uint64_t sub_22FDC70D8()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 72) = v0;

  sub_22FDD44CC(v2, type metadata accessor for FetchFaceRequest);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FDC3644, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t PhotosFaceInterface.provideAlbumAssetList(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FDC7274, 0, 0);
}

uint64_t sub_22FDC7274()
{

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_22FDC7330;
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  return sub_22FDD0A28("provideAlbumAssetList(for:)", 27, 2, v2, v4, v3);
}

uint64_t sub_22FDC7330(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_22FDC7470(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 80) = a1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v5 = sub_22FE43374();
  *(v3 + 32) = v5;
  *(v3 + 40) = v4;

  return MEMORY[0x2822009F8](sub_22FDC7564, v5, v4);
}

uint64_t sub_22FDC7564()
{
  v12 = v0;
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 24) + 16);
  v11[0] = 2;
  v3 = off_2844D07B0[0];
  v4 = type metadata accessor for AlbumID(0);
  v5 = v3(v11, v4);
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v1 + 18;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;

  sub_22FDB4380(v5, v7);
  *(v0 + 48) = sub_22FE275DC(&unk_22FE4B988, v8);

  sub_22FD917D4(v5, v7);
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v9[1] = sub_22FDC772C;

  return sub_22FE1C78C();
}

uint64_t sub_22FDC772C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {
    v7 = v3[4];
    v8 = v3[5];

    return MEMORY[0x2822009F8](sub_22FDC7890, v7, v8);
  }
}

uint64_t sub_22FDC7890()
{
  v1 = v0[8];
  if (v1[2] == 1)
  {
    v2 = v0[9];
    v4 = v1[4];
    v3 = v1[5];
    sub_22FDB4380(v4, v3);

    v5 = sub_22FE1B8B4(v4, v3, 2);
    if (!v2)
    {
      v6 = v0[1];

      return v6(v5);
    }
  }

  else
  {

    sub_22FDD4264();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_22FDC79AC(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 80) = a1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v5 = sub_22FE43374();
  *(v3 + 32) = v5;
  *(v3 + 40) = v4;

  return MEMORY[0x2822009F8](sub_22FDC7AA0, v5, v4);
}

uint64_t sub_22FDC7AA0()
{
  v12 = v0;
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 24) + 16);
  v11[0] = 2;
  v3 = off_2844D08E0[0];
  v4 = type metadata accessor for ShuffleID(0);
  v5 = v3(v11, v4);
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v1 + 18;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;

  sub_22FDB4380(v5, v7);
  *(v0 + 48) = sub_22FE275DC(&unk_22FE4B948, v8);

  sub_22FD917D4(v5, v7);
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v9[1] = sub_22FDC7C68;

  return sub_22FE1C78C();
}

uint64_t sub_22FDC7C68(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {
    v7 = v3[4];
    v8 = v3[5];

    return MEMORY[0x2822009F8](sub_22FDD4650, v7, v8);
  }
}

uint64_t sub_22FDC7DCC(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 80) = a1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v5 = sub_22FE43374();
  *(v3 + 32) = v5;
  *(v3 + 40) = v4;

  return MEMORY[0x2822009F8](sub_22FDC7EC0, v5, v4);
}

uint64_t sub_22FDC7EC0()
{
  v12 = v0;
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 24) + 16);
  v11[0] = 2;
  v3 = off_2844D0800;
  v4 = type metadata accessor for DailyID(0);
  v5 = v3(v11, v4);
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v1 + 18;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;

  sub_22FDB4380(v5, v7);
  *(v0 + 48) = sub_22FE275DC(&unk_22FE4B8D8, v8);

  sub_22FD917D4(v5, v7);
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v9[1] = sub_22FDC7C68;

  return sub_22FE1C78C();
}

uint64_t PhotosFaceInterface.track(shuffle:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for ShuffleID(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_22FDD4464(a1, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShuffleID);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  sub_22FDD43FC(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ShuffleID);

  v10 = sub_22FDCF488("track(shuffle:)", 15, 2, &unk_22FE4B700, v9, &unk_2844D0D18, &unk_22FE4B9B8);

  *a2 = v10;
  return result;
}

uint64_t sub_22FDC81F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_22FDC8218, 0, 0);
}

uint64_t sub_22FDC8218()
{
  *(v0 + 48) = *(*(v0 + 32) + 16);
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v2 = sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FDC8310, v2, v1);
}

uint64_t sub_22FDC8310()
{
  v12 = v0;
  v1 = *(v0[6] + 16);
  v11[0] = 2;
  v2 = off_2844D08E0[0];
  v3 = type metadata accessor for ShuffleID(0);
  v4 = v2(v11, v3);
  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = 13;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;

  sub_22FDB4380(v4, v6);
  v8 = sub_22FE275DC(&unk_22FE4B978, v7);

  sub_22FD917D4(v4, v6);
  v0[2] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4550, &qword_22FE4B908);
  type metadata accessor for StoredPhoto(0);
  sub_22FDBC930(&qword_27DAE4558, &qword_27DAE4550, &qword_22FE4B908, &protocol conformance descriptor for DestructableSequence<A>);
  sub_22FE43C54();
  v9 = v0[1];

  return v9();
}

uint64_t PhotosFaceInterface.untrack(shuffle:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FDC8508, 0, 0);
}

uint64_t sub_22FDC8508()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_22FDC85D8;

  return sub_22FDC3968(v2, "untrack(shuffle:)", 17, 2, &unk_22FE4B718, v1);
}

uint64_t sub_22FDC85D8()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_22FDD4670;
  }

  else
  {

    v2 = sub_22FD93F14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FDC86F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v5 = sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FDC87E4, v5, v4);
}

uint64_t sub_22FDC87E4()
{
  v9 = v0;
  v1 = *(*(*(v0 + 16) + 16) + 16);
  v8 = 2;
  v2 = UUID.serialized(version:)(&v8);
  v4 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = 14;
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;

  sub_22FDB4380(v2, v4);
  sub_22FE275DC(&unk_22FE4B970, v5);

  sub_22FD917D4(v2, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22FDC890C()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_22FDD4674;
  v2 = *(v0 + 16);

  return sub_22FDD2308("listShuffles()", 14, 2, v2);
}

uint64_t sub_22FDC89E8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v20 = a6;
  v11 = sub_22FE428C4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  (*(v12 + 16))(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11, v14);
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v6;
  (*(v12 + 32))(v16 + v15, &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);

  v17 = sub_22FDCF488(a3, a4, 2, a5, v16, &unk_2844D0D18, &unk_22FE4B9B8);

  *v20 = v17;
  return result;
}

uint64_t sub_22FDC8B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for FetchFaceRequest(0);
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDC8C04, 0, 0);
}

uint64_t sub_22FDC8C04()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_22FE428C4();
  (*(*(v4 - 8) + 16))(v1, v3, v4);
  v5 = v1 + *(v2 + 20);
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_22FDC8D08;
  v7 = v0[6];
  v8 = v0[2];

  return PhotosXPCClient.fetchFace(type:request:)(v8, 1, v7);
}

uint64_t sub_22FDC8D08()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 64) = v0;

  sub_22FDD44CC(v2, type metadata accessor for FetchFaceRequest);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FDD4664, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_22FDC8EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v24 = a6;
  v25 = a7;
  v23 = a5;
  v26 = a8;
  v12 = sub_22FE428C4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a1, v12, v15);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v8;
  (*(v13 + 32))(v19 + v17, v16, v12);
  v20 = v19 + v18;
  *v20 = a2;
  *(v20 + 8) = a3 & 1;

  v21 = sub_22FDCF488(v23, v24, 2, v25, v19, &unk_2844D0D18, &unk_22FE4B9B8);

  *v26 = v21;
  return result;
}

uint64_t sub_22FDC904C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 48) = type metadata accessor for FetchFaceRequest(0);
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDC90E8, 0, 0);
}

uint64_t sub_22FDC90E8()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = sub_22FE428C4();
  (*(*(v6 - 8) + 16))(v1, v4, v6);
  v7 = v1 + *(v2 + 20);
  *v7 = v5;
  *(v7 + 8) = v3 & 1;
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_22FDC91FC;
  v9 = *(v0 + 56);
  v10 = *(v0 + 16);

  return PhotosXPCClient.fetchFace(type:request:)(v10, 1, v9);
}

uint64_t sub_22FDC91FC()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 72) = v0;

  sub_22FDD44CC(v2, type metadata accessor for FetchFaceRequest);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FDD4668, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t PhotosFaceInterface.fetchByDay(shuffle:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FDC9394, 0, 0);
}

uint64_t sub_22FDC9394()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_22FDC9468;

  return sub_22FDC4404("fetchByDay(shuffle:)", 20, 2, &unk_22FE4B760, v1);
}

uint64_t sub_22FDC9468(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22FDC5940, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_22FDC95C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v5 = sub_22FE43374();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x2822009F8](sub_22FDC96B4, v5, v4);
}

uint64_t sub_22FDC96B4()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_22FDC9754;
  v2 = *(v0 + 32);

  return PhotosXPCClient.fetchFaceByDay(type:request:)(1, v2);
}

uint64_t sub_22FDC9754(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {
    v4[8] = a1;
    v8 = v4[5];
    v9 = v4[6];

    return MEMORY[0x2822009F8](sub_22FDC989C, v8, v9);
  }
}

uint64_t PhotosFaceInterface.provideShuffleAssetList(people:pets:nature:cityscape:)(uint64_t a1, char a2, char a3, char a4)
{
  *(v5 + 42) = a4;
  *(v5 + 41) = a3;
  *(v5 + 40) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  return MEMORY[0x2822009F8](sub_22FDC98EC, 0, 0);
}

uint64_t sub_22FDC98EC()
{

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_22FDC99B0;
  v2 = *(v0 + 42);
  v3 = *(v0 + 41);
  v4 = *(v0 + 40);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);

  return sub_22FDD14E4("provideShuffleAssetList(people:pets:nature:cityscape:)", 54, 2, v5, v6, v4, v3, v2);
}

uint64_t sub_22FDC99B0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_22FDC9AF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *(v6 + 214) = a6;
  *(v6 + 213) = a5;
  *(v6 + 212) = a4;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = sub_22FE42EF4();
  *(v6 + 40) = v7;
  *(v6 + 48) = *(v7 - 8);
  *(v6 + 56) = swift_task_alloc();
  v8 = sub_22FE430A4();
  *(v6 + 64) = v8;
  *(v6 + 72) = *(v8 - 8);
  *(v6 + 80) = swift_task_alloc();
  v9 = sub_22FE42F24();
  *(v6 + 88) = v9;
  *(v6 + 96) = *(v9 - 8);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = type metadata accessor for ShuffleID(0);
  *(v6 + 120) = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v10 = sub_22FE43374();
  *(v6 + 128) = v10;
  *(v6 + 136) = v11;

  return MEMORY[0x2822009F8](sub_22FDC9D68, v10, v11);
}

uint64_t sub_22FDC9D68(uint64_t a1)
{
  v45 = v1;
  v44[5] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 32);
  sub_22FE42F14();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v1 + 32);
    v5 = sub_22FDC04C4(*(v2 + 16), 0);
    v6 = sub_22FDC1C54(v44, v5 + 4, v3, v4);
    v7 = v44[0];

    sub_22FDAF1A8(v7);
    if (v6 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v44[0] = v5;
  sub_22FDC117C(v44);
  v8 = v44[0];
  v9 = *(v44[0] + 2);
  if (v9)
  {
    v10 = 0;
    v40 = v44[0];
    v42 = (*(v1 + 72) + 8);
    v11 = v44[0] + 40;
    v38 = *(v44[0] + 2);
    while (1)
    {
      if (v10 >= *(v8 + 2))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
      }

      v12 = *(v1 + 80);
      v13 = *(v1 + 64);

      sub_22FE43094();
      v14 = sub_22FE43074();
      v16 = v15;
      (*v42)(v12, v13);
      if (v16 >> 60 == 15)
      {
        goto LABEL_43;
      }

      v17 = v16 >> 62;
      if ((v16 >> 62) > 1)
      {
        break;
      }

      if (!v17)
      {
        *(v1 + 184) = v14;
        *(v1 + 192) = v16;
        *(v1 + 194) = BYTE2(v16);
        *(v1 + 195) = BYTE3(v16);
        *(v1 + 196) = BYTE4(v16);
        *(v1 + 197) = BYTE5(v16);
        sub_22FDD42D8(&qword_27DAE44F0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
LABEL_8:
        sub_22FE42ED4();
        sub_22FDC27F0(v14, v16);
        sub_22FDC27F0(v14, v16);
        goto LABEL_9;
      }

      if (v14 >> 32 < v14)
      {
        goto LABEL_39;
      }

      if (sub_22FE42654() && __OFSUB__(v14, sub_22FE42684()))
      {
        goto LABEL_42;
      }

      sub_22FE42674();
      sub_22FDD42D8(&qword_27DAE44F0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      sub_22FE42ED4();
      sub_22FDC27F0(v14, v16);
      sub_22FDC27F0(v14, v16);
      v9 = v38;
      v8 = v40;
LABEL_9:
      ++v10;
      v11 += 16;
      if (v9 == v10)
      {
        goto LABEL_24;
      }
    }

    if (v17 == 2)
    {
      v18 = *(v14 + 16);
      v19 = *(v14 + 24);

      if (sub_22FE42654() && __OFSUB__(v18, sub_22FE42684()))
      {
        goto LABEL_41;
      }

      if (__OFSUB__(v19, v18))
      {
        goto LABEL_40;
      }

      sub_22FE42674();
      sub_22FDD42D8(&qword_27DAE44F0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      v9 = v38;
      v8 = v40;
    }

    else
    {
      sub_22FDD42D8(&qword_27DAE44F0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      *(v1 + 198) = 0;
      *(v1 + 204) = 0;
    }

    goto LABEL_8;
  }

LABEL_24:
  v20 = *(v1 + 212);

  v43 = *(v1 + 214);
  if (v20)
  {
    if (*(v1 + 214))
    {
      v21 = 3;
    }

    else
    {
      v21 = 1;
    }

    if (*(v1 + 213))
    {
LABEL_29:
      v21 |= 4u;
      v41 = 1;
      goto LABEL_35;
    }
  }

  else
  {
    if (*(v1 + 214))
    {
      v21 = 2;
    }

    else
    {
      v21 = 0;
    }

    if (*(v1 + 213))
    {
      goto LABEL_29;
    }
  }

  v41 = 0;
LABEL_35:
  v23 = *(v1 + 112);
  v22 = *(v1 + 120);
  v24 = *(v1 + 104);
  v25 = *(v1 + 48);
  v26 = *(v1 + 56);
  v39 = *(v1 + 212);
  v34 = *(v1 + 40);
  v35 = *(v1 + 96);
  v36 = *(v1 + 32);
  v37 = *(v1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE41E8, &qword_22FE4A2D8);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_22FE49F60;
  *(v27 + 32) = v21;
  v28 = sub_22FDC22A8(v27);
  v30 = v29;

  sub_22FDC089C(v28, v30, v24);
  sub_22FD917D4(v28, v30);
  sub_22FE42F04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE44F8, &qword_22FE4B960);
  sub_22FE42EE4();
  sub_22FE42894();
  (*(v25 + 8))(v26, v34);
  (*(v35 + 8))(v24, v37);
  *(v22 + v23[5]) = v36;
  *(v22 + v23[6]) = v39;
  *(v22 + v23[7]) = v41;
  *(v22 + v23[8]) = v43;

  v31 = swift_task_alloc();
  *(v1 + 144) = v31;
  *v31 = v1;
  v31[1] = sub_22FDCA4A4;
  v32 = *(v1 + 120);

  return sub_22FDC79AC(1, v32);
}

uint64_t sub_22FDCA4A4(uint64_t a1)
{
  v4 = *v2;
  v4[19] = v1;

  v5 = v4[15];
  if (v1)
  {
    sub_22FDD44CC(v5, type metadata accessor for ShuffleID);
    v6 = v4[16];
    v7 = v4[17];
    v8 = sub_22FDCA708;
  }

  else
  {
    v4[20] = a1;
    sub_22FDD44CC(v5, type metadata accessor for ShuffleID);
    v6 = v4[16];
    v7 = v4[17];
    v8 = sub_22FDCA640;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_22FDCA640()
{
  **(v0 + 16) = *(v0 + 160);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FDCA708()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PhotosFaceInterface.provideShuffleAssetList(shuffle:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FDCA7E4, 0, 0);
}

uint64_t sub_22FDCA7E4()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_22FDCA8B8;

  return sub_22FDC4078("provideShuffleAssetList(shuffle:)", 33, 2, &unk_22FE4B790, v1);
}

uint64_t sub_22FDCA8B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22FDD4670, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_22FDCAA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4568, &qword_22FE4B938);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for ShuffleID(0);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v6 = sub_22FE43374();
  v3[9] = v6;
  v3[10] = v5;

  return MEMORY[0x2822009F8](sub_22FDCAB98, v6, v5);
}

uint64_t sub_22FDCAB98()
{
  v0[11] = *(v0[3] + 16);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_22FDCAC48;

  return sub_22FDC6228(1);
}

uint64_t sub_22FDCAC48(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {

    v6 = v5[1];

    return v6();
  }

  else
  {
    v4[14] = a1;
    v8 = v4[9];
    v9 = v4[10];

    return MEMORY[0x2822009F8](sub_22FDCADA8, v8, v9);
  }
}

uint64_t sub_22FDCADA8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  *(swift_task_alloc() + 16) = v5;
  sub_22FDCB2C8(sub_22FDD42B8, v1, v4);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_22FD93E6C(*(v0 + 40), &qword_27DAE4568, &qword_22FE4B938);
    **(v0 + 16) = MEMORY[0x277D84F90];

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    sub_22FDD43FC(*(v0 + 40), *(v0 + 64), type metadata accessor for ShuffleID);
    v8 = swift_task_alloc();
    *(v0 + 120) = v8;
    *v8 = v0;
    v8[1] = sub_22FDCAF7C;
    v9 = *(v0 + 64);

    return sub_22FDC79AC(1, v9);
  }
}

uint64_t sub_22FDCAF7C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = v4[9];
    v6 = v4[10];
    v7 = sub_22FDCB13C;
  }

  else
  {
    v4[17] = a1;
    v5 = v4[9];
    v6 = v4[10];
    v7 = sub_22FDCB0A4;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_22FDCB0A4()
{
  sub_22FDD44CC(*(v0 + 64), type metadata accessor for ShuffleID);
  **(v0 + 16) = *(v0 + 136);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FDCB13C()
{
  sub_22FDD44CC(*(v0 + 64), type metadata accessor for ShuffleID);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FDCB1C8(uint64_t a1, uint64_t a2)
{
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  sub_22FE43374();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return _s10PhotosFace7DailyIDV2eeoiySbAC_ACtFZ_0() & 1;
}

uint64_t sub_22FDCB2C8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for ShuffleID(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_22FDD4464(v12, v10, type metadata accessor for ShuffleID);
      v14 = a1(v10);
      if (v3)
      {
        return sub_22FDD44CC(v10, type metadata accessor for ShuffleID);
      }

      if (v14)
      {
        break;
      }

      sub_22FDD44CC(v10, type metadata accessor for ShuffleID);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_22FDD43FC(v10, v18, type metadata accessor for ShuffleID);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t PhotosFaceInterface.track(gallery:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for ShuffleID(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_22FDD4464(a1, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShuffleID);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  sub_22FDD43FC(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ShuffleID);

  v10 = sub_22FDCF488("track(gallery:)", 15, 2, &unk_22FE4B7A8, v9, &unk_2844D0D18, &unk_22FE4B9B8);

  *a2 = v10;
  return result;
}

uint64_t sub_22FDCB600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_22FDCB624, 0, 0);
}

uint64_t sub_22FDCB624()
{
  *(v0 + 48) = *(*(v0 + 32) + 16);
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v2 = sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FDCB71C, v2, v1);
}

uint64_t sub_22FDCB71C()
{
  v12 = v0;
  v1 = *(v0[6] + 16);
  v11[0] = 2;
  v2 = off_2844D08E0[0];
  v3 = type metadata accessor for ShuffleID(0);
  v4 = v2(v11, v3);
  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = 8;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;

  sub_22FDB4380(v4, v6);
  v8 = sub_22FE275DC(&unk_22FE4B930, v7);

  sub_22FD917D4(v4, v6);
  v0[2] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4550, &qword_22FE4B908);
  type metadata accessor for StoredPhoto(0);
  sub_22FDBC930(&qword_27DAE4558, &qword_27DAE4550, &qword_22FE4B908, &protocol conformance descriptor for DestructableSequence<A>);
  sub_22FE43C54();
  v9 = v0[1];

  return v9();
}

uint64_t PhotosFaceInterface.untrack(gallery:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FDCB914, 0, 0);
}

uint64_t sub_22FDCB914()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_22FDC85D8;

  return sub_22FDC3968(v2, "untrack(gallery:)", 17, 2, &unk_22FE4B7C0, v1);
}

uint64_t sub_22FDCB9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v5 = sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FDCBAD4, v5, v4);
}

uint64_t sub_22FDCBAD4()
{
  v9 = v0;
  v1 = *(*(*(v0 + 16) + 16) + 16);
  v8 = 2;
  v2 = UUID.serialized(version:)(&v8);
  v4 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = 9;
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;

  sub_22FDB4380(v2, v4);
  sub_22FE275DC(&unk_22FE4B928, v5);

  sub_22FD917D4(v2, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22FDCBBFC()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_22FDD4674;
  v2 = *(v0 + 16);

  return sub_22FDD2F08("listGalleries()", 15, 2, v2);
}

uint64_t sub_22FDCBCD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for FetchFaceRequest(0);
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDCBD70, 0, 0);
}

uint64_t sub_22FDCBD70()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_22FE428C4();
  (*(*(v4 - 8) + 16))(v1, v3, v4);
  v5 = v1 + *(v2 + 20);
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_22FDC8D08;
  v7 = v0[6];
  v8 = v0[2];

  return PhotosXPCClient.fetchFace(type:request:)(v8, 2, v7);
}

uint64_t sub_22FDCBEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 48) = type metadata accessor for FetchFaceRequest(0);
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDCBF3C, 0, 0);
}

uint64_t sub_22FDCBF3C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = sub_22FE428C4();
  (*(*(v6 - 8) + 16))(v1, v4, v6);
  v7 = v1 + *(v2 + 20);
  *v7 = v5;
  *(v7 + 8) = v3 & 1;
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_22FDC91FC;
  v9 = *(v0 + 56);
  v10 = *(v0 + 16);

  return PhotosXPCClient.fetchFace(type:request:)(v10, 2, v9);
}

uint64_t PhotosFaceInterface.track(daily:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for DailyID(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_22FDD4464(a1, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DailyID);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  sub_22FDD43FC(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for DailyID);

  v10 = sub_22FDCF488("track(daily:)", 13, 2, &unk_22FE4B800, v9, &unk_2844D0D18, &unk_22FE4B9B8);

  *a2 = v10;
  return result;
}

uint64_t sub_22FDCC1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_22FDCC1E0, 0, 0);
}

uint64_t sub_22FDCC1E0()
{
  *(v0 + 48) = *(*(v0 + 32) + 16);
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v2 = sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FDCC2D8, v2, v1);
}

uint64_t sub_22FDCC2D8()
{
  v12 = v0;
  v1 = *(v0[6] + 16);
  v11[0] = 2;
  v2 = off_2844D0800;
  v3 = type metadata accessor for DailyID(0);
  v4 = v2(v11, v3);
  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = 22;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;

  sub_22FDB4380(v4, v6);
  v8 = sub_22FE275DC(&unk_22FE4B900, v7);

  sub_22FD917D4(v4, v6);
  v0[2] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4550, &qword_22FE4B908);
  type metadata accessor for StoredPhoto(0);
  sub_22FDBC930(&qword_27DAE4558, &qword_27DAE4550, &qword_22FE4B908, &protocol conformance descriptor for DestructableSequence<A>);
  sub_22FE43C54();
  v9 = v0[1];

  return v9();
}

uint64_t PhotosFaceInterface.untrack(daily:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22FDCC4D0, 0, 0);
}

uint64_t sub_22FDCC4D0()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_22FDC85D8;

  return sub_22FDC3968(v2, "untrack(daily:)", 15, 2, &unk_22FE4B818, v1);
}

uint64_t sub_22FDCC5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v5 = sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FDCC690, v5, v4);
}

uint64_t sub_22FDCC690()
{
  v9 = v0;
  v1 = *(*(*(v0 + 16) + 16) + 16);
  v8 = 2;
  v2 = UUID.serialized(version:)(&v8);
  v4 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = 23;
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;

  sub_22FDB4380(v2, v4);
  sub_22FE275DC(&unk_22FE4B8F8, v5);

  sub_22FD917D4(v2, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22FDCC7B8()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_22FDD4674;
  v2 = *(v0 + 16);

  return sub_22FDD36D4("listDailies()", 13, 2, v2);
}

uint64_t sub_22FDCC894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for FetchFaceRequest(0);
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDCC92C, 0, 0);
}

uint64_t sub_22FDCC92C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_22FE428C4();
  (*(*(v4 - 8) + 16))(v1, v3, v4);
  v5 = v1 + *(v2 + 20);
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_22FDC8D08;
  v7 = v0[6];
  v8 = v0[2];

  return PhotosXPCClient.fetchFace(type:request:)(v8, 3, v7);
}

uint64_t sub_22FDCCA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 48) = type metadata accessor for FetchFaceRequest(0);
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDCCAF8, 0, 0);
}

uint64_t sub_22FDCCAF8()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = sub_22FE428C4();
  (*(*(v6 - 8) + 16))(v1, v4, v6);
  v7 = v1 + *(v2 + 20);
  *v7 = v5;
  *(v7 + 8) = v3 & 1;
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_22FDC91FC;
  v9 = *(v0 + 56);
  v10 = *(v0 + 16);

  return PhotosXPCClient.fetchFace(type:request:)(v10, 3, v9);
}

uint64_t sub_22FDCCC2C()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_22FDD4674;
  v2 = *(v0 + 16);

  return sub_22FDD1A18("provideDailyAssetList()", 23, 2, v2);
}

uint64_t PhotosFaceInterface.makeFullMask(localIdentifier:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_22FDCCCFC, 0, 0);
}

uint64_t sub_22FDCCCFC()
{
  v1 = swift_task_alloc();
  v0[3].i64[0] = v1;
  v1[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v2 = swift_task_alloc();
  v0[3].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_22FDCCDD4;

  return sub_22FDC4B60(v0[1].i64, "makeFullMask(localIdentifier:)", 30, 2, &unk_22FE4B870, v1);
}

uint64_t sub_22FDCCDD4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_22FDC6E98;
  }

  else
  {

    v2 = sub_22FDCCEF0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FDCCF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v5 = sub_22FE43374();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x2822009F8](sub_22FDCD000, v5, v4);
}

uint64_t sub_22FDCD000()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_22FDCD0A0;
  v2 = *(v0 + 32);

  return PhotosXPCClient.generateMask(identifier:)(v2);
}

uint64_t sub_22FDCD0A0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = v7[1];

    return v8();
  }

  else
  {
    v6[8] = a2;
    v6[9] = a1;
    v10 = v6[5];
    v11 = v6[6];

    return MEMORY[0x2822009F8](sub_22FDCD1F8, v10, v11);
  }
}

uint64_t PhotosFaceInterface.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22FDCD278(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 48) = a6;
  *(v8 + 56) = a8;
  *(v8 + 208) = a7;
  *(v8 + 32) = a2;
  *(v8 + 40) = a5;
  *(v8 + 24) = a1;
  v10 = type metadata accessor for StoredPhoto(0);
  *(v8 + 64) = v10;
  *(v8 + 72) = *(v10 - 8);
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4580, &qword_22FE4B9C0);
  *(v8 + 104) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE45A8, &qword_22FE4B9F0);
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  *(v8 + 128) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE45B0, &qword_22FE4B9F8);
  *(v8 + 136) = v12;
  *(v8 + 144) = *(v12 - 8);
  *(v8 + 152) = swift_task_alloc();
  v13 = swift_task_alloc();
  *(v8 + 160) = v13;
  v16 = (a3 + *a3);
  v14 = swift_task_alloc();
  *(v8 + 168) = v14;
  *v14 = v8;
  v14[1] = sub_22FDCD510;

  return v16(v13);
}

uint64_t sub_22FDCD510()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_22FDCD770;
  }

  else
  {
    v2 = sub_22FDCD624;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FDCD624()
{
  (*(v0[18] + 16))(v0[19], v0[20], v0[17]);
  sub_22FDBC930(&qword_27DAE45B8, &qword_27DAE45B0, &qword_22FE4B9F8, MEMORY[0x277D859B0]);
  sub_22FE43464();
  v1 = sub_22FDBC930(&qword_27DAE45C0, &qword_27DAE45A8, &qword_22FE4B9F0, MEMORY[0x277D859A8]);
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_22FDCD820;
  v3 = v0[13];
  v4 = v0[14];

  return MEMORY[0x282200310](v3, 0, 0, v0 + 2, v4, v1);
}

uint64_t sub_22FDCD770()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FDCD820()
{

  if (v0)
  {
    v1 = sub_22FDCDEA4;
  }

  else
  {
    v1 = sub_22FDCD930;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_22FDCD930()
{
  v40 = v0;
  v1 = v0[13];
  if ((*(v0[9] + 48))(v1, 1, v0[8]) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
    if (qword_27DAE2AF0 != -1)
    {
      swift_once();
    }

    v2 = sub_22FE42D34();
    __swift_project_value_buffer(v2, qword_27DAE5190);
    v3 = sub_22FE42D14();
    v4 = sub_22FE436C4();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[20];
    v8 = v0[17];
    v7 = v0[18];
    if (v5)
    {
      v35 = v0[7];
      v37 = v0[20];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v39 = v10;
      *v9 = 136315394;
      v11 = sub_22FE43914();
      v13 = sub_22FD98218(v11, v12, &v39);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2048;
      *(v9 + 14) = v35;
      _os_log_impl(&dword_22FD6D000, v3, v4, "%s (%ld) finished.", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x23190C380](v10, -1, -1);
      MEMORY[0x23190C380](v9, -1, -1);

      (*(v7 + 8))(v37, v8);
    }

    else
    {

      (*(v7 + 8))(v6, v8);
    }

    v31 = v0[1];

    return v31();
  }

  else
  {
    sub_22FDD43FC(v1, v0[12], type metadata accessor for StoredPhoto);
    if (qword_27DAE2AF0 != -1)
    {
      swift_once();
    }

    v14 = v0[11];
    v15 = v0[12];
    v16 = sub_22FE42D34();
    __swift_project_value_buffer(v16, qword_27DAE5190);
    sub_22FDD4464(v15, v14, type metadata accessor for StoredPhoto);
    v17 = sub_22FE42D14();
    v18 = sub_22FE436C4();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[11];
    if (v19)
    {
      v21 = v0[10];
      v36 = v0[7];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v39 = v23;
      *v22 = 136315650;
      v24 = sub_22FE43914();
      v26 = sub_22FD98218(v24, v25, &v39);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2048;
      *(v22 + 14) = v36;
      *(v22 + 22) = 2080;
      sub_22FDD4464(v20, v21, type metadata accessor for StoredPhoto);
      v27 = sub_22FE430B4();
      v29 = v28;
      sub_22FDD44CC(v20, type metadata accessor for StoredPhoto);
      v30 = sub_22FD98218(v27, v29, &v39);

      *(v22 + 24) = v30;
      _os_log_impl(&dword_22FD6D000, v17, v18, "%s (%ld) has next result: %s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23190C380](v23, -1, -1);
      MEMORY[0x23190C380](v22, -1, -1);
    }

    else
    {

      sub_22FDD44CC(v20, type metadata accessor for StoredPhoto);
    }

    v38 = (v0[3] + *v0[3]);
    v33 = swift_task_alloc();
    v0[24] = v33;
    *v33 = v0;
    v33[1] = sub_22FDCE160;
    v34 = v0[12];

    return v38(v34);
  }
}

uint64_t sub_22FDCDEA4()
{
  v23 = v0;
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[2];
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D34();
  __swift_project_value_buffer(v2, qword_27DAE5190);
  v3 = v1;
  v4 = sub_22FE42D14();
  v5 = sub_22FE436A4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[20];
  v8 = v0[17];
  v9 = v0[18];
  if (v6)
  {
    v20 = v0[7];
    v21 = v0[17];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v10 = 136315650;
    v13 = sub_22FE43914();
    v15 = sub_22FD98218(v13, v14, &v22);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v20;
    *(v10 + 22) = 2112;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v17;
    *v11 = v17;
    _os_log_impl(&dword_22FD6D000, v4, v5, "%s (%ld) failed: %@", v10, 0x20u);
    sub_22FD93E6C(v11, &qword_27DAE4208, &qword_22FE4ACE0);
    MEMORY[0x23190C380](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23190C380](v12, -1, -1);
    MEMORY[0x23190C380](v10, -1, -1);

    (*(v9 + 8))(v7, v21);
  }

  else
  {

    (*(v9 + 8))(v7, v8);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_22FDCE160()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_22FDCE370;
  }

  else
  {
    v2 = sub_22FDCE274;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FDCE274()
{
  sub_22FDD44CC(v0[12], type metadata accessor for StoredPhoto);
  v1 = sub_22FDBC930(&qword_27DAE45C0, &qword_27DAE45A8, &qword_22FE4B9F0, MEMORY[0x277D859A8]);
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_22FDCD820;
  v3 = v0[13];
  v4 = v0[14];

  return MEMORY[0x282200310](v3, 0, 0, v0 + 2, v4, v1);
}

uint64_t sub_22FDCE370()
{
  v26 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  sub_22FDD44CC(v0[12], type metadata accessor for StoredPhoto);
  (*(v2 + 8))(v1, v3);
  v4 = v0[25];
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v5 = sub_22FE42D34();
  __swift_project_value_buffer(v5, qword_27DAE5190);
  v6 = v4;
  v7 = sub_22FE42D14();
  v8 = sub_22FE436A4();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[20];
  v11 = v0[17];
  v12 = v0[18];
  if (v9)
  {
    v23 = v0[7];
    v24 = v0[17];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v13 = 136315650;
    v16 = sub_22FE43914();
    v18 = sub_22FD98218(v16, v17, &v25);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2048;
    *(v13 + 14) = v23;
    *(v13 + 22) = 2112;
    v19 = v4;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v20;
    *v14 = v20;
    _os_log_impl(&dword_22FD6D000, v7, v8, "%s (%ld) failed: %@", v13, 0x20u);
    sub_22FD93E6C(v14, &qword_27DAE4208, &qword_22FE4ACE0);
    MEMORY[0x23190C380](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23190C380](v15, -1, -1);
    MEMORY[0x23190C380](v13, -1, -1);

    (*(v12 + 8))(v10, v24);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_22FDCE650(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 48) = a6;
  *(v8 + 56) = a8;
  *(v8 + 208) = a7;
  *(v8 + 32) = a2;
  *(v8 + 40) = a5;
  *(v8 + 24) = a1;
  v10 = type metadata accessor for StoredPhoto(0);
  *(v8 + 64) = v10;
  *(v8 + 72) = *(v10 - 8);
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4580, &qword_22FE4B9C0);
  *(v8 + 104) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4588, &qword_22FE4B9C8);
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  *(v8 + 128) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4590, &qword_22FE4B9D0);
  *(v8 + 136) = v12;
  *(v8 + 144) = *(v12 - 8);
  *(v8 + 152) = swift_task_alloc();
  v13 = swift_task_alloc();
  *(v8 + 160) = v13;
  v16 = (a3 + *a3);
  v14 = swift_task_alloc();
  *(v8 + 168) = v14;
  *v14 = v8;
  v14[1] = sub_22FDCE8E8;

  return v16(v13);
}

uint64_t sub_22FDCE8E8()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_22FDD466C;
  }

  else
  {
    v2 = sub_22FDCE9FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FDCE9FC()
{
  (*(v0[18] + 16))(v0[19], v0[20], v0[17]);
  sub_22FDBC930(&qword_27DAE4598, &qword_27DAE4590, &qword_22FE4B9D0, MEMORY[0x277D85A00]);
  sub_22FE43464();
  v1 = sub_22FDBC930(&qword_27DAE45A0, &qword_27DAE4588, &qword_22FE4B9C8, MEMORY[0x277D859F8]);
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_22FDCEB48;
  v3 = v0[13];
  v4 = v0[14];

  return MEMORY[0x282200310](v3, 0, 0, v0 + 2, v4, v1);
}

uint64_t sub_22FDCEB48()
{

  if (v0)
  {
    v1 = sub_22FDD4658;
  }

  else
  {
    v1 = sub_22FDCEC58;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_22FDCEC58()
{
  v40 = v0;
  v1 = v0[13];
  if ((*(v0[9] + 48))(v1, 1, v0[8]) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
    if (qword_27DAE2AF0 != -1)
    {
      swift_once();
    }

    v2 = sub_22FE42D34();
    __swift_project_value_buffer(v2, qword_27DAE5190);
    v3 = sub_22FE42D14();
    v4 = sub_22FE436C4();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[20];
    v8 = v0[17];
    v7 = v0[18];
    if (v5)
    {
      v35 = v0[7];
      v37 = v0[20];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v39 = v10;
      *v9 = 136315394;
      v11 = sub_22FE43914();
      v13 = sub_22FD98218(v11, v12, &v39);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2048;
      *(v9 + 14) = v35;
      _os_log_impl(&dword_22FD6D000, v3, v4, "%s (%ld) finished.", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x23190C380](v10, -1, -1);
      MEMORY[0x23190C380](v9, -1, -1);

      (*(v7 + 8))(v37, v8);
    }

    else
    {

      (*(v7 + 8))(v6, v8);
    }

    v31 = v0[1];

    return v31();
  }

  else
  {
    sub_22FDD43FC(v1, v0[12], type metadata accessor for StoredPhoto);
    if (qword_27DAE2AF0 != -1)
    {
      swift_once();
    }

    v14 = v0[11];
    v15 = v0[12];
    v16 = sub_22FE42D34();
    __swift_project_value_buffer(v16, qword_27DAE5190);
    sub_22FDD4464(v15, v14, type metadata accessor for StoredPhoto);
    v17 = sub_22FE42D14();
    v18 = sub_22FE436C4();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[11];
    if (v19)
    {
      v21 = v0[10];
      v36 = v0[7];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v39 = v23;
      *v22 = 136315650;
      v24 = sub_22FE43914();
      v26 = sub_22FD98218(v24, v25, &v39);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2048;
      *(v22 + 14) = v36;
      *(v22 + 22) = 2080;
      sub_22FDD4464(v20, v21, type metadata accessor for StoredPhoto);
      v27 = sub_22FE430B4();
      v29 = v28;
      sub_22FDD44CC(v20, type metadata accessor for StoredPhoto);
      v30 = sub_22FD98218(v27, v29, &v39);

      *(v22 + 24) = v30;
      _os_log_impl(&dword_22FD6D000, v17, v18, "%s (%ld) has next result: %s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23190C380](v23, -1, -1);
      MEMORY[0x23190C380](v22, -1, -1);
    }

    else
    {

      sub_22FDD44CC(v20, type metadata accessor for StoredPhoto);
    }

    v38 = (v0[3] + *v0[3]);
    v33 = swift_task_alloc();
    v0[24] = v33;
    *v33 = v0;
    v33[1] = sub_22FDCF1CC;
    v34 = v0[12];

    return v38(v34);
  }
}

uint64_t sub_22FDCF1CC()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_22FDD464C;
  }

  else
  {
    v2 = sub_22FDCF2E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FDCF2E0()
{
  sub_22FDD44CC(v0[12], type metadata accessor for StoredPhoto);
  v1 = sub_22FDBC930(&qword_27DAE45A0, &qword_27DAE4588, &qword_22FE4B9C8, MEMORY[0x277D859F8]);
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_22FDCEB48;
  v3 = v0[13];
  v4 = v0[14];

  return MEMORY[0x282200310](v3, 0, 0, v0 + 2, v4, v1);
}

uint64_t sub_22FDCF3DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22FD8C738;

  return sub_22FDC3294(a1, v5, v4);
}

void *sub_22FDCF488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a3;

  v12 = sub_22FE177CC(100);
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v13 = sub_22FE42D34();
  __swift_project_value_buffer(v13, qword_27DAE5190);
  v14 = sub_22FE42D14();
  v15 = sub_22FE436C4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v16 = 136315394;
    v17 = sub_22FE43914();
    v19 = a2;
    v20 = v10;
    v21 = a7;
    v22 = sub_22FD98218(v17, v18, &v28);

    *(v16 + 4) = v22;
    a7 = v21;
    v10 = v20;
    a2 = v19;
    *(v16 + 12) = 2048;
    *(v16 + 14) = v12;
    _os_log_impl(&dword_22FD6D000, v14, v15, "Executing %s (%ld)", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x23190C380](v26, -1, -1);
    MEMORY[0x23190C380](v16, -1, -1);
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  *(v23 + 32) = a1;
  *(v23 + 40) = a2;
  *(v23 + 48) = v10;
  *(v23 + 56) = v12;
  v24 = sub_22FE2738C(a7, v23);

  return v24;
}

uint64_t sub_22FDCF69C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a5;
  *(v6 + 64) = a6;
  *(v6 + 40) = a2;
  *(v6 + 48) = a4;
  *(v6 + 120) = a3;
  *(v6 + 32) = a1;
  return MEMORY[0x2822009F8](sub_22FDCF6C8, 0, 0);
}

uint64_t sub_22FDCF6C8()
{
  v14 = v0;
  v1 = sub_22FE177CC(100);
  *(v0 + 72) = v1;
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D34();
  *(v0 + 80) = __swift_project_value_buffer(v2, qword_27DAE5190);
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315394;
    v7 = sub_22FE43914();
    v9 = sub_22FD98218(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v1;
    _os_log_impl(&dword_22FD6D000, v3, v4, "Executing %s (%ld)", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23190C380](v6, -1, -1);
    MEMORY[0x23190C380](v5, -1, -1);
  }

  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v11 = sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FDCF910, v11, v10);
}

uint64_t sub_22FDCF910()
{
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_22FDCF9B0;
  v3 = v0[7];
  v2 = v0[8];

  return PhotosXPCClient.sendMessage(request:)(v3, v2);
}

uint64_t sub_22FDCF9B0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[14] = v2;

  if (v2)
  {
    v5 = sub_22FDCFCA8;
  }

  else
  {
    v5 = sub_22FDCFAC8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FDCFAC8()
{
  v19 = v0;
  swift_bridgeObjectRetain_n();
  v1 = sub_22FE42D14();
  v2 = sub_22FE436C4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[12];
    v17 = v0[13];
    v4 = v0[9];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315650;
    v7 = sub_22FE43914();
    v9 = sub_22FD98218(v7, v8, &v18);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v4;
    *(v5 + 22) = 2080;
    v0[2] = v3;
    v0[3] = v17;
    v10 = sub_22FE430B4();
    v12 = sub_22FD98218(v10, v11, &v18);

    *(v5 + 24) = v12;
    _os_log_impl(&dword_22FD6D000, v1, v2, "%s (%ld) finished: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23190C380](v6, -1, -1);
    MEMORY[0x23190C380](v5, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];
  v14 = v0[12];
  v15 = v0[13];

  return v13(v14, v15);
}

uint64_t sub_22FDCFCA8()
{
  v18 = v0;
  v1 = v0[14];
  v2 = v1;
  v3 = sub_22FE42D14();
  v4 = sub_22FE436A4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[14];
    v16 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136315650;
    v9 = sub_22FE43914();
    v11 = sub_22FD98218(v9, v10, &v17);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v16;
    *(v6 + 22) = 2112;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v13;
    *v7 = v13;
    _os_log_impl(&dword_22FD6D000, v3, v4, "%s (%ld) failed: %@", v6, 0x20u);
    sub_22FD93E6C(v7, &qword_27DAE4208, &qword_22FE4ACE0);
    MEMORY[0x23190C380](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23190C380](v8, -1, -1);
    MEMORY[0x23190C380](v6, -1, -1);
  }

  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t sub_22FDCFE8C(uint64_t a1)
{
  v4 = *(type metadata accessor for AlbumID(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FD8C738;

  return sub_22FDC5440(a1, v6, v1 + v5);
}

uint64_t sub_22FDCFF70(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22FD8C738;

  return sub_22FDC59A4(a1, v5, v4);
}

uint64_t sub_22FDD001C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = a4;
  *(v4 + 88) = a3;
  *(v4 + 24) = a1;
  return MEMORY[0x2822009F8](sub_22FDD0044, 0, 0);
}

uint64_t sub_22FDD0044()
{
  v14 = v0;
  v1 = sub_22FE177CC(100);
  *(v0 + 48) = v1;
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D34();
  *(v0 + 56) = __swift_project_value_buffer(v2, qword_27DAE5190);
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315394;
    v7 = sub_22FE43914();
    v9 = sub_22FD98218(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v1;
    _os_log_impl(&dword_22FD6D000, v3, v4, "Executing %s (%ld)", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23190C380](v6, -1, -1);
    MEMORY[0x23190C380](v5, -1, -1);
  }

  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v11 = sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FDD028C, v11, v10);
}

uint64_t sub_22FDD028C()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_22FDD0338;

  return sub_22FDC5D90(0);
}

uint64_t sub_22FDD0338(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = sub_22FDD0638;
  }

  else
  {
    v4 = sub_22FDD044C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FDD044C()
{
  v17 = v0;
  swift_bridgeObjectRetain_n();
  v1 = sub_22FE42D14();
  v2 = sub_22FE436C4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[9];
    v4 = v0[6];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315650;
    v7 = sub_22FE43914();
    v9 = sub_22FD98218(v7, v8, &v16);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v4;
    *(v5 + 22) = 2080;
    v0[2] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4578, &qword_22FE4B998);
    v10 = sub_22FE430B4();
    v12 = sub_22FD98218(v10, v11, &v16);

    *(v5 + 24) = v12;
    _os_log_impl(&dword_22FD6D000, v1, v2, "%s (%ld) finished: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23190C380](v6, -1, -1);
    MEMORY[0x23190C380](v5, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];
  v14 = v0[9];

  return v13(v14);
}

uint64_t sub_22FDD0638()
{
  v18 = v0;
  v1 = v0[10];
  v2 = v1;
  v3 = sub_22FE42D14();
  v4 = sub_22FE436A4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v16 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136315650;
    v9 = sub_22FE43914();
    v11 = sub_22FD98218(v9, v10, &v17);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v16;
    *(v6 + 22) = 2112;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v13;
    *v7 = v13;
    _os_log_impl(&dword_22FD6D000, v3, v4, "%s (%ld) failed: %@", v6, 0x20u);
    sub_22FD93E6C(v7, &qword_27DAE4208, &qword_22FE4ACE0);
    MEMORY[0x23190C380](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23190C380](v8, -1, -1);
    MEMORY[0x23190C380](v6, -1, -1);
  }

  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t sub_22FDD081C(uint64_t a1)
{
  v4 = *(sub_22FE428C4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FD8C738;

  return sub_22FDC6B84(a1, v6, v1 + v5);
}

uint64_t sub_22FDD0900(uint64_t a1)
{
  v4 = *(sub_22FE428C4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FD8C738;

  return sub_22FDC6F28(a1, v6, v1 + v5, v8, v9);
}

uint64_t sub_22FDD0A28(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 32) = a2;
  *(v6 + 40) = a4;
  *(v6 + 136) = a3;
  *(v6 + 24) = a1;
  *(v6 + 64) = type metadata accessor for AlbumID(0);
  *(v6 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDD0AC8, 0, 0);
}

uint64_t sub_22FDD0AC8()
{
  v14 = v0;
  v1 = sub_22FE177CC(100);
  v0[10] = v1;
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D34();
  v0[11] = __swift_project_value_buffer(v2, qword_27DAE5190);
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315394;
    v7 = sub_22FE43914();
    v9 = sub_22FD98218(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v1;
    _os_log_impl(&dword_22FD6D000, v3, v4, "Executing %s (%ld)", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23190C380](v6, -1, -1);
    MEMORY[0x23190C380](v5, -1, -1);
  }

  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v11 = sub_22FE43374();
  v0[12] = v11;
  v0[13] = v10;

  return MEMORY[0x2822009F8](sub_22FDD0D10, v11, v10);
}

uint64_t sub_22FDD0D10()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  sub_22FE428B4();
  v5 = (v1 + *(v2 + 20));
  *v5 = v4;
  v5[1] = v3;

  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_22FDD0DF8;
  v7 = v0[9];

  return sub_22FDC7470(0, v7);
}

uint64_t sub_22FDD0DF8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[15] = a1;
  v4[16] = v1;

  sub_22FDD44CC(v3[9], type metadata accessor for AlbumID);
  if (v1)
  {
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_22FDD1148;
  }

  else
  {
    v7 = sub_22FDD0F54;
    v5 = 0;
    v6 = 0;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_22FDD0F54()
{
  v17 = v0;
  swift_bridgeObjectRetain_n();
  v1 = sub_22FE42D14();
  v2 = sub_22FE436C4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[15];
    v4 = v0[10];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315650;
    v7 = sub_22FE43914();
    v9 = sub_22FD98218(v7, v8, &v16);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v4;
    *(v5 + 22) = 2080;
    v0[2] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE44B0, &qword_22FE4B8D0);
    v10 = sub_22FE430B4();
    v12 = sub_22FD98218(v10, v11, &v16);

    *(v5 + 24) = v12;
    _os_log_impl(&dword_22FD6D000, v1, v2, "%s (%ld) finished: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23190C380](v6, -1, -1);
    MEMORY[0x23190C380](v5, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];
  v14 = v0[15];

  return v13(v14);
}

uint64_t sub_22FDD1164()
{
  v18 = v0;
  v1 = v0[16];
  v2 = v1;
  v3 = sub_22FE42D14();
  v4 = sub_22FE436A4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v16 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136315650;
    v9 = sub_22FE43914();
    v11 = sub_22FD98218(v9, v10, &v17);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v16;
    *(v6 + 22) = 2112;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v13;
    *v7 = v13;
    _os_log_impl(&dword_22FD6D000, v3, v4, "%s (%ld) failed: %@", v6, 0x20u);
    sub_22FD93E6C(v7, &qword_27DAE4208, &qword_22FE4ACE0);
    MEMORY[0x23190C380](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23190C380](v8, -1, -1);
    MEMORY[0x23190C380](v6, -1, -1);
  }

  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_22FDD1354(uint64_t a1)
{
  v4 = *(type metadata accessor for ShuffleID(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FD8C738;

  return sub_22FDC81F4(a1, v6, v1 + v5);
}

uint64_t sub_22FDD1438(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22FD8C738;

  return sub_22FDC86F4(a1, v5, v4);
}

uint64_t sub_22FDD14E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{
  *(v8 + 99) = a8;
  *(v8 + 98) = a7;
  *(v8 + 97) = a6;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  *(v8 + 96) = a3;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  return MEMORY[0x2822009F8](sub_22FDD1518, 0, 0);
}

uint64_t sub_22FDD1518()
{
  v18 = v0;
  v1 = sub_22FE177CC(100);
  *(v0 + 64) = v1;
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D34();
  *(v0 + 72) = __swift_project_value_buffer(v2, qword_27DAE5190);
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315394;
    v7 = sub_22FE43914();
    v9 = sub_22FD98218(v7, v8, &v17);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v1;
    _os_log_impl(&dword_22FD6D000, v3, v4, "Executing %s (%ld)", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23190C380](v6, -1, -1);
    MEMORY[0x23190C380](v5, -1, -1);
  }

  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  v10[1] = sub_22FDD1718;
  v11 = *(v0 + 99);
  v12 = *(v0 + 98);
  v13 = *(v0 + 97);
  v14 = *(v0 + 48);
  v15 = *(v0 + 56);

  return sub_22FDC9AF0(v0 + 16, v14, v15, v13, v12, v11);
}

uint64_t sub_22FDD1718()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_22FDD4648;
  }

  else
  {
    v2 = sub_22FDD182C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FDD182C()
{
  v16 = v0;
  v1 = v0[2];
  swift_bridgeObjectRetain_n();
  v2 = sub_22FE42D14();
  v3 = sub_22FE436C4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315650;
    v7 = sub_22FE43914();
    v9 = sub_22FD98218(v7, v8, &v15);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v4;
    *(v5 + 22) = 2080;
    v0[3] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE44B0, &qword_22FE4B8D0);
    v10 = sub_22FE430B4();
    v12 = sub_22FD98218(v10, v11, &v15);

    *(v5 + 24) = v12;
    _os_log_impl(&dword_22FD6D000, v2, v3, "%s (%ld) finished: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23190C380](v6, -1, -1);
    MEMORY[0x23190C380](v5, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13(v1);
}

uint64_t sub_22FDD1A18(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = a4;
  *(v4 + 112) = a3;
  *(v4 + 24) = a1;
  type metadata accessor for DailyID(0);
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FDD1AB0, 0, 0);
}

uint64_t sub_22FDD1AB0()
{
  v14 = v0;
  v1 = sub_22FE177CC(100);
  v0[7] = v1;
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D34();
  v0[8] = __swift_project_value_buffer(v2, qword_27DAE5190);
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315394;
    v7 = sub_22FE43914();
    v9 = sub_22FD98218(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v1;
    _os_log_impl(&dword_22FD6D000, v3, v4, "Executing %s (%ld)", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23190C380](v6, -1, -1);
    MEMORY[0x23190C380](v5, -1, -1);
  }

  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v11 = sub_22FE43374();
  v0[9] = v11;
  v0[10] = v10;

  return MEMORY[0x2822009F8](sub_22FDD1CF8, v11, v10);
}

uint64_t sub_22FDD1CF8()
{
  sub_22FE428B4();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_22FDD1DAC;
  v2 = *(v0 + 48);

  return sub_22FDC7DCC(3, v2);
}

uint64_t sub_22FDD1DAC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[12] = a1;
  v4[13] = v1;

  sub_22FDD44CC(v3[6], type metadata accessor for DailyID);
  if (v1)
  {
    v5 = v4[9];
    v6 = v4[10];
    v7 = sub_22FDD20FC;
  }

  else
  {
    v7 = sub_22FDD1F08;
    v5 = 0;
    v6 = 0;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_22FDD1F08()
{
  v17 = v0;
  swift_bridgeObjectRetain_n();
  v1 = sub_22FE42D14();
  v2 = sub_22FE436C4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[12];
    v4 = v0[7];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315650;
    v7 = sub_22FE43914();
    v9 = sub_22FD98218(v7, v8, &v16);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v4;
    *(v5 + 22) = 2080;
    v0[2] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE44B0, &qword_22FE4B8D0);
    v10 = sub_22FE430B4();
    v12 = sub_22FD98218(v10, v11, &v16);

    *(v5 + 24) = v12;
    _os_log_impl(&dword_22FD6D000, v1, v2, "%s (%ld) finished: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23190C380](v6, -1, -1);
    MEMORY[0x23190C380](v5, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];
  v14 = v0[12];

  return v13(v14);
}

uint64_t sub_22FDD2118()
{
  v18 = v0;
  v1 = v0[13];
  v2 = v1;
  v3 = sub_22FE42D14();
  v4 = sub_22FE436A4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[13];
    v16 = v0[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136315650;
    v9 = sub_22FE43914();
    v11 = sub_22FD98218(v9, v10, &v17);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v16;
    *(v6 + 22) = 2112;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v13;
    *v7 = v13;
    _os_log_impl(&dword_22FD6D000, v3, v4, "%s (%ld) failed: %@", v6, 0x20u);
    sub_22FD93E6C(v7, &qword_27DAE4208, &qword_22FE4ACE0);
    MEMORY[0x23190C380](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23190C380](v8, -1, -1);
    MEMORY[0x23190C380](v6, -1, -1);
  }

  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_22FDD2308(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = a4;
  *(v4 + 88) = a3;
  *(v4 + 24) = a1;
  return MEMORY[0x2822009F8](sub_22FDD2330, 0, 0);
}

uint64_t sub_22FDD2330()
{
  v14 = v0;
  v1 = sub_22FE177CC(100);
  *(v0 + 48) = v1;
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D34();
  *(v0 + 56) = __swift_project_value_buffer(v2, qword_27DAE5190);
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315394;
    v7 = sub_22FE43914();
    v9 = sub_22FD98218(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v1;
    _os_log_impl(&dword_22FD6D000, v3, v4, "Executing %s (%ld)", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23190C380](v6, -1, -1);
    MEMORY[0x23190C380](v5, -1, -1);
  }

  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v11 = sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FDD2578, v11, v10);
}

uint64_t sub_22FDD2578()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_22FDD2624;

  return sub_22FDC6228(1);
}

uint64_t sub_22FDD2624(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = sub_22FDD4654;
  }

  else
  {
    v4 = sub_22FDD2738;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FDD2738()
{
  v17 = v0;
  swift_bridgeObjectRetain_n();
  v1 = sub_22FE42D14();
  v2 = sub_22FE436C4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[9];
    v4 = v0[6];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315650;
    v7 = sub_22FE43914();
    v9 = sub_22FD98218(v7, v8, &v16);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v4;
    *(v5 + 22) = 2080;
    v0[2] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4560, &qword_22FE4B918);
    v10 = sub_22FE430B4();
    v12 = sub_22FD98218(v10, v11, &v16);

    *(v5 + 24) = v12;
    _os_log_impl(&dword_22FD6D000, v1, v2, "%s (%ld) finished: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23190C380](v6, -1, -1);
    MEMORY[0x23190C380](v5, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];
  v14 = v0[9];

  return v13(v14);
}

uint64_t sub_22FDD2924(uint64_t a1)
{
  v4 = *(sub_22FE428C4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FD8C738;

  return sub_22FDC8B6C(a1, v6, v1 + v5);
}

uint64_t sub_22FDD2A08(uint64_t a1)
{
  v4 = *(sub_22FE428C4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FD8C738;

  return sub_22FDC904C(a1, v6, v1 + v5, v8, v9);
}

uint64_t sub_22FDD2B30(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22FD73F54;

  return sub_22FDC95C0(a1, v5, v4);
}

uint64_t sub_22FDD2BDC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22FD8C738;

  return sub_22FDCAA10(a1, v5, v4);
}

uint64_t objectdestroy_24Tm()
{
  v1 = *(type metadata accessor for ShuffleID(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_22FE428C4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_22FDD2D78(uint64_t a1)
{
  v4 = *(type metadata accessor for ShuffleID(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FD8C738;

  return sub_22FDCB600(a1, v6, v1 + v5);
}

uint64_t sub_22FDD2E5C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22FD8C738;

  return sub_22FDCB9E4(a1, v5, v4);
}

uint64_t sub_22FDD2F08(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = a4;
  *(v4 + 88) = a3;
  *(v4 + 24) = a1;
  return MEMORY[0x2822009F8](sub_22FDD2F30, 0, 0);
}

uint64_t sub_22FDD2F30()
{
  v14 = v0;
  v1 = sub_22FE177CC(100);
  *(v0 + 48) = v1;
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D34();
  *(v0 + 56) = __swift_project_value_buffer(v2, qword_27DAE5190);
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315394;
    v7 = sub_22FE43914();
    v9 = sub_22FD98218(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v1;
    _os_log_impl(&dword_22FD6D000, v3, v4, "Executing %s (%ld)", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23190C380](v6, -1, -1);
    MEMORY[0x23190C380](v5, -1, -1);
  }

  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v11 = sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FDD3178, v11, v10);
}

uint64_t sub_22FDD3178()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_22FDD3224;

  return sub_22FDC6228(2);
}

uint64_t sub_22FDD3224(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = sub_22FDD4654;
  }

  else
  {
    v4 = sub_22FDD465C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FDD3338(uint64_t a1)
{
  v4 = *(sub_22FE428C4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FD8C738;

  return sub_22FDCBCD8(a1, v6, v1 + v5);
}

uint64_t sub_22FDD341C(uint64_t a1)
{
  v4 = *(sub_22FE428C4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FD8C738;

  return sub_22FDCBEA0(a1, v6, v1 + v5, v8, v9);
}

uint64_t sub_22FDD3544(uint64_t a1)
{
  v4 = *(type metadata accessor for DailyID(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FD8C738;

  return sub_22FDCC1BC(a1, v6, v1 + v5);
}

uint64_t sub_22FDD3628(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22FD8C738;

  return sub_22FDCC5A0(a1, v5, v4);
}

uint64_t sub_22FDD36D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = a4;
  *(v4 + 88) = a3;
  *(v4 + 24) = a1;
  return MEMORY[0x2822009F8](sub_22FDD36FC, 0, 0);
}

uint64_t sub_22FDD36FC()
{
  v14 = v0;
  v1 = sub_22FE177CC(100);
  *(v0 + 48) = v1;
  if (qword_27DAE2AF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D34();
  *(v0 + 56) = __swift_project_value_buffer(v2, qword_27DAE5190);
  v3 = sub_22FE42D14();
  v4 = sub_22FE436C4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315394;
    v7 = sub_22FE43914();
    v9 = sub_22FD98218(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v1;
    _os_log_impl(&dword_22FD6D000, v3, v4, "Executing %s (%ld)", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23190C380](v6, -1, -1);
    MEMORY[0x23190C380](v5, -1, -1);
  }

  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FDD42D8(&qword_28148B408, type metadata accessor for CommunicationActor, &protocol conformance descriptor for CommunicationActor);
  v11 = sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FDD3944, v11, v10);
}

uint64_t sub_22FDD3944()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_22FDD39F0;

  return sub_22FDC66C0(3);
}

uint64_t sub_22FDD39F0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = sub_22FDD4654;
  }

  else
  {
    v4 = sub_22FDD3B04;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FDD3B04()
{
  v17 = v0;
  swift_bridgeObjectRetain_n();
  v1 = sub_22FE42D14();
  v2 = sub_22FE436C4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[9];
    v4 = v0[6];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315650;
    v7 = sub_22FE43914();
    v9 = sub_22FD98218(v7, v8, &v16);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v4;
    *(v5 + 22) = 2080;
    v0[2] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4548, &qword_22FE4B8E8);
    v10 = sub_22FE430B4();
    v12 = sub_22FD98218(v10, v11, &v16);

    *(v5 + 24) = v12;
    _os_log_impl(&dword_22FD6D000, v1, v2, "%s (%ld) finished: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23190C380](v6, -1, -1);
    MEMORY[0x23190C380](v5, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];
  v14 = v0[9];

  return v13(v14);
}

uint64_t objectdestroy_14Tm()
{
  v1 = sub_22FE428C4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_22FDD3DB4(uint64_t a1)
{
  v4 = *(sub_22FE428C4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FD8C738;

  return sub_22FDCC894(a1, v6, v1 + v5);
}

uint64_t objectdestroy_18Tm()
{
  v1 = sub_22FE428C4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_22FDD3F68(uint64_t a1)
{
  v4 = *(sub_22FE428C4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FD8C738;

  return sub_22FDCCA5C(a1, v6, v1 + v5, v8, v9);
}

uint64_t sub_22FDD4090(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22FD8C738;

  return sub_22FDCCF0C(a1, v5, v4);
}

uint64_t sub_22FDD418C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22FD8C738;

  return sub_22FE26ABC(a1, a2, v6, (v2 + 24), v7, v8);
}

unint64_t sub_22FDD4264()
{
  result = qword_27DAE4540;
  if (!qword_27DAE4540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4540);
  }

  return result;
}

uint64_t sub_22FDD42D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FDD4320(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 56);
  v11 = *(v2 + 48);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_22FD8C738;

  return sub_22FDCE650(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_22FDD43FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FDD4464(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FDD44CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_97Tm()
{

  sub_22FD917D4(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_22FDD456C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 56);
  v11 = *(v2 + 48);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_22FD8C738;

  return sub_22FDCD278(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_22FDD4678(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v16 = MEMORY[0x277D84F90];
  sub_22FD9244C(0, v4, 0);
  v5 = v16;
  v8 = *(sub_22FE428C4() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    a1(&v15, v9);
    if (v3)
    {
      break;
    }

    v11 = v15;
    v16 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_22FD9244C((v12 > 1), v13 + 1, 1);
      v5 = v16;
    }

    *(v5 + 16) = v13 + 1;
    *(v5 + 8 * v13 + 32) = v11;
    v9 += v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FDD47D8(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, unint64_t a3)
{
  v4 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = a3;
    v36 = MEMORY[0x277D84F90];
    sub_22FD9244C(0, v4, 0);
    v7 = v36;
    v8 = v6 + 56;
    v9 = sub_22FE43834();
    v10 = 0;
    v30 = v6 + 64;
    v31 = v4;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v6 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_23;
      }

      v33 = v10;
      v13 = *(v6 + 36);
      v14 = v6;
      v15 = (*(v6 + 48) + 16 * v9);
      v16 = v15[1];
      v34[0] = *v15;
      v34[1] = v16;

      a1(&v35, v34);
      if (v3)
      {
        goto LABEL_27;
      }

      v17 = v35;
      v18 = v7;
      v36 = v7;
      v19 = *(v7 + 16);
      v20 = *(v18 + 24);
      if (v19 >= v20 >> 1)
      {
        v29 = v35;
        sub_22FD9244C((v20 > 1), v19 + 1, 1);
        v17 = v29;
        v18 = v36;
      }

      *(v18 + 16) = v19 + 1;
      *(v18 + 8 * v19 + 32) = v17;
      v11 = 1 << *(v14 + 32);
      if (v9 >= v11)
      {
        goto LABEL_24;
      }

      v21 = *(v8 + 8 * v12);
      if ((v21 & (1 << v9)) == 0)
      {
        goto LABEL_25;
      }

      v6 = v14;
      v7 = v18;
      v22 = v13;
      if (v13 != *(v14 + 36))
      {
        goto LABEL_26;
      }

      v23 = v21 & (-2 << (v9 & 0x3F));
      if (v23)
      {
        v11 = __clz(__rbit64(v23)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v12 << 6;
        v25 = v12 + 1;
        v26 = (v30 + 8 * v12);
        while (v25 < (v11 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            sub_22FD72BF8(v9, v22, 0);
            v11 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        sub_22FD72BF8(v9, v22, 0);
      }

LABEL_4:
      v3 = 0;
      v10 = v33 + 1;
      v9 = v11;
      if (v33 + 1 == v31)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:

    __break(1u);
  }

  return result;
}

void sub_22FDD4A54(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE8, &unk_22FE4A850);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22FE43AD4())
  {
    v24 = MEMORY[0x277D84F90];
    sub_22FD92388(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v10 = 0;
    v11 = v24;
    v18 = i;
    v19 = a3 & 0xC000000000000001;
    v17 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v19)
      {
        v13 = MEMORY[0x23190B530](v10, a3);
      }

      else
      {
        if (v10 >= *(v17 + 16))
        {
          goto LABEL_17;
        }

        v13 = *(a3 + 8 * v10 + 32);
      }

      i = v13;
      v23 = v13;
      v21(&v23);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v24 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_22FD92388((v14 > 1), v15 + 1, 1);
        v11 = v24;
      }

      *(v11 + 16) = v15 + 1;
      sub_22FD93E04(v8, v11 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v15, &qword_27DAE2CE8, &unk_22FE4A850);
      ++v10;
      if (v12 == v18)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_22FDD4C90(uint64_t a1, int a2)
{
  v39 = a2;
  v4 = type metadata accessor for StoredPhotoLayout(0);
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StoredPhotoLayoutProto(0);
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v42 = v2;
    v43 = MEMORY[0x277D84F90];
    sub_22FD92770(0, v9, 0);
    v41 = v43;
    v11 = a1 + 64;
    result = sub_22FE43834();
    v12 = result;
    v13 = 0;
    v32 = a1 + 72;
    v33 = v9;
    v34 = a1 + 64;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v11 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_22;
      }

      v40 = *(a1 + 36);
      v17 = v37;
      v18 = sub_22FDE02B8(*(a1 + 56) + *(v38 + 72) * v12, v37, type metadata accessor for StoredPhotoLayout);
      MEMORY[0x28223BE20](v18);
      *(&v31 - 2) = v17;
      *(&v31 - 8) = v39;
      sub_22FDD5628(&qword_27DAE4620, type metadata accessor for StoredPhotoLayoutProto, &protocol conformance descriptor for StoredPhotoLayoutProto);
      v19 = v42;
      sub_22FE42C14();
      v42 = v19;
      sub_22FDE01F0(v17, type metadata accessor for StoredPhotoLayout);
      v20 = v41;
      v43 = v41;
      v22 = *(v41 + 16);
      v21 = *(v41 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_22FD92770((v21 > 1), v22 + 1, 1);
        v20 = v43;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v41 = v20;
      result = sub_22FDE0250(v8, v20 + v23 + *(v35 + 72) * v22, type metadata accessor for StoredPhotoLayoutProto);
      v14 = 1 << *(a1 + 32);
      if (v12 >= v14)
      {
        goto LABEL_23;
      }

      v11 = v34;
      v24 = *(v34 + 8 * v16);
      if ((v24 & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      if (v40 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v25 = v24 & (-2 << (v12 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v15 = v33;
      }

      else
      {
        v26 = v16 << 6;
        v27 = v16 + 1;
        v15 = v33;
        v28 = (v32 + 8 * v16);
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_22FD72BF8(v12, v40, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = sub_22FD72BF8(v12, v40, 0);
      }

LABEL_4:
      ++v13;
      v12 = v14;
      if (v13 == v15)
      {
        return v41;
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
  }

  return result;
}

uint64_t StoredPhoto.init(localIdentifier:modificationDate:creationDate:parallaxScale:title:subtitle:preferredLayout:layouts:accessibilityDescription:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = sub_22FE428C4();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for StoredPhoto(0);
  v21 = v20[5];
  v22 = sub_22FE42854();
  v23 = *(*(v22 - 8) + 32);
  v23(a9 + v21, a2, v22);
  result = (v23)(a9 + v20[6], a3, v22);
  *(a9 + v20[7]) = a10;
  v25 = (a9 + v20[8]);
  *v25 = a4;
  v25[1] = a5;
  v26 = (a9 + v20[9]);
  *v26 = a6;
  v26[1] = a7;
  *(a9 + v20[10]) = a8;
  *(a9 + v20[11]) = a11;
  v27 = (a9 + v20[12]);
  *v27 = a12;
  v27[1] = a13;
  return result;
}

PhotosFace::StoredPhotoLayout::Rect __swiftcall StoredPhotoLayout.Rect.init(x:y:width:height:)(Swift::Double x, Swift::Double y, Swift::Double width, Swift::Double height)
{
  *v4 = x;
  v4[1] = y;
  v4[2] = width;
  v4[3] = height;
  result.height = height;
  result.width = width;
  result.y = y;
  result.x = x;
  return result;
}

__n128 StoredPhotoLayout.init(baseImage:maskImage:originalCrop:timePosition:timeRect:backgroundZorder:foregroundZorder:timeElementZorder:imageAOTBrightness:userEdited:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, __n128 *a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  v22 = type metadata accessor for StoredPhotoLayout(0);
  v23 = v22[5];
  v24 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v30 = a5[1];
  v31 = *a5;
  v28 = a3[1];
  v29 = *a3;
  (*(*(v24 - 8) + 56))(a7 + v23, 1, 1, v24);
  sub_22FDE0250(a1, a7, type metadata accessor for StoredPhotoLayout.ImageLocation);
  sub_22FDE176C(a2, a7 + v23, &qword_27DAE42D8, &unk_22FE4BA30);
  v25 = (a7 + v22[6]);
  *v25 = v29;
  v25[1] = v28;
  *(a7 + v22[7]) = a4;
  v26 = (a7 + v22[8]);
  result = v31;
  *v26 = v31;
  v26[1] = v30;
  *(a7 + v22[9]) = a8;
  *(a7 + v22[10]) = a9;
  *(a7 + v22[11]) = a10;
  *(a7 + v22[12]) = a11;
  *(a7 + v22[13]) = a6;
  return result;
}

uint64_t StoredPhoto.hash(into:)(uint64_t a1)
{
  sub_22FE428C4();
  sub_22FDD5628(&qword_27DAE2CB8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22FE42FE4();
  v3 = type metadata accessor for StoredPhoto(0);
  sub_22FE42854();
  sub_22FDD5628(&qword_27DAE44C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_22FE42FE4();
  sub_22FE42FE4();
  v4 = *(v1 + v3[7]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x23190B9F0](*&v4);
  if (*(v1 + v3[8] + 8))
  {
    sub_22FE43DD4();
    sub_22FE430D4();
  }

  else
  {
    sub_22FE43DD4();
  }

  if (*(v1 + v3[9] + 8))
  {
    sub_22FE43DD4();
    sub_22FE430D4();
  }

  else
  {
    sub_22FE43DD4();
  }

  MEMORY[0x23190B9C0](*(v1 + v3[10]));
  sub_22FDDFDF8(a1, *(v1 + v3[11]));
  if (!*(v1 + v3[12] + 8))
  {
    return sub_22FE43DD4();
  }

  sub_22FE43DD4();

  return sub_22FE430D4();
}

uint64_t sub_22FDD5628(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t StoredPhoto.init(protobuf:version:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v65 = a3;
  v64 = sub_22FE42854();
  v7 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v66 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = &v60 - v10;
  v11 = sub_22FE428C4();
  v61 = *(v11 - 8);
  v62 = v11;
  MEMORY[0x28223BE20](v11);
  v68 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for StoredPhotoLayout(0);
  MEMORY[0x28223BE20](v76);
  v78 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StoredPhotoLayoutProto(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v77 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE8, &unk_22FE4A850);
  v74 = *(v20 - 8);
  v75 = v20;
  MEMORY[0x28223BE20](v20);
  v67 = *a2;
  v69 = a1;
  v22 = *(a1 + 40);
  v23 = *(v22 + 16);
  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v71 = (&v60 - v21);
    v60 = v7;
    v79 = MEMORY[0x277D84F90];
    sub_22FD92388(0, v23, 0);
    v25 = 0;
    v24 = v79;
    v26 = *(v15 + 80);
    v72 = v22;
    v73 = v22 + ((v26 + 32) & ~v26);
    v70 = v23;
    while (v25 < *(v22 + 16))
    {
      sub_22FDE02B8(v73 + *(v15 + 72) * v25, v19, type metadata accessor for StoredPhotoLayoutProto);
      v27 = v77;
      sub_22FDE02B8(v19, v77, type metadata accessor for StoredPhotoLayoutProto);
      v28 = v78;
      StoredPhotoLayout.init(protobuf:version:)(v27, v78);
      if (v4)
      {
        sub_22FDE01F0(v19, type metadata accessor for StoredPhotoLayoutProto);

        return sub_22FDE01F0(v69, type metadata accessor for StoredPhotoProto);
      }

      sub_22FDE01F0(v19, type metadata accessor for StoredPhotoLayoutProto);
      v29 = *(v75 + 48);
      v30 = v71;
      *v71 = *(v28 + *(v76 + 28));
      sub_22FDE0250(v28, v30 + v29, type metadata accessor for StoredPhotoLayout);
      v79 = v24;
      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_22FD92388((v31 > 1), v32 + 1, 1);
        v24 = v79;
      }

      ++v25;
      *(v24 + 16) = v32 + 1;
      sub_22FD93E04(v30, v24 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v32, &qword_27DAE2CE8, &unk_22FE4A850);
      v4 = 0;
      v22 = v72;
      if (v70 == v25)
      {
        v7 = v60;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    if (*(v24 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2CF0, &unk_22FE49020);
      v34 = sub_22FE43B04();
    }

    else
    {
      v34 = MEMORY[0x277D84F98];
    }

    v79 = v34;
    sub_22FDDF410(v24, 1, &v79);
    if (!v4)
    {
      v78 = v79;
      v35 = v69;
      v36 = *(v69 + 32);
      v37 = *v69;
      v38 = *(v69 + 8);
      LOBYTE(v79) = v67;
      sub_22FDB4380(v37, v38);
      v39 = v68;
      UUID.init(serialized:version:)(v37, v38);
      v77 = v36;
      v40 = v63;
      sub_22FE427E4();
      v41 = type metadata accessor for StoredPhotoProto(0);
      sub_22FE427E4();
      v42 = *(v35 + 24);
      v43 = (v35 + v41[12]);
      v44 = *v43;
      v45 = v43[1];
      v46 = (v35 + v41[13]);
      v47 = *v46;
      v48 = v46[1];
      v74 = v44;
      v75 = v47;
      v49 = (v35 + v41[10]);
      v50 = v49[1];
      v76 = *v49;

      sub_22FDE01F0(v35, type metadata accessor for StoredPhotoProto);
      v51 = v65;
      (*(v61 + 32))(v65, v39, v62);
      v52 = type metadata accessor for StoredPhoto(0);
      v53 = *(v7 + 32);
      v54 = v64;
      v53(v51 + v52[5], v40, v64);
      result = (v53)(v51 + v52[6], v66, v54);
      *(v51 + v52[7]) = v42;
      v55 = (v51 + v52[8]);
      v56 = v75;
      *v55 = v74;
      v55[1] = v45;
      v57 = (v51 + v52[9]);
      *v57 = v56;
      v57[1] = v48;
      v58 = v78;
      *(v51 + v52[10]) = v77;
      *(v51 + v52[11]) = v58;
      v59 = (v51 + v52[12]);
      *v59 = v76;
      v59[1] = v50;
      return result;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t StoredPhoto.protobuf(version:)(char *a1)
{
  type metadata accessor for StoredPhotoProto(0);
  sub_22FDD5628(&qword_27DAE4338, type metadata accessor for StoredPhotoProto, &protocol conformance descriptor for StoredPhotoProto);
  return sub_22FE42C14();
}

Swift::Void __swiftcall StoredPhoto.gather(attachments:version:)(Swift::OpaquePointer *attachments, PhotosFace::ProtocolVersion version)
{
  v3 = v2;
  v112 = type metadata accessor for LazyDataState(0);
  MEMORY[0x28223BE20](v112);
  v6 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v87 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  MEMORY[0x28223BE20](v10 - 8);
  v110 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v109 = &v87 - v13;
  v14 = sub_22FE426C4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v108 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_22FE42774();
  v17 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v107 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v106 = &v87 - v20;
  MEMORY[0x28223BE20](v21);
  v127 = &v87 - v22;
  v23 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  MEMORY[0x28223BE20](v23 - 8);
  v92 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for StoredPhotoLayout(0);
  v91 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v26 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v90 = &v87 - v28;
  v29 = *(v3 + *(type metadata accessor for StoredPhoto(0) + 44));
  v30 = *(v29 + 64);
  v96 = v29 + 64;
  v31 = 1 << *(v29 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v30;
  v95 = (v31 + 63) >> 6;
  v89 = (v17 + 48);
  v87 = (v17 + 32);
  v129 = (v17 + 8);
  v126 = *MEMORY[0x277CC91D8];
  v117 = (v15 + 8);
  v118 = (v15 + 104);
  v105 = (v17 + 16);
  v104 = (v17 + 56);
  v34 = v26;
  v94 = v29;

  v35 = 0;
  v116 = v34;
  v113 = v3;
  v111 = v6;
  v93 = v9;
  v103 = attachments;
  v125 = xmmword_22FE4BA20;
  v102 = v14;
  while (v33)
  {
    v36 = v127;
LABEL_12:
    v38 = v90;
    sub_22FDE02B8(*(v94 + 56) + *(v91 + 72) * (__clz(__rbit64(v33)) | (v35 << 6)), v90, type metadata accessor for StoredPhotoLayout);
    sub_22FDE0250(v38, v34, type metadata accessor for StoredPhotoLayout);
    v39 = v34;
    v40 = v92;
    sub_22FDE02B8(v39, v92, type metadata accessor for StoredPhotoLayout.ImageLocation);
    v41 = v128;
    if ((*v89)(v40, 1, v128) == 1)
    {
      v130 = 0x5F65736162;
      v131 = 0xE500000000000000;
      v42 = sub_22FE436D4();
      MEMORY[0x23190ACF0](v42);

      MEMORY[0x23190ACF0](95, 0xE100000000000000);
      sub_22FE428C4();
      sub_22FDD5628(&qword_27DAE41D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v43 = sub_22FE43C24();
      MEMORY[0x23190ACF0](v43);

      MEMORY[0x23190ACF0](0x636965682ELL, 0xE500000000000000);
      v119 = v130;
      v120 = v131;
    }

    else
    {
      (*v87)(v36, v40, v41);
      v119 = sub_22FE426E4();
      v120 = v44;
      (*v129)(v36, v41);
    }

    v45 = v107;
    v115 = v33;
    if (qword_28148B788 != -1)
    {
      swift_once();
    }

    v100 = __swift_project_value_buffer(v41, qword_28148B790);
    sub_22FE42704();
    v130 = sub_22FE42874();
    v131 = v46;
    v123 = *v118;
    v47 = v108;
    v48 = v14;
    (v123)(v108, v126, v14);
    v122 = sub_22FD750CC();
    v49 = v106;
    sub_22FE42764();
    v121 = *v117;
    v121(v47, v48);

    v50 = *v129;
    (*v129)(v45, v128);
    v124 = v50;
    v130 = v119;
    v131 = v120;
    (v123)(v47, v126, v48);
    v51 = v127;
    sub_22FE42764();
    v121(v47, v48);
    v52 = v128;
    v50(v49, v128);
    v53 = v109;
    v99 = *v105;
    v99(v109, v51, v52);
    v54 = *v104;
    (*v104)(v53, 0, 1, v52);
    v97 = type metadata accessor for LazyData();
    v114 = swift_allocObject();
    v55 = v110;
    sub_22FD764B4(v53, v110, &qword_27DAE4300, &qword_22FE4AB28);
    v56 = v93;
    *v93 = v125;
    v57 = v112;
    v58 = *(v112 + 20);
    v101 = v54;
    v54(v56 + v58, 1, 1, v52);
    sub_22FDC27F0(*v56, *(v56 + 8));
    *v56 = v125;
    sub_22FDE176C(v55, v56 + v58, &qword_27DAE4300, &qword_22FE4AB28);
    *(v56 + *(v57 + 24)) = 0;
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE45E8, &qword_22FE4BA40);
    v59 = swift_allocObject();
    *(v59 + ((*(*v59 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
    v60 = v111;
    sub_22FDE02B8(v56, v111, type metadata accessor for LazyDataState);
    sub_22FD93E6C(v53, &qword_27DAE4300, &qword_22FE4AB28);
    v124(v51, v52);
    sub_22FDE01F0(v56, type metadata accessor for LazyDataState);
    sub_22FDE0250(v60, v59 + *(*v59 + *MEMORY[0x277D841D0] + 16), type metadata accessor for LazyDataState);
    v61 = v114;
    *(v114 + 16) = v59;
    v62 = v103;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v130 = *v62;
    v64 = v113;
    sub_22FDDF95C(v61, v119, v120, isUniquelyReferenced_nonNull_native);

    *v62 = v130;
    v65 = StoredPhotoLayout.maskFilename(for:)(v64);
    if (v66)
    {
      v67 = v107;
      v119 = v66;
      v120 = v65;
      sub_22FE42704();
      v130 = sub_22FE42874();
      v131 = v68;
      v69 = v108;
      v70 = v102;
      (v123)(v108, v126, v102);
      v71 = v106;
      sub_22FE42764();
      v121(v69, v70);

      v72 = v128;
      v73 = v124;
      v124(v67, v128);
      v130 = v120;
      v131 = v119;
      (v123)(v69, v126, v70);
      v74 = v127;
      sub_22FE42764();
      v121(v69, v70);
      v73(v71, v72);
      v75 = v109;
      v99(v109, v74, v72);
      v76 = v72;
      v77 = v101;
      v101(v75, 0, 1, v72);
      v123 = swift_allocObject();
      v78 = v110;
      sub_22FD764B4(v75, v110, &qword_27DAE4300, &qword_22FE4AB28);
      *v56 = v125;
      v79 = v112;
      v80 = *(v112 + 20);
      v77(v56 + v80, 1, 1, v76);
      sub_22FDC27F0(*v56, *(v56 + 8));
      *v56 = v125;
      sub_22FDE176C(v78, v56 + v80, &qword_27DAE4300, &qword_22FE4AB28);
      *(v56 + *(v79 + 24)) = 0;
      v81 = swift_allocObject();
      *(v81 + ((*(*v81 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
      v82 = v111;
      sub_22FDE02B8(v56, v111, type metadata accessor for LazyDataState);
      v83 = v75;
      v84 = v103;
      sub_22FD93E6C(v83, &qword_27DAE4300, &qword_22FE4AB28);
      v124(v127, v76);
      sub_22FDE01F0(v56, type metadata accessor for LazyDataState);
      sub_22FDE0250(v82, v81 + *(*v81 + *MEMORY[0x277D841D0] + 16), type metadata accessor for LazyDataState);
      v85 = v123;
      *(v123 + 16) = v81;
      v86 = swift_isUniquelyReferenced_nonNull_native();
      v130 = *v84;
      sub_22FDDF95C(v85, v120, v119, v86);

      *v84 = v130;
    }

    v34 = v116;
    v33 = (v115 - 1) & v115;
    sub_22FDE01F0(v116, type metadata accessor for StoredPhotoLayout);
    v14 = v102;
  }

  v36 = v127;
  while (1)
  {
    v37 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v37 >= v95)
    {

      return;
    }

    v33 = *(v96 + 8 * v37);
    ++v35;
    if (v33)
    {
      v35 = v37;
      goto LABEL_12;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> StoredPhoto.save(attachments:version:)(Swift::OpaquePointer attachments, PhotosFace::ProtocolVersion version)
{
  v3 = v2;
  rawValue = attachments._rawValue;
  v93 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  MEMORY[0x28223BE20](v4 - 8);
  v78 = &v71 - v5;
  v77 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v85 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v71 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v76 = &v71 - v8;
  MEMORY[0x28223BE20](v9);
  v84 = &v71 - v10;
  v88 = type metadata accessor for StoredPhotoLayout(0);
  v80 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v79 = &v71 - v13;
  v14 = sub_22FE426C4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22FE42774();
  v19 = *(v18 - 1);
  v75 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v71 - v23;
  if (qword_28148B788 == -1)
  {
    goto LABEL_2;
  }

LABEL_27:
  swift_once();
LABEL_2:
  __swift_project_value_buffer(v18, qword_28148B790);
  sub_22FE42704();
  v83 = v3;
  v91 = sub_22FE42874();
  v92 = v25;
  (*(v15 + 104))(v17, *MEMORY[0x277CC91D8], v14);
  sub_22FD750CC();
  sub_22FE42764();
  (*(v15 + 8))(v17, v14);

  v26 = v19[1];
  v90 = v18;
  v81 = v26;
  (v26)(v21, v18);
  v27 = [objc_opt_self() defaultManager];
  v89 = v24;
  v28 = sub_22FE426F4();
  v91 = 0;
  v29 = [v27 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:&v91];

  v74 = v21;
  v82 = v19 + 1;
  if (v29)
  {
    v30 = v91;
    v24 = v86;
    v21 = v73;
  }

  else
  {
    v31 = v91;
    v32 = sub_22FE426B4();

    swift_willThrow();
    v21 = 0;
    v24 = v86;
  }

  v33 = *(v83 + *(type metadata accessor for StoredPhoto(0) + 44));
  v17 = (v33 + 64);
  v34 = 1 << *(v33 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v15 = v35 & *(v33 + 64);
  v3 = (v34 + 63) >> 6;
  v36 = v75;
  v73 = (v75 + 4);
  v75 = (v85 + 48);
  v85 = v33;
  v86 = (v36 + 6);

  v37 = 0;
  v38 = v84;
  v19 = v90;
  v72 = v17;
  if (v15)
  {
    while (2)
    {
      v14 = v37;
LABEL_14:
      v39 = v79;
      sub_22FDE02B8(*(v85 + 56) + *(v80 + 72) * (__clz(__rbit64(v15)) | (v14 << 6)), v79, type metadata accessor for StoredPhotoLayout);
      sub_22FDE0250(v39, v24, type metadata accessor for StoredPhotoLayout);
      sub_22FDE02B8(v24, v38, type metadata accessor for StoredPhotoLayout.ImageLocation);
      v18 = *v86;
      if ((*v86)(v38, 1, v19) == 1)
      {
        v91 = 0x5F65736162;
        v92 = 0xE500000000000000;
        v40 = sub_22FE436D4();
        MEMORY[0x23190ACF0](v40);

        MEMORY[0x23190ACF0](95, 0xE100000000000000);
        sub_22FE428C4();
        sub_22FDD5628(&qword_27DAE41D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v41 = sub_22FE43C24();
        MEMORY[0x23190ACF0](v41);

        MEMORY[0x23190ACF0](0x636965682ELL, 0xE500000000000000);
        v42 = v91;
        v43 = v92;
      }

      else
      {
        v44 = v3;
        v45 = v18;
        v46 = v24;
        v47 = v21;
        v48 = v74;
        (*v73)(v74, v38, v19);
        v49 = sub_22FE426E4();
        v50 = v19;
        v51 = v49;
        v43 = v52;
        v53 = v48;
        v21 = v47;
        v24 = v46;
        v18 = v45;
        v3 = v44;
        v17 = v72;
        (v81)(v53, v50);
        v42 = v51;
      }

      v54 = v89;
      sub_22FDDA0A8(v42, v43, v89, rawValue);
      if (v21)
      {
        v70 = v90;

        sub_22FDE01F0(v24, type metadata accessor for StoredPhotoLayout);
        (v81)(v54, v70);
        return;
      }

      v15 &= v15 - 1;

      v55 = v78;
      sub_22FD764B4(&v24[*(v88 + 20)], v78, &qword_27DAE42D8, &unk_22FE4BA30);
      v56 = (*v75)(v55, 1, v77);
      v19 = v90;
      if (v56 == 1)
      {
        sub_22FDE01F0(v24, type metadata accessor for StoredPhotoLayout);
        v37 = v14;
        v38 = v84;
        if (v15)
        {
          continue;
        }
      }

      else
      {
        v57 = v55;
        v58 = v76;
        sub_22FDE0250(v57, v76, type metadata accessor for StoredPhotoLayout.ImageLocation);
        v59 = v58;
        v60 = v71;
        sub_22FDE02B8(v59, v71, type metadata accessor for StoredPhotoLayout.ImageLocation);
        if ((v18)(v60, 1, v19) == 1)
        {
          v91 = 0x5F6B73616DLL;
          v92 = 0xE500000000000000;
          v61 = sub_22FE436D4();
          MEMORY[0x23190ACF0](v61);

          MEMORY[0x23190ACF0](95, 0xE100000000000000);
          sub_22FE428C4();
          sub_22FDD5628(&qword_27DAE41D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v62 = sub_22FE43C24();
          MEMORY[0x23190ACF0](v62);

          MEMORY[0x23190ACF0](1735290926, 0xE400000000000000);
          v64 = v91;
          v63 = v92;
        }

        else
        {
          v18 = 0;
          v65 = v74;
          (*v73)(v74, v60, v19);
          v66 = sub_22FE426E4();
          v67 = v19;
          v64 = v66;
          v63 = v68;
          v69 = v65;
          v21 = 0;
          (v81)(v69, v67);
        }

        sub_22FDE01F0(v76, type metadata accessor for StoredPhotoLayout.ImageLocation);
        sub_22FDDA0A8(v64, v63, v89, rawValue);
        sub_22FDE01F0(v24, type metadata accessor for StoredPhotoLayout);

        v37 = v14;
        v38 = v84;
        v19 = v90;
        if (v15)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v14 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v14 >= v3)
    {
      break;
    }

    v15 = *&v17[8 * v14];
    ++v37;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  (v81)(v89, v19);
}

uint64_t StoredPhoto.localIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22FE428C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StoredPhoto.modificationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StoredPhoto(0) + 20);
  v4 = sub_22FE42854();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StoredPhoto.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StoredPhoto(0) + 24);
  v4 = sub_22FE42854();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StoredPhoto.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for StoredPhoto(0) + 32));

  return v1;
}

uint64_t StoredPhoto.subtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for StoredPhoto(0) + 36));

  return v1;
}

uint64_t StoredPhoto.preferredLayout.setter(uint64_t a1)
{
  result = type metadata accessor for StoredPhoto(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t StoredPhoto.layouts.getter()
{
  type metadata accessor for StoredPhoto(0);
}

uint64_t StoredPhoto.layouts.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for StoredPhoto(0) + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t StoredPhoto.accessibilityDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for StoredPhoto(0) + 48));

  return v1;
}

void sub_22FDD7B90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoredPhotoLayout(0);
  v54 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v53 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4698, &unk_22FE4BEB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = (&v47 - v13);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v49 = a2;
    v50 = v6;
    v15 = 0;
    v48 = a1;
    v16 = *(a1 + 64);
    v47 = a1 + 64;
    v17 = 1 << *(a1 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v16;
    v20 = (v17 + 63) >> 6;
    v21 = &qword_27DAE42E0;
    v22 = &qword_22FE4A870;
    while (v19)
    {
      v52 = (v19 - 1) & v19;
      v23 = __clz(__rbit64(v19)) | (v15 << 6);
LABEL_16:
      v29 = *(*(v48 + 48) + 8 * v23);
      v30 = v53;
      sub_22FDE02B8(*(v48 + 56) + *(v54 + 72) * v23, v53, type metadata accessor for StoredPhotoLayout);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
      v32 = *(v31 + 48);
      *v11 = v29;
      sub_22FDE0250(v30, v11 + v32, type metadata accessor for StoredPhotoLayout);
      (*(*(v31 - 8) + 56))(v11, 0, 1, v31);
      v26 = v50;
LABEL_17:
      sub_22FD93E04(v11, v14, &qword_27DAE4698, &unk_22FE4BEB0);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
      if ((*(*(v33 - 8) + 48))(v14, 1, v33) == 1)
      {
        return;
      }

      v34 = *(v33 + 48);
      v35 = *v14;
      sub_22FDE0250(v14 + v34, v26, type metadata accessor for StoredPhotoLayout);
      v36 = v49;
      v37 = sub_22FD746AC(v35);
      if ((v38 & 1) == 0)
      {
        sub_22FDE01F0(v26, type metadata accessor for StoredPhotoLayout);
        return;
      }

      v39 = *(v36 + 56) + *(v54 + 72) * v37;
      v40 = v22;
      v41 = v20;
      v42 = v21;
      v43 = v14;
      v44 = v53;
      sub_22FDE02B8(v39, v53, type metadata accessor for StoredPhotoLayout);
      v51 = _s10PhotosFace17StoredPhotoLayoutV2eeoiySbAC_ACtFZ_0(v44, v26);
      v45 = v44;
      v14 = v43;
      v21 = v42;
      v20 = v41;
      v22 = v40;
      sub_22FDE01F0(v45, type metadata accessor for StoredPhotoLayout);
      sub_22FDE01F0(v26, type metadata accessor for StoredPhotoLayout);
      v19 = v52;
      if ((v51 & 1) == 0)
      {
        return;
      }
    }

    if (v20 <= v15 + 1)
    {
      v24 = v15 + 1;
    }

    else
    {
      v24 = v20;
    }

    v25 = v24 - 1;
    v26 = v50;
    while (1)
    {
      v27 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v27 >= v20)
      {
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
        (*(*(v46 - 8) + 56))(v11, 1, 1, v46);
        v52 = 0;
        v15 = v25;
        goto LABEL_17;
      }

      v28 = *(v47 + 8 * v27);
      ++v15;
      if (v28)
      {
        v52 = (v28 - 1) & v28;
        v23 = __clz(__rbit64(v28)) | (v27 << 6);
        v15 = v27;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void static StoredPhoto.localIdentifier(from:)()
{
  sub_22FDE0E58(0, &qword_27DAE45F0, 0x277CD97A8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_22FE42874();
  v1 = sub_22FE43054();

  v2 = [ObjCClassFromMetadata localIdentifierWithUUID_];

  if (v2)
  {
    sub_22FE43064();
  }

  else
  {
    __break(1u);
  }
}

uint64_t static StoredPhoto.uuid(from:)@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE45F8, &qword_22FE4BA48);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  sub_22FDE0E58(0, &qword_27DAE45F0, 0x277CD97A8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = sub_22FE43054();
  v9 = [ObjCClassFromMetadata uuidFromLocalIdentifier_];

  if (!v9)
  {
    goto LABEL_4;
  }

  sub_22FE43064();

  sub_22FE42864();

  v10 = sub_22FE428C4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    sub_22FD93E6C(v6, &qword_27DAE45F8, &qword_22FE4BA48);
LABEL_4:
    type metadata accessor for StoredPhotoError(0);
    sub_22FDD5628(&qword_27DAE4600, type metadata accessor for StoredPhotoError, &unk_22FE4BE44);
    swift_allocError();
    v13 = v12;
    v14 = sub_22FE42774();
    (*(*(v14 - 8) + 56))(v13, 2, 2, v14);
    return swift_willThrow();
  }

  return (*(v11 + 32))(a3, v6, v10);
}

uint64_t StoredPhoto.init(pfcStoredPhoto:baseURL:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a2;
  v6 = sub_22FE42854();
  v92 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v94 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v82 - v9;
  v11 = sub_22FE428C4();
  v90 = *(v11 - 8);
  v91 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 layouts];
  v16 = sub_22FDE0E58(0, &qword_27DAE4608, 0x277D3B3A8);
  v17 = sub_22FE43284();

  v96[1] = v17;
  v93 = v6;
  if (v17 >> 62)
  {
    v81 = sub_22FE43AD4();
    if (v81 < 0)
    {
      __break(1u);
LABEL_26:
      swift_once();
LABEL_7:
      v21 = sub_22FE42D34();
      __swift_project_value_buffer(v21, qword_28148B108);
      v22 = a1;
      v23 = sub_22FE42D14();
      v24 = sub_22FE436B4();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v96[0] = v26;
        *v25 = 136315394;
        v27 = [v22 layouts];
        v28 = sub_22FE43284();

        v29 = MEMORY[0x23190AE90](v28, v16);
        v94 = v22;
        v31 = v30;

        v32 = sub_22FD98218(v29, v31, v96);

        *(v25 + 4) = v32;
        *(v25 + 12) = 2080;

        v34 = MEMORY[0x23190AE90](v33, v16);
        v36 = v35;

        v37 = sub_22FD98218(v34, v36, v96);

        *(v25 + 14) = v37;
        _os_log_impl(&dword_22FD6D000, v23, v24, "Invalid layout index: %s in layouts %s", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190C380](v26, -1, -1);
        MEMORY[0x23190C380](v25, -1, -1);

        type metadata accessor for StoredPhotoError(0);
        sub_22FDD5628(&qword_27DAE4600, type metadata accessor for StoredPhotoError, &unk_22FE4BE44);
        swift_allocError();
        v39 = v38;
        v40 = sub_22FE42774();
        (*(*(v40 - 8) + 56))(v39, 1, 2, v40);
        swift_willThrow();
      }

      else
      {

        type metadata accessor for StoredPhotoError(0);
        sub_22FDD5628(&qword_27DAE4600, type metadata accessor for StoredPhotoError, &unk_22FE4BE44);
        swift_allocError();
        v42 = v41;
        v43 = sub_22FE42774();
        (*(*(v43 - 8) + 56))(v42, 1, 2, v43);
        swift_willThrow();
      }

      goto LABEL_23;
    }

    v18 = v81;
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ([a1 preferredLayout] >= v18)
  {
    if (qword_28148B100 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

  v89 = v10;
  v19 = sub_22FDD8C70([a1 preferredLayout]);
  v20 = [a1 localIdentifier];
  sub_22FE43064();

  static StoredPhoto.uuid(from:)(v14);
  if (v3)
  {
  }

  else
  {
    v88 = v19;

    v44 = [a1 modificationDate];
    sub_22FE42834();

    v45 = [a1 creationDate];
    sub_22FE42834();

    [a1 parallaxScale];
    v47 = v46;
    v48 = [a1 title];
    if (v48)
    {
      v49 = v48;
      v50 = sub_22FE43064();
      v86 = v51;
      v87 = v50;
    }

    else
    {
      v86 = 0;
      v87 = 0;
    }

    v52 = v88;
    v53 = [a1 subtitle];
    if (v53)
    {
      v54 = v53;
      v55 = sub_22FE43064();
      v84 = v56;
      v85 = v55;
    }

    else
    {
      v84 = 0;
      v85 = 0;
    }

    v83 = [v52 timePosition];
    v57 = [a1 layouts];
    v58 = sub_22FE43284();

    MEMORY[0x28223BE20](v59);
    *(&v82 - 2) = v95;
    sub_22FDD4A54(sub_22FDE0EA0, (&v82 - 4), v58);
    v61 = v60;

    if (*(v61 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2CF0, &unk_22FE49020);
      v62 = sub_22FE43B04();
    }

    else
    {
      v62 = MEMORY[0x277D84F98];
    }

    v63 = v89;
    v96[0] = v62;
    sub_22FDDF410(v61, 1, v96);
    v64 = v96[0];
    v65 = [a1 accessibilityDescription];
    if (v65)
    {
      v66 = v65;
      v67 = sub_22FE43064();
      v69 = v68;
    }

    else
    {

      v67 = 0;
      v69 = 0;
    }

    (*(v90 + 32))(a3, v14, v91);
    v70 = type metadata accessor for StoredPhoto(0);
    v71 = *(v92 + 32);
    v72 = v63;
    v73 = v93;
    v71(a3 + v70[5], v72, v93);
    v71(a3 + v70[6], v94, v73);

    *(a3 + v70[7]) = v47;
    v74 = (a3 + v70[8]);
    v75 = v86;
    *v74 = v87;
    v74[1] = v75;
    v76 = (a3 + v70[9]);
    v77 = v84;
    *v76 = v85;
    v76[1] = v77;
    *(a3 + v70[10]) = v83;
    *(a3 + v70[11]) = v64;
    v78 = (a3 + v70[12]);
    *v78 = v67;
    v78[1] = v69;
  }

LABEL_23:
  v79 = sub_22FE42774();
  return (*(*(v79 - 8) + 8))(v95, v79);
}

unint64_t sub_22FDD8C70(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_22FDDFD94(v3);
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

uint64_t sub_22FDD8D00@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_22FE42774();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE8, &unk_22FE4A850) + 48);
  *a3 = [v10 timePosition];
  (*(v7 + 16))(v9, a2, v6);
  return StoredPhotoLayout.init(pfcStoredLayout:baseURL:)(v10, v9, a3 + v11);
}

uint64_t StoredPhotoLayout.init(pfcStoredLayout:baseURL:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  MEMORY[0x28223BE20](v5 - 8);
  *&MinX = &v64 - v6;
  v7 = sub_22FE426C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MinY = COERCE_DOUBLE(type metadata accessor for StoredPhotoLayout.ImageLocation(0));
  v70 = *(*&MinY - 8);
  v11 = MEMORY[0x28223BE20](*&MinY);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 baseImageName];
  v15 = sub_22FE43064();
  v17 = v16;

  v77 = v15;
  v78 = v17;
  v18 = *(v8 + 104);
  LODWORD(v69) = *MEMORY[0x277CC91D8];
  v68 = v18;
  v18(v10);
  v67 = sub_22FD750CC();
  v76 = a2;
  sub_22FE42764();
  v19 = *(v8 + 8);
  v65 = v7;
  v66 = v19;
  v19(v10, v7);

  v20 = sub_22FE42774();
  v71 = *(v20 - 8);
  v21 = *(v71 + 56);
  v73 = v13;
  v22 = v13;
  v23 = v20;
  v21(v22, 0, 1, v20);
  v24 = [a1 maskImageName];
  if (v24)
  {
    v25 = v24;
    v26 = sub_22FE43064();
    v28 = v27;

    v77 = v26;
    v78 = v28;
    v29 = v65;
    v68(v10, LODWORD(v69), v65);
    v30 = *&MinX;
    sub_22FE42764();
    v66(v10, v29);
    v21(v30, 0, 1, v23);
    v31 = *(*&v70 + 56);
    v32 = MinY;
    v31(v30, 0, 1, *&MinY);
  }

  else
  {
    v31 = *(*&v70 + 56);
    v32 = MinY;
    v30 = *&MinX;
    v31(*&MinX, 1, 1, *&MinY);
  }

  v33 = v23;
  [a1 originalCrop];
  x = v79.origin.x;
  y = v79.origin.y;
  width = v79.size.width;
  height = v79.size.height;
  MinX = CGRectGetMinX(v79);
  v80.origin.x = x;
  v80.origin.y = y;
  v80.size.width = width;
  v80.size.height = height;
  MinY = CGRectGetMinY(v80);
  v81.origin.x = x;
  v81.origin.y = y;
  v81.size.width = width;
  v81.size.height = height;
  v70 = CGRectGetWidth(v81);
  v82.origin.x = x;
  v82.origin.y = y;
  v82.size.width = width;
  v82.size.height = height;
  v69 = CGRectGetHeight(v82);
  v38 = [a1 timePosition];
  [a1 timeRect];
  v39 = v83.origin.x;
  v40 = v83.origin.y;
  v41 = v83.size.width;
  v42 = v83.size.height;
  v43 = CGRectGetMinX(v83);
  v84.origin.x = v39;
  v84.origin.y = v40;
  v84.size.width = v41;
  v84.size.height = v42;
  v44 = CGRectGetMinY(v84);
  v85.origin.x = v39;
  v85.origin.y = v40;
  v85.size.width = v41;
  v85.size.height = v42;
  v45 = CGRectGetWidth(v85);
  v86.origin.x = v39;
  v86.origin.y = v40;
  v86.size.width = v41;
  v86.size.height = v42;
  v46 = CGRectGetHeight(v86);
  [a1 backgroundZorder];
  v48 = v47;
  [a1 foregroundZorder];
  v50 = v49;
  [a1 timeElementZorder];
  v52 = v51;
  [a1 imageAOTBrightness];
  v54 = v53;
  v55 = [a1 userEdited];

  v56 = type metadata accessor for StoredPhotoLayout(0);
  v57 = v56[5];
  v58 = v72;
  v31(v72 + v57, 1, 1, *&v32);
  sub_22FDE0250(v73, v58, type metadata accessor for StoredPhotoLayout.ImageLocation);
  sub_22FDE176C(v30, v58 + v57, &qword_27DAE42D8, &unk_22FE4BA30);
  v59 = (v58 + v56[6]);
  v60 = MinY;
  *v59 = MinX;
  v59[1] = v60;
  v61 = v69;
  v59[2] = v70;
  v59[3] = v61;
  *(v58 + v56[7]) = v38;
  v62 = (v58 + v56[8]);
  *v62 = v43;
  v62[1] = v44;
  v62[2] = v45;
  v62[3] = v46;
  *(v58 + v56[9]) = v48;
  *(v58 + v56[10]) = v50;
  *(v58 + v56[11]) = v52;
  *(v58 + v56[12]) = v54;
  *(v58 + v56[13]) = v55;
  return (*(v71 + 8))(v76, v33);
}

uint64_t StoredPhoto.description.getter()
{
  strcpy(v2, "StoredPhoto(");
  sub_22FE428C4();
  sub_22FDD5628(&qword_27DAE41D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v0 = sub_22FE43C24();
  MEMORY[0x23190ACF0](v0);

  MEMORY[0x23190ACF0](41, 0xE100000000000000);
  return v2[0];
}

uint64_t sub_22FDD94F0()
{
  strcpy(v2, "StoredPhoto(");
  sub_22FE428C4();
  sub_22FDD5628(&qword_27DAE41D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v0 = sub_22FE43C24();
  MEMORY[0x23190ACF0](v0);

  MEMORY[0x23190ACF0](41, 0xE100000000000000);
  return v2[0];
}

uint64_t StoredPhotoLayout.init(protobuf:version:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4610, &unk_22FE4BA50);
  MEMORY[0x28223BE20](v3 - 8);
  v82 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v84 = &v77 - v6;
  *&v87 = type metadata accessor for StoredPhotoLayoutRectProto(0);
  *&v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  *&v88 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v80 = (&v77 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  MEMORY[0x28223BE20](v10 - 8);
  v89 = (&v77 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4618, &unk_22FE4DA30);
  MEMORY[0x28223BE20](v12 - 8);
  v79 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v77 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v77 - v18;
  v20 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v78 = (&v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v25 = &v77 - v24;
  *&v85 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v90 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v93 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  v92 = a1;
  v28 = *(a1 + v27);
  v29 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition;
  swift_beginAccess();
  v81 = *(v28 + v29);
  v30 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__baseImage;
  swift_beginAccess();
  sub_22FD764B4(v28 + v30, v19, &qword_27DAE4618, &unk_22FE4DA30);
  v31 = *(v21 + 48);
  if (v31(v19, 1, v20) == 1)
  {
    *v25 = 0;
    v25[8] = 1;
    sub_22FE42A44();
    v32 = &v25[*(v20 + 24)];
    *v32 = 0;
    *(v32 + 1) = 0;
    if (v31(v19, 1, v20) != 1)
    {
      sub_22FD93E6C(v19, &qword_27DAE4618, &unk_22FE4DA30);
    }
  }

  else
  {
    sub_22FDE0250(v19, v25, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  }

  v33 = v91;
  StoredPhotoLayout.ImageLocation.init(protobuf:version:)(v25, v93);
  if (v33)
  {
    return sub_22FDE01F0(v92, type metadata accessor for StoredPhotoLayoutProto);
  }

  v91 = 0;
  v35 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__maskImage;
  swift_beginAccess();
  sub_22FD764B4(v28 + v35, v16, &qword_27DAE4618, &unk_22FE4DA30);
  v36 = v31(v16, 1, v20);
  sub_22FD93E6C(v16, &qword_27DAE4618, &unk_22FE4DA30);
  if (v36 == 1)
  {
    v37 = v89;
    v38 = v88;
    v39 = v87;
    v40 = v86;
    v41 = v85;
    v42 = v84;
    v43 = 1;
  }

  else
  {
    v44 = v28 + v35;
    v45 = v79;
    sub_22FD764B4(v44, v79, &qword_27DAE4618, &unk_22FE4DA30);
    v46 = v31(v45, 1, v20);
    v37 = v89;
    v40 = v86;
    v41 = v85;
    if (v46 == 1)
    {
      v47 = v78;
      *v78 = 0;
      *(v47 + 8) = 1;
      v48 = v47;
      sub_22FE42A44();
      v49 = (v48 + *(v20 + 24));
      *v49 = 0;
      v49[1] = 0;
      if (v31(v45, 1, v20) != 1)
      {
        sub_22FD93E6C(v45, &qword_27DAE4618, &unk_22FE4DA30);
      }
    }

    else
    {
      v48 = v78;
      sub_22FDE0250(v45, v78, type metadata accessor for StoredPhotoLayoutImageLocationProto);
    }

    v50 = v91;
    StoredPhotoLayout.ImageLocation.init(protobuf:version:)(v48, v37);
    v38 = v88;
    v39 = v87;
    v42 = v84;
    if (v50)
    {
      sub_22FDE01F0(v93, type metadata accessor for StoredPhotoLayout.ImageLocation);
      return sub_22FDE01F0(v92, type metadata accessor for StoredPhotoLayoutProto);
    }

    v91 = 0;
    v43 = 0;
  }

  v51 = *(v90 + 56);
  v52 = v41;
  v90 += 56;
  v89 = v51;
  v51(v37, v43, 1, v41);
  v53 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__originalCrop;
  swift_beginAccess();
  sub_22FD764B4(v28 + v53, v42, &qword_27DAE4610, &unk_22FE4BA50);
  v54 = *(v40 + 48);
  if (v54(v42, 1, v39) == 1)
  {
    v55 = v80;
    *v80 = 0u;
    v55[1] = 0u;
    sub_22FE42A44();
    if (v54(v42, 1, v39) != 1)
    {
      sub_22FD93E6C(v42, &qword_27DAE4610, &unk_22FE4BA50);
    }
  }

  else
  {
    v55 = v80;
    sub_22FDE0250(v42, v80, type metadata accessor for StoredPhotoLayoutRectProto);
  }

  v56 = *v55;
  v87 = v55[1];
  v88 = v56;
  sub_22FDE01F0(v55, type metadata accessor for StoredPhotoLayoutRectProto);
  v57 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeRect;
  swift_beginAccess();
  v58 = v28 + v57;
  v59 = v82;
  sub_22FD764B4(v58, v82, &qword_27DAE4610, &unk_22FE4BA50);
  if (v54(v59, 1, v39) == 1)
  {
    *v38 = 0u;
    v38[1] = 0u;
    sub_22FE42A44();
    if (v54(v59, 1, v39) != 1)
    {
      sub_22FD93E6C(v59, &qword_27DAE4610, &unk_22FE4BA50);
    }
  }

  else
  {
    sub_22FDE0250(v59, v38, type metadata accessor for StoredPhotoLayoutRectProto);
  }

  v60 = v38[1];
  v86 = *v38;
  v85 = v60;
  sub_22FDE01F0(v38, type metadata accessor for StoredPhotoLayoutRectProto);
  v61 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__backgroundZorder;
  swift_beginAccess();
  v62 = *(v28 + v61);
  v63 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__foregroundZorder;
  swift_beginAccess();
  v64 = *(v28 + v63);
  v65 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeElementZorder;
  swift_beginAccess();
  v66 = *(v28 + v65);
  v67 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__imageAotbrightness;
  swift_beginAccess();
  v68 = *(v28 + v67);
  v69 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited;
  swift_beginAccess();
  LOBYTE(v69) = *(v28 + v69);
  v70 = type metadata accessor for StoredPhotoLayout(0);
  v71 = v70[5];
  v72 = v83;
  v89(v83 + v71, 1, 1, v52);
  sub_22FDE0250(v93, v72, type metadata accessor for StoredPhotoLayout.ImageLocation);
  sub_22FDE176C(v37, v72 + v71, &qword_27DAE42D8, &unk_22FE4BA30);
  v73 = (v72 + v70[6]);
  v74 = v87;
  *v73 = v88;
  v73[1] = v74;
  *(v72 + v70[7]) = v81;
  v75 = (v72 + v70[8]);
  v76 = v85;
  *v75 = v86;
  v75[1] = v76;
  *(v72 + v70[9]) = v62;
  *(v72 + v70[10]) = v64;
  *(v72 + v70[11]) = v66;
  *(v72 + v70[12]) = v68;
  *(v72 + v70[13]) = v69;
  return sub_22FDE01F0(v92, type metadata accessor for StoredPhotoLayoutProto);
}

uint64_t sub_22FDDA0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22FE426C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22FE42774();
  v11 = *(v29 - 8);
  v12 = MEMORY[0x28223BE20](v29);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = a1;
  v30[1] = a2;
  (*(v8 + 104))(v10, *MEMORY[0x277CC91D8], v7, v12);
  sub_22FD750CC();
  sub_22FE42764();
  (*(v8 + 8))(v10, v7);
  if (*(a4 + 16) && (v15 = sub_22FD74870(a1, a2), (v16 & 1) != 0))
  {
    v17 = *(*(a4 + 56) + 8 * v15);
    v18 = *(v17 + 16);
    MEMORY[0x28223BE20](v15);
    *(&v28 - 2) = v14;
    *(&v28 - 1) = v17;
    v19 = *(*v18 + *MEMORY[0x277D841D0] + 16);
    v20 = (*(*v18 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v18 + v20));
    v21 = v30[3];
    sub_22FDE17D4(v18 + v19, v30);
    os_unfair_lock_unlock((v18 + v20));
    if (!v21)
    {
    }

    return (*(v11 + 8))(v14, v29);
  }

  else
  {
    if (qword_27DAE2AC8 != -1)
    {
      swift_once();
    }

    v22 = sub_22FE42D34();
    __swift_project_value_buffer(v22, qword_27DAE5118);

    v23 = sub_22FE42D14();
    v24 = sub_22FE436C4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_22FD98218(a1, a2, v30);
      _os_log_impl(&dword_22FD6D000, v23, v24, "Couldn't find necessary attachment: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23190C380](v26, -1, -1);
      MEMORY[0x23190C380](v25, -1, -1);
    }

    return (*(v11 + 8))(v14, v29);
  }
}

void sub_22FDDA47C(uint64_t a1, uint64_t a2, int a3)
{
  v31 = a3;
  v6 = UUID.serialized(version:)(&v31);
  v8 = v7;
  sub_22FD917D4(*a1, *(a1 + 8));
  *a1 = v6;
  *(a1 + 8) = v8;
  v9 = type metadata accessor for StoredPhoto(0);
  sub_22FE427F4();
  *(a1 + 16) = v10;
  *(a1 + 24) = *(a2 + v9[7]);
  v11 = *(a2 + v9[10]);
  if (HIDWORD(v11))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 32) = v11;

    v13 = sub_22FDD4C90(v12, a3);

    *(a1 + 40) = v13;
    v14 = (a2 + v9[12]);
    v15 = v14[1];
    if (v15)
    {
      v16 = *v14;
      v17 = (a1 + *(type metadata accessor for StoredPhotoProto(0) + 40));

      *v17 = v16;
      v17[1] = v15;
    }

    sub_22FE427F4();
    v19 = v18;
    v20 = type metadata accessor for StoredPhotoProto(0);
    v21 = v20;
    v22 = a1 + *(v20 + 44);
    *v22 = v19;
    *(v22 + 8) = 0;
    v23 = (a2 + v9[8]);
    v24 = v23[1];
    if (v24)
    {
      v25 = *v23;
      v26 = (a1 + *(v20 + 48));

      *v26 = v25;
      v26[1] = v24;
    }

    v27 = (a2 + v9[9]);
    v28 = v27[1];
    if (v28)
    {
      v29 = *v27;
      v30 = (a1 + *(v21 + 52));

      *v30 = v29;
      v30[1] = v28;
    }
  }
}

uint64_t StoredPhotoLayout.protobuf(version:)(char *a1)
{
  type metadata accessor for StoredPhotoLayoutProto(0);
  sub_22FDD5628(&qword_27DAE4620, type metadata accessor for StoredPhotoLayoutProto, &protocol conformance descriptor for StoredPhotoLayoutProto);
  return sub_22FE42C14();
}

uint64_t sub_22FDDA710(char *a1)
{
  type metadata accessor for StoredPhotoProto(0);
  sub_22FDD5628(&qword_27DAE4338, type metadata accessor for StoredPhotoProto, &protocol conformance descriptor for StoredPhotoProto);
  return sub_22FE42C14();
}

uint64_t StoredPhotoListProto.init(protoList:version:)@<X0>(void *a2@<X8>)
{
  v3 = type metadata accessor for StoredPhotoListProto(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];

  *a2 = MEMORY[0x277D84F90];
  sub_22FE42A44();
  v8 = a2;
  sub_22FDD5628(&qword_27DAE4628, type metadata accessor for StoredPhotoListProto, &protocol conformance descriptor for StoredPhotoListProto);
  sub_22FE42C14();
  return sub_22FDE0F34(v5, a2, type metadata accessor for StoredPhotoListProto);
}

uint64_t sub_22FDDA914@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];

  *a3 = MEMORY[0x277D84F90];
  sub_22FE42A44();
  v8 = a3;
  sub_22FDD5628(&qword_27DAE4628, type metadata accessor for StoredPhotoListProto, &protocol conformance descriptor for StoredPhotoListProto);
  sub_22FE42C14();
  return sub_22FDE0F34(v5, a3, type metadata accessor for StoredPhotoListProto);
}

uint64_t StoredPhotoLayout.Rect.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x23190B9F0](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x23190B9F0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x23190B9F0](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x23190B9F0](*&v7);
}

uint64_t StoredPhotoLayout.Rect.hashValue.getter()
{
  sub_22FE43DB4();
  StoredPhotoLayout.Rect.hash(into:)();
  return sub_22FE43E04();
}

uint64_t sub_22FDDAB20()
{
  sub_22FE43DB4();
  StoredPhotoLayout.Rect.hash(into:)();
  return sub_22FE43E04();
}

uint64_t sub_22FDDAB70(uint64_t a1)
{
  sub_22FE43DB4();
  StoredPhotoLayout.Rect.hash(into:)();
  return sub_22FE43E04();
}

uint64_t StoredPhotoLayout.ImageLocation.hash(into:)(uint64_t a1)
{
  v2 = sub_22FE42774();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FDE02B8(v1, v8, type metadata accessor for StoredPhotoLayout.ImageLocation);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return MEMORY[0x23190B9C0](0);
  }

  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x23190B9C0](1);
  sub_22FDD5628(&qword_27DAE4630, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_22FE42FE4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t StoredPhotoLayout.ImageLocation.hashValue.getter()
{
  v1 = v0;
  v2 = sub_22FE42774();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FE43DB4();
  sub_22FDE02B8(v1, v8, type metadata accessor for StoredPhotoLayout.ImageLocation);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x23190B9C0](0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x23190B9C0](1);
    sub_22FDD5628(&qword_27DAE4630, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_22FE42FE4();
    (*(v3 + 8))(v5, v2);
  }

  return sub_22FE43E04();
}

uint64_t sub_22FDDAF80(uint64_t a1)
{
  v2 = sub_22FE42774();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FDE02B8(v1, v8, type metadata accessor for StoredPhotoLayout.ImageLocation);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return MEMORY[0x23190B9C0](0);
  }

  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x23190B9C0](1);
  sub_22FDD5628(&qword_27DAE4630, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_22FE42FE4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_22FDDB14C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_22FE42774();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FE43DB4();
  sub_22FDE02B8(v2, v9, type metadata accessor for StoredPhotoLayout.ImageLocation);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    MEMORY[0x23190B9C0](0);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    MEMORY[0x23190B9C0](1);
    sub_22FDD5628(&qword_27DAE4630, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_22FE42FE4();
    (*(v4 + 8))(v6, v3);
  }

  return sub_22FE43E04();
}

__n128 StoredPhotoLayout.originalCrop.getter@<Q0>(_OWORD *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StoredPhotoLayout(0) + 24);
  result = *v3;
  v5 = *(v3 + 16);
  *a1 = *v3;
  a1[1] = v5;
  return result;
}

__n128 StoredPhotoLayout.timeRect.getter@<Q0>(_OWORD *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StoredPhotoLayout(0) + 32);
  result = *v3;
  v5 = *(v3 + 16);
  *a1 = *v3;
  a1[1] = v5;
  return result;
}

uint64_t StoredPhotoLayout.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v45 - v4;
  v6 = sub_22FE42774();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v47 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v48 = &v45 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  sub_22FDE02B8(v2, &v45 - v16, type metadata accessor for StoredPhotoLayout.ImageLocation);
  v46 = *(v7 + 48);
  v18 = v46(v17, 1, v6);
  v45 = v7;
  if (v18 == 1)
  {
    MEMORY[0x23190B9C0](0);
  }

  else
  {
    (*(v7 + 32))(v9, v17, v6);
    MEMORY[0x23190B9C0](1);
    sub_22FDD5628(&qword_27DAE4630, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_22FE42FE4();
    (*(v7 + 8))(v9, v6);
  }

  v19 = type metadata accessor for StoredPhotoLayout(0);
  sub_22FD764B4(v2 + v19[5], v5, &qword_27DAE42D8, &unk_22FE4BA30);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_22FE43DD4();
  }

  else
  {
    v20 = v5;
    v21 = v48;
    sub_22FDE0250(v20, v48, type metadata accessor for StoredPhotoLayout.ImageLocation);
    sub_22FE43DD4();
    v22 = v47;
    sub_22FDE02B8(v21, v47, type metadata accessor for StoredPhotoLayout.ImageLocation);
    if (v46(v22, 1, v6) == 1)
    {
      MEMORY[0x23190B9C0](0);
    }

    else
    {
      v23 = v45;
      (*(v45 + 32))(v9, v22, v6);
      MEMORY[0x23190B9C0](1);
      sub_22FDD5628(&qword_27DAE4630, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      sub_22FE42FE4();
      (*(v23 + 8))(v9, v6);
    }

    sub_22FDE01F0(v21, type metadata accessor for StoredPhotoLayout.ImageLocation);
  }

  v24 = (v2 + v19[6]);
  v25 = *v24;
  v26 = v24[1];
  v27 = v24[2];
  v28 = v24[3];
  if (*v24 == 0.0)
  {
    v25 = 0.0;
  }

  MEMORY[0x23190B9F0](*&v25);
  if (v26 == 0.0)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = v26;
  }

  MEMORY[0x23190B9F0](*&v29);
  if (v27 == 0.0)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = v27;
  }

  MEMORY[0x23190B9F0](*&v30);
  if (v28 == 0.0)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = v28;
  }

  MEMORY[0x23190B9F0](*&v31);
  MEMORY[0x23190B9C0](*(v2 + v19[7]));
  v32 = (v2 + v19[8]);
  v33 = *v32;
  v34 = v32[1];
  v35 = v32[2];
  v36 = v32[3];
  if (*v32 == 0.0)
  {
    v33 = 0.0;
  }

  MEMORY[0x23190B9F0](*&v33);
  if (v34 == 0.0)
  {
    v37 = 0.0;
  }

  else
  {
    v37 = v34;
  }

  MEMORY[0x23190B9F0](*&v37);
  if (v35 == 0.0)
  {
    v38 = 0.0;
  }

  else
  {
    v38 = v35;
  }

  MEMORY[0x23190B9F0](*&v38);
  if (v36 == 0.0)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = v36;
  }

  MEMORY[0x23190B9F0](*&v39);
  v40 = *(v2 + v19[9]);
  if (v40 == 0.0)
  {
    v40 = 0.0;
  }

  MEMORY[0x23190B9F0](*&v40);
  v41 = *(v2 + v19[10]);
  if (v41 == 0.0)
  {
    v41 = 0.0;
  }

  MEMORY[0x23190B9F0](*&v41);
  v42 = *(v2 + v19[11]);
  if (v42 == 0.0)
  {
    v42 = 0.0;
  }

  MEMORY[0x23190B9F0](*&v42);
  v43 = *(v2 + v19[12]);
  if (v43 == 0.0)
  {
    v43 = 0.0;
  }

  MEMORY[0x23190B9F0](*&v43);
  return sub_22FE43DD4();
}

uint64_t sub_22FDDBB88(uint64_t (*a1)(void *))
{
  sub_22FE43DB4();
  a1(v3);
  return sub_22FE43E04();
}

uint64_t sub_22FDDBBE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_22FE43DB4();
  a3(v5);
  return sub_22FE43E04();
}

uint64_t sub_22FDDBC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_22FE43DB4();
  a4(v6);
  return sub_22FE43E04();
}

PhotosFace::StoredPhotoLayout::Rect __swiftcall StoredPhotoLayout.Rect.init(cgRect:)(CGRect cgRect)
{
  height = cgRect.size.height;
  width = cgRect.size.width;
  y = cgRect.origin.y;
  x = cgRect.origin.x;
  v6 = v1;
  MinX = CGRectGetMinX(cgRect);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MinY = CGRectGetMinY(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v9 = CGRectGetWidth(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v10 = CGRectGetHeight(v16);
  *v6 = MinX;
  v6[1] = MinY;
  v6[2] = v9;
  v6[3] = v10;
  result.height = v13;
  result.width = v12;
  result.y = v11;
  result.x = v10;
  return result;
}

uint64_t StoredPhotoLayout.ImageLocation.init(protobuf:version:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22FE426C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  if (*(a1 + 8) != 1 || !*a1)
  {
    goto LABEL_7;
  }

  if (*a1 == 1)
  {
    sub_22FDE01F0(a1, type metadata accessor for StoredPhotoLayoutImageLocationProto);
    v11 = sub_22FE42774();
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }

  v13 = (a1 + *(type metadata accessor for StoredPhotoLayoutImageLocationProto(0) + 24));
  v14 = v13[1];
  if (v14)
  {
    v15 = *v13;
    v18[0] = v14;
    v18[1] = v15;
    v19 = sub_22FE42774();
    v16 = *(*(v19 - 8) + 56);
    v16(v10, 1, 1, v19);
    (*(v5 + 104))(v7, *MEMORY[0x277CC91D8], v4);

    sub_22FE42754();
    sub_22FDE01F0(a1, type metadata accessor for StoredPhotoLayoutImageLocationProto);
    return (v16)(a2, 0, 1, v19);
  }

  else
  {
LABEL_7:
    sub_22FD91780();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    return sub_22FDE01F0(a1, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  }
}

__n128 StoredPhotoLayout.Rect.init(protobuf:version:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = a1[1];
  v5 = *a1;
  sub_22FDE01F0(a1, type metadata accessor for StoredPhotoLayoutRectProto);
  result = v5;
  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t sub_22FDDC04C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4610, &unk_22FE4BA50);
  MEMORY[0x28223BE20](v5 - 8);
  v95 = v89 - v6;
  v101 = type metadata accessor for StoredPhotoLayoutRectProto(0);
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v94 = v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v93 = v89 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v89 - v11;
  v91 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v13 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4618, &unk_22FE4DA30);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v89 - v16;
  v18 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  v97 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v92 = v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v89 - v21;
  v100 = a2;
  v102 = a2;
  v89[1] = sub_22FDD5628(&qword_27DAE4638, type metadata accessor for StoredPhotoLayoutImageLocationProto, &protocol conformance descriptor for StoredPhotoLayoutImageLocationProto);
  sub_22FE42C14();
  v96 = v2;
  v23 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(a1 + v23);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    swift_allocObject();
    v26 = sub_22FE03B20(v25);

    *(a1 + v23) = v26;
    v25 = v26;
  }

  sub_22FDE0250(v22, v17, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  v27 = *(v97 + 56);
  v97 += 56;
  v27(v17, 0, 1, v18);
  v28 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__baseImage;
  swift_beginAccess();
  sub_22FDE176C(v17, v25 + v28, &qword_27DAE4618, &unk_22FE4DA30);
  swift_endAccess();
  v98 = type metadata accessor for StoredPhotoLayout(0);
  sub_22FD764B4(v100 + *(v98 + 20), v12, &qword_27DAE42D8, &unk_22FE4BA30);
  if ((*(v13 + 48))(v12, 1, v91) == 1)
  {
    v29 = sub_22FD93E6C(v12, &qword_27DAE42D8, &unk_22FE4BA30);
  }

  else
  {
    v30 = v12;
    v31 = v90;
    v32 = sub_22FDE0250(v30, v90, type metadata accessor for StoredPhotoLayout.ImageLocation);
    MEMORY[0x28223BE20](v32);
    v89[-2] = v31;
    v33 = v96;
    sub_22FE42C14();
    v96 = v33;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(a1 + v23);
    if ((v34 & 1) == 0)
    {
      type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
      swift_allocObject();
      v36 = sub_22FE03B20(v35);

      *(a1 + v23) = v36;
      v35 = v36;
    }

    sub_22FDE0250(v92, v17, type metadata accessor for StoredPhotoLayoutImageLocationProto);
    v27(v17, 0, 1, v18);
    v37 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__maskImage;
    swift_beginAccess();
    sub_22FDE176C(v17, v35 + v37, &qword_27DAE4618, &unk_22FE4DA30);
    swift_endAccess();
    v29 = sub_22FDE01F0(v31, type metadata accessor for StoredPhotoLayout.ImageLocation);
  }

  v38 = v98;
  *&v39 = MEMORY[0x28223BE20](v29);
  *&v89[-4] = v39;
  *&v89[-2] = v40;
  sub_22FDD5628(&qword_27DAE4640, type metadata accessor for StoredPhotoLayoutRectProto, &protocol conformance descriptor for StoredPhotoLayoutRectProto);
  v41 = v93;
  sub_22FE42C14();
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *(a1 + v23);
  if ((v42 & 1) == 0)
  {
    type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    swift_allocObject();
    v44 = sub_22FE03B20(v43);

    *(a1 + v23) = v44;
    v43 = v44;
  }

  v45 = v95;
  sub_22FDE0250(v41, v95, type metadata accessor for StoredPhotoLayoutRectProto);
  v46 = *(v99 + 56);
  v99 += 56;
  v46(v45, 0, 1, v101);
  v47 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__originalCrop;
  swift_beginAccess();
  sub_22FDE176C(v45, v43 + v47, &qword_27DAE4610, &unk_22FE4BA50);
  result = swift_endAccess();
  v49 = *(v100 + *(v38 + 28));
  if (HIDWORD(v49))
  {
    __break(1u);
  }

  else
  {
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v51 = *(a1 + v23);
    if ((v50 & 1) == 0)
    {
      type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
      swift_allocObject();
      v52 = sub_22FE03B20(v51);

      *(a1 + v23) = v52;
      v51 = v52;
    }

    v53 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition;
    v54 = swift_beginAccess();
    *(v51 + v53) = v49;
    v55 = v100;
    *&v56 = MEMORY[0x28223BE20](v54);
    *&v89[-4] = v56;
    *&v89[-2] = v57;
    sub_22FE42C14();
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v59 = *(a1 + v23);
    if ((v58 & 1) == 0)
    {
      type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
      swift_allocObject();
      v60 = sub_22FE03B20(v59);

      *(a1 + v23) = v60;
      v59 = v60;
    }

    v61 = v95;
    sub_22FDE0250(v94, v95, type metadata accessor for StoredPhotoLayoutRectProto);
    v46(v61, 0, 1, v101);
    v62 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeRect;
    swift_beginAccess();
    sub_22FDE176C(v61, v59 + v62, &qword_27DAE4610, &unk_22FE4BA50);
    swift_endAccess();
    v63 = v98;
    v64 = *(v55 + *(v98 + 36));
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(a1 + v23);
    if ((v65 & 1) == 0)
    {
      type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
      swift_allocObject();
      v67 = sub_22FE03B20(v66);

      *(a1 + v23) = v67;
      v66 = v67;
    }

    v68 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__backgroundZorder;
    swift_beginAccess();
    *(v66 + v68) = v64;
    v69 = *(v55 + v63[10]);
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v71 = *(a1 + v23);
    if ((v70 & 1) == 0)
    {
      type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
      swift_allocObject();
      v72 = sub_22FE03B20(v71);

      *(a1 + v23) = v72;
      v71 = v72;
    }

    v73 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__foregroundZorder;
    swift_beginAccess();
    *(v71 + v73) = v69;
    v74 = *(v55 + v63[11]);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v76 = *(a1 + v23);
    if ((v75 & 1) == 0)
    {
      type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
      swift_allocObject();
      v77 = sub_22FE03B20(v76);

      *(a1 + v23) = v77;
      v76 = v77;
    }

    v78 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeElementZorder;
    swift_beginAccess();
    *(v76 + v78) = v74;
    v79 = *(v55 + v63[12]);
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v81 = *(a1 + v23);
    if ((v80 & 1) == 0)
    {
      type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
      swift_allocObject();
      v82 = sub_22FE03B20(v81);

      *(a1 + v23) = v82;
      v81 = v82;
    }

    v83 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__imageAotbrightness;
    swift_beginAccess();
    *(v81 + v83) = v79;
    v84 = *(v55 + v63[13]);
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v86 = *(a1 + v23);
    if ((v85 & 1) == 0)
    {
      type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
      swift_allocObject();
      v87 = sub_22FE03B20(v86);

      *(a1 + v23) = v87;
      v86 = v87;
    }

    v88 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited;
    result = swift_beginAccess();
    *(v86 + v88) = v84;
  }

  return result;
}

uint64_t StoredPhotoLayout.ImageLocation.protobuf(version:)()
{
  type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  sub_22FDD5628(&qword_27DAE4638, type metadata accessor for StoredPhotoLayoutImageLocationProto, &protocol conformance descriptor for StoredPhotoLayoutImageLocationProto);
  return sub_22FE42C14();
}

uint64_t StoredPhotoLayout.Rect.protobuf(version:)()
{
  type metadata accessor for StoredPhotoLayoutRectProto(0);
  sub_22FDD5628(&qword_27DAE4640, type metadata accessor for StoredPhotoLayoutRectProto, &protocol conformance descriptor for StoredPhotoLayoutRectProto);
  return sub_22FE42C14();
}

uint64_t sub_22FDDCDC0(char *a1)
{
  type metadata accessor for StoredPhotoLayoutProto(0);
  sub_22FDD5628(&qword_27DAE4620, type metadata accessor for StoredPhotoLayoutProto, &protocol conformance descriptor for StoredPhotoLayoutProto);
  return sub_22FE42C14();
}

uint64_t sub_22FDDCE78(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE42774();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FDE02B8(a2, v10, type metadata accessor for StoredPhotoLayout.ImageLocation);
  result = (*(v5 + 48))(v10, 1, v4);
  if (result == 1)
  {
    *a1 = 1;
    *(a1 + 8) = 1;
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    *a1 = 2;
    *(a1 + 8) = 1;
    v12 = sub_22FE426D4();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    v15 = (a1 + *(type metadata accessor for StoredPhotoLayoutImageLocationProto(0) + 24));

    *v15 = v12;
    v15[1] = v14;
  }

  return result;
}

uint64_t sub_22FDDD058()
{
  type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  sub_22FDD5628(&qword_27DAE4638, type metadata accessor for StoredPhotoLayoutImageLocationProto, &protocol conformance descriptor for StoredPhotoLayoutImageLocationProto);
  return sub_22FE42C14();
}

__n128 sub_22FDDD100@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = a1[1];
  v5 = *a1;
  sub_22FDE01F0(a1, type metadata accessor for StoredPhotoLayoutRectProto);
  result = v5;
  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t sub_22FDDD158()
{
  type metadata accessor for StoredPhotoLayoutRectProto(0);
  sub_22FDD5628(&qword_27DAE4640, type metadata accessor for StoredPhotoLayoutRectProto, &protocol conformance descriptor for StoredPhotoLayoutRectProto);
  return sub_22FE42C14();
}

uint64_t sub_22FDDD218(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for StoredPhotoLayout(0);
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2CF0, &unk_22FE49020);
  v36 = v4;
  result = sub_22FE43AF4();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        sub_22FDE0250(v24, v37, type metadata accessor for StoredPhotoLayout);
      }

      else
      {
        sub_22FDE02B8(v24, v37, type metadata accessor for StoredPhotoLayout);
      }

      sub_22FE43DB4();
      MEMORY[0x23190B9C0](v22);
      result = sub_22FE43E04();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      result = sub_22FDE0250(v37, *(v9 + 56) + v23 * v17, type metadata accessor for StoredPhotoLayout);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_22FDDD574(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE0, &unk_22FE49010);
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - v6;
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE46A8, &qword_22FE4BED8);
  v38 = v4;
  result = sub_22FE43AF4();
  v10 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v35 = v8;
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
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v36 + 72);
      v24 = *(v8 + 48) + v23 * v22;
      if (v38)
      {
        sub_22FD93E04(v24, v7, &qword_27DAE2CE0, &unk_22FE49010);
        v25 = *(*(v8 + 56) + 8 * v22);
      }

      else
      {
        sub_22FD764B4(v24, v7, &qword_27DAE2CE0, &unk_22FE49010);
        v25 = *(*(v8 + 56) + 8 * v22);
      }

      sub_22FE43DB4();
      StoredPhoto.hash(into:)(v39);
      MEMORY[0x23190B9C0](*&v7[*(v37 + 36)]);
      result = sub_22FE43E04();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_22FD93E04(v7, *(v10 + 48) + v23 * v18, &qword_27DAE2CE0, &unk_22FE49010);
      *(*(v10 + 56) + 8 * v18) = v25;
      ++*(v10 + 16);
      v8 = v35;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_22FDDD930(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_22FE428C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v43 = v8;
  result = sub_22FE43AF4();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
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
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      sub_22FDD5628(&qword_27DAE2CB8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22FE42FD4();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_22FDDDD0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CB0, &qword_22FE48FF0);
  v34 = v4;
  result = sub_22FE43AF4();
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

      sub_22FE43DB4();
      sub_22FE430D4();
      result = sub_22FE43E04();
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

uint64_t sub_22FDDDFC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_22FE43AF4();
  v9 = result;
  if (*(v7 + 16))
  {
    v32 = v5;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
      }

      result = sub_22FE43DA4();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v32;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_22FDDE230(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA0, &unk_22FE48FE0);
  v37 = v4;
  result = sub_22FE43AF4();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
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
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 4 * v22);
      v24 = *(v36 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v37)
      {
        sub_22FD93E04(v25, v7, &qword_27DAE2CA8, &unk_22FE4BE90);
      }

      else
      {
        sub_22FD764B4(v25, v7, &qword_27DAE2CA8, &unk_22FE4BE90);
      }

      result = MEMORY[0x23190B990](*(v10 + 40), v23, 4);
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 4 * v18) = v23;
      result = sub_22FD93E04(v7, *(v10 + 56) + v24 * v18, &qword_27DAE2CA8, &unk_22FE4BE90);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}