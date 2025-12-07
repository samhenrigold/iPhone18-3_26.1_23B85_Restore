uint64_t sub_25B0B1E30@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_25B0E2EF0();
  *(a3 + 8) = 0x4030000000000000;
  *(a3 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32050, &qword_25B0E9470);
  sub_25B0B1F54(a1, (a3 + *(v5 + 44)));
  v6 = sub_25B0E3110();
  sub_25B0E2A00();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32030, &qword_25B0E9460);
  v16 = a3 + *(result + 36);
  *v16 = v6;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}

uint64_t sub_25B0B1F54@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v58 = a2;
  v3 = sub_25B0E2D10();
  v48 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32058, &qword_25B0E9478);
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x28223BE20](v5);
  v46 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32060, &qword_25B0E9480);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v57 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v54 = &v46 - v10;
  v50 = type metadata accessor for CuratedGalleryView(0);
  v11 = *(v50 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v50);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32068, &qword_25B0E9488);
  v13 = *(v53 - 8);
  v14 = MEMORY[0x28223BE20](v53);
  v52 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v59 = &v46 - v16;
  sub_25B0E3900();
  v51 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v64 = sub_25B0B15A0();
  sub_25B0B29E8(a1, &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v11 + 80);
  v49 = a1;
  v18 = (v17 + 16) & ~v17;
  v19 = swift_allocObject();
  sub_25B0B2A4C(&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32078, &qword_25B0E9498);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32080, &qword_25B0E94A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32088, &qword_25B0E94A8);
  v20 = sub_25B058150(&qword_27FA32090, &qword_27FA32078, &qword_25B0E9498, MEMORY[0x277D83980]);
  v23 = sub_25B0B2B30(v20, v21, v22);
  v24 = sub_25B0B3A30(&qword_27FA320A0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v60 = &type metadata for CuratedGalleryItem;
  v61 = v3;
  v62 = v23;
  v63 = v24;
  v25 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_25B0B2B84(OpaqueTypeConformance2, v27, v28);
  sub_25B0E3500();
  if (*(*(v49 + *(v50 + 20)) + 16))
  {
    v29 = v47;
    v30 = sub_25B0E2D00();
    sub_25B0B2BD8(v30, v31, v32);
    v33 = v46;
    sub_25B0E3240();
    (*(v48 + 8))(v29, v3);
    v35 = v54;
    v34 = v55;
    v36 = v56;
    (*(v55 + 32))(v54, v33, v56);
    v25 = 0;
  }

  else
  {
    v34 = v55;
    v36 = v56;
    v35 = v54;
  }

  (*(v34 + 56))(v35, v25, 1, v36);
  v37 = *(v13 + 16);
  v39 = v52;
  v38 = v53;
  v40 = v59;
  v37(v52, v59, v53);
  v41 = v57;
  sub_25B041E9C(v35, v57);
  v42 = v58;
  v37(v58, v39, v38);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA320B8, &qword_25B0E94B0);
  sub_25B041E9C(v41, &v42[*(v43 + 48)]);
  sub_25B041F0C(v35);
  v44 = *(v13 + 8);
  v44(v40, v38);
  sub_25B041F0C(v41);
  v44(v39, v38);
}

uint64_t sub_25B0B2590(__int128 *a1)
{
  v2 = sub_25B0E2D10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[3];
  v44 = a1[2];
  v45 = v6;
  v7 = a1[5];
  v46 = a1[4];
  v47 = v7;
  v8 = a1[1];
  v42 = *a1;
  v43 = v8;
  v9 = a1[9];
  v50 = a1[8];
  v51 = v9;
  v10 = a1[11];
  v52 = a1[10];
  v53 = v10;
  v11 = a1[7];
  v48 = a1[6];
  v49 = v11;
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v31 = v44;
  v32 = v45;
  v33 = v46;
  v34 = v47;
  v29 = v42;
  v30 = v43;
  v37 = v50;
  v38 = v51;
  v39 = v52;
  v40 = v53;
  v35 = v48;
  v36 = v49;
  v24 = v50;
  v25 = v51;
  v26 = v52;
  v27 = v53;
  v20 = v46;
  v21 = v47;
  v22 = v48;
  v23 = v49;
  v16 = v42;
  v17 = v43;
  v18 = v44;
  v19 = v45;
  *&v28 = 0x405AC00000000000;
  *(&v28 + 1) = &unk_286C58FE8;
  sub_25B08CE58(&v42, v41);
  sub_25B0B00E0(&v48, v41, &qword_27FA320C0, &qword_25B0E94B8);
  v12 = sub_25B0E2D00();
  sub_25B0B2B30(v12, v13, v14);
  sub_25B0B3A30(&qword_27FA320A0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  sub_25B0E3240();
  (*(v3 + 8))(v5, v2);
  v41[10] = v26;
  v41[11] = v27;
  v41[12] = v28;
  v41[6] = v22;
  v41[7] = v23;
  v41[8] = v24;
  v41[9] = v25;
  v41[2] = v18;
  v41[3] = v19;
  v41[4] = v20;
  v41[5] = v21;
  v41[0] = v16;
  v41[1] = v17;
  sub_25B0B2C2C(v41);
}

uint64_t sub_25B0B2848()
{
  sub_25B0E30F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32030, &qword_25B0E9460);
  sub_25B0B2930();
  return sub_25B0E2A30();
}

unint64_t sub_25B0B28D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA32028;
  if (!qword_27FA32028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32028);
  }

  return result;
}

unint64_t sub_25B0B2930()
{
  result = qword_27FA32038;
  if (!qword_27FA32038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32030, &qword_25B0E9460);
    sub_25B058150(&qword_27FA32040, &qword_27FA32048, &qword_25B0E9468, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32038);
  }

  return result;
}

uint64_t sub_25B0B29E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedGalleryView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0B2A4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedGalleryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0B2AB0(__int128 *a1)
{
  type metadata accessor for CuratedGalleryView(0);

  return sub_25B0B2590(a1);
}

unint64_t sub_25B0B2B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA32098;
  if (!qword_27FA32098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32098);
  }

  return result;
}

unint64_t sub_25B0B2B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA320A8;
  if (!qword_27FA320A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA320A8);
  }

  return result;
}

unint64_t sub_25B0B2BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA320B0;
  if (!qword_27FA320B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA320B0);
  }

  return result;
}

id sub_25B0B2C80@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_25B0E2930();
  v41 = *(v1 - 8);
  v42 = v1;
  MEMORY[0x28223BE20](v1);
  v40 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25B0E24C0();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_25B0E22E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25B0E3710();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_25B0E22F0();
  MEMORY[0x28223BE20](v9 - 8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA320F0, &qword_25B0E9688);
  MEMORY[0x28223BE20](v38);
  v11 = &v37 - v10;
  sub_25B0E3900();
  v39 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0E3720();
  if (qword_27FA30D20 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, qword_27FA399C8);
  (*(v5 + 16))(v7, v12, v4);
  sub_25B0E24B0();
  sub_25B0E2300();
  v13 = sub_25B0E3200();
  v15 = v14;
  v17 = v16;
  result = BPSBridgeTintColor();
  if (result)
  {
    v51 = sub_25B0E3370();
    v37 = sub_25B0E31E0();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    sub_25B0B0ABC(v13, v15, v17 & 1);

    sub_25B0E3590();
    sub_25B0E2D30();
    v25 = v22 & 1;
    v52 = v22 & 1;
    v26 = sub_25B0E3110();
    LOBYTE(v51) = 1;
    if (qword_27FA30D48 != -1)
    {
      swift_once();
    }

    v27 = v42;
    v28 = __swift_project_value_buffer(v42, qword_27FA39A10);
    (*(v41 + 16))(v40, v28, v27);
    v29 = sub_25B0E33D0();
    v30 = sub_25B0E3110();
    v31 = &v11[*(v38 + 36)];
    v32 = *MEMORY[0x277CE0118];
    v33 = sub_25B0E2EC0();
    (*(*(v33 - 8) + 104))(v31, v32, v33);
    *&v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32158, &qword_25B0E96B8) + 36)] = 256;
    *v11 = v37;
    *(v11 + 1) = v20;
    v11[16] = v25;
    *(v11 + 3) = v24;
    v34 = v49;
    *(v11 + 6) = v48;
    *(v11 + 7) = v34;
    *(v11 + 8) = v50;
    v35 = v45;
    *(v11 + 2) = v44;
    *(v11 + 3) = v35;
    v36 = v47;
    *(v11 + 4) = v46;
    *(v11 + 5) = v36;
    v11[144] = 0;
    v11[152] = v26;
    *(v11 + 10) = 0u;
    *(v11 + 11) = 0u;
    v11[192] = 1;
    *(v11 + 25) = v29;
    v11[208] = v30;
    sub_25B0B3F60(v11, v43);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25B0B324C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA320F0, &qword_25B0E9688);
  v0 = sub_25B0B3C00();
  sub_25B0B3F0C(v0, v1, v2);
  return sub_25B0E2BF0();
}

void *sub_25B0B32DC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F00, &qword_25B0E5948);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_25B0B3364(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318C8, &qword_25B0E77D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_25B0B33E8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318A8, &unk_25B0E94C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_25B0B3478(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318F8, &unk_25B0E94D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0xE38E38E38E38E39) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_25B0B3510(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_25B0B3664(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
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
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
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

void *sub_25B0B3764(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!__dst)
  {
    v14 = *(a4 + 16);
    v6 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v14;
    return v6;
  }

  if (!a3)
  {
    v14 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = __dst;
      v9 = 0;
      v10 = (a4 + 96 * v6 - 64);
      while (v6 + v9 <= *(a4 + 16))
      {
        v11 = v10[3];
        v16[2] = v10[2];
        v16[3] = v11;
        v12 = v10[5];
        v16[4] = v10[4];
        v16[5] = v12;
        v13 = v10[1];
        v16[0] = *v10;
        v16[1] = v13;
        memmove(v8, v10, 0x60uLL);
        if (a3 + v9 == 1)
        {
          sub_25B08CE58(v16, v15);
          v14 = v6 + v9 - 1;
          goto LABEL_13;
        }

        v8 += 96;
        sub_25B08CE58(v16, v15);
        --v9;
        v10 -= 6;
        v14 = v6 + v9;
        if (!(v6 + v9))
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v14 = 0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void *sub_25B0B3888(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
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
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 72 * (v17 | (v12 << 6)));
      v25[0] = *v18;
      v20 = v18[2];
      v19 = v18[3];
      v21 = v18[1];
      v26 = *(v18 + 8);
      v25[2] = v20;
      v25[3] = v19;
      v25[1] = v21;
      memmove(v11, v18, 0x48uLL);
      if (v14 == v10)
      {
        sub_25B08CEB4(v25, v24);
        goto LABEL_24;
      }

      v11 += 72;
      sub_25B08CEB4(v25, v24);
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

uint64_t sub_25B0B3A30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25B0B3B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA320E0;
  if (!qword_27FA320E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA320E0);
  }

  return result;
}

unint64_t sub_25B0B3B78()
{
  result = qword_27FA320E8;
  if (!qword_27FA320E8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32080, &qword_25B0E94A0);
    sub_25B0AFC9C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA320E8);
  }

  return result;
}

unint64_t sub_25B0B3C00()
{
  result = qword_27FA320F8;
  if (!qword_27FA320F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA320F0, &qword_25B0E9688);
    sub_25B0B3CB8();
    sub_25B058150(&qword_27FA32150, &qword_27FA32158, &qword_25B0E96B8, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA320F8);
  }

  return result;
}

unint64_t sub_25B0B3CB8()
{
  result = qword_27FA32100;
  if (!qword_27FA32100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32108, &qword_25B0E9690);
    sub_25B0B3D70();
    sub_25B058150(&qword_27FA32140, &qword_27FA32148, &qword_25B0E96B0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32100);
  }

  return result;
}

unint64_t sub_25B0B3D70()
{
  result = qword_27FA32110;
  if (!qword_27FA32110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32118, &qword_25B0E9698);
    sub_25B0B3DFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32110);
  }

  return result;
}

unint64_t sub_25B0B3DFC()
{
  result = qword_27FA32120;
  if (!qword_27FA32120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32128, &qword_25B0E96A0);
    sub_25B0B3E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32120);
  }

  return result;
}

unint64_t sub_25B0B3E88()
{
  result = qword_27FA32130;
  if (!qword_27FA32130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32138, &qword_25B0E96A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32130);
  }

  return result;
}

unint64_t sub_25B0B3F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA32160;
  if (!qword_27FA32160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32160);
  }

  return result;
}

uint64_t sub_25B0B3F60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA320F0, &qword_25B0E9688);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0B3FD0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    goto LABEL_29;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v35 = *(a1 + 80);
  v33 = *(a1 + 88);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  v40 = *(a2 + 56);
  v41 = *(a1 + 56);
  v38 = *(a2 + 64);
  v39 = *(a1 + 64);
  v36 = *(a2 + 72);
  v37 = *(a1 + 72);
  v34 = *(a2 + 80);
  v32 = *(a2 + 88);
  if ((*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16)) && (sub_25B0E3E30() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v5)
  {
    if (!v8 || (v4 != v9 || v5 != v8) && (sub_25B0E3E30() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v8)
  {
    goto LABEL_29;
  }

  if (v7)
  {
    if (!v10)
    {
      return v10 & 1;
    }

    if ((v6 != v11 || v7 != v10) && (sub_25B0E3E30() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v10)
  {
    goto LABEL_29;
  }

  sub_25B0AD0C8(v41, v40);
  if ((v12 & 1) == 0)
  {
    goto LABEL_29;
  }

  LOBYTE(v10) = 0;
  if ((sub_25B0A379C(v39, v38) & 1) != 0 && v37 == v36)
  {
    sub_25B0A2BE0(v35, v34);
    LOBYTE(v10) = 0;
    if ((v13 & 1) != 0 && v33 == v32)
    {
      v14 = *(a1 + 144);
      v63 = *(a1 + 128);
      v64 = v14;
      v15 = *(a1 + 176);
      v65 = *(a1 + 160);
      v66 = v15;
      v16 = *(a1 + 112);
      v61 = *(a1 + 96);
      v62 = v16;
      v17 = *(a2 + 144);
      v60[2] = *(a2 + 128);
      v60[3] = v17;
      v18 = *(a2 + 176);
      v60[4] = *(a2 + 160);
      v60[5] = v18;
      v19 = *(a2 + 112);
      v60[0] = *(a2 + 96);
      v60[1] = v19;
      v20 = v62;
      v21 = v19;
      if (v62)
      {
        if (v19)
        {
          v42 = *(a2 + 96);
          *v43 = v19;
          *&v43[8] = *(a2 + 120);
          *&v43[72] = *(a2 + 184);
          *&v43[56] = *(a2 + 168);
          *&v43[40] = *(a2 + 152);
          *&v43[24] = *(a2 + 136);
          v51 = v42;
          *v52 = *v43;
          *&v52[48] = *&v43[48];
          *&v52[64] = *&v43[64];
          *&v52[16] = *&v43[16];
          *&v52[32] = *&v43[32];
          v67 = *(a1 + 96);
          v69 = *(a1 + 120);
          v22 = *(a1 + 136);
          v23 = *(a1 + 152);
          v24 = *(a1 + 184);
          v72 = *(a1 + 168);
          v71 = v23;
          v70 = v22;
          v73 = v24;
          v68 = v62;
          sub_25B0B00E0(&v61, &v44, &qword_27FA320C0, &qword_25B0E94B8);
          sub_25B0B00E0(v60, &v44, &qword_27FA320C0, &qword_25B0E94B8);
          LOBYTE(v10) = sub_25B0D4C90(&v67, &v51);
          sub_25B058448(&v42, &qword_27FA320C0, &qword_25B0E94B8);
          v44 = *(a1 + 96);
          v45 = v20;
          v47 = *(a1 + 136);
          v48 = *(a1 + 152);
          v49 = *(a1 + 168);
          v50 = *(a1 + 184);
          v46 = *(a1 + 120);
          sub_25B058448(&v44, &qword_27FA320C0, &qword_25B0E94B8);
          return v10 & 1;
        }
      }

      else if (!v19)
      {
        v51 = *(a1 + 96);
        *&v52[24] = *(a1 + 136);
        *&v52[40] = *(a1 + 152);
        *&v52[56] = *(a1 + 168);
        v31 = *(a1 + 184);
        *v52 = 0;
        *&v52[72] = v31;
        *&v52[8] = *(a1 + 120);
        sub_25B0B00E0(&v61, &v67, &qword_27FA320C0, &qword_25B0E94B8);
        sub_25B0B00E0(v60, &v67, &qword_27FA320C0, &qword_25B0E94B8);
        sub_25B058448(&v51, &qword_27FA320C0, &qword_25B0E94B8);
        LOBYTE(v10) = 1;
        return v10 & 1;
      }

      v51 = *(a1 + 96);
      *&v52[24] = *(a1 + 136);
      *&v52[40] = *(a1 + 152);
      *&v52[56] = *(a1 + 168);
      v25 = *(a1 + 184);
      *v52 = v62;
      *&v52[72] = v25;
      *&v52[8] = *(a1 + 120);
      v53 = *(a2 + 96);
      v55 = *(a2 + 120);
      v26 = *(a2 + 136);
      v27 = *(a2 + 152);
      v28 = *(a2 + 168);
      v29 = *(a2 + 184);
      v54 = v21;
      v59 = v29;
      v58 = v28;
      v57 = v27;
      v56 = v26;
      sub_25B0B00E0(&v61, &v67, &qword_27FA320C0, &qword_25B0E94B8);
      sub_25B0B00E0(v60, &v67, &qword_27FA320C0, &qword_25B0E94B8);
      sub_25B058448(&v51, &qword_27FA32168, &qword_25B0E96C0);
LABEL_29:
      LOBYTE(v10) = 0;
    }
  }

  return v10 & 1;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25B0B441C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25B0B4464(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_25B0B44F0()
{
  v1 = v0[3];
  v2 = *(v0[2] + 16);
  if (v2 >= v1)
  {
    v2 = v0[3];
  }

  if (v2 / 2 < *(v0[7] + 16) && v1 < -1)
  {
    __break(1u);
  }
}

double sub_25B0B4548@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32180, &qword_25B0E97B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (v32 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32188, &qword_25B0E97B8);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32190, &qword_25B0E97C0);
  MEMORY[0x28223BE20](v10);
  v12 = v32 - v11;
  v13 = v1[1];
  v33 = *v1;
  v34 = v13;
  v14 = v1[3];
  v35 = v1[2];
  v36 = v14;
  *v5 = sub_25B0E3590();
  v5[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32198, &qword_25B0E97C8);
  sub_25B0B485C(&v33, v16);
  sub_25B0E3590();
  sub_25B0E2D30();
  sub_25B0745E4(v5, v9, &qword_27FA32180, &qword_25B0E97B0);
  v17 = &v9[*(v7 + 44)];
  v18 = v32[9];
  *(v17 + 4) = v32[8];
  *(v17 + 5) = v18;
  *(v17 + 6) = v32[10];
  v19 = v32[5];
  *v17 = v32[4];
  *(v17 + 1) = v19;
  v20 = v32[7];
  *(v17 + 2) = v32[6];
  *(v17 + 3) = v20;
  v21 = 1.0;
  if ((BYTE8(v35) & 1) == 0)
  {
    v22 = *&v35;
    v32[0] = v33;
    v32[1] = v34;
    v32[2] = v35;
    v32[3] = v36;
    sub_25B0B44F0();
    v21 = fmin(v22 / v23, 1.0);
  }

  sub_25B0E3620();
  v25 = v24;
  v27 = v26;
  sub_25B0745E4(v9, v12, &qword_27FA32188, &qword_25B0E97B8);
  v28 = &v12[*(v10 + 36)];
  *v28 = v21;
  *(v28 + 1) = v21;
  *(v28 + 2) = v25;
  *(v28 + 3) = v27;
  sub_25B0E33A0();
  v29 = sub_25B0E33C0();

  sub_25B0745E4(v12, a1, &qword_27FA32190, &qword_25B0E97C0);
  v30 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA321A0, &qword_25B0E97D0) + 36);
  *v30 = v29;
  result = 10.0;
  *(v30 + 8) = xmmword_25B0E96E0;
  *(v30 + 24) = 0x4010000000000000;
  return result;
}

uint64_t sub_25B0B485C(uint64_t a1, uint64_t a2)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v15 = v5;
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (*(v5 + 16) >= v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = *(v5 + 16);
    }

    v7 = *(*(sub_25B0E2750() - 8) + 80);
    v16[0] = 0;
    v16[1] = v6;
    v16[2] = v5;
    v16[3] = v5 + ((v7 + 32) & ~v7);
    v16[4] = 0;
    v16[5] = (2 * v6) | 1;

    v8 = sub_25B0B53EC(v16);
    sub_25B0B5984(&v15);
    v14 = v8;
    swift_getKeyPath();
    v9 = swift_allocObject();
    v10 = *(a1 + 16);
    v9[1] = *a1;
    v9[2] = v10;
    v11 = *(a1 + 48);
    v9[3] = *(a1 + 32);
    v9[4] = v11;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_25B0B59EC;
    *(v12 + 24) = v9;
    sub_25B0B5A5C(a1, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA321A8, &qword_25B0E97F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA321B0, &qword_25B0E9800);
    sub_25B058150(&qword_27FA321B8, &qword_27FA321A8, &qword_25B0E97F8, MEMORY[0x277D83980]);
    sub_25B0B6024(&qword_27FA312D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE08]);
    sub_25B0B5A94();
    sub_25B0E34F0();
  }

  return result;
}

void sub_25B0B4AD8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a2;
  v41 = a1;
  v36 = a4;
  v38 = type metadata accessor for FacePlacement.Location(0);
  MEMORY[0x28223BE20](v38);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B0E2750();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA321E0, &qword_25B0E9810);
  MEMORY[0x28223BE20](v37);
  v39 = v33 - v11;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA321D0, &qword_25B0E9808);
  MEMORY[0x28223BE20](v35);
  v13 = v33 - v12;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA321B0, &qword_25B0E9800);
  MEMORY[0x28223BE20](v34);
  v15 = v33 - v14;
  sub_25B0E3900();
  v33[1] = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v8 + 16))(v10, v40, v7);
  v16 = *a3;
  v17 = *(a3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31890, &qword_25B0E7768);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_25B0E7730;
  v19 = v41;
  *(v18 + 32) = v17;
  *(v18 + 40) = v19;
  MEMORY[0x25F85F060]();
  *v6 = v16;
  v20 = v10;
  v21 = v39;
  FaceView.init(face:location:)(v20, v6, v39);
  v22 = *(a3 + 6);
  v23 = *(a3 + 7);

  sub_25B0E3590();
  sub_25B0E2B50();
  v24 = &v21[*(v37 + 36)];
  v25 = v43;
  *v24 = v42;
  *(v24 + 1) = v25;
  *(v24 + 2) = v44;
  v26 = sub_25B0E2730();
  v27 = [v26 device];

  if (v27)
  {
    v28 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v29 = sub_25B0E3730();
    [v28 initWithSuiteName_];

    v30 = sub_25B0E29E0();
    sub_25B0745E4(v21, v13, &qword_27FA321E0, &qword_25B0E9810);
    v31 = &v13[*(v35 + 36)];
    *v31 = v27;
    *(v31 + 8) = xmmword_25B0E96F0;
    *(v31 + 3) = v30;
    sub_25B0745E4(v13, v15, &qword_27FA321D0, &qword_25B0E9808);
    v32 = &v15[*(v34 + 36)];
    *v32 = v19;
    *(v32 + 1) = v22;
    *(v32 + 2) = v23;
    sub_25B0745E4(v15, v36, &qword_27FA321B0, &qword_25B0E9800);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25B0B4F70(uint64_t result, uint64_t a2)
{
  v2 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    return result;
  }

  if (v2 / 2 < *(a2 + 16) && v2 < -1)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_25B0B4FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32250, &qword_25B0E98E8);
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = v22 - v9;
  v11 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    v12 = 1.0;
    if (v11 / 2 >= *(a4 + 16))
    {
LABEL_5:
      sub_25B0E3620();
      v14 = v13;
      v16 = v15;
      v17 = sub_25B0E2D40();
      v18 = sub_25B0B6024(&qword_27FA32258, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
      MEMORY[0x25F85F690](v17, v18, v12, v14, v16);
      sub_25B0B4F70(a3, a4);
      v20 = v19;
      v22[0] = v17;
      v22[1] = v18;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      MEMORY[0x25F85F6A0](v6, OpaqueTypeConformance2, v20, 0.0);
      return (*(v7 + 8))(v10, v6);
    }

    if (v11 >= -1)
    {
      v12 = *(a4 + 16 * (v11 / 2) + 40);
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25B0B51EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v5;

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32238, &qword_25B0E98D8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32240, &qword_25B0E98E0);
  v9 = sub_25B058150(&qword_27FA32248, &qword_27FA32238, &qword_25B0E98D8, MEMORY[0x277CE04B0]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32250, &qword_25B0E98E8);
  sub_25B0E2D40();
  sub_25B0B6024(&qword_27FA32258, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
  swift_getOpaqueTypeConformance2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x25F85FDC0](sub_25B0B6014, v6, v7, v8, v9, OpaqueTypeConformance2);

  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32260, &qword_25B0E98F0);
    *(a1 + *(result + 36)) = ((v3 + 1) / -2);
  }

  return result;
}

void *sub_25B0B53EC(void *a1)
{
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32200, &qword_25B0E9818);
  v69 = *(v67 - 8);
  v2 = MEMORY[0x28223BE20](v67);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = (&v57 - v6);
  result = MEMORY[0x28223BE20](v5);
  v65 = &v57 - v9;
  v11 = *a1;
  v10 = a1[1];
  v12 = v10 - *a1;
  if (__OFSUB__(v10, *a1))
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v13 = a1[5] >> 1;
  v64 = a1[4];
  if (__OFSUB__(v13, v64))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v14 = a1[2];
  v66 = a1[3];
  if (v13 - v64 >= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v13 - v64;
  }

  v68 = v10;
  if (!v15)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_17:
    v20 = *(v69 + 80);
    v21 = v18[3];

    if (v15 < 0)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v59 = v20;
    v60 = v7;
    v61 = (v20 + 32) & ~v20;
    v62 = a1;
    v22 = v18 + v61;
    v23 = v21 >> 1;
    v63 = v11;
    v57 = v14;
    if (v15)
    {
      v24 = v68;
      if (v68 < v11)
      {
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v23 -= v15;
      v25 = v64;
      v26 = v11;
      while (v24 != v26)
      {
        if (v26 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_68;
        }

        if (v13 == v25)
        {
          goto LABEL_69;
        }

        if (v25 >= v13 || v26 >= v24)
        {
          goto LABEL_70;
        }

        v27 = sub_25B0E2750();
        v28 = *(v27 - 8);
        v29 = *(v28 + 16);
        v30 = v66 + *(v28 + 72) * v25;
        v31 = *(v67 + 48);
        *v4 = v26;
        v29(&v4[v31], v30, v27);
        ++v25;
        result = sub_25B0745E4(v4, v22, &qword_27FA32200, &qword_25B0E9818);
        v24 = v68;
        v22 += *(v69 + 72);
        v26 = (v26 + 1);
        if (!--v15)
        {
          v7 = v60;
          v11 = v63;
          goto LABEL_29;
        }
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v25 = v64;
    v26 = v11;
LABEL_29:
    result = sub_25B0B5D10(v62, v70);
    v32 = v68;
    if (v26 == v68)
    {
LABEL_30:
      v33 = v18;
LABEL_31:
      result = swift_unknownObjectRelease();
      v34 = v33[3];
      if (v34 >= 2)
      {
        v35 = v34 >> 1;
        v36 = __OFSUB__(v35, v23);
        v37 = v35 - v23;
        if (v36)
        {
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        v33[2] = v37;
      }

      return v33;
    }

    if (v68 < v11)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    if (v26 > v68)
    {
      v32 = v26;
    }

    v62 = v32;
    v38 = v26;
    v39 = v25;
    while (1)
    {
      if (v26 < v63)
      {
        goto LABEL_71;
      }

      if (v62 == v38)
      {
        goto LABEL_72;
      }

      if (v13 == v39)
      {
        goto LABEL_30;
      }

      if (v25 < v64 || v39 >= v13)
      {
        goto LABEL_73;
      }

      v40 = sub_25B0E2750();
      v41 = *(v40 - 8);
      v42 = *(v41 + 16);
      v43 = v66 + *(v41 + 72) * v39;
      v44 = *(v67 + 48);
      *v7 = v38;
      v42(v7 + v44, v43, v40);
      result = sub_25B0745E4(v7, v65, &qword_27FA32200, &qword_25B0E9818);
      if (v23)
      {
        v33 = v18;
        v36 = __OFSUB__(v23--, 1);
        if (v36)
        {
          goto LABEL_66;
        }

        goto LABEL_40;
      }

      v45 = v18[3];
      if (((v45 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_74;
      }

      v46 = v45 & 0xFFFFFFFFFFFFFFFELL;
      if (v46 <= 1)
      {
        v47 = 1;
      }

      else
      {
        v47 = v46;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32210, &qword_25B0E9828);
      v48 = *(v69 + 72);
      v49 = v61;
      v33 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v33);
      if (!v48)
      {
        goto LABEL_75;
      }

      v50 = result - v49;
      if ((result - v49) == 0x8000000000000000 && v48 == -1)
      {
        goto LABEL_76;
      }

      v52 = v50 / v48;
      v33[2] = v47;
      v33[3] = 2 * (v50 / v48);
      v53 = v33 + v49;
      v54 = v18[3] >> 1;
      v55 = v54 * v48;
      if (v18[2])
      {
        break;
      }

LABEL_64:
      v22 = &v53[v55];
      v56 = (v52 & 0x7FFFFFFFFFFFFFFFLL) - v54;

      v7 = v60;
      v36 = __OFSUB__(v56, 1);
      v23 = v56 - 1;
      if (v36)
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

LABEL_40:
      v38 = (v38 + 1);
      result = sub_25B0745E4(v65, v22, &qword_27FA32200, &qword_25B0E9818);
      v22 += *(v69 + 72);
      ++v39;
      v18 = v33;
      if (v68 == v38)
      {
        goto LABEL_31;
      }
    }

    if (v33 < v18 || v53 >= v18 + v61 + v55)
    {
      v58 = v52;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v33 == v18)
      {
LABEL_63:
        v18[2] = 0;
        goto LABEL_64;
      }

      v58 = v52;
      swift_arrayInitWithTakeBackToFront();
    }

    v52 = v58;
    goto LABEL_63;
  }

  if (v15 <= 0)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_16:

    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32210, &qword_25B0E9828);
  v16 = *(v69 + 72);
  v17 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v18 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v18);
  if (v16)
  {
    if ((result - v17) == 0x8000000000000000 && v16 == -1)
    {
      goto LABEL_84;
    }

    v18[2] = v15;
    v18[3] = 2 * ((result - v17) / v16);
    goto LABEL_16;
  }

LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}

uint64_t sub_25B0B5984(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F68, &qword_25B0E91E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B0B59F4(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32200, &qword_25B0E9818);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_25B0B5A94()
{
  result = qword_27FA321C0;
  if (!qword_27FA321C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA321B0, &qword_25B0E9800);
    v3 = sub_25B0B5B20();
    sub_25B0B5CBC(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA321C0);
  }

  return result;
}

unint64_t sub_25B0B5B20()
{
  result = qword_27FA321C8;
  if (!qword_27FA321C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA321D0, &qword_25B0E9808);
    v3 = sub_25B0B5BAC();
    sub_25B0B5C68(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA321C8);
  }

  return result;
}

unint64_t sub_25B0B5BAC()
{
  result = qword_27FA321D8;
  if (!qword_27FA321D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA321E0, &qword_25B0E9810);
    sub_25B0B6024(&qword_27FA321E8, type metadata accessor for FaceView, &protocol conformance descriptor for FaceView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA321D8);
  }

  return result;
}

unint64_t sub_25B0B5C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA321F0;
  if (!qword_27FA321F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA321F0);
  }

  return result;
}

unint64_t sub_25B0B5CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA321F8;
  if (!qword_27FA321F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA321F8);
  }

  return result;
}

uint64_t sub_25B0B5D10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32208, &qword_25B0E9820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0B5D80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25B0B5DC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25B0B5E28()
{
  result = qword_27FA32218;
  if (!qword_27FA32218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA321A0, &qword_25B0E97D0);
    sub_25B0B5EB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32218);
  }

  return result;
}

unint64_t sub_25B0B5EB4()
{
  result = qword_27FA32220;
  if (!qword_27FA32220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32190, &qword_25B0E97C0);
    sub_25B0B5F40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32220);
  }

  return result;
}

unint64_t sub_25B0B5F40()
{
  result = qword_27FA32228;
  if (!qword_27FA32228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32188, &qword_25B0E97B8);
    sub_25B058150(&qword_27FA32230, &qword_27FA32180, &qword_25B0E97B0, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32228);
  }

  return result;
}

uint64_t sub_25B0B6024(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25B0B606C()
{
  result = qword_27FA32268;
  if (!qword_27FA32268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32260, &qword_25B0E98F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32238, &qword_25B0E98D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32240, &qword_25B0E98E0);
    sub_25B058150(&qword_27FA32248, &qword_27FA32238, &qword_25B0E98D8, MEMORY[0x277CE04B0]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32250, &qword_25B0E98E8);
    sub_25B0E2D40();
    sub_25B0B6024(&qword_27FA32258, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_25B058150(&qword_27FA32270, &qword_27FA32278, &qword_25B0E98F8, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32268);
  }

  return result;
}

uint64_t sub_25B0B625C(uint64_t *a1, int a2)
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

uint64_t sub_25B0B62A4(uint64_t result, int a2, int a3)
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

__n128 sub_25B0B630C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25B0E2D20();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 28);
  v11 = *MEMORY[0x277CE0118];
  v12 = sub_25B0E2EC0();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  __asm { FMOV            V0.2D, #16.0 }

  *v9 = _Q0;
  if (*(a1 + 16) < 2uLL)
  {

    sub_25B0E3600();
    sub_25B0E3610();
    MEMORY[0x25F860090](a1);
  }

  else
  {
    sub_25B0B64CC(a1, a2);
    sub_25B0E3600();
    sub_25B0E3610();
    sub_25B0E3520();
  }

  sub_25B0E2BE0();
  v18 = v24;
  v22 = v26;
  v23 = v25;
  sub_25B0B660C(v9, a3);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32280, &qword_25B0E9998);
  v20 = a3 + *(v19 + 52);
  *v20 = v18;
  result = v23;
  *(v20 + 24) = v22;
  *(v20 + 8) = result;
  *(a3 + *(v19 + 56)) = 256;
  return result;
}

char *sub_25B0B64CC(char *result, uint64_t a2)
{
  v3 = 0;
  v4 = *(result + 2);
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v4 == v3)
    {
      return v5;
    }

    if (v3 >= v4)
    {
      break;
    }

    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_14;
    }

    if (v3++ < *(a2 + 16))
    {
      swift_retain_n();
      v8 = sub_25B0E3510();
      v10 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_25B08A138(0, *(v5 + 2) + 1, 1, v5);
      }

      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_25B08A138((v11 > 1), v12 + 1, 1, v5);
      }

      *(v5 + 2) = v12 + 1;
      v13 = &v5[16 * v12];
      *(v13 + 4) = v8;
      *(v13 + 5) = v10;
      v3 = v6;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_25B0B660C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B0E2D20();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25B0B6670()
{
  result = qword_27FA32288;
  if (!qword_27FA32288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32280, &qword_25B0E9998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32288);
  }

  return result;
}

uint64_t sub_25B0B6710@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = sub_25B0E3590();
  *(a4 + 1) = v12;
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32290, &qword_25B0E9A80) + 44);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32298, &qword_25B0E9A88);
  (*(*(v14 - 8) + 16))(&a4[v13], a1, v14);

  v15 = sub_25B0E3110();
  sub_25B0E2A00();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = &a4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322A0, &qword_25B0E9A90) + 36)];
  *v24 = v15;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  v25 = sub_25B0E3590();
  v27 = v26;
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  *(v28 + 24) = a5;
  *(v28 + 32) = a6;
  *(v28 + 40) = a3;
  v29 = a2;

  v30 = &a4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322A8, &qword_25B0E9A98) + 36)];
  *v30 = sub_25B0B7520;
  *(v30 + 1) = v28;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  v31 = sub_25B0E3590();
  v33 = v32;
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v34 = swift_allocObject();
  *(v34 + 16) = v29;
  *(v34 + 24) = a5;
  *(v34 + 32) = a6;
  *(v34 + 40) = a3;
  v35 = v29;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322B0, &qword_25B0E9AA0);
  v37 = &a4[*(result + 36)];
  *v37 = sub_25B0B7570;
  *(v37 + 1) = v34;
  *(v37 + 2) = v31;
  *(v37 + 3) = v33;
  return result;
}

uint64_t sub_25B0B6A1C@<X0>(void *a1@<X1>, double *a2@<X8>, double a3@<D0>)
{
  v6 = sub_25B0E2930();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a1 screenCornerRadius];
  v11 = v10;
  [a1 screenBounds];
  v13 = v12;
  v15 = v14;
  type metadata accessor for CGSize(0);
  v28[3] = v16;
  v28[4] = &off_286C5BCB8;
  v28[0] = v13;
  v28[1] = v15;
  v17 = __swift_project_boxed_opaque_existential_1(v28, v16);
  sub_25B0E2B70();
  v19 = v11 * ((v18 - (a3 + a3)) / *v17);
  __swift_destroy_boxed_opaque_existential_1(v28);
  v20 = v19 + a3;
  v21 = *(sub_25B0E2D20() + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_25B0E2EC0();
  (*(*(v23 - 8) + 104))(a2 + v21, v22, v23);
  *a2 = v20;
  a2[1] = v20;
  if (qword_27FA30D50 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v6, qword_27FA39A28);
  (*(v7 + 16))(v9, v24, v6);
  v25 = sub_25B0E33D0();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322F8, &qword_25B0E9AE0);
  *(a2 + *(result + 52)) = v25;
  *(a2 + *(result + 56)) = 256;
  return result;
}

uint64_t sub_25B0B6CC0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a4 = sub_25B0E3590();
  a4[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322B8, &qword_25B0E9AA8);
  sub_25B0B6DBC(a2, a3, a1, a4 + *(v13 + 44), a5, a6);
}

uint64_t sub_25B0B6DBC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v88 = a3;
  *&v84 = a2;
  v87 = a4;
  v9 = sub_25B0E2930();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25B0E2D20();
  MEMORY[0x28223BE20](v13);
  v15 = (&v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322C0, &qword_25B0E9AB0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v86 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v84 - v19;
  sub_25B0E3900();
  v85 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a1 screenCornerRadius];
  v22 = v21;
  [a1 screenBounds];
  v24 = v23;
  v26 = v25;
  type metadata accessor for CGSize(0);
  v28 = v27;
  *(&v96 + 1) = v27;
  v97 = &off_286C5BCB8;
  *&v95 = v24;
  *(&v95 + 1) = v26;
  v29 = __swift_project_boxed_opaque_existential_1(&v95, v27);
  sub_25B0E2B70();
  v30 = a5 + a5;
  v32 = v22 * ((v31 - (a5 + a5)) / *v29);
  __swift_destroy_boxed_opaque_existential_1(&v95);
  v33 = v32 + a5;
  v34 = *(v13 + 20);
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_25B0E2EC0();
  (*(*(v36 - 8) + 104))(v15 + v34, v35, v36);
  *v15 = v33;
  v15[1] = v33;
  if (qword_27FA30D58 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v9, qword_27FA39A40);
  (*(v10 + 16))(v12, v37, v9);
  v38 = sub_25B0E33D0();
  sub_25B0E2AB0();
  sub_25B0B7580(v15, v20);
  v39 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322C8, &qword_25B0E9AB8) + 36)];
  v40 = v96;
  *v39 = v95;
  *(v39 + 1) = v40;
  *(v39 + 4) = v97;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322D0, &qword_25B0E9AC0);
  *&v20[*(v41 + 52)] = v38;
  *&v20[*(v41 + 56)] = 256;
  v42 = sub_25B0E3590();
  v44 = v43;
  sub_25B0B75E4(v15);
  v45 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322D8, &qword_25B0E9AC8) + 36)];
  *v45 = v42;
  v45[1] = v44;
  sub_25B0E29F0();
  if (v89 == 1)
  {
    sub_25B0E2B70();
    v47 = v46 + a6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322E8, &qword_25B0EA2F0);
    v48 = swift_allocObject();
    v84 = xmmword_25B0E7720;
    *(v48 + 16) = xmmword_25B0E7720;
    v49 = MEMORY[0x277D85048];
    *(v48 + 56) = MEMORY[0x277D85048];
    v50 = v49;
    v53 = sub_25B0B77B0(v48, v51, v52);
    *(v48 + 64) = v53;
    *(v48 + 32) = v47;
    v93 = sub_25B0E3750();
    v94 = v54;
    MEMORY[0x25F8602F0](8236, 0xE200000000000000);
    sub_25B0E2B70();
    v56 = v55 + a6;
    v57 = swift_allocObject();
    *(v57 + 16) = v84;
    *(v57 + 56) = v50;
    *(v57 + 64) = v53;
    *(v57 + 32) = v56;
    v58 = sub_25B0E3750();
    MEMORY[0x25F8602F0](v58);

    MEMORY[0x25F8602F0](8236, 0xE200000000000000);
    [a1 screenCornerRadius];
    v60 = v59;
    [a1 screenBounds];
    v91 = v28;
    v92 = &off_286C5BCB8;
    v89 = v61;
    v90 = v62;
    v63 = __swift_project_boxed_opaque_existential_1(&v89, v28);
    sub_25B0E2B70();
    v65 = v60 * ((v64 - v30) / *v63);
    __swift_destroy_boxed_opaque_existential_1(&v89);
    v66 = swift_allocObject();
    *(v66 + 16) = v84;
    *(v66 + 56) = MEMORY[0x277D85048];
    *(v66 + 64) = v53;
    *(v66 + 32) = v65;
    v67 = sub_25B0E3750();
    MEMORY[0x25F8602F0](v67);

    MEMORY[0x25F8602F0](8236, 0xE200000000000000);
    [a1 screenCornerRadius];
    v69 = v68;
    [a1 screenBounds];
    v91 = v28;
    v92 = &off_286C5BCB8;
    v89 = v70;
    v90 = v71;
    v72 = __swift_project_boxed_opaque_existential_1(&v89, v28);
    sub_25B0E2B70();
    v74 = v69 * ((v73 - v30) / *v72);
    __swift_destroy_boxed_opaque_existential_1(&v89);
    v75 = swift_allocObject();
    *(v75 + 16) = v84;
    *(v75 + 56) = MEMORY[0x277D85048];
    *(v75 + 64) = v53;
    *(v75 + 32) = v74 + a5;
    v76 = sub_25B0E3750();
    MEMORY[0x25F8602F0](v76);

    v77 = v93;
    v78 = v94;

    v79 = MEMORY[0x277D84F90];
  }

  else
  {
    v77 = 0;
    v78 = 0;
    v79 = 0;
  }

  v80 = v86;
  sub_25B0B7640(v20, v86);
  v81 = v87;
  sub_25B0B7640(v80, v87);
  v82 = (v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322E0, &unk_25B0E9AD0) + 48));
  sub_25B0B76B0(v77, v78, 0, v79);
  sub_25B0B7704(v77, v78, 0, v79);
  *v82 = v77;
  v82[1] = v78;
  v82[2] = 0;
  v82[3] = v79;
  sub_25B0B7748(v20);
  sub_25B0B7704(v77, v78, 0, v79);
  sub_25B0B7748(v80);
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25B0B7580(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B0E2D20();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0B75E4(uint64_t a1)
{
  v2 = sub_25B0E2D20();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B0B7640(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322C0, &qword_25B0E9AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0B76B0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_25B0B76F4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_25B0B76F4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25B0B7704(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_25B0B0ABC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_25B0B7748(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322C0, &qword_25B0E9AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25B0B77B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA322F0;
  if (!qword_27FA322F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA322F0);
  }

  return result;
}

unint64_t sub_25B0B7804()
{
  result = qword_27FA32300;
  if (!qword_27FA32300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA322B0, &qword_25B0E9AA0);
    sub_25B0B78BC();
    sub_25B058150(&qword_27FA32338, &qword_27FA32340, &qword_25B0E9AF8, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32300);
  }

  return result;
}

unint64_t sub_25B0B78BC()
{
  result = qword_27FA32308;
  if (!qword_27FA32308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA322A8, &qword_25B0E9A98);
    sub_25B0B7974();
    sub_25B058150(&qword_27FA32328, &qword_27FA32330, &qword_25B0E9AF0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32308);
  }

  return result;
}

unint64_t sub_25B0B7974()
{
  result = qword_27FA32310;
  if (!qword_27FA32310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA322A0, &qword_25B0E9A90);
    sub_25B058150(&qword_27FA32318, &qword_27FA32320, &qword_25B0E9AE8, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32310);
  }

  return result;
}

uint64_t type metadata accessor for FaceButton(uint64_t a1)
{
  result = qword_27FA32348;
  if (!qword_27FA32348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25B0B7AA0(uint64_t a1)
{
  sub_25B0E2750();
  if (v1 <= 0x3F)
  {
    type metadata accessor for FacePlacement.Location(319);
    if (v2 <= 0x3F)
    {
      sub_25B0B7BB0(319, &qword_27FA32358, &type metadata for FaceButton.SizeConstraint);
      if (v3 <= 0x3F)
      {
        sub_25B0B7BB0(319, &qword_27FA32360, &type metadata for FaceBorderMetrics);
        if (v4 <= 0x3F)
        {
          sub_25B0B7BFC(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_25B0B7BB0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_25B0E3B10();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25B0B7BFC(uint64_t a1)
{
  if (!qword_27FA32368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32370, "ji");
    v1 = sub_25B0E3B10();
    if (!v2)
    {
      atomic_store(v1, &qword_27FA32368);
    }
  }
}

uint64_t getEnumTagSinglePayload for FaceButton.SizeConstraint(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for FaceButton.SizeConstraint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_25B0B7D0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    v5 = 0;
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v5 = 1;
LABEL_5:
    MEMORY[0x25F860A80](v5, a2, a3);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = 0;
    }

    return MEMORY[0x25F860AA0](v6);
  }

  MEMORY[0x25F860A80](2);

  return sub_25B0A4D64(*&a2, *&a3);
}

uint64_t sub_25B0B7DA0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_25B0E3F10();
  sub_25B0B7D0C(v5, v1, v2, v3);
  return sub_25B0E3F50();
}

uint64_t sub_25B0B7E08(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_25B0E3F10();
  sub_25B0B7D0C(v6, v2, v3, v4);
  return sub_25B0E3F50();
}

unint64_t sub_25B0B7E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA32378;
  if (!qword_27FA32378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32378);
  }

  return result;
}

uint64_t sub_25B0B7EF0@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32380, &qword_25B0E9BE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32388, &qword_25B0E9BE8);
  MEMORY[0x28223BE20](v5);
  v7 = v24 - v6;
  v8 = type metadata accessor for FaceButton(0);
  v9 = v1 + *(v8 + 28);
  v10 = *(v9 + 8) * 0.5 + 10.0;
  v11 = *(v9 + 16) == 0;
  v12 = 0x4026800000000000;
  if (v11)
  {
    v12 = *&v10;
  }

  *v4 = *(v1 + *(v8 + 44));
  *(v4 + 1) = v12;
  v4[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32390, &qword_25B0E9BF0);
  sub_25B0B8174(v1, &v4[*(v13 + 44)]);
  strcpy(v25, "face-button-");
  BYTE5(v25[1]) = 0;
  HIWORD(v25[1]) = -5120;
  v14 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
  MEMORY[0x25F8602F0](v14);

  v15 = v25[0];
  v16 = v25[1];
  sub_25B0745E4(v4, v7, &qword_27FA32380, &qword_25B0E9BE0);
  v17 = &v7[*(v5 + 52)];
  *v17 = v15;
  *(v17 + 1) = v16;
  v18 = sub_25B0E2740();
  v20 = 0x800000025B0EC4D0;
  v21 = 0xD000000000000010;
  if (v19)
  {
    v21 = v18;
    v20 = v19;
  }

  v25[0] = v21;
  v25[1] = v20;
  MEMORY[0x25F8602F0](45, 0xE100000000000000);
  v22 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
  MEMORY[0x25F8602F0](v22);

  sub_25B058150(&qword_27FA32398, &qword_27FA32388, &qword_25B0E9BE8, MEMORY[0x277CE1148]);
  sub_25B0E3310();

  return sub_25B058448(v7, &qword_27FA32388, &qword_25B0E9BE8);
}

uint64_t sub_25B0B8174@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v123 = a2;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA323A0, &qword_25B0E9BF8);
  MEMORY[0x28223BE20](v115);
  v114 = v102 - v3;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA323A8, &qword_25B0E9C00);
  v4 = MEMORY[0x28223BE20](v113);
  v105 = v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v106 = v102 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v104 = v102 - v9;
  MEMORY[0x28223BE20](v8);
  v107 = v102 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA323B0, &qword_25B0E9C08);
  v121 = *(v11 - 8);
  v122 = v11;
  MEMORY[0x28223BE20](v11);
  v112 = v102 - v12;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA323B8, &qword_25B0E9C10);
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = v102 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA323C0, &qword_25B0E9C18);
  MEMORY[0x28223BE20](v14 - 8);
  v111 = v102 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA323C8, &qword_25B0E9C20);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v120 = v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v124 = v102 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31DD0, &qword_25B0E8DB0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v102 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA323D0, &qword_25B0E9C28);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = v102 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA323D8, &qword_25B0E9C30);
  v118 = *(v27 - 8);
  v119 = v27;
  v28 = MEMORY[0x28223BE20](v27);
  v117 = v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v126 = v102 - v30;
  sub_25B0E3900();
  v116 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v31 = sub_25B0E2750();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v22, a1, v31);
  v33 = 1;
  v34 = (*(v32 + 56))(v22, 0, 1, v31);
  MEMORY[0x28223BE20](v34);
  v102[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA321D0, &qword_25B0E9808);
  v125 = a1;
  sub_25B0B5B20();
  sub_25B0B94DC(&qword_27FA312D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE08]);
  v35 = v125;
  sub_25B0E2BF0();
  v36 = sub_25B058150(&qword_27FA323E0, &qword_27FA323D0, &qword_25B0E9C28, MEMORY[0x277CDD938]);
  sub_25B0B924C(v36, v37, v38);
  sub_25B0E3250();
  (*(v24 + 8))(v26, v23);
  v39 = type metadata accessor for FaceButton(0);
  if (*(v35 + *(v39 + 32)) == 1)
  {
    v40 = v39;
    if (*(v35 + *(v39 + 36)) == 1)
    {
      v41 = sub_25B0E2730();
      v42 = [v41 name];

      if (!v42)
      {
        goto LABEL_13;
      }

      v43 = sub_25B0E3740();
      v45 = v44;
    }

    else
    {
      v46 = sub_25B0E2740();
      if (!v47)
      {
        goto LABEL_13;
      }

      v43 = v46;
      v45 = v47;
    }

    v127 = v43;
    v128 = v45;
    sub_25B04C9BC(v46, v47, v48);
    v49 = sub_25B0E3210();
    v51 = v50;
    v53 = v52;
    sub_25B0E3170();
    v54 = sub_25B0E31F0();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v102[1] = v59;

    sub_25B0B0ABC(v49, v51, v53 & 1);

    LOBYTE(v51) = *(v125 + *(v40 + 48));
    v103 = v51;
    KeyPath = swift_getKeyPath();
    v127 = v54;
    v128 = v56;
    v58 &= 1u;
    v129 = v58;
    v130 = v60;
    v131 = KeyPath;
    v132 = v51;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA323F8, &qword_25B0E9C70);
    v63 = sub_25B0B92A0();
    v64 = v108;
    sub_25B0E3360();
    sub_25B0B0ABC(v54, v56, v58);

    v127 = v62;
    v128 = v63;
    swift_getOpaqueTypeConformance2();
    v65 = v111;
    v66 = v110;
    sub_25B0E32D0();
    (*(v109 + 8))(v64, v66);
    if (sub_25B0E2B90())
    {
      v67 = sub_25B0E3100();
      sub_25B0E2A00();
      v69 = v68;
      v71 = v70;
      v73 = v72;
      v75 = v74;
      v76 = v104;
      sub_25B0B00E0(v65, v104, &qword_27FA323C0, &qword_25B0E9C18);
      v77 = v76 + *(v113 + 36);
      *v77 = v67;
      *(v77 + 8) = v69;
      *(v77 + 16) = v71;
      *(v77 + 24) = v73;
      *(v77 + 32) = v75;
      *(v77 + 40) = 0;
      v78 = v107;
      sub_25B0745E4(v76, v107, &qword_27FA323A8, &qword_25B0E9C00);
    }

    else
    {
      v79 = sub_25B0E3140();
      sub_25B0E2A00();
      v81 = v80;
      v83 = v82;
      v85 = v84;
      v87 = v86;
      v88 = v105;
      sub_25B0B00E0(v65, v105, &qword_27FA323C0, &qword_25B0E9C18);
      v89 = v88 + *(v113 + 36);
      *v89 = v79;
      *(v89 + 8) = v81;
      *(v89 + 16) = v83;
      *(v89 + 24) = v85;
      *(v89 + 32) = v87;
      *(v89 + 40) = 0;
      v78 = v106;
      sub_25B0745E4(v88, v106, &qword_27FA323A8, &qword_25B0E9C00);
    }

    sub_25B0B00E0(v78, v114, &qword_27FA323A8, &qword_25B0E9C00);
    swift_storeEnumTagMultiPayload();
    sub_25B0B9358();
    v90 = v112;
    sub_25B0E2F30();
    sub_25B058448(v78, &qword_27FA323A8, &qword_25B0E9C00);
    sub_25B058448(v65, &qword_27FA323C0, &qword_25B0E9C18);
    sub_25B0745E4(v90, v124, &qword_27FA323B0, &qword_25B0E9C08);
    v33 = 0;
  }

LABEL_13:
  v91 = v124;
  (*(v121 + 56))(v124, v33, 1, v122);
  v93 = v117;
  v92 = v118;
  v94 = *(v118 + 16);
  v95 = v126;
  v96 = v119;
  v94(v117, v126, v119);
  v97 = v120;
  sub_25B0B00E0(v91, v120, &qword_27FA323C8, &qword_25B0E9C20);
  v98 = v123;
  v94(v123, v93, v96);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA323F0, &qword_25B0E9C38);
  sub_25B0B00E0(v97, &v98[*(v99 + 48)], &qword_27FA323C8, &qword_25B0E9C20);
  sub_25B058448(v91, &qword_27FA323C8, &qword_25B0E9C20);
  v100 = *(v92 + 8);
  v100(v95, v96);
  sub_25B058448(v97, &qword_27FA323C8, &qword_25B0E9C20);
  v100(v93, v96);
}

void sub_25B0B8DD4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for FacePlacement.Location(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25B0E2750();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FaceView(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA321E0, &qword_25B0E9810);
  MEMORY[0x28223BE20](v36);
  v14 = &v33 - v13;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA321D0, &qword_25B0E9808);
  MEMORY[0x28223BE20](v34);
  v16 = &v33 - v15;
  sub_25B0E3900();
  v33 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v7 + 16))(v9, a1, v6);
  v17 = type metadata accessor for FaceButton(0);
  sub_25B050BB8(a1 + *(v17 + 20), v5);
  FaceView.init(face:location:)(v9, v5, v12);
  sub_25B0E3590();
  sub_25B0E2B50();
  sub_25B0B9524(v12, v14);
  v18 = &v14[*(v36 + 36)];
  v19 = v38;
  *v18 = v37;
  *(v18 + 1) = v19;
  *(v18 + 2) = v39;
  v20 = sub_25B0E2730();
  v21 = [v20 device];

  if (v21)
  {
    v22 = a1 + *(v17 + 28);
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    if (v25)
    {
      v26 = 6.25;
    }

    else
    {
      v26 = v23;
    }

    if (v25)
    {
      v27 = 2.5;
    }

    else
    {
      v27 = v24;
    }

    v28 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v29 = sub_25B0E3730();
    [v28 initWithSuiteName_];

    v30 = sub_25B0E29E0();
    sub_25B0745E4(v14, v16, &qword_27FA321E0, &qword_25B0E9810);
    v31 = v35;
    v32 = &v16[*(v34 + 36)];
    *v32 = v21;
    *(v32 + 1) = v26;
    *(v32 + 2) = v27;
    *(v32 + 3) = v30;
    sub_25B0745E4(v16, v31, &qword_27FA321D0, &qword_25B0E9808);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_25B0B924C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA323E8;
  if (!qword_27FA323E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA323E8);
  }

  return result;
}

unint64_t sub_25B0B92A0()
{
  result = qword_27FA32400;
  if (!qword_27FA32400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA323F8, &qword_25B0E9C70);
    sub_25B058150(&qword_27FA32408, &qword_27FA32410, &qword_25B0E9C78, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32400);
  }

  return result;
}

unint64_t sub_25B0B9358()
{
  result = qword_27FA32418;
  if (!qword_27FA32418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA323A8, &qword_25B0E9C00);
    sub_25B0B93E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32418);
  }

  return result;
}

unint64_t sub_25B0B93E4()
{
  result = qword_27FA32420;
  if (!qword_27FA32420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA323C0, &qword_25B0E9C18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA323F8, &qword_25B0E9C70);
    sub_25B0B92A0();
    swift_getOpaqueTypeConformance2();
    sub_25B0B94DC(&qword_27FA31EF0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32420);
  }

  return result;
}

uint64_t sub_25B0B94DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25B0B9524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FaceView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_25B0B9588(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    v6 = *&a1 == *&a4;
    if (a6 != 1)
    {
      v6 = 0;
    }

    v7 = *&a1 == *&a4;
    if (*&a2 != *&a5)
    {
      v7 = 0;
    }

    v8 = a6 == 2 && v7;
    if (a3 == 1)
    {
      return v6;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    return !a6 && *&a1 == *&a4;
  }
}

unint64_t sub_25B0B95FC()
{
  result = qword_27FA32428;
  if (!qword_27FA32428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32430, &unk_25B0E9C80);
    sub_25B058150(&qword_27FA32398, &qword_27FA32388, &qword_25B0E9BE8, MEMORY[0x277CE1148]);
    sub_25B0B94DC(&qword_27FA31EF0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32428);
  }

  return result;
}

uint64_t sub_25B0B96E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25B0B972C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25B0B97A0()
{
  sub_25B0E3F10();
  sub_25B0E3780();
  sub_25B0E3B00();
  return sub_25B0E3F50();
}

uint64_t sub_25B0B9834(uint64_t a1)
{
  sub_25B0E3F10();
  sub_25B0E3780();
  sub_25B0E3B00();
  return sub_25B0E3F50();
}

uint64_t sub_25B0B9890(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_25B0E3E30() & 1) == 0)
  {
    return 0;
  }

  sub_25B0954F8();
  return sub_25B0E3AF0() & 1;
}

uint64_t sub_25B0B9904@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v15 = *(v1 + 8);
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32438, &qword_25B0E9D28);
  sub_25B0E3450();
  v5 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32440, &unk_25B0E9D30);
  sub_25B0E3470();
  sub_25B0E3440();
  *&v11 = v4;
  *(&v11 + 1) = v5;
  v12 = v15;
  v13[0] = v16;
  *&v13[8] = v15;
  *&v13[24] = 0xD000000000000016;
  *&v14 = 0x800000025B0E9D20;
  *(&v14 + 1) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32448, "xl");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32450, &qword_25B0E9D60);
  sub_25B058150(&qword_27FA32458, &qword_27FA32448, "xl", MEMORY[0x277CE1148]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32460, &qword_25B0E9D68);
  sub_25B058150(&qword_27FA32468, &qword_27FA32460, &qword_25B0E9D68, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  sub_25B0E3350();
  v17 = *v13;
  v18 = *&v13[16];
  v19 = v14;
  v15 = v11;
  v16 = v12;
  sub_25B058448(&v15, &qword_27FA32448, "xl");
  v6 = sub_25B0E2CC0();
  v7 = sub_25B0E3130();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32470, &qword_25B0E9D70);
  v9 = a1 + *(result + 36);
  *v9 = v6;
  *(v9 + 8) = v7;
  return result;
}

uint64_t sub_25B0B9B6C(uint64_t a1)
{
  v2 = sub_25B0E2F50();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32460, &qword_25B0E9D68);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_25B0E2F40();
  MEMORY[0x28223BE20](v7);
  *(&v10 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32478, &qword_25B0E9D78);
  sub_25B0BA660();
  sub_25B0E2AC0();
  v8 = sub_25B058150(&qword_27FA32468, &qword_27FA32460, &qword_25B0E9D68, MEMORY[0x277CDD7A8]);
  MEMORY[0x25F85FAD0](v6, v3, v8);
  (*(v4 + 8))(v6, v3);
}

id sub_25B0B9DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32490, &qword_25B0E9D80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32478, &qword_25B0E9D78);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v12 = result;
    v13 = [result isPaired];

    if (v13)
    {
      v24 = a2;
      v14 = *a1;
      v15 = *(a1 + 8);
      v27 = *(a1 + 24);
      v28 = v15;
      v16 = swift_allocObject();
      v23[1] = v23;
      v17 = *(a1 + 16);
      *(v16 + 16) = *a1;
      *(v16 + 32) = v17;
      *(v16 + 48) = *(a1 + 32);
      MEMORY[0x28223BE20](v16);
      v23[-2] = a1;
      v18 = v14;
      sub_25B0B00E0(&v28, &v26, &qword_27FA32438, &qword_25B0E9D28);
      sub_25B0B00E0(&v27, &v26, &qword_27FA32440, &unk_25B0E9D30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA324B8, &qword_25B0E9D98);
      sub_25B0BA7D8();
      sub_25B0E3490();
      v26 = v27;
      a2 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32440, &unk_25B0E9D30);
      sub_25B0E3450();
      v19 = v25 != 0;
      KeyPath = swift_getKeyPath();
      v21 = swift_allocObject();
      *(v21 + 16) = v19;
      v22 = &v7[*(v4 + 36)];
      *v22 = KeyPath;
      v22[1] = sub_25B0BB234;
      v22[2] = v21;
      sub_25B0745E4(v7, v10, &qword_27FA32490, &qword_25B0E9D80);
      (*(v5 + 56))(v10, 0, 1, v4);
    }

    else
    {
      (*(v5 + 56))(v10, 1, 1, v4);
    }

    sub_25B0745E4(v10, a2, &qword_27FA32478, &qword_25B0E9D78);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_25B0BA160(uint64_t a1, uint64_t a2)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(a1 + 8);
  v6 = v5;
  v7 = *(&v5 + 1);
  sub_25B0B00E0(&v7, &v4, &qword_27FA32500, &qword_25B0E9DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32438, &qword_25B0E9D28);
  result = sub_25B0E3450();
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = v6;
    ++v4;
    sub_25B0E3460();
    sub_25B058448(&v6, &qword_27FA32438, &qword_25B0E9D28);
  }

  return result;
}

uint64_t sub_25B0BA28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA324F0, &qword_25B0E9DB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA324F8, &qword_25B0E9DE8);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA324B8, &qword_25B0E9D98);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32440, &unk_25B0E9D30);
  sub_25B0E3450();
  if (v17 == 1)
  {
    sub_25B0E2AD0();
    (*(v4 + 16))(v9, v6, v3);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA324D0, &qword_25B0E9DA0);
    sub_25B0BA890();
    sub_25B058150(&qword_27FA324E8, &qword_27FA324F0, &qword_25B0E9DB0, MEMORY[0x277CDD7F8]);
    sub_25B0E2F30();
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v13 = sub_25B0E3400();
    v14 = sub_25B0E2F80();
    *v9 = v13;
    *(v9 + 2) = v14;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA324D0, &qword_25B0E9DA0);
    sub_25B0BA890();
    sub_25B058150(&qword_27FA324E8, &qword_27FA324F0, &qword_25B0E9DB0, MEMORY[0x277CDD7F8]);
    sub_25B0E2F30();
  }

  sub_25B0745E4(v12, v16, &qword_27FA324B8, &qword_25B0E9D98);
}

unint64_t sub_25B0BA660()
{
  result = qword_27FA32480;
  if (!qword_27FA32480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32478, &qword_25B0E9D78);
    sub_25B0BA6E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32480);
  }

  return result;
}

unint64_t sub_25B0BA6E4()
{
  result = qword_27FA32488;
  if (!qword_27FA32488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32490, &qword_25B0E9D80);
    sub_25B058150(&qword_27FA32498, &qword_27FA324A0, &qword_25B0E9D88, MEMORY[0x277CDF028]);
    sub_25B058150(&qword_27FA324A8, &qword_27FA324B0, &qword_25B0E9D90, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32488);
  }

  return result;
}

unint64_t sub_25B0BA7D8()
{
  result = qword_27FA324C0;
  if (!qword_27FA324C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA324B8, &qword_25B0E9D98);
    sub_25B0BA890();
    sub_25B058150(&qword_27FA324E8, &qword_27FA324F0, &qword_25B0E9DB0, MEMORY[0x277CDD7F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA324C0);
  }

  return result;
}

unint64_t sub_25B0BA890()
{
  result = qword_27FA324C8;
  if (!qword_27FA324C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA324D0, &qword_25B0E9DA0);
    sub_25B058150(&qword_27FA324D8, &qword_27FA324E0, &qword_25B0E9DA8, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA324C8);
  }

  return result;
}

id sub_25B0BA948()
{
  v1 = [*v0 addFaceDetailViewController];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  v4 = *(v0 + 16);
  *(v3 + 24) = *v0;
  *(v3 + 16) = v2;
  *(v3 + 40) = v4;
  *(v3 + 56) = *(v0 + 32);
  *(v3 + 72) = *(v0 + 48);
  aBlock[4] = sub_25B0BB74C;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25B0BABA4;
  aBlock[3] = &block_descriptor_38;
  v5 = _Block_copy(aBlock);
  sub_25B0BB708(v0, v7);

  [v1 setShareButtonChangedHandler_];
  _Block_release(v5);
  return v1;
}

void *sub_25B0BAA84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v6 = *(a2 + 16);
    v5 = *(a2 + 24);
    v7 = *(a2 + 32);
    v14 = v6;
    v11 = v6;
    v12 = v5;
    v13 = v7;

    sub_25B0BB638(&v14, &v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32528, &qword_25B0EA010);
    MEMORY[0x25F860020](&v10);
    if (v10 > 1u)
    {
      if (v10 != 2)
      {
        goto LABEL_4;
      }
    }

    else if (!v10)
    {
LABEL_4:
      v8 = [v4 _isShareButtonEnabled];
      v11 = v6;
      v12 = v5;
      if (v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = 3;
      }

      v13 = v7;
      LOBYTE(v10) = v9;
      sub_25B0E34D0();

      sub_25B0BB694(&v14);
    }

    sub_25B0BB694(&v14);
  }

  return result;
}

uint64_t sub_25B0BABA4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_25B0BABE8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 8);
  v24 = *(v1 + 40);
  v15 = *(v1 + 40);
  v25 = *(&v24 + 1);
  sub_25B0B00E0(&v25, &aBlock, &qword_27FA32500, &qword_25B0E9DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32438, &qword_25B0E9D28);
  sub_25B0E3450();
  if (v4 == aBlock)
  {
    goto LABEL_4;
  }

  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v23 = v6;
  *&v15 = v6;
  *(&v15 + 1) = v5;
  LOBYTE(v16) = v7;
  sub_25B0BB638(&v23, &aBlock);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32528, &qword_25B0EA010);
  MEMORY[0x25F860020](&aBlock);
  if (aBlock)
  {
    sub_25B0BB694(&v23);

LABEL_4:
    sub_25B058448(&v24, &qword_27FA32438, &qword_25B0E9D28);
    return;
  }

  aBlock = v4;
  sub_25B0E3460();
  sub_25B058448(&v24, &qword_27FA32438, &qword_25B0E9D28);
  *&v15 = v6;
  *(&v15 + 1) = v5;
  LOBYTE(v16) = v7;
  LOBYTE(aBlock) = 1;
  sub_25B0E34D0();
  sub_25B0BB694(&v23);

  v8 = swift_allocObject();
  v9 = *(v1 + 16);
  *(v8 + 16) = *v1;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v1 + 32);
  *(v8 + 64) = *(v1 + 48);
  v21 = sub_25B0BB6E8;
  v22 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_25B0BABA4;
  v20 = &block_descriptor_1;
  v10 = _Block_copy(&aBlock);
  sub_25B0BB708(v2, &v15);

  v11 = swift_allocObject();
  v12 = *(v2 + 16);
  *(v11 + 16) = *v2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v2 + 32);
  *(v11 + 64) = *(v2 + 48);
  *(v11 + 72) = a1;
  v21 = sub_25B0BB740;
  v22 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_25B0BABA4;
  v20 = &block_descriptor_29;
  v13 = _Block_copy(&aBlock);
  sub_25B0BB708(v2, &v15);
  v14 = a1;

  [v14 shareFaceWithPreparingCompletion:v10 shareCompletion:{v13, v15, v16}];
  _Block_release(v13);
  _Block_release(v10);
}

uint64_t sub_25B0BAEF8(uint64_t a1, uint64_t a2)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32528, &qword_25B0EA010);
  sub_25B0E34D0();
}

uint64_t sub_25B0BAFC8(uint64_t a1, void *a2)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a2 _isShareButtonEnabled];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32528, &qword_25B0EA010);
  sub_25B0E34D0();
}

uint64_t sub_25B0BB144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25B0BB758(a1, a2, a3);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_25B0BB1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25B0BB758(a1, a2, a3);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_25B0BB20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25B0BB758(a1, a2, a3);
  sub_25B0E3050();
  __break(1u);
}

uint64_t sub_25B0BB24C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25B0BB294(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25B0BB2E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25B0BB32C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25B0BB398()
{
  result = qword_27FA32508;
  if (!qword_27FA32508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32470, &qword_25B0E9D70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32448, "xl");
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32450, &qword_25B0E9D60);
    sub_25B058150(&qword_27FA32458, &qword_27FA32448, "xl", MEMORY[0x277CE1148]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32460, &qword_25B0E9D68);
    sub_25B058150(&qword_27FA32468, &qword_27FA32460, &qword_25B0E9D68, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32508);
  }

  return result;
}

unint64_t sub_25B0BB534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA32510;
  if (!qword_27FA32510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32510);
  }

  return result;
}

unint64_t sub_25B0BB58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA32518;
  if (!qword_27FA32518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32518);
  }

  return result;
}

unint64_t sub_25B0BB5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA32520;
  if (!qword_27FA32520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32520);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25B0BB758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA32530;
  if (!qword_27FA32530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32530);
  }

  return result;
}

uint64_t FaceView.init(face:location:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32538, &qword_25B0EA020);
  sub_25B0E3440();
  *a3 = v16;
  v4 = type metadata accessor for FaceView(0);
  v5 = v4[7];
  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = sub_25B0E3730();
  [v6 initWithSuiteName_];

  *&a3[v5] = sub_25B0E29E0();
  v8 = v4[8];
  v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v10 = sub_25B0E3730();
  [v9 initWithSuiteName_];

  *&a3[v8] = sub_25B0E29E0();
  v11 = v4[5];
  v12 = sub_25B0E2750();
  (*(*(v12 - 8) + 32))(&a3[v11], a1, v12);
  return sub_25B0C2004(a2, &a3[v4[6]], type metadata accessor for FacePlacement.Location);
}

uint64_t type metadata accessor for FaceView(uint64_t a1)
{
  result = qword_27FA325D0;
  if (!qword_27FA325D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B0BB9D0(uint64_t a1)
{
  v1 = sub_25B0E2580();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v2 + 104))(v4, *MEMORY[0x277D2BDE8], v1);
  v5 = sub_25B0E2570();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    return 1;
  }

  sub_25B0E29F0();
  return v7[15];
}

uint64_t sub_25B0BBAF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(a1 - 8);
  v45 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = sub_25B0E3590();
  a2[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326C0, &qword_25B0EA178);
  v10 = *(a1 + 24);
  v11 = (a2 + *(v9 + 44));
  v12 = *(a1 + 16);
  v42 = v12;
  sub_25B0BBED0(v2, v12, v10, v11);
  v13 = sub_25B0E35C0();
  v14 = v2;
  v47 = *(v2 + *(a1 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326C8, &qword_25B0EA180);
  sub_25B0E3450();
  v15 = v46;
  v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326D0, &qword_25B0EA188) + 36));
  v40 = a2;
  *v16 = v13;
  v16[1] = v15;
  v17 = sub_25B0E35C0();
  v18 = v14 + *(a1 + 60);
  v44 = v14;
  v19 = *v18;
  v20 = *(v18 + 8);
  LOBYTE(v47) = v19;
  *(&v47 + 1) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326D8, &qword_25B0EA190);
  sub_25B0E3450();
  LOBYTE(v15) = v46;
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326E0, &qword_25B0EA198) + 36);
  *v21 = v17;
  v21[8] = v15;
  v43 = *(v5 + 16);
  v22 = v7;
  v38[0] = v7;
  v43(v7, v14, a1);
  v23 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v12;
  *(v24 + 24) = v10;
  v25 = v10;
  v39 = v10;
  v41 = *(v5 + 32);
  v41(v24 + v23, v22, a1);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326E8, &qword_25B0EA1B0);
  v27 = v40;
  v28 = (v40 + *(v26 + 36));
  v38[1] = sub_25B0E2BA0();
  sub_25B0E3920();
  *v28 = &unk_25B0EA1A8;
  v28[1] = v24;
  v29 = v38[0];
  v43(v38[0], v44, a1);
  v30 = swift_allocObject();
  *(v30 + 16) = v42;
  *(v30 + 24) = v25;
  v31 = v29;
  v32 = v41;
  v41(v30 + v23, v29, a1);
  v33 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326F0, &qword_25B0EA1C8) + 36));
  sub_25B0E3920();
  *v33 = &unk_25B0EA1C0;
  v33[1] = v30;
  v43(v31, v44, a1);
  v34 = swift_allocObject();
  v35 = v39;
  *(v34 + 16) = v42;
  *(v34 + 24) = v35;
  v32(v34 + v23, v31, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326F8, &qword_25B0EA1D0);
  v37 = (v27 + *(result + 36));
  *v37 = 0;
  v37[1] = 0;
  v37[2] = sub_25B0C12E0;
  v37[3] = v34;
  return result;
}

uint64_t sub_25B0BBED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v154 = a4;
  v155 = a1;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32730, &qword_25B0EA210);
  MEMORY[0x28223BE20](v149);
  v7 = &v132 - v6;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32738, &qword_25B0EA218);
  MEMORY[0x28223BE20](v147);
  v146 = (&v132 - v8);
  v143 = sub_25B0E2E80();
  v140 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v137 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25B0E2CD0();
  v11 = *(v10 - 8);
  v138 = v10;
  v139 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32740, &qword_25B0EA220);
  v144 = *(v14 - 8);
  v145 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v141 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v142 = &v132 - v17;
  v18 = sub_25B0E3410();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32748, &qword_25B0EA228);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v153 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v151 = &v132 - v25;
  v26 = sub_25B0E3900();
  v152 = sub_25B0E38F0();
  v135 = v26;
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v150 = sub_25B0E33A0();
  v27 = a2;
  v136 = a2;
  v28 = a3;
  v30 = type metadata accessor for FaceSnapshotView(0, v27, a3, v29);
  v174[0] = *(v155 + v30[11]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326C8, &qword_25B0EA180);
  sub_25B0E3450();
  v148 = v30;
  if (*&v173[0])
  {
    v133 = *&v173[0];
    sub_25B0E33F0();
    (*(v19 + 104))(v21, *MEMORY[0x277CE0FE0], v18);
    v134 = sub_25B0E3420();

    (*(v19 + 8))(v21, v18);
    sub_25B0E3620();
    sub_25B0E2CE0();
    v31 = v137;
    sub_25B0E2E70();
    v32 = sub_25B0C2404(&qword_27FA32770, MEMORY[0x277CDFAE8], MEMORY[0x277CDFAE0]);
    v33 = sub_25B0C2404(&qword_27FA32778, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
    v34 = v142;
    v35 = v143;
    v36 = v138;
    sub_25B0E2A40();
    (*(v140 + 8))(v31, v35);
    (*(v139 + 8))(v13, v36);
    v38 = v144;
    v37 = v145;
    (*(v144 + 16))(v141, v34, v145);
    *&v174[0] = v36;
    *(&v174[0] + 1) = v35;
    *&v174[1] = v32;
    *(&v174[1] + 1) = v33;
    swift_getOpaqueTypeConformance2();
    v39 = sub_25B0E2B60();
    (*(v38 + 8))(v34, v37);
    v40 = sub_25B0E3590();
    v42 = v41;
    v43 = v155;
    v44 = v133;
    sub_25B0BD2B4(v136, v28, v174);
    v156[0] = v174[0];
    v156[1] = v174[1];
    *&v157 = *&v174[2];
    BYTE8(v157) = BYTE8(v174[2]);
    *&v158 = v40;
    *(&v158 + 1) = v42;
    LOBYTE(v172[0]) = 1;
    v174[3] = v158;
    v174[2] = v157;
    v160 = v174[0];
    v161 = v174[1];
    *&v162 = v157;
    BYTE8(v162) = BYTE8(v157);
    *&v163 = v40;
    *(&v163 + 1) = v42;
    sub_25B0B00E0(v156, v173, &qword_27FA327D8, &qword_25B0EA2A8);
    sub_25B058448(&v160, &qword_27FA327D8, &qword_25B0EA2A8);
    v171[0] = v134;
    LOWORD(v171[1]) = LOBYTE(v172[0]);
    *(&v171[1] + 2) = v173[0];
    WORD3(v171[1]) = WORD2(v173[0]);
    *(&v171[1] + 1) = v39;
    v171[2] = v174[0];
    v171[3] = v174[1];
    v171[4] = v174[2];
    v171[5] = v174[3];
    v174[1] = v171[1];
    v174[0] = v134;
    v174[5] = v174[3];
    v174[4] = v174[2];
    v174[3] = v171[3];
    v174[2] = v171[2];
    sub_25B0C1EE0(v174);
    v172[8] = v174[8];
    v172[9] = v174[9];
    *(&v172[9] + 9) = *(&v174[9] + 9);
    v172[4] = v174[4];
    v172[5] = v174[5];
    v172[6] = v174[6];
    v172[7] = v174[7];
    v172[0] = v174[0];
    v172[1] = v174[1];
    v172[2] = v174[2];
    v172[3] = v174[3];
    v45 = &qword_27FA32798;
    v46 = &qword_25B0EA288;
    sub_25B0B00E0(v171, v173, &qword_27FA32798, &qword_25B0EA288);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32798, &qword_25B0EA288);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA327E8, &qword_25B0EA2B0);
    sub_25B0C1930();
    sub_25B0C1B24();
    v30 = v148;
    sub_25B0E2F30();
    v47 = v173[9];
    v48 = v146;
    v146[8] = v173[8];
    v48[9] = v47;
    *(v48 + 153) = *(&v173[9] + 9);
    v49 = v173[5];
    v48[4] = v173[4];
    v48[5] = v49;
    v50 = v173[7];
    v48[6] = v173[6];
    v48[7] = v50;
    v51 = v173[1];
    *v48 = v173[0];
    v48[1] = v51;
    v52 = v173[3];
    v48[2] = v173[2];
    v48[3] = v52;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32780, &qword_25B0EA280);
    sub_25B0C18A4();
    sub_25B0C1D18();
    v53 = v151;
    sub_25B0E2F30();

    v54 = v171;
LABEL_5:
    sub_25B058448(v54, v45, v46);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32750, &qword_25B0EA230);
    (*(*(v55 - 8) + 56))(v53, 0, 1, v55);
    goto LABEL_14;
  }

  v56 = v7;
  v43 = v155;
  v174[0] = *(v155 + v30[13]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32718, &qword_25B0EA1F8);
  v57 = sub_25B0E3450();
  v58 = *&v173[0];
  if (*&v173[0])
  {
    v59 = MEMORY[0x25F860BB0](v57);
    v53 = v151;
    if (v59)
    {
      v60 = sub_25B0E2EF0();
      LOBYTE(v160) = 1;
      sub_25B0BD448(v174);
      v172[2] = v174[2];
      v172[3] = v174[3];
      v172[4] = v174[4];
      *&v172[5] = *&v174[5];
      v172[0] = v174[0];
      v172[1] = v174[1];
      *&v173[5] = *&v174[5];
      v173[2] = v174[2];
      v173[3] = v174[3];
      v173[4] = v174[4];
      v173[0] = v174[0];
      v173[1] = v174[1];
      sub_25B0B00E0(v172, v171, &qword_27FA32840, &qword_25B0EA2E8);
      sub_25B058448(v173, &qword_27FA32840, &qword_25B0EA2E8);
      *(&v159[2] + 7) = v172[2];
      *(&v159[3] + 7) = v172[3];
      *(&v159[4] + 7) = v172[4];
      *(&v159[5] + 7) = *&v172[5];
      *(v159 + 7) = v172[0];
      *(&v159[1] + 7) = v172[1];
      v61 = v160;
      v62 = sub_25B0E3110();
      sub_25B0E2A00();
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v70 = v69;
      LOBYTE(v174[0]) = 0;
      v71 = sub_25B0E33B0();
      *(&v174[3] + 1) = v159[2];
      *(&v174[4] + 1) = v159[3];
      *(&v174[5] + 1) = v159[4];
      v174[6] = *(&v159[4] + 15);
      *(&v174[1] + 1) = v159[0];
      v174[0] = v60;
      LOBYTE(v174[1]) = v61;
      *(&v174[2] + 1) = v159[1];
      LOBYTE(v174[7]) = v62;
      *(&v174[7] + 1) = v64;
      *&v174[8] = v66;
      *(&v174[8] + 1) = v68;
      *&v174[9] = v70;
      BYTE8(v174[9]) = 0;
      *&v174[10] = v71;
      nullsub_1();
      v168 = v174[8];
      v169 = v174[9];
      v170 = *&v174[10];
      v164 = v174[4];
      v165 = v174[5];
      v166 = v174[6];
      v167 = v174[7];
      v160 = v174[0];
      v161 = v174[1];
      v162 = v174[2];
      v163 = v174[3];
    }

    else
    {
      sub_25B0C1EB4(&v160);
    }

    v173[8] = v168;
    v173[9] = v169;
    *&v173[10] = v170;
    v173[4] = v164;
    v173[5] = v165;
    v173[7] = v167;
    v173[6] = v166;
    v173[0] = v160;
    v173[1] = v161;
    v173[3] = v163;
    v173[2] = v162;
    sub_25B0C1ED4(v173);
    v174[8] = v173[8];
    v174[9] = v173[9];
    *(&v174[9] + 9) = *(&v173[9] + 9);
    v174[4] = v173[4];
    v174[5] = v173[5];
    v174[7] = v173[7];
    v174[6] = v173[6];
    v174[0] = v173[0];
    v174[1] = v173[1];
    v174[3] = v173[3];
    v174[2] = v173[2];
    sub_25B0B00E0(&v160, v172, &qword_27FA327E8, &qword_25B0EA2B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32798, &qword_25B0EA288);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA327E8, &qword_25B0EA2B0);
    sub_25B0C1930();
    sub_25B0C1B24();
    sub_25B0E2F30();
    v88 = v172[9];
    v174[8] = v172[8];
    v174[9] = v172[9];
    *(&v174[9] + 9) = *(&v172[9] + 9);
    v89 = v172[4];
    v90 = v172[5];
    v174[4] = v172[4];
    v174[5] = v172[5];
    v92 = v172[6];
    v91 = v172[7];
    v174[7] = v172[7];
    v174[6] = v172[6];
    v93 = v172[0];
    v94 = v172[1];
    v174[0] = v172[0];
    v174[1] = v172[1];
    v96 = v172[2];
    v95 = v172[3];
    v174[3] = v172[3];
    v174[2] = v172[2];
    v97 = v146;
    v146[8] = v172[8];
    v97[9] = v88;
    *(v97 + 153) = *(&v172[9] + 9);
    v97[4] = v89;
    v97[5] = v90;
    v97[6] = v92;
    v97[7] = v91;
    *v97 = v93;
    v97[1] = v94;
    v97[2] = v96;
    v97[3] = v95;
    swift_storeEnumTagMultiPayload();
    sub_25B0B00E0(v174, v171, &qword_27FA32780, &qword_25B0EA280);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32780, &qword_25B0EA280);
    sub_25B0C18A4();
    sub_25B0C1D18();
    sub_25B0E2F30();

    sub_25B058448(v174, &qword_27FA32780, &qword_25B0EA280);
    sub_25B058448(&v160, &qword_27FA327E8, &qword_25B0EA2B0);
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32750, &qword_25B0EA230);
    (*(*(v98 - 8) + 56))(v53, 0, 1, v98);
    v43 = v155;
    v30 = v148;
  }

  else
  {
    v72 = v43 + v30[15];
    v73 = *v72;
    v74 = *(v72 + 8);
    LOBYTE(v174[0]) = v73;
    *(&v174[0] + 1) = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326D8, &qword_25B0EA190);
    sub_25B0E3450();
    v53 = v151;
    if (v173[0])
    {
      v75 = v56;
      v134 = v56;
      sub_25B0E2AD0();
      v76 = sub_25B0E33B0();
      KeyPath = swift_getKeyPath();
      v78 = &v75[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32768, &qword_25B0EA278) + 36)];
      *v78 = KeyPath;
      v78[1] = v76;
      sub_25B0E3620();
      sub_25B0E2CE0();
      v79 = v137;
      sub_25B0E2E70();
      v136 = sub_25B0C2404(&qword_27FA32770, MEMORY[0x277CDFAE8], MEMORY[0x277CDFAE0]);
      v80 = sub_25B0C2404(&qword_27FA32778, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
      v81 = v142;
      v82 = v143;
      v83 = v138;
      sub_25B0E2A40();
      (*(v140 + 8))(v79, v82);
      (*(v139 + 8))(v13, v83);
      v85 = v144;
      v84 = v145;
      (*(v144 + 16))(v141, v81, v145);
      *&v174[0] = v83;
      *(&v174[0] + 1) = v82;
      *&v174[1] = v136;
      *(&v174[1] + 1) = v80;
      swift_getOpaqueTypeConformance2();
      v86 = sub_25B0E2B60();
      (*(v85 + 8))(v81, v84);
      v87 = v134;
      *(v134 + *(v149 + 36)) = v86;
      v45 = &qword_27FA32730;
      v46 = &qword_25B0EA210;
      sub_25B0B00E0(v87, v146, &qword_27FA32730, &qword_25B0EA210);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32780, &qword_25B0EA280);
      sub_25B0C18A4();
      sub_25B0C1D18();
      v30 = v148;
      sub_25B0E2F30();
      v54 = v87;
      goto LABEL_5;
    }

    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32750, &qword_25B0EA230);
    (*(*(v131 - 8) + 56))(v53, 1, 1, v131);
  }

LABEL_14:
  if (*(v43 + v30[10]) == 1 && (v99 = v43 + v30[12], v100 = *(v99 + 16), v174[0] = *v99, *&v174[1] = v100, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32710, &qword_25B0EA1F0), sub_25B0E3450(), *(&v173[0] + 1)))
  {
    v101 = sub_25B0E3400();
    v102 = sub_25B0E3110();
    sub_25B0E2A00();
    v104 = v103;
    v106 = v105;
    v108 = v107;
    v110 = v109;
    LOBYTE(v171[0]) = 0;
    LOBYTE(v160) = 0;
    v111 = sub_25B0E3590();
    v113 = v112;
    sub_25B0E38F0();
    sub_25B0E3850();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v114 = sub_25B0E3390();

    v115 = sub_25B0E3110();
    sub_25B0E2A00();
    v117 = v116;
    v119 = v118;
    v121 = v120;
    v123 = v122;
    LOBYTE(v172[0]) = 0;
    v124 = sub_25B0E33B0();
    v125 = swift_getKeyPath();
    sub_25B0E3570();
    sub_25B0E2D30();
    *&v173[0] = v101;
    *(&v173[0] + 1) = 0x3FF0000000000000;
    LOWORD(v173[1]) = 256;
    BYTE8(v173[1]) = v102;
    *&v173[2] = v104;
    *(&v173[2] + 1) = v106;
    *&v173[3] = v108;
    *(&v173[3] + 1) = v110;
    LOBYTE(v173[4]) = 0;
    *(&v173[4] + 1) = v114;
    LOWORD(v173[5]) = 256;
    *(&v173[5] + 1) = v111;
    *&v173[6] = v113;
    BYTE8(v173[6]) = v115;
    *&v173[7] = v117;
    *(&v173[7] + 1) = v119;
    *&v173[8] = v121;
    *(&v173[8] + 1) = v123;
    LOBYTE(v173[9]) = 0;
    *(&v173[9] + 1) = v125;
    *&v173[10] = v124;
    BYTE8(v173[17]) = 0;
    nullsub_1();
    memcpy(v174, v173, 0x119uLL);
  }

  else
  {
    sub_25B0C1870(v174);
  }

  v126 = v153;
  sub_25B0B00E0(v53, v153, &qword_27FA32748, &qword_25B0EA228);
  memcpy(v171, v174, 0x119uLL);
  v127 = v154;
  *v154 = v150;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32758, &qword_25B0EA238);
  sub_25B0B00E0(v126, v127 + *(v128 + 48), &qword_27FA32748, &qword_25B0EA228);
  v129 = *(v128 + 64);
  memcpy(v172, v171, 0x119uLL);
  memcpy(v127 + v129, v171, 0x119uLL);

  sub_25B0B00E0(v172, v173, &qword_27FA32760, &qword_25B0EA240);
  sub_25B058448(v53, &qword_27FA32748, &qword_25B0EA228);
  memcpy(v173, v171, 0x119uLL);
  sub_25B058448(v173, &qword_27FA32760, &qword_25B0EA240);
  sub_25B058448(v126, &qword_27FA32748, &qword_25B0EA228);
}

uint64_t sub_25B0BD2B4@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = type metadata accessor for FaceSnapshotView(0, a2, a3, v7);
  if (sub_25B0BB9D0(v8))
  {
    CLKUIComputeImageAPL();
    v10 = v9 * 100.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322E8, &qword_25B0EA2F0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_25B0E7720;
    *(v11 + 56) = MEMORY[0x277D85048];
    *(v11 + 64) = sub_25B0B77B0(v11, v12, v13);
    *(v11 + 32) = v10;
    v14 = sub_25B0E3750();
    v16 = v15;
    v17 = sub_25B0E33A0();
    v18 = sub_25B0E3110();

    v20 = MEMORY[0x277D84F90];
  }

  else
  {

    v14 = 0;
    v16 = 0;
    v20 = 0;
    v17 = 0;
    v18 = 0;
  }

  *a4 = v14;
  *(a4 + 8) = v16;
  *(a4 + 16) = 0;
  *(a4 + 24) = v20;
  *(a4 + 32) = v17;
  *(a4 + 40) = v18;
  return result;
}

uint64_t sub_25B0BD448@<X0>(uint64_t a3@<X8>)
{
  sub_25B0E3900();
  v22[1] = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22[0] = sub_25B0E3400();
  sub_25B0E31A0();
  v4 = sub_25B0E3190();

  KeyPath = swift_getKeyPath();
  v6 = sub_25B0E3380();
  ErrorValue = swift_getErrorValue();
  MEMORY[0x28223BE20](ErrorValue);
  (*(v9 + 16))(v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_25B0E3760();
  v24 = v10;
  sub_25B04C9BC(v23, v10, v11);
  v12 = sub_25B0E3210();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = swift_getKeyPath();
  v20 = sub_25B0E33B0();
  v16 &= 1u;
  LOBYTE(v23) = v16;
  *a3 = v22[0];
  *(a3 + 8) = KeyPath;
  *(a3 + 16) = v4;
  *(a3 + 24) = v6;
  *(a3 + 32) = v12;
  *(a3 + 40) = v14;
  *(a3 + 48) = v16;
  *(a3 + 56) = v18;
  *(a3 + 64) = v19;
  *(a3 + 72) = 0x3FC999999999999ALL;
  *(a3 + 80) = v20;

  sub_25B0B76F4(v12, v14, v16);

  sub_25B0B0ABC(v12, v14, v16);
}

uint64_t sub_25B0BD6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  v3[5] = v6;
  v3[6] = *(v6 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B8, &unk_25B0E72A0);
  v3[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v3[9] = v7;
  v3[10] = *(v7 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = sub_25B0E3900();
  v3[13] = sub_25B0E38F0();
  v8 = swift_task_alloc();
  v3[14] = v8;
  v10 = type metadata accessor for FaceSnapshotView(0, a2, a3, v9);
  v3[15] = v10;
  *v8 = v3;
  v8[1] = sub_25B0BD8DC;

  return sub_25B0BE044(v10);
}

uint64_t sub_25B0BD8DC()
{
  v1 = *v0;

  v3 = sub_25B0E3850();
  *(v1 + 128) = v3;
  *(v1 + 136) = v2;

  return MEMORY[0x2822009F8](sub_25B0BDA20, v3, v2);
}

uint64_t sub_25B0BDA20()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  (*(v0[4] + 32))(v0[3]);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[8];

    sub_25B058448(v4, &qword_27FA313B8, &unk_25B0E72A0);

    v5 = v0[1];

    return v5();
  }

  else
  {
    (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
    sub_25B0E39A0();
    v7 = sub_25B0E38F0();
    v0[18] = v7;
    v8 = swift_task_alloc();
    v0[19] = v8;
    *v8 = v0;
    v8[1] = sub_25B0BDBD4;
    v9 = v0[5];
    v10 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 21, v7, v10, v9);
  }
}

uint64_t sub_25B0BDBD4()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_25B0BDD18, v3, v2);
}

uint64_t sub_25B0BDD18()
{
  if (*(v0 + 168) == 1)
  {
    v2 = *(v0 + 80);
    v1 = *(v0 + 88);
    v3 = *(v0 + 72);
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 40);

    (*(v5 + 8))(v4, v6);
    (*(v2 + 8))(v1, v3);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 160) = v9;
    *v9 = v0;
    v9[1] = sub_25B0BDE68;
    v10 = *(v0 + 120);

    return sub_25B0BE044(v10);
  }
}

uint64_t sub_25B0BDE68()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_25B0BDF88, v3, v2);
}

uint64_t sub_25B0BDF88(uint64_t a1)
{
  v2 = sub_25B0E38F0();
  v1[18] = v2;
  v3 = swift_task_alloc();
  v1[19] = v3;
  *v3 = v1;
  v3[1] = sub_25B0BDBD4;
  v4 = v1[5];
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v1 + 21, v2, v5, v4);
}

uint64_t sub_25B0BE044(uint64_t a1)
{
  v2[48] = a1;
  v2[49] = v1;
  v3 = *(a1 + 24);
  v2[50] = v3;
  v4 = *(a1 + 16);
  v2[51] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[52] = AssociatedTypeWitness;
  v6 = sub_25B0E3B10();
  v2[53] = v6;
  v2[54] = *(v6 - 8);
  v7 = swift_task_alloc();
  v2[55] = v7;
  v2[56] = *(AssociatedTypeWitness - 8);
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = sub_25B0E3900();
  v2[60] = sub_25B0E38F0();
  v10 = (*(v3 + 24) + **(v3 + 24));
  v8 = swift_task_alloc();
  v2[61] = v8;
  *v8 = v2;
  v8[1] = sub_25B0BE280;

  return v10(v7, v4, v3);
}

uint64_t sub_25B0BE280()
{
  *(*v1 + 496) = v0;

  v3 = sub_25B0E3850();
  if (v0)
  {
    v4 = sub_25B0BE820;
  }

  else
  {
    v4 = sub_25B0BE3D8;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_25B0BE3D8()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = *(v0 + 416);

  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(*(v0 + 432) + 8))(*(v0 + 440), *(v0 + 424));
  }

  else
  {
    v4 = *(v0 + 496);
    v5 = *(v0 + 416);
    (*(*(v0 + 448) + 32))(*(v0 + 464), *(v0 + 440), v5);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = (*(AssociatedConformanceWitness + 32))(v5, AssociatedConformanceWitness);
    v8 = *(v0 + 464);
    if (v4)
    {
      (*(*(v0 + 448) + 8))(*(v0 + 464), *(v0 + 416));
      v10 = *(v0 + 384);
      v9 = *(v0 + 392);
      *(v0 + 264) = *(v9 + v10[11]);
      *(v0 + 360) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326C8, &qword_25B0EA180);
      sub_25B0E3460();
      v11 = v9 + v10[12];
      v12 = *(v11 + 16);
      *(v0 + 192) = *v11;
      *(v0 + 208) = v12;
      *(v0 + 280) = 0;
      *(v0 + 288) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32710, &qword_25B0EA1F0);
      sub_25B0E3460();
      *(v0 + 296) = *(v9 + v10[13]);
      *(v0 + 368) = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32718, &qword_25B0EA1F8);
      sub_25B0E3460();
    }

    else
    {
      v14 = *(v0 + 448);
      v13 = *(v0 + 456);
      v15 = *(v0 + 416);
      *(v0 + 312) = *(*(v0 + 392) + *(*(v0 + 384) + 44));
      *(v0 + 376) = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326C8, &qword_25B0EA180);
      sub_25B0E3460();
      (*(v14 + 16))(v13, v8, v15);
      if (swift_dynamicCast())
      {
        v16 = 0x656E6F687069;
        v17 = *(v0 + 128);
        *(v0 + 72) = *(v0 + 112);
        *(v0 + 88) = v17;
        *(v0 + 104) = *(v0 + 144);
        sub_25B049F48(v0 + 72, v0 + 152);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32728, &qword_25B0EA208);
        if (swift_dynamicCast())
        {
          v18 = *(v0 + 16);
          v19 = *(v0 + 64);

          if (!v18)
          {
            v16 = 0x746177656C707061;
          }

          v20 = 0xEA00000000006863;
          if (v18)
          {
            v20 = 0xE600000000000000;
          }
        }

        else
        {
          v20 = 0xE600000000000000;
        }

        v28 = *(v0 + 464);
        v29 = *(v0 + 448);
        v30 = *(v0 + 416);
        v31 = *(v0 + 392) + *(*(v0 + 384) + 48);
        v32 = *(v31 + 16);
        *(v0 + 240) = *v31;
        *(v0 + 256) = v32;
        *(v0 + 344) = v16;
        *(v0 + 352) = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32710, &qword_25B0EA1F0);
        sub_25B0E3460();
        sub_25B0C181C(v0 + 72);
        (*(v29 + 8))(v28, v30);
      }

      else
      {
        v21 = *(v0 + 464);
        v22 = *(v0 + 448);
        v23 = *(v0 + 416);
        v25 = *(v0 + 384);
        v24 = *(v0 + 392);
        *(v0 + 112) = 0u;
        *(v0 + 128) = 0u;
        *(v0 + 144) = 0;
        sub_25B058448(v0 + 112, &qword_27FA32720, &qword_25B0EA200);
        v26 = v24 + *(v25 + 48);
        v27 = *(v26 + 16);
        *(v0 + 216) = *v26;
        *(v0 + 232) = v27;
        *(v0 + 328) = 0;
        *(v0 + 336) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32710, &qword_25B0EA1F0);
        sub_25B0E3460();
        (*(v22 + 8))(v21, v23);
      }
    }
  }

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_25B0BE820()
{

  v1 = *(v0 + 496);
  v3 = *(v0 + 384);
  v2 = *(v0 + 392);
  *(v0 + 264) = *(v2 + v3[11]);
  *(v0 + 360) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326C8, &qword_25B0EA180);
  sub_25B0E3460();
  v4 = v2 + v3[12];
  v5 = *(v4 + 16);
  *(v0 + 192) = *v4;
  *(v0 + 208) = v5;
  *(v0 + 280) = 0;
  *(v0 + 288) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32710, &qword_25B0EA1F0);
  sub_25B0E3460();
  *(v0 + 296) = *(v2 + v3[13]);
  *(v0 + 368) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32718, &qword_25B0EA1F8);
  sub_25B0E3460();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_25B0BE960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = sub_25B0E3C90();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  sub_25B0E3900();
  v3[10] = sub_25B0E38F0();
  v6 = sub_25B0E3850();
  v3[11] = v6;
  v3[12] = v5;

  return MEMORY[0x2822009F8](sub_25B0BEA58, v6, v5);
}

uint64_t sub_25B0BEA58()
{
  sub_25B0E3EB0();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_25B0BEB2C;

  return sub_25B0C1364(2000000000000000000, 0, 250000000000000000, 0, 0);
}

uint64_t sub_25B0BEB2C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 112) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 96);
  v7 = *(v2 + 88);
  if (v0)
  {
    v8 = sub_25B0BED8C;
  }

  else
  {
    v8 = sub_25B0BECC4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_25B0BECC4()
{

  if ((sub_25B0E39F0() & 1) == 0)
  {
    v2 = *(v0 + 32);
    v3 = (v2 + *(type metadata accessor for FaceSnapshotView(0, *(v0 + 40), *(v0 + 48), v1) + 60));
    v4 = *v3;
    v5 = *(v3 + 1);
    *(v0 + 120) = 1;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326D8, &qword_25B0EA190);
    sub_25B0E3460();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_25B0BED8C()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25B0BEE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for FaceSnapshotView(0, a2, a3, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326D8, &qword_25B0EA190);
  sub_25B0E3460();
}

void sub_25B0BEEF8()
{
  type metadata accessor for FaceView(0);
  v0 = sub_25B0E2730();
  v1 = [v0 device];

  if (v1)
  {
    [v1 screenBounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v20.origin.x = v3;
    v20.origin.y = v5;
    v20.size.width = v7;
    v20.size.height = v9;
    CGRectGetWidth(v20);
    v10 = sub_25B0E2730();
    v11 = [v10 device];

    if (v11)
    {
      [v11 screenBounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v21.origin.x = v13;
      v21.origin.y = v15;
      v21.size.width = v17;
      v21.size.height = v19;
      CGRectGetHeight(v21);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void FaceView.body.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v35 = type metadata accessor for FaceView(0);
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25B0E3590();
  v33 = v7;
  v34 = v6;
  sub_25B0BF684(v1, v39);
  v45 = v39[4];
  v46 = v39[5];
  v47 = v39[6];
  v48 = v39[7];
  v41 = v39[0];
  v42 = v39[1];
  v43 = v39[2];
  v44 = v39[3];
  v49[0] = v39[0];
  v49[1] = v39[1];
  v49[2] = v39[2];
  v49[3] = v39[3];
  v49[4] = v39[4];
  v49[5] = v39[5];
  v49[6] = v39[6];
  v49[7] = v39[7];
  sub_25B0B00E0(&v41, v38, &qword_27FA32540, &qword_25B0EA028);
  sub_25B058448(v49, &qword_27FA32540, &qword_25B0EA028);
  v54 = v45;
  v55 = v46;
  v56 = v47;
  v57 = v48;
  v50 = v41;
  v51 = v42;
  v52 = v43;
  v53 = v44;
  sub_25B0BEEF8();
  v9 = v8;
  v40 = 0;
  v10 = sub_25B0E3590();
  v31 = v11;
  v32 = v10;
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0C1F40(v1, v5, type metadata accessor for FaceView);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v30 = swift_allocObject();
  sub_25B0C2004(v5, v30 + v12, type metadata accessor for FaceView);

  v13 = sub_25B0E3590();
  v28 = v14;
  v29 = v13;
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0E29F0();
  if (LOBYTE(v39[0]) == 1)
  {
    sub_25B0C1F40(v1, v5, type metadata accessor for FaceView);
    *(&v27 + 1) = swift_allocObject();
    sub_25B0C2004(v5, *(&v27 + 1) + v12, type metadata accessor for FaceView);

    *&v27 = sub_25B0C06C0;
  }

  else
  {

    v27 = 0uLL;
  }

  sub_25B0C1F40(v1, v5, type metadata accessor for FaceView);
  v15 = swift_allocObject();
  sub_25B0C2004(v5, v15 + v12, type metadata accessor for FaceView);
  sub_25B0C1F40(v2, v5, type metadata accessor for FaceView);
  v16 = swift_allocObject();
  sub_25B0C2004(v5, v16 + v12, type metadata accessor for FaceView);
  *&v39[0] = v34;
  *(&v39[0] + 1) = v33;
  v39[5] = v54;
  v39[6] = v55;
  v39[7] = v56;
  v39[8] = v57;
  v39[1] = v50;
  v39[2] = v51;
  v39[3] = v52;
  v39[4] = v53;
  *&v39[9] = v9;
  WORD4(v39[9]) = 0;
  *&v39[10] = v32;
  *(&v39[10] + 1) = v31;
  *&v39[11] = sub_25B0BFC10;
  *(&v39[11] + 1) = v30;
  v39[12] = v27;
  *&v39[13] = v29;
  *(&v39[13] + 1) = v28;
  *&v39[14] = sub_25B0C01A4;
  *(&v39[14] + 1) = v15;
  memset(&v39[15], 0, 32);
  *&v39[17] = sub_25B0C0280;
  *(&v39[17] + 1) = v16;
  v17 = sub_25B0E2730();
  v18 = [v17 namesOfSelectedOptionsForCustomEditModes];

  if (v18)
  {
    v19 = sub_25B0E37F0();

    v38[0] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31CD8, &qword_25B0EA030);
    sub_25B058150(&qword_27FA32548, &qword_27FA31CD8, &qword_25B0EA030, MEMORY[0x277D83958]);
    v20 = sub_25B0E36E0();
    v22 = v21;

    v36 = v20;
    v37 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32550, &qword_25B0EA038);
    v23 = sub_25B0C206C(&qword_27FA32558, &qword_27FA32550, &qword_25B0EA038, sub_25B0C030C);
    sub_25B04C9BC(v23, v24, v25);
    sub_25B0E32B0();

    memcpy(v38, v39, sizeof(v38));
    sub_25B058448(v38, &qword_27FA32550, &qword_25B0EA038);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25B0BF684@<X0>(__int128 *a1@<X0>, uint64_t a3@<X8>)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = sub_25B0E33A0();
  v39 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32848, &qword_25B0EA358);
  sub_25B0E3450();
  v5 = v31;
  if (v31)
  {

    sub_25B0BEEF8();
    v7 = v6;
    type metadata accessor for FaceView(0);
    sub_25B0E29F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32688, "jn");
    sub_25B0E3440();
    v31 = 0uLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31630, &qword_25B0EA100);
    sub_25B0E3440();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326A0, &qword_25B0EA108);
    sub_25B0E3440();
    v9 = *(&v39 + 1);
    v8 = v39;
    *&v31 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA326B0, qword_25B0EA110);
    sub_25B0E3440();
    v10 = *(&v39 + 1);
    v11 = v39;
    sub_25B0E3440();
    v12 = v39;
    v13 = *(&v39 + 1);
    v14 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v15 = sub_25B0E3730();
    [v14 initWithSuiteName_];

    v16 = sub_25B0E29E0();

    v18 = v40;
    v17 = *(&v39 + 1);
    v19 = *(&v39 + 1);
    v20 = v39;
    v22 = v39;
    v21 = v39;
  }

  else
  {
    v22 = 0;
    v19 = 0;
    v20 = 0;
    v17 = 0;
    v18 = 0;
    v8 = 0;
    v9 = 0;
    v11 = 0;
    v10 = 0;
    v13 = 0;
    v16 = 0;
    v12 = 0;
    v21 = 0;
    v7 = 0;
  }

  *&v31 = v5;
  *(&v31 + 1) = v7;
  *&v32 = v21;
  *(&v32 + 1) = v22;
  *&v33 = v19;
  *(&v33 + 1) = v20;
  *&v34 = v17;
  *(&v34 + 1) = v18;
  *&v35 = v8;
  *(&v35 + 1) = v9;
  *&v36 = v11;
  *(&v36 + 1) = v10;
  *&v37 = v12;
  *(&v37 + 1) = v13;
  v38 = v16;
  *a3 = v29;
  v23 = v31;
  v24 = v35;
  *(a3 + 56) = v34;
  v25 = v32;
  *(a3 + 40) = v33;
  *(a3 + 24) = v25;
  *(a3 + 8) = v23;
  v26 = v36;
  v27 = v37;
  *(a3 + 120) = v16;
  *(a3 + 104) = v27;
  *(a3 + 88) = v26;
  *(a3 + 72) = v24;
  *&v39 = v5;
  *(&v39 + 1) = v7;
  v40 = v21;
  v41 = v22;
  v42 = v19;
  v43 = v20;
  v44 = v17;
  v45 = v18;
  v46 = v8;
  v47 = v9;
  v48 = v11;
  v49 = v10;
  v50 = v12;
  v51 = v13;
  v52 = v16;

  sub_25B0B00E0(&v31, v30, &qword_27FA32850, &qword_25B0EA360);
  sub_25B058448(&v39, &qword_27FA32850, &qword_25B0EA360);
}

void sub_25B0BFA20(uint64_t a1@<X8>)
{
  v2 = sub_25B0E2D20();
  MEMORY[0x28223BE20](v2);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for FaceView(0);
  v5 = sub_25B0E2730();
  v6 = [v5 device];

  if (v6)
  {
    [v6 screenBounds];
    v8 = v7;
    [v6 screenCornerRadius];
    v10 = v9;
    sub_25B0E2B70();
    v12 = v11;

    v13 = v10 * (v12 / v8);
    v14 = *(v2 + 20);
    v15 = *MEMORY[0x277CE0118];
    v16 = sub_25B0E2EC0();
    (*(*(v16 - 8) + 104))(v4 + v14, v15, v16);
    *v4 = v13;
    v4[1] = v13;
    sub_25B0C2004(v4, a1, MEMORY[0x277CDFC08]);
  }

  else
  {
    __break(1u);
  }
}

void sub_25B0BFC10(uint64_t a1@<X8>)
{
  type metadata accessor for FaceView(0);

  sub_25B0BFA20(a1);
}

void sub_25B0BFC90(uint64_t a2@<X8>)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0E2B70();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA322E8, &qword_25B0EA2F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25B0E7720;
  v6 = MEMORY[0x277D85048];
  *(v5 + 56) = MEMORY[0x277D85048];
  v9 = sub_25B0B77B0(v5, v7, v8);
  *(v5 + 64) = v9;
  *(v5 + 32) = v4;
  v25 = sub_25B0E3750();
  v26 = v10;
  MEMORY[0x25F8602F0](8236, 0xE200000000000000);
  sub_25B0E2B70();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25B0E7720;
  *(v13 + 56) = v6;
  *(v13 + 64) = v9;
  *(v13 + 32) = v12;
  v14 = sub_25B0E3750();
  MEMORY[0x25F8602F0](v14);

  MEMORY[0x25F8602F0](8236, 0xE200000000000000);
  type metadata accessor for FaceView(0);
  v15 = sub_25B0E2730();
  v16 = [v15 device];

  if (v16)
  {
    [v16 screenBounds];
    v18 = v17;
    [v16 screenCornerRadius];
    v20 = v19;
    sub_25B0E2B70();
    v22 = v21;

    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_25B0E7720;
    *(v23 + 56) = v6;
    *(v23 + 64) = v9;
    *(v23 + 32) = v20 * (v22 / v18);
    v24 = sub_25B0E3750();
    MEMORY[0x25F8602F0](v24);

    *a2 = v25;
    *(a2 + 8) = v26;
    *(a2 + 16) = 0;
    *(a2 + 24) = MEMORY[0x277D84F90];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25B0BFF1C(char *a1)
{
  v2 = type metadata accessor for FacePlacement.Location(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25B0E2750();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *a1;
  v10 = *(a1 + 1);
  *&v14[0] = *a1;
  *(&v14[0] + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32848, &qword_25B0EA358);
  sub_25B0E3450();
  if (v15)
  {
  }

  else
  {
    v11 = type metadata accessor for FaceView(0);
    (*(v6 + 16))(v8, &a1[*(v11 + 20)], v5);
    sub_25B0C1F40(&a1[*(v11 + 24)], v4, type metadata accessor for FacePlacement.Location);
    type metadata accessor for FaceSnapshotProvider(0);
    v12 = swift_allocObject();
    sub_25B048944(v4, v14);
    sub_25B0C1FA8(v4);
    (*(v6 + 32))(v12 + OBJC_IVAR____TtC15NanoFaceGallery20FaceSnapshotProvider_face, v8, v5);
    sub_25B04A114(v14, v12 + OBJC_IVAR____TtC15NanoFaceGallery20FaceSnapshotProvider_underlyingProvider);
    *&v14[0] = v9;
    *(&v14[0] + 1) = v10;
    v15 = v12;
    sub_25B0E3460();
  }
}

uint64_t sub_25B0C01BC(__int128 *a1, uint64_t a2)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32848, &qword_25B0EA358);
  sub_25B0E3460();
}

uint64_t sub_25B0C0298(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FaceView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_25B0C033C()
{
  result = qword_27FA32570;
  if (!qword_27FA32570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32578, &qword_25B0EA048);
    sub_25B0C03F4();
    sub_25B058150(&qword_27FA325C0, &qword_27FA325C8, &qword_25B0EA070, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32570);
  }

  return result;
}

unint64_t sub_25B0C03F4()
{
  result = qword_27FA32580;
  if (!qword_27FA32580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32588, &qword_25B0EA050);
    sub_25B0C04AC();
    sub_25B058150(&qword_27FA325B0, &qword_27FA325B8, &qword_25B0EA068, MEMORY[0x277CE03E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32580);
  }

  return result;
}

unint64_t sub_25B0C04AC()
{
  result = qword_27FA32590;
  if (!qword_27FA32590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32598, &qword_25B0EA058);
    sub_25B058150(&qword_27FA325A0, &qword_27FA325A8, &qword_25B0EA060, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32590);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for FaceView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_25B0E2750();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[8];
  v8 = v7 + *(type metadata accessor for FacePlacement.Location(0) + 20);
  v9 = sub_25B0E2540();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_25B0C06C0(uint64_t a1@<X8>)
{
  type metadata accessor for FaceView(0);

  sub_25B0BFC90(a1);
}

void sub_25B0C0788(uint64_t a1)
{
  sub_25B0C0EC4(319, &qword_27FA325E0, &qword_27FA32538, &qword_25B0EA020);
  if (v1 <= 0x3F)
  {
    sub_25B0E2750();
    if (v2 <= 0x3F)
    {
      type metadata accessor for FacePlacement.Location(319);
      if (v3 <= 0x3F)
      {
        sub_25B0C0F18(319, &qword_27FA325E8, MEMORY[0x277CDD630]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_25B0C0870()
{
  result = qword_27FA325F0;
  if (!qword_27FA325F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FA325F8, &qword_25B0EA0D8);
    sub_25B0C206C(&qword_27FA32558, &qword_27FA32550, &qword_25B0EA038, sub_25B0C030C);
    sub_25B0C2404(&qword_27FA31EF0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA325F0);
  }

  return result;
}

void sub_25B0C0960(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_25B0C0EC4(319, &qword_27FA32680, &qword_27FA32688, "jn");
    if (v2 <= 0x3F)
    {
      sub_25B0C0EC4(319, &qword_27FA32690, &qword_27FA31630, &qword_25B0EA100);
      if (v3 <= 0x3F)
      {
        sub_25B0C0EC4(319, &qword_27FA32698, &qword_27FA326A0, &qword_25B0EA108);
        if (v4 <= 0x3F)
        {
          sub_25B0C0EC4(319, &qword_27FA326A8, &qword_27FA326B0, qword_25B0EA110);
          if (v5 <= 0x3F)
          {
            sub_25B0C0F18(319, &qword_27FA326B8, MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_25B0C0F18(319, &qword_27FA325E8, MEMORY[0x277CDD630]);
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

uint64_t sub_25B0C0B10(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((((((((((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_25B0C0C9C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((((((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((((((v8 + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((((((((((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((((((((v8 + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((((((v8 + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_25B0C0EC4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_25B0E3480();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_25B0C0F18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25B0C0FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for FaceSnapshotView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_25B0498DC;

  return sub_25B0BD6F8(v4 + v9, v6, v7);
}

uint64_t sub_25B0C1098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for FaceSnapshotView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_25B05859C;

  return sub_25B0BE960(v4 + v9, v6, v7);
}

uint64_t objectdestroy_19Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for FaceSnapshotView(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*v6 + 64);
  (*(*(v5 - 8) + 8))(v4 + v8, v5);

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_25B0C12E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for FaceSnapshotView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_25B0BEE00(v8, v5, v6);
}

uint64_t sub_25B0C1364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_25B0E3C80();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_25B0C1464, 0, 0);
}

uint64_t sub_25B0C1464()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_25B0E3C90();
  v5 = sub_25B0C2404(&qword_27FA32700, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_25B0E3E90();
  sub_25B0C2404(&qword_27FA32708, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_25B0E3CA0();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_25B0C15F4;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_25B0C15F4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25B0C17B0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_25B0C17B0()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_25B0C1870(_OWORD *a1)
{
  result = 0.0;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  *(a1 + 265) = 0u;
  return result;
}

unint64_t sub_25B0C18A4()
{
  result = qword_27FA32788;
  if (!qword_27FA32788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32780, &qword_25B0EA280);
    sub_25B0C1930();
    sub_25B0C1B24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32788);
  }

  return result;
}

unint64_t sub_25B0C1930()
{
  result = qword_27FA32790;
  if (!qword_27FA32790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32798, &qword_25B0EA288);
    sub_25B0C19E8();
    sub_25B058150(&qword_27FA327D0, &qword_27FA327D8, &qword_25B0EA2A8, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32790);
  }

  return result;
}

unint64_t sub_25B0C19E8()
{
  result = qword_27FA327A0;
  if (!qword_27FA327A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA327A8, &qword_25B0EA290);
    sub_25B0C1AA0();
    sub_25B058150(&qword_27FA327C0, &qword_27FA327C8, &qword_25B0EA2A0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA327A0);
  }

  return result;
}

unint64_t sub_25B0C1AA0()
{
  result = qword_27FA327B0;
  if (!qword_27FA327B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA327B8, &qword_25B0EA298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA327B0);
  }

  return result;
}

unint64_t sub_25B0C1B24()
{
  result = qword_27FA327E0;
  if (!qword_27FA327E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA327E8, &qword_25B0EA2B0);
    sub_25B0C1BA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA327E0);
  }

  return result;
}

unint64_t sub_25B0C1BA8()
{
  result = qword_27FA327F0;
  if (!qword_27FA327F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA327F8, &qword_25B0EA2B8);
    sub_25B0C1C60();
    sub_25B058150(&qword_27FA31EB8, &qword_27FA31EC0, &unk_25B0EA2D0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA327F0);
  }

  return result;
}

unint64_t sub_25B0C1C60()
{
  result = qword_27FA32800;
  if (!qword_27FA32800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32808, &qword_25B0EA2C0);
    sub_25B058150(&qword_27FA32810, &qword_27FA32818, &qword_25B0EA2C8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32800);
  }

  return result;
}

unint64_t sub_25B0C1D18()
{
  result = qword_27FA32820;
  if (!qword_27FA32820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32730, &qword_25B0EA210);
    sub_25B0C1DD0();
    sub_25B058150(&qword_27FA327C0, &qword_27FA327C8, &qword_25B0EA2A0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32820);
  }

  return result;
}

unint64_t sub_25B0C1DD0()
{
  result = qword_27FA32828;
  if (!qword_27FA32828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32768, &qword_25B0EA278);
    sub_25B058150(&qword_27FA324E8, &qword_27FA324F0, &qword_25B0E9DB0, MEMORY[0x277CDD7F8]);
    sub_25B058150(&qword_27FA32830, &qword_27FA32838, &qword_25B0EA2E0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32828);
  }

  return result;
}

double sub_25B0C1EB4(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_25B0C1EE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25B0E2DF0();
  *a1 = result;
  return result;
}

uint64_t sub_25B0C1F40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25B0C1FA8(uint64_t a1)
{
  v2 = type metadata accessor for FacePlacement.Location(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B0C2004(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25B0C206C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_25B0C20F0()
{
  result = qword_27FA32860;
  if (!qword_27FA32860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA326F0, &qword_25B0EA1C8);
    sub_25B0C21AC();
    sub_25B0C2404(&qword_27FA30DB8, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32860);
  }

  return result;
}

unint64_t sub_25B0C21AC()
{
  result = qword_27FA32868;
  if (!qword_27FA32868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA326E8, &qword_25B0EA1B0);
    sub_25B0C2268();
    sub_25B0C2404(&qword_27FA30DB8, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32868);
  }

  return result;
}

unint64_t sub_25B0C2268()
{
  result = qword_27FA32870;
  if (!qword_27FA32870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA326E0, &qword_25B0EA198);
    sub_25B0C2320();
    sub_25B058150(&qword_27FA328A0, &qword_27FA328A8, &qword_25B0EA378, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32870);
  }

  return result;
}

unint64_t sub_25B0C2320()
{
  result = qword_27FA32878;
  if (!qword_27FA32878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA326D0, &qword_25B0EA188);
    sub_25B058150(&qword_27FA32880, &qword_27FA32888, &qword_25B0EA368, MEMORY[0x277CE11A8]);
    sub_25B058150(&qword_27FA32890, &qword_27FA32898, &qword_25B0EA370, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32878);
  }

  return result;
}

uint64_t sub_25B0C2404(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25B0C2478@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25B0E2FA0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B0E2FB0();
  if (sub_25B0E2FC0())
  {
    v6 = 0.3;
  }

  else
  {
    v6 = 0.0;
  }

  (*(v3 + 32))(a1, v5, v2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA328B0, &qword_25B0EA3D0);
  *(a1 + *(result + 36)) = v6;
  return result;
}

unint64_t sub_25B0C258C()
{
  result = qword_27FA328B8;
  if (!qword_27FA328B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA328B0, &qword_25B0EA3D0);
    sub_25B0C2618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA328B8);
  }

  return result;
}

unint64_t sub_25B0C2618()
{
  result = qword_27FA328C0;
  if (!qword_27FA328C0)
  {
    sub_25B0E2FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA328C0);
  }

  return result;
}

uint64_t type metadata accessor for SingleFaceRow(uint64_t a1)
{
  result = qword_27FA328C8;
  if (!qword_27FA328C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25B0C26E4(uint64_t a1)
{
  sub_25B0E2750();
  if (v1 <= 0x3F)
  {
    sub_25B0B7BB0(319, &qword_27FA328D8, MEMORY[0x277D85048]);
    if (v2 <= 0x3F)
    {
      sub_25B0B7BB0(319, &qword_27FA32360, &type metadata for FaceBorderMetrics);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_25B0C27F8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA328E8, &qword_25B0EA440);
  MEMORY[0x28223BE20](v94);
  v97 = &v94 - v3;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA328F0, &qword_25B0EA448);
  v106 = *(v108 - 8);
  v4 = MEMORY[0x28223BE20](v108);
  v96 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v95 = &v94 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA328F8, &qword_25B0EA450);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v109 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v107 = &v94 - v10;
  v11 = type metadata accessor for FacePlacement.Location(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25B0E2750();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FaceButton(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32900, &qword_25B0EA458);
  v21 = MEMORY[0x28223BE20](v102);
  v105 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v101 = &v94 - v24;
  MEMORY[0x28223BE20](v23);
  v103 = &v94 - v25;
  sub_25B0E3900();
  v104 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = type metadata accessor for SingleFaceRow(0);
  (*(v15 + 16))(v17, &a1[v26[6]], v14);
  v27 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31890, &qword_25B0E7768);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_25B0E7720;
  *(v28 + 32) = *(a1 + 9);
  MEMORY[0x25F85F060]();
  *v13 = v27;
  v29 = v26[9];
  v30 = &a1[v26[8]];
  v31 = *v30;
  LODWORD(v30) = v30[8];
  v32 = (v30 << 31) >> 31;
  if (v30)
  {
    v33 = 0;
  }

  else
  {
    v33 = v31;
  }

  v34 = &a1[v29];
  v98 = *&a1[v29];
  v35 = v14;
  v36 = *&a1[v29 + 8];
  v37 = v17;
  v38 = a1[v26[10]];
  v100 = *&a1[v26[11]];
  v39 = v15;
  v40 = v34[16];
  v99 = a1[v26[12]];
  (*(v39 + 32))(v20, v37, v35);
  sub_25B0C3298(v13, &v20[v18[5]], type metadata accessor for FacePlacement.Location);
  v41 = &v20[v18[6]];
  *v41 = v33;
  *(v41 + 1) = 0;
  v41[16] = v32;
  v42 = &v20[v18[7]];
  *v42 = v98;
  *(v42 + 1) = v36;
  v42[16] = v40;
  v20[v18[8]] = v38;
  v20[v18[9]] = 0;
  v43 = &v20[v18[10]];
  *v43 = 0;
  *(v43 + 1) = 0;
  *&v20[v18[11]] = v100;
  v20[v18[12]] = v99;
  v20[v18[13]] = 0;
  sub_25B0E3590();
  sub_25B0E2B50();
  v44 = v20;
  v45 = v101;
  sub_25B0C3298(v44, v101, type metadata accessor for FaceButton);
  v46 = (v45 + *(v102 + 36));
  v47 = v116;
  *v46 = v115;
  v46[1] = v47;
  v46[2] = v117;
  v48 = v103;
  v49 = sub_25B0745E4(v45, v103, &qword_27FA32900, &qword_25B0EA458);
  if (a1[v26[13]] == 1 && (v52 = *(a1 + 4)) != 0)
  {
    *&v111 = *(a1 + 3);
    *(&v111 + 1) = v52;
    sub_25B04C9BC(v49, v50, v51);

    v53 = sub_25B0E3210();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    sub_25B0E3590();
    sub_25B0E2B50();
    v60 = v57 & 1;
    LOBYTE(v114[0]) = v57 & 1;
    KeyPath = swift_getKeyPath();
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32910, &qword_25B0EA498);
    v63 = v97;
    v64 = &v97[*(v62 + 36)];
    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32918, &qword_25B0EA4A0) + 28);
    v66 = *MEMORY[0x277CE0B28];
    v67 = sub_25B0E31D0();
    (*(*(v67 - 8) + 104))(v64 + v65, v66, v67);
    *v64 = swift_getKeyPath();
    *v63 = v53;
    *(v63 + 8) = v55;
    *(v63 + 16) = v60;
    *(v63 + 17) = v114[0];
    *(v63 + 20) = *(v114 + 3);
    *(v63 + 24) = v59;
    v68 = v112;
    *(v63 + 32) = v111;
    *(v63 + 48) = v68;
    *(v63 + 64) = v113;
    *(v63 + 80) = KeyPath;
    *(v63 + 88) = 0;
    v69 = sub_25B0E3170();
    v70 = swift_getKeyPath();
    v71 = (v63 + *(v94 + 36));
    *v71 = v70;
    v71[1] = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32920, &qword_25B0EA508);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25B0E7730;
    LOBYTE(v55) = sub_25B0E3120();
    *(inited + 32) = v55;
    v73 = sub_25B0E3130();
    *(inited + 33) = v73;
    v74 = sub_25B0E3150();
    sub_25B0E3150();
    if (sub_25B0E3150() != v55)
    {
      v74 = sub_25B0E3150();
    }

    sub_25B0E3150();
    if (sub_25B0E3150() != v73)
    {
      v74 = sub_25B0E3150();
    }

    v75 = v107;
    sub_25B0E2A00();
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v84 = v96;
    sub_25B0745E4(v63, v96, &qword_27FA328E8, &qword_25B0EA440);
    v85 = v108;
    v86 = v84 + *(v108 + 36);
    *v86 = v74;
    *(v86 + 8) = v77;
    *(v86 + 16) = v79;
    *(v86 + 24) = v81;
    *(v86 + 32) = v83;
    *(v86 + 40) = 0;
    v87 = v84;
    v88 = v95;
    sub_25B0745E4(v87, v95, &qword_27FA328F0, &qword_25B0EA448);
    sub_25B0745E4(v88, v75, &qword_27FA328F0, &qword_25B0EA448);
    (*(v106 + 56))(v75, 0, 1, v85);
  }

  else
  {
    v75 = v107;
    (*(v106 + 56))(v107, 1, 1, v108);
  }

  v89 = v105;
  sub_25B0B00E0(v48, v105, &qword_27FA32900, &qword_25B0EA458);
  v90 = v109;
  sub_25B0B00E0(v75, v109, &qword_27FA328F8, &qword_25B0EA450);
  v91 = v110;
  sub_25B0B00E0(v89, v110, &qword_27FA32900, &qword_25B0EA458);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32908, &qword_25B0EA460);
  sub_25B0B00E0(v90, v91 + *(v92 + 48), &qword_27FA328F8, &qword_25B0EA450);
  sub_25B058448(v75, &qword_27FA328F8, &qword_25B0EA450);
  sub_25B058448(v48, &qword_27FA32900, &qword_25B0EA458);
  sub_25B058448(v90, &qword_27FA328F8, &qword_25B0EA450);
  sub_25B058448(v89, &qword_27FA32900, &qword_25B0EA458);
}

uint64_t sub_25B0C3244@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_25B0E2EA0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA328E0, &qword_25B0EA438);
  return sub_25B0C27F8(v1, a1 + *(v3 + 44));
}

uint64_t sub_25B0C3298(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25B0C3300(uint64_t a1)
{
  v2 = sub_25B0E31D0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25B0E2D60();
}

unint64_t sub_25B0C33C8()
{
  result = qword_27FA32928;
  if (!qword_27FA32928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32930, &unk_25B0EA510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32928);
  }

  return result;
}

uint64_t type metadata accessor for FacesGrid(uint64_t a1)
{
  result = qword_27FA32938;
  if (!qword_27FA32938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25B0C34A0(uint64_t a1)
{
  sub_25B0B0E84(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_25B0C3564@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25B0E2E60();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32070, &qword_25B0E9490);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_25B0C48C4(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_25B0E2C70();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_25B0E3A40();
    v13 = sub_25B0E30D0();
    sub_25B0E2940();

    sub_25B0E2E50();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_25B0C374C()
{
  v1 = v0;
  v25 = sub_25B0E3550();
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_25B0E3540();
  v4 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_25B0E2C70();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B0C3564(v10);
  v11 = sub_25B0E2C60();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) != 0 && *(v1 + *(type metadata accessor for FacesGrid(0) + 28)) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31918, &qword_25B0E7820);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_25B0E7720;
    *v6 = xmmword_25B0EA520;
    (*(v4 + 104))(v6, *MEMORY[0x277CDF108], v26);
    sub_25B0E3560();
    return v12;
  }

  else
  {
    result = type metadata accessor for FacesGrid(0);
    v14 = *(v1 + *(result + 40));
    if (v14 < 1)
    {
LABEL_18:
      __break(1u);
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
      result = sub_25B08C358(0, v14, 0);
      v15 = 0;
      v24 = *MEMORY[0x277CDF108];
      v16 = (v4 + 104);
      v12 = v28;
      v23 = v27 + 32;
      v17 = 1;
      v22 = xmmword_25B0EA520;
      v18 = v14;
      while (!v15)
      {
        sub_25B0E3900();
        sub_25B0E38F0();
        sub_25B0E3850();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        sub_25B0E3580();
        *v6 = v22;
        (*v16)(v6, v24, v26);
        sub_25B0E3560();

        v28 = v12;
        v20 = *(v12 + 16);
        v19 = *(v12 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_25B08C358((v19 > 1), v20 + 1, 1);
          v12 = v28;
        }

        *(v12 + 16) = v20 + 1;
        result = (*(v27 + 32))(v12 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v20, v3, v25);
        v15 = v17 == v14;
        if (v17 == v14)
        {
          v17 = 0;
        }

        else if (__OFADD__(v17++, 1))
        {
          __break(1u);
          goto LABEL_18;
        }

        if (!--v18)
        {
          return v12;
        }
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25B0C3BA4@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = sub_25B0E2F60();
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32948, &qword_25B0EA590);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  sub_25B0C374C();
  sub_25B0E2F00();
  type metadata accessor for FacesGrid(0);
  v21 = v1;
  v22 = 0;
  sub_25B0C4814(&qword_27FA32950, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_25B0E3FA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32958, &qword_25B0EA598);
  sub_25B0C467C();
  sub_25B0E35D0();
  v7 = sub_25B0E3130();
  sub_25B0E2A00();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v20;
  (*(v4 + 32))(v20, v6, v3);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32970, &qword_25B0EA5A0);
  v18 = v16 + *(result + 36);
  *v18 = v7;
  *(v18 + 8) = v9;
  *(v18 + 16) = v11;
  *(v18 + 24) = v13;
  *(v18 + 32) = v15;
  *(v18 + 40) = 0;
  return result;
}

uint64_t sub_25B0C3E2C(uint64_t a1)
{
  v2 = type metadata accessor for FacesGrid(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8[1] = *(a1 + *(v2 + 24) + 56);
  sub_25B0C4730(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_25B0C485C(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for FacesGrid);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F68, &qword_25B0E91E8);
  type metadata accessor for FaceButton(0);
  sub_25B058150(&qword_27FA32978, &qword_27FA31F68, &qword_25B0E91E8, MEMORY[0x277D83980]);
  sub_25B0C4814(&qword_27FA32968, type metadata accessor for FaceButton, &unk_25B0E9B90);
  sub_25B0C4814(&qword_27FA32980, MEMORY[0x277D2BE00], MEMORY[0x277D2BE18]);
  sub_25B0E3500();
}

uint64_t sub_25B0C40C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  v53 = a3;
  v57 = sub_25B0E2C70();
  v47 = *(v57 - 8);
  v4 = MEMORY[0x28223BE20](v57);
  v52 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v51 = &v44 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - v8;
  v46 = sub_25B0E2540();
  v10 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for FacePlacement.Location(0);
  MEMORY[0x28223BE20](v45);
  v56 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25B0E2750();
  v55 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v54 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FaceButton(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B0E3900();
  v50 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = *(v55 + 16);
  v20 = v48;
  v49 = v14;
  v19(v54, v48, v14);
  v21 = type metadata accessor for FacesGrid(0);
  v22 = *(a2 + v21[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31890, &qword_25B0E7768);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25B0E7730;
  v24 = a2 + v21[6];
  v25 = *(v24 + 56);
  *(v23 + 32) = *(v24 + 64);
  v26 = sub_25B0C76AC(v20, v25);
  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v26;
  }

  *(v23 + 40) = v28;
  MEMORY[0x25F85F060](v23);
  v29 = v56;
  *v56 = v22;
  (*(v10 + 32))(&v29[*(v45 + 20)], v12, v46);
  v30 = *(a2 + v21[9]);
  v46 = *(a2 + v21[10]);
  v31 = *(a2 + v21[7]);
  LODWORD(v48) = *(a2 + v21[8]);
  sub_25B0C3564(v9);
  v32 = sub_25B0E2C60();
  v33 = *(v47 + 8);
  v33(v9, v57);
  if ((v32 & 1) != 0 && v31)
  {
    v34 = 1;
    v47 = sub_25B0E2F00();
  }

  else
  {
    v47 = sub_25B0E2EF0();
    v34 = v31;
  }

  v35 = v51;
  sub_25B0C3564(v51);
  v36 = sub_25B0E2C60();
  v37 = v57;
  v33(v35, v57);
  LODWORD(v51) = (v36 & v34 & 1) == 0;
  v38 = v52;
  sub_25B0C3564(v52);
  LOBYTE(v36) = sub_25B0E2C60();
  v33(v38, v37);
  v39 = (v30 + -64.0) / v46 + -15.0;
  (*(v55 + 32))(v18, v54, v49);
  sub_25B0C485C(v56, &v18[v16[5]], type metadata accessor for FacePlacement.Location);
  v40 = &v18[v16[6]];
  *v40 = v39;
  *(v40 + 1) = 0;
  v40[16] = 0;
  v41 = &v18[v16[7]];
  *v41 = 0;
  *(v41 + 1) = 0;
  v41[16] = 1;
  v18[v16[8]] = v31;
  v18[v16[9]] = v48;
  v42 = &v18[v16[10]];
  *v42 = 0;
  *(v42 + 1) = 0;
  *&v18[v16[11]] = v47;
  v18[v16[12]] = v51;
  v18[v16[13]] = (v36 & v34 & 1) == 0;
  sub_25B0C485C(v18, v53, type metadata accessor for FaceButton);
}

unint64_t sub_25B0C467C()
{
  result = qword_27FA32960;
  if (!qword_27FA32960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32958, &qword_25B0EA598);
    sub_25B0C4814(&qword_27FA32968, type metadata accessor for FaceButton, &unk_25B0E9B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32960);
  }

  return result;
}

uint64_t sub_25B0C4730(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FacesGrid(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0C4794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FacesGrid(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_25B0C40C0(a1, v6, a2);
}

uint64_t sub_25B0C4814(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25B0C485C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25B0C48C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32070, &qword_25B0E9490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25B0C4934()
{
  result = qword_27FA32988;
  if (!qword_27FA32988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32970, &qword_25B0EA5A0);
    sub_25B058150(qword_27FA32990, &qword_27FA32948, &qword_25B0EA590, MEMORY[0x277CDF170]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32988);
  }

  return result;
}

void sub_25B0C49F4(uint64_t a1)
{
  sub_25B0C512C(319, &qword_27FA32A18, type metadata accessor for FontManager, MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    sub_25B0C50C8(319);
    if (v2 <= 0x3F)
    {
      sub_25B0C512C(319, &qword_27FA32A30, type metadata accessor for CGRect, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_25B0C5190(319, &qword_27FA325E8, MEMORY[0x277D839B0], MEMORY[0x277CDD630]);
        if (v4 <= 0x3F)
        {
          sub_25B0C512C(319, &qword_27FA32A38, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_25B0C5190(319, &qword_27FA32A40, &type metadata for GalleryManager.Row, MEMORY[0x277D83940]);
            if (v6 <= 0x3F)
            {
              swift_checkMetadataState();
              if (v7 <= 0x3F)
              {
                sub_25B0B0F2C();
                if (v8 <= 0x3F)
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

uint64_t sub_25B0C4BF8(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_25B0E2C80() - 8);
  v7 = 8;
  if (*(v6 + 64) > 8uLL)
  {
    v7 = *(v6 + 64);
  }

  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v8 + 80);
  if (v9 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 & 0xF8;
  v14 = v13 | 7;
  v15 = v7 + 1;
  v16 = v11 + 18;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v17 = ((*(v8 + 64) + ((v16 + ((((v13 + 87) & ~v14) + v15) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v18 = v17 & 0xFFFFFFF8;
  if ((v17 & 0xFFFFFFF8) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = a2 - v12 + 1;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v24 = v22 - 1;
    if (v18)
    {
      v24 = 0;
      v25 = *a1;
    }

    else
    {
      v25 = 0;
    }

    return v12 + (v25 | v24) + 1;
  }

  if (v21)
  {
    v22 = *(a1 + v17);
    if (v22)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if ((v9 & 0x80000000) != 0)
  {
    v27 = *(v8 + 48);

    return v27((v16 + ((((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14) + v15) & 0xFFFFFFFFFFFFFFF8)) & ~v11);
  }

  else
  {
    v26 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v26) = -1;
    }

    return (v26 + 1);
  }
}

void sub_25B0C4E30(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_25B0E2C80() - 8);
  v9 = 8;
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 & 0xF8 | 7;
  v16 = v9 + 1;
  v17 = ((*(v10 + 64) + ((v13 + 18 + (((((v12 & 0xF8) + 87) & ~v15) + v16) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v14 >= a3)
  {
    v20 = 0;
    v21 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((*(v10 + 64) + ((v13 + 18 + (((((v12 & 0xF8) + 87) & ~v15) + v16) & 0xFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = a3 - v14 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v14;
    if (a2 <= v14)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if ((v11 & 0x80000000) != 0)
      {
        v24 = *(v10 + 56);

        v24((v13 + 18 + ((((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v15 + 8) & ~v15) + v16) & 0xFFFFFFFFFFFFFFF8)) & ~v13, a2);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        a1[1] = 0;
      }

      else
      {
        *a1 = (a2 - 1);
      }

      return;
    }
  }

  if (v17)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v17)
  {
    v23 = ~v14 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }
}

void sub_25B0C50C8(uint64_t a1)
{
  if (!qword_27FA32A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32A28, qword_25B0EA5B8);
    v1 = sub_25B0E3480();
    if (!v2)
    {
      atomic_store(v1, &qword_27FA32A20);
    }
  }
}

void sub_25B0C512C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_25B0C5190(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_25B0C5224(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_25B0E35F0();
}

uint64_t sub_25B0C53F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v14 = *(a1 + 16);
  *(v7 + 16) = v14;
  (*(v4 + 32))(v7 + v6, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_25B0E2CA0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32A50, &unk_25B0EA628);
  swift_getTupleTypeMetadata2();
  sub_25B0E35E0();
  swift_getWitnessTable();
  sub_25B0E34B0();
  sub_25B0E2CA0();
  sub_25B0E2CA0();
  WitnessTable = swift_getWitnessTable();
  v9 = MEMORY[0x277CDF918];
  v19 = WitnessTable;
  v20 = MEMORY[0x277CDF918];
  v17 = swift_getWitnessTable();
  v18 = v9;
  swift_getWitnessTable();
  sub_25B0E2A20();
  swift_getWitnessTable();
  v15 = sub_25B0E2BC0();
  v16 = v10;
  v11 = sub_25B0E2BD0();
  swift_getWitnessTable();
  v12 = *(*(v11 - 8) + 16);
  v12(v21, &v15, v11);

  v15 = v21[0];
  v16 = v21[1];
  v12(a2, &v15, v11);
}

uint64_t sub_25B0C5710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v22 = a1;
  v23 = a4;
  v21 = a2;
  v24 = a5;
  sub_25B0E2CA0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32A50, &unk_25B0EA628);
  swift_getTupleTypeMetadata2();
  sub_25B0E35E0();
  swift_getWitnessTable();
  sub_25B0E34B0();
  sub_25B0E2CA0();
  sub_25B0E2CA0();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277CDF918];
  v27 = WitnessTable;
  v28 = MEMORY[0x277CDF918];
  v25 = swift_getWitnessTable();
  v26 = v7;
  swift_getWitnessTable();
  v8 = sub_25B0E2A20();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  v16 = v23;
  *(&v21 - 4) = a3;
  *(&v21 - 3) = v16;
  v17 = v22;
  *(&v21 - 2) = v21;
  *(&v21 - 1) = v17;
  sub_25B0E30F0();
  sub_25B0E2A30();
  swift_getWitnessTable();
  v18 = *(v9 + 16);
  v18(v14, v12, v8);
  v19 = *(v9 + 8);
  v19(v12, v8);
  v18(v24, v14, v8);
  v19(v14, v8);
}

uint64_t sub_25B0C5A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v33 = a4;
  v34 = a2;
  v32 = a1;
  v37 = a5;
  v36 = a3;
  sub_25B0E2CA0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32A50, &unk_25B0EA628);
  swift_getTupleTypeMetadata2();
  v5 = sub_25B0E35E0();
  v29[1] = swift_getWitnessTable();
  v29[2] = v5;
  v6 = sub_25B0E34B0();
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v29 - v7;
  v9 = sub_25B0E2CA0();
  v35 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v29 - v10;
  v12 = sub_25B0E2CA0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v31 = v29 - v17;
  sub_25B0E3900();
  v29[3] = sub_25B0E38F0();
  sub_25B0E3850();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  v20 = v32;
  v19 = v33;
  v29[-4] = v36;
  v29[-3] = v19;
  v21 = v34;
  v29[-2] = v20;
  v29[-1] = v21;
  sub_25B0E2EF0();
  sub_25B0E34A0();
  sub_25B0E3100();
  WitnessTable = swift_getWitnessTable();
  sub_25B0E3340();
  (*(v30 + 8))(v8, v6);
  sub_25B0E3120();
  v23 = MEMORY[0x277CDF918];
  v40 = WitnessTable;
  v41 = MEMORY[0x277CDF918];
  v24 = swift_getWitnessTable();
  sub_25B0E3340();
  (*(v35 + 8))(v11, v9);
  v38 = v24;
  v39 = v23;
  swift_getWitnessTable();
  v25 = *(v13 + 16);
  v26 = v31;
  v25(v31, v16, v12);
  v27 = *(v13 + 8);
  v27(v16, v12);
  v25(v37, v26, v12);
  v27(v26, v12);
}

uint64_t sub_25B0C5F08@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v66 = a2;
  v63 = a1;
  v74 = a5;
  v64 = sub_25B0E2B80();
  v68 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v65 = v7;
  v67 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a4;
  v10 = type metadata accessor for GalleryGrid(0, a3, a4, v9);
  v62 = *(v10 - 8);
  v11 = *(v62 + 64);
  MEMORY[0x28223BE20](v10);
  v61 = &v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A50, &unk_25B0EA628);
  v72 = *(v13 - 8);
  v73 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v71 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = &v50 - v16;
  v17 = sub_25B0E2CA0();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  sub_25B0E3900();
  v69 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0E3130();
  v24 = v63;
  v52 = a3;
  sub_25B0E3340();
  v78[2] = a4;
  v78[3] = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v54 = v21;
  v55 = v17;
  v25 = *(v18 + 16);
  v56 = v18 + 16;
  v57 = v25;
  v25(v23, v21, v17);
  v26 = *(v18 + 8);
  v59 = v18 + 8;
  v60 = v26;
  v26(v21, v17);
  v51 = *(v24 + *(v10 + 56));
  v78[0] = v51;
  KeyPath = swift_getKeyPath();
  v27 = v62;
  v28 = v61;
  (*(v62 + 16))(v61, v24, v10);
  v30 = v67;
  v29 = v68;
  v31 = v64;
  (*(v68 + 16))(v67, v66, v64);
  v32 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v33 = *(v29 + 80);
  v66 = v23;
  v34 = v31;
  v35 = (v11 + v33 + v32) & ~v33;
  v36 = swift_allocObject();
  *(v36 + 16) = v52;
  *(v36 + 24) = v8;
  (*(v27 + 32))(v36 + v32, v28, v10);
  (*(v29 + 32))(v36 + v35, v30, v34);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A58, &qword_25B0EA650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A60, &qword_25B0EA658);
  v37 = sub_25B058150(&qword_27FA32A68, &qword_27FA32A58, &qword_25B0EA650, MEMORY[0x277D83980]);
  sub_25B0C738C(v37, v38, v39);
  sub_25B058150(&qword_27FA32A78, &qword_27FA32A60, &qword_25B0EA658, MEMORY[0x277CE1198]);
  v40 = v70;
  sub_25B0E34F0();
  v41 = v54;
  v42 = v66;
  v43 = v55;
  v57(v54, v66, v55);
  v78[0] = v41;
  v45 = v71;
  v44 = v72;
  v46 = v73;
  (*(v72 + 16))(v71, v40, v73);
  v78[1] = v45;
  v77[0] = v43;
  v77[1] = v46;
  v75 = WitnessTable;
  v76 = sub_25B0C73E0();
  sub_25B0C5224(v78, 2uLL, v77);
  v47 = *(v44 + 8);
  v47(v40, v46);
  v48 = v60;
  v60(v42, v43);
  v47(v45, v46);
  v48(v41, v43);
}

uint64_t sub_25B0C65E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v11;
  v16 = *(a1 + 64);
  v12 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v12;
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a6 = sub_25B0E2F00();
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A88, &qword_25B0EA660);
  sub_25B0C66F4(a2, v15, a3, a4, a5, a6 + *(v13 + 44));
}

uint64_t sub_25B0C66F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v105 = a4;
  v111 = a3;
  v114 = a6;
  v115 = a2;
  v112 = type metadata accessor for FacesGrid(0);
  v8 = MEMORY[0x28223BE20](v112);
  v113 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = (&v91 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A90, &qword_25B0EA668);
  v109 = *(v12 - 8);
  v110 = v12;
  MEMORY[0x28223BE20](v12);
  v104 = &v91 - v13;
  v14 = sub_25B0E2EE0();
  v101 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v100 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A98, &qword_25B0EA670);
  MEMORY[0x28223BE20](v97);
  v98 = &v91 - v16;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AA0, &qword_25B0EA678);
  v17 = MEMORY[0x28223BE20](v99);
  v103 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v91 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AA8, &qword_25B0EA680);
  v22 = MEMORY[0x28223BE20](v21);
  v102 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v91 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AB0, &qword_25B0EA688);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v108 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v106 = &v91 - v29;
  sub_25B0E3900();
  v107 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v31 = type metadata accessor for GalleryGrid(0, v105, a5, v30);
  if (*(*(a1 + v31[14]) + 16) < 2uLL)
  {
    v75 = v106;
    (*(v109 + 56))(v106, 1, 1, v110);
  }

  else
  {
    v95 = v25;
    sub_25B0E34E0();
    v32 = NTKCSeparatorColor();
    v33 = sub_25B0E3370();
    v34 = sub_25B0E3110();
    v96 = v31;
    v35 = v34;
    v36 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AC0, &qword_25B0EA6C8) + 36)];
    *v36 = v33;
    v36[8] = v35;
    LOBYTE(v33) = sub_25B0E3130();
    v37 = sub_25B0E2A00();
    v38 = &v25[*(v21 + 36)];
    *v38 = v33;
    *(v38 + 1) = v39;
    *(v38 + 2) = v40;
    *(v38 + 3) = v41;
    *(v38 + 4) = v42;
    v38[40] = 0;
    v43 = v115[1];
    v92 = *v115;
    v93 = v43;
    v117 = v92;
    v118 = v43;
    sub_25B04C9BC(v37, v44, v45);

    v46 = sub_25B0E3210();
    v48 = v47;
    v94 = v14;
    v50 = v49;
    v51 = a1[1];
    v117 = *a1;
    v118 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AC8, &qword_25B0EA6D0);
    sub_25B0E3450();
    v52 = v116[0];
    swift_getKeyPath();
    v105 = a1;
    v117 = v52;
    sub_25B0C74EC();
    sub_25B0E28D0();

    v53 = sub_25B0E31F0();
    v91 = v20;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;

    sub_25B0B0ABC(v46, v48, v50 & 1);

    v117 = v54;
    v118 = v56;
    LOBYTE(v46) = v58 & 1;
    v119 = v58 & 1;
    v120 = v60;
    strcpy(v116, "Gallery-Row-");
    BYTE5(v116[1]) = 0;
    HIWORD(v116[1]) = -5120;
    MEMORY[0x25F8602F0](v92, v93);
    v61 = v98;
    sub_25B0E3310();

    sub_25B0B0ABC(v54, v56, v46);

    v62 = v100;
    sub_25B0E2ED0();
    v63 = v91;
    sub_25B0E2C90();
    (*(v101 + 8))(v62, v94);
    sub_25B058448(v61, &qword_27FA32A98, &qword_25B0EA670);
    LOBYTE(v62) = sub_25B0E3130();
    sub_25B0E2A00();
    v64 = v63 + *(v99 + 36);
    *v64 = v62;
    *(v64 + 8) = v65;
    *(v64 + 16) = v66;
    *(v64 + 24) = v67;
    *(v64 + 32) = v68;
    *(v64 + 40) = 0;
    v69 = v95;
    v70 = v102;
    sub_25B0B00E0(v95, v102, &qword_27FA32AA8, &qword_25B0EA680);
    v71 = v103;
    sub_25B0B00E0(v63, v103, &qword_27FA32AA0, &qword_25B0EA678);
    v72 = v104;
    sub_25B0B00E0(v70, v104, &qword_27FA32AA8, &qword_25B0EA680);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AD0, &qword_25B0EA700);
    sub_25B0B00E0(v71, v72 + *(v73 + 48), &qword_27FA32AA0, &qword_25B0EA678);
    sub_25B058448(v63, &qword_27FA32AA0, &qword_25B0EA678);
    sub_25B058448(v69, &qword_27FA32AA8, &qword_25B0EA680);
    a1 = v105;
    sub_25B058448(v71, &qword_27FA32AA0, &qword_25B0EA678);
    v31 = v96;
    sub_25B058448(v70, &qword_27FA32AA8, &qword_25B0EA680);
    v74 = v72;
    v75 = v106;
    sub_25B0C7544(v74, v106);
    (*(v109 + 56))(v75, 0, 1, v110);
  }

  v76 = *(a1 + v31[13]);
  v77 = *(*(a1 + v31[14]) + 16) < 2uLL;
  v78 = *(a1 + v31[15]);
  v79 = v115;
  sub_25B08CEB4(v115, &v117);
  sub_25B0E2B70();
  v81 = v80;
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32070, &qword_25B0E9490);
  swift_storeEnumTagMultiPayload();
  v82 = v112;
  *(v11 + *(v112 + 20)) = v76;
  v83 = v11 + v82[6];
  v84 = *(v79 + 3);
  *(v83 + 2) = *(v79 + 2);
  *(v83 + 3) = v84;
  *(v83 + 8) = v79[8];
  v85 = *(v79 + 1);
  *v83 = *v79;
  *(v83 + 1) = v85;
  *(v11 + v82[7]) = v77;
  *(v11 + v82[8]) = v78;
  *(v11 + v82[9]) = v81;
  *(v11 + v82[10]) = 3;
  v86 = v108;
  sub_25B0B00E0(v75, v108, &qword_27FA32AB0, &qword_25B0EA688);
  v87 = v113;
  sub_25B0C4730(v11, v113);
  v88 = v114;
  sub_25B0B00E0(v86, v114, &qword_27FA32AB0, &qword_25B0EA688);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AB8, &qword_25B0EA6C0);
  sub_25B0C4730(v87, v88 + *(v89 + 48));
  sub_25B0C7490(v11);
  sub_25B058448(v75, &qword_27FA32AB0, &qword_25B0EA688);
  sub_25B0C7490(v87);
  sub_25B058448(v86, &qword_27FA32AB0, &qword_25B0EA688);
}

uint64_t sub_25B0C70EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for GalleryGrid(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_25B0C5710(a1, v9, v6, v7, a3);
}

uint64_t sub_25B0C71C4(uint64_t a1)
{
  v2 = sub_25B0E2C70();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25B0E2D80();
}

uint64_t sub_25B0C728C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for GalleryGrid(0, v6, v7, a2) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_25B0E2B80() - 8);
  v12 = v3 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_25B0C65E0(a1, (v3 + v9), v12, v6, v7, a3);
}

unint64_t sub_25B0C738C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA32A70;
  if (!qword_27FA32A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32A70);
  }

  return result;
}

unint64_t sub_25B0C73E0()
{
  result = qword_27FA32A80;
  if (!qword_27FA32A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32A50, &unk_25B0EA628);
    sub_25B058150(&qword_27FA32A78, &qword_27FA32A60, &qword_25B0EA658, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32A80);
  }

  return result;
}

uint64_t sub_25B0C7490(uint64_t a1)
{
  v2 = type metadata accessor for FacesGrid(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25B0C74EC()
{
  result = qword_27FA31DC0;
  if (!qword_27FA31DC0)
  {
    type metadata accessor for FontManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31DC0);
  }

  return result;
}

uint64_t sub_25B0C7544(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A90, &qword_25B0EA668);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_25B0C75DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25B0C7624(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25B0C76AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_25B0E2750() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_25B0C9464(&qword_27FA314D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE10]);
  v7 = 0;
  while ((sub_25B0E3700() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_25B0C77CC@<X0>(uint64_t a1@<X8>)
{
  v101 = a1;
  v2 = sub_25B0E30A0();
  MEMORY[0x28223BE20](v2 - 8);
  v90 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_25B0E30C0();
  v92 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v91 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AD8, &qword_25B0EA7A8);
  v89 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v6 = &v86 - v5;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AE0, &qword_25B0EA7B0);
  v7 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v93 = (&v86 - v8);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AE8, &qword_25B0EA7B8);
  MEMORY[0x28223BE20](v96);
  v97 = &v86 - v9;
  v10 = type metadata accessor for SingleFaceRow(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AF0, &qword_25B0EA7C0);
  MEMORY[0x28223BE20](v86);
  v14 = &v86 - v13;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AF8, &qword_25B0EA7C8);
  MEMORY[0x28223BE20](v87);
  v16 = &v86 - v15;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32B00, &qword_25B0EA7D0);
  MEMORY[0x28223BE20](v88);
  v18 = &v86 - v17;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32B08, &qword_25B0EA7D8);
  MEMORY[0x28223BE20](v94);
  v20 = &v86 - v19;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32B10, &qword_25B0EA7E0);
  MEMORY[0x28223BE20](v95);
  v23 = *(v1 + 48);
  v24 = *(v1 + 80);
  v117 = *(v1 + 64);
  v118 = v24;
  v119 = *(v1 + 96);
  v25 = *(v1 + 16);
  v116[0] = *v1;
  v116[1] = v25;
  v116[2] = *(v1 + 32);
  v116[3] = v23;
  v26 = *(v1 + 8);
  v27 = *(v1 + 24);
  v28 = *(v1 + 40);
  v123 = *(v1 + 56);
  v121 = v27;
  v122 = v28;
  v120 = v26;
  v29 = v117;
  if (*(v117 + 16) == 1)
  {
    v30 = *(&v117 + 1);
    v92 = (&v86 - v21);
    v93 = v22;
    v31 = sub_25B0E2750();
    v32 = v116[0];
    (*(*(v31 - 8) + 16))(&v12[v10[6]], v29 + ((*(*(v31 - 8) + 80) + 32) & ~*(*(v31 - 8) + 80)), v31);
    v33 = *(&v118 + 1);
    sub_25B0C9344(v116, &v109);
    v34 = sub_25B0E2EF0();
    v35 = v120;
    *(v12 + 24) = v121;
    *(v12 + 40) = v122;
    *v12 = v32;
    v36 = v123;
    *(v12 + 8) = v35;
    *(v12 + 7) = v36;
    *(v12 + 8) = v29;
    *(v12 + 9) = v30;
    v37 = &v12[v10[7]];
    *v37 = v33;
    v37[8] = 0;
    v38 = &v12[v10[8]];
    *v38 = 0;
    v38[8] = 1;
    v39 = &v12[v10[9]];
    *v39 = 0;
    *(v39 + 1) = 0;
    v39[16] = 1;
    v12[v10[10]] = 0;
    *&v12[v10[11]] = v34;
    v12[v10[12]] = 1;
    v12[v10[13]] = 1;
    sub_25B0E3590();
    sub_25B0E2B50();
    sub_25B0C93FC(v12, v14, type metadata accessor for SingleFaceRow);
    v40 = &v14[*(v86 + 36)];
    v41 = v107;
    *v40 = v106;
    *(v40 + 1) = v41;
    *(v40 + 2) = v108;
    sub_25B0E35A0();
    sub_25B0E2D30();
    sub_25B0745E4(v14, v16, &qword_27FA32AF0, &qword_25B0EA7C0);
    v42 = &v16[*(v87 + 36)];
    v43 = v114;
    *(v42 + 4) = v113;
    *(v42 + 5) = v43;
    *(v42 + 6) = v115;
    v44 = v110;
    *v42 = v109;
    *(v42 + 1) = v44;
    v45 = v112;
    *(v42 + 2) = v111;
    *(v42 + 3) = v45;
    v46 = sub_25B0E3120();
    sub_25B0E2A00();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    sub_25B0745E4(v16, v18, &qword_27FA32AF8, &qword_25B0EA7C8);
    v55 = &v18[*(v88 + 36)];
    *v55 = v46;
    *(v55 + 1) = v48;
    *(v55 + 2) = v50;
    *(v55 + 3) = v52;
    *(v55 + 4) = v54;
    v55[40] = 0;
    v56 = sub_25B0E3130();
    sub_25B0E2A00();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;
    sub_25B0745E4(v18, v20, &qword_27FA32B00, &qword_25B0EA7D0);
    v65 = v94;
    v66 = &v20[*(v94 + 36)];
    *v66 = v56;
    *(v66 + 1) = v58;
    *(v66 + 2) = v60;
    *(v66 + 3) = v62;
    *(v66 + 4) = v64;
    v66[40] = 0;
    sub_25B0E2AF0();
    v67 = sub_25B0C90E4();
    v68 = v92;
    sub_25B0E32A0();
    sub_25B058448(v20, &qword_27FA32B08, &qword_25B0EA7D8);
    v69 = v93;
    v70 = v95;
    v93[2](v97, v68, v95);
    swift_storeEnumTagMultiPayload();
    v102 = v65;
    v103 = v67;
    swift_getOpaqueTypeConformance2();
    v71 = sub_25B058150(&qword_27FA32B68, &qword_27FA32AD8, &qword_25B0EA7A8, MEMORY[0x277CDD6E0]);
    v102 = v98;
    v103 = v100;
    v104 = v71;
    v105 = MEMORY[0x277CDE478];
    swift_getOpaqueTypeConformance2();
    sub_25B0E2F30();
    return v69[1](v68, v70);
  }

  else
  {
    v73 = sub_25B0E30E0();
    v74 = v7;
    MEMORY[0x28223BE20](v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32B18, &qword_25B0EA7E8);
    v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32B20, &qword_25B0EA7F0);
    v76 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32B28, &qword_25B0EA7F8);
    v77 = sub_25B0C8F14();
    *&v109 = v76;
    *(&v109 + 1) = v77;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v109 = v75;
    *(&v109 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_25B0E2A30();
    sub_25B0E3090();
    v79 = v91;
    sub_25B0E30B0();
    v80 = sub_25B058150(&qword_27FA32B68, &qword_27FA32AD8, &qword_25B0EA7A8, MEMORY[0x277CDD6E0]);
    v81 = v93;
    v82 = v98;
    v83 = v100;
    sub_25B0E32F0();
    v92[1](v79, v83);
    (*(v89 + 8))(v6, v82);
    v84 = v99;
    (*(v74 + 16))(v97, v81, v99);
    swift_storeEnumTagMultiPayload();
    v85 = sub_25B0C90E4();
    *&v109 = v94;
    *(&v109 + 1) = v85;
    swift_getOpaqueTypeConformance2();
    *&v109 = v82;
    *(&v109 + 1) = v83;
    *&v110 = v80;
    *(&v110 + 1) = MEMORY[0x277CDE478];
    swift_getOpaqueTypeConformance2();
    sub_25B0E2F30();
    return (*(v74 + 8))(v81, v84);
  }
}

uint64_t sub_25B0C8314@<X0>(uint64_t a2@<X8>)
{
  v52 = a2;
  v2 = sub_25B0E2F60();
  MEMORY[0x28223BE20](v2);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32B60, &qword_25B0EA810);
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = &v42 - v3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32B50, &qword_25B0EA808);
  MEMORY[0x28223BE20](v43);
  v5 = &v42 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32B40, &qword_25B0EA800);
  MEMORY[0x28223BE20](v45);
  v7 = &v42 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32B28, &qword_25B0EA7F8);
  MEMORY[0x28223BE20](v50);
  v9 = &v42 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32B20, &qword_25B0EA7F0);
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v42 = &v42 - v10;
  sub_25B0E3900();
  v48 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = sub_25B0E2E90();
  MEMORY[0x28223BE20](v11);
  LODWORD(v55) = 0;
  sub_25B0C9464(&qword_27FA32950, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_25B0E3FA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32958, &qword_25B0EA598);
  sub_25B0C467C();
  v12 = v44;
  sub_25B0E2A10();
  sub_25B0E3590();
  sub_25B0E2D30();
  (*(v46 + 32))(v5, v12, v47);
  v13 = &v5[*(v43 + 36)];
  v14 = v60;
  *(v13 + 4) = v59;
  *(v13 + 5) = v14;
  *(v13 + 6) = v61;
  v15 = v56;
  *v13 = v55;
  *(v13 + 1) = v15;
  v16 = v58;
  *(v13 + 2) = v57;
  *(v13 + 3) = v16;
  v17 = sub_25B0E3120();
  sub_25B0E2A00();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_25B0745E4(v5, v7, &qword_27FA32B50, &qword_25B0EA808);
  v26 = &v7[*(v45 + 36)];
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = sub_25B0E3130();
  sub_25B0E2A00();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_25B0745E4(v7, v9, &qword_27FA32B40, &qword_25B0EA800);
  v36 = v50;
  v37 = &v9[*(v50 + 36)];
  *v37 = v27;
  *(v37 + 1) = v29;
  *(v37 + 2) = v31;
  *(v37 + 3) = v33;
  *(v37 + 4) = v35;
  v37[40] = 0;
  sub_25B0E2AF0();
  v38 = sub_25B0C8F14();
  v39 = v42;
  sub_25B0E32A0();
  sub_25B058448(v9, &qword_27FA32B28, &qword_25B0EA7F8);
  v53 = v36;
  v54 = v38;
  swift_getOpaqueTypeConformance2();
  v40 = v51;
  sub_25B0E32C0();
  (*(v49 + 8))(v39, v40);
}

uint64_t sub_25B0C8954(uint64_t a1, uint64_t a2)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *(a1 + 64);
  v10 = v9;
  v3 = swift_allocObject();
  v4 = *(a1 + 80);
  v3[5] = *(a1 + 64);
  v3[6] = v4;
  v3[7] = *(a1 + 96);
  v5 = *(a1 + 16);
  v3[1] = *a1;
  v3[2] = v5;
  v6 = *(a1 + 48);
  v3[3] = *(a1 + 32);
  v3[4] = v6;
  sub_25B0C938C(&v10, v8);
  sub_25B0C9344(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F68, &qword_25B0E91E8);
  type metadata accessor for FaceButton(0);
  sub_25B058150(&qword_27FA32978, &qword_27FA31F68, &qword_25B0E91E8, MEMORY[0x277D83980]);
  sub_25B0C9464(&qword_27FA32968, type metadata accessor for FaceButton, &unk_25B0E9B90);
  sub_25B0C9464(&qword_27FA32980, MEMORY[0x277D2BE00], MEMORY[0x277D2BE18]);
  sub_25B0E3500();
}

uint64_t sub_25B0C8B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v36 = a3;
  v4 = sub_25B0E2540();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  v32 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for FacePlacement.Location(0);
  MEMORY[0x28223BE20](v31);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25B0E2750();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FaceButton(0);
  MEMORY[0x28223BE20](v12);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B0E3900();
  v30[1] = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v9 + 16))(v11, a1, v8);
  v30[0] = v8;
  v15 = a1;
  v16 = v35;
  v18 = *(v35 + 64);
  v17 = *(v35 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31890, &qword_25B0E7768);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_25B0E7730;
  *(v19 + 32) = v17;
  v20 = sub_25B0C76AC(v15, v18);
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  *(v19 + 40) = v22;
  v23 = v32;
  MEMORY[0x25F85F060](v19);
  *v7 = 5;
  (*(v33 + 32))(&v7[*(v31 + 20)], v23, v34);
  v24 = *(v16 + 88);
  v25 = sub_25B0E2EF0();
  (*(v9 + 32))(v14, v11, v30[0]);
  sub_25B0C93FC(v7, &v14[v12[5]], type metadata accessor for FacePlacement.Location);
  v26 = &v14[v12[6]];
  *v26 = v24;
  *(v26 + 1) = 0;
  v26[16] = 1;
  v27 = &v14[v12[7]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v27[16] = 1;
  v14[v12[8]] = 0;
  v14[v12[9]] = 0;
  v28 = &v14[v12[10]];
  *v28 = 0;
  *(v28 + 1) = 0;
  *&v14[v12[11]] = v25;
  v14[v12[12]] = 1;
  v14[v12[13]] = 0;
  sub_25B0C93FC(v14, v36, type metadata accessor for FaceButton);
}

unint64_t sub_25B0C8F14()
{
  result = qword_27FA32B30;
  if (!qword_27FA32B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32B28, &qword_25B0EA7F8);
    sub_25B0C8FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32B30);
  }

  return result;
}

unint64_t sub_25B0C8FA0()
{
  result = qword_27FA32B38;
  if (!qword_27FA32B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32B40, &qword_25B0EA800);
    sub_25B0C902C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32B38);
  }

  return result;
}

unint64_t sub_25B0C902C()
{
  result = qword_27FA32B48;
  if (!qword_27FA32B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32B50, &qword_25B0EA808);
    sub_25B058150(&qword_27FA32B58, &qword_27FA32B60, &qword_25B0EA810, MEMORY[0x277CDF330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32B48);
  }

  return result;
}

unint64_t sub_25B0C90E4()
{
  result = qword_27FA32B70;
  if (!qword_27FA32B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32B08, &qword_25B0EA7D8);
    sub_25B0C9170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32B70);
  }

  return result;
}

unint64_t sub_25B0C9170()
{
  result = qword_27FA32B78;
  if (!qword_27FA32B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32B00, &qword_25B0EA7D0);
    sub_25B0C91FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32B78);
  }

  return result;
}

unint64_t sub_25B0C91FC()
{
  result = qword_27FA32B80;
  if (!qword_27FA32B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32AF8, &qword_25B0EA7C8);
    sub_25B0C9288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32B80);
  }

  return result;
}

unint64_t sub_25B0C9288()
{
  result = qword_27FA32B88;
  if (!qword_27FA32B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32AF0, &qword_25B0EA7C0);
    sub_25B0C9464(&qword_27FA32B90, type metadata accessor for SingleFaceRow, &unk_25B0EA3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32B88);
  }

  return result;
}

uint64_t sub_25B0C938C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F68, &qword_25B0E91E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0C93FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25B0C9464(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25B0C94AC()
{
  result = qword_27FA32B98;
  if (!qword_27FA32B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32BA0, &qword_25B0EA818);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32B08, &qword_25B0EA7D8);
    sub_25B0C90E4();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32AD8, &qword_25B0EA7A8);
    sub_25B0E30C0();
    sub_25B058150(&qword_27FA32B68, &qword_27FA32AD8, &qword_25B0EA7A8, MEMORY[0x277CDD6E0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32B98);
  }

  return result;
}

uint64_t sub_25B0C9630@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25B0CBBBC(&qword_27FA31DC0, type metadata accessor for FontManager, &unk_25B0E8D54);
  sub_25B0E28D0();

  *a2 = *(v3 + 16);
}

uint64_t sub_25B0C9708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>, double a6@<D0>)
{
  v17 = a1;
  v18 = a5;
  v10 = sub_25B0E2B80();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v11 + 16))(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v10);
  v13 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a6;
  (*(v11 + 32))(v14 + v13, &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);

  v16 = v18;
  *v18 = sub_25B0CB47C;
  v16[1] = v14;
  return result;
}

uint64_t sub_25B0C98DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a6@<X8>)
{
  v31[1] = a2;
  v39 = a1;
  v44 = a6;
  v42 = sub_25B0E2CF0();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v36 = v7;
  v37 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_25B0E2A80();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v38 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32BA8, &qword_25B0EA8B8);
  MEMORY[0x28223BE20](v9);
  v11 = v31 - v10;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32BB0, &qword_25B0EA8C0);
  v32 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v13 = v31 - v12;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32BB8, &qword_25B0EA8C8);
  MEMORY[0x28223BE20](v35);
  v15 = v31 - v14;
  sub_25B0E3900();
  v34 = sub_25B0E38F0();
  sub_25B0E3850();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  sub_25B0E30F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32BC0, &qword_25B0EA8D0);
  sub_25B058150(&qword_27FA32BC8, &qword_27FA32BC0, &qword_25B0EA8D0, MEMORY[0x277CE1198]);
  sub_25B0E2A30();
  v17 = sub_25B0E33A0();
  v18 = sub_25B0E3110();
  v19 = &v11[*(v9 + 36)];
  *v19 = v17;
  v19[8] = v18;
  sub_25B0CB51C();
  sub_25B0E3320();
  sub_25B058448(v11, &qword_27FA32BA8, &qword_25B0EA8B8);
  sub_25B0E3590();
  sub_25B0E2D30();
  (*(v32 + 32))(v15, v13, v33);
  v20 = &v15[*(v35 + 36)];
  v21 = v50;
  *(v20 + 4) = v49;
  *(v20 + 5) = v21;
  *(v20 + 6) = v51;
  v22 = v46;
  *v20 = v45;
  *(v20 + 1) = v22;
  v23 = v48;
  *(v20 + 2) = v47;
  *(v20 + 3) = v23;
  v24 = v38;
  sub_25B0E2A90();
  v25 = v40;
  v26 = v37;
  v27 = v42;
  (*(v40 + 16))(v37, v39, v42);
  v28 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v29 = swift_allocObject();
  (*(v25 + 32))(v29 + v28, v26, v27);
  sub_25B0CB670();
  sub_25B0E3330();

  (*(v41 + 8))(v24, v43);
  sub_25B0433A0(v15);
}

uint64_t sub_25B0C9EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v20 = a4;
  v22 = a1;
  v10 = sub_25B0E2B80();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_25B0E3900();
  v23 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a5 = sub_25B0E2EF0();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v21 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32C10, &qword_25B0EA8E8);
  v24 = a3;
  (*(v11 + 16))(&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v10);
  v13 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v22;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a6;
  (*(v11 + 32))(v14 + v13, &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);

  swift_bridgeObjectRetain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A58, &qword_25B0EA650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32C18, &qword_25B0EA8F0);
  sub_25B058150(&qword_27FA32A68, &qword_27FA32A58, &qword_25B0EA650, MEMORY[0x277D83980]);
  v15 = sub_25B0CB9C8();
  sub_25B0CBB68(v15, v16, v17);
  sub_25B0E3500();
}

uint64_t sub_25B0CA1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v50 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32C30, &qword_25B0EA8F8);
  MEMORY[0x28223BE20](v13);
  v15 = v48 - v14;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32C18, &qword_25B0EA8F0);
  MEMORY[0x28223BE20](v49);
  v17 = v48 - v16;
  v18 = *(a1 + 48);
  v56[2] = *(a1 + 32);
  v56[3] = v18;
  v57 = *(a1 + 64);
  v19 = *(a1 + 16);
  v56[0] = *a1;
  v56[1] = v19;
  sub_25B0E3900();
  v48[1] = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v15 = sub_25B0E2F00();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32C68, &qword_25B0EA910);
  sub_25B0CA5F8(v56, a2, a3, a4, a5, &v15[*(v20 + 44)], a7);
  v21 = sub_25B0E3590();
  v23 = v22;
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = &v15[*(v13 + 36)];
  *v24 = sub_25B0E2EF0();
  *(v24 + 1) = 0;
  v24[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32C70, &qword_25B0EA918);
  sub_25B0CAB74(&v24[*(v25 + 44)]);
  v26 = sub_25B0E3140();
  sub_25B0E2A00();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32C78, &qword_25B0EA920) + 36)];
  *v35 = v26;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = sub_25B0E2CC0();
  v37 = sub_25B0E3110();

  v38 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32C80, &qword_25B0EA928) + 36)];
  *v38 = v36;
  v38[8] = v37;
  v39 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32C50, &qword_25B0EA908) + 36)];
  *v39 = v21;
  v39[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32920, &qword_25B0EA508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25B0E7730;
  v41 = sub_25B0E3140();
  *(inited + 32) = v41;
  v42 = sub_25B0E3160();
  *(inited + 33) = v42;
  sub_25B0E3150();
  sub_25B0E3150();
  if (sub_25B0E3150() != v41)
  {
    sub_25B0E3150();
  }

  sub_25B0E3150();
  if (sub_25B0E3150() != v42)
  {
    sub_25B0E3150();
  }

  sub_25B0E2A00();
  v51 = v43;
  v52 = v44;
  v53 = v45;
  v54 = v46;
  v55 = 0;
  sub_25B0E2F90();
  sub_25B0745E4(v15, v17, &qword_27FA32C30, &qword_25B0EA8F8);
  sub_25B0745E4(v17, v50, &qword_27FA32C18, &qword_25B0EA8F0);
}

uint64_t sub_25B0CA5F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v80 = a5;
  v81 = a4;
  v82 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32C90, &qword_25B0EA938);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v85 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v83 = &v77 - v14;
  sub_25B0E3900();
  v84 = sub_25B0E38F0();
  sub_25B0E3850();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v18 = *a1;
  v78 = a1[1];
  v79 = v18;
  *&v94[0] = v18;
  *(&v94[0] + 1) = v78;
  sub_25B04C9BC(isCurrentExecutor, v16, v17);

  v19 = sub_25B0E3210();
  v21 = v20;
  v23 = v22;
  *&v94[0] = a2;
  *(&v94[0] + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AC8, &qword_25B0EA6D0);
  sub_25B0E3450();
  v24 = *&v91[0];
  swift_getKeyPath();
  *&v94[0] = v24;
  sub_25B0CBBBC(&qword_27FA31DC0, type metadata accessor for FontManager, &unk_25B0E8D54);
  sub_25B0E28D0();

  v25 = sub_25B0E31F0();
  v27 = v26;
  v29 = v28;
  v77 = a1;
  v31 = v30;

  sub_25B0B0ABC(v19, v21, v23 & 1);

  v32 = sub_25B0E3120();
  sub_25B0E2A00();
  v88 = v29 & 1;
  v87 = 0;
  *&v94[0] = v25;
  *(&v94[0] + 1) = v27;
  LOBYTE(v94[1]) = v29 & 1;
  *(&v94[1] + 1) = v31;
  LOBYTE(v94[2]) = v32;
  *(&v94[2] + 1) = v33;
  *&v94[3] = v34;
  *(&v94[3] + 1) = v35;
  *&v94[4] = v36;
  BYTE8(v94[4]) = 0;
  strcpy(v91, "Gallery-Row-");
  BYTE13(v91[0]) = 0;
  HIWORD(v91[0]) = -5120;
  MEMORY[0x25F8602F0](v79, v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31F60, &qword_25B0E91E0);
  sub_25B0B01FC();
  v37 = v83;
  sub_25B0E3310();

  v89[2] = v94[2];
  v90[0] = v94[3];
  *(v90 + 9) = *(&v94[3] + 9);
  v89[0] = v94[0];
  v89[1] = v94[1];
  sub_25B058448(v89, &qword_27FA31F60, &qword_25B0E91E0);
  v38 = v77;
  sub_25B08CEB4(v77, v94);
  v39 = v81;
  sub_25B0CBC04(v81);
  v41 = v40;
  [v40 screenBounds];
  v43 = v42;
  v45 = v44;

  sub_25B0E2B70();
  v47 = (v46 - a7 * 3.0) / 2.7;
  sub_25B0CBC04(v39);
  v49 = v48;
  [v48 screenBounds];
  v51 = v50;

  v52 = v47 / v51;
  v53 = v43 * (v47 / v51);
  v54 = v45 * v52;
  sub_25B0CBC04(v39);
  v56 = v55;
  [v55 screenCornerRadius];
  v58 = v57;

  sub_25B0E2B70();
  v60 = (v59 - a7 * 3.0) / 2.7;
  sub_25B0CBC04(v39);
  v62 = v61;
  [v61 screenBounds];
  v64 = v63;

  v65 = *v38;
  *(&v86[1] + 7) = *(v38 + 1);
  v66 = *(v38 + 3);
  *(&v86[2] + 7) = *(v38 + 2);
  *(&v86[3] + 7) = v66;
  v67 = v58 * (v60 / v64);
  *(&v86[4] + 7) = v38[8];
  *(v86 + 7) = v65;
  v68 = v85;
  sub_25B0B00E0(v37, v85, &qword_27FA32C90, &qword_25B0EA938);
  v69 = v82;
  sub_25B0B00E0(v68, v82, &qword_27FA32C90, &qword_25B0EA938);
  v70 = (v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32C98, &qword_25B0EA968) + 48));
  LOBYTE(v91[0]) = 3;
  *(v91 + 1) = v86[0];
  *(&v91[1] + 1) = v86[1];
  *(&v91[2] + 1) = v86[2];
  *(&v91[3] + 1) = v86[3];
  v91[4] = *(&v86[3] + 15);
  *&v92 = v53;
  *(&v92 + 1) = v54;
  *&v93 = v67;
  *(&v93 + 1) = a7;
  v71 = v91[1];
  *v70 = v91[0];
  v70[1] = v71;
  v72 = v91[2];
  v73 = v91[3];
  v74 = v93;
  v70[5] = v92;
  v70[6] = v74;
  v75 = v91[4];
  v70[3] = v73;
  v70[4] = v75;
  v70[2] = v72;
  sub_25B0C9344(v91, v94);
  sub_25B058448(v37, &qword_27FA32C90, &qword_25B0EA938);
  *(&v94[1] + 1) = v86[1];
  *(&v94[2] + 1) = v86[2];
  *(&v94[3] + 1) = v86[3];
  v94[4] = *(&v86[3] + 15);
  LOBYTE(v94[0]) = 3;
  *(v94 + 1) = v86[0];
  v95 = v53;
  v96 = v54;
  v97 = v67;
  v98 = a7;
  sub_25B0CBF50(v94);
  sub_25B058448(v68, &qword_27FA32C90, &qword_25B0EA938);
}

uint64_t sub_25B0CAB74@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32AC0, &qword_25B0EA6C8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0E34E0();
  v8 = NTKCSeparatorColor();
  v9 = sub_25B0E3370();
  v10 = sub_25B0E3110();
  v11 = &v7[*(v2 + 36)];
  *v11 = v9;
  v11[8] = v10;
  sub_25B0B00E0(v7, v5, &qword_27FA32AC0, &qword_25B0EA6C8);
  sub_25B0B00E0(v5, a1, &qword_27FA32AC0, &qword_25B0EA6C8);
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32C88, &qword_25B0EA930) + 48);
  *v12 = 0;
  *(v12 + 8) = 1;
  sub_25B058448(v7, &qword_27FA32AC0, &qword_25B0EA6C8);
  sub_25B058448(v5, &qword_27FA32AC0, &qword_25B0EA6C8);
}

uint64_t sub_25B0CAD38(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v35 = a2;
  v2 = sub_25B0E3630();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x28223BE20](v2);
  v41 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25B0E3650();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_25B0E2CF0();
  v6 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = v7;
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25B0E2AA0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_25B0E3670();
  v37 = *(v44 - 8);
  v13 = MEMORY[0x28223BE20](v44);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  sub_25B0E3900();
  v36 = sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0CB738();
  v31 = sub_25B0E3A70();
  sub_25B0E3660();
  v30 = v17;
  sub_25B0E3680();
  v37 = *(v37 + 8);
  (v37)(v15, v44);
  (*(v10 + 16))(&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v9);
  v18 = v33;
  (*(v6 + 16))(v8, v35, v33);
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = (v11 + *(v6 + 80) + v19) & ~*(v6 + 80);
  v21 = swift_allocObject();
  (*(v10 + 32))(v21 + v19, v12, v9);
  (*(v6 + 32))(v21 + v20, v8, v18);
  aBlock[4] = sub_25B0CB784;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25B0BABA4;
  aBlock[3] = &block_descriptor_2;
  v22 = _Block_copy(aBlock);
  v23 = v38;
  sub_25B0E3640();
  v45 = MEMORY[0x277D84F90];
  sub_25B0CBBBC(&qword_27FA32BF8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32C00, &qword_25B0EA8E0);
  sub_25B058150(&qword_27FA32C08, &qword_27FA32C00, &qword_25B0EA8E0, MEMORY[0x277D83970]);
  v24 = v41;
  v25 = v43;
  sub_25B0E3B50();
  v26 = v30;
  v27 = v31;
  MEMORY[0x25F8605C0](v30, v23, v24, v22);
  _Block_release(v22);

  (*(v42 + 8))(v24, v25);
  (*(v39 + 8))(v23, v40);
  (v37)(v26, v44);
}

uint64_t sub_25B0CB320(uint64_t a1, uint64_t a2)
{
  sub_25B0E3900();
  sub_25B0E38F0();
  sub_25B0E3850();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0E2A70();
}

uint64_t sub_25B0CB3D0@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = swift_allocObject();
  *(v7 + 2) = v3;
  *(v7 + 3) = v4;
  *(v7 + 4) = v5;
  *(v7 + 5) = v6;
  *a1 = sub_25B0CB46C;
  a1[1] = v7;
}

uint64_t sub_25B0CB47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25B0E2B80();
  v5 = *(v2 + 16);

  return sub_25B0C98DC(a1, v5, a2);
}

unint64_t sub_25B0CB51C()
{
  result = qword_27FA32BD0;
  if (!qword_27FA32BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32BA8, &qword_25B0EA8B8);
    sub_25B058150(&qword_27FA32BD8, &qword_27FA32BE0, &qword_25B0EA8D8, MEMORY[0x277CDD6E0]);
    sub_25B058150(&qword_27FA32140, &qword_27FA32148, &qword_25B0E96B0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32BD0);
  }

  return result;
}

uint64_t sub_25B0CB600(uint64_t a1)
{
  v3 = *(sub_25B0E2CF0() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25B0CAD38(a1, v4);
}

unint64_t sub_25B0CB670()
{
  result = qword_27FA32BE8;
  if (!qword_27FA32BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32BB8, &qword_25B0EA8C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32BA8, &qword_25B0EA8B8);
    sub_25B0CB51C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA32BE8);
  }

  return result;
}

unint64_t sub_25B0CB738()
{
  result = qword_27FA32BF0;
  if (!qword_27FA32BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA32BF0);
  }

  return result;
}

uint64_t sub_25B0CB784()
{
  v1 = *(sub_25B0E2AA0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_25B0E2CF0() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_25B0CB320(v0 + v2, v5);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}