uint64_t sub_1C107C21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C107C280();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1C107C280()
{
  result = qword_1EBE92448;
  if (!qword_1EBE92448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92450, qword_1C12AF1A0);
    sub_1C107C0D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92448);
  }

  return result;
}

uint64_t View.photosCellOverlay(isDisabled:)(char a1, uint64_t a2, uint64_t a3)
{
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy(__dst, __src, 0xD1uLL);
  __dst[209] = a1;
  MEMORY[0x1C68EE920](__dst, a2, &type metadata for PhotosCellOverlayModifier, a3);
  memcpy(v9, __dst, 0xD2uLL);
  return sub_1C107C3A8(v9);
}

unint64_t sub_1C107C3D8()
{
  result = qword_1EDE81230[0];
  if (!qword_1EDE81230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE81230);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_17PhotosSwiftUICore0A9CellSpecsV15BackgroundColorO(void *a1)
{
  v1 = a1[3];
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1C107C460(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 210))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 208);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C107C4A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 210) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 210) = 0;
    }

    if (a2)
    {
      *(result + 208) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C107C548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92458, &qword_1C12AE700);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v40 - v5;
  v7 = sub_1C12637E0();
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v41 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1C1263320();
  MEMORY[0x1EEE9AC00](v46);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92460, &qword_1C12AE708);
  MEMORY[0x1EEE9AC00](v47);
  v12 = v40 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92468, &qword_1C12AE710);
  MEMORY[0x1EEE9AC00](v45);
  v14 = v40 - v13;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92470, &qword_1C12AE718);
  MEMORY[0x1EEE9AC00](v44);
  v16 = v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92478, &qword_1C12AE720);
  MEMORY[0x1EEE9AC00](v17);
  v48 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v49 = v40 - v20;
  memcpy(v56, v2, 0xD1uLL);
  if (v2[209] == 1)
  {
    v40[1] = v4;
    v40[2] = a2;
    memcpy(v55, v2, 0xD1uLL);
    if (sub_1C100D688(v55) == 1)
    {
      nullsub_1();
      memcpy(v52, v56, sizeof(v52));
      nullsub_1();
      memcpy(v54, v21, sizeof(v54));
      memcpy(v53, v56, 0xD1uLL);
      nullsub_1();
      sub_1C100D690(v22, &v51);
    }

    else
    {
      nullsub_1();
      memcpy(v52, v56, sizeof(v52));
      nullsub_1();
      memcpy(v53, v56, 0xD1uLL);
      nullsub_1();

      sub_1C1266420();
      v25 = sub_1C1264410();
      sub_1C1262620();

      v26 = v41;
      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0F9E21C(v56, &qword_1EBE91C80, &qword_1C12A75B0);
      (*(v42 + 8))(v26, v43);
    }

    v27 = v50;
    memcpy(v53, v54, 0xD0uLL);
    sub_1C100C7D0(v53);
    v28 = v53[0];
    v29 = *(v46 + 20);
    v30 = *MEMORY[0x1E697F468];
    v31 = sub_1C12639D0();
    (*(*(v31 - 8) + 104))(&v10[v29], v30, v31);
    *v10 = v28;
    *(v10 + 1) = v28;
    sub_1C107CD70(v10, v12);
    *&v12[*(v47 + 56)] = 256;
    sub_1C107CDD4(v12, v14, &qword_1EBE92460, &qword_1C12AE708);
    v14[*(v45 + 36)] = 0;
    sub_1C107CDD4(v14, v16, &qword_1EBE92468, &qword_1C12AE710);
    *&v16[*(v44 + 36)] = 0x3FE51EB851EB851FLL;
    v32 = sub_1C12659A0();
    v34 = v33;
    v35 = v48;
    v36 = &v48[*(v17 + 36)];
    sub_1C107CDD4(v16, v36, &qword_1EBE92470, &qword_1C12AE718);
    v37 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE924A0, &unk_1C12AE730) + 36));
    *v37 = v32;
    v37[1] = v34;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92480, &qword_1C12AE728);
    (*(*(v38 - 8) + 16))(v35, v27, v38);
    v39 = v49;
    sub_1C107CDD4(v35, v49, &qword_1EBE92478, &qword_1C12AE720);
    sub_1C107CE3C(v39, v6);
    swift_storeEnumTagMultiPayload();
    sub_1C107CC8C();
    sub_1C0FDB6D4(&qword_1EBE92490, &qword_1EBE92480, &qword_1C12AE728, MEMORY[0x1E697FDF8]);
    sub_1C1263C20();
    return sub_1C0F9E21C(v39, &qword_1EBE92478, &qword_1C12AE720);
  }

  else
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92480, &qword_1C12AE728);
    (*(*(v23 - 8) + 16))(v6, v50, v23);
    swift_storeEnumTagMultiPayload();
    sub_1C107CC8C();
    sub_1C0FDB6D4(&qword_1EBE92490, &qword_1EBE92480, &qword_1C12AE728, MEMORY[0x1E697FDF8]);
    return sub_1C1263C20();
  }
}

unint64_t sub_1C107CC8C()
{
  result = qword_1EBE92488;
  if (!qword_1EBE92488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92478, &qword_1C12AE720);
    sub_1C0FDB6D4(&qword_1EBE92490, &qword_1EBE92480, &qword_1C12AE728, MEMORY[0x1E697FDF8]);
    sub_1C0FDB6D4(&qword_1EBE92498, &qword_1EBE924A0, &unk_1C12AE730, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92488);
  }

  return result;
}

uint64_t sub_1C107CD70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1263320();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C107CDD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C107CE3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92478, &qword_1C12AE720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C107CEAC()
{
  result = qword_1EBE924A8;
  if (!qword_1EBE924A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924B0, &unk_1C12AE740);
    sub_1C107CC8C();
    sub_1C0FDB6D4(&qword_1EBE92490, &qword_1EBE92480, &qword_1C12AE728, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE924A8);
  }

  return result;
}

uint64_t PhotosCollectionSearchResultCellContentPosition.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C107D048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C108A638();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.photosCollectionSearchResultCellStyle.getter()
{
  sub_1C107D0F4();

  return sub_1C12637F0();
}

unint64_t sub_1C107D0F4()
{
  result = qword_1EBE924B8;
  if (!qword_1EBE924B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE924B8);
  }

  return result;
}

uint64_t sub_1C107D148@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.photosCollectionSearchResultCellStyle.getter();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.photosCollectionSearchResultCellStyle.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_1C107D0F4();
  sub_1C12637F0();
  return sub_1C107D25C;
}

uint64_t sub_1C107D294@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 68);
  memcpy(v17, (v2 + v9), 0xD1uLL);
  memcpy(v18, (v2 + v9), 0xD1uLL);
  if (sub_1C100D688(v18) == 1)
  {
    nullsub_1();
    memcpy(v15, v17, sizeof(v15));
    nullsub_1();
    memcpy(a2, v10, 0xD0uLL);
    memcpy(v16, v17, sizeof(v16));
    nullsub_1();
    return sub_1C100D690(v11, v14);
  }

  else
  {
    nullsub_1();
    memcpy(v15, v17, sizeof(v15));
    nullsub_1();
    memcpy(v16, v17, sizeof(v16));
    nullsub_1();

    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v17, &qword_1EBE91C80, &qword_1C12A75B0);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C107D4B0(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 72);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1C1266420();
    v9 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_1C107D604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C0FDB800(v2 + *(a1 + 76), &v15 - v10, &unk_1EBE91930, &qword_1C12A3650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C12629F0();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C107D808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8, &qword_1C12A32C0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C0FDB800(v2 + *(a1 + 80), &v15 - v10, &qword_1EBE904D8, &qword_1C12A32C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C1263130();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C107DA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428, &qword_1C12A3220);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1C0FDB800(v2 + *(a1 + 84), &v14 - v10, &qword_1EBE90428, &qword_1C12A3220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C108B850(v11, a2);
  }

  sub_1C1266420();
  v13 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C107DBE0(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 88);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1C1266420();
    v9 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

void sub_1C107DD34(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 92);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    sub_1C1266420();
    v11 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

void sub_1C107DE90(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 96);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10 & 1;
  }

  else
  {

    sub_1C1266420();
    v11 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

double sub_1C107E020(uint64_t a1)
{
  v2 = sub_1C1263EB0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v23 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8, &unk_1C12A2E90);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v24 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  sub_1C107DA0C(a1, &v23 - v15);
  (*(v3 + 104))(v13, *MEMORY[0x1E697FF38], v2);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v2);
  v17 = *(v6 + 56);
  sub_1C0FDB800(v16, v8, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0FDB800(v13, &v8[v17], &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    sub_1C0FD1A5C(v13, &qword_1EBE902F0, &qword_1C12B38C0);
    sub_1C0FD1A5C(v16, &qword_1EBE902F0, &qword_1C12B38C0);
    if (__swift_getEnumTagSinglePayload(&v8[v17], 1, v2) == 1)
    {
      sub_1C0FD1A5C(v8, &qword_1EBE902F0, &qword_1C12B38C0);
      return 0.0;
    }

    goto LABEL_6;
  }

  v19 = v24;
  sub_1C0FDB800(v8, v24, &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(&v8[v17], 1, v2) == 1)
  {
    sub_1C0FD1A5C(v13, &qword_1EBE902F0, &qword_1C12B38C0);
    sub_1C0FD1A5C(v16, &qword_1EBE902F0, &qword_1C12B38C0);
    (*(v3 + 8))(v19, v2);
LABEL_6:
    sub_1C0FD1A5C(v8, &qword_1EBE902E8, &unk_1C12A2E90);
    return 12.0;
  }

  v20 = v23;
  (*(v3 + 32))(v23, &v8[v17], v2);
  sub_1C108B8C0(&qword_1EDE7BAB0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v21 = sub_1C1265DE0();
  v22 = *(v3 + 8);
  v22(v20, v2);
  sub_1C0FD1A5C(v13, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0FD1A5C(v16, &qword_1EBE902F0, &qword_1C12B38C0);
  v22(v19, v2);
  sub_1C0FD1A5C(v8, &qword_1EBE902F0, &qword_1C12B38C0);
  result = 12.0;
  if (v21)
  {
    return 0.0;
  }

  return result;
}

double sub_1C107E448@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = a2;
  v3 = sub_1C1263EB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8, &unk_1C12A2E90);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v31 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  sub_1C107DA0C(a1, &v29 - v16);
  (*(v4 + 104))(v14, *MEMORY[0x1E697FF40], v3);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v3);
  v18 = *(v7 + 56);
  sub_1C0FDB800(v17, v9, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0FDB800(v14, &v9[v18], &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    sub_1C0FD1A5C(v14, &qword_1EBE902F0, &qword_1C12B38C0);
    sub_1C0FD1A5C(v17, &qword_1EBE902F0, &qword_1C12B38C0);
    if (__swift_getEnumTagSinglePayload(&v9[v18], 1, v3) == 1)
    {
      sub_1C0FD1A5C(v9, &qword_1EBE902F0, &qword_1C12B38C0);
LABEL_11:
      if (qword_1EDE82B50 != -1)
      {
        swift_once();
      }

      v20 = &qword_1EDE82B58;
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v19 = v31;
  sub_1C0FDB800(v9, v31, &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(&v9[v18], 1, v3) == 1)
  {
    sub_1C0FD1A5C(v14, &qword_1EBE902F0, &qword_1C12B38C0);
    sub_1C0FD1A5C(v17, &qword_1EBE902F0, &qword_1C12B38C0);
    (*(v4 + 8))(v19, v3);
LABEL_6:
    sub_1C0FD1A5C(v9, &qword_1EBE902E8, &unk_1C12A2E90);
    goto LABEL_7;
  }

  v21 = v30;
  (*(v4 + 32))(v30, &v9[v18], v3);
  sub_1C108B8C0(&qword_1EDE7BAB0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v22 = sub_1C1265DE0();
  v23 = *(v4 + 8);
  v23(v21, v3);
  sub_1C0FD1A5C(v14, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0FD1A5C(v17, &qword_1EBE902F0, &qword_1C12B38C0);
  v23(v19, v3);
  sub_1C0FD1A5C(v9, &qword_1EBE902F0, &qword_1C12B38C0);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (qword_1EDE82B78 != -1)
  {
    swift_once();
  }

  v20 = &qword_1EDE82B80;
LABEL_14:
  v24 = v20[3];
  v25 = *(v20 + 1);
  v26 = *v20;
  v27 = v32;
  *v32 = v26;
  *(v27 + 1) = v25;
  v27[3] = v24;

  return result;
}

uint64_t PhotosCollectionSearchResultCell.init(_:contentPosition:contentPadding:contentTypeVisibility:content:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = *a2;
  v17 = *a3;
  v18 = *a4;
  v33[0] = a7;
  v33[1] = a8;
  v33[2] = a10;
  v33[3] = a11;
  v19 = type metadata accessor for PhotosCollectionSearchResultCell(0, v33);
  v20 = v19[17];
  v33[0] = swift_getKeyPath();
  sub_1C0FFCFE4(v33);
  memcpy((a9 + v20), v33, 0xD1uLL);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_24_8(KeyPath);
  v22 = v19[19];
  *(a9 + v22) = swift_getKeyPath();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  OUTLINED_FUNCTION_21_5(v23);
  v24 = v19[20];
  *(a9 + v24) = swift_getKeyPath();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8, &qword_1C12A32C0);
  OUTLINED_FUNCTION_21_5(v25);
  v26 = v19[21];
  *(a9 + v26) = swift_getKeyPath();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428, &qword_1C12A3220);
  OUTLINED_FUNCTION_21_5(v27);
  v28 = swift_getKeyPath();
  OUTLINED_FUNCTION_24_8(v28);
  v29 = swift_getKeyPath();
  OUTLINED_FUNCTION_24_8(v29);
  v30 = swift_getKeyPath();
  OUTLINED_FUNCTION_24_8(v30);
  result = (*(*(a7 - 8) + 32))(a9, a1, a7);
  *(a9 + v19[13]) = v16;
  *(a9 + v19[14]) = v17;
  *(a9 + v19[15]) = v18;
  v32 = (a9 + v19[16]);
  *v32 = a5;
  v32[1] = a6;
  return result;
}

uint64_t PhotosCollectionSearchResultCell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v99 = *(a1 + 24);
  v108 = a1;
  v103 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  OUTLINED_FUNCTION_20_0();
  sub_1C1263190();
  v3 = OUTLINED_FUNCTION_47();
  v102 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
  OUTLINED_FUNCTION_20_0();
  sub_1C1263190();
  v100 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  v5 = sub_1C1263190();
  v6 = *(a1 + 40);
  OUTLINED_FUNCTION_0_0();
  v107 = sub_1C0FDB6D4(v7, &unk_1EBE92EC0, &qword_1C12A8E00, v8);
  v139[12] = v6;
  v139[13] = v107;
  OUTLINED_FUNCTION_3_3();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  v106 = sub_1C0FDB6D4(v10, &qword_1EBE91C40, &unk_1C12A7010, v11);
  v139[10] = WitnessTable;
  v139[11] = v106;
  v101 = v6;
  v12 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  v104 = sub_1C0FDB6D4(v13, &unk_1EBE92ED0, &unk_1C12A8E80, v14);
  v139[8] = v12;
  v139[9] = v104;
  swift_getWitnessTable();
  v15 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for PhotosDetailsPresentationSourceView(v15, v5, v16, v17);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C0, &qword_1C12AE8D0);
  OUTLINED_FUNCTION_6_0();
  sub_1C1263190();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C8, &qword_1C12AE8D8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D0, &qword_1C12AE8E0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D8, &qword_1C12AE8E8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0, &qword_1C12AE8F0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8, &qword_1C12AE8F8);
  OUTLINED_FUNCTION_14_13();
  v23 = swift_getWitnessTable();
  v24 = sub_1C1089684();
  v25 = sub_1C1089FD0();
  v139[0] = v108;
  v139[1] = MEMORY[0x1E6981CD8];
  v139[2] = v21;
  v139[3] = v22;
  v139[4] = v23;
  v139[5] = MEMORY[0x1E6981CD0];
  v139[6] = v24;
  v139[7] = v25;
  OUTLINED_FUNCTION_12_10();
  swift_getOpaqueTypeMetadata2();
  v26 = OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4(v26, v20, v27);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_0();
  v28 = sub_1C12655A0();
  OUTLINED_FUNCTION_22_2(255, v18, v19, v28);
  OUTLINED_FUNCTION_22();
  v29 = sub_1C1265B00();
  OUTLINED_FUNCTION_18_12(v29);
  OUTLINED_FUNCTION_6_0();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92630, &unk_1C12AE9A8);
  OUTLINED_FUNCTION_6_0();
  sub_1C1263C30();
  OUTLINED_FUNCTION_22();
  sub_1C12652C0();
  v30 = sub_1C1263190();
  OUTLINED_FUNCTION_52();
  sub_1C1263190();
  v31 = MEMORY[0x1E6981840];
  v32 = OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_22_2(v32, v33, v34, v31);
  OUTLINED_FUNCTION_22();
  v35 = sub_1C1265B00();
  OUTLINED_FUNCTION_18_12(v35);
  v109 = sub_1C12654C0();
  OUTLINED_FUNCTION_0();
  v98 = v36;
  MEMORY[0x1EEE9AC00](v37);
  v97 = &v95 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v96 = &v95 - v40;
  v41 = v99;
  OUTLINED_FUNCTION_4(255, v99, v30);
  OUTLINED_FUNCTION_22();
  v42 = sub_1C1265B00();
  OUTLINED_FUNCTION_18_12(v42);
  OUTLINED_FUNCTION_6_0();
  sub_1C12655A0();
  v43 = OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_4(v43, v44, v41);
  OUTLINED_FUNCTION_22();
  v45 = sub_1C1265B00();
  OUTLINED_FUNCTION_18_12(v45);
  OUTLINED_FUNCTION_6_0();
  sub_1C12655A0();
  sub_1C1263C30();
  v46 = OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_22_2(v46, v47, v31, v41);
  OUTLINED_FUNCTION_22();
  v48 = sub_1C1265B00();
  OUTLINED_FUNCTION_18_12(v48);
  OUTLINED_FUNCTION_6_0();
  sub_1C12654C0();
  sub_1C1263C30();
  OUTLINED_FUNCTION_20_0();
  sub_1C12652C0();
  OUTLINED_FUNCTION_26();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE92178, &unk_1C12AD460);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  v99 = sub_1C1263190();
  v102 = sub_1C1263190();
  v103 = sub_1C1263190();
  v49 = swift_getWitnessTable();
  OUTLINED_FUNCTION_26_6();
  v50 = swift_getWitnessTable();
  v137 = v49;
  v138 = v50;
  v51 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_11();
  v52 = swift_getWitnessTable();
  v135 = v51;
  v136 = v52;
  v134 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_11();
  v132 = swift_getWitnessTable();
  v133 = MEMORY[0x1E697E5D8];
  v53 = v108;
  v54 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_3();
  v57 = sub_1C0FDB6D4(v55, qword_1EBE92178, &unk_1C12AD460, v56);
  v130 = v54;
  v131 = v57;
  v128 = swift_getWitnessTable();
  v129 = v107;
  v126 = swift_getWitnessTable();
  v127 = v106;
  v58 = swift_getWitnessTable();
  v59 = v103;
  v124 = v58;
  v125 = v104;
  swift_getWitnessTable();
  v60 = OUTLINED_FUNCTION_11_0();
  type metadata accessor for PhotosDetailsPresentationSourceView(v60, v59, v61, v62);
  OUTLINED_FUNCTION_22();
  v106 = v63;
  v107 = sub_1C1263190();
  v64 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v66 = v65;
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v95 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v95 - v71;
  v73 = sub_1C1263C30();
  OUTLINED_FUNCTION_0();
  v104 = v74;
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v95 - v76;
  sub_1C107DE90(v53, v139);
  if (v139[0])
  {
    v78 = v97;
    sub_1C10801C4(v53);
    OUTLINED_FUNCTION_1_11();
    v79 = v109;
    swift_getWitnessTable();
    v108 = v73;
    v80 = v96;
    sub_1C0FDBA4C();
    v81 = *(v98 + 8);
    v81(v78, v79);
    sub_1C0FDBA4C();
    OUTLINED_FUNCTION_4_3();
    v82 = swift_getWitnessTable();
    v83 = sub_1C100D614();
    v122 = v82;
    v123 = v83;
    OUTLINED_FUNCTION_3_3();
    v120 = swift_getWitnessTable();
    v121 = MEMORY[0x1E697E5C0];
    OUTLINED_FUNCTION_26_6();
    swift_getWitnessTable();
    sub_1C1112E18();
    v81(v78, v79);
    v84 = v80;
    v73 = v108;
    v81(v84, v79);
  }

  else
  {
    sub_1C107F538(v53, v69);
    OUTLINED_FUNCTION_4_3();
    v85 = swift_getWitnessTable();
    v86 = sub_1C100D614();
    v112 = v85;
    v113 = v86;
    OUTLINED_FUNCTION_9_4();
    v110 = swift_getWitnessTable();
    v111 = MEMORY[0x1E697E5C0];
    swift_getWitnessTable();
    OUTLINED_FUNCTION_26_6();
    sub_1C0FDBA4C();
    v87 = *(v66 + 8);
    v88 = OUTLINED_FUNCTION_26_6();
    v87(v88);
    sub_1C0FDBA4C();
    OUTLINED_FUNCTION_1_11();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_26_6();
    sub_1C1112D68();
    v89 = OUTLINED_FUNCTION_26_6();
    v87(v89);
    (v87)(v72, v64);
  }

  v90 = swift_getWitnessTable();
  v91 = sub_1C100D614();
  v118 = v90;
  v119 = v91;
  OUTLINED_FUNCTION_9_4();
  v116 = swift_getWitnessTable();
  v117 = MEMORY[0x1E697E5C0];
  v92 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_11();
  v93 = swift_getWitnessTable();
  v114 = v92;
  v115 = v93;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  return (*(v104 + 8))(v77, v73);
}

uint64_t sub_1C107F538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = sub_1C12629F0();
  v74 = *(v3 - 8);
  v75 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v73 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C8, &qword_1C12AE8D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D0, &qword_1C12AE8E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D8, &qword_1C12AE8E8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0, &qword_1C12AE8F0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8, &qword_1C12AE8F8);
  v72 = a1;
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1C1089684();
  v9 = sub_1C1089FD0();
  v103[0] = a1;
  v103[1] = MEMORY[0x1E6981CD8];
  v103[2] = v5;
  v103[3] = v6;
  v103[4] = WitnessTable;
  v103[5] = MEMORY[0x1E6981CD0];
  v103[6] = v8;
  v103[7] = v9;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92630, &unk_1C12AE9A8);
  sub_1C1263C30();
  sub_1C12652C0();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v70 = sub_1C12655A0();
  v67 = sub_1C1263C30();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  sub_1C1263C30();
  v71 = sub_1C12652C0();
  v10 = sub_1C1263190();
  v69 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  *&v77 = v58 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE92178, &unk_1C12AD460);
  v12 = sub_1C1263190();
  v68 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v65 = v58 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  v14 = sub_1C1263190();
  v66 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v64 = v58 - v15;
  v16 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v101 = v16;
  v102 = v17;
  v18 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v99 = v18;
  v100 = v19;
  v98 = swift_getWitnessTable();
  v96 = swift_getWitnessTable();
  v97 = MEMORY[0x1E697E5D8];
  v71 = v10;
  v20 = swift_getWitnessTable();
  v21 = sub_1C0FDB6D4(&qword_1EDE7BA68, qword_1EBE92178, &unk_1C12AD460, MEMORY[0x1E6980468]);
  v58[1] = v20;
  v94 = v20;
  v95 = v21;
  v70 = v12;
  v22 = swift_getWitnessTable();
  v23 = sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0, &qword_1C12A8E00, MEMORY[0x1E6980A18]);
  v59 = v22;
  v92 = v22;
  v93 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
  v90 = v24;
  v91 = v25;
  v26 = swift_getWitnessTable();
  v27 = sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0, &unk_1C12A8E80, MEMORY[0x1E697F940]);
  v88 = v26;
  v89 = v27;
  v28 = swift_getWitnessTable();
  v67 = v14;
  v58[0] = v28;
  v30 = type metadata accessor for PhotosDetailsPresentationSourceView(0, v14, v28, v29);
  v60 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v58 - v31;
  v33 = sub_1C1263190();
  v62 = *(v33 - 8);
  v63 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v61 = v58 - v34;
  v35 = v72;
  sub_1C1080640(v72, v77);
  sub_1C107D294(v35, v103);
  LOBYTE(v18) = v106;
  v36 = v73;
  sub_1C107D604(v35, v73);
  v37 = v35;
  v38 = sub_1C107D4B0(v35);
  v39 = v38;
  if (v18 & 1) != 0 || (v38)
  {
    v87[0] = v104;
    v87[1] = v105;
    sub_1C1012620(v104, *(&v104 + 1), v105, *(&v105 + 1));
    sub_1C10C37D8(v36, v39 & 1);
    v40 = v41;
    (*(v74 + 8))(v36, v75);
    sub_1C1001C84(*&v87[0], *(&v87[0] + 1), *&v87[1], *(&v87[1] + 1));
  }

  else
  {
    v40 = sub_1C1265170();
    (*(v74 + 8))(v36, v75);
  }

  sub_1C100C7D0(v103);
  *&v87[0] = v40;
  v42 = v71;
  sub_1C100C6E8(v71);
  v43 = v65;
  v44 = v77;
  sub_1C1264960();

  (*(v69 + 8))(v44, v42);
  v45 = v78;
  sub_1C107D294(v37, v87);
  v46 = v64;
  v47 = v70;
  View.cellStyle(for:)(v87, v59, v64);
  memcpy(v86, v87, sizeof(v86));
  sub_1C100C7D0(v86);
  (*(v68 + 8))(v43, v47);
  v85 = 2;
  v84 = 2;
  sub_1C107D294(v37, v87);
  v48 = v87[0];
  v77 = v87[1];
  v49 = *&v87[2];

  sub_1C100C7D0(v87);
  v81 = v48;
  v82 = v77;
  v83 = v49;
  v50 = v67;
  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(&v85, 0, 0, v67, v58[0], v32);

  (*(v66 + 8))(v46, v50);
  *(&v82 + 1) = *(v37 + 16);
  v51 = *(&v82 + 1);
  v83 = *(*(v37 + 32) + 16);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v81);
  (*(*(v51 - 8) + 16))(boxed_opaque_existential_1, v45, v51);
  v53 = swift_getWitnessTable();
  v54 = v61;
  View.selectionStyle(for:)(&v81, v30, v53);
  (*(v60 + 8))(v32, v30);
  __swift_destroy_boxed_opaque_existential_0Tm(&v81);
  sub_1C107DBE0(v37);
  v55 = sub_1C100D614();
  v79 = v53;
  v80 = v55;
  v56 = v63;
  swift_getWitnessTable();
  sub_1C1264F50();
  return (*(v62 + 8))(v54, v56);
}

uint64_t sub_1C10801C4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  v1 = sub_1C1263190();
  sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0, &qword_1C12A8E00, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
  swift_getWitnessTable();
  sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0, &unk_1C12A8E80, MEMORY[0x1E697F940]);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for PhotosDetailsPresentationSourceView(255, v1, WitnessTable, v3);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C0, &qword_1C12AE8D0);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C8, &qword_1C12AE8D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D0, &qword_1C12AE8E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D8, &qword_1C12AE8E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0, &qword_1C12AE8F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8, &qword_1C12AE8F8);
  swift_getWitnessTable();
  sub_1C1089684();
  sub_1C1089FD0();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92630, &unk_1C12AE9A8);
  sub_1C1263C30();
  sub_1C12652C0();
  sub_1C1263190();
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  v4 = sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C1012734(v4);
  return sub_1C12654B0();
}

uint64_t sub_1C1080640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C8, &qword_1C12AE8D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D0, &qword_1C12AE8E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D8, &qword_1C12AE8E8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0, &qword_1C12AE8F0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8, &qword_1C12AE8F8);
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1C1089684();
  v8 = sub_1C1089FD0();
  v42[0] = a1;
  v42[1] = MEMORY[0x1E6981CD8];
  v42[2] = v4;
  v42[3] = v5;
  v42[4] = WitnessTable;
  v42[5] = MEMORY[0x1E6981CD0];
  v42[6] = v7;
  v42[7] = v8;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92630, &unk_1C12AE9A8);
  sub_1C1263C30();
  sub_1C12652C0();
  sub_1C1263190();
  v9 = v3;
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v32[4] = sub_1C12655A0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v32[5] = sub_1C12655A0();
  v32[2] = sub_1C1263C30();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  v32[3] = sub_1C12654C0();
  sub_1C1263C30();
  v10 = sub_1C12652C0();
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v32 - v11;
  v13 = sub_1C1263190();
  v34 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v32 - v17;
  v19 = a1;
  v20 = a1;
  v21 = v35;
  v22 = sub_1C107DFF0(v20);
  v32[0] = v19;
  v32[1] = v32;
  v23 = 12.0;
  if (v22)
  {
    v23 = 0.0;
  }

  v37 = *(v19 + 16);
  v38 = v9;
  v39 = *(v19 + 32);
  v40 = v21;
  v41 = v23;
  v24 = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  v42[31] = v24;
  v42[32] = v25;
  v26 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v42[29] = v26;
  v42[30] = v27;
  v28 = swift_getWitnessTable();
  sub_1C12652B0();
  if (*(v21 + *(v32[0] + 56)) == 1)
  {
    sub_1C107D294(v32[0], v42);
    sub_1C100C7D0(v42);
  }

  v42[28] = v28;
  v29 = swift_getWitnessTable();
  sub_1C1264FA0();
  (*(v33 + 8))(v12, v10);
  v42[26] = v29;
  v42[27] = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v30 = *(v34 + 8);
  v30(v15, v13);
  sub_1C0FDBA4C();
  return (v30)(v18, v13);
}

uint64_t sub_1C1080CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X8>)
{
  v104 = a5;
  v100 = a6;
  v101 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C8, &qword_1C12AE8D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D0, &qword_1C12AE8E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D8, &qword_1C12AE8E8);
  v91 = a2;
  v136[0] = a2;
  v136[1] = a3;
  v88 = a4;
  v136[2] = a4;
  v136[3] = a5;
  *&v86 = type metadata accessor for PhotosCollectionSearchResultCell(255, v136);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0, &qword_1C12AE8F0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8, &qword_1C12AE8F8);
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1C1089684();
  v14 = sub_1C1089FD0();
  v136[0] = v86;
  v136[1] = MEMORY[0x1E6981CD8];
  v136[2] = v10;
  v136[3] = v11;
  v136[4] = WitnessTable;
  v136[5] = MEMORY[0x1E6981CD0];
  v136[6] = v13;
  v136[7] = v14;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  v15 = sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92630, &unk_1C12AE9A8);
  v89 = v15;
  v90 = sub_1C1263C30();
  v92 = sub_1C12652C0();
  v16 = sub_1C1263190();
  v94 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v93 = &v76 - v17;
  v95 = v18;
  v99 = sub_1C1263190();
  v96 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v97 = &v76 - v21;
  v85 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v78 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  v87 = a3;
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  v24 = sub_1C1263190();
  v83 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v82 = &v76 - v25;
  v26 = sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0, &qword_1C12A8E00, MEMORY[0x1E6980A18]);
  v131 = v104;
  v132 = v26;
  v27 = swift_getWitnessTable();
  v28 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
  v129 = v27;
  v29 = v101;
  v130 = v28;
  v30 = swift_getWitnessTable();
  v31 = sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0, &unk_1C12A8E80, MEMORY[0x1E697F940]);
  v127 = v30;
  v128 = v31;
  v77 = swift_getWitnessTable();
  v33 = type metadata accessor for PhotosDetailsPresentationSourceView(0, v24, v77, v32);
  v79 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v76 - v34;
  v36 = sub_1C1263190();
  v81 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v80 = &v76 - v37;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C0, &qword_1C12AE8D0);
  v84 = sub_1C1263190();
  v102 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v103 = &v76 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v105 = &v76 - v40;
  v41 = swift_checkMetadataState();
  v42 = sub_1C1081A3C(v41, v133);
  v43 = v78;
  (*(v29 + *(v41 + 64)))(v42);
  memcpy(v126, v135, sizeof(v126));
  sub_1C100D690(v133, v136);
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v44 = qword_1EDE82B08;
  v45 = qword_1EDE82B10;
  v86 = xmmword_1EDE82B18;
  v46 = qword_1EDE82B28;

  *&v125[0] = v44;
  *(&v125[0] + 1) = v45;
  v125[1] = v86;
  *&v125[2] = v46;
  memcpy(&v125[2] + 8, v126, 0xA8uLL);
  v47 = v82;
  v48 = v87;
  View.cellStyle(for:)(v125, v104, v82);
  memcpy(v136, v125, 0xD0uLL);
  sub_1C100C7D0(v136);
  (*(v85 + 8))(v43, v48);
  LOBYTE(v122) = 2;
  LOBYTE(v106) = 2;
  v125[0] = v133[0];
  v125[1] = v133[1];
  *&v125[2] = v134;

  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(&v122, 0, 0, v24, v77, v35);

  (*(v83 + 8))(v47, v24);
  v49 = *(v88 + 16);
  v50 = v91;
  *(&v125[1] + 1) = v91;
  *&v125[2] = v49;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v125);
  (*(*(v50 - 8) + 16))(boxed_opaque_existential_1, v101, v50);
  v52 = swift_getWitnessTable();
  v53 = v80;
  View.selectionStyle(for:)(v125, v33, v52);
  (*(v79 + 8))(v35, v33);
  __swift_destroy_boxed_opaque_existential_0Tm(v125);
  sub_1C107E448(v41, v125);
  v122 = *&v125[0];
  v123 = *(v125 + 8);
  v124 = *(&v125[1] + 1);
  v54 = sub_1C100D614();
  v120 = v52;
  v121 = v54;
  v55 = swift_getWitnessTable();
  sub_1C100AE3C();
  v56 = v103;
  View.applyShadow<A>(_:shape:)();

  (*(v81 + 8))(v53, v36);
  v57 = sub_1C0FDB6D4(&qword_1EDE7BC58, &qword_1EBE924C0, &qword_1C12AE8D0, MEMORY[0x1E697F940]);
  v118 = v55;
  v119 = v57;
  v58 = v84;
  v88 = swift_getWitnessTable();
  sub_1C0FDBA4C();
  v59 = *(v102 + 8);
  v91 = v102 + 8;
  v104 = v59;
  v59(v56, v58);
  v60 = v93;
  sub_1C1081AE4(v41, v93);
  sub_1C12644A0();
  sub_1C107E020(v41);
  v61 = swift_getWitnessTable();
  v62 = sub_1C108B224();
  v116 = v61;
  v117 = v62;
  v115 = swift_getWitnessTable();
  v63 = swift_getWitnessTable();
  v64 = MEMORY[0x1E697E5D8];
  v113 = v63;
  v114 = MEMORY[0x1E697E5D8];
  v65 = v95;
  v66 = swift_getWitnessTable();
  v67 = v98;
  sub_1C1264FB0();
  (*(v94 + 8))(v60, v65);
  v111 = v66;
  v112 = v64;
  v68 = v99;
  v69 = swift_getWitnessTable();
  v70 = v97;
  sub_1C0FDBA4C();
  v71 = v96;
  v72 = *(v96 + 8);
  v72(v67, v68);
  v73 = v103;
  (*(v102 + 16))(v103, v105, v58);
  *&v125[0] = v73;
  (*(v71 + 16))(v67, v70, v68);
  v109 = 0;
  v110 = 0;
  *(&v125[0] + 1) = v67;
  *&v125[1] = &v109;
  v122 = v58;
  *&v123 = v68;
  *(&v123 + 1) = MEMORY[0x1E6981840];
  v106 = v88;
  v107 = v69;
  v108 = MEMORY[0x1E6981838];
  sub_1C119EE80(v125, 3, &v122);
  sub_1C100C7D0(v133);
  v72(v70, v68);
  v74 = v104;
  v104(v105, v58);
  v72(v67, v68);
  return v74(v73, v58);
}

__n128 sub_1C1081A3C@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  sub_1C107D294(a1, a2);
  if (qword_1EDE82B78 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDE82B80;
  v6 = *&qword_1EDE82B88;
  v4 = qword_1EDE82B98;

  a2->n128_u64[1] = v3;
  result = v6;
  a2[1] = v6;
  a2[2].n128_u64[0] = v4;
  return result;
}

uint64_t sub_1C1081AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C8, &qword_1C12AE8D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D0, &qword_1C12AE8E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D8, &qword_1C12AE8E8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0, &qword_1C12AE8F0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8, &qword_1C12AE8F8);
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1C1089684();
  v7 = sub_1C1089FD0();
  v32[0] = a1;
  v32[1] = MEMORY[0x1E6981CD8];
  v32[2] = v3;
  v32[3] = v4;
  v32[4] = WitnessTable;
  v32[5] = MEMORY[0x1E6981CD0];
  v32[6] = v6;
  v32[7] = v7;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92630, &unk_1C12AE9A8);
  sub_1C1263C30();
  v8 = sub_1C12652C0();
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = sub_1C1263190();
  v26 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = *(a1 + 32);
  v29 = *(a1 + 16);
  v30 = v17;
  v18 = v27;
  v31 = v27;
  v19 = swift_getWitnessTable();
  v20 = sub_1C108B224();
  v32[29] = v19;
  v32[30] = v20;
  v21 = swift_getWitnessTable();
  sub_1C12652B0();
  if ((*(v18 + *(a1 + 56)) & 1) == 0)
  {
    sub_1C107D294(a1, v32);
    sub_1C100C7D0(v32);
  }

  v32[28] = v21;
  v22 = swift_getWitnessTable();
  sub_1C1264FA0();
  (*(v25 + 8))(v10, v8);
  v32[26] = v22;
  v32[27] = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v23 = *(v26 + 8);
  v23(v13, v11);
  sub_1C0FDBA4C();
  return (v23)(v16, v11);
}

uint64_t sub_1C1081FC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  result = (*(v1 + 40))(v2, v1);
  if (!v4)
  {
    return (*(v1 + 32))(v2, v1);
  }

  return result;
}

BOOL sub_1C1082028(uint64_t a1)
{
  v2 = sub_1C1263130();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1081FC0(a1);
  if (!v6)
  {
    return 1;
  }

  sub_1C107D808(a1, v5);
  v7 = (*(v3 + 88))(v5, v2);
  if (v7 == *MEMORY[0x1E697E718] || v7 == *MEMORY[0x1E697E6F0] || v7 == *MEMORY[0x1E697E6F8] || v7 == *MEMORY[0x1E697E6E8])
  {
    v11 = sub_1C1265F00();

    return v11 < 15;
  }

  v14 = v7;
  if (v7 == *MEMORY[0x1E697E708])
  {
    v15 = sub_1C1265F00();

    return v15 < 13;
  }

  if (v7 == *MEMORY[0x1E697E720])
  {
    v16 = sub_1C1265F00();

    return v16 < 11;
  }

  if (v7 == *MEMORY[0x1E697E728])
  {
    v17 = sub_1C1265F00();

    return v17 < 9;
  }

  if (v7 == *MEMORY[0x1E697E6C0] || v7 == *MEMORY[0x1E697E6C8] || v7 == *MEMORY[0x1E697E6D0] || v7 == *MEMORY[0x1E697E6D8])
  {
  }

  else
  {
    v18 = *MEMORY[0x1E697E6E0];

    if (v14 != v18)
    {
      (*(v3 + 8))(v5, v2);
    }
  }

  return 0;
}

uint64_t sub_1C10822BC(uint64_t a1)
{
  v2 = sub_1C1265E50();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1265E30();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v45 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1261E50();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92778, &unk_1C12AEE40);
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = sub_1C1263EB0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8, &unk_1C12A2E90);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v44 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v38 - v23;
  v25 = (*(*(a1 + 32) + 48))(*(a1 + 16), v22);
  v26 = 0;
  if ((v27 & 1) == 0)
  {
    v38 = v25;
    sub_1C107DA0C(a1, v24);
    (*(v11 + 104))(v20, *MEMORY[0x1E697FF38], v10);
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v10);
    v28 = *(v13 + 48);
    sub_1C0FDB800(v24, v15, &qword_1EBE902F0, &qword_1C12B38C0);
    sub_1C0FDB800(v20, &v15[v28], &qword_1EBE902F0, &qword_1C12B38C0);
    if (__swift_getEnumTagSinglePayload(v15, 1, v10) == 1)
    {
      sub_1C0FD1A5C(v20, &qword_1EBE902F0, &qword_1C12B38C0);
      sub_1C0FD1A5C(v24, &qword_1EBE902F0, &qword_1C12B38C0);
      if (__swift_getEnumTagSinglePayload(&v15[v28], 1, v10) == 1)
      {
        sub_1C0FD1A5C(v15, &qword_1EBE902F0, &qword_1C12B38C0);
LABEL_10:
        v49 = v38;
        sub_1C1261E30();
        sub_1C100DC5C();
        v35 = v41;
        sub_1C1261B60();
        sub_1C0FDB6D4(&qword_1EBE92780, &qword_1EBE92778, &unk_1C12AEE40, MEMORY[0x1E6968908]);
        v36 = v43;
        sub_1C12667E0();
        (*(v42 + 8))(v35, v36);
        return v50;
      }
    }

    else
    {
      v29 = v44;
      sub_1C0FDB800(v15, v44, &qword_1EBE902F0, &qword_1C12B38C0);
      if (__swift_getEnumTagSinglePayload(&v15[v28], 1, v10) != 1)
      {
        v31 = &v15[v28];
        v32 = v39;
        (*(v11 + 32))(v39, v31, v10);
        sub_1C108B8C0(&qword_1EDE7BAB0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
        v33 = sub_1C1265DE0();
        v34 = *(v11 + 8);
        v34(v32, v10);
        sub_1C0FD1A5C(v20, &qword_1EBE902F0, &qword_1C12B38C0);
        sub_1C0FD1A5C(v24, &qword_1EBE902F0, &qword_1C12B38C0);
        v34(v29, v10);
        sub_1C0FD1A5C(v15, &qword_1EBE902F0, &qword_1C12B38C0);
        if (v33)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      }

      sub_1C0FD1A5C(v20, &qword_1EBE902F0, &qword_1C12B38C0);
      sub_1C0FD1A5C(v24, &qword_1EBE902F0, &qword_1C12B38C0);
      (*(v11 + 8))(v29, v10);
    }

    sub_1C0FD1A5C(v15, &qword_1EBE902E8, &unk_1C12A2E90);
LABEL_8:
    sub_1C1265E20();
    sub_1C1265E10();
    v50 = v38;
    sub_1C1265E00();
    sub_1C1265E10();
    v30 = v46;
    sub_1C1265E40();
    v26 = static String.photosSwiftUICoreLocalized(_:)(v30);
    (*(v47 + 8))(v30, v48);
  }

  return v26;
}

uint64_t sub_1C10829E4(uint64_t a1)
{
  v2 = sub_1C1261CB0();
  v64 = *(v2 - 8);
  v65 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v62 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1C1261CD0();
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C1261D30();
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1261D10();
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1C1261D40();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v49 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v48 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v48 - v13;
  v14 = sub_1C1261E80();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C1261E90();
  v66 = *(v18 - 8);
  v67 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v48 - v22;
  v24 = sub_1C1261DE0();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v48 - v30;
  (*(*(a1 + 32) + 64))(*(a1 + 16), v29);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    sub_1C0FD1A5C(v23, &qword_1EBE91E68, &qword_1C12AC940);
    return 0;
  }

  else
  {
    (*(v25 + 32))(v31, v23, v24);
    sub_1C1261E70();
    sub_1C1261DA0();
    (*(v15 + 104))(v17, *MEMORY[0x1E6969A68], v14);
    v33 = sub_1C1261E60();
    (*(v15 + 8))(v17, v14);
    v36 = *(v25 + 8);
    v35 = v25 + 8;
    v34 = v36;
    v36(v27, v24);
    v37 = (*(v66 + 8))(v20, v67);
    if (v33)
    {
      v38 = v60;
      sub_1C1261CC0();
      v39 = v62;
      sub_1C1261CA0();
      v32 = sub_1C1261DB0();
      (*(v64 + 8))(v39, v65);
      (*(v61 + 8))(v38, v63);
      v34(v31, v24);
    }

    else
    {
      v40 = v49;
      MEMORY[0x1C68EB220](v37);
      v41 = v51;
      sub_1C1261D00();
      v42 = v50;
      sub_1C1261CE0();
      (*(v52 + 8))(v41, v53);
      v68 = v35;
      v43 = *(v55 + 8);
      v44 = v57;
      v43(v40, v57);
      v45 = v56;
      sub_1C1261D20();
      v46 = v54;
      sub_1C1261CF0();
      (*(v58 + 8))(v45, v59);
      v43(v42, v44);
      sub_1C108B8C0(&qword_1EBE92788, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
      sub_1C1261DC0();
      v43(v46, v44);
      v34(v31, v24);
      return v69;
    }
  }

  return v32;
}

uint64_t sub_1C108317C(uint64_t a1)
{
  if (*(v1 + *(a1 + 60)))
  {
    return 0;
  }

  else
  {
    return (*(*(a1 + 32) + 104))(*(a1 + 16));
  }
}

uint64_t sub_1C10831C4(uint64_t a1)
{
  if (*(v1 + *(a1 + 60)))
  {
    return sub_1C10829E4(a1);
  }

  else
  {
    return (*(*(a1 + 32) + 96))(*(a1 + 16));
  }
}

uint64_t sub_1C10831F0(uint64_t a1)
{
  if ((*(v1 + *(a1 + 60)) & 1) != 0 || !*(v1 + *(a1 + 52)))
  {
    return sub_1C10822BC(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C108322C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a1;
  v50 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92630, &unk_1C12AE9A8);
  MEMORY[0x1EEE9AC00](v10);
  v42 = (&v42 - v11);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C8, &qword_1C12AE8D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D0, &qword_1C12AE8E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D8, &qword_1C12AE8E8);
  v45 = a2;
  v46 = a3;
  v53 = a2;
  v54 = a3;
  v47 = a4;
  v48 = a5;
  v55 = a4;
  v56 = a5;
  v12 = type metadata accessor for PhotosCollectionSearchResultCell(255, &v53);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0, &qword_1C12AE8F0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8, &qword_1C12AE8F8);
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1C1089684();
  v17 = sub_1C1089FD0();
  v53 = v12;
  v54 = MEMORY[0x1E6981CD8];
  v55 = v13;
  v56 = v14;
  v57 = WitnessTable;
  v58 = MEMORY[0x1E6981CD0];
  v59 = v16;
  v60 = v17;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  v18 = sub_1C12655C0();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v42 - v23;
  v49 = v10;
  v25 = sub_1C1263C30();
  v43 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v42 - v26;
  v28 = swift_checkMetadataState();
  v29 = v44;
  if (*(v44 + *(v28 + 52)) == 2)
  {
    v30 = sub_1C12659B0();
    MEMORY[0x1EEE9AC00](v30);
    v31 = v46;
    *(&v42 - 6) = v45;
    *(&v42 - 5) = v31;
    v32 = v48;
    *(&v42 - 4) = v47;
    *(&v42 - 3) = v32;
    *(&v42 - 2) = v29;
    sub_1C12655B0();
    swift_getWitnessTable();
    sub_1C0FDBA4C();
    v33 = *(v19 + 8);
    v33(v21, v18);
    sub_1C0FDBA4C();
    sub_1C108B224();
    sub_1C1112D68();
    v33(v21, v18);
    v33(v24, v18);
  }

  else
  {
    v34 = sub_1C1263AB0();
    v35 = v42;
    *v42 = v34;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE926F8, &qword_1C12AED58);
    sub_1C108628C(v45, v46, v47, v48, v35 + *(v36 + 44));
    KeyPath = swift_getKeyPath();
    v38 = v35 + *(v49 + 36);
    *v38 = KeyPath;
    *(v38 + 8) = 1;
    *(v38 + 16) = 0;
    swift_getWitnessTable();
    sub_1C108B224();
    sub_1C1112E18();
    sub_1C0FD1A5C(v35, &qword_1EBE92630, &unk_1C12AE9A8);
  }

  v39 = swift_getWitnessTable();
  v40 = sub_1C108B224();
  v51 = v39;
  v52 = v40;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  return (*(v43 + 8))(v27, v25);
}

uint64_t sub_1C1083800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v52 = a5;
  v54 = a4;
  v53 = a3;
  v55 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D8, &qword_1C12AE8E8);
  v66 = a2;
  v67 = a3;
  v68 = a4;
  v69 = a5;
  v11 = type metadata accessor for PhotosCollectionSearchResultCell(255, &v66);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0, &qword_1C12AE8F0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8, &qword_1C12AE8F8);
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1C1089684();
  v16 = sub_1C1089FD0();
  v66 = v11;
  v67 = MEMORY[0x1E6981CD8];
  v68 = v12;
  v69 = v13;
  v70 = WitnessTable;
  v71 = MEMORY[0x1E6981CD0];
  v72 = v15;
  v73 = v16;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v49 = sub_1C1265B00();
  v48 = swift_getWitnessTable();
  v17 = sub_1C12655A0();
  v50 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v45 = &v43 - v21;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE924D0, &qword_1C12AE8E0);
  MEMORY[0x1EEE9AC00](v51);
  v47 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v43 - v24;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE924C8, &qword_1C12AE8D8);
  MEMORY[0x1EEE9AC00](v46);
  v56 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v43 - v28;
  *v29 = sub_1C1263AB0();
  *(v29 + 1) = 0;
  v29[16] = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92700, &qword_1C12AED90);
  v31 = v53;
  v32 = v54;
  v33 = v52;
  sub_1C1083DEC(a2, v53, v54, v52, &v29[*(v30 + 44)]);
  *v25 = sub_1C1263AB0();
  *(v25 + 1) = 0;
  v25[16] = 0;
  v34 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92708, &qword_1C12AED98) + 44)];
  v44 = v25;
  sub_1C1084F98(a2, v31, v32, v33, v34);
  sub_1C1263AB0();
  v57 = a2;
  v58 = v31;
  v59 = v32;
  v60 = v33;
  v61 = a1;
  sub_1C1265590();
  v35 = swift_getWitnessTable();
  v36 = v45;
  sub_1C0FDBA4C();
  v37 = v50;
  v38 = *(v50 + 8);
  v38(v19, v17);
  v39 = v56;
  sub_1C0FDB800(v29, v56, &qword_1EBE924C8, &qword_1C12AE8D8);
  v66 = v39;
  v40 = v25;
  v41 = v47;
  sub_1C0FDB800(v40, v47, &qword_1EBE924D0, &qword_1C12AE8E0);
  v67 = v41;
  (*(v37 + 16))(v19, v36, v17);
  v68 = v19;
  v65[0] = v46;
  v65[1] = v51;
  v65[2] = v17;
  v62 = sub_1C108B350();
  v63 = sub_1C108B408();
  v64 = v35;
  sub_1C119EE80(&v66, 3, v65);
  v38(v36, v17);
  sub_1C0FD1A5C(v44, &qword_1EBE924D0, &qword_1C12AE8E0);
  sub_1C0FD1A5C(v29, &qword_1EBE924C8, &qword_1C12AE8D8);
  v38(v19, v17);
  sub_1C0FD1A5C(v41, &qword_1EBE924D0, &qword_1C12AE8E0);
  return sub_1C0FD1A5C(v56, &qword_1EBE924C8, &qword_1C12AE8D8);
}

uint64_t sub_1C1083DEC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v33 = a2;
  v34 = a3;
  v36 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92500, &qword_1C12AE900);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92740, &qword_1C12AEDB0);
  MEMORY[0x1EEE9AC00](v32);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE927A0, &qword_1C12AEE90);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - v20;
  v37[0] = a1;
  v37[1] = v33;
  v37[2] = v34;
  v37[3] = a4;
  v22 = type metadata accessor for PhotosCollectionSearchResultCell(0, v37);
  sub_1C108412C(1, v22, v14);
  sub_1C108B5D0();
  sub_1C1265090();
  sub_1C0FD1A5C(v14, &qword_1EBE92740, &qword_1C12AEDB0);
  sub_1C108476C(v22, v12);
  KeyPath = swift_getKeyPath();
  v24 = &v12[*(v8 + 44)];
  *v24 = KeyPath;
  *(v24 + 1) = 1;
  v24[16] = 0;
  v25 = *(v16 + 16);
  v25(v18, v21, v15);
  v26 = v35;
  sub_1C0FDB800(v12, v35, &qword_1EBE92500, &qword_1C12AE900);
  v27 = v36;
  v25(v36, v18, v15);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE927A8, &qword_1C12AEE98);
  sub_1C0FDB800(v26, &v27[*(v28 + 48)], &qword_1EBE92500, &qword_1C12AE900);
  sub_1C0FD1A5C(v12, &qword_1EBE92500, &qword_1C12AE900);
  v29 = *(v16 + 8);
  v29(v21, v15);
  sub_1C0FD1A5C(v26, &qword_1EBE92500, &qword_1C12AE900);
  return (v29)(v18, v15);
}

uint64_t sub_1C108412C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LODWORD(v67) = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FE0, &qword_1C12A7730);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v54 - v7;
  v9 = sub_1C1264830();
  v64 = *(v9 - 8);
  v65 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C1264680();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92758, &qword_1C12AEDB8);
  MEMORY[0x1EEE9AC00](v66);
  v16 = &v54 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92790, &qword_1C12AEE50);
  v60 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v59 = &v54 - v18;
  v62 = a2;
  v63 = v3;
  v19 = sub_1C1081FC0(a2);
  if (v20 || (v67 & 1) != 0)
  {
    v55 = v17;
    v56 = v6;
    v57 = a3;
    v22 = 0xE000000000000000;
    if (v20)
    {
      v22 = v20;
      v23 = v19;
    }

    else
    {
      v23 = 0;
    }

    v68 = v23;
    v69 = v22;
    sub_1C0FDB9AC();
    v24 = sub_1C12648F0();
    v67 = v8;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    sub_1C1264530();
    (*(v12 + 104))(v14, *MEMORY[0x1E6980EA8], v11);
    sub_1C12646C0();

    (*(v12 + 8))(v14, v11);
    sub_1C1264620();
    sub_1C1264670();

    v30 = sub_1C1264870();
    v32 = v31;
    v34 = v33;

    sub_1C0FDB8E8(v25, v27, v29 & 1);

    LODWORD(v68) = sub_1C1263E40();
    v35 = sub_1C1264850();
    v37 = v36;
    v39 = v38;
    v58 = v40;
    sub_1C0FDB8E8(v30, v32, v34 & 1);

    v42 = v64;
    v41 = v65;
    if (*(v63 + *(v62 + 52)) == 2)
    {
      v43 = MEMORY[0x1E6980FA8];
    }

    else
    {
      v43 = MEMORY[0x1E6980FB0];
    }

    v44 = v61;
    (*(v64 + 104))(v61, *v43, v65);
    KeyPath = swift_getKeyPath();
    v46 = &v16[*(v66 + 36)];
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93130, &qword_1C12AEDC0);
    (*(v42 + 32))(v46 + *(v47 + 28), v44, v41);
    *v46 = KeyPath;
    *v16 = v35;
    *(v16 + 1) = v37;
    v16[16] = v39 & 1;
    *(v16 + 3) = v58;
    v48 = v67;
    v49 = *MEMORY[0x1E697E6D8];
    v50 = sub_1C1263130();
    (*(*(v50 - 8) + 104))(v48, v49, v50);
    sub_1C108B8C0(&qword_1EDE7BF90, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
    result = sub_1C1265DE0();
    if (result)
    {
      sub_1C108B6F0();
      sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0, &qword_1C12A7730, MEMORY[0x1E69E6ED8]);
      v51 = v59;
      sub_1C1264BC0();
      sub_1C0FD1A5C(v48, &qword_1EBE92FE0, &qword_1C12A7730);
      sub_1C0FD1A5C(v16, &qword_1EBE92758, &qword_1C12AEDB8);
      v52 = v57;
      v53 = v55;
      (*(v60 + 32))(v57, v51, v55);
      return __swift_storeEnumTagSinglePayload(v52, 0, 1, v53);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v17);
  }

  return result;
}

uint64_t sub_1C108476C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FE0, &qword_1C12A7730);
  MEMORY[0x1EEE9AC00](v43);
  v50 = &v41 - v3;
  v48 = sub_1C1264680();
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92508, &unk_1C12AE908);
  MEMORY[0x1EEE9AC00](v49);
  v6 = &v41 - v5;
  v7 = sub_1C1263EB0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8, &unk_1C12A2E90);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v42 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - v20;
  v46 = a1;
  sub_1C107DA0C(a1, &v41 - v20);
  (*(v8 + 104))(v18, *MEMORY[0x1E697FF40], v7);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v7);
  v22 = *(v11 + 56);
  sub_1C0FDB800(v21, v13, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0FDB800(v18, &v13[v22], &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v7) == 1)
  {
    sub_1C0FD1A5C(v18, &qword_1EBE902F0, &qword_1C12B38C0);
    sub_1C0FD1A5C(v21, &qword_1EBE902F0, &qword_1C12B38C0);
    if (__swift_getEnumTagSinglePayload(&v13[v22], 1, v7) == 1)
    {
      sub_1C0FD1A5C(v13, &qword_1EBE902F0, &qword_1C12B38C0);
      v23 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v24 = v42;
  sub_1C0FDB800(v13, v42, &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(&v13[v22], 1, v7) == 1)
  {
    sub_1C0FD1A5C(v18, &qword_1EBE902F0, &qword_1C12B38C0);
    sub_1C0FD1A5C(v21, &qword_1EBE902F0, &qword_1C12B38C0);
    (*(v8 + 8))(v24, v7);
LABEL_6:
    sub_1C0FD1A5C(v13, &qword_1EBE902E8, &unk_1C12A2E90);
    v23 = 0;
    goto LABEL_8;
  }

  v25 = v41;
  (*(v8 + 32))(v41, &v13[v22], v7);
  sub_1C108B8C0(&qword_1EDE7BAB0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v23 = sub_1C1265DE0();
  v26 = *(v8 + 8);
  v26(v25, v7);
  sub_1C0FD1A5C(v18, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0FD1A5C(v21, &qword_1EBE902F0, &qword_1C12B38C0);
  v26(v24, v7);
  sub_1C0FD1A5C(v13, &qword_1EBE902F0, &qword_1C12B38C0);
LABEL_8:
  v27 = v49;
  sub_1C10887B4(v51, v23 & 1, v46[2], v46[3], v46[4], v46[5], __src);
  sub_1C1264530();
  v28 = v47;
  v29 = v45;
  v30 = v48;
  (*(v47 + 104))(v45, *MEMORY[0x1E6980EA8], v48);
  v31 = sub_1C12646C0();

  (*(v28 + 8))(v29, v30);
  KeyPath = swift_getKeyPath();
  memcpy(__dst, __src, 0x5DuLL);
  LODWORD(v30) = sub_1C1263E50();
  v33 = &v6[*(v27 + 36)];
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0, &unk_1C12A7760) + 28);
  v35 = *MEMORY[0x1E69816C8];
  v36 = sub_1C1265340();
  (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
  *v33 = swift_getKeyPath();
  memcpy(v6, __dst, 0x60uLL);
  *(v6 + 12) = KeyPath;
  *(v6 + 13) = v31;
  *(v6 + 28) = v30;
  v37 = *MEMORY[0x1E697E728];
  v38 = sub_1C1263130();
  v39 = v50;
  (*(*(v38 - 8) + 104))(v50, v37, v38);
  sub_1C108B8C0(&qword_1EDE7BF90, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1C1265DE0();
  if (result)
  {
    sub_1C108985C();
    sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0, &qword_1C12A7730, MEMORY[0x1E69E6ED8]);
    sub_1C1264BC0();
    sub_1C0FD1A5C(v39, &qword_1EBE92FE0, &qword_1C12A7730);
    return sub_1C0FD1A5C(v6, &qword_1EBE92508, &unk_1C12AE908);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1084F98@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v30 = a4;
  v31 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE925E8, &qword_1C12AE980);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE924D8, &qword_1C12AE8E8);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v30 - v20;
  v32[0] = a1;
  v32[1] = a2;
  v32[2] = a3;
  v32[3] = v30;
  v22 = type metadata accessor for PhotosCollectionSearchResultCell(0, v32);
  sub_1C108412C(1, v22, v21);
  KeyPath = swift_getKeyPath();
  v24 = &v21[*(v16 + 44)];
  *v24 = KeyPath;
  *(v24 + 1) = 1;
  v24[16] = 0;
  sub_1C108521C(1u, v22, v14);
  v25 = swift_getKeyPath();
  v26 = &v14[*(v9 + 44)];
  *v26 = v25;
  *(v26 + 1) = 1;
  v26[16] = 0;
  sub_1C0FDB800(v21, v18, &qword_1EBE924D8, &qword_1C12AE8E8);
  sub_1C0FDB800(v14, v11, &qword_1EBE925E8, &qword_1C12AE980);
  v27 = v31;
  sub_1C0FDB800(v18, v31, &qword_1EBE924D8, &qword_1C12AE8E8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92798, &qword_1C12AEE88);
  sub_1C0FDB800(v11, v27 + *(v28 + 48), &qword_1EBE925E8, &qword_1C12AE980);
  sub_1C0FD1A5C(v14, &qword_1EBE925E8, &qword_1C12AE980);
  sub_1C0FD1A5C(v21, &qword_1EBE924D8, &qword_1C12AE8E8);
  sub_1C0FD1A5C(v11, &qword_1EBE925E8, &qword_1C12AE980);
  return sub_1C0FD1A5C(v18, &qword_1EBE924D8, &qword_1C12AE8E8);
}

uint64_t sub_1C108521C@<X0>(unsigned __int8 a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FE0, &qword_1C12A7730);
  MEMORY[0x1EEE9AC00](v34);
  v39 = &v33 - v5;
  v37 = sub_1C1264680();
  v6 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE925F0, &qword_1C12AE988);
  MEMORY[0x1EEE9AC00](v36);
  v10 = &v33 - v9;
  v11 = sub_1C10831C4(a2);
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (((v12 == 0) & a1) != 0)
  {
    v14 = 0xE000000000000000;
  }

  else
  {
    v14 = v12;
  }

  v15 = sub_1C10831F0(a2);
  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  if (((v16 == 0) & a1) != 0)
  {
    v18 = 0xE000000000000000;
  }

  else
  {
    v18 = v16;
  }

  v38 = sub_1C1263AB0();
  v41 = 0;
  sub_1C1088414(v13, v14, v17, v18, a2[2], a2[3], a2[4], __src, a2[5]);

  memcpy(&v40[7], __src, 0x48uLL);
  v19 = v41;
  sub_1C1264530();
  v20 = v37;
  (*(v6 + 104))(v8, *MEMORY[0x1E6980EA8], v37);
  v21 = sub_1C12646C0();

  v22 = v8;
  v23 = v36;
  (*(v6 + 8))(v22, v20);
  KeyPath = swift_getKeyPath();
  LODWORD(v20) = sub_1C1263E50();
  v25 = &v10[*(v23 + 36)];
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0, &unk_1C12A7760) + 28);
  v27 = *MEMORY[0x1E69816C8];
  v28 = sub_1C1265340();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = swift_getKeyPath();
  v29 = v39;
  *v10 = v38;
  *(v10 + 1) = 0;
  v10[16] = v19;
  memcpy(v10 + 17, v40, 0x4FuLL);
  *(v10 + 12) = KeyPath;
  *(v10 + 13) = v21;
  *(v10 + 28) = v20;
  v30 = *MEMORY[0x1E697E728];
  v31 = sub_1C1263130();
  (*(*(v31 - 8) + 104))(v29, v30, v31);
  sub_1C108B8C0(&qword_1EDE7BF90, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1C1265DE0();
  if (result)
  {
    sub_1C108A2D8();
    sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0, &qword_1C12A7730, MEMORY[0x1E69E6ED8]);
    sub_1C1264BC0();
    sub_1C0FD1A5C(v29, &qword_1EBE92FE0, &qword_1C12A7730);
    return sub_1C0FD1A5C(v10, &qword_1EBE925F0, &qword_1C12AE988);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1085698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v57 = a5;
  v56 = a4;
  v55 = a3;
  v54 = a2;
  v58 = a6;
  v72 = a2;
  v73 = a3;
  v74 = a4;
  v75 = a5;
  v7 = type metadata accessor for PhotosCollectionSearchResultCell(255, &v72);
  v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0, &qword_1C12AE8F0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8, &qword_1C12AE8F8);
  WitnessTable = swift_getWitnessTable();
  v45 = sub_1C1089684();
  v8 = sub_1C1089FD0();
  v72 = v7;
  v73 = MEMORY[0x1E6981CD8];
  v74 = v51;
  v75 = v49;
  v76 = WitnessTable;
  v77 = MEMORY[0x1E6981CD0];
  v78 = v45;
  v79 = v8;
  v9 = v8;
  v50 = MEMORY[0x1E6981460];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v52 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92740, &qword_1C12AEDB0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE924D8, &qword_1C12AE8E8);
  v44 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v46 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v43 - v23;
  v43 = &v43 - v23;
  v25 = swift_checkMetadataState();
  sub_1C108412C(0, v25, v16);
  if (sub_1C1082028(v25))
  {
    v26 = 1;
  }

  else
  {
    v26 = 2;
  }

  KeyPath = swift_getKeyPath();
  sub_1C0FDB71C(v16, v21, &qword_1EBE92740, &qword_1C12AEDB0);
  v28 = &v21[*(v17 + 36)];
  *v28 = KeyPath;
  *(v28 + 1) = v26;
  v28[16] = 0;
  sub_1C0FDB71C(v21, v24, &qword_1EBE924D8, &qword_1C12AE8E8);
  sub_1C1265910();
  v64 = v54;
  v65 = v55;
  v66 = v56;
  v67 = v57;
  v68 = a1;
  v59 = v54;
  v60 = v55;
  v61 = v56;
  v62 = v57;
  v63 = a1;
  v29 = v9;
  v30 = v45;
  v31 = WitnessTable;
  v32 = v49;
  v33 = MEMORY[0x1E6981CD8];
  v34 = v51;
  sub_1C1265020();
  v72 = v25;
  v73 = v33;
  v74 = v34;
  v75 = v32;
  v76 = v31;
  v77 = MEMORY[0x1E6981CD0];
  v78 = v30;
  v79 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v48;
  v37 = OpaqueTypeMetadata2;
  sub_1C0FDBA4C();
  v38 = v52;
  v39 = *(v52 + 8);
  v39(v11, v37);
  v40 = v43;
  v41 = v46;
  sub_1C0FDB800(v43, v46, &qword_1EBE924D8, &qword_1C12AE8E8);
  v72 = v41;
  (*(v38 + 16))(v11, v36, v37);
  v73 = v11;
  v71[0] = v44;
  v71[1] = v37;
  v69 = sub_1C108B518();
  v70 = OpaqueTypeConformance2;
  sub_1C119EE80(&v72, 2, v71);
  v39(v36, v37);
  sub_1C0FD1A5C(v40, &qword_1EBE924D8, &qword_1C12AE8E8);
  v39(v11, v37);
  return sub_1C0FD1A5C(v41, &qword_1EBE924D8, &qword_1C12AE8E8);
}

uint64_t sub_1C1085C58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92500, &qword_1C12AE900);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  sub_1C10831C4(a1);
  if (v7 || (sub_1C10831F0(a1), v8))
  {

    sub_1C108476C(a1, v6);
    KeyPath = swift_getKeyPath();
    v10 = &v6[*(v4 + 36)];
    *v10 = KeyPath;
    *(v10 + 1) = 1;
    v10[16] = 0;
    sub_1C0FDB71C(v6, a2, &qword_1EBE92500, &qword_1C12AE900);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_1C1085D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  v8 = type metadata accessor for PhotosCollectionSearchResultCell(0, v10);
  return a7(v8);
}

uint64_t sub_1C1085DF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92768, &qword_1C12AEDC8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92770, &qword_1C12AEDD0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE925E8, &qword_1C12AE980);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  if (sub_1C1082028(a1))
  {
    sub_1C10831C4(a1);
    if (v14 || (sub_1C10831F0(a1), v15))
    {
      v36 = v4;
      v16 = a2;

      sub_1C108521C(0, a1, v13);
      KeyPath = swift_getKeyPath();
      v18 = &v13[*(v11 + 36)];
      *v18 = KeyPath;
      *(v18 + 1) = 2;
      v18[16] = 0;
      sub_1C0FDB800(v13, v10, &qword_1EBE925E8, &qword_1C12AE980);
      swift_storeEnumTagMultiPayload();
      sub_1C108A184();
      v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92508, &unk_1C12AE908);
      v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0, &qword_1C12A7730);
      v21 = sub_1C108985C();
      v22 = sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0, &qword_1C12A7730, MEMORY[0x1E69E6ED8]);
      v37 = v19;
      v38 = v20;
      v39 = v21;
      v40 = v22;
      swift_getOpaqueTypeConformance2();
      sub_1C1263C20();
      sub_1C0FD1A5C(v13, &qword_1EBE925E8, &qword_1C12AE980);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE925D8, &qword_1C12AE978);
      v24 = v16;
      return __swift_storeEnumTagSinglePayload(v24, 0, 1, v23);
    }
  }

  sub_1C10831C4(a1);
  if (v25 || (sub_1C10831F0(a1), v26))
  {
    v35 = v11;
    v36 = a2;

    sub_1C108476C(a1, v7);
    (*(v5 + 16))(v10, v7, v4);
    swift_storeEnumTagMultiPayload();
    sub_1C108A184();
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92508, &unk_1C12AE908);
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0, &qword_1C12A7730);
    v29 = v4;
    v30 = sub_1C108985C();
    v31 = sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0, &qword_1C12A7730, MEMORY[0x1E69E6ED8]);
    v37 = v27;
    v38 = v28;
    v39 = v30;
    v40 = v31;
    swift_getOpaqueTypeConformance2();
    v32 = v36;
    sub_1C1263C20();
    (*(v5 + 8))(v7, v29);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE925D8, &qword_1C12AE978);
    v24 = v32;
    return __swift_storeEnumTagSinglePayload(v24, 0, 1, v23);
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE925D8, &qword_1C12AE978);

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v34);
}

uint64_t sub_1C108628C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v29 = a3;
  v30 = a4;
  v28 = a2;
  v31 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92768, &qword_1C12AEDC8);
  v27 = *(v6 - 8);
  v7 = v27;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92740, &qword_1C12AEDB0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  v32[0] = a1;
  v32[1] = v28;
  v32[2] = v29;
  v32[3] = v30;
  v19 = type metadata accessor for PhotosCollectionSearchResultCell(0, v32);
  sub_1C108412C(0, v19, v18);
  sub_1C108476C(v19, v12);
  sub_1C0FDB800(v18, v15, &qword_1EBE92740, &qword_1C12AEDB0);
  v20 = *(v7 + 16);
  v21 = v6;
  v20(v9, v12, v6);
  v22 = v31;
  sub_1C0FDB800(v15, v31, &qword_1EBE92740, &qword_1C12AEDB0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE927B0, &unk_1C12AEEA0);
  v20((v22 + *(v23 + 48)), v9, v21);
  v24 = *(v27 + 8);
  v24(v12, v21);
  sub_1C0FD1A5C(v18, &qword_1EBE92740, &qword_1C12AEDB0);
  v24(v9, v21);
  return sub_1C0FD1A5C(v15, &qword_1EBE92740, &qword_1C12AEDB0);
}

uint64_t sub_1C1086514@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v84 = a1;
  v94 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C8, &qword_1C12AE8D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D0, &qword_1C12AE8E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D8, &qword_1C12AE8E8);
  v86 = a2;
  v105 = a2;
  v106 = a3;
  v88 = a4;
  v107 = a4;
  v108 = a5;
  v90 = a5;
  v83 = type metadata accessor for PhotosCollectionSearchResultCell(255, &v105);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0, &qword_1C12AE8F0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8, &qword_1C12AE8F8);
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1C1089684();
  v15 = sub_1C1089FD0();
  v105 = v83;
  v106 = MEMORY[0x1E6981CD8];
  v107 = v11;
  v108 = v12;
  v109 = WitnessTable;
  v110 = MEMORY[0x1E6981CD0];
  v111 = v14;
  v112 = v15;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92630, &unk_1C12AE9A8);
  sub_1C1263C30();
  sub_1C12652C0();
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  v16 = sub_1C1265B00();
  v74[2] = swift_getWitnessTable();
  v17 = sub_1C12654C0();
  v77 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v76 = v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v78 = v74 - v20;
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  v74[1] = swift_getWitnessTable();
  v21 = sub_1C12655A0();
  v75 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v74 - v25;
  v87 = a3;
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v27 = sub_1C12655A0();
  v92 = v21;
  v28 = sub_1C1263C30();
  v80 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v79 = v74 - v29;
  v81 = v27;
  v30 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v74 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = v74 - v35;
  v82 = v37;
  v93 = v17;
  v38 = v84;
  v91 = sub_1C1263C30();
  v89 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v85 = v74 - v39;
  v40 = swift_checkMetadataState();
  if (v38[*(v40 + 52)])
  {
    if (v38[*(v40 + 52)] == 1)
    {
      v41 = sub_1C1263AB0();
      MEMORY[0x1EEE9AC00](v41);
      v42 = v87;
      v74[-6] = v86;
      v74[-5] = v42;
      v43 = v90;
      v74[-4] = v88;
      v74[-3] = v43;
      v74[-2] = v38;
      sub_1C1265590();
      v44 = v92;
      v45 = swift_getWitnessTable();
      v74[0] = v26;
      sub_1C0FDBA4C();
      v46 = *(v75 + 8);
      v46(v23, v44);
      sub_1C0FDBA4C();
      v47 = swift_getWitnessTable();
      v48 = v79;
      sub_1C1112E18();
      v97 = v47;
      v98 = v45;
      v49 = v82;
      swift_getWitnessTable();
      swift_getWitnessTable();
      v50 = v85;
      sub_1C1112D68();
      (*(v80 + 8))(v48, v49);
      v46(v23, v44);
      v46(v74[0], v44);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v40);
      v60 = v87;
      v74[-6] = v86;
      v74[-5] = v60;
      v61 = v90;
      v74[-4] = v88;
      v74[-3] = v61;
      v74[-2] = v38;
      sub_1C1012734(v16);
      v62 = v76;
      sub_1C12654B0();
      v63 = v93;
      swift_getWitnessTable();
      sub_1C0FDBA4C();
      v90 = *(v77 + 8);
      (v90)(v62, v63);
      sub_1C0FDBA4C();
      v64 = swift_getWitnessTable();
      v65 = swift_getWitnessTable();
      v103 = v64;
      v104 = v65;
      swift_getWitnessTable();
      v50 = v85;
      sub_1C1112E18();
      v66 = v90;
      (v90)(v62, v63);
      (v66)(v78, v63);
    }
  }

  else
  {
    v51 = sub_1C1263AB0();
    MEMORY[0x1EEE9AC00](v51);
    v52 = v87;
    v74[-6] = v86;
    v74[-5] = v52;
    v53 = v90;
    v74[-4] = v88;
    v74[-3] = v53;
    v74[-2] = v38;
    sub_1C1265590();
    v54 = v81;
    v55 = swift_getWitnessTable();
    sub_1C0FDBA4C();
    v90 = *(v30 + 8);
    (v90)(v33, v54);
    sub_1C0FDBA4C();
    v56 = swift_getWitnessTable();
    v57 = v79;
    sub_1C1112D68();
    v95 = v55;
    v96 = v56;
    v58 = v82;
    swift_getWitnessTable();
    swift_getWitnessTable();
    v50 = v85;
    sub_1C1112D68();
    (*(v80 + 8))(v57, v58);
    v59 = v90;
    (v90)(v33, v54);
    (v59)(v36, v54);
  }

  v67 = v91;
  v68 = v89;
  v69 = swift_getWitnessTable();
  v70 = swift_getWitnessTable();
  v101 = v69;
  v102 = v70;
  v71 = swift_getWitnessTable();
  v72 = swift_getWitnessTable();
  v99 = v71;
  v100 = v72;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  return (*(v68 + 8))(v50, v67);
}

uint64_t sub_1C108726C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a3;
  v51 = a5;
  v48 = a1;
  v49 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C8, &qword_1C12AE8D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D0, &qword_1C12AE8E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D8, &qword_1C12AE8E8);
  v55 = a2;
  v56 = a3;
  v57 = a4;
  v58 = a5;
  v10 = type metadata accessor for PhotosCollectionSearchResultCell(255, &v55);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0, &qword_1C12AE8F0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8, &qword_1C12AE8F8);
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1C1089684();
  v15 = sub_1C1089FD0();
  v55 = v10;
  v56 = MEMORY[0x1E6981CD8];
  v57 = v11;
  v58 = v12;
  v59 = WitnessTable;
  v60 = MEMORY[0x1E6981CD0];
  v61 = v14;
  v62 = v15;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  v42 = sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92630, &unk_1C12AE9A8);
  v43 = sub_1C1263C30();
  v46 = sub_1C12652C0();
  v16 = sub_1C1263190();
  v47 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v44 = &v40 - v20;
  v21 = v50;
  v41 = *(v50 - 1);
  v22 = v41;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v40 - v27;
  v29 = swift_checkMetadataState();
  (*(v48 + *(v29 + 64)))();
  v40 = v28;
  sub_1C0FDBA4C();
  v45 = *(v22 + 8);
  v45(v25, v21);
  sub_1C1081AE4(v29, v18);
  v30 = swift_getWitnessTable();
  v31 = sub_1C108B224();
  v54[5] = v30;
  v54[6] = v31;
  v54[4] = swift_getWitnessTable();
  v54[2] = swift_getWitnessTable();
  v54[3] = MEMORY[0x1E697E5D8];
  v32 = swift_getWitnessTable();
  v33 = v44;
  sub_1C0FDBA4C();
  v34 = v47;
  v35 = *(v47 + 8);
  v35(v18, v16);
  v36 = v28;
  v37 = v50;
  (*(v41 + 16))(v25, v36, v50);
  v55 = v25;
  (*(v34 + 16))(v18, v33, v16);
  v56 = v18;
  v54[0] = v37;
  v54[1] = v16;
  v52 = v51;
  v53 = v32;
  sub_1C119EE80(&v55, 2, v54);
  v35(v33, v16);
  v38 = v45;
  v45(v40, v37);
  v35(v18, v16);
  return v38(v25, v37);
}

uint64_t sub_1C108782C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a5;
  v44 = a1;
  v49 = a6;
  v46 = a3;
  v48 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v40 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C8, &qword_1C12AE8D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D0, &qword_1C12AE8E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D8, &qword_1C12AE8E8);
  v55 = a2;
  v56 = a3;
  v57 = a4;
  v58 = a5;
  v13 = type metadata accessor for PhotosCollectionSearchResultCell(255, &v55);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0, &qword_1C12AE8F0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8, &qword_1C12AE8F8);
  WitnessTable = swift_getWitnessTable();
  v17 = sub_1C1089684();
  v18 = sub_1C1089FD0();
  v55 = v13;
  v56 = MEMORY[0x1E6981CD8];
  v57 = v14;
  v58 = v15;
  v59 = WitnessTable;
  v60 = MEMORY[0x1E6981CD0];
  v61 = v17;
  v62 = v18;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92630, &unk_1C12AE9A8);
  sub_1C1263C30();
  sub_1C12652C0();
  v19 = sub_1C1263190();
  v51 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v50 = &v40 - v23;
  v24 = swift_checkMetadataState();
  v25 = v44;
  sub_1C1081AE4(v24, v21);
  v26 = swift_getWitnessTable();
  v27 = sub_1C108B224();
  v54[5] = v26;
  v54[6] = v27;
  v54[4] = swift_getWitnessTable();
  v54[2] = swift_getWitnessTable();
  v54[3] = MEMORY[0x1E697E5D8];
  v28 = v19;
  v41 = swift_getWitnessTable();
  v29 = v21;
  sub_1C0FDBA4C();
  v42 = *(v51 + 8);
  v30 = v28;
  v31 = v42(v21, v28);
  v32 = v43;
  (*(v25 + *(v24 + 64)))(v31);
  v33 = v47;
  v34 = v46;
  v35 = v45;
  sub_1C0FDBA4C();
  v36 = v48;
  v37 = *(v48 + 8);
  v37(v32, v34);
  (*(v51 + 16))(v29, v50, v30);
  v55 = v29;
  (*(v36 + 16))(v32, v33, v34);
  v56 = v32;
  v54[0] = v30;
  v54[1] = v34;
  v52 = v41;
  v53 = v35;
  sub_1C119EE80(&v55, 2, v54);
  v37(v33, v34);
  v38 = v42;
  v42(v50, v30);
  v37(v32, v34);
  return v38(v29, v30);
}

uint64_t sub_1C1087DEC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a5;
  v50 = a1;
  v55 = a6;
  v52 = a3;
  v54 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v49 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v44 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C8, &qword_1C12AE8D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D0, &qword_1C12AE8E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D8, &qword_1C12AE8E8);
  v67 = a2;
  v68 = a3;
  v69 = a4;
  v70 = a5;
  v13 = type metadata accessor for PhotosCollectionSearchResultCell(255, &v67);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0, &qword_1C12AE8F0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8, &qword_1C12AE8F8);
  WitnessTable = swift_getWitnessTable();
  v17 = sub_1C1089684();
  v18 = sub_1C1089FD0();
  v67 = v13;
  v68 = MEMORY[0x1E6981CD8];
  v69 = v14;
  v70 = v15;
  v71 = WitnessTable;
  v72 = MEMORY[0x1E6981CD0];
  v73 = v17;
  v74 = v18;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92630, &unk_1C12AE9A8);
  sub_1C1263C30();
  sub_1C12652C0();
  v19 = sub_1C1263190();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v44 - v24;
  v47 = swift_checkMetadataState();
  v26 = v50;
  sub_1C1081AE4(v47, v22);
  v27 = swift_getWitnessTable();
  v28 = sub_1C108B224();
  v65 = v27;
  v66 = v28;
  v64 = swift_getWitnessTable();
  v62 = swift_getWitnessTable();
  v63 = MEMORY[0x1E697E5D8];
  v29 = v19;
  v46 = swift_getWitnessTable();
  v30 = v25;
  v45 = v22;
  sub_1C0FDBA4C();
  v31 = v20;
  v48 = *(v20 + 8);
  v32 = v48(v22, v29);
  v33 = v49;
  (*&v26[*(v47 + 64)])(v32);
  v34 = v53;
  v35 = v52;
  v36 = v51;
  sub_1C0FDBA4C();
  v37 = v54;
  v50 = *(v54 + 8);
  (v50)(v33, v35);
  v38 = *(v31 + 16);
  v39 = v45;
  v38(v45, v30, v29);
  v60 = 0;
  v61 = 1;
  v67 = v39;
  v68 = &v60;
  (*(v37 + 16))(v33, v34, v35);
  v69 = v33;
  v59[0] = v29;
  v59[1] = MEMORY[0x1E6981840];
  v59[2] = v35;
  v56 = v46;
  v57 = MEMORY[0x1E6981838];
  v58 = v36;
  sub_1C119EE80(&v67, 3, v59);
  v40 = v34;
  v41 = v50;
  (v50)(v40, v35);
  v42 = v48;
  v48(v30, v29);
  (v41)(v33, v35);
  return v42(v39, v29);
}

double sub_1C1088414@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v17 = sub_1C1263990();
  MEMORY[0x1EEE9AC00](v17 - 8);
  if (!a2)
  {
    if (!a4)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = -1;
      goto LABEL_11;
    }

    v28 = 0;
    v29 = a3;
    a2 = a4;
    a3 = a1;
LABEL_8:
    v34 = v29;
    v35 = a2;
    sub_1C0FDB9AC();

    sub_1C12648F0();
    sub_1C1263C20();
    v20 = v34;
    v21 = v35;
    v22 = v36;
    v23 = v37;
    v24 = v38;
    sub_1C108B7C0(v34, v35, v36, v37);
    a4 = v28;
    if (!v28)
    {
      goto LABEL_4;
    }

LABEL_9:
    v34 = a3;
    v35 = a4;
    sub_1C0FDB9AC();
    v25 = sub_1C12648F0();
    a4 = v30;
    v27 = v31;
    v26 = v32 & 1;
    sub_1C0FDB850(v25, v30, v32 & 1);

    goto LABEL_11;
  }

  v34 = a5;
  v35 = a6;
  v36 = a7;
  v37 = a9;
  v18 = type metadata accessor for PhotosCollectionSearchResultCell(0, &v34);
  sub_1C108317C(v18);
  if (!v19)
  {
    v29 = a1;
    v28 = a4;
    goto LABEL_8;
  }

  sub_1C1263980();
  sub_1C1263970();
  sub_1C12652F0();
  sub_1C1263950();

  sub_1C1263970();
  sub_1C1263960();

  sub_1C1263970();
  sub_1C12639B0();
  sub_1C12648D0();
  sub_1C1263C20();
  v20 = v34;
  v21 = v35;
  v22 = v36;
  v23 = v37;
  v24 = v38;

  sub_1C108B7C0(v20, v21, v22, v23);
  if (a4)
  {
    goto LABEL_9;
  }

LABEL_4:
  v25 = 0;
  v26 = 0;
  v27 = 0;
LABEL_11:
  sub_1C108B7A8(v20, v21, v22, v23, v24);
  sub_1C0FDB860(v25, a4, v26, v27);
  sub_1C108B7FC(v20, v21, v22, v23, v24);
  sub_1C0FDB8A4(v25, a4, v26, v27);
  *a8 = v20;
  *(a8 + 8) = v21;
  *(a8 + 16) = v22;
  *(a8 + 24) = v23;
  *(a8 + 32) = v24;
  *(a8 + 40) = v25;
  *(a8 + 48) = a4;
  *(a8 + 56) = v26;
  *(a8 + 64) = v27;
  sub_1C0FDB8A4(v25, a4, v26, v27);
  return sub_1C108B7FC(v20, v21, v22, v23, v24);
}

void *sub_1C10887B4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v13 = sub_1C1263990();
  MEMORY[0x1EEE9AC00](v13 - 8);
  __dst[0] = a3;
  __dst[1] = a4;
  __dst[2] = a5;
  __dst[3] = a6;
  v14 = type metadata accessor for PhotosCollectionSearchResultCell(0, __dst);
  sub_1C10831C4(v14);
  if (!v15)
  {
LABEL_9:
    v21 = sub_1C10831C4(v14);
    if (v22)
    {
      v23 = v21;
      v24 = v22;
      sub_1C108317C(v14);
      if (v25)
      {
        sub_1C1263980();
        sub_1C1263970();
        sub_1C12652F0();
        sub_1C1263950();

        sub_1C1263970();
        sub_1C1263960();

        sub_1C1263970();
        sub_1C12639B0();
        *&v73[0] = sub_1C12648D0();
        *(&v73[0] + 1) = v26;
        *&v73[1] = v27 & 1;
        *(&v73[1] + 1) = v28;
        LOBYTE(v73[2]) = 0;
      }

      else
      {
        __dst[0] = v23;
        __dst[1] = v24;
        sub_1C0FDB9AC();
        *&v73[0] = sub_1C12648F0();
        *(&v73[0] + 1) = v41;
        *&v73[1] = v40 & 1;
        *(&v73[1] + 1) = v42;
        LOBYTE(v73[2]) = 1;
      }

      sub_1C1263C20();
      v70 = __dst[4];
      v69[95] = 1;
      BYTE3(__dst[11]) = 1;
      v43 = __dst[0];
      v44 = __dst[1];
      v45 = __dst[2];
      v46 = __dst[3];
      sub_1C108B7C0(__dst[0], __dst[1], __dst[2], __dst[3]);
      sub_1C108B7C0(v43, v44, v45, v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92570, &unk_1C12AE940);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93720, &qword_1C12B4750);
      sub_1C1089C20();
      sub_1C1089CAC();
      sub_1C1263C20();
      memcpy(v71, v69, sizeof(v71));
      memcpy(__dst, v69, 0x5CuLL);
      v72 = 0;
      BYTE4(__dst[11]) = 0;
      sub_1C0FDB800(v71, v73, &qword_1EBE92560, &qword_1C12AE938);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92560, &qword_1C12AE938);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE925B0, &qword_1C12AE968);
      sub_1C1089B94();
      sub_1C1089E64();
      sub_1C1263C20();
      sub_1C108B814(v43, v44, v45, v46);
      sub_1C0FD1A5C(v71, &qword_1EBE92560, &qword_1C12AE938);
      sub_1C108B814(v43, v44, v45, v46);
    }

    else
    {
      v29 = sub_1C10831F0(v14);
      if (v30)
      {
        __dst[0] = v29;
        __dst[1] = v30;
        sub_1C0FDB9AC();
        v33 = sub_1C12648F0();
        v34 = v31;
        *&v73[0] = v33;
        *(&v73[0] + 1) = v31;
        v35 = v32 & 1;
        *&v73[1] = v32 & 1;
        *(&v73[1] + 1) = v36;
        LOBYTE(v73[2]) = 0;
      }

      else
      {
        __dst[0] = 0;
        __dst[1] = 0xE000000000000000;
        sub_1C0FDB9AC();
        v33 = sub_1C12648F0();
        v34 = v31;
        v35 = v32 & 1;
        *&v73[0] = v33;
        *(&v73[0] + 1) = v31;
        *&v73[1] = v32 & 1;
        *(&v73[1] + 1) = v47;
        LOBYTE(v73[2]) = 1;
      }

      sub_1C0FDB850(v33, v31, v32 & 1);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE925C0, &qword_1C12AE970);
      sub_1C1089EF0();
      sub_1C1263C20();
      v71[0] = __dst[4];
      v69[0] = 1;
      BYTE4(__dst[11]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92560, &qword_1C12AE938);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE925B0, &qword_1C12AE968);
      sub_1C1089B94();
      sub_1C1089E64();
      sub_1C1263C20();
      sub_1C0FDB8E8(v33, v34, v35);
    }

    goto LABEL_29;
  }

  sub_1C10831F0(v14);
  if (!v16)
  {

    goto LABEL_9;
  }

  sub_1C108317C(v14);
  if (v17)
  {
    if (*(a1 + *(v14 + 52)) || (*(a1 + *(v14 + 60)) & 1) != 0)
    {
      sub_1C1263980();
      sub_1C1263970();
      sub_1C12652F0();
      sub_1C1263950();

      sub_1C1263970();
      sub_1C1263960();

      sub_1C1263970();
      sub_1C1263960();

      sub_1C1263970();
      sub_1C12639B0();
      *&v73[0] = sub_1C12648D0();
      *(&v73[0] + 1) = v19;
      *&v73[1] = v18 & 1;
      *(&v73[1] + 1) = v20;
      LOBYTE(v73[2]) = 1;
    }

    else
    {
      sub_1C1263980();
      sub_1C1263970();
      sub_1C1263960();

      sub_1C1263970();
      sub_1C12652F0();
      sub_1C1263950();

      sub_1C1263970();
      sub_1C1263960();

      sub_1C1263970();
      sub_1C12639B0();
      *&v73[0] = sub_1C12648D0();
      *(&v73[0] + 1) = v52;
      *&v73[1] = v53 & 1;
      *(&v73[1] + 1) = v54;
      LOBYTE(v73[2]) = 0;
    }

    sub_1C1263C20();
    LOBYTE(v73[0]) = __dst[4];
    v71[0] = 0;
    BYTE2(__dst[11]) = 0;
  }

  else
  {
    if (a2)
    {
      if (*(a1 + *(v14 + 52)) || (*(a1 + *(v14 + 60)) & 1) != 0)
      {
        v37 = sub_1C1263AB0();
        LOBYTE(__dst[0]) = 1;
        sub_1C10894A4(v73);

        *&v65[7] = v73[0];
        v66 = v73[1];
        v67 = v73[2];
        v68 = v73[3];
        v38 = __dst[0];
        v69[0] = 1;
        __dst[0] = v37;
        __dst[1] = 0;
        LOBYTE(__dst[2]) = v38;
        v39 = v65;
      }

      else
      {
        v55 = sub_1C1263AB0();
        LOBYTE(__dst[0]) = 1;
        sub_1C10894A4(v73);

        *&v61[7] = v73[0];
        v62 = v73[1];
        v63 = v73[2];
        v64 = v73[3];
        v56 = __dst[0];
        v69[0] = 0;
        __dst[0] = v55;
        __dst[1] = 0;
        LOBYTE(__dst[2]) = v56;
        v39 = v61;
      }

      memcpy(&__dst[2] + 1, v39, 0x47uLL);
      LOBYTE(__dst[11]) = v69[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE925A0, &qword_1C12AE960);
      sub_1C0FDB6D4(&qword_1EBE92598, &qword_1EBE925A0, &qword_1C12AE960, MEMORY[0x1E6981870]);
      sub_1C1263C20();
      memcpy(__dst, v71, 0x59uLL);
      v69[0] = 0;
      BYTE1(__dst[11]) = 0;
    }

    else
    {
      if (*(a1 + *(v14 + 52)) || (*(a1 + *(v14 + 60)) & 1) != 0)
      {
        sub_1C1263980();
        sub_1C1263970();
        sub_1C1263960();

        sub_1C1263970();
        sub_1C1263960();

        sub_1C1263970();
        sub_1C12639B0();
        *&v73[0] = sub_1C12648D0();
        *(&v73[0] + 1) = v49;
        *&v73[1] = v48 & 1;
        *(&v73[1] + 1) = v50;
        LOBYTE(v73[2]) = 1;
      }

      else
      {
        sub_1C1263980();
        sub_1C1263970();
        sub_1C1263960();

        sub_1C1263970();
        sub_1C1263960();

        sub_1C1263970();
        sub_1C12639B0();
        *&v73[0] = sub_1C12648D0();
        *(&v73[0] + 1) = v57;
        *&v73[1] = v58 & 1;
        *(&v73[1] + 1) = v59;
        LOBYTE(v73[2]) = 0;
      }

      sub_1C1263C20();
      v71[0] = __dst[4];
      v69[0] = 1;
      BYTE1(__dst[11]) = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92590, &qword_1C12AE958);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93720, &qword_1C12B4750);
    sub_1C1089DB4();
    sub_1C1089CAC();
    sub_1C1263C20();
    memcpy(__dst, v73, 0x5AuLL);
    v71[0] = 1;
    BYTE2(__dst[11]) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93720, &qword_1C12B4750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92580, &qword_1C12AE950);
  sub_1C1089CAC();
  sub_1C1089D28();
  sub_1C1263C20();
  memcpy(__dst, v69, 0x5BuLL);
  v70 = 0;
  BYTE3(__dst[11]) = 0;
  sub_1C0FDB800(v69, v73, &qword_1EBE92570, &unk_1C12AE940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92570, &unk_1C12AE940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93720, &qword_1C12B4750);
  sub_1C1089C20();
  sub_1C1089CAC();
  sub_1C1263C20();
  memcpy(__dst, v71, 0x5CuLL);
  v72 = 0;
  BYTE4(__dst[11]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92560, &qword_1C12AE938);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE925B0, &qword_1C12AE968);
  sub_1C1089B94();
  sub_1C1089E64();
  sub_1C1263C20();
  sub_1C0FD1A5C(v69, &qword_1EBE92570, &unk_1C12AE940);
LABEL_29:
  memcpy(__dst, v73, 0x5DuLL);
  return memcpy(a7, __dst, 0x5DuLL);
}

double sub_1C10894A4@<D0>(uint64_t a5@<X8>)
{
  sub_1C0FDB9AC();

  v6 = sub_1C12648F0();
  v28 = v7;
  v29 = v6;
  v27 = v8;
  v30 = v9;

  sub_1C12648F0();
  if (qword_1EDE7B848 != -1)
  {
    swift_once();
  }

  v10 = sub_1C1264850();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = OUTLINED_FUNCTION_47();
  sub_1C0FDB8E8(v17, v18, v19);

  *a5 = v29;
  *(a5 + 8) = v28;
  *(a5 + 16) = v27 & 1;
  *(a5 + 24) = v30;
  *(a5 + 32) = v10;
  *(a5 + 40) = v12;
  *(a5 + 48) = v14 & 1;
  *(a5 + 56) = v16;
  v20 = OUTLINED_FUNCTION_47();
  sub_1C0FDB850(v20, v21, v22);

  sub_1C0FDB850(v10, v12, v14 & 1);

  sub_1C0FDB8E8(v10, v12, v14 & 1);

  v23 = OUTLINED_FUNCTION_47();
  sub_1C0FDB8E8(v23, v24, v25);

  return result;
}

unint64_t sub_1C1089684()
{
  result = qword_1EBE924F0;
  if (!qword_1EBE924F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E0, &qword_1C12AE8F0);
    sub_1C1089708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE924F0);
  }

  return result;
}

unint64_t sub_1C1089708()
{
  result = qword_1EBE924F8;
  if (!qword_1EBE924F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92500, &qword_1C12AE900);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92508, &unk_1C12AE908);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0, &qword_1C12A7730);
    sub_1C108985C();
    sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0, &qword_1C12A7730, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0, &qword_1C12AA0A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE924F8);
  }

  return result;
}

unint64_t sub_1C108985C()
{
  result = qword_1EBE92510;
  if (!qword_1EBE92510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92508, &unk_1C12AE908);
    sub_1C1089914();
    sub_1C0FDB6D4(&qword_1EDE76D28, &qword_1EBE933A0, &unk_1C12A7760, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92510);
  }

  return result;
}

unint64_t sub_1C1089914()
{
  result = qword_1EBE92518;
  if (!qword_1EBE92518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92520, &qword_1C12AE918);
    sub_1C10899CC();
    sub_1C0FDB6D4(&qword_1EDE7BA60, &qword_1EBE91888, &unk_1C12AA3B0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92518);
  }

  return result;
}

unint64_t sub_1C10899CC()
{
  result = qword_1EBE92528;
  if (!qword_1EBE92528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92530, &qword_1C12AE920);
    sub_1C1089A84();
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0, &qword_1C12A43F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92528);
  }

  return result;
}

unint64_t sub_1C1089A84()
{
  result = qword_1EBE92538;
  if (!qword_1EBE92538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92540, &qword_1C12AE928);
    sub_1C1089B08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92538);
  }

  return result;
}

unint64_t sub_1C1089B08()
{
  result = qword_1EBE92548;
  if (!qword_1EBE92548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92550, &qword_1C12AE930);
    sub_1C1089B94();
    sub_1C1089E64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92548);
  }

  return result;
}

unint64_t sub_1C1089B94()
{
  result = qword_1EBE92558;
  if (!qword_1EBE92558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92560, &qword_1C12AE938);
    sub_1C1089C20();
    sub_1C1089CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92558);
  }

  return result;
}

unint64_t sub_1C1089C20()
{
  result = qword_1EBE92568;
  if (!qword_1EBE92568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92570, &unk_1C12AE940);
    sub_1C1089CAC();
    sub_1C1089D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92568);
  }

  return result;
}

unint64_t sub_1C1089CAC()
{
  result = qword_1EBE93350;
  if (!qword_1EBE93350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93720, &qword_1C12B4750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93350);
  }

  return result;
}

unint64_t sub_1C1089D28()
{
  result = qword_1EBE92578;
  if (!qword_1EBE92578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92580, &qword_1C12AE950);
    sub_1C1089DB4();
    sub_1C1089CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92578);
  }

  return result;
}

unint64_t sub_1C1089DB4()
{
  result = qword_1EBE92588;
  if (!qword_1EBE92588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92590, &qword_1C12AE958);
    sub_1C0FDB6D4(&qword_1EBE92598, &qword_1EBE925A0, &qword_1C12AE960, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92588);
  }

  return result;
}

unint64_t sub_1C1089E64()
{
  result = qword_1EBE925A8;
  if (!qword_1EBE925A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE925B0, &qword_1C12AE968);
    sub_1C1089EF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE925A8);
  }

  return result;
}

unint64_t sub_1C1089EF0()
{
  result = qword_1EBE925B8;
  if (!qword_1EBE925B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE925C0, &qword_1C12AE970);
    sub_1C1089F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE925B8);
  }

  return result;
}

unint64_t sub_1C1089F7C()
{
  result = qword_1EDE7BCF8;
  if (!qword_1EDE7BCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BCF8);
  }

  return result;
}

unint64_t sub_1C1089FD0()
{
  result = qword_1EBE925C8;
  if (!qword_1EBE925C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924E8, &qword_1C12AE8F8);
    sub_1C108A054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE925C8);
  }

  return result;
}

unint64_t sub_1C108A054()
{
  result = qword_1EBE925D0;
  if (!qword_1EBE925D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE925D8, &qword_1C12AE978);
    sub_1C108A184();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92508, &unk_1C12AE908);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0, &qword_1C12A7730);
    sub_1C108985C();
    sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0, &qword_1C12A7730, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE925D0);
  }

  return result;
}

unint64_t sub_1C108A184()
{
  result = qword_1EBE925E0;
  if (!qword_1EBE925E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE925E8, &qword_1C12AE980);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE925F0, &qword_1C12AE988);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0, &qword_1C12A7730);
    sub_1C108A2D8();
    sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0, &qword_1C12A7730, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0, &qword_1C12AA0A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE925E0);
  }

  return result;
}

unint64_t sub_1C108A2D8()
{
  result = qword_1EBE925F8;
  if (!qword_1EBE925F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE925F0, &qword_1C12AE988);
    sub_1C108A390();
    sub_1C0FDB6D4(&qword_1EDE76D28, &qword_1EBE933A0, &unk_1C12A7760, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE925F8);
  }

  return result;
}

unint64_t sub_1C108A390()
{
  result = qword_1EBE92600;
  if (!qword_1EBE92600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92608, &qword_1C12AE990);
    sub_1C108A448();
    sub_1C0FDB6D4(&qword_1EDE7BA60, &qword_1EBE91888, &unk_1C12AA3B0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92600);
  }

  return result;
}

unint64_t sub_1C108A448()
{
  result = qword_1EBE92610;
  if (!qword_1EBE92610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92618, &qword_1C12AE998);
    sub_1C0FDB6D4(&qword_1EBE92620, &qword_1EBE92628, &qword_1C12AE9A0, MEMORY[0x1E6981870]);
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0, &qword_1C12A43F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92610);
  }

  return result;
}

unint64_t sub_1C108A530()
{
  result = qword_1EBE92638;
  if (!qword_1EBE92638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92638);
  }

  return result;
}

unint64_t sub_1C108A588()
{
  result = qword_1EBE92640;
  if (!qword_1EBE92640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92640);
  }

  return result;
}

unint64_t sub_1C108A5E0()
{
  result = qword_1EBE92648;
  if (!qword_1EBE92648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92648);
  }

  return result;
}

unint64_t sub_1C108A638()
{
  result = qword_1EBE92650[0];
  if (!qword_1EBE92650[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE92650);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosCollectionSearchResultCellContentPosition(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C108A7CC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C108A8B0(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    v1 = sub_1C1007F88();
    if (v3 <= 0x3F)
    {
      sub_1C100D318(319, &qword_1EDE77600, &type metadata for PhotosCellSpecs);
      v1 = v4;
      if (v5 <= 0x3F)
      {
        sub_1C100D318(319, &qword_1EDE77540, MEMORY[0x1E69E6370]);
        v1 = v6;
        if (v7 <= 0x3F)
        {
          sub_1C108B164(319, &qword_1EDE77590, MEMORY[0x1E697DBD0]);
          if (v9 > 0x3F)
          {
            return v8;
          }

          sub_1C108B164(319, &qword_1EDE77578, MEMORY[0x1E697E730]);
          if (v10 > 0x3F)
          {
            return v8;
          }

          sub_1C0FDAAD8(319);
          if (v11 > 0x3F)
          {
            return v8;
          }

          else
          {
            sub_1C100D318(319, &qword_1EDE77640, &type metadata for PhotosUserInterfaceIdiom);
            v1 = v12;
            if (v13 <= 0x3F)
            {
              sub_1C100D318(319, &qword_1EBE926D8, &type metadata for PhotosCollectionSearchResultCellStyle);
              v1 = v14;
              if (v15 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1C108AA9C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v31 = *(a3 + 16);
  v5 = *(v31 - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(sub_1C12629F0() - 8);
  v9 = *(v8 + 64);
  if (v9 <= 8)
  {
    v9 = 8;
  }

  v32 = v9;
  v10 = *(sub_1C1263130() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = sub_1C1263EB0();
  v14 = *(v12 - 8);
  result = v12 - 8;
  v15 = v14;
  v16 = *(v14 + 64);
  v17 = *(v5 + 64);
  if (!*(v14 + 84))
  {
    ++v16;
  }

  if (v16 <= 8)
  {
    v16 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_38:
    if (v6 < 0x7FFFFFFF)
    {
      v29 = *(&a1[v17 + 10] & 0xFFFFFFFFFFFFFFF8);
      if (v29 >= 0xFFFFFFFF)
      {
        LODWORD(v29) = -1;
      }

      return (v29 + 1);
    }

    else
    {

      return __swift_getEnumTagSinglePayload(a1, v6, v31);
    }
  }

  else
  {
    v18 = *(v8 + 80) & 0xF8 | 7;
    v19 = (((((v17 + 10) & 0xFFFFFFFFFFFFFFF8) + 239) & 0xFFFFFFFFFFFFFFF8) + v18 + 9) & ~v18;
    v20 = *(v10 + 80) & 0xF8 | 7;
    v21 = *(v15 + 80) & 0xF8 | 7;
    v22 = ((v16 + ((v11 + v21 + ((v32 + v20 + v19 + 1) & ~v20) + 1) & ~v21) + 40) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v22 <= 3)
    {
      v23 = ((a2 - v7 + 255) >> 8) + 1;
    }

    else
    {
      v23 = 2;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    switch(v25)
    {
      case 1:
        v26 = a1[v22];
        if (!a1[v22])
        {
          goto LABEL_38;
        }

        goto LABEL_31;
      case 2:
        v26 = *&a1[v22];
        if (!*&a1[v22])
        {
          goto LABEL_38;
        }

        goto LABEL_31;
      case 3:
        __break(1u);
        return result;
      case 4:
        v26 = *&a1[v22];
        if (!v26)
        {
          goto LABEL_38;
        }

LABEL_31:
        v27 = v22 > 3;
        if (v22 <= 3)
        {
          v28 = (v26 - 1) << (8 * v22);
        }

        else
        {
          v28 = 0;
        }

        if (v27)
        {
          v30 = *a1;
        }

        else
        {
          v30 = *a1;
        }

        result = v7 + (v30 | v28) + 1;
        break;
      default:
        goto LABEL_38;
    }
  }

  return result;
}

void sub_1C108ADD8(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v28 = *(a4 + 16);
  v5 = *(v28 - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(sub_1C12629F0() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(sub_1C1263130() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(sub_1C1263EB0() - 8);
  v13 = *(v12 + 64);
  v14 = *(v5 + 64);
  v15 = *(v8 + 80) & 0xF8 | 7;
  v16 = (((((v14 + 10) & 0xFFFFFFFFFFFFFFF8) + 239) & 0xFFFFFFFFFFFFFFF8) + v15 + 9) & ~v15;
  v17 = *(v10 + 80) & 0xF8 | 7;
  v18 = *(v12 + 80) & 0xF8 | 7;
  v19 = (v11 + v18 + ((v9 + v17 + v16 + 1) & ~v17) + 1) & ~v18;
  if (!*(v12 + 84))
  {
    ++v13;
  }

  if (v13 <= 8)
  {
    v13 = 8;
  }

  v20 = ((v13 + v19 + 40) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v7 >= a3)
  {
    v23 = 0;
  }

  else
  {
    if (v20 <= 3)
    {
      v21 = ((a3 - v7 + 255) >> 8) + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }
  }

  if (v7 >= a2)
  {
    switch(v23)
    {
      case 1:
        *(a1 + v20) = 0;
        if (a2)
        {
          goto LABEL_41;
        }

        break;
      case 2:
        *(a1 + v20) = 0;
        if (a2)
        {
          goto LABEL_41;
        }

        break;
      case 3:
LABEL_54:
        __break(1u);
        break;
      case 4:
        *(a1 + v20) = 0;
        goto LABEL_40;
      default:
LABEL_40:
        if (a2)
        {
LABEL_41:
          if (v6 < 0x7FFFFFFF)
          {
            v26 = ((a1 + v14 + 10) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v27 = a2 & 0x7FFFFFFF;
              v26[1] = 0;
            }

            else
            {
              v27 = a2 - 1;
            }

            *v26 = v27;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v6, v28);
          }
        }

        break;
    }
  }

  else
  {
    v24 = ~v7 + a2;
    bzero(a1, v20);
    if (v20 <= 3)
    {
      v25 = (v24 >> 8) + 1;
    }

    else
    {
      v25 = 1;
    }

    if (v20 > 3)
    {
      *a1 = v24;
    }

    else
    {
      *a1 = v24;
    }

    switch(v23)
    {
      case 1:
        *(a1 + v20) = v25;
        break;
      case 2:
        *(a1 + v20) = v25;
        break;
      case 3:
        goto LABEL_54;
      case 4:
        *(a1 + v20) = v25;
        break;
      default:
        return;
    }
  }
}

void sub_1C108B164(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C1262A70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C108B224()
{
  result = qword_1EBE926E0;
  if (!qword_1EBE926E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92630, &unk_1C12AE9A8);
    sub_1C0FDB6D4(&qword_1EBE926E8, &qword_1EBE926F0, &qword_1C12AED50, MEMORY[0x1E6981870]);
    sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0, &qword_1C12AA0A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE926E0);
  }

  return result;
}

unint64_t sub_1C108B350()
{
  result = qword_1EBE92710;
  if (!qword_1EBE92710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924C8, &qword_1C12AE8D8);
    sub_1C0FDB6D4(&qword_1EBE92718, &qword_1EBE92720, &qword_1C12AEDA0, MEMORY[0x1E6981870]);
    sub_1C1089F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92710);
  }

  return result;
}

unint64_t sub_1C108B408()
{
  result = qword_1EBE92728;
  if (!qword_1EBE92728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D0, &qword_1C12AE8E0);
    sub_1C0FDB6D4(&qword_1EBE92730, &qword_1EBE92738, &qword_1C12AEDA8, MEMORY[0x1E6981870]);
    sub_1C1089F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92728);
  }

  return result;
}

unint64_t sub_1C108B518()
{
  result = qword_1EBE92748;
  if (!qword_1EBE92748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE924D8, &qword_1C12AE8E8);
    sub_1C108B5D0();
    sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0, &qword_1C12AA0A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92748);
  }

  return result;
}

unint64_t sub_1C108B5D0()
{
  result = qword_1EBE92750;
  if (!qword_1EBE92750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92740, &qword_1C12AEDB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92758, &qword_1C12AEDB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FE0, &qword_1C12A7730);
    sub_1C108B6F0();
    sub_1C0FDB6D4(&unk_1EDE7B598, &qword_1EBE92FE0, &qword_1C12A7730, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92750);
  }

  return result;
}

unint64_t sub_1C108B6F0()
{
  result = qword_1EBE92760;
  if (!qword_1EBE92760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92758, &qword_1C12AEDB8);
    sub_1C0FDB6D4(&unk_1EDE7B920, &qword_1EBE93130, &qword_1C12AEDC0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92760);
  }

  return result;
}

double sub_1C108B7A8(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1C108B7C0(result, a2, a3, a4);
  }

  return v5;
}

double sub_1C108B7C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1C0FDB850(a1, a2, a3 & 1);

  return result;
}

double sub_1C108B7FC(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1C108B814(result, a2, a3, a4);
  }

  return v5;
}

double sub_1C108B814(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1C0FDB8E8(a1, a2, a3 & 1);

  return result;
}

uint64_t sub_1C108B850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C108B8C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C108B9B4()
{
  result = qword_1EDE7BE08;
  if (!qword_1EDE7BE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE927B8, &qword_1C12AEED0);
    sub_1C0FDB6D4(&qword_1EDE7B7D8, &qword_1EBE927C0, &qword_1C12AEED8, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE08);
  }

  return result;
}

uint64_t sub_1C108BA6C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92810, &qword_1C12BADD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C12A3440;
  sub_1C1265160();
  v5 = sub_1C12651E0();

  *(v4 + 32) = v5;
  sub_1C1265160();
  v6 = sub_1C12651E0();

  *(v4 + 40) = v6;
  MEMORY[0x1C68EF140](v4);
  sub_1C1265B70();
  sub_1C1265B80();
  sub_1C1262F60();
  sub_1C12659A0();
  sub_1C1262C80();
  sub_1C1265170();
  v7 = sub_1C12651E0();

  v21[0] = v7;
  sub_1C0FDB76C();
  v8 = sub_1C1265270();
  sub_1C12659A0();
  sub_1C1262C80();
  v9 = v15;
  v10 = v17;
  memcpy(__dst, __src, sizeof(__dst));
  v13 = v16;
  v12 = v18;
  memcpy(a1, __src, 0x58uLL);
  *(a1 + 88) = v8;
  *(a1 + 96) = v9;
  *(a1 + 104) = v13;
  *(a1 + 112) = v10;
  *(a1 + 120) = v12;
  *(a1 + 128) = v19;
  sub_1C102EFA0(__dst, v21, &qword_1EBE92848, &qword_1C12AEF60);
  memcpy(v21, __src, sizeof(v21));
  return sub_1C0F9E21C(v21, &qword_1EBE92848, &qword_1C12AEF60);
}

uint64_t sub_1C108BCB4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  sub_1C1265990();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE927B8, &qword_1C12AEED0);
  sub_1C108B9B4();
  return sub_1C1264F60();
}

void *sub_1C108BD74@<X0>(void (*a1)(void *__return_ptr, double, double)@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v10 = sub_1C1263AA0();
  v16 = 0;
  a1(__src, a3, a4);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v18, __src, sizeof(v18));
  sub_1C102EFA0(__dst, &v13, &qword_1EBE92850, &qword_1C12AEF68);
  sub_1C0F9E21C(v18, &qword_1EBE92850, &qword_1C12AEF68);
  memcpy(&v15[7], __dst, 0x90uLL);
  v11 = v16;
  *a2 = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  result = memcpy((a2 + 17), v15, 0x97uLL);
  *(a2 + 168) = a5;
  return result;
}

uint64_t sub_1C108BEA8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92810, &qword_1C12BADD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C12A3440;
  *(v4 + 32) = sub_1C1265170();
  *(v4 + 40) = sub_1C1265160();
  sub_1C1265B70();
  sub_1C1265B80();
  MEMORY[0x1C68EF140](v4);
  sub_1C1262F60();
  sub_1C12659A0();
  sub_1C1262C80();
  v18[0] = sub_1C1265160();
  sub_1C0FDB76C();
  v5 = sub_1C1265270();
  sub_1C12659A0();
  sub_1C1262C80();
  v6 = v12;
  v7 = v14;
  memcpy(__dst, __src, sizeof(__dst));
  v10 = v13;
  v9 = v15;
  memcpy(a1, __src, 0x58uLL);
  *(a1 + 88) = v5;
  *(a1 + 96) = v6;
  *(a1 + 104) = v10;
  *(a1 + 112) = v7;
  *(a1 + 120) = v9;
  *(a1 + 128) = v16;
  sub_1C102EFA0(__dst, v18, &qword_1EBE92848, &qword_1C12AEF60);
  memcpy(v18, __src, sizeof(v18));
  return sub_1C0F9E21C(v18, &qword_1EBE92848, &qword_1C12AEF60);
}

uint64_t View.photosBottomLegibilityGradientOverlay(bottomInset:heightAboveGrid:heightBelowGrid:gradientOpacity:IsGradientAtOrAboveTop:wantsGradient:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  sub_1C1265990();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE927C8, qword_1C12AEEE0);
  sub_1C0FDB6D4(&qword_1EBE927D0, &qword_1EBE927C8, qword_1C12AEEE0, MEMORY[0x1E6981880]);
  return sub_1C1264F60();
}

uint64_t sub_1C108C1B0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>, double a8@<D0>)
{
  v15 = a1;
  *a7 = sub_1C12659A0();
  a7[1] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE927F0, &qword_1C12AEF08);
  return sub_1C108C27C(v15, a3, a4, a5, a7 + *(v18 + 44), a8);
}

uint64_t sub_1C108C27C@<X0>(int a1@<W0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a8@<D1>)
{
  v77 = a4;
  v78 = a5;
  v76 = a3;
  LODWORD(v63) = a1;
  v79 = a6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE927F8, &qword_1C12AEF10) - 8;
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v56 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92800, &qword_1C12AEF18);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v56 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92808, &unk_1C12AEF20);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v75 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v56 - v26;
  *v27 = sub_1C1263AA0();
  *(v27 + 1) = 0;
  v27[16] = 0;
  v70 = v27;
  v85[0] = sub_1C1265170();
  sub_1C0FDB76C();
  v62 = sub_1C1265270();
  sub_1C12659A0();
  sub_1C1262C80();
  v69 = v87;
  v68 = v88;
  v67 = v89;
  v66 = v90;
  v64 = v92;
  v65 = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92810, &qword_1C12BADD0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C12A3440;
  sub_1C1265160();
  v29 = sub_1C12651E0();

  *(v28 + 32) = v29;
  sub_1C1265160();
  v63 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92818, &qword_1C12AEF30) + 44)];
  v30 = sub_1C12651E0();

  *(v28 + 40) = v30;
  MEMORY[0x1C68EF140](v28);
  sub_1C1265B70();
  sub_1C1265B80();
  sub_1C1262F60();
  sub_1C12659A0();
  sub_1C1262C80();
  v31 = *(v15 + 44);
  v60 = *MEMORY[0x1E6981DC0];
  v32 = v60;
  v33 = sub_1C1265A90();
  v34 = *(v33 - 8);
  v59 = *(v34 + 104);
  v61 = v34 + 104;
  v59(&v19[v31], v32, v33);
  memcpy(v19, v86, 0x58uLL);
  v58 = v22;
  sub_1C108D06C(v19, v22);
  sub_1C1265160();
  v35 = sub_1C12651E0();

  v85[0] = v35;
  v57 = sub_1C1265270();
  sub_1C12659A0();
  sub_1C1262C80();
  v36 = v93;
  LOBYTE(v19) = v94;
  v37 = v95;
  v38 = v96;
  v39 = v97;
  v40 = v98;
  v41 = v72;
  v59(&v72[*(v73 + 44)], v60, v33);
  *v41 = v57;
  *(v41 + 1) = v36;
  v41[16] = v19;
  *(v41 + 3) = v37;
  v41[32] = v38;
  *(v41 + 5) = v39;
  *(v41 + 6) = v40;
  v42 = v41;
  v43 = v71;
  sub_1C102EFA0(v22, v71, &qword_1EBE92800, &qword_1C12AEF18);
  v44 = v41;
  v45 = v74;
  sub_1C102EFA0(v44, v74, &qword_1EBE927F8, &qword_1C12AEF10);
  v46 = v63;
  v47 = v69;
  *v63 = v62;
  v46[1] = v47;
  *(v46 + 16) = v68;
  v46[3] = v67;
  *(v46 + 32) = v66;
  v48 = v64;
  v46[5] = v65;
  v46[6] = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92820, &qword_1C12AEF38);
  sub_1C102EFA0(v43, v46 + *(v49 + 48), &qword_1EBE92800, &qword_1C12AEF18);
  sub_1C102EFA0(v45, v46 + *(v49 + 64), &qword_1EBE927F8, &qword_1C12AEF10);

  sub_1C0F9E21C(v42, &qword_1EBE927F8, &qword_1C12AEF10);
  sub_1C0F9E21C(v58, &qword_1EBE92800, &qword_1C12AEF18);
  sub_1C0F9E21C(v45, &qword_1EBE927F8, &qword_1C12AEF10);
  sub_1C0F9E21C(v43, &qword_1EBE92800, &qword_1C12AEF18);

  v50 = sub_1C1263AA0();
  v81 = 0;
  sub_1C108CA24(v85);
  memcpy(v82, v85, sizeof(v82));
  memcpy(v83, v85, sizeof(v83));
  sub_1C102EFA0(v82, v84, &qword_1EBE92828, &qword_1C12AEF40);
  sub_1C0F9E21C(v83, &qword_1EBE92828, &qword_1C12AEF40);
  memcpy(&v80[7], v82, 0x140uLL);
  LOBYTE(v33) = v81;
  v51 = v70;
  v52 = v75;
  sub_1C102EFA0(v70, v75, &qword_1EBE92808, &unk_1C12AEF20);
  v53 = v79;
  sub_1C102EFA0(v52, v79, &qword_1EBE92808, &unk_1C12AEF20);
  v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92830, &qword_1C12AEF48) + 48);
  v84[0] = v50;
  v84[1] = 0;
  LOBYTE(v84[2]) = v33;
  memcpy(&v84[2] + 1, v80, 0x147uLL);
  *&v84[43] = a8;
  memcpy((v53 + v54), v84, 0x160uLL);
  sub_1C102EFA0(v84, v85, &qword_1EBE92838, &qword_1C12AEF50);
  sub_1C0F9E21C(v51, &qword_1EBE92808, &unk_1C12AEF20);
  v85[0] = v50;
  v85[1] = 0;
  LOBYTE(v85[2]) = v33;
  memcpy(&v85[2] + 1, v80, 0x147uLL);
  *&v85[43] = a8;
  sub_1C0F9E21C(v85, &qword_1EBE92838, &qword_1C12AEF50);
  return sub_1C0F9E21C(v52, &qword_1EBE92808, &unk_1C12AEF20);
}

uint64_t sub_1C108CA24@<X0>(uint64_t x8_0@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92840, &qword_1C12AEF58);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C12AEEB0;
  sub_1C1265170();
  *(v5 + 32) = sub_1C12657E0();
  *(v5 + 40) = v6;
  *(v5 + 48) = View.gradientStop(min:max:stopLocation:)(0.0, 0.7, 0.1);
  *(v5 + 56) = v7;
  *(v5 + 64) = View.gradientStop(min:max:stopLocation:)(0.0, 0.7, 0.2);
  *(v5 + 72) = v8;
  *(v5 + 80) = View.gradientStop(min:max:stopLocation:)(0.0, 0.7, 0.3);
  *(v5 + 88) = v9;
  *(v5 + 96) = View.gradientStop(min:max:stopLocation:)(0.0, 0.7, 0.4);
  *(v5 + 104) = v10;
  *(v5 + 112) = View.gradientStop(min:max:stopLocation:)(0.0, 0.7, 0.5);
  *(v5 + 120) = v11;
  *(v5 + 128) = View.gradientStop(min:max:stopLocation:)(0.0, 0.7, 0.6);
  *(v5 + 136) = v12;
  *(v5 + 144) = View.gradientStop(min:max:stopLocation:)(0.0, 0.7, 0.7);
  *(v5 + 152) = v13;
  *(v5 + 160) = View.gradientStop(min:max:stopLocation:)(0.0, 0.7, 0.8);
  *(v5 + 168) = v14;
  *(v5 + 176) = View.gradientStop(min:max:stopLocation:)(0.0, 0.7, 0.9);
  *(v5 + 184) = v15;
  sub_1C1265160();
  sub_1C12651E0();

  *(v5 + 192) = sub_1C12657E0();
  *(v5 + 200) = v16;
  sub_1C1265B70();
  sub_1C1265B80();
  sub_1C12657F0();
  sub_1C1262F60();
  sub_1C12659A0();
  sub_1C1262C80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92810, &qword_1C12BADD0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C12A3440;
  sub_1C1265160();
  v18 = sub_1C12651E0();

  *(v17 + 32) = v18;
  sub_1C1265160();
  v19 = sub_1C12651E0();

  *(v17 + 40) = v19;
  sub_1C1265B70();
  sub_1C1265B80();
  MEMORY[0x1C68EF140](v17);
  sub_1C1262F60();
  sub_1C12659A0();
  sub_1C1262C80();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C12A3440;
  sub_1C1265160();
  v21 = sub_1C12651E0();

  *(v20 + 32) = v21;
  *(v20 + 40) = sub_1C1265170();
  sub_1C1265B70();
  sub_1C1265B80();
  MEMORY[0x1C68EF140](v20);
  sub_1C1262F60();
  sub_1C12659A0();
  sub_1C1262C80();
  v43[0] = sub_1C1265170();
  sub_1C0FDB76C();
  v22 = sub_1C1265270();
  sub_1C12659A0();
  sub_1C1262C80();
  memcpy(__dst, __src, sizeof(__dst));
  v32[0] = __dst;
  memcpy(v30, v34, sizeof(v30));
  v32[1] = v30;
  memcpy(v29, v33, sizeof(v29));
  v24[0] = v22;
  v24[1] = v36;
  v25 = v37;
  v26 = v38;
  v27 = v39;
  v28 = v40;
  v32[2] = v29;
  v32[3] = v24;
  sub_1C11C2D44(v32, x8_0);

  memcpy(v41, v29, sizeof(v41));
  sub_1C0F9E21C(v41, &qword_1EBE92848, &qword_1C12AEF60);
  memcpy(v42, v30, sizeof(v42));
  sub_1C0F9E21C(v42, &qword_1EBE92848, &qword_1C12AEF60);
  memcpy(v43, __dst, sizeof(v43));
  return sub_1C0F9E21C(v43, &qword_1EBE92848, &qword_1C12AEF60);
}

uint64_t View.gradientStop(min:max:stopLocation:)(double a1, double a2, long double a3)
{
  pow(a3, 3.0);
  sub_1C1265160();
  sub_1C12651E0();

  return sub_1C12657E0();
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA16_OverlayModifierVyADyAA6VStackVyAA05TupleC0VyADyAA14LinearGradientVAA12_FrameLayoutVG_ADyAA5ColorVANGtGGAA14_OpacityEffectVGGGAaBHPxAaBHD1__AxA0cG0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_1C1263190();
  sub_1C0FDB6D4(a4, a2, a3, MEMORY[0x1E697EC18]);
  return swift_getWitnessTable();
}

uint64_t sub_1C108D06C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92800, &qword_1C12AEF18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t x8_0@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v28[-2] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v15;
  v18 = *v17;
  v20 = *v19;
  v21 = *(v19 + 8);
  v27 = *(v19 + 16);
  v22 = *(v19 + 32);
  (*(v23 + 16))(v14, v25, v24);
  v32 = v16;
  v31 = v18;
  v28[0] = v20;
  v28[1] = v21;
  v29 = v27;
  v30 = v22;

  return sub_1C108D528(v14, &v32, &v31, v28, a4, a5, a6, a7, x8_0);
}

void sub_1C108D240(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_1C0FF7688();
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1C68F02D0](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

BOOL sub_1C108D334()
{
  OUTLINED_FUNCTION_8_18();
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = v0(v2);
    if (v1)
    {
      break;
    }

    v2 += 40;
  }

  while ((v4 & 1) == 0);
  return v3 != 0;
}

double View.representing(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1C1264A30();

  return result;
}

uint64_t sub_1C108D3F8()
{
  sub_1C1094FD0();

  return sub_1C12637F0();
}

uint64_t sub_1C108D4AC(uint64_t a1)
{
  sub_1C1094F6C(a1, &v3, &qword_1EBE90620, &qword_1C12A8B00);
  sub_1C1094FD0();
  sub_1C1263800();
  return sub_1C0FFC7B0(a1, &qword_1EBE90620, &qword_1C12A8B00);
}

uint64_t sub_1C108D528@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *a2;
  v15 = *a3;
  v16 = *a4;
  v17 = a4[1];
  v26 = *(a4 + 1);
  v18 = a4[4];
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v20 = type metadata accessor for PhotosDetailsPresentationSourceView(0, a7, a8, v19);
  *(a9 + v20[9]) = v14;
  *(a9 + v20[10]) = v15;
  v21 = a9 + v20[11];
  *v21 = v16;
  *(v21 + 8) = v17;
  *(v21 + 16) = v26;
  *(v21 + 32) = v18;
  *(a9 + v20[12]) = a5;
  *(a9 + v20[13]) = a6;
  v22 = a9 + v20[14];
  *v22 = swift_getKeyPath();
  *(v22 + 32) = 0;
  v23 = a9 + v20[15];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  *(v23 + 33) = 0u;
  v24 = a9 + v20[16];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  return sub_1C1093850(sub_1C10938D4, 0);
}

uint64_t View.displaying<A>(media:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  PhotosDisplayableMediaWrapper.init<A>(_:)(v9, a3, a5, v13);
  sub_1C108D7E0();
  sub_1C12649C0();
  return sub_1C0FFC7B0(v13, &qword_1EBE92890, &qword_1C12AEFC8);
}

unint64_t sub_1C108D7E0()
{
  result = qword_1EDE7F0B8;
  if (!qword_1EDE7F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7F0B8);
  }

  return result;
}

uint64_t PhotosDetailsNavigationSourceLayoutKind.description.getter()
{
  if (*v0)
  {
    return 0x6567616C6C6F63;
  }

  else
  {
    return 0x676E696C6C6966;
  }
}

uint64_t PhotosDetailsNavigationSourceLayoutKind.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

id static PhotosDetailsNavigation.configure(presentingViewController:viewControllerToPresent:sourceViewScrollRequestHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1C108D9BC(a2, &v10);
  v6 = v10;

  if (v6 != 2 && (v6 & 1) != 0)
  {
    return sub_1C1266470();
  }

  v8 = OUTLINED_FUNCTION_41_0();

  return sub_1C108E0CC(v8, v9, a3, a4);
}

void sub_1C108D9BC(void *a1@<X0>, uint64_t a2@<X8>)
{
  UIViewController.detailsNavigationContext.getter(&v64);
  v4 = *(&v64 + 1);
  if (*(&v64 + 1))
  {
    v5 = v64;
    v61 = *(&v65 + 1);
    v6 = v65;
    v7 = *(&v66 + 1);
    v8 = v66;
    UIViewController.finalizedRepresentedItem.getter(v63);
    if (*(&v63[0] + 1))
    {
      v64 = v63[0];
      v65 = v63[1];
      v66 = v63[2];
      sub_1C11FEE48(&v64, v63);
      v10 = *(&v63[0] + 1);
      v9 = *&v63[0];
      v11 = sub_1C1266400();
      if (qword_1EDE7B5C0 != -1)
      {
        swift_once();
      }

      log = qword_1EDE7B5C8;
      if (os_log_type_enabled(qword_1EDE7B5C8, v11))
      {
        v57 = v6;
        v12 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v62 = v55;
        *&v63[0] = v9;
        *v12 = 136315138;
        *(&v63[0] + 1) = v10;
        sub_1C1094F44(v9, v10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92918, &qword_1C12AF318);
        v13 = sub_1C1265ED0();
        v15 = v9;
        v16 = v4;
        v17 = a2;
        v18 = v7;
        v19 = sub_1C0FA0E80(v13, v14, &v62);

        *(v12 + 4) = v19;
        v7 = v18;
        a2 = v17;
        v4 = v16;
        v9 = v15;
        _os_log_impl(&dword_1C0F96000, log, v11, "Transition info: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v55);
        MEMORY[0x1C68F1630](v55, -1, -1);
        v20 = v12;
        v6 = v57;
        MEMORY[0x1C68F1630](v20, -1, -1);
      }

      if (v10 == 1)
      {
        if (qword_1EDE791A0 != -1)
        {
          swift_once();
        }

        v21 = byte_1EBEA4890;
        v22 = qword_1EBEA4898;
      }

      else
      {
        v21 = v9;
        v22 = v10;
      }

      if (v21 == 2 || (v21 & 1) != 0)
      {
        sub_1C1094F44(v9, v10);
        sub_1C0FD0978(&v64);
        v51 = v5;
        v52 = v4;
        v53 = v6;
      }

      else
      {
        swift_beginAccess();
        if (!qword_1EDE7C6F0)
        {
          sub_1C1093918(v5, v4, v6, v61, v8, v7);
          sub_1C0FD0978(&v64);
          goto LABEL_35;
        }

        if (([qword_1EDE7C6F0 useZoomTransition] & 1) == 0)
        {
          sub_1C1266410();
          sub_1C1262620();
          sub_1C1093918(v5, v4, v6, v61, v8, v7);
          sub_1C1094F58(v9, v10);
          sub_1C0FD0978(&v64);
          LOBYTE(v21) = 1;
          goto LABEL_35;
        }

        sub_1C0FD0978(&v64);
        v51 = v5;
        v52 = v4;
        v53 = v6;
      }

      sub_1C1093918(v51, v52, v53, v61, v8, v7);
      sub_1C1094F58(v9, v10);
LABEL_35:
      *a2 = v21;
      *(a2 + 8) = v22;
      return;
    }

    loga = v5;
    sub_1C0FFC7B0(v63, &qword_1EBE928A0, &qword_1C12AEFD0);
    v34 = sub_1C1266410();
    if (qword_1EDE7B5C0 != -1)
    {
      swift_once();
    }

    v35 = qword_1EDE7B5C8;
    if (os_log_type_enabled(qword_1EDE7B5C8, v34))
    {
      v58 = v4;
      v36 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&v64 = v56;
      *v36 = 136315138;
      v37 = a1;
      v38 = [v37 description];
      v54 = v34;
      v39 = a2;
      v40 = v7;
      v41 = sub_1C1265EA0();
      v42 = v6;
      v43 = v8;
      v45 = v44;

      v46 = v41;
      v7 = v40;
      a2 = v39;
      v47 = sub_1C0FA0E80(v46, v45, &v64);
      v8 = v43;
      v6 = v42;

      *(v36 + 4) = v47;
      _os_log_impl(&dword_1C0F96000, v35, v54, "Missing represented item for %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      MEMORY[0x1C68F1630](v56, -1, -1);
      v48 = v36;
      v4 = v58;
      MEMORY[0x1C68F1630](v48, -1, -1);
    }

    if (qword_1EDE791A0 != -1)
    {
      swift_once();
    }

    v49 = byte_1EBEA4890;
    v50 = qword_1EBEA4898;

    sub_1C1093918(loga, v4, v6, v61, v8, v7);
    *a2 = v49;
    *(a2 + 8) = v50;
  }

  else
  {
    v23 = sub_1C1266410();
    if (qword_1EDE7B5C0 != -1)
    {
      swift_once();
    }

    v24 = qword_1EDE7B5C8;
    if (os_log_type_enabled(qword_1EDE7B5C8, v23))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v64 = v26;
      *v25 = 136315138;
      v27 = a1;
      v28 = [v27 description];
      v29 = sub_1C1265EA0();
      v31 = v30;

      v32 = sub_1C0FA0E80(v29, v31, &v64);

      *(v25 + 4) = v32;
      _os_log_impl(&dword_1C0F96000, v24, v23, "Missing details navigation context on %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x1C68F1630](v26, -1, -1);
      MEMORY[0x1C68F1630](v25, -1, -1);
    }

    if (qword_1EDE791A0 != -1)
    {
      swift_once();
    }

    v33 = qword_1EBEA4898;
    *a2 = byte_1EBEA4890;
    *(a2 + 8) = v33;
  }
}

id sub_1C108E0CC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = qword_1EDE7C6F0;
  if (!qword_1EDE7C6F0)
  {
    goto LABEL_12;
  }

  if (![swift_unknownObjectRetain() useZoomTransition])
  {
    swift_unknownObjectRelease();
LABEL_12:
    sub_1C1266410();
    if (qword_1EDE7B5C0 != -1)
    {
      swift_once();
    }

    return sub_1C1262620();
  }

  if ([a2 representedItem])
  {
    sub_1C12667F0();
    swift_unknownObjectRelease();
    v9 = [a1 presentingViewController];
    if (v9)
    {

      if (([v8 allowZoomFromSheets] & 1) == 0)
      {
        sub_1C1266410();
        if (qword_1EDE7B5C0 != -1)
        {
          swift_once();
        }

        sub_1C1262620();
        goto LABEL_41;
      }
    }

    v10 = 0x1E69DC000uLL;
    if (![v8 ensureOpaqueDestination])
    {
LABEL_34:
      v39 = objc_opt_self();
      v40 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1C0FA139C(v63, v62);
      v41 = swift_allocObject();
      *(v41 + 16) = v40;
      *(v41 + 24) = a3;
      *(v41 + 32) = a4;
      sub_1C0FD09FC(v62, (v41 + 40));
      v60 = sub_1C1094E2C;
      v61 = v41;
      v56 = MEMORY[0x1E69E9820];
      v57 = 1107296256;
      v58 = sub_1C108F8C4;
      v59 = &block_descriptor_7;
      v42 = _Block_copy(&v56);
      sub_1C0FCF1B4(a3, a4);

      v43 = [v39 zoomWithSourceViewProvider_];
      _Block_release(v42);
      v44 = objc_allocWithZone(type metadata accessor for PhotosDetailsNavigationViewControllerTransitionOptions());
      v45 = a2;
      v46 = sub_1C1234004(v45);
      if ([v8 customZoomTransitionDimming])
      {
        v47 = v46;
        [v8 zoomTransitionDimmingWhite];
        v49 = v48;
        [v8 zoomTransitionDimmingOpacity];
        v51 = [objc_allocWithZone(*(v10 + 2184)) initWithWhite:v49 alpha:v50];
        [v47 setDimmingColor_];
      }

      if ([v8 customZoomTransitionDimmingBlurEffect])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92360, &qword_1C12A3BB0);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_1C12A3AB0;
        v53 = v46;
        *(v52 + 32) = [objc_opt_self() effectWithStyle_];
        sub_1C1093984(v52, v53);
      }

      [v43 _setOptions_];
      if ([v8 useSystemSwipeToDismiss])
      {
        v54 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v60 = sub_1C1094E44;
        v61 = v54;
        v56 = MEMORY[0x1E69E9820];
        v57 = 1107296256;
        v58 = sub_1C108FAB4;
        v59 = &block_descriptor_47;
        v55 = _Block_copy(&v56);

        [v43 set:v55 interactiveDismissShouldBeginHandler:?];
        _Block_release(v55);
      }

      [v45 _setPreferredTransition_];
      [v45 setShouldUseSystemSwipeToDismiss_];

LABEL_41:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0Tm(v63);
    }

    result = [a2 view];
    if (result)
    {
      v12 = result;
      v13 = [result backgroundColor];

      if (v13)
      {
LABEL_33:

        goto LABEL_34;
      }

      sub_1C108D9BC(a2, &v56);
      if (v57)
      {
        sub_1C0FDE8F8(0, &qword_1EDE76940, 0x1E69DC888);
        v14 = sub_1C1266680();
      }

      else
      {
        v30 = [v8 useDebugColors];
        v31 = objc_opt_self();
        if (v30)
        {
          v32 = [v31 purpleColor];
        }

        else
        {
          v32 = [v31 systemBlackColor];
        }

        v14 = v32;
      }

      v33 = v14;
      v13 = sub_1C108ED04();
      ObjectType = swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v13, ObjectType, &protocol descriptor for PhotosBackgroundColorCustomizable))
      {
        v36 = v35;
        v37 = swift_getObjectType();
        (*(v36 + 16))(v33, v37, v36);
        v10 = 0x1E69DC000;
        goto LABEL_33;
      }

      result = [a2 view];
      if (result)
      {
        v38 = result;
        [result setBackgroundColor_];

        v13 = v33;
        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v15 = sub_1C1266410();
    if (qword_1EDE7B5C0 != -1)
    {
      swift_once();
    }

    v16 = qword_1EDE7B5C8;
    if (os_log_type_enabled(qword_1EDE7B5C8, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v56 = v18;
      *v17 = 136315138;
      v63[0] = &type metadata for PhotosDetailsNavigation;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92900, &unk_1C12AF2F8);
      v19 = sub_1C1265ED0();
      v21 = sub_1C0FA0E80(v19, v20, &v56);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1C0F96000, v16, v15, "Disabling zoom transition because of missing represented item: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x1C68F1630](v18, -1, -1);
      MEMORY[0x1C68F1630](v17, -1, -1);
    }

    v22 = sub_1C1266400();
    if (os_log_type_enabled(v16, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v56 = v24;
      *v23 = 136315138;
      v25 = [a2 representedItemDiagnosticDescription];
      v26 = sub_1C1265EA0();
      v28 = v27;

      v29 = sub_1C0FA0E80(v26, v28, &v56);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_1C0F96000, v16, v22, "%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x1C68F1630](v24, -1, -1);
      MEMORY[0x1C68F1630](v23, -1, -1);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id static PhotosDetailsNavigation.defaultZoomTransitionOptions.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_12_11(a1);
  v1 = qword_1EDE7C6F0;
  if (!qword_1EDE7C6F0)
  {
    return 0;
  }

  v2 = objc_allocWithZone(MEMORY[0x1E69DD320]);
  swift_unknownObjectRetain();
  v3 = [v2 init];
  if ([v1 customZoomTransitionDimming])
  {
    [v1 zoomTransitionDimmingWhite];
    v5 = v4;
    [v1 zoomTransitionDimmingOpacity];
    v7 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:v5 alpha:v6];
    [v3 setDimmingColor_];
  }

  if ([v1 customZoomTransitionDimmingBlurEffect])
  {
    v8 = [objc_opt_self() effectWithStyle_];
    [v3 setDimmingVisualEffect_];
  }

  swift_unknownObjectRelease();
  return v3;
}

void UIViewController.detailsNavigationContext.getter(uint64_t *a1@<X8>)
{
  v2 = sub_1C108FC14();
  v3 = *&v2[OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext];
  v4 = *&v2[OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext + 8];
  v5 = *&v2[OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext + 16];
  v6 = *&v2[OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext + 24];
  v7 = *&v2[OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext + 32];
  v8 = *&v2[OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext + 40];
  sub_1C108FCEC(v3, v4, v5, v6, v7, v8);

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
}

id UIViewController.finalizedRepresentedItem.getter@<X0>(uint64_t a1@<X8>)
{
  result = [v1 representedItem];
  if (!result)
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return result;
  }

  sub_1C12667F0();
  swift_unknownObjectRelease();
  sub_1C0FD09FC(&v14, v16);
  sub_1C109047C(&v14);
  v4 = *(&v14 + 1);
  if (!*(&v14 + 1))
  {
    if (qword_1EDE80640 != -1)
    {
      OUTLINED_FUNCTION_10_3(&qword_1EDE80640);
    }

    v6 = qword_1EDE80648;
    v4 = unk_1EDE80650;
    v5 = qword_1EDE80668;

    v9 = OUTLINED_FUNCTION_41_0();
    sub_1C0FCF1B4(v9, v10);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_9:
    sub_1C0FA139C(v16, &v14);
    goto LABEL_10;
  }

  v5 = v15;
  v6 = v14;
  if (!v15)
  {
    goto LABEL_9;
  }

LABEL_4:

  v5(v13, v16);
  v7 = OUTLINED_FUNCTION_41_0();
  sub_1C0FCF004(v7, v8);
  sub_1C0FD09FC(v13, &v14);
LABEL_10:
  sub_1C10C8EF4(&v14, (a1 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm(&v14);
  *a1 = v6;
  *(a1 + 8) = v4;

  __swift_destroy_boxed_opaque_existential_0Tm(v16);

  v11 = OUTLINED_FUNCTION_41_0();
  return sub_1C0FCF004(v11, v12);
}

id sub_1C108ED04()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (!v0 || (result = [v0 topViewController]) == 0)
  {

    return v2;
  }

  return result;
}

id sub_1C108ED78(void *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *), uint64_t a4, uint64_t a5)
{
  Strong = [a1 presentingViewController];
  if (!Strong)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_36;
    }
  }

  v10 = Strong;
  v11 = [Strong view];
  UIViewController.detailsNavigationContext.getter(&v48);
  if (*(&v48 + 1))
  {
    sub_1C1093918(v48, *(&v48 + 1), v49, *(&v49 + 1), v50, *(&v50 + 1));
  }

  else
  {
    sub_1C108F43C(0xD000000000000022, 0x80000001C126B330, a1);
  }

  UIViewController.finalizedRepresentedItem.getter(v47);
  if (!*(&v47[0] + 1))
  {
    sub_1C0FFC7B0(v47, &qword_1EBE928A0, &qword_1C12AEFD0);
    sub_1C108F43C(0xD000000000000018, 0x80000001C126B360, a1);
    if (v11)
    {

      return v11;
    }

    goto LABEL_34;
  }

  v48 = v47[0];
  v49 = v47[1];
  v50 = v47[2];
  v12 = &qword_1EDE7B000;
  if (!a3)
  {
LABEL_23:
    v46[3] = &type metadata for PhotosDetailsNavigationContextualItem;
    v46[0] = swift_allocObject();
    sub_1C0FF8B74(&v48, v46[0] + 16);
    transitionSourceID(for:)(v46, v47);
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    v24 = [v10 view];
    if (v24)
    {
      v25 = v24;
      sub_1C1034138();
      v26 = sub_1C1266650();

      if (v26)
      {

        sub_1C0FD0978(v47);
        sub_1C0FD0978(&v48);
        return v26;
      }

      else
      {
        v27 = sub_1C1266410();
        if (qword_1EDE7B5C0 != -1)
        {
          swift_once();
        }

        v28 = v12[185];
        sub_1C0FF8B74(v47, v46);
        sub_1C0FF8B74(&v48, v45);
        if (os_log_type_enabled(v28, v27))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v44 = v30;
          *v29 = 136315394;
          sub_1C0FF8B74(v46, &v42);
          v31 = sub_1C1265ED0();
          v33 = v32;
          sub_1C0FD0978(v46);
          v34 = sub_1C0FA0E80(v31, v33, &v44);

          *(v29 + 4) = v34;
          *(v29 + 12) = 2080;
          v42 = 91;
          v43 = 0xE100000000000000;
          MEMORY[0x1C68EF850](v45[0], v45[1]);
          MEMORY[0x1C68EF850](47, 0xE100000000000000);
          v35 = sub_1C0FD0524();
          MEMORY[0x1C68EF850](v35);

          MEMORY[0x1C68EF850](93, 0xE100000000000000);
          v36 = v42;
          v37 = v43;
          sub_1C0FD0978(v45);
          v38 = sub_1C0FA0E80(v36, v37, &v44);

          *(v29 + 14) = v38;
          _os_log_impl(&dword_1C0F96000, v28, v27, "Failed to find source view with id: %s for represented item: %s", v29, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1C68F1630](v30, -1, -1);
          MEMORY[0x1C68F1630](v29, -1, -1);
        }

        else
        {

          sub_1C0FD0978(v45);
          sub_1C0FD0978(v46);
        }

        sub_1C0FD0978(v47);
        sub_1C0FD0978(&v48);
      }

      return v11;
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (![a1 representedItem])
  {
LABEL_11:
    sub_1C0FCF004(a3, a4);
    goto LABEL_23;
  }

  sub_1C12667F0();
  swift_unknownObjectRelease();
  sub_1C0FA139C(v47, v46);
  sub_1C0FA139C(a5, v45);
  v13 = sub_1C0FCFE68(v46, v45);
  sub_1C0FD0A94(v45);
  sub_1C0FD0A94(v46);
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    goto LABEL_11;
  }

  sub_1C0FA139C(v47, v46);
  a3(&v44, v46);
  sub_1C1094EF0(v46);
  if ((v44 & 0x100) != 0)
  {
    v41 = sub_1C1266410();
    if (qword_1EDE7B5C0 != -1)
    {
      swift_once();
    }

    v14 = qword_1EDE7B5C8;
    sub_1C0FA139C(v47, v46);
    if (os_log_type_enabled(v14, v41))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v42 = v16;
      *v15 = 136315138;
      sub_1C0FA139C(v46, v45);
      v17 = sub_1C1265ED0();
      log = v14;
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      v20 = sub_1C0FA0E80(v17, v19, &v42);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1C0F96000, log, v41, "Failed to scroll source view to %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x1C68F1630](v16, -1, -1);
      v21 = v15;
      v12 = &qword_1EDE7B000;
      MEMORY[0x1C68F1630](v21, -1, -1);
      sub_1C0FCF004(a3, a4);
    }

    else
    {
      sub_1C0FCF004(a3, a4);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
    }

    goto LABEL_22;
  }

  v22 = [v10 view];
  if (v22)
  {
    v23 = v22;
    [v22 layoutIfNeeded];
    sub_1C0FCF004(a3, a4);

LABEL_22:
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    goto LABEL_23;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_1C1266B70();
  __break(1u);
  return result;
}

uint64_t sub_1C108F43C(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_1C1266410();
  if (qword_1EDE7B5C0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDE7B5C8;
  if (os_log_type_enabled(qword_1EDE7B5C8, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1C0FA0E80(a1, a2, &v25);
    *(v8 + 12) = 2080;
    v10 = a3;
    v11 = [v10 description];
    v12 = sub_1C1265EA0();
    v14 = v13;

    v15 = sub_1C0FA0E80(v12, v14, &v25);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1C0F96000, v7, v6, "Presented view controller error: %s %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C68F1630](v9, -1, -1);
    MEMORY[0x1C68F1630](v8, -1, -1);
  }

  v16 = sub_1C1266400();
  result = os_log_type_enabled(v7, v16);
  if (result)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136315138;
    v20 = [a3 representedItemDiagnosticDescription];
    v21 = sub_1C1265EA0();
    v23 = v22;

    v24 = sub_1C0FA0E80(v21, v23, &v25);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_1C0F96000, v7, v16, "%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x1C68F1630](v19, -1, -1);
    return MEMORY[0x1C68F1630](v18, -1, -1);
  }

  return result;
}

double transitionSourceID(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C0FA139C(a1, v20);
  if (swift_dynamicCast())
  {
    v4 = v18;
    *a2 = v17;
    *(a2 + 16) = v4;
    result = *&v19;
    *(a2 + 32) = v19;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    sub_1C0FFC7B0(&v17, &qword_1EBE928A0, &qword_1C12AEFD0);
    v6 = sub_1C1266410();
    if (qword_1EDE7B5C0 != -1)
    {
      OUTLINED_FUNCTION_3_22(&qword_1EDE7B5C0);
    }

    v7 = qword_1EDE7B5C8;
    sub_1C0FA139C(a1, &v17);
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136315138;
      sub_1C0FA139C(&v17, v20);
      v10 = sub_1C1265ED0();
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_0Tm(&v17);
      v13 = sub_1C0FA0E80(v10, v12, &v16);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1C0F96000, v7, v6, "Unexpected represented item: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x1C68F1630](v9, -1, -1);
      MEMORY[0x1C68F1630](v8, -1, -1);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(&v17);
    }

    if (qword_1EDE80640 != -1)
    {
      OUTLINED_FUNCTION_10_3(&qword_1EDE80640);
    }

    v15 = qword_1EDE80648;
    v14 = unk_1EDE80650;
    sub_1C0FA139C(a1, a2 + 16);
    *a2 = v15;
    *(a2 + 8) = v14;
  }

  return result;
}

id sub_1C108F8C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_1C108F92C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong viewIfLoaded];
    if (v5)
    {
      v6 = v5;
      v7 = [a1 velocity];
      v9 = v8;
      v11 = v10;
      MEMORY[0x1C68F0BA0](v7, v10, v8);
      PXRadiansToDegrees();
      if (sub_1C1261F80())
      {
        v12 = 2;
      }

      else if (sub_1C1261F80())
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      [a1 location];
      v15 = v14;
      v17 = v16;
      v18 = v6;
      v19 = [a1 proposedBeginState];
      v20 = v18;
      v13 = sub_1C1093A08(v20, v12, v19, v4, v15, v17, v9, v11);

      v4 = v20;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1C108FAB4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

double sub_1C108FB0C@<D0>(_OWORD *a1@<X8>)
{
  UIViewController.detailsNavigationContext.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void sub_1C108FB50(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6[0] = *a1;
  v6[1] = v1;
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v4;
  v6[5] = v5;
  sub_1C108FCEC(v6[0], v1, v2, v3, v4, v5);
  UIViewController.detailsNavigationContext.setter(v6);
}

void UIViewController.detailsNavigationContext.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v12 = sub_1C108FC14();
  v4 = OUTLINED_FUNCTION_6_17(v12 + OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext);
  v5 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 16) = v5;
  *(v6 + 32) = v2;
  *(v6 + 40) = v3;
  sub_1C1093918(v4, v7, v8, v9, v10, v11);
}

id sub_1C108FC14()
{
  v1 = v0;
  v2 = sub_1C10909D4();
  if (v2)
  {
    return v2;
  }

  v3 = [objc_allocWithZone(_s14AssociatedDataCMa()) init];
  if (qword_1EDE7B658 != -1)
  {
    swift_once();
  }

  v4 = sub_1C1262410();
  __swift_project_value_buffer(v4, qword_1EDE7B660);
  swift_beginAccess();
  v5 = sub_1C12623F0();
  swift_endAccess();
  objc_setAssociatedObject(v1, v5, v3, 1);
  return v3;
}

void sub_1C108FCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {

    sub_1C0FCF1B4(a5, a6);
  }
}

void (*UIViewController.detailsNavigationContext.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[6] = v1;
  UIViewController.detailsNavigationContext.getter(v3);
  return sub_1C108FDBC;
}

void sub_1C108FDBC(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10[0] = v4;
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  v10[4] = v8;
  v10[5] = v9;
  if (a2)
  {
    sub_1C108FCEC(v4, v5, v6, v7, v8, v9);
    UIViewController.detailsNavigationContext.setter(v10);
    sub_1C1093918(*v3, v3[1], v3[2], v3[3], v3[4], v3[5]);
  }

  else
  {
    UIViewController.detailsNavigationContext.setter(v10);
  }

  free(v3);
}

id sub_1C108FE50(void *a1)
{
  v1 = a1;
  UIViewController.representedItemDiagnosticDescription.getter();

  v2 = sub_1C1265E70();

  return v2;
}

uint64_t UIViewController.representedItemDiagnosticDescription.getter()
{
  v1 = v0;
  if ([v0 representedItem])
  {
    sub_1C12667F0();
    swift_unknownObjectRelease();
    sub_1C0FD09FC(v52, v53);
    sub_1C0FA139C(v53, v52);
    v44 = sub_1C1265ED0();
    v3 = v2;
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
  }

  else
  {
    v3 = 0xE100000000000000;
    v44 = 45;
  }

  v4 = [v0 childViewControllerForRepresentedItem];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 description];
    v43 = sub_1C1265EA0();
    v8 = v7;
  }

  else
  {
    v8 = 0xE100000000000000;
    v43 = 45;
  }

  sub_1C109047C(v53);
  if (*(&v53[0] + 1))
  {
    v9 = sub_1C1265ED0();
    v11 = v10;
  }

  else
  {
    v11 = 0xE100000000000000;
    v9 = 45;
  }

  UIViewController.finalizedRepresentedItem.getter(v52);
  if (*(&v52[0] + 1))
  {
    v53[0] = v52[0];
    v53[1] = v52[1];
    v53[2] = v52[2];
    *&v52[0] = 91;
    *(&v52[0] + 1) = 0xE100000000000000;
    MEMORY[0x1C68EF850](*&v53[0], *(&v53[0] + 1));
    MEMORY[0x1C68EF850](47, 0xE100000000000000);
    v12 = sub_1C0FD0524();
    MEMORY[0x1C68EF850](v12);

    MEMORY[0x1C68EF850](93, 0xE100000000000000);
    v13 = *(&v52[0] + 1);
    v14 = *&v52[0];
    sub_1C0FD0978(v53);
  }

  else
  {
    sub_1C0FFC7B0(v52, &qword_1EBE928A0, &qword_1C12AEFD0);
    v13 = 0xE100000000000000;
    v14 = 45;
  }

  *&v53[0] = 0;
  *(&v53[0] + 1) = 0xE000000000000000;
  sub_1C1266940();
  v15 = v1;
  v16 = [v15 description];
  v17 = sub_1C1265EA0();
  v19 = v18;

  MEMORY[0x1C68EF850](v17, v19);

  MEMORY[0x1C68EF850](0xD000000000000014, 0x80000001C126B0A0);
  MEMORY[0x1C68EF850](v44, v3);

  MEMORY[0x1C68EF850](0xD00000000000001CLL, 0x80000001C126B0C0);
  MEMORY[0x1C68EF850](v43, v8);

  OUTLINED_FUNCTION_13_12();
  MEMORY[0x1C68EF850](v9, v11);

  OUTLINED_FUNCTION_13_12();
  MEMORY[0x1C68EF850](v14, v13);

  v20 = [v15 childViewControllers];
  sub_1C0FDE8F8(0, &qword_1EDE7B648, 0x1E69DD258);
  v21 = sub_1C12660B0();

  v51 = v21;
  v22 = [v15 childViewControllerForRepresentedItem];
  if (v22)
  {
    v23 = v22;
    *&v52[0] = v22;
    MEMORY[0x1EEE9AC00](v22);
    v41 = v52;
    sub_1C108D240(sub_1C1093E30, v40, v21);
    if ((v24 & 1) == 0)
    {
      MEMORY[0x1C68EF9D0]();
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }
  }

  while (sub_1C0FF7688() >= 1)
  {
    MEMORY[0x1C68EF850](31754, 0xE200000000000000);
    v25 = sub_1C0FF7688();
    if (!v25)
    {
      break;
    }

    v26 = v25;
    if (v25 >= 1)
    {
      v27 = 0;
      v44 = v21 & 0xC000000000000001;
      v28 = MEMORY[0x1E69E6158];
      v29 = v21;
      do
      {
        if (v44)
        {
          v30 = MEMORY[0x1C68F02D0](v27, v21);
        }

        else
        {
          v30 = *(v21 + 8 * v27 + 32);
        }

        v31 = v30;
        ++v27;
        *&v52[0] = 0x2D2D2D2B0ALL;
        *(&v52[0] + 1) = 0xE500000000000000;
        v32 = [v30 representedItemDiagnosticDescription];
        v33 = sub_1C1265EA0();
        v35 = v34;

        v49 = v33;
        v50 = v35;
        v46 = 0xE500000000000000;
        v47 = 10;
        v48 = 0xE100000000000000;
        v45 = 0x2020202E0ALL;
        v41 = sub_1C0FDB9AC();
        v42 = v41;
        v40[0] = v28;
        v40[1] = v41;
        v36 = sub_1C12667C0();
        v38 = v37;

        MEMORY[0x1C68EF850](v36, v38);

        MEMORY[0x1C68EF850](*&v52[0], *(&v52[0] + 1));

        v21 = v29;
      }

      while (v26 != v27);
      break;
    }

    __break(1u);
LABEL_28:
    sub_1C12660F0();
LABEL_17:
    sub_1C1266160();
    v21 = v51;
  }

  return *&v53[0];
}

void sub_1C109047C(uint64_t *a1@<X8>)
{
  v2 = sub_1C10909D4();
  if (v2)
  {
    v3 = v2;
    v4 = *(v2 + OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext);
    v5 = *(v2 + OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext + 8);
    v6 = *(v2 + OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext + 16);
    v7 = *(v2 + OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext + 24);
    v8 = *(v2 + OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext + 32);
    v9 = *(v2 + OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext + 40);
    sub_1C108FCEC(v4, v5, v6, v7, v8, v9);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
}

id UIViewController.presentationSourceView(for:in:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[4];
  if (v7)
  {
    v8 = a2[5];

    v7(&v14, a1);
    sub_1C0FCF004(v7, v8);
    sub_1C0FD09FC(&v14, v13);
  }

  else
  {
    sub_1C0FA139C(a1, v13);
  }

  sub_1C10C8EF4(v13, v15);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  *&v14 = v6;
  *(&v14 + 1) = v5;
  v12[3] = &type metadata for PhotosDetailsNavigationContextualItem;
  v12[0] = swift_allocObject();
  sub_1C0FF8B74(&v14, v12[0] + 16);

  transitionSourceID(for:)(v12, v13);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  result = [v3 view];
  if (result)
  {
    v10 = result;
    sub_1C1034138();
    v11 = sub_1C1266660();

    sub_1C0FD0978(v13);
    sub_1C0FD0978(&v14);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C1090674(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v9 = [v4 viewIfLoaded];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  [v9 convertPoint:a1 fromCoordinateSpace:{a3, a4}];
  if (![v10 pointInside:0 withEvent:?])
  {

LABEL_16:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v21 = v4;
  sub_1C0FDE8F8(0, &qword_1EDE7B648, 0x1E69DD258);
  v11 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92910, &qword_1C12AF310);
  if (swift_dynamicCast())
  {

LABEL_18:
    sub_1C0F9DDE4(&v18, v22);
    sub_1C0F9DDE4(v22, a2);
  }

  else
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_1C0FFC7B0(&v18, &qword_1EBE92908, &qword_1C12AF308);
    v12 = [v11 childViewControllers];
    v13 = sub_1C12660B0();

    v14 = sub_1C0FF7688();
    for (i = 0; ; ++i)
    {
      if (v14 == i)
      {

        goto LABEL_16;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1C68F02D0](i, v13);
      }

      else
      {
        if (i >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v16 = *(v13 + 8 * i + 32);
      }

      v17 = v16;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1C1090674(a1, &v18, a3, a4);

      if (*(&v19 + 1))
      {

        goto LABEL_18;
      }

      sub_1C0FFC7B0(&v18, &qword_1EBE92908, &qword_1C12AF308);
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }
}

id sub_1C10908B8()
{
  v1 = &v0[OBJC_IVAR____TtCE17PhotosSwiftUICoreCSo16UIViewControllerP33_BC75BA9775690B5F54CDBFF2E7C5972414AssociatedData_detailsNavigationContext];
  v2 = _s14AssociatedDataCMa();
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1C1090934()
{
  v2.receiver = v0;
  v2.super_class = _s14AssociatedDataCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1090988()
{
  v0 = sub_1C1262410();
  __swift_allocate_value_buffer(v0, qword_1EDE7B660);
  __swift_project_value_buffer(v0, qword_1EDE7B660);
  return sub_1C1262400();
}

uint64_t sub_1C10909D4()
{
  v1 = v0;
  if (qword_1EDE7B658 != -1)
  {
    swift_once();
  }

  v2 = sub_1C1262410();
  __swift_project_value_buffer(v2, qword_1EDE7B660);
  swift_beginAccess();
  v3 = sub_1C12623F0();
  swift_endAccess();
  if (objc_getAssociatedObject(v1, v3))
  {
    sub_1C12667F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    _s14AssociatedDataCMa();
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C0FFC7B0(v8, &qword_1EBE90620, &qword_1C12A8B00);
    return 0;
  }
}

uint64_t photosDetailsNavigationSettings.setter(uint64_t a1)
{
  swift_beginAccess();
  qword_1EDE7C6F0 = a1;
  return swift_unknownObjectRelease();
}

double sub_1C1090BE0()
{
  result = 0.0;
  xmmword_1EDE78E00 = 0u;
  unk_1EDE78E10 = 0u;
  return result;
}

uint64_t sub_1C1090BF4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDE7F530 != -1)
  {
    swift_once();
  }

  return sub_1C1094F6C(&xmmword_1EDE78E00, a1, &qword_1EBE90620, &qword_1C12A8B00);
}

double sub_1C1090C64()
{
  qword_1EBE92888 = 0;
  result = 0.0;
  xmmword_1EBE92868 = 0u;
  unk_1EBE92878 = 0u;
  xmmword_1EBE92858 = 0u;
  return result;
}

double sub_1C1090C80(__int128 *a1, void (*a2)(__int128 *__return_ptr))
{
  if (*(a1 + 3))
  {
    v3 = a1[1];
    v6 = *a1;
    v7 = v3;
    v8 = a1[2];
    v9 = *(a1 + 6);
  }

  else
  {
    a2(&v6);
  }

  v4 = v7;
  *a1 = v6;
  a1[1] = v4;
  result = *&v8;
  a1[2] = v8;
  *(a1 + 6) = v9;
  return result;
}

uint64_t sub_1C1090CF4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDE7F0C8 != -1)
  {
    swift_once();
  }

  return sub_1C1094F6C(&xmmword_1EBE92858, a1, &qword_1EBE92890, &qword_1C12AEFC8);
}

uint64_t sub_1C1090D68()
{
  sub_1C0FDE8F8(0, &qword_1EDE7B5B0, 0x1E69E9BF8);
  result = sub_1C1266750();
  qword_1EDE7B5C8 = result;
  return result;
}

id static OS_os_log.photosDetailsNavigation.getter()
{
  if (qword_1EDE7B5C0 != -1)
  {
    OUTLINED_FUNCTION_3_22(&qword_1EDE7B5C0);
  }

  v1 = qword_1EDE7B5C8;

  return v1;
}

uint64_t sub_1C1090E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v205 = a2;
  v5 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  v6 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  v219 = v6;
  v7 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  v218 = v7;
  v222 = sub_1C1263190();
  v199 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v208 = &v175 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v207 = (&v175 - v10);
  v11 = *(a1 + 24);
  v12 = sub_1C1034138();
  v223 = v5;
  v224 = v11;
  *&v266 = v5;
  *(&v266 + 1) = &type metadata for PhotosDetailsNavigationContextualItem;
  *&v267 = v11;
  v213 = v12;
  *(&v267 + 1) = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v210 = sub_1C1263190();
  v211 = sub_1C1263190();
  v214 = sub_1C1263190();
  v14 = sub_1C1263C30();
  v15 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE928C0, &qword_1C12AF258);
  v16 = sub_1C1263190();
  v17 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE928C8, &qword_1C12AF260);
  v18 = sub_1C1263190();
  v183 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v182 = &v175 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v181 = &v175 - v21;
  v221 = v22;
  v23 = sub_1C1263C30();
  v196 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v195 = &v175 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v194 = &v175 - v26;
  v209 = a1;
  v27 = a1;
  v28 = v3;
  v190 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v185 = v30;
  v189 = &v175 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = v15;
  v187 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v186 = &v175 - v32;
  v216 = v16;
  v191 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v200 = &v175 - v34;
  v217 = v17;
  v193 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v175 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v180 = &v175 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v201 = &v175 - v41;
  v188 = OpaqueTypeMetadata2;
  v42 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v184 = &v175 - v44;
  v220 = v14;
  v192 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v206 = &v175 - v46;
  v47 = sub_1C12637E0();
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v175 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = v23;
  v51 = sub_1C1263C30();
  v202 = *(v51 - 8);
  v203 = v51;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v175 - v52;
  sub_1C0FD769C(&v266);
  v212 = v53;
  if (!*(&v267 + 1))
  {
    sub_1C0FFC7B0(&v266, &qword_1EBE90620, &qword_1C12A8B00);
LABEL_7:
    v64 = &v28[*(v209 + 44)];
    v65 = *(v64 + 1);
    v66 = *(v64 + 4);
    *&v266 = *v64;
    *(&v266 + 1) = v65;
    v267 = *(v64 + 1);
    v268 = v66;

    v67 = v208;
    v68 = v224;
    View.photosBorders(_:)(&v266, v224, v208);

    v69 = sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0, &qword_1C12A8E00, MEMORY[0x1E6980A18]);
    v317 = v68;
    v318 = v69;
    WitnessTable = swift_getWitnessTable();
    v71 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
    v315 = WitnessTable;
    v316 = v71;
    v72 = swift_getWitnessTable();
    v73 = sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0, &unk_1C12A8E80, MEMORY[0x1E697F940]);
    v313 = v72;
    v314 = v73;
    v74 = v222;
    v206 = swift_getWitnessTable();
    sub_1C0FDBA4C();
    v209 = v199[1];
    (v209)(v67, v74);
    sub_1C0FDBA4C();
    *&v266 = v223;
    *(&v266 + 1) = &type metadata for PhotosDetailsNavigationContextualItem;
    *&v267 = v224;
    *(&v267 + 1) = v213;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v311 = OpaqueTypeConformance2;
    v312 = v69;
    v309 = swift_getWitnessTable();
    v310 = v71;
    v307 = swift_getWitnessTable();
    v308 = v73;
    v305 = swift_getWitnessTable();
    v306 = OpaqueTypeConformance2;
    v303 = swift_getWitnessTable();
    v76 = MEMORY[0x1E69805D0];
    v304 = MEMORY[0x1E69805D0];
    v77 = swift_getWitnessTable();
    v78 = sub_1C0FDB6D4(&qword_1EDE7BA20, &qword_1EBE928C0, &qword_1C12AF258, MEMORY[0x1E6980620]);
    v301 = v77;
    v302 = v78;
    v299 = swift_getWitnessTable();
    v300 = v76;
    v79 = swift_getWitnessTable();
    v80 = sub_1C0FDB6D4(&qword_1EDE7BCA0, &qword_1EBE928C8, &qword_1C12AF260, MEMORY[0x1E697EC18]);
    v297 = v79;
    v298 = v80;
    v295 = swift_getWitnessTable();
    v296 = v79;
    swift_getWitnessTable();
    v81 = v208;
    sub_1C1112E18();
    v82 = v81;
    v83 = v224;
    v84 = v209;
    (v209)(v82, v74);
    v84(v207, v74);
    v85 = v213;
    v86 = v223;
    goto LABEL_16;
  }

  sub_1C0FD09FC(&v266, v319);
  swift_beginAccess();
  if (!qword_1EDE7C6F0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v319);
    goto LABEL_7;
  }

  v207 = v42;
  v208 = v48;
  v175 = v37;
  v54 = *(v209 + 60);
  v197 = qword_1EDE7C6F0;
  v198 = v28;
  v55 = &v28[v54];
  v56 = *v55;
  v57 = *(v55 + 1);
  v58 = *(v55 + 2);
  v59 = *(v55 + 3);
  v61 = *(v55 + 4);
  v60 = *(v55 + 5);
  v62 = v223;
  if (v55[48])
  {
    v260 = *v55;
    v261 = v57;
    v262 = v58;
    v263 = v59;
    v264 = v61;
    v265 = v60;
    swift_unknownObjectRetain();
    sub_1C10948BC(v56, v57, v58, v59, v61, v60, 1);
  }

  else
  {
    swift_unknownObjectRetain();
    sub_1C10948BC(v56, v57, v58, v59, v61, v60, 0);
    sub_1C1266420();
    v199 = v58;
    v87 = sub_1C1264410();
    sub_1C1262620();

    v62 = v223;
    sub_1C12637D0();
    swift_getAtKeyPath();
    v88 = sub_1C1094934(v56, v57, v199, v59, v61, v60, 0);
    (*(v208 + 8))(v50, v47, v88);
    v56 = v260;
    v57 = v261;
    v61 = v264;
    v60 = v265;
  }

  v63 = v224;
  if (v61)
  {

    v61(&v266, v319);
    sub_1C0FCF004(v61, v60);
    sub_1C0FD09FC(&v266, &v251);
  }

  else
  {
    sub_1C0FA139C(v319, &v251);
  }

  sub_1C10C8EF4(&v251, &v267);
  __swift_destroy_boxed_opaque_existential_0Tm(&v251);
  *&v266 = v56;
  *(&v266 + 1) = v57;

  sub_1C0FCF004(v61, v60);
  *(&v252 + 1) = &type metadata for PhotosDetailsNavigationContextualItem;
  *&v251 = swift_allocObject();
  sub_1C0FF8B74(&v266, v251 + 16);
  transitionSourceID(for:)(&v251, &v260);
  v89 = __swift_destroy_boxed_opaque_existential_0Tm(&v251);
  MEMORY[0x1EEE9AC00](v89);
  *(&v175 - 4) = v62;
  *(&v175 - 3) = v63;
  v90 = v197;
  v91 = v198;
  *(&v175 - 2) = v197;
  *(&v175 - 1) = v91;
  v92 = v184;
  v93 = v213;
  sub_1C1264CA0();
  v94 = [v90 workAround125263280];
  v95 = v94;
  v199 = &v175;
  MEMORY[0x1EEE9AC00](v94);
  *(&v175 - 4) = v62;
  *(&v175 - 3) = v63;
  *(&v175 - 2) = v91;
  *&v251 = v62;
  *(&v251 + 1) = &type metadata for PhotosDetailsNavigationContextualItem;
  *&v252 = v63;
  *(&v252 + 1) = v93;
  v96 = swift_getOpaqueTypeConformance2();
  v97 = sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0, &qword_1C12A8E00, MEMORY[0x1E6980A18]);
  v258 = v96;
  v176 = v96;
  v179 = v97;
  v259 = v97;
  v98 = MEMORY[0x1E697E858];
  v99 = swift_getWitnessTable();
  v100 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
  v256 = v99;
  v178 = v100;
  v257 = v100;
  v208 = v98;
  v101 = swift_getWitnessTable();
  v102 = sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0, &unk_1C12A8E80, MEMORY[0x1E697F940]);
  v254 = v101;
  v177 = v102;
  v255 = v102;
  v103 = v214;
  v104 = swift_getWitnessTable();
  v105 = v188;
  View.onStaticCondition<A>(_:transform:)(v95, sub_1C10949B8, (&v175 - 6), v188, v103, v96, v104, v206);
  v207[1](v92, v105);
  v107 = v189;
  v106 = v190;
  v108 = *(v190 + 16);
  v199 = (v190 + 16);
  v207 = v108;
  v109 = v209;
  (v108)(v189, v91, v209);
  sub_1C0FF8B74(&v266, &v251);
  v110 = v62;
  v111 = *(v106 + 80);
  v184 = (((v111 + 32) & ~v111) + v185);
  v188 = (v111 + 32) & ~v111;
  v112 = (v184 + 7) & 0xFFFFFFFFFFFFFFF8;
  v185 = v112;
  v113 = swift_allocObject();
  v114 = v224;
  *(v113 + 16) = v110;
  *(v113 + 24) = v114;
  v190 = *(v106 + 32);
  (v190)(v113 + ((v111 + 32) & ~v111), v107, v109);
  v115 = (v113 + v112);
  v116 = v252;
  *v115 = v251;
  v115[1] = v116;
  v115[2] = v253;
  v249 = v104;
  v250 = v176;
  v117 = swift_getWitnessTable();
  v118 = v186;
  sub_1C1264FF0();

  (v207)(v107, v198, v109);
  v119 = swift_allocObject();
  v120 = v224;
  *(v119 + 16) = v223;
  *(v119 + 24) = v120;
  (v190)(v119 + v188, v107, v109);
  v247 = v117;
  v248 = MEMORY[0x1E69805D0];
  v121 = v215;
  v122 = swift_getWitnessTable();
  sub_1C108D7E0();
  sub_1C1094A68();
  sub_1C1264C90();

  (*(v187 + 8))(v118, v121);
  (v207)(v107, v198, v109);
  sub_1C0FF8B74(&v266, &v251);
  v123 = v185;
  v124 = v224;
  v125 = swift_allocObject();
  *(v125 + 16) = v223;
  *(v125 + 24) = v124;
  (v190)(v125 + v188, v107, v109);
  v126 = (v125 + v123);
  v127 = v252;
  *v126 = v251;
  v126[1] = v127;
  v126[2] = v253;
  v128 = sub_1C0FDB6D4(&qword_1EDE7BA20, &qword_1EBE928C0, &qword_1C12AF258, MEMORY[0x1E6980620]);
  v245 = v122;
  v246 = v128;
  v129 = v216;
  v130 = swift_getWitnessTable();
  v131 = v200;
  sub_1C1264A60();

  (*(v191 + 8))(v131, v129);
  v132 = [v197 showDebugOverlays];
  v209 = v130;
  if (v132)
  {
    MEMORY[0x1EEE9AC00](v132);
    *(&v175 - 2) = &v266;
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE928D8, &qword_1C12AF270);
    v227 = v130;
    v228 = MEMORY[0x1E69805D0];
    v134 = v217;
    v135 = swift_getWitnessTable();
    v136 = sub_1C0FDB6D4(&qword_1EBE928E0, &qword_1EBE928D8, &qword_1C12AF270, MEMORY[0x1E6981880]);
    sub_1C10A0734(v134, v133, v135, v136, v137, v138);
    v139 = v182;
    sub_1C1264F60();
    v140 = v134;
    v141 = sub_1C0FDB6D4(&qword_1EDE7BCA0, &qword_1EBE928C8, &qword_1C12AF260, MEMORY[0x1E697EC18]);
    v225 = v135;
    v226 = v141;
    v142 = v221;
    swift_getWitnessTable();
    v143 = v181;
    sub_1C0FDBA4C();
    v144 = *(v183 + 8);
    v144(v139, v142);
    sub_1C0FDBA4C();
    v145 = v194;
    sub_1C1112D68();
    v144(v139, v142);
    v144(v143, v142);
    v146 = v204;
    v147 = MEMORY[0x1E69805D0];
    v148 = v193;
  }

  else
  {
    v243 = v130;
    v149 = MEMORY[0x1E69805D0];
    v244 = MEMORY[0x1E69805D0];
    v140 = v217;
    v150 = swift_getWitnessTable();
    v151 = v180;
    sub_1C0FDBA4C();
    v152 = v175;
    sub_1C0FDBA4C();
    v153 = sub_1C0FDB6D4(&qword_1EDE7BCA0, &qword_1EBE928C8, &qword_1C12AF260, MEMORY[0x1E697EC18]);
    v241 = v150;
    v242 = v153;
    swift_getWitnessTable();
    v145 = v194;
    sub_1C1112E18();
    v148 = v193;
    v154 = *(v193 + 8);
    v154(v152, v140);
    v154(v151, v140);
    v146 = v204;
    v147 = v149;
  }

  v239 = v209;
  v240 = v147;
  v155 = swift_getWitnessTable();
  v156 = sub_1C0FDB6D4(&qword_1EDE7BCA0, &qword_1EBE928C8, &qword_1C12AF260, MEMORY[0x1E697EC18]);
  v237 = v155;
  v238 = v156;
  v235 = swift_getWitnessTable();
  v236 = v155;
  swift_getWitnessTable();
  v157 = v195;
  sub_1C0FDBA4C();
  v233 = v224;
  v234 = v179;
  v231 = swift_getWitnessTable();
  v232 = v178;
  v229 = swift_getWitnessTable();
  v230 = v177;
  swift_getWitnessTable();
  sub_1C1112D68();
  swift_unknownObjectRelease();
  v158 = *(v196 + 8);
  v158(v157, v146);
  v158(v145, v146);
  (*(v148 + 8))(v201, v140);
  (*(v192 + 8))(v206, v220);
  sub_1C0FD0978(&v260);
  __swift_destroy_boxed_opaque_existential_0Tm(v319);
  sub_1C0FD0978(&v266);
  v85 = v213;
  v86 = v223;
  v83 = v224;
LABEL_16:
  *&v266 = v86;
  *(&v266 + 1) = &type metadata for PhotosDetailsNavigationContextualItem;
  *&v267 = v83;
  *(&v267 + 1) = v85;
  v159 = swift_getOpaqueTypeConformance2();
  v160 = sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0, &qword_1C12A8E00, MEMORY[0x1E6980A18]);
  v293 = v159;
  v294 = v160;
  v161 = swift_getWitnessTable();
  v162 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
  v291 = v161;
  v292 = v162;
  v163 = swift_getWitnessTable();
  v164 = sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0, &unk_1C12A8E80, MEMORY[0x1E697F940]);
  v289 = v163;
  v290 = v164;
  v287 = swift_getWitnessTable();
  v288 = v159;
  v285 = swift_getWitnessTable();
  v165 = MEMORY[0x1E69805D0];
  v286 = MEMORY[0x1E69805D0];
  v166 = swift_getWitnessTable();
  v167 = sub_1C0FDB6D4(&qword_1EDE7BA20, &qword_1EBE928C0, &qword_1C12AF258, MEMORY[0x1E6980620]);
  v283 = v166;
  v284 = v167;
  v281 = swift_getWitnessTable();
  v282 = v165;
  v168 = swift_getWitnessTable();
  v169 = sub_1C0FDB6D4(&qword_1EDE7BCA0, &qword_1EBE928C8, &qword_1C12AF260, MEMORY[0x1E697EC18]);
  v279 = v168;
  v280 = v169;
  v277 = swift_getWitnessTable();
  v278 = v168;
  v170 = swift_getWitnessTable();
  v275 = v83;
  v276 = v160;
  v273 = swift_getWitnessTable();
  v274 = v162;
  v271 = swift_getWitnessTable();
  v272 = v164;
  v171 = swift_getWitnessTable();
  v269 = v170;
  v270 = v171;
  v172 = v203;
  swift_getWitnessTable();
  v173 = v212;
  sub_1C0FDBA4C();
  return (*(v202 + 8))(v173, v172);
}

uint64_t sub_1C1092984@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v21 = a3;
  v22 = a4;
  v23 = a2;
  v20 = a1;
  v6 = sub_1C12639D0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C12643A0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1C1265170();
  sub_1C1264390();

  if (([v20 workAround125263280] & 1) == 0)
  {
    type metadata accessor for PhotosDetailsPresentationSourceView(0, v21, v22, v17);
    (*(v7 + 104))(v9, *MEMORY[0x1E697F468], v6);
    sub_1C1264370();
    (*(v7 + 8))(v9, v6);

    sub_1C1264390();
    v18 = *(v11 + 8);
    v18(v13, v10);
    v18(a5, v10);

    (*(v11 + 32))(a5, v16, v10);
  }

  result = type metadata accessor for PhotosDetailsPresentationSourceView(0, v21, v22, v17);
  if (*(v23 + *(result + 48)))
  {

    sub_1C1264380();

    (*(v11 + 8))(a5, v10);
    return (*(v11 + 32))(a5, v16, v10);
  }

  return result;
}

double sub_1C1092C98@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = a1 + *(type metadata accessor for PhotosDetailsPresentationSourceView(0, a2, a3, a3) + 44);
  v6 = *(v5 + 8);
  v7 = *(v5 + 32);
  v10[0] = *v5;
  v10[1] = v6;
  v11 = *(v5 + 16);
  v12 = v7;
  sub_1C1034138();

  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.photosBorders(_:)(v10, OpaqueTypeConformance2, a4);

  return result;
}

double sub_1C1092DA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v40 = a2;
  v7 = sub_1C12637E0();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for PhotosDetailsPresentationSourceView(0, a3, a4, v10);
  v11 = a1 + v39[15];
  v13 = *v11;
  v12 = *(v11 + 8);
  v14 = *(v11 + 16);
  v15 = *(v11 + 24);
  v16 = *(v11 + 32);
  v17 = *(v11 + 40);
  v18 = *(v11 + 48);
  v41 = a1;
  if (v18 == 1)
  {
    v48 = v13;
    v49[0] = v12;
    v49[1] = v14;
    v49[2] = v15;
    v50 = v16;
    v51 = v17;

    sub_1C0FCF1B4(v16, v17);
  }

  else
  {

    sub_1C1266420();
    v19 = sub_1C1264410();
    a1 = v41;
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v20 = sub_1C1094934(v13, v12, v14, v15, v16, v17, 0);
    (*(v37 + 8))(v9, v38, v20);
    v16 = v50;
    v17 = v51;
  }

  sub_1C0FCF004(v16, v17);
  v21 = v39;
  v22 = a1 + v39[16];
  v23 = *v22;
  if (*(v22 + 8) == 1)
  {
    v24 = *v22;
  }

  else
  {

    sub_1C1266420();
    v25 = sub_1C1264410();
    sub_1C1262620();

    a1 = v41;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v23, 0);
    (*(v37 + 8))(v9, v38);
    v24 = v42;
  }

  if (v24 == 2)
  {
    LOBYTE(v24) = *(a1 + v21[9]);
  }

  v26 = *(a1 + v21[13]);
  if (!v26)
  {
  }

  LOBYTE(v42) = v24;
  v43 = v26;

  sub_1C11FEEEC(&v42, v40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE928F8, &qword_1C12AF2F0);
  sub_1C12628E0();
  v27 = *v11;
  v28 = *(v11 + 8);
  v29 = *(v11 + 16);
  v30 = *(v11 + 24);
  v31 = *(v11 + 32);
  v32 = *(v11 + 40);
  if (*(v11 + 48) == 1)
  {
    v42 = *v11;
    v43 = v28;
    v44 = v29;
    v45 = v30;
    v46 = v31;
    v47 = v32;

    sub_1C0FCF1B4(v31, v32);
  }

  else
  {

    sub_1C1266420();
    v33 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v34 = sub_1C1094934(v27, v28, v29, v30, v31, v32, 0);
    (*(v37 + 8))(v9, v38, v34);
    v30 = v45;
    v31 = v46;
    v32 = v47;
  }

  sub_1C0FCF004(v31, v32);
  sub_1C0FF8B74(v40, v49);
  v35 = *(v41 + v39[10]);
  v48 = v30;
  v52 = v35;
  sub_1C12338AC();

  return result;
}

double sub_1C109320C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhotosDetailsPresentationSourceView(0, a3, a4, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE928F8, &qword_1C12AF2F0);
  sub_1C12628E0();
  sub_1C1094F6C(a1, v6, &qword_1EBE92890, &qword_1C12AEFC8);
  if (v6[3])
  {
    sub_1C1094E90(v6, v7);
    sub_1C1094DD8(v6);
  }

  else
  {
    sub_1C0FFC7B0(v6, &qword_1EBE92890, &qword_1C12AEFC8);
    memset(v7, 0, sizeof(v7));
    v8 = 0;
  }

  sub_1C1233BBC();

  return result;
}

double sub_1C10932E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  v7 = sub_1C12637E0();
  v24 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for PhotosDetailsPresentationSourceView(0, a3, a4, v10) + 60);
  v26 = a1;
  v12 = a1 + v11;
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  v16 = *(v12 + 24);
  v17 = *(v12 + 32);
  v18 = *(v12 + 40);
  if (*(v12 + 48) == 1)
  {
    *&v27 = *v12;
    *(&v27 + 1) = v14;
    *&v28 = v15;
    *(&v28 + 1) = v16;
    v29[0] = v17;
    v29[1] = v18;

    sub_1C0FCF1B4(v17, v18);
  }

  else
  {

    sub_1C1266420();
    v19 = sub_1C1264410();
    v23 = v7;
    v20 = v19;
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v21 = sub_1C1094934(v13, v14, v15, v16, v17, v18, 0);
    (*(v24 + 8))(v9, v23, v21);
    v18 = v29[1];
    v17 = v29[0];
  }

  sub_1C0FCF004(v17, v18);
  sub_1C11FEF84();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE928F8, &qword_1C12AF2F0);
  sub_1C12628E0();
  v28 = 0u;
  memset(v29, 0, 25);
  v27 = 0u;
  sub_1C12338AC();

  return result;
}

void *sub_1C109354C@<X0>(uint64_t *a7@<X8>)
{
  v8 = sub_1C12659A0();
  v10 = v9;
  sub_1C1093608(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v15, __src, sizeof(v15));
  sub_1C1094F6C(__dst, &v12, &qword_1EBE928E8, &unk_1C12AF278);
  sub_1C0FFC7B0(v15, &qword_1EBE928E8, &unk_1C12AF278);
  *a7 = v8;
  a7[1] = v10;
  return memcpy(a7 + 2, __dst, 0x58uLL);
}

double sub_1C1093608@<D0>(uint64_t *a1@<X8>)
{
  v16 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550, &qword_1C12AC4C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - v2;
  v21[0] = sub_1C1265160();
  sub_1C0FDB76C();
  sub_1C1265270();
  v4 = sub_1C12651E0();

  v5 = PhotosDetailsNavigationContextualItem.description.getter();
  v7 = v6;
  KeyPath = swift_getKeyPath();
  v9 = sub_1C1264590();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
  v10 = sub_1C1264630();
  sub_1C0FFC7B0(v3, &qword_1EBE96550, &qword_1C12AC4C0);
  v11 = swift_getKeyPath();
  LOBYTE(v21[0]) = 0;
  LOBYTE(v20[0]) = 1;
  v12 = sub_1C12651D0();
  v20[0] = v5;
  v20[1] = v7;
  LOBYTE(v20[2]) = 0;
  *(&v20[2] + 1) = *v19;
  HIDWORD(v20[2]) = *&v19[3];
  v13 = MEMORY[0x1E69E7CC0];
  v20[3] = MEMORY[0x1E69E7CC0];
  v20[4] = KeyPath;
  v20[5] = 0;
  LOBYTE(v20[6]) = 1;
  *(&v20[6] + 1) = *v18;
  HIDWORD(v20[6]) = *&v18[3];
  v20[7] = v11;
  v20[8] = v10;
  v20[9] = v12;
  v14 = v16;
  *v16 = v4;
  memcpy(v14 + 1, v20, 0x50uLL);
  v21[0] = v5;
  v21[1] = v7;
  v22 = 0;
  *v23 = *v19;
  *&v23[3] = *&v19[3];
  v24 = v13;
  v25 = KeyPath;
  v26 = 0;
  v27 = 1;
  *v28 = *v18;
  *&v28[3] = *&v18[3];
  v29 = v11;
  v30 = v10;
  v31 = v12;

  sub_1C1094F6C(v20, &v17, &qword_1EBE928F0, &qword_1C12AF2E8);
  sub_1C0FFC7B0(v21, &qword_1EBE928F0, &qword_1C12AF2E8);

  return result;
}

uint64_t sub_1C1093850(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for PhotosDetailsNavigationDisplayedMediaTracker();

  return sub_1C12628D0();
}

double sub_1C10938D4()
{
  type metadata accessor for PhotosDetailsNavigationDisplayedMediaTracker();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 57) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  return result;
}

void sub_1C1093918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {

    sub_1C0FCF004(a5, a6);
  }
}

void sub_1C1093984(uint64_t a1, void *a2)
{
  sub_1C0FDE8F8(0, &qword_1EDE7B690, 0x1E69DD290);
  v3 = sub_1C12660A0();

  [a2 setDimmingVisualEffects_];
}

uint64_t sub_1C1093A08(uint64_t a1, uint64_t a2, char a3, void *a4, double a5, double a6, double a7, double a8)
{
  sub_1C1090674(a1, &v44, a5, a6);
  if (v45)
  {
    sub_1C0F9DDE4(&v44, &v46);
    v16 = v48;
    v17 = v49;
    __swift_project_boxed_opaque_existential_1(&v46, v48);
    if (a2 == 1)
    {
      v18 = 2;
    }

    else
    {
      v18 = a2 == 2;
    }

    v19 = (*(v17 + 8))(a1, v18, a3 & 1, v16, v17, a5, a6, a7, a8);
    v20 = sub_1C1266400();
    if (qword_1EDE7B5C0 != -1)
    {
      swift_once();
    }

    v21 = qword_1EDE7B5C8;
    sub_1C1094E90(&v46, &v44);
    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v43 = v23;
      *v22 = 67109378;
      *(v22 + 4) = v19 & 1;
      *(v22 + 8) = 2080;
      sub_1C1094E90(&v44, v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92910, &qword_1C12AF310);
      v24 = sub_1C1265ED0();
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_0Tm(&v44);
      v27 = sub_1C0FA0E80(v24, v26, &v43);

      *(v22 + 10) = v27;
      _os_log_impl(&dword_1C0F96000, v21, v20, "%{BOOL}d returned by %s", v22, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x1C68F1630](v23, -1, -1);
      MEMORY[0x1C68F1630](v22, -1, -1);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(&v44);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v46);
  }

  else
  {
    sub_1C0FFC7B0(&v44, &qword_1EBE92908, &qword_1C12AF308);
    v19 = [a4 px_containsViewControllerModalInPresentation] ^ 1;
  }

  v28 = sub_1C1266400();
  if (qword_1EDE7B5C0 != -1)
  {
    swift_once();
  }

  v29 = qword_1EDE7B5C8;
  if (os_log_type_enabled(qword_1EDE7B5C8, v28))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v44 = v31;
    *v30 = 67109890;
    *(v30 + 4) = v19 & 1;
    *(v30 + 8) = 2080;
    v46 = a5;
    v47 = a6;
    type metadata accessor for CGPoint(0);
    v32 = sub_1C1265ED0();
    v34 = sub_1C0FA0E80(v32, v33, &v44);

    *(v30 + 10) = v34;
    *(v30 + 18) = 2080;
    v46 = a7;
    v47 = a8;
    type metadata accessor for CGVector(0);
    v35 = sub_1C1265ED0();
    v37 = sub_1C0FA0E80(v35, v36, &v44);

    *(v30 + 20) = v37;
    *(v30 + 28) = 2080;
    v46 = *&a2;
    type metadata accessor for UIAxis(0);
    v38 = sub_1C1265ED0();
    v40 = sub_1C0FA0E80(v38, v39, &v44);

    *(v30 + 30) = v40;
    _os_log_impl(&dword_1C0F96000, v29, v28, "Interactive dismiss should begin %{BOOL}d at %s velocity %s axis %s", v30, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1C68F1630](v31, -1, -1);
    MEMORY[0x1C68F1630](v30, -1, -1);
  }

  return v19 & 1;
}

unint64_t sub_1C1093E54()
{
  result = qword_1EBE928A8;
  if (!qword_1EBE928A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE928A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosDetailsNavigationSourceLayoutKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosDetailsNavigation(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1C10940B8(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C10947D0(319, &qword_1EDE79198, &type metadata for PhotosDetailsNavigationTransitionKind, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C10947D0(319, qword_1EDE78EE0, &type metadata for PhotosDetailsNavigationSourceLayoutKind, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C10947D0(319, &qword_1EDE76CE0, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C102DEBC(319, &unk_1EDE77528, &qword_1EBE90620, &qword_1C12A8B00);
          if (v5 <= 0x3F)
          {
            sub_1C10947D0(319, &qword_1EDE77630, &type metadata for PhotosDetailsNavigationContext, MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_1C102DEBC(319, &qword_1EDE77608, &qword_1EBE92450, qword_1C12AF1A0);
              if (v7 <= 0x3F)
              {
                sub_1C1094820(319);
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

uint64_t sub_1C1094298(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE928B8, &unk_1C12AF160);
  v9 = *(result - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  v14 = result;
  v15 = *(v9 + 80) & 0xF8;
  v16 = ~v15 & 0xFFFFFFFFFFFFFFF8;
  v17 = v15 + 16;
  if (v12 >= a2)
  {
LABEL_28:
    if (v7 == v12)
    {
      v25 = a1;
      v10 = v7;
      v14 = v5;
    }

    else
    {
      v26 = (a1 + v13 + 9) & 0xFFFFFFFFFFFFFFF8;
      if ((v11 & 0x80000000) == 0)
      {
        v27 = *(v26 + 8);
        if (v27 >= 0xFFFFFFFF)
        {
          LODWORD(v27) = -1;
        }

        return (v27 + 1);
      }

      v25 = ((v17 + ((((((v26 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8)) & v16);
    }

    return __swift_getEnumTagSinglePayload(v25, v10, v14);
  }

  v18 = ((*(*(result - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v17 + ((((((((v13 + 9) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8)) & v16) + 8;
  v19 = v18 & 0xFFFFFFF8;
  if ((v18 & 0xFFFFFFF8) != 0)
  {
    v20 = 2;
  }

  else
  {
    v20 = a2 - v12 + 1;
  }

  if (v20 >= 0x10000)
  {
    LODWORD(v21) = 4;
  }

  else
  {
    LODWORD(v21) = 2;
  }

  if (v20 < 0x100)
  {
    LODWORD(v21) = 1;
  }

  if (v20 >= 2)
  {
    v21 = v21;
  }

  else
  {
    v21 = 0;
  }

  switch(v21)
  {
    case 1:
      v22 = *(a1 + v18);
      if (!v22)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 2:
      v22 = *(a1 + v18);
      if (!v22)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 3:
      __break(1u);
      return result;
    case 4:
      v22 = *(a1 + v18);
      if (!v22)
      {
        goto LABEL_28;
      }

LABEL_25:
      v23 = v22 - 1;
      if (v19)
      {
        v23 = 0;
        v24 = *a1;
      }

      else
      {
        v24 = 0;
      }

      result = v12 + (v24 | v23) + 1;
      break;
    default:
      goto LABEL_28;
  }

  return result;
}

void sub_1C1094500(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE928B8, &unk_1C12AF160);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 64);
  v16 = *(v11 + 80) & 0xF8;
  v17 = ~v16 & 0xFFFFFFFFFFFFFFF8;
  v18 = v16 + 16;
  v19 = ((*(*(v10 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v18 + ((((((((v15 + 9) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8)) & v17) + 8;
  if (v14 >= a3)
  {
    v22 = 0;
  }

  else
  {
    if (((*(*(v10 - 8) + 64) + 7) & 0xFFFFFFF8) + ((v18 + ((((((((v15 + 9) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 111) & 0xFFFFFFF8)) & v17) == -8)
    {
      v20 = a3 - v14 + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  if (a2 <= v14)
  {
    switch(v22)
    {
      case 1:
        *(a1 + v19) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        return;
      case 2:
        *(a1 + v19) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        return;
      case 3:
LABEL_48:
        __break(1u);
        return;
      case 4:
        *(a1 + v19) = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (!a2)
        {
          return;
        }

LABEL_35:
        if (v9 == v14)
        {
          v25 = a1;
          v26 = a2;
          v12 = v9;
          v10 = v7;
        }

        else
        {
          v27 = (a1 + v15 + 9) & 0xFFFFFFFFFFFFFFF8;
          if ((v13 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              *(v27 + 8) = 0u;
              *(v27 + 24) = 0u;
              *v27 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v27 + 8) = (a2 - 1);
            }

            return;
          }

          v25 = ((v18 + ((((((v27 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8)) & v17);
          v26 = a2;
        }

        __swift_storeEnumTagSinglePayload(v25, v26, v12, v10);
        break;
    }
  }

  else
  {
    if (((*(*(v10 - 8) + 64) + 7) & 0xFFFFFFF8) + ((v18 + ((((((((v15 + 9) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 111) & 0xFFFFFFF8)) & v17) == -8)
    {
      v23 = a2 - v14;
    }

    else
    {
      v23 = 1;
    }

    if (((*(*(v10 - 8) + 64) + 7) & 0xFFFFFFF8) + ((v18 + ((((((((v15 + 9) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 111) & 0xFFFFFFF8)) & v17) != -8)
    {
      v24 = ~v14 + a2;
      bzero(a1, v19);
      *a1 = v24;
    }

    switch(v22)
    {
      case 1:
        *(a1 + v19) = v23;
        break;
      case 2:
        *(a1 + v19) = v23;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *(a1 + v19) = v23;
        break;
      default:
        return;
    }
  }
}

void sub_1C10947D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C1094820(uint64_t a1)
{
  if (!qword_1EDE77688)
  {
    type metadata accessor for PhotosDetailsNavigationDisplayedMediaTracker();
    v1 = sub_1C1262900();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE77688);
    }
  }
}

double sub_1C10948BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {

    sub_1C0FCF1B4(a5, a6);
  }

  else
  {
  }

  return result;
}

double sub_1C1094934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {

    sub_1C0FCF004(a5, a6);
  }

  else
  {
  }

  return result;
}

double sub_1C10949DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for PhotosDetailsPresentationSourceView(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1C109320C(a1, v9, v6, v7);
}

unint64_t sub_1C1094A68()
{
  result = qword_1EDE808E8;
  if (!qword_1EDE808E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92890, &qword_1C12AEFC8);
    sub_1C1094AEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE808E8);
  }

  return result;
}

unint64_t sub_1C1094AEC()
{
  result = qword_1EDE808F0;
  if (!qword_1EDE808F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE808F0);
  }

  return result;
}

uint64_t objectdestroy_22Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v5 + 16);
  type metadata accessor for PhotosDetailsPresentationSourceView(0, v6, *(v5 + 24), a4);
  OUTLINED_FUNCTION_10_4();
  v9 = *(v8 + 64);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  OUTLINED_FUNCTION_15_1();
  (*(v11 + 8))(v5 + v10, v6);

  v12 = v5 + v10 + *(v4 + 56);
  if (*(v12 + 32))
  {
    if (*(v12 + 24))
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
    }
  }

  else
  {
  }

  v13 = OUTLINED_FUNCTION_6_17(v5 + v10 + *(v4 + 60));
  sub_1C1094934(v13, v15, v16, v17, v18, v19, *(v14 + 48));
  OUTLINED_FUNCTION_14_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE928B8, &unk_1C12AF160);
  OUTLINED_FUNCTION_4_2();
  (*(v20 + 8))(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE928D0, &qword_1C12AF268);

  __swift_destroy_boxed_opaque_existential_0Tm((v5 + ((v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16));

  return swift_deallocObject();
}

uint64_t sub_1C1094D0C(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for PhotosDetailsPresentationSourceView(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = v4 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1(v4 + v8, v9, v5, v6);
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1094E90(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_15_1();
  (*v3)(a2);
  return a2;
}

double sub_1C1094F44(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

double sub_1C1094F58(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1C1094F6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_15_1();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1C1094FD0()
{
  result = qword_1EDE7F520;
  if (!qword_1EDE7F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7F520);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C1095058(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 49))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C1095098(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C1095118@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92920, &qword_1C12AF568);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v52 - v6;
  v8 = sub_1C12637E0();
  v54 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *(v1 + 32);
  v62 = *(v1 + 24);
  v11 = v63;

  if ((v11 & 1) == 0)
  {
    v12 = sub_1C1266420();
    v13 = sub_1C1264410();
    OUTLINED_FUNCTION_3_23(v12, &dword_1C0F96000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_1C12637D0();
    OUTLINED_FUNCTION_4_23();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v62, &qword_1EBE92928, &qword_1C12AF570);
    v15 = OUTLINED_FUNCTION_0_30();
    v16(v15);
  }

  v17 = sub_1C1224CE4();

  if (v17)
  {
LABEL_9:

    if ((v11 & 1) == 0)
    {
      v30 = sub_1C1266420();
      v31 = sub_1C1264410();
      OUTLINED_FUNCTION_3_23(v30, &dword_1C0F96000, v32, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

      sub_1C12637D0();
      OUTLINED_FUNCTION_4_23();
      swift_getAtKeyPath();
      sub_1C0FD1A5C(&v62, &qword_1EBE92928, &qword_1C12AF570);
      v33 = OUTLINED_FUNCTION_0_30();
      v34(v33);
    }

    v35 = sub_1C1222F4C();

    if (v35)
    {
      goto LABEL_12;
    }

    v58 = *v2;
    v59 = *(v2 + 16);
    v37 = v58;
    if (v59 == 1)
    {
      v38 = *(&v58 + 1);
      swift_unknownObjectRetain();
      if (v37)
      {
LABEL_15:
        ObjectType = swift_getObjectType();
        (*(v38 + 240))(&v55, ObjectType, v38);
        swift_unknownObjectRelease();
        v40 = v55;
        v41 = v56;
        v42 = v57;
LABEL_18:
        *v7 = 0x4028000000000000;
        *(v7 + 4) = 0;
        v7[10] = 0;
        *(v7 + 2) = 0;
        v7[24] = 1;
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92938, &qword_1C12AF580);
        sub_1C1095698(v2, v40, v41, v42, &v7[*(v46 + 44)]);

        sub_1C1264490();
        sub_1C12628A0();
        OUTLINED_FUNCTION_5_1();
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92940, &qword_1C12AF588);
        OUTLINED_FUNCTION_2_22(v47);
        sub_1C1264480();
        sub_1C12628A0();
        OUTLINED_FUNCTION_5_1();
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92948, &qword_1C12AF590);
        OUTLINED_FUNCTION_2_22(v48);
        KeyPath = swift_getKeyPath();
        v50 = &v7[*(v4 + 36)];
        *v50 = KeyPath;
        *(v50 + 1) = 0;
        v50[16] = 0;
        sub_1C0FDB71C(v7, a1, &qword_1EBE92920, &qword_1C12AF568);
        v36 = 0;
        return __swift_storeEnumTagSinglePayload(a1, v36, 1, v4);
      }
    }

    else
    {

      v43 = sub_1C1266420();
      v44 = sub_1C1264410();
      OUTLINED_FUNCTION_3_23(v43, &dword_1C0F96000, v45, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

      sub_1C12637D0();
      OUTLINED_FUNCTION_4_23();
      swift_getAtKeyPath();
      sub_1C0FD1A5C(&v58, &qword_1EBE92930, &qword_1C12AF578);
      (*(v54 + 8))(v10, v8);
      v38 = v56;
      if (v55)
      {
        goto LABEL_15;
      }
    }

    v40 = MEMORY[0x1E69E7CC0];
    v41 = MEMORY[0x1E69E7CC0];
    v42 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  v60 = *v2;
  v61 = *(v2 + 16);
  v18 = v60;
  if (v61 == 1)
  {
    v19 = *(&v60 + 1);
    swift_unknownObjectRetain();
    if (!v18)
    {
      goto LABEL_12;
    }
  }

  else
  {

    sub_1C1266420();
    v20 = sub_1C1264410();
    v53 = v2;
    v21 = v7;
    v22 = v8;
    v23 = v4;
    v24 = a1;
    v25 = v20;
    sub_1C1262620();

    a1 = v24;
    v4 = v23;
    v8 = v22;
    v7 = v21;
    v2 = v53;
    sub_1C12637D0();
    OUTLINED_FUNCTION_4_23();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v60, &qword_1EBE92930, &qword_1C12AF578);
    v26 = OUTLINED_FUNCTION_0_30();
    v27(v26);
    v19 = v56;
    if (!v55)
    {
      goto LABEL_12;
    }
  }

  v28 = swift_getObjectType();
  HasCentered = OneUpChromeEnvironment.badgeInfoHasCenteredBadge.getter(v28, v19);
  swift_unknownObjectRelease();
  if (HasCentered)
  {
    goto LABEL_9;
  }

LABEL_12:
  v36 = 1;
  return __swift_storeEnumTagSinglePayload(a1, v36, 1, v4);
}

uint64_t sub_1C1095698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v74 = a5;
  v9 = sub_1C12637E0();
  v76 = *(v9 - 8);
  v77 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92950, &qword_1C12AF5C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v66 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v66 - v18;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92958, &qword_1C12AF5C8);
  MEMORY[0x1EEE9AC00](v67);
  v73 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v72 = &v66 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v71 = &v66 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v66 = &v66 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v70 = &v66 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v66 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v69 = &v66 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v66 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v68 = &v66 - v38;
  *v19 = sub_1C12638E0();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92960, &qword_1C12AF5D0);
  v40 = &v19[*(v39 + 44)];
  v79 = a2;
  v80 = a3;
  v81 = a4;
  sub_1C1095E54(a1, a2, v40);
  v83 = *(a1 + 48);
  v78 = a1;
  v82 = *(a1 + 40);
  v41 = v83;

  if ((v41 & 1) == 0)
  {
    sub_1C1266420();
    v42 = sub_1C1264410();
    sub_1C1262620();

    v43 = v75;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v82, &qword_1EBE92968, &qword_1C12AF5D8);
    (*(v76 + 8))(v43, v77);
  }

  v44 = sub_1C1189974();

  v45 = 1.0;
  if (v44)
  {
    v46 = 0.0;
  }

  else
  {
    v46 = 1.0;
  }

  sub_1C0FDB71C(v19, v36, &qword_1EBE92950, &qword_1C12AF5C0);
  v47 = v67;
  *&v36[*(v67 + 36)] = v46;
  v48 = v68;
  sub_1C0FDB71C(v36, v68, &qword_1EBE92958, &qword_1C12AF5C8);
  *v16 = sub_1C12638E0();
  *(v16 + 1) = 0;
  v16[16] = 1;
  sub_1C109617C(v78, v80, &v16[*(v39 + 44)]);

  if ((v41 & 1) == 0)
  {
    sub_1C1266420();
    v49 = sub_1C1264410();
    sub_1C1262620();

    v50 = v75;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v82, &qword_1EBE92968, &qword_1C12AF5D8);
    (*(v76 + 8))(v50, v77);
  }

  v51 = sub_1C1189974();

  if (v51)
  {
    v45 = 0.0;
  }

  sub_1C0FDB71C(v16, v31, &qword_1EBE92950, &qword_1C12AF5C0);
  *&v31[*(v47 + 36)] = v45;
  v52 = v31;
  v53 = v69;
  sub_1C0FDB71C(v52, v69, &qword_1EBE92958, &qword_1C12AF5C8);
  *v13 = sub_1C12638E0();
  *(v13 + 1) = 0;
  v13[16] = 1;
  sub_1C1096BEC(v78, v81, &v13[*(v39 + 44)]);

  if ((v41 & 1) == 0)
  {
    sub_1C1266420();
    v54 = sub_1C1264410();
    sub_1C1262620();

    v55 = v75;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v82, &qword_1EBE92968, &qword_1C12AF5D8);
    (*(v76 + 8))(v55, v77);
  }

  v56 = sub_1C1189974();

  if (v56)
  {
    v57 = 0.0;
  }

  else
  {
    v57 = 1.0;
  }

  v58 = v66;
  sub_1C0FDB71C(v13, v66, &qword_1EBE92950, &qword_1C12AF5C0);
  *(v58 + *(v47 + 36)) = v57;
  v59 = v70;
  sub_1C0FDB71C(v58, v70, &qword_1EBE92958, &qword_1C12AF5C8);
  v60 = v71;
  sub_1C0FDB800(v48, v71, &qword_1EBE92958, &qword_1C12AF5C8);
  v61 = v72;
  sub_1C0FDB800(v53, v72, &qword_1EBE92958, &qword_1C12AF5C8);
  v62 = v73;
  sub_1C0FDB800(v59, v73, &qword_1EBE92958, &qword_1C12AF5C8);
  v63 = v74;
  sub_1C0FDB800(v60, v74, &qword_1EBE92958, &qword_1C12AF5C8);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92970, &qword_1C12AF5E0);
  sub_1C0FDB800(v61, v63 + *(v64 + 48), &qword_1EBE92958, &qword_1C12AF5C8);
  sub_1C0FDB800(v62, v63 + *(v64 + 64), &qword_1EBE92958, &qword_1C12AF5C8);
  sub_1C0FD1A5C(v59, &qword_1EBE92958, &qword_1C12AF5C8);
  sub_1C0FD1A5C(v53, &qword_1EBE92958, &qword_1C12AF5C8);
  sub_1C0FD1A5C(v48, &qword_1EBE92958, &qword_1C12AF5C8);
  sub_1C0FD1A5C(v62, &qword_1EBE92958, &qword_1C12AF5C8);
  sub_1C0FD1A5C(v61, &qword_1EBE92958, &qword_1C12AF5C8);
  return sub_1C0FD1A5C(v60, &qword_1EBE92958, &qword_1C12AF5C8);
}

uint64_t sub_1C1095E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92978, &unk_1C12AF5E8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - v8;
  v10 = sub_1C12637E0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + 32);
  v26 = *(a1 + 24);
  v14 = v27;

  if ((v14 & 1) == 0)
  {
    sub_1C1266420();
    v15 = sub_1C1264410();
    v25[0] = v10;
    v16 = v6;
    v17 = v9;
    v18 = a2;
    v19 = v7;
    v20 = a3;
    v21 = v15;
    sub_1C1262620();

    a3 = v20;
    v7 = v19;
    a2 = v18;
    v9 = v17;
    v6 = v16;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v26, &qword_1EBE92928, &qword_1C12AF570);
    (*(v11 + 8))(v13, v25[0]);
  }

  v22 = sub_1C1224CE4();

  if (v22)
  {
    v25[1] = a2;
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92980, &qword_1C12AF610);
    sub_1C0FDB6D4(&unk_1EDE7B730, &qword_1EBE92980, &qword_1C12AF610, MEMORY[0x1E69E6338]);
    sub_1C1096FC8();
    sub_1C109701C();
    sub_1C1265680();
    (*(v7 + 32))(a3, v9, v6);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v23, 1, v6);
}

uint64_t sub_1C109617C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92978, &unk_1C12AF5E8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v24 = sub_1C12637E0();
  v10 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a1 + 32);
  v25 = a1;
  v27 = *(a1 + 24);
  v13 = v28;

  if ((v13 & 1) == 0)
  {
    sub_1C1266420();
    v14 = a2;
    v15 = v9;
    v16 = v6;
    v17 = v7;
    v18 = a3;
    v19 = sub_1C1264410();
    sub_1C1262620();

    a3 = v18;
    v7 = v17;
    v6 = v16;
    v9 = v15;
    a2 = v14;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v27, &qword_1EBE92928, &qword_1C12AF570);
    (*(v10 + 8))(v12, v24);
  }

  v20 = sub_1C1224CE4();

  if ((v20 & 1) != 0 || sub_1C10964B0())
  {
    v26 = a2;
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92980, &qword_1C12AF610);
    sub_1C0FDB6D4(&unk_1EDE7B730, &qword_1EBE92980, &qword_1C12AF610, MEMORY[0x1E69E6338]);
    sub_1C1096FC8();
    sub_1C109701C();
    sub_1C1265680();
    (*(v7 + 32))(a3, v9, v6);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v21, 1, v6);
}

BOOL sub_1C10964B0()
{
  v1 = v0;
  v47 = sub_1C1263EB0();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v43 = &v40[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8, &unk_1C12A2E90);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v44 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40[-v12];
  v14 = sub_1C12637E0();
  v46 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = *(v0 + 32);
  v52 = *(v0 + 3);
  v17 = v53;

  if ((v17 & 1) == 0)
  {
    sub_1C1266420();
    v18 = sub_1C1264410();
    LODWORD(v42) = v17;
    v19 = v14;
    v20 = v18;
    sub_1C1262620();

    v14 = v19;
    v1 = v0;
    v21 = v46;
    LOBYTE(v17) = v42;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v52, &qword_1EBE92928, &qword_1C12AF570);
    (*(v21 + 8))(v16, v14);
  }

  sub_1C1224ADC();

  if (v50 == 1)
  {

    if ((v17 & 1) == 0)
    {
      sub_1C1266420();
      v22 = v10;
      v23 = v13;
      v24 = v1;
      v25 = v14;
      v26 = sub_1C1264410();
      sub_1C1262620();

      v14 = v25;
      v1 = v24;
      v13 = v23;
      v10 = v22;
      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FD1A5C(&v52, &qword_1EBE92928, &qword_1C12AF570);
      (*(v46 + 8))(v16, v14);
    }

    sub_1C12265E0();

    v27 = v47;
    (*(v45 + 104))(v10, *MEMORY[0x1E697FF38], v47);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v27);
    v28 = *(v3 + 48);
    sub_1C0FDB800(v13, v5, &qword_1EBE902F0, &qword_1C12B38C0);
    sub_1C0FDB800(v10, &v5[v28], &qword_1EBE902F0, &qword_1C12B38C0);
    if (__swift_getEnumTagSinglePayload(v5, 1, v27) == 1)
    {
      sub_1C0FD1A5C(v10, &qword_1EBE902F0, &qword_1C12B38C0);
      sub_1C0FD1A5C(v13, &qword_1EBE902F0, &qword_1C12B38C0);
      if (__swift_getEnumTagSinglePayload(&v5[v28], 1, v47) == 1)
      {
        sub_1C0FD1A5C(v5, &qword_1EBE902F0, &qword_1C12B38C0);
        return 0;
      }

      goto LABEL_11;
    }

    v42 = v13;
    v29 = v44;
    sub_1C0FDB800(v5, v44, &qword_1EBE902F0, &qword_1C12B38C0);
    if (__swift_getEnumTagSinglePayload(&v5[v28], 1, v47) == 1)
    {
      sub_1C0FD1A5C(v10, &qword_1EBE902F0, &qword_1C12B38C0);
      sub_1C0FD1A5C(v42, &qword_1EBE902F0, &qword_1C12B38C0);
      (*(v45 + 8))(v29, v47);
LABEL_11:
      sub_1C0FD1A5C(v5, &qword_1EBE902E8, &unk_1C12A2E90);
      goto LABEL_12;
    }

    v35 = v45;
    v36 = v43;
    v37 = v47;
    (*(v45 + 32))(v43, &v5[v28], v47);
    sub_1C1097070();
    v41 = sub_1C1265DE0();
    v38 = *(v35 + 8);
    v38(v36, v37);
    sub_1C0FD1A5C(v10, &qword_1EBE902F0, &qword_1C12B38C0);
    sub_1C0FD1A5C(v42, &qword_1EBE902F0, &qword_1C12B38C0);
    v38(v44, v37);
    sub_1C0FD1A5C(v5, &qword_1EBE902F0, &qword_1C12B38C0);
    if (v41)
    {
      return 0;
    }
  }

LABEL_12:
  v50 = *v1;
  v51 = *(v1 + 16);
  v30 = v50;
  if (v51 == 1)
  {
    v31 = *(&v50 + 1);
    swift_unknownObjectRetain();
    if (!v30)
    {
      return 0;
    }
  }

  else
  {

    sub_1C1266420();
    v32 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v50, &qword_1EBE92930, &qword_1C12AF578);
    (*(v46 + 8))(v16, v14);
    v31 = v49;
    if (!v48)
    {
      return 0;
    }
  }

  ObjectType = swift_getObjectType();
  HasCentered = OneUpChromeEnvironment.badgeInfoHasCenteredBadge.getter(ObjectType, v31);
  swift_unknownObjectRelease();
  return HasCentered;
}

uint64_t sub_1C1096BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92978, &unk_1C12AF5E8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - v8;
  v10 = sub_1C12637E0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + 32);
  v26 = *(a1 + 24);
  v14 = v27;

  if ((v14 & 1) == 0)
  {
    sub_1C1266420();
    v15 = sub_1C1264410();
    v25[0] = v10;
    v16 = v6;
    v17 = v9;
    v18 = a2;
    v19 = v7;
    v20 = a3;
    v21 = v15;
    sub_1C1262620();

    a3 = v20;
    v7 = v19;
    a2 = v18;
    v9 = v17;
    v6 = v16;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v26, &qword_1EBE92928, &qword_1C12AF570);
    (*(v11 + 8))(v13, v25[0]);
  }

  v22 = sub_1C1224CE4();

  if (v22)
  {
    v25[1] = a2;
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92980, &qword_1C12AF610);
    sub_1C0FDB6D4(&unk_1EDE7B730, &qword_1EBE92980, &qword_1C12AF610, MEMORY[0x1E69E6338]);
    sub_1C1096FC8();
    sub_1C109701C();
    sub_1C1265680();
    (*(v7 + 32))(a3, v9, v6);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v23, 1, v6);
}

uint64_t sub_1C1096F14@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v11[0] = *a1;
  v11[1] = v4;
  v5 = a1[3];
  v11[2] = a1[2];
  v11[3] = v5;
  KeyPath = swift_getKeyPath();
  v10[0] = 0;
  v7 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v7;
  v8 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v8;
  *(a2 + 64) = KeyPath;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  return sub_1C0FF526C(v11, v10);
}

unint64_t sub_1C1096FC8()
{
  result = qword_1EDE7E480;
  if (!qword_1EDE7E480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7E480);
  }

  return result;
}

unint64_t sub_1C109701C()
{
  result = qword_1EDE7E470;
  if (!qword_1EDE7E470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7E470);
  }

  return result;
}

unint64_t sub_1C1097070()
{
  result = qword_1EDE7BAB0;
  if (!qword_1EDE7BAB0)
  {
    sub_1C1263EB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BAB0);
  }

  return result;
}

unint64_t sub_1C10970C8()
{
  result = qword_1EDE77138;
  if (!qword_1EDE77138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92988, &unk_1C12AF640);
    sub_1C109714C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77138);
  }

  return result;
}

unint64_t sub_1C109714C()
{
  result = qword_1EDE77140;
  if (!qword_1EDE77140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92920, &qword_1C12AF568);
    sub_1C1097234(&qword_1EDE77240, &qword_1EBE92948, &qword_1C12AF590, sub_1C1097204);
    sub_1C109739C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77140);
  }

  return result;
}