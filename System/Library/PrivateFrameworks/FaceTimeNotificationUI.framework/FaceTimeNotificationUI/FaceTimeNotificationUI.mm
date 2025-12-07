uint64_t sub_24AA11360@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84FF8, &qword_24AAB69A8);
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &KeyPath - v4;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85000, &qword_24AAB69B0);
  MEMORY[0x28223BE20](v23);
  v7 = &KeyPath - v6;
  v8 = sub_24AAB42F4();
  MEMORY[0x28223BE20](v8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85008, &qword_24AAB69B8);
  v9 = *(v22 - 8);
  v10 = MEMORY[0x28223BE20](v22);
  v12 = &KeyPath - v11;
  v31 = *a1;
  if (*(v31 + 16) < 7uLL)
  {
    v27 = v31;
    KeyPath = swift_getKeyPath();
    v29 = *(a1 + 1);
    v30 = *(a1 + 24);
    v28 = a1[4];
    v15 = swift_allocObject();
    v16 = *(a1 + 1);
    *(v15 + 16) = *a1;
    *(v15 + 32) = v16;
    *(v15 + 48) = a1[4];

    sub_24AA1695C(&v31, v26, &qword_27EF85010, &qword_24AABB840);
    sub_24AA1695C(&v29, v26, &qword_27EF85018, &qword_24AAB69F0);
    sub_24AA1695C(&v28, v26, &qword_27EF85020, &qword_24AAB69F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85010, &qword_24AABB840);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85028, &unk_24AAB6A00);
    v17 = sub_24AA16A68(&qword_27EF85030, &qword_27EF85010, &qword_24AABB840, MEMORY[0x277D83980]);
    sub_24AA165C8(v17, v18, v19);
    sub_24AA16A68(&qword_27EF85040, &qword_27EF85028, &unk_24AAB6A00, MEMORY[0x277CE14C0]);
    sub_24AAB4C74();
    v20 = v25;
    (*(v3 + 16))(v7, v5, v25);
    swift_storeEnumTagMultiPayload();
    sub_24AA16A68(&qword_27EF85048, &qword_27EF85008, &qword_24AAB69B8, MEMORY[0x277CDF170]);
    sub_24AA1661C();
    sub_24AAB42B4();
    return (*(v3 + 8))(v5, v20);
  }

  else
  {
    MEMORY[0x28223BE20](v10);

    sub_24AAB41B4();
    LODWORD(v29) = 0;
    sub_24AA166D4(&qword_27EF85058, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
    sub_24AAB5574();
    sub_24AA1661C();
    sub_24AAB4DC4();
    v13 = v22;
    (*(v9 + 16))(v7, v12, v22);
    swift_storeEnumTagMultiPayload();
    sub_24AA16A68(&qword_27EF85048, &qword_27EF85008, &qword_24AAB69B8, MEMORY[0x277CDF170]);
    sub_24AAB42B4();
    return (*(v9 + 8))(v12, v13);
  }
}

uint64_t sub_24AA118FC(uint64_t *a1)
{
  v13 = *a1;
  v9 = v13;
  swift_getKeyPath();
  v11 = *(a1 + 1);
  v12 = *(a1 + 24);
  v10 = a1[4];
  v2 = swift_allocObject();
  v3 = *(a1 + 1);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = a1[4];

  sub_24AA1695C(&v13, v8, &qword_27EF85010, &qword_24AABB840);
  sub_24AA1695C(&v11, v8, &qword_27EF85018, &qword_24AAB69F0);
  sub_24AA1695C(&v10, v8, &qword_27EF85020, &qword_24AAB69F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85010, &qword_24AABB840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85028, &unk_24AAB6A00);
  v4 = sub_24AA16A68(&qword_27EF85030, &qword_27EF85010, &qword_24AABB840, MEMORY[0x277D83980]);
  sub_24AA165C8(v4, v5, v6);
  sub_24AA16A68(&qword_27EF85040, &qword_27EF85028, &unk_24AAB6A00, MEMORY[0x277CE14C0]);
  return sub_24AAB4C74();
}

double sub_24AA11AD0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(*(v3 + 8) + 16))(&v7, v4);
  v5 = v8;
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_24AA11B40@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84E98, &qword_24AAB66A8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38[-v7];
  v9 = type metadata accessor for CustomViewControl(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24AA16768(a1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85060, &unk_24AABB850);
  v13 = swift_dynamicCast();
  v14 = *(v10 + 56);
  if (v13)
  {
    v14(v8, 0, 1, v9);
    sub_24AA15CA8(v8, v12);
    *&v40 = (*&v12[*(v9 + 44)])(v12);
    v43 = 0;
    sub_24AA167CC(v40, v15, v16);
    sub_24AAB42B4();
    sub_24AA15D0C(v12);
  }

  else
  {
    v14(v8, 1, 1, v9);
    sub_24AA169C4(v8, &qword_27EF84E98, &qword_24AAB66A8);
    v17 = a1[3];
    v18 = a1[4];
    v19 = __swift_project_boxed_opaque_existential_1(a1, v17);
    v46[3] = v17;
    v46[4] = *(v18 + 16);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v46);
    (*(*(v17 - 8) + 16))(boxed_opaque_existential_1Tm, v19, v17);
    v44[0] = swift_getKeyPath();
    v44[1] = 0;
    v45 = 0;
    v46[5] = 0x4041800000000000;
    v21 = sub_24AA158F8(v44, &v40);
    v43 = 1;
    sub_24AA167CC(v21, v22, v23);
    sub_24AAB42B4();
    sub_24AA16820(v44);
  }

  v24 = a1[3];
  v25 = __swift_project_boxed_opaque_existential_1(a1, v24);
  v46[0] = v24;
  v26 = __swift_allocate_boxed_opaque_existential_1Tm(v44);
  result = (*(*(v24 - 8) + 16))(v26, v25, v24);
  v28 = *(*a2 + 16);
  if (v28)
  {
    v29 = *a2 + 40 * v28;
    v30 = *(v29 + 16);
    v31 = __swift_project_boxed_opaque_existential_1((v29 - 8), v30);
    v39[3] = v30;
    v32 = __swift_allocate_boxed_opaque_existential_1Tm(v39);
    (*(*(v30 - 8) + 16))(v32, v31, v30);
    sub_24AA168B4(v44, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85070, &qword_24AAB6A10);
    if (swift_dynamicCast())
    {
      v33 = *(&v41 + 1);
      v34 = v42;
      __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
      v35 = sub_24AA71DB8(v39, v33, v34);
      __swift_destroy_boxed_opaque_existential_1Tm(&v40);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      if (v28 <= 6 && (v35 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v42 = 0;
      v40 = 0u;
      v41 = 0u;
      sub_24AA169C4(&v40, &qword_27EF85078, &qword_24AAB6A18);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      if (v28 < 7)
      {
LABEL_8:
        v36 = 0;
        v37 = 1;
LABEL_11:
        sub_24AA1695C(v47, &v40, &qword_27EF85080, &qword_24AAB6A20);
        sub_24AA1695C(&v40, a3, &qword_27EF85080, &qword_24AAB6A20);
        *(a3 + 80) = 0;
        *(a3 + 88) = v37;
        *(a3 + 89) = v36;
        sub_24AA169C4(v47, &qword_27EF85080, &qword_24AAB6A20);
        return sub_24AA169C4(&v40, &qword_27EF85080, &qword_24AAB6A20);
      }
    }

    v37 = 0;
    v36 = 1;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_24AA12010@<X0>(uint64_t a6@<X8>)
{
  v8 = *(v6 + 16);
  v11[0] = *v6;
  v11[1] = v8;
  v12 = *(v6 + 32);
  *a6 = sub_24AAB4104();
  *(a6 + 8) = 0;
  *(a6 + 16) = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84FF0, &qword_24AAB69A0);
  return sub_24AA11360(v11, a6 + *(v9 + 44));
}

uint64_t sub_24AA1207C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_24AAB2CD4();
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24AAB4ED4();
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_24AAB2B84();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CE8, &qword_24AAB85F0);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84DE0, &qword_24AAB65E0);
  MEMORY[0x28223BE20](v53);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84DE8, &qword_24AAB65E8);
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  sub_24AA125C8(v1, v12);
  v16 = v1[6];
  v17 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v16);
  v18 = sub_24AAA9504(v16, *(v17 + 8));
  v20 = v19;
  v21 = v2[8];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v22 = v8[9];
  *&v10[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84DF0, &qword_24AAB6650);
  swift_storeEnumTagMultiPayload();
  v23 = &v10[v8[10]];
  *v23 = v18;
  v23[1] = v20;
  v24 = &v10[v8[12]];
  *v24 = v21;
  *(v24 + 1) = v21;
  v24[16] = 0;
  v25 = &v10[v8[13]];
  v26 = sub_24AA15478();
  v27 = sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0, &unk_24AAB8F68);
  *v25 = 0u;
  *(v25 + 1) = 0u;
  v45 = v15;
  v28 = v44;
  v43 = v26;
  sub_24AAB47E4();
  sub_24AA169C4(v10, &qword_27EF84CE8, &qword_24AAB85F0);
  sub_24AA169C4(v12, &qword_27EF84DE0, &qword_24AAB65E0);
  v30 = v2[6];
  v29 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v30);
  (*(*(v29 + 8) + 16))(v30);
  sub_24AAB2B14();
  if (qword_27EF84C50 != -1)
  {
    swift_once();
  }

  v31 = qword_27EF919A8;
  sub_24AAB2CC4();
  v54 = sub_24AAB4F14();
  v55 = v32;
  sub_24AA15894(v54, v32, v33);
  v34 = sub_24AAB4774();
  v36 = v35;
  v38 = v37;
  (*(v49 + 8))(v28, v51);
  v54 = v53;
  v55 = v8;
  v56 = v43;
  v57 = v27;
  swift_getOpaqueTypeConformance2();
  v39 = v48;
  v40 = v45;
  sub_24AAB4854();
  sub_24AA158E8(v34, v36, v38 & 1);

  return (*(v47 + 8))(v40, v39);
}

uint64_t sub_24AA125C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84E58, &qword_24AAB6680);
  MEMORY[0x28223BE20](v58);
  v56 = v51 - v3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84E28, &qword_24AAB6668);
  MEMORY[0x28223BE20](v57);
  v54 = v51 - v4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84E88, &qword_24AAB6698);
  MEMORY[0x28223BE20](v59);
  v6 = v51 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84E90, &qword_24AAB66A0);
  MEMORY[0x28223BE20](v7);
  v9 = (v51 - v8);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84E18, &qword_24AAB6660);
  MEMORY[0x28223BE20](v60);
  v11 = v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84E98, &qword_24AAB66A8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v51 - v13;
  v15 = type metadata accessor for CustomViewControl(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AA16768((a1 + 3), &v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EA0, &unk_24AAB66B0);
  v19 = swift_dynamicCast();
  v20 = *(v16 + 56);
  if (v19)
  {
    v20(v14, 0, 1, v15);
    sub_24AA15CA8(v14, v18);
    *v9 = (*&v18[*(v15 + 44)])(v18);
    swift_storeEnumTagMultiPayload();
    sub_24AA15614();

    sub_24AAB42B4();
    sub_24AA1695C(v11, v6, &qword_27EF84E18, &qword_24AAB6660);
    swift_storeEnumTagMultiPayload();
    sub_24AA15588();
    sub_24AA156F8();
    sub_24AAB42B4();

    sub_24AA169C4(v11, &qword_27EF84E18, &qword_24AAB6660);
    return sub_24AA15D0C(v18);
  }

  v51[1] = v7;
  v52 = v9;
  v53 = v11;
  v55 = v6;
  v22 = v58;
  v20(v14, 1, 1, v15);
  sub_24AA169C4(v14, &qword_27EF84E98, &qword_24AAB66A8);
  sub_24AA16768((a1 + 3), v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EA8, &unk_24AABBAD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v70 = 0;
    v68 = 0u;
    v69 = 0u;
    v23 = v55;
    goto LABEL_9;
  }

  v23 = v55;
  if (!*(&v69 + 1))
  {
LABEL_9:
    sub_24AA169C4(&v68, &qword_27EF84EB0, &unk_24AAB66C0);
    goto LABEL_10;
  }

  sub_24AA15A64(&v68, &v62);
  v24 = *(&v63 + 1);
  v25 = v64;
  __swift_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
  v26 = *((*(v25 + 16))(v24, v25) + 16);

  if (v26)
  {
    v27 = *(&v63 + 1);
    v28 = v64;
    __swift_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
    v29 = (*(v28 + 24))(v27, v28);
    if ((v29 & 1) == 0)
    {
      v43 = MEMORY[0x28223BE20](v29);
      v51[-2] = &v62;
      v51[-1] = a1;
      MEMORY[0x28223BE20](v43);
      v51[-2] = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EB8, &unk_24AAB8780);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84ED8, &qword_24AAB6708);
      sub_24AA15964();
      sub_24AA15A84();
      v44 = v54;
      sub_24AAB4624();
      v45 = *(&v63 + 1);
      v46 = v64;
      __swift_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
      LOBYTE(v45) = (*(*(v46 + 8) + 32))(v45);
      KeyPath = swift_getKeyPath();
      v48 = swift_allocObject();
      *(v48 + 16) = v45 & 1;
      v49 = (v44 + *(v57 + 36));
      *v49 = KeyPath;
      v49[1] = sub_24AA16AF8;
      v49[2] = v48;
      sub_24AA1695C(v44, v52, &qword_27EF84E28, &qword_24AAB6668);
      swift_storeEnumTagMultiPayload();
      sub_24AA15614();
      v50 = v53;
      sub_24AAB42B4();
      sub_24AA1695C(v50, v55, &qword_27EF84E18, &qword_24AAB6660);
      swift_storeEnumTagMultiPayload();
      sub_24AA15588();
      sub_24AA156F8();
      sub_24AAB42B4();
      sub_24AA169C4(v50, &qword_27EF84E18, &qword_24AAB6660);
      sub_24AA169C4(v44, &qword_27EF84E28, &qword_24AAB6668);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v62);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v62);
    v23 = v55;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v62);
  }

LABEL_10:
  sub_24AA158F8(a1, &v62);
  v30 = swift_allocObject();
  v31 = v65;
  *(v30 + 48) = v64;
  *(v30 + 64) = v31;
  *(v30 + 80) = v66;
  v32 = v63;
  *(v30 + 16) = v62;
  *(v30 + 32) = v32;
  MEMORY[0x28223BE20](v30);
  v51[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EB8, &unk_24AAB8780);
  sub_24AA15964();
  v33 = v56;
  sub_24AAB4BB4();
  v34 = sub_24AAB4D64();
  v36 = v35;
  v37 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84E68, &qword_24AAB6688) + 36);
  sub_24AA13234(a1, v37);
  *(v37 + 80) = v34;
  *(v37 + 88) = v36;
  v38 = a1[6];
  v39 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v38);
  LOBYTE(v38) = (*(*(v39 + 8) + 32))(v38);
  v40 = swift_getKeyPath();
  v41 = swift_allocObject();
  *(v41 + 16) = v38 & 1;
  v42 = (v33 + *(v22 + 36));
  *v42 = v40;
  v42[1] = sub_24AA15A4C;
  v42[2] = v41;
  sub_24AA1695C(v33, v23, &qword_27EF84E58, &qword_24AAB6680);
  swift_storeEnumTagMultiPayload();
  sub_24AA15588();
  sub_24AA156F8();
  sub_24AAB42B4();
  return sub_24AA169C4(v33, &qword_27EF84E58, &qword_24AAB6680);
}

uint64_t sub_24AA12FDC(void (**a1)(__int128 *))
{
  v2 = sub_24AAB4094();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AA16768((a1 + 3), &v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EA0, &unk_24AAB66B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F48, &unk_24AABBAC0);
  if (swift_dynamicCast())
  {
    sub_24AA15A64(&v12, v17);
    v7 = *a1;
    v6 = a1[1];
    if (*(a1 + 16) == 1)
    {
    }

    else
    {

      sub_24AAB5134();
      v9 = sub_24AAB44B4();
      sub_24AAB3A54();

      sub_24AAB4084();
      swift_getAtKeyPath();
      sub_24AA15934(v7, v6, 0);
      (*(v3 + 8))(v5, v2);
      v7 = v15;
    }

    v10 = v18;
    v11 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v11 + 16))(&v15, v10, v11);
    v12 = v15;
    LOBYTE(v13) = v16;
    v7(&v12);

    sub_24AA15ED0(v12, *(&v12 + 1), v13);
    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    return sub_24AA169C4(&v12, &qword_27EF84F50, &qword_24AAB67C0);
  }
}

double sub_24AA13234@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_24AA16768(a1 + 24, &KeyPath);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EA0, &unk_24AAB66B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EA8, &unk_24AABBAD0);
  if (swift_dynamicCast())
  {
    sub_24AA15A64(v12, v14);
    v3 = v15;
    v4 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v5 = *((*(v4 + 16))(v3, v4) + 16);

    if (v5)
    {
      sub_24AA16768(v14, v10 + 8);
      KeyPath = swift_getKeyPath();
      LOBYTE(v10[0]) = 0;
      v11 = xmmword_24AAB6270;
      v6 = v10[2];
      a2[2] = v10[1];
      a2[3] = v6;
      a2[4] = v11;
      v7 = v10[0];
      *a2 = KeyPath;
      a2[1] = v7;
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      return result;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_24AA169C4(v12, &qword_27EF84EB0, &unk_24AAB66C0);
  }

  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_24AA13394(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v11 = (*(v4 + 16))(v3, v4);
  swift_getKeyPath();
  sub_24AA158F8(a2, v9);
  v5 = swift_allocObject();
  v6 = v9[3];
  *(v5 + 48) = v9[2];
  *(v5 + 64) = v6;
  *(v5 + 80) = v10;
  v7 = v9[1];
  *(v5 + 16) = v9[0];
  *(v5 + 32) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F20, &qword_24AABBE20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EF0, &qword_24AAB6710);
  sub_24AA16A68(&qword_27EF84F28, &qword_27EF84F20, &qword_24AABBE20, MEMORY[0x277D83980]);
  sub_24AA166D4(&qword_27EF84F30, type metadata accessor for MenuItem, &unk_24AABE8C0);
  sub_24AA15B08();
  return sub_24AAB4C74();
}

uint64_t sub_24AA13530@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v41 = a3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F08, &qword_24AAB6718);
  MEMORY[0x28223BE20](v40);
  v5 = &v32[-v4];
  v6 = sub_24AAB2B84();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F38, &unk_24AAB6780);
  MEMORY[0x28223BE20](v9);
  v11 = &v32[-v10];
  v12 = sub_24AAB4C64();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for MenuItem(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v32[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24AA15E0C(a1, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F40, &unk_24AABB540);
  if ((*(*(v19 - 8) + 48))(v18, 1, v19) == 1)
  {
    sub_24AAB4C54();
    (*(v13 + 16))(v11, v15, v12);
    swift_storeEnumTagMultiPayload();
    sub_24AA166D4(&qword_27EF84EF8, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    sub_24AA15BC4();
    sub_24AAB42B4();
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    v21 = &v18[*(v19 + 48)];
    v36 = v9;
    v23 = *v21;
    v22 = *(v21 + 1);
    v35 = v18[*(v19 + 64)];
    v24 = v38;
    v25 = v21[16];
    (*(v38 + 32))(v8, v18, v39);
    sub_24AA158F8(v37, v42);
    v26 = swift_allocObject();
    v37 = v32;
    v27 = v42[0];
    *(v26 + 56) = v42[1];
    v28 = v42[3];
    *(v26 + 72) = v42[2];
    *(v26 + 88) = v28;
    *(v26 + 104) = v43;
    v34 = v23;
    *(v26 + 16) = v23;
    *(v26 + 24) = v22;
    v33 = v25;
    *(v26 + 32) = v25;
    *(v26 + 40) = v27;
    MEMORY[0x28223BE20](v26);
    *&v32[-16] = v8;
    sub_24AA15F00(v23, v22, v25);
    sub_24AAB4BB4();
    KeyPath = swift_getKeyPath();
    v30 = swift_allocObject();
    *(v30 + 16) = (v35 & 1) == 0;
    v31 = &v5[*(v40 + 36)];
    *v31 = KeyPath;
    v31[1] = sub_24AA16AF8;
    v31[2] = v30;
    sub_24AA1695C(v5, v11, &qword_27EF84F08, &qword_24AAB6718);
    swift_storeEnumTagMultiPayload();
    sub_24AA166D4(&qword_27EF84EF8, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    sub_24AA15BC4();
    sub_24AAB42B4();
    sub_24AA15EC0(v34, v22, v33);
    sub_24AA169C4(v5, &qword_27EF84F08, &qword_24AAB6718);
    return (*(v24 + 8))(v8, v39);
  }
}

uint64_t sub_24AA13A9C(uint64_t (*a1)(uint64_t), uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_24AAB4094();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v19[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 0)
  {
    return a1(v10);
  }

  v14 = *a4;
  v13 = *(a4 + 8);
  if (*(a4 + 16) == 1)
  {
  }

  else
  {
    v16 = v10;

    sub_24AAB5134();
    v17 = sub_24AAB44B4();
    sub_24AAB3A54();

    sub_24AAB4084();
    swift_getAtKeyPath();
    sub_24AA15934(v14, v13, 0);
    (*(v9 + 8))(v12, v16);
    v14 = v19[0];
  }

  v19[0] = a1;
  v19[1] = a2;
  v20 = a3;
  v14(v19);
}

uint64_t sub_24AA13C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24AAB2CD4();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_24AAB4ED4();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24AAB2B84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  sub_24AAB2B14();
  if (qword_27EF84C50 != -1)
  {
    swift_once();
  }

  v10 = qword_27EF919A8;
  sub_24AAB2CC4();
  v22 = sub_24AAB4F14();
  v23 = v11;
  sub_24AA15894(v22, v11, v12);
  v13 = sub_24AAB4774();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  result = (*(v7 + 8))(v9, v6);
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
  return result;
}

uint64_t sub_24AA13E68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[6];
  v4 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v3);
  (*(v4 + 16))(v3, v4);
  v5 = sub_24AAB4AC4();
  v6 = sub_24AAB45D4();
  result = swift_getKeyPath();
  *a2 = v5;
  a2[1] = result;
  a2[2] = v6;
  return result;
}

uint64_t sub_24AA13F0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24AAB4024();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24AA13F68(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_24AAB3E94();
  }

  else
  {
    sub_24AAB3E14();
  }

  return sub_24AAB3EE4();
}

uint64_t sub_24AA13FD0(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_24AAB3E94();
    sub_24AAB3EE4();
    sub_24AA140C4();
  }

  else
  {
    sub_24AAB3E14();
    sub_24AAB3EE4();
    sub_24AA166D4(&qword_27EF84C80, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  }

  return swift_getWitnessTable();
}

unint64_t sub_24AA140C4()
{
  result = qword_27EF84C78;
  if (!qword_27EF84C78)
  {
    sub_24AAB3E94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84C78);
  }

  return result;
}

uint64_t sub_24AA14110@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v32 = a7;
    v33 = a8;
    v34 = v9;
    v31 = sub_24AAB3E94();
    v18 = *(v31 - 8);
    MEMORY[0x28223BE20](v31);
    v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a2)
    {
      v36[0] = 0;
      v36[1] = 0xE000000000000000;
      sub_24AAB5374();

      strcpy(v36, "View.task @ ");
      BYTE5(v36[1]) = 0;
      HIWORD(v36[1]) = -5120;
      MEMORY[0x24C2257F0](a4, a5);
      MEMORY[0x24C2257F0](58, 0xE100000000000000);
      v35 = a6;
      v25 = sub_24AAB5444();
      MEMORY[0x24C2257F0](v25);
    }

    v26 = sub_24AAB50F4();
    MEMORY[0x28223BE20](v26);
    (*(v28 + 16))(&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), a3);

    sub_24AAB3E84();
    sub_24AA14454(v34, a9);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84C90, &qword_24AAB62B0);
    return (*(v18 + 32))(a9 + *(v29 + 36), v20, v31);
  }

  else
  {
    v21 = (a9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84C98, &qword_24AAB62B8) + 36));
    v22 = *(sub_24AAB3E14() + 20);
    v23 = sub_24AAB50F4();
    (*(*(v23 - 8) + 16))(&v21[v22], a3, v23);
    *v21 = a7;
    *(v21 + 1) = a8;

    return sub_24AA14454(v9, a9);
  }
}

uint64_t sub_24AA14454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84C88, &qword_24AABBF10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24AA1450C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v32 = a7;
    v33 = a8;
    v34 = v9;
    v31 = sub_24AAB3E94();
    v18 = *(v31 - 8);
    MEMORY[0x28223BE20](v31);
    v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a2)
    {
      v36[0] = 0;
      v36[1] = 0xE000000000000000;
      sub_24AAB5374();

      strcpy(v36, "View.task @ ");
      BYTE5(v36[1]) = 0;
      HIWORD(v36[1]) = -5120;
      MEMORY[0x24C2257F0](a4, a5);
      MEMORY[0x24C2257F0](58, 0xE100000000000000);
      v35 = a6;
      v25 = sub_24AAB5444();
      MEMORY[0x24C2257F0](v25);
    }

    v26 = sub_24AAB50F4();
    MEMORY[0x28223BE20](v26);
    (*(v28 + 16))(&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), a3);

    sub_24AAB3E84();
    sub_24AA1695C(v34, a9, &qword_27EF84CA0, &unk_24AAB62C0);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CA8, &unk_24AABC010);
    return (*(v18 + 32))(a9 + *(v29 + 36), v20, v31);
  }

  else
  {
    v21 = (a9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CB0, &unk_24AAB62D0) + 36));
    v22 = *(sub_24AAB3E14() + 20);
    v23 = sub_24AAB50F4();
    (*(*(v23 - 8) + 16))(&v21[v22], a3, v23);
    *v21 = a7;
    *(v21 + 1) = a8;
    return sub_24AA1695C(v9, a9, &qword_27EF84CA0, &unk_24AAB62C0);
  }
}

uint64_t sub_24AA14848@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v32 = a7;
    v33 = a8;
    v34 = v9;
    v31 = sub_24AAB3E94();
    v18 = *(v31 - 8);
    MEMORY[0x28223BE20](v31);
    v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a2)
    {
      v36[0] = 0;
      v36[1] = 0xE000000000000000;
      sub_24AAB5374();

      strcpy(v36, "View.task @ ");
      BYTE5(v36[1]) = 0;
      HIWORD(v36[1]) = -5120;
      MEMORY[0x24C2257F0](a4, a5);
      MEMORY[0x24C2257F0](58, 0xE100000000000000);
      v35 = a6;
      v25 = sub_24AAB5444();
      MEMORY[0x24C2257F0](v25);
    }

    v26 = sub_24AAB50F4();
    MEMORY[0x28223BE20](v26);
    (*(v28 + 16))(&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), a3);

    sub_24AAB3E84();
    sub_24AA1695C(v34, a9, &qword_27EF84CB8, &qword_24AABD0C0);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CC0, &qword_24AAB62E0);
    return (*(v18 + 32))(a9 + *(v29 + 36), v20, v31);
  }

  else
  {
    v21 = (a9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CC8, &qword_24AAB62E8) + 36));
    v22 = *(sub_24AAB3E14() + 20);
    v23 = sub_24AAB50F4();
    (*(*(v23 - 8) + 16))(&v21[v22], a3, v23);
    *v21 = a7;
    *(v21 + 1) = a8;
    return sub_24AA1695C(v9, a9, &qword_27EF84CB8, &qword_24AABD0C0);
  }
}

uint64_t sub_24AA14B84@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_24AAB4BA4();
  v2 = *MEMORY[0x277CDE248];
  v3 = sub_24AAB4394();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_24AA14D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5 != 4)
  {
    MEMORY[0x24C224D90](a5, a2, a3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CD0, &unk_24AAB62F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CD8, &unk_24AABD3B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CE0, &unk_24AAB6300);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CE8, &qword_24AAB85F0);
  sub_24AA14EE0();
  sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0, &unk_24AAB8F68);
  swift_getOpaqueTypeConformance2();
  sub_24AA15058();
  return sub_24AAB4804();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_24AA14EE0()
{
  result = qword_27EF84CF0;
  if (!qword_27EF84CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CE0, &unk_24AAB6300);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CF8, &unk_24AAB6310);
    sub_24AAB3ED4();
    sub_24AA16A68(&qword_27EF84D00, &qword_27EF84CF8, &unk_24AAB6310, MEMORY[0x277CDF028]);
    sub_24AA166D4(&qword_27EF84D08, MEMORY[0x277CDD9E0], MEMORY[0x277CDD9D8]);
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF84D10, &qword_27EF84D18, &qword_24AABDA10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84CF0);
  }

  return result;
}

unint64_t sub_24AA15058()
{
  result = qword_27EF84D28;
  if (!qword_27EF84D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CD8, &unk_24AABD3B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84D30, &unk_24AAB6320);
    sub_24AAB2EF4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84D38, &unk_24AABD3C0);
    sub_24AA166D4(&qword_27EF84D40, MEMORY[0x277CFB9D0], MEMORY[0x277CFB9C8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF84D48, &qword_27EF84D50, &qword_24AAB6330, MEMORY[0x277CE0800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84D28);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24AA1525C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24AA152A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24AA15328(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AA15348(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

_DWORD *sub_24AA153D4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void *sub_24AA15404@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
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

unint64_t sub_24AA15478()
{
  result = qword_27EF84DF8;
  if (!qword_27EF84DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84DE0, &qword_24AAB65E0);
    sub_24AA154FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84DF8);
  }

  return result;
}

unint64_t sub_24AA154FC()
{
  result = qword_27EF84E00;
  if (!qword_27EF84E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84E08, &qword_24AAB6658);
    sub_24AA15588();
    sub_24AA156F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84E00);
  }

  return result;
}

unint64_t sub_24AA15588()
{
  result = qword_27EF84E10;
  if (!qword_27EF84E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84E18, &qword_24AAB6660);
    sub_24AA15614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84E10);
  }

  return result;
}

unint64_t sub_24AA15614()
{
  result = qword_27EF84E20;
  if (!qword_27EF84E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84E28, &qword_24AAB6668);
    sub_24AA16A68(&qword_27EF84E30, &qword_27EF84E38, &unk_24AAB6670, MEMORY[0x277CDE5B0]);
    sub_24AA16A68(&qword_27EF84E40, &qword_27EF84E48, &qword_24AAB8FD0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84E20);
  }

  return result;
}

unint64_t sub_24AA156F8()
{
  result = qword_27EF84E50;
  if (!qword_27EF84E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84E58, &qword_24AAB6680);
    sub_24AA157B0();
    sub_24AA16A68(&qword_27EF84E40, &qword_27EF84E48, &qword_24AAB8FD0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84E50);
  }

  return result;
}

unint64_t sub_24AA157B0()
{
  result = qword_27EF84E60;
  if (!qword_27EF84E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84E68, &qword_24AAB6688);
    sub_24AA16A68(&qword_27EF84D00, &qword_27EF84CF8, &unk_24AAB6310, MEMORY[0x277CDF028]);
    sub_24AA16A68(&qword_27EF84E70, &qword_27EF84E78, &qword_24AAB6690, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84E60);
  }

  return result;
}

unint64_t sub_24AA15894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF84E80;
  if (!qword_27EF84E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84E80);
  }

  return result;
}

uint64_t sub_24AA158E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_24AA15964()
{
  result = qword_27EF84EC0;
  if (!qword_27EF84EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84EB8, &unk_24AAB8780);
    sub_24AA16A68(&qword_27EF84EC8, &qword_27EF84ED0, &qword_24AAB66D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84EC0);
  }

  return result;
}

uint64_t sub_24AA15A64(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_24AA15A84()
{
  result = qword_27EF84EE0;
  if (!qword_27EF84EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84ED8, &qword_24AAB6708);
    sub_24AA15B08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84EE0);
  }

  return result;
}

unint64_t sub_24AA15B08()
{
  result = qword_27EF84EE8;
  if (!qword_27EF84EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84EF0, &qword_24AAB6710);
    sub_24AA166D4(&qword_27EF84EF8, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    sub_24AA15BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84EE8);
  }

  return result;
}

unint64_t sub_24AA15BC4()
{
  result = qword_27EF84F00;
  if (!qword_27EF84F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84F08, &qword_24AAB6718);
    sub_24AA16A68(&qword_27EF84F10, &qword_27EF84F18, &qword_24AAB6720, MEMORY[0x277CDF028]);
    sub_24AA16A68(&qword_27EF84E40, &qword_27EF84E48, &qword_24AAB8FD0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84F00);
  }

  return result;
}

uint64_t sub_24AA15CA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomViewControl(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA15D0C(uint64_t a1)
{
  v2 = type metadata accessor for CustomViewControl(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AA15D68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24AAB4004();
  *a1 = result;
  return result;
}

uint64_t objectdestroyTm()
{
  sub_24AA15934(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24AA15E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenuItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA15E70()
{
  sub_24AA15EC0(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_24AA15934(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_24AA15EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x80) != 0)
  {
  }

  else
  {
    return sub_24AA15ED0(a1, a2, a3);
  }
}

uint64_t sub_24AA15ED0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_24AA15F00(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  else
  {
    return sub_24AA15F10(a1, a2, a3);
  }
}

uint64_t sub_24AA15F10(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_24AA15F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a1;
  v3 = sub_24AAB4CE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F58, &qword_24AAB67C8);
  sub_24AAB4CF4();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24AAB6280;
  v14 = xmmword_24AAB6290;
  *v6 = xmmword_24AAB6290;
  v8 = *MEMORY[0x277CDF108];
  v9 = *(v4 + 104);
  v9(v6, v8, v3);
  sub_24AAB4D04();
  *v6 = v14;
  v9(v6, v8, v3);
  sub_24AAB4D04();
  *v6 = v14;
  v9(v6, v8, v3);
  sub_24AAB4D04();
  *v6 = v14;
  v9(v6, v8, v3);
  sub_24AAB4D04();
  *v6 = v14;
  v9(v6, v8, v3);
  sub_24AAB4D04();
  *v6 = v14;
  v9(v6, v8, v3);
  result = sub_24AAB4D04();
  v11 = KeyPath;
  *a2 = v13;
  *(a2 + 8) = v11;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_24AA16274(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AA16294(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_24AA162E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AA16304(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

void sub_24AA16344(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24AA163A4(uint64_t *a1, int a2)
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

uint64_t sub_24AA163EC(uint64_t result, int a2, int a3)
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

unint64_t sub_24AA16448()
{
  result = qword_27EF84FD8;
  if (!qword_27EF84FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84FE0, qword_24AAB68E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84DE0, &qword_24AAB65E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CE8, &qword_24AAB85F0);
    sub_24AA15478();
    sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0, &unk_24AAB8F68);
    swift_getOpaqueTypeConformance2();
    sub_24AA166D4(&qword_27EF84FE8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84FD8);
  }

  return result;
}

unint64_t sub_24AA165C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF85038;
  if (!qword_27EF85038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85038);
  }

  return result;
}

unint64_t sub_24AA1661C()
{
  result = qword_27EF85050;
  if (!qword_27EF85050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84FF8, &qword_24AAB69A8);
    sub_24AA16A68(&qword_27EF85040, &qword_27EF85028, &unk_24AAB6A00, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85050);
  }

  return result;
}

uint64_t sub_24AA166D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_73Tm()
{

  sub_24AA15934(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24AA16768(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_24AA167CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF85068;
  if (!qword_27EF85068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85068);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_24AA168B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_24AA1695C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24AA169C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24AA16A68(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t NoticeNotificationView.call.setter(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectRelease();
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_24AA16BDC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24AA1A08C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_24AA16D2C(v3, v4);
}

uint64_t sub_24AA16C5C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24AA1A054;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  sub_24AA16D2C(v3, v4);
  result = sub_24AA16D74(v7, v8);
  *(a2 + 24) = v6;
  *(a2 + 32) = v5;
  return result;
}

uint64_t NoticeNotificationView.onButtonClick.getter()
{
  v1 = *(v0 + 24);
  sub_24AA16D2C(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_24AA16D2C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t NoticeNotificationView.onButtonClick.setter(uint64_t a1, uint64_t a2)
{
  result = sub_24AA16D74(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_24AA16D74(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t NoticeNotificationView.init(notification:call:onButtonClick:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

double NoticeNotificationView.body.getter@<D0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v13[0] = *v2;
  v13[1] = v4;
  v14 = *(v2 + 32);
  *a2 = sub_24AAB41B4();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85220, &qword_24AAB6A80);
  sub_24AA16EB0(v13, a2 + *(v5 + 44));
  v6 = sub_24AAB44D4();
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85228, &qword_24AAB6A88) + 36);
  *v7 = v6;
  *(v7 + 8) = xmmword_24AAB6A40;
  *(v7 + 24) = xmmword_24AAB6A40;
  *(v7 + 40) = 0;
  sub_24AAB4D44();
  sub_24AAB3D54();
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85230, &qword_24AAB6A90) + 36));
  *v8 = v10;
  v8[1] = v11;
  result = *&v12;
  v8[2] = v12;
  return result;
}

uint64_t sub_24AA16EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85318, &qword_24AAB6CB8);
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85320, &qword_24AAB6CC0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85328, &qword_24AAB6CC8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v31 - v17;
  *v18 = sub_24AAB40F4();
  *(v18 + 1) = 0;
  v19 = 1;
  v18[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85330, &qword_24AAB6CD0);
  sub_24AA1735C(a1, &v18[*(v20 + 44)]);
  v21 = *(sub_24AAB3814() + 16);

  if (v21 >= 2)
  {
    *v6 = sub_24AAB4104();
    *(v6 + 1) = 0;
    v6[16] = 1;
    v31[3] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85340, &qword_24AAB6CE0) + 44);
    v34[5] = sub_24AAB3814();
    v22 = swift_allocObject();
    v23 = *(a1 + 16);
    *(v22 + 16) = *a1;
    *(v22 + 32) = v23;
    *(v22 + 48) = *(a1 + 32);
    sub_24AA1A114(a1, v34);
    v31[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85348, &qword_24AAB6CE8);
    v31[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85350, &unk_24AAB6CF0);
    v31[0] = sub_24AA16A68(&qword_27EF85358, &qword_27EF85348, &qword_24AAB6CE8, MEMORY[0x277D83980]);
    v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84F18, &qword_24AAB6720);
    v25 = sub_24AA16A68(&qword_27EF84F10, &qword_27EF84F18, &qword_24AAB6720, MEMORY[0x277CDF028]);
    v28 = sub_24AA1A14C(v25, v26, v27);
    v34[0] = v24;
    v34[1] = &type metadata for DialogButtonStyle;
    v34[2] = v25;
    v34[3] = v28;
    swift_getOpaqueTypeConformance2();
    sub_24AA1A1A0(&qword_27EF85368, MEMORY[0x277D07EC8], MEMORY[0x277D07ED0]);
    sub_24AAB4C84();
    sub_24AA1A1E8(v6, v12);
    v19 = 0;
  }

  (*(v32 + 56))(v12, v19, 1, v33);
  sub_24AA1695C(v18, v16, &qword_27EF85328, &qword_24AAB6CC8);
  sub_24AA1695C(v12, v10, &qword_27EF85320, &qword_24AAB6CC0);
  sub_24AA1695C(v16, a2, &qword_27EF85328, &qword_24AAB6CC8);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85338, &qword_24AAB6CD8);
  sub_24AA1695C(v10, a2 + *(v29 + 48), &qword_27EF85320, &qword_24AAB6CC0);
  sub_24AA169C4(v12, &qword_27EF85320, &qword_24AAB6CC0);
  sub_24AA169C4(v18, &qword_27EF85328, &qword_24AAB6CC8);
  sub_24AA169C4(v10, &qword_27EF85320, &qword_24AAB6CC0);
  return sub_24AA169C4(v16, &qword_27EF85328, &qword_24AAB6CC8);
}

uint64_t sub_24AA1735C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F18, &qword_24AAB6720);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v69 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85350, &unk_24AAB6CF0);
  v86 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v78 = &v69 - v5;
  v77 = sub_24AAB3804();
  v75 = *(v77 - 8);
  v6 = *(v75 + 64);
  v7 = MEMORY[0x28223BE20](v77);
  v74 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v73 = &v69 - v9;
  MEMORY[0x28223BE20](v8);
  v82 = &v69 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85370, &qword_24AAB6D00);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v84 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v69 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85378, &qword_24AAB6D08);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v69 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85380, &qword_24AAB6D10);
  v20 = v19 - 8;
  v21 = MEMORY[0x28223BE20](v19);
  v83 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v69 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v69 - v26;
  *v18 = sub_24AAB4104();
  *(v18 + 1) = 0x4026000000000000;
  v18[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85388, &qword_24AAB6D18);
  sub_24AA17B84(a1, &v18[*(v28 + 44)]);
  sub_24AAB4D44();
  sub_24AAB3F24();
  sub_24AA1A25C(v18, v25, &qword_27EF85378, &qword_24AAB6D08);
  v29 = *(v20 + 44);
  v30 = v86;
  v31 = &v25[v29];
  v32 = v95;
  v33 = v96;
  *(v31 + 4) = v94;
  *(v31 + 5) = v32;
  *(v31 + 6) = v33;
  v34 = v91;
  *v31 = v90;
  *(v31 + 1) = v34;
  v35 = v93;
  *(v31 + 2) = v92;
  *(v31 + 3) = v35;
  sub_24AA1A25C(v25, v27, &qword_27EF85380, &qword_24AAB6D10);
  v76 = a1;
  v36 = *(sub_24AAB3814() + 16);

  v37 = 1;
  v38 = v36 == 1;
  v39 = v4;
  if (v38)
  {
    v40 = sub_24AAB3814();
    if (*(v40 + 16))
    {
      v72 = v4;
      v70 = v27;
      v41 = v75;
      v42 = *(v75 + 80);
      v43 = *(v75 + 16);
      v71 = v15;
      v44 = v77;
      v43(v73, v40 + ((v42 + 32) & ~v42));

      v45 = *(v41 + 32);
      v46 = v82;
      v47 = v44;
      v45();
      v88 = sub_24AAB37F4();
      v89 = v48;
      v49 = v74;
      (v43)(v74, v46, v47);
      v30 = v86;
      v50 = (v42 + 56) & ~v42;
      v39 = v72;
      v51 = swift_allocObject();
      v52 = v76;
      v53 = v76[1];
      *(v51 + 16) = *v76;
      *(v51 + 32) = v53;
      *(v51 + 48) = *(v52 + 32);
      (v45)(v51 + v50, v49, v47);
      v54 = sub_24AA1A114(v52, v87);
      sub_24AA15894(v54, v55, v56);
      v57 = v79;
      sub_24AAB4BC4();
      v87[0] = 0;
      v58 = sub_24AA16A68(&qword_27EF84F10, &qword_27EF84F18, &qword_24AAB6720, MEMORY[0x277CDF028]);
      sub_24AA1A14C(v58, v59, v60);
      v61 = v78;
      v62 = v81;
      sub_24AAB47E4();
      (*(v80 + 8))(v57, v62);
      v15 = v71;
      (*(v41 + 8))(v82, v47);
      v27 = v70;
      (*(v30 + 32))(v15, v61, v39);
      v37 = 0;
    }

    else
    {

      v37 = 1;
    }
  }

  (*(v30 + 56))(v15, v37, 1, v39);
  v63 = v83;
  sub_24AA1695C(v27, v83, &qword_27EF85380, &qword_24AAB6D10);
  v64 = v84;
  sub_24AA1695C(v15, v84, &qword_27EF85370, &qword_24AAB6D00);
  v65 = v85;
  sub_24AA1695C(v63, v85, &qword_27EF85380, &qword_24AAB6D10);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85390, &qword_24AAB6D20);
  v67 = v65 + *(v66 + 48);
  *v67 = 0;
  *(v67 + 8) = 1;
  sub_24AA1695C(v64, v65 + *(v66 + 64), &qword_27EF85370, &qword_24AAB6D00);
  sub_24AA169C4(v15, &qword_27EF85370, &qword_24AAB6D00);
  sub_24AA169C4(v27, &qword_27EF85380, &qword_24AAB6D10);
  sub_24AA169C4(v64, &qword_27EF85370, &qword_24AAB6D00);
  return sub_24AA169C4(v63, &qword_27EF85380, &qword_24AAB6D10);
}

uint64_t sub_24AA17B84@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85398, &qword_24AAB6D28);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v57 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = (&v53 - v7);
  v54 = sub_24AAB4AE4();
  v8 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24AAB4AD4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24AAB37B4();
  v55 = a1;
  if ((v15 & 1) != 0 && (v16 = *(a1 + 8)) != 0)
  {
    v17 = *(a1 + 16);
    swift_unknownObjectRetain();
    v18 = sub_24AAB3834();
    if (v19 >> 60 == 15 || (v20 = v18, v21 = v19, v22 = objc_allocWithZone(MEMORY[0x277D755B8]), v23 = sub_24AAB2BF4(), v24 = [v22 initWithData_], v23, sub_24AA190D4(v20, v21), !v24))
    {
      swift_getObjectType();
      *v72 = v16;
      swift_unknownObjectRetain();
      v41 = sub_24AAB3584();
      v42 = swift_allocObject();
      *(v42 + 16) = v16;
      *(v42 + 24) = v17;
      sub_24AAB4D44();
      sub_24AAB3D54();
      LOBYTE(v66) = 1;
      *v72 = v41;
      *&v72[8] = sub_24AA1A7CC;
      *&v72[16] = v42;
      v72[72] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF853D0, &qword_24AAB6D48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF853F0, &qword_24AAB6D58);
      sub_24AA1A514();
      sub_24AA1A5CC();
      sub_24AAB42B4();
    }

    else
    {
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      swift_getObjectType();
      *v72 = v16;
      v26 = v24;
      v27 = sub_24AAB3584();
      sub_24AAB4D44();
      sub_24AAB3D54();
      *&v62 = v27;
      *(&v62 + 1) = sub_24AA1A80C;
      *&v63 = v25;
      v67[1] = v64;
      v67[2] = v65[0];
      *&v67[3] = *&v65[1];
      v66 = v62;
      v67[0] = v63;
      LOBYTE(v69) = 0;
      BYTE8(v67[3]) = 0;
      sub_24AA1695C(&v62, v72, &qword_27EF853D0, &qword_24AAB6D48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF853D0, &qword_24AAB6D48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF853F0, &qword_24AAB6D58);
      sub_24AA1A514();
      sub_24AA1A5CC();
      sub_24AAB42B4();

      sub_24AA169C4(&v62, &qword_27EF853D0, &qword_24AAB6D48);
      v61[1] = *&v72[32];
      v61[2] = *&v72[48];
      *(&v61[2] + 9) = *&v72[57];
      v60 = *v72;
      v61[0] = *&v72[16];
    }

    *&v72[32] = v61[1];
    *&v72[48] = v61[2];
    *&v72[57] = *(&v61[2] + 9);
    *v72 = v60;
    *&v72[16] = v61[0];
    v59 = 0;
    v72[73] = 0;
    sub_24AA1695C(&v60, &v66, &qword_27EF853C0, &qword_24AAB6D40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF853C0, &qword_24AAB6D40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF853A8, &qword_24AAB6D38);
    sub_24AA1A488();
    sub_24AA1A684();
    sub_24AAB42B4();
    *&v72[32] = v64;
    *&v72[48] = v65[0];
    *&v72[58] = *(v65 + 10);
    *v72 = v62;
    *&v72[16] = v63;
    LOBYTE(v69) = 0;
    v72[74] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF853A0, &qword_24AAB6D30);
    sub_24AA1A3FC();
    sub_24AAB42B4();
    swift_unknownObjectRelease();
    sub_24AA169C4(&v60, &qword_27EF853C0, &qword_24AAB6D40);
    *&v72[32] = v67[1];
    *&v72[48] = v67[2];
    *&v72[59] = *(&v67[2] + 11);
    *v72 = v66;
    *&v72[16] = v67[0];
  }

  else
  {
    v53 = a2;
    v28 = sub_24AAB3834();
    if (v29 >> 60 == 15 || (v30 = v28, v31 = v29, v32 = objc_allocWithZone(MEMORY[0x277D755B8]), v33 = sub_24AAB2BF4(), v34 = [v32 initWithData_], v33, sub_24AA190D4(v30, v31), !v34))
    {
      if (qword_27EF84C50 != -1)
      {
        swift_once();
      }

      v38 = qword_27EF919A8;
      sub_24AAB4B24();
      (*(v12 + 104))(v14, *MEMORY[0x277CE0FE0], v11);
      sub_24AAB4B14();

      (*(v12 + 8))(v14, v11);
      v39 = v54;
      (*(v8 + 104))(v10, *MEMORY[0x277CE0FF0], v54);
      v40 = sub_24AAB4AF4();

      (*(v8 + 8))(v10, v39);
      sub_24AAB4D44();
      sub_24AAB3D54();
      v72[0] = 0;
      *&v68[22] = v70;
      *&v68[38] = v71;
      *&v68[6] = v69;
      LOBYTE(v62) = 1;
      *&v66 = v40;
      *(&v66 + 1) = 0x3FF0000000000000;
      LOWORD(v67[0]) = 0;
      *(v67 + 2) = *v68;
      *(&v67[1] + 2) = *&v68[16];
      *(&v67[2] + 2) = *&v68[32];
      *&v67[3] = *(&v71 + 1);
      BYTE10(v67[3]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF853A0, &qword_24AAB6D30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF853A8, &qword_24AAB6D38);
      sub_24AA1A3FC();
      sub_24AA1A684();
      sub_24AAB42B4();
      a2 = v53;
    }

    else
    {
      v35 = v34;
      sub_24AAB4AB4();
      (*(v12 + 104))(v14, *MEMORY[0x277CE0FE0], v11);
      sub_24AAB4B14();

      (*(v12 + 8))(v14, v11);
      v36 = v54;
      (*(v8 + 104))(v10, *MEMORY[0x277CE0FF0], v54);
      v37 = sub_24AAB4AF4();

      (*(v8 + 8))(v10, v36);
      sub_24AAB4D44();
      sub_24AAB3D54();
      LOBYTE(v66) = 0;
      *&v72[6] = v69;
      *&v72[22] = v70;
      *&v72[38] = v71;
      *&v60 = v37;
      *(&v60 + 1) = 0x3FF0000000000000;
      LOWORD(v61[0]) = 0;
      *(v61 + 2) = *v72;
      *(&v61[1] + 2) = *&v72[16];
      *(&v61[2] + 2) = *&v72[32];
      *&v61[3] = *(&v71 + 1);
      *v72 = v60;
      *&v72[16] = v61[0];
      *&v72[32] = v61[1];
      *&v72[48] = v61[2];
      *&v72[64] = *(&v71 + 1);
      v58 = 1;
      v72[73] = 1;
      sub_24AA1695C(&v60, &v66, &qword_27EF853A8, &qword_24AAB6D38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF853C0, &qword_24AAB6D40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF853A8, &qword_24AAB6D38);
      sub_24AA1A488();
      sub_24AA1A684();
      sub_24AAB42B4();
      *&v72[32] = v64;
      *&v72[48] = v65[0];
      *&v72[58] = *(v65 + 10);
      *v72 = v62;
      *&v72[16] = v63;
      v59 = 0;
      v72[74] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF853A0, &qword_24AAB6D30);
      sub_24AA1A3FC();
      sub_24AAB42B4();

      sub_24AA169C4(&v60, &qword_27EF853A8, &qword_24AAB6D38);
      *&v72[32] = v67[1];
      *&v72[48] = v67[2];
      *&v72[59] = *(&v67[2] + 11);
      *v72 = v66;
      *&v72[16] = v67[0];
      a2 = v53;
    }
  }

  v43 = sub_24AAB41C4();
  v44 = v56;
  *v56 = v43;
  *(v44 + 8) = 0;
  *(v44 + 16) = 1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85420, &qword_24AAB6D70);
  sub_24AA18AB4((v44 + *(v45 + 44)));
  v61[1] = *&v72[32];
  v61[2] = *&v72[48];
  *(&v61[2] + 11) = *&v72[59];
  v60 = *v72;
  v61[0] = *&v72[16];
  v46 = v57;
  sub_24AA1695C(v44, v57, &qword_27EF85398, &qword_24AAB6D28);
  v47 = v61[2];
  v65[0] = v61[2];
  v48 = *(&v61[2] + 11);
  *(v65 + 11) = *(&v61[2] + 11);
  v50 = v60;
  v49 = v61[0];
  v63 = v61[0];
  v64 = v61[1];
  v62 = v60;
  a2[2] = v61[1];
  a2[3] = v47;
  *(a2 + 59) = v48;
  *a2 = v50;
  a2[1] = v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85428, &qword_24AAB6D78);
  sub_24AA1695C(v46, a2 + *(v51 + 48), &qword_27EF85398, &qword_24AAB6D28);
  sub_24AA1695C(&v62, &v66, &qword_27EF85430, &unk_24AAB6D80);
  sub_24AA169C4(v44, &qword_27EF85398, &qword_24AAB6D28);
  sub_24AA169C4(v46, &qword_27EF85398, &qword_24AAB6D28);
  v67[1] = v61[1];
  v67[2] = v61[2];
  *(&v67[2] + 11) = *(&v61[2] + 11);
  v66 = v60;
  v67[0] = v61[0];
  return sub_24AA169C4(&v66, &qword_27EF85430, &unk_24AAB6D80);
}

id Notice.image.getter(uint64_t a1)
{
  v1 = sub_24AAB3834();
  if (v2 >> 60 == 15)
  {
    return 0;
  }

  v4 = v1;
  v5 = v2;
  v6 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v7 = sub_24AAB2BF4();
  v8 = [v6 initWithData_];

  sub_24AA190D4(v4, v5);
  return v8;
}

double sub_24AA18808@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24AAB4AE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24AAB4AD4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = a1;
  sub_24AAB4AB4();
  (*(v9 + 104))(v11, *MEMORY[0x277CE0FE0], v8);
  sub_24AAB4B14();

  (*(v9 + 8))(v11, v8);
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FF0], v4);
  v13 = sub_24AAB4AF4();

  (*(v5 + 8))(v7, v4);
  sub_24AAB4D44();
  sub_24AAB3D54();
  v19 = 0;
  *&v18[6] = v20;
  *&v18[22] = v21;
  *&v18[38] = v22;
  sub_24AAB4A14();
  v14 = sub_24AAB4A54();

  *a2 = v13;
  *(a2 + 8) = 0x3FF0000000000000;
  *(a2 + 16) = 0;
  v15 = *&v18[16];
  *(a2 + 18) = *v18;
  *(a2 + 34) = v15;
  *(a2 + 50) = *&v18[32];
  *(a2 + 64) = *&v18[46];
  *(a2 + 72) = v14;
  result = 4.0;
  *(a2 + 80) = xmmword_24AAB6A50;
  *(a2 + 96) = xmmword_24AAB6A60;
  *(a2 + 112) = 0x4000000000000000;
  return result;
}

uint64_t sub_24AA18AB4@<X0>(uint64_t *a1@<X8>)
{
  v46 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85438, &qword_24AABC780) - 8;
  v1 = MEMORY[0x28223BE20](v44);
  v45 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v4 = &v39 - v3;
  v47 = sub_24AAB37D4();
  v48 = v5;
  sub_24AA15894(v47, v5, v6);
  v7 = sub_24AAB4774();
  v9 = v8;
  v11 = v10;
  sub_24AAB4554();
  sub_24AAB45A4();
  sub_24AAB45E4();

  v12 = sub_24AAB4704();
  v40 = v13;
  v41 = v12;
  v42 = v14;
  v43 = v15;

  sub_24AA158E8(v7, v9, v11 & 1);

  v47 = sub_24AAB3824();
  v48 = v16;
  v17 = sub_24AAB4774();
  v19 = v18;
  LOBYTE(v9) = v20;
  v21 = [objc_opt_self() secondaryLabelColor];
  v47 = sub_24AAB49C4();
  v22 = sub_24AAB46F4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_24AA158E8(v17, v19, v9 & 1);

  v29 = *(v44 + 44);
  v30 = *MEMORY[0x277CE13B8];
  v31 = sub_24AAB4DB4();
  (*(*(v31 - 8) + 104))(&v4[v29], v30, v31);
  *v4 = v22;
  *(v4 + 1) = v24;
  v4[16] = v26 & 1;
  *(v4 + 3) = v28;
  v32 = v45;
  sub_24AA1695C(v4, v45, &qword_27EF85438, &qword_24AABC780);
  v33 = v46;
  v35 = v40;
  v34 = v41;
  *v46 = v41;
  v33[1] = v35;
  LOBYTE(v30) = v42 & 1;
  *(v33 + 16) = v42 & 1;
  v33[3] = v43;
  v36 = v33;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85440, &unk_24AAB6D90);
  sub_24AA1695C(v32, v36 + *(v37 + 48), &qword_27EF85438, &qword_24AABC780);
  sub_24AA1A814(v34, v35, v30);

  sub_24AA169C4(v4, &qword_27EF85438, &qword_24AABC780);
  sub_24AA169C4(v32, &qword_27EF85438, &qword_24AABC780);
  sub_24AA158E8(v34, v35, v30);
}

uint64_t sub_24AA18DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = sub_24AAB3804();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F18, &qword_24AAB6720);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24[-v10 - 8];
  v25 = sub_24AAB37F4();
  v26 = v12;
  (*(v6 + 16))(&v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], a1, v5);
  v13 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v15 = *(a2 + 16);
  *(v14 + 16) = *a2;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(a2 + 32);
  (*(v6 + 32))(v14 + v13, &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v5);
  v16 = sub_24AA1A114(a2, v24);
  sub_24AA15894(v16, v17, v18);
  sub_24AAB4BC4();
  v24[0] = 1;
  v19 = sub_24AA16A68(&qword_27EF84F10, &qword_27EF84F18, &qword_24AAB6720, MEMORY[0x277CDF028]);
  sub_24AA1A14C(v19, v20, v21);
  sub_24AAB47E4();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24AA19068(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = sub_24AAB37E4();
    v1(v2);
  }

  return result;
}

uint64_t sub_24AA190D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24AA190E8(a1, a2);
  }

  return a1;
}

uint64_t sub_24AA190E8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

double sub_24AA19158@<D0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v13[0] = *v2;
  v13[1] = v4;
  v14 = *(v2 + 32);
  *a2 = sub_24AAB41B4();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85220, &qword_24AAB6A80);
  sub_24AA16EB0(v13, a2 + *(v5 + 44));
  v6 = sub_24AAB44D4();
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85228, &qword_24AAB6A88) + 36);
  *v7 = v6;
  *(v7 + 8) = xmmword_24AAB6A40;
  *(v7 + 24) = xmmword_24AAB6A40;
  *(v7 + 40) = 0;
  sub_24AAB4D44();
  sub_24AAB3D54();
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85230, &qword_24AAB6A90) + 36));
  *v8 = v10;
  v8[1] = v11;
  result = *&v12;
  v8[2] = v12;
  return result;
}

uint64_t get_enum_tag_for_layout_string_SSIegg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_24AA19288()
{
  result = qword_27EF85238;
  if (!qword_27EF85238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85230, &qword_24AAB6A90);
    sub_24AA19314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85238);
  }

  return result;
}

unint64_t sub_24AA19314()
{
  result = qword_27EF85240;
  if (!qword_27EF85240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85228, &qword_24AAB6A88);
    sub_24AA16A68(&qword_27EF85248, &qword_27EF85250, &qword_24AAB6B88, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85240);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DialogButtonStyle(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DialogButtonStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24AA19554@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v71[1] = a1;
  v77 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85258, &qword_24AAB6C00);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = v71 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85260, &qword_24AAB6C08);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v71 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85268, &qword_24AAB6C10);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v71 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85270, &qword_24AAB6C18);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v73 = v71 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85278, &qword_24AAB6C20);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v72 = v71 - v19;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85280, &qword_24AAB6C28) - 8;
  MEMORY[0x28223BE20](v76);
  v74 = v71 - v20;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85288, &qword_24AAB6C30);
  MEMORY[0x28223BE20](v75);
  v22 = v71 - v21;
  sub_24AAB43B4();
  *&v5[*(v3 + 44)] = sub_24AAB4A44();
  sub_24AAB4D44();
  sub_24AAB3F24();
  sub_24AA1A25C(v5, v9, &qword_27EF85258, &qword_24AAB6C00);
  v23 = &v9[*(v7 + 44)];
  v24 = v83;
  *(v23 + 4) = v82;
  *(v23 + 5) = v24;
  *(v23 + 6) = v84;
  v25 = v79;
  *v23 = v78;
  *(v23 + 1) = v25;
  v26 = v81;
  *(v23 + 2) = v80;
  *(v23 + 3) = v26;
  LOBYTE(v3) = sub_24AAB4534();
  sub_24AAB3C54();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_24AA1A25C(v9, v13, &qword_27EF85260, &qword_24AAB6C08);
  v35 = &v13[*(v11 + 44)];
  *v35 = v3;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  LOBYTE(v3) = sub_24AAB44C4();
  sub_24AAB3C54();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = v73;
  sub_24AA1A25C(v13, v73, &qword_27EF85268, &qword_24AAB6C10);
  v45 = v44 + *(v15 + 44);
  *v45 = v3;
  *(v45 + 8) = v37;
  *(v45 + 16) = v39;
  *(v45 + 24) = v41;
  *(v45 + 32) = v43;
  *(v45 + 40) = 0;
  v46 = v72;
  v47 = &v72[*(v18 + 44)];
  *v47 = 0;
  v48 = type metadata accessor for ControlPlatter(0);
  v49 = *(v48 + 20);
  *&v47[v49] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  swift_storeEnumTagMultiPayload();
  v50 = &v47[*(v48 + 24)];
  *v50 = swift_getKeyPath();
  v50[8] = 0;
  v51 = sub_24AAB4D44();
  v53 = v52;
  v54 = &v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85298, &unk_24AAB8FE0) + 36)];
  *v54 = v51;
  v54[1] = v53;
  sub_24AA1A25C(v44, v46, &qword_27EF85270, &qword_24AAB6C18);
  LOBYTE(v51) = sub_24AAB43C4();
  v55 = sub_24AAB4D44();
  v57 = v56;
  v58 = v74;
  sub_24AA1A25C(v46, v74, &qword_27EF85278, &qword_24AAB6C20);
  v59 = v75;
  v60 = v58 + *(v76 + 44);
  *v60 = v51 & 1;
  *(v60 + 8) = v55;
  *(v60 + 16) = v57;
  v61 = &v22[*(v59 + 36)];
  v62 = *(sub_24AAB3F14() + 20);
  v63 = *MEMORY[0x277CE0118];
  v64 = sub_24AAB4184();
  (*(*(v64 - 8) + 104))(&v61[v62], v63, v64);
  __asm { FMOV            V0.2D, #6.0 }

  *v61 = _Q0;
  *&v61[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF852A0, &unk_24AAB6CA0) + 36)] = 256;
  sub_24AA1A25C(v58, v22, &qword_27EF85280, &qword_24AAB6C28);
  sub_24AA19B68();
  sub_24AAB4794();
  return sub_24AA169C4(v22, &qword_27EF85288, &qword_24AAB6C30);
}

unint64_t sub_24AA19B68()
{
  result = qword_27EF852A8;
  if (!qword_27EF852A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85288, &qword_24AAB6C30);
    sub_24AA19C20();
    sub_24AA16A68(&qword_27EF85310, &qword_27EF852A0, &unk_24AAB6CA0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF852A8);
  }

  return result;
}

unint64_t sub_24AA19C20()
{
  result = qword_27EF852B0;
  if (!qword_27EF852B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85280, &qword_24AAB6C28);
    sub_24AA19CD8();
    sub_24AA16A68(&qword_27EF85300, &qword_27EF85308, &qword_24AAB6CB0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF852B0);
  }

  return result;
}

unint64_t sub_24AA19CD8()
{
  result = qword_27EF852B8;
  if (!qword_27EF852B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85278, &qword_24AAB6C20);
    sub_24AA19D90();
    sub_24AA16A68(&qword_27EF852F8, &qword_27EF85298, &unk_24AAB8FE0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF852B8);
  }

  return result;
}

unint64_t sub_24AA19D90()
{
  result = qword_27EF852C0;
  if (!qword_27EF852C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85270, &qword_24AAB6C18);
    sub_24AA19E1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF852C0);
  }

  return result;
}

unint64_t sub_24AA19E1C()
{
  result = qword_27EF852C8;
  if (!qword_27EF852C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85268, &qword_24AAB6C10);
    sub_24AA19EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF852C8);
  }

  return result;
}

unint64_t sub_24AA19EA8()
{
  result = qword_27EF852D0;
  if (!qword_27EF852D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85260, &qword_24AAB6C08);
    sub_24AA19F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF852D0);
  }

  return result;
}

unint64_t sub_24AA19F34()
{
  result = qword_27EF852D8;
  if (!qword_27EF852D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85258, &qword_24AAB6C00);
    sub_24AA1A1A0(&qword_27EF852E0, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);
    sub_24AA16A68(&qword_27EF852E8, &qword_27EF852F0, &unk_24AAB8FA0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF852D8);
  }

  return result;
}

uint64_t sub_24AA1A01C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AA1A054(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t sub_24AA1A0BC()
{
  swift_unknownObjectRelease();
  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_24AA1A14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EF85360;
  if (!qword_27EF85360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85360);
  }

  return result;
}

uint64_t sub_24AA1A1A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24AA1A1E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85318, &qword_24AAB6CB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA1A25C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_20Tm()
{
  v1 = sub_24AAB3804();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  swift_unknownObjectRelease();
  if (*(v0 + 40))
  {
  }

  v5 = (v3 + 56) & ~v3;
  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v4, v3 | 7);
}

unint64_t sub_24AA1A3FC()
{
  result = qword_27EF853B0;
  if (!qword_27EF853B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF853A0, &qword_24AAB6D30);
    sub_24AA1A488();
    sub_24AA1A684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF853B0);
  }

  return result;
}

unint64_t sub_24AA1A488()
{
  result = qword_27EF853B8;
  if (!qword_27EF853B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF853C0, &qword_24AAB6D40);
    sub_24AA1A514();
    sub_24AA1A5CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF853B8);
  }

  return result;
}

unint64_t sub_24AA1A514()
{
  result = qword_27EF853C8;
  if (!qword_27EF853C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF853D0, &qword_24AAB6D48);
    sub_24AA16A68(&qword_27EF853D8, &qword_27EF853E0, &qword_24AAB6D50, &protocol conformance descriptor for CallAvatarView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF853C8);
  }

  return result;
}

unint64_t sub_24AA1A5CC()
{
  result = qword_27EF853E8;
  if (!qword_27EF853E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF853F0, &qword_24AAB6D58);
    sub_24AA16A68(&qword_27EF853F8, &qword_27EF85400, &qword_24AAB6D60, &protocol conformance descriptor for CallAvatarView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF853E8);
  }

  return result;
}

unint64_t sub_24AA1A684()
{
  result = qword_27EF85408;
  if (!qword_27EF85408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF853A8, &qword_24AAB6D38);
    sub_24AA1A710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85408);
  }

  return result;
}

unint64_t sub_24AA1A710()
{
  result = qword_27EF85410;
  if (!qword_27EF85410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85418, &qword_24AAB6D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85410);
  }

  return result;
}

uint64_t sub_24AA1A794()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AA1A7D4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AA1A814(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24AA1A824()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85288, &qword_24AAB6C30);
  sub_24AA19B68();
  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for PerformCallActionKey(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PerformCallActionKey(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t DialPromptView.init(viewModel:)(uint64_t a1)
{
  type metadata accessor for DialPromptViewModel(0);
  sub_24AA1B700(&qword_27EF85448, type metadata accessor for DialPromptViewModel, &protocol conformance descriptor for DialPromptViewModel);

  return sub_24AAB4CB4();
}

double DialPromptView.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = sub_24AAB4104();
  *(a6 + 8) = 0;
  *(a6 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85450, &qword_24AAB6E20);
  sub_24AA1AB80(a6 + *(v7 + 44));
  v8 = sub_24AAB44D4();
  v9 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85458, &qword_24AAB6E28) + 36);
  *v9 = v8;
  *(v9 + 8) = xmmword_24AAB6A40;
  __asm { FMOV            V0.2D, #12.0 }

  *(v9 + 24) = _Q0;
  *(v9 + 40) = 0;
  sub_24AAB4D44();
  sub_24AAB3D54();
  v15 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85460, &qword_24AAB6E30) + 36));
  *v15 = v17;
  v15[1] = v18;
  result = *&v19;
  v15[2] = v19;
  return result;
}

uint64_t sub_24AA1AB80@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = type metadata accessor for CallStatusViewModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = (v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF854A8, &qword_24AAB6ED0);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v40 - v9;
  v40[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85468, qword_24AAB6E90);
  sub_24AAB4CA4();
  sub_24AA842FC(*(v43[0] + 16), *(v43[0] + 24), v3);

  sub_24AAB4C24();
  sub_24AA1B69C(v3);
  LOBYTE(v42[0]) = 0;
  sub_24AAB4C24();
  v11 = v43[0];
  v12 = v43[1];
  v13 = v44;
  v14 = type metadata accessor for CallStatusView(0);
  *&v10[v14[9]] = 0;
  v15 = v14[10];
  *&v10[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  swift_storeEnumTagMultiPayload();
  v16 = &v10[v14[5]];
  *v16 = v11;
  *(v16 + 1) = v12;
  v16[16] = v13;
  v10[v14[6]] = 1;
  v10[v14[7]] = 1;
  *&v10[v14[8]] = 0x4041000000000000;
  sub_24AAB4D44();
  sub_24AAB3D54();
  v17 = &v10[*(v5 + 44)];
  v18 = v53;
  *v17 = v52;
  *(v17 + 1) = v18;
  *(v17 + 2) = v54;
  v19 = type metadata accessor for DialControl(0);
  v45 = v19;
  v46 = sub_24AA1B700(&qword_27EF854B0, type metadata accessor for DialControl, &unk_24AABB3CC);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v43);
  *boxed_opaque_existential_1Tm = xmmword_24AAB6E00;
  *(boxed_opaque_existential_1Tm + 16) = 2;
  sub_24AAB2B24();
  v21 = (boxed_opaque_existential_1Tm + v19[6]);
  *v21 = 0x69662E656E6F6870;
  v21[1] = 0xEA00000000006C6CLL;
  v22 = (boxed_opaque_existential_1Tm + v19[7]);
  v23 = sub_24AAB4A34();
  v24 = sub_24AAB4A44();
  *v22 = v23;
  v22[1] = v24;
  v22[2] = 0;
  v22[3] = 0;
  *(boxed_opaque_existential_1Tm + v19[8]) = 0;
  *(boxed_opaque_existential_1Tm + v19[9]) = 0;
  v25 = type metadata accessor for CancelDialControl(0);
  v47[3] = v25;
  v47[4] = sub_24AA1B700(&qword_27EF854B8, type metadata accessor for CancelDialControl, &unk_24AABB3B0);
  v26 = __swift_allocate_boxed_opaque_existential_1Tm(v47);
  *v26 = xmmword_24AAB6E10;
  *(v26 + 16) = 2;
  sub_24AAB2B24();
  v27 = (v26 + v25[6]);
  *v27 = 0x796C7069746C756DLL;
  v27[1] = 0xE800000000000000;
  v28 = v25[7];
  if (qword_27EF84C70 != -1)
  {
    swift_once();
  }

  v29 = (v26 + v28);
  v30 = unk_27EF91A00;
  v31 = qword_27EF91A08;
  v32 = unk_27EF91A10;
  *v29 = qword_27EF919F8;
  v29[1] = v30;
  v29[2] = v31;
  v29[3] = v32;
  *(v26 + v25[8]) = 0;
  *(v26 + v25[9]) = 0;
  v48 = 3;
  KeyPath = swift_getKeyPath();

  sub_24AA1B750(v31, v32);
  sub_24AAB4CA4();
  v34 = v42[0];
  v35 = swift_allocObject();
  *(v35 + 16) = sub_24AA1B790;
  *(v35 + 24) = v34;
  v49 = KeyPath;
  v50 = sub_24AA1B7D0;
  v51 = v35;
  sub_24AA1695C(v10, v8, &qword_27EF854A8, &qword_24AAB6ED0);
  sub_24AA1695C(v43, v42, &qword_27EF854C0, &qword_24AAB6F38);
  v36 = v41;
  sub_24AA1695C(v8, v41, &qword_27EF854A8, &qword_24AAB6ED0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF854C8, &qword_24AAB6F40);
  v38 = v36 + *(v37 + 48);
  *v38 = 0;
  *(v38 + 8) = 1;
  sub_24AA1695C(v42, v36 + *(v37 + 64), &qword_27EF854C0, &qword_24AAB6F38);
  sub_24AA169C4(v43, &qword_27EF854C0, &qword_24AAB6F38);
  sub_24AA169C4(v10, &qword_27EF854A8, &qword_24AAB6ED0);
  sub_24AA169C4(v42, &qword_27EF854C0, &qword_24AAB6F38);
  return sub_24AA169C4(v8, &qword_27EF854A8, &qword_24AAB6ED0);
}

void sub_24AA1B114(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 2)
  {
    v2 = *(a1 + 8);
    if (*a1 ^ 0x13 | v2)
    {
      if (!(*a1 ^ 0x12 | v2))
      {
        v3 = *(a2 + 16);
        v4 = *(a2 + 24);
        __swift_project_boxed_opaque_existential_1((a2 + 32), *(a2 + 56));
        v7 = v3;
        if (v4)
        {
          v6 = sub_24AAB3354();
        }

        else
        {
          sub_24AAB3334();
          v6 = swift_unknownObjectRelease();
        }

        (*(a2 + 72))(v6);
      }
    }

    else
    {
      (*(a2 + 72))();
    }
  }
}

double sub_24AA1B200@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = sub_24AAB4104();
  *(a6 + 8) = 0;
  *(a6 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85450, &qword_24AAB6E20);
  sub_24AA1AB80(a6 + *(v7 + 44));
  v8 = sub_24AAB44D4();
  v9 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85458, &qword_24AAB6E28) + 36);
  *v9 = v8;
  *(v9 + 8) = xmmword_24AAB6A40;
  __asm { FMOV            V0.2D, #12.0 }

  *(v9 + 24) = _Q0;
  *(v9 + 40) = 0;
  sub_24AAB4D44();
  sub_24AAB3D54();
  v15 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85460, &qword_24AAB6E30) + 36));
  *v15 = v17;
  v15[1] = v18;
  result = *&v19;
  v15[2] = v19;
  return result;
}

uint64_t sub_24AA1B304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85468, qword_24AAB6E90);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24AA1B390(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85468, qword_24AAB6E90);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DialPromptView(uint64_t a1)
{
  result = qword_27EF85470;
  if (!qword_27EF85470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24AA1B458(uint64_t a1)
{
  sub_24AA1B4C4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24AA1B4C4(uint64_t a1)
{
  if (!qword_27EF85480)
  {
    type metadata accessor for DialPromptViewModel(255);
    v1 = sub_24AAB4CC4();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF85480);
    }
  }
}

unint64_t sub_24AA1B520()
{
  result = qword_27EF85488;
  if (!qword_27EF85488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85460, &qword_24AAB6E30);
    sub_24AA1B5AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85488);
  }

  return result;
}

unint64_t sub_24AA1B5AC()
{
  result = qword_27EF85490;
  if (!qword_27EF85490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85458, &qword_24AAB6E28);
    sub_24AA1B638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85490);
  }

  return result;
}

unint64_t sub_24AA1B638()
{
  result = qword_27EF85498;
  if (!qword_27EF85498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF854A0, &qword_24AAB6EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85498);
  }

  return result;
}

uint64_t sub_24AA1B69C(uint64_t a1)
{
  v2 = type metadata accessor for CallStatusViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AA1B700(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24AA1B750(uint64_t result, uint64_t a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_24AA1B798()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t CallNotificationViewModel.__allocating_init(call:callCenter:callsReminder:callConfirmationPresenter:forwardCallAction:isScreenLocked:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, int a8)
{
  ObjectType = swift_getObjectType();
  v13 = a3[3];
  v14 = a3[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a3, v13);
  v17 = a5[3];
  v16 = a5[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a5, v17);
  *(&v21 + 1) = v14;
  *&v21 = a2;
  v19 = sub_24AA41C74(a1, v15, a4, v18, a6, a7, a8, v26, ObjectType, v13, v17, v21, v16);
  sub_24AA16D74(a6, a7);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v19;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_24AA1B9CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__statusViewModel;
  swift_beginAccess();
  return sub_24AA42D0C(v3 + v4, a2, type metadata accessor for CallStatusViewModel);
}

uint64_t sub_24AA1BAA8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for CallStatusViewModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24AA42D0C(a1, v6, type metadata accessor for CallStatusViewModel);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CE4();

  return sub_24AA42D74(v6, type metadata accessor for CallStatusViewModel);
}

uint64_t sub_24AA1BBF4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__statusViewModel;
  swift_beginAccess();
  return sub_24AA42D0C(v5 + v3, a1, type metadata accessor for CallStatusViewModel);
}

uint64_t sub_24AA1BCD0(uint64_t a1)
{
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CE4();

  return sub_24AA42D74(a1, type metadata accessor for CallStatusViewModel);
}

uint64_t sub_24AA1BDB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallStatusViewModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AA42D0C(a2, v6, type metadata accessor for CallStatusViewModel);
  v7 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__statusViewModel;
  swift_beginAccess();
  sub_24AA44EA0(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t (*sub_24AA1BE84(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  v4[7] = sub_24AA1B96C(v4);
  return sub_24AA1BFBC;
}

uint64_t sub_24AA1BFC8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe;
  swift_beginAccess();
  return sub_24AA43A54(v5 + v3, a1);
}

uint64_t sub_24AA1C090@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe;
  swift_beginAccess();
  return sub_24AA43A54(v3 + v4, a2);
}

uint64_t sub_24AA1C194(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe;
  swift_beginAccess();
  sub_24AA43A54(v1 + v3, v7);
  v4 = sub_24AA72E4C(v7, a1);
  sub_24AA4214C(v7);
  if (v4)
  {
    sub_24AA43A54(a1, v7);
    swift_beginAccess();
    sub_24AA43B0C(v7, v1 + v3);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v7[0] = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  return sub_24AA4214C(a1);
}

uint64_t sub_24AA1C310(uint64_t a1, uint64_t a2)
{
  sub_24AA43A54(a2, v5);
  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe;
  swift_beginAccess();
  sub_24AA43B0C(v5, a1 + v3);
  return swift_endAccess();
}

uint64_t sub_24AA1C388@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___trailingControlRecipe;
  swift_beginAccess();
  return sub_24AA1695C(v5 + v3, a1, &qword_27EF85568, &qword_24AABC830);
}

uint64_t sub_24AA1C460@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___trailingControlRecipe;
  swift_beginAccess();
  return sub_24AA1695C(v3 + v4, a2, &qword_27EF85568, &qword_24AABC830);
}

uint64_t sub_24AA1C538(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___trailingControlRecipe;
  swift_beginAccess();
  sub_24AA1695C(v1 + v3, v7, &qword_27EF85568, &qword_24AABC830);
  v4 = sub_24AA40EC4(v7, a1);
  sub_24AA169C4(v7, &qword_27EF85568, &qword_24AABC830);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v7[0] = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  else
  {
    sub_24AA1695C(a1, v7, &qword_27EF85568, &qword_24AABC830);
    swift_beginAccess();
    sub_24AA43980(v7, v1 + v3, &qword_27EF85568, &qword_24AABC830);
    swift_endAccess();
  }

  return sub_24AA169C4(a1, &qword_27EF85568, &qword_24AABC830);
}

uint64_t sub_24AA1C6F4(uint64_t a1, uint64_t a2)
{
  sub_24AA1695C(a2, v5, &qword_27EF85568, &qword_24AABC830);
  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___trailingControlRecipe;
  swift_beginAccess();
  sub_24AA43980(v5, a1 + v3, &qword_27EF85568, &qword_24AABC830);
  return swift_endAccess();
}

uint64_t sub_24AA1C794()
{
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();
}

uint64_t sub_24AA1C840@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  *a2 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___callHoldingAnalytics);
}

uint64_t sub_24AA1C8F4(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___callHoldingAnalytics) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }
}

uint64_t sub_24AA1CA90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingRTT;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24AA1CB7C()
{
  swift_getKeyPath();
  v3 = v0;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingRTT;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_24AA1CC38(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingRTT;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  return result;
}

uint64_t (*sub_24AA1CD64(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  v4[7] = sub_24AA1CA30(v4);
  return sub_24AA1CE9C;
}

uint64_t sub_24AA1CEF0(char a1)
{

  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136316162;
    *(v5 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v8);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_24AA406B4(0xD00000000000001DLL, 0x800000024AAD1A20, v8);
    *(v5 + 22) = 2048;
    *(v5 + 24) = 45;
    *(v5 + 32) = 1024;
    *(v5 + 34) = a1 & 1;
    *(v5 + 38) = 1024;
    swift_getKeyPath();
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CF4();

    *(v5 + 40) = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView);

    _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] showingSecondaryMoreMenuView changed from %{BOOL}d to %{BOOL}d", v5, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v6, -1, -1);
    MEMORY[0x24C226630](v5, -1, -1);
  }

  else
  {
  }

  swift_getKeyPath();
  v8[0] = v1;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView) != (a1 & 1))
  {
    sub_24AA2A2D4(v8);
    return sub_24AA1D19C(v8);
  }

  return result;
}

uint64_t sub_24AA1D19C(uint64_t a1)
{
  v2 = v1;
  sub_24AA43A54(a1, v32);

  v4 = sub_24AAB3A64();
  v5 = sub_24AAB5144();

  v6 = &qword_27EF85000;
  if (os_log_type_enabled(v4, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31[0] = v8;
    *v7 = 136316162;
    *(v7 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v31);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_24AA406B4(0x736C6F72746E6F63, 0xEE00657069636552, v31);
    *(v7 + 22) = 2048;
    *(v7 + 24) = 684;
    *(v7 + 32) = 2080;
    swift_getKeyPath();
    v30[0] = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CF4();

    v9 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe;
    swift_beginAccess();
    sub_24AA43A54(v2 + v9, v30);
    v10 = sub_24AA71A18();
    v12 = v11;
    sub_24AA4214C(v30);
    v13 = sub_24AA406B4(v10, v12, v31);

    *(v7 + 34) = v13;
    *(v7 + 42) = 2080;
    v14 = sub_24AA71A18();
    v16 = v15;
    sub_24AA4214C(v32);
    v17 = sub_24AA406B4(v14, v16, v31);

    *(v7 + 44) = v17;
    _os_log_impl(&dword_24AA0F000, v4, v5, "[%s:%s:%ld] Setting controls recipe from %s to %s", v7, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v8, -1, -1);
    v18 = v7;
    v6 = &qword_27EF85000;
    MEMORY[0x24C226630](v18, -1, -1);
  }

  else
  {

    sub_24AA4214C(v32);
  }

  swift_getKeyPath();
  v32[0] = v2;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v19 = v6[171];
  swift_beginAccess();
  sub_24AA43A54(v2 + v19, v32);
  v20 = sub_24AA734BC(v32, a1);
  sub_24AA4214C(v32);
  v21 = sub_24AAB3A64();
  v22 = sub_24AAB5144();
  v23 = os_log_type_enabled(v21, v22);
  if (v20)
  {
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32[0] = v25;
      *v24 = 136315650;
      *(v24 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v32);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_24AA406B4(0x736C6F72746E6F63, 0xEE00657069636552, v32);
      *(v24 + 22) = 2048;
      *(v24 + 24) = 686;
      _os_log_impl(&dword_24AA0F000, v21, v22, "[%s:%s:%ld] Animating controls recipe change", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v25, -1, -1);
      MEMORY[0x24C226630](v24, -1, -1);
    }

    v26 = MEMORY[0x24C2255E0](0.5, 0.85, 0.0);
    MEMORY[0x28223BE20](v26);
    sub_24AAB3E24();
  }

  else
  {
    if (v23)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32[0] = v28;
      *v27 = 136315650;
      *(v27 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v32);
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_24AA406B4(0x736C6F72746E6F63, 0xEE00657069636552, v32);
      *(v27 + 22) = 2048;
      *(v27 + 24) = 691;
      _os_log_impl(&dword_24AA0F000, v21, v22, "[%s:%s:%ld] Not animating controls recipe change", v27, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v28, -1, -1);
      MEMORY[0x24C226630](v27, -1, -1);
    }

    sub_24AA43A54(a1, v32);
    sub_24AA1C194(v32);
  }

  return sub_24AA4214C(a1);
}

uint64_t (*sub_24AA1D7B4(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_24AA1D7E8;
}

uint64_t sub_24AA1D88C(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView);
  *(a1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView) = a2;
  return sub_24AA1CEF0(v3);
}

uint64_t (*sub_24AA1D8C8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  v4[7] = sub_24AA1D7B4(v4);
  return sub_24AA1DA00;
}

uint64_t (*sub_24AA1DAD4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  v4[7] = sub_24AA1DA0C(v4);
  return sub_24AA1DC0C;
}

uint64_t sub_24AA1DC18(char a1)
{
  v2 = v1;

  v4 = sub_24AAB3A64();
  v5 = sub_24AAB5144();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14[0] = v7;
    *v6 = 136316162;
    *(v6 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v14);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_24AA406B4(0x676E69776F68735FLL, 0xEE0064617079654BLL, v14);
    *(v6 + 22) = 2048;
    *(v6 + 24) = 54;
    *(v6 + 32) = 1024;
    *(v6 + 34) = a1 & 1;
    *(v6 + 38) = 1024;
    swift_getKeyPath();
    v14[12] = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CF4();

    *(v6 + 40) = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingKeypad);

    _os_log_impl(&dword_24AA0F000, v4, v5, "[%s:%s:%ld] showingKeypad changed from %{BOOL}d to %{BOOL}d", v6, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v7, -1, -1);
    MEMORY[0x24C226630](v6, -1, -1);
  }

  else
  {
  }

  swift_getKeyPath();
  v14[0] = v1;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v8 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__keypadViewModel;
  swift_beginAccess();
  if (!*(v2 + v8))
  {
    v9 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call;
    type metadata accessor for KeypadViewModel(0);
    v10 = swift_allocObject();
    v13 = *(v2 + v9);
    swift_unknownObjectRetain();
    sub_24AAB2D24();
    *(v10 + 16) = v13;
    *(v10 + 32) = 32;
    *(v10 + 40) = 0xE100000000000000;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v14[0] = v2;

  sub_24AAB2CE4();

  sub_24AA2A2D4(v14);
  return sub_24AA1D19C(v14);
}

uint64_t (*sub_24AA1DFC8(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingKeypad;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_24AA1DFFC;
}

uint64_t sub_24AA1E014(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(*a1 + v3);
  *(v4 + v3) = v5;
  return a3(v6, a2);
}

uint64_t sub_24AA1E0D4(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (*(v5 + *a2) == (a1 & 1))
  {
    *(v5 + *a2) = a1 & 1;

    return a5();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }
}

uint64_t (*sub_24AA1E200(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  v4[7] = sub_24AA1DFC8(v4);
  return sub_24AA1E338;
}

void sub_24AA1E36C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24AA1E39C(v1);
}

void *sub_24AA1E448(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_24AA1E4F0@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v7 = *(v6 + *a3);
  *a4 = v7;

  return v7;
}

void sub_24AA1E5F0(void *a1, uint64_t *a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = *a2;
  v9 = *(v5 + *a2);
  if (!v9)
  {
    if (!a1)
    {
      v13 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CE4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  a3(0);
  v10 = v9;
  v11 = a1;
  v12 = sub_24AAB5214();

  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }

  v13 = *(v6 + v8);
LABEL_8:
  *(v6 + v8) = a1;
}

uint64_t sub_24AA1E778@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldStatusMessage;
  swift_beginAccess();
  return sub_24AA1695C(v5 + v3, a1, &qword_27EF855C0, &unk_24AAB7270);
}

uint64_t sub_24AA1E850@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldStatusMessage;
  swift_beginAccess();
  return sub_24AA1695C(v3 + v4, a2, &qword_27EF855C0, &unk_24AAB7270);
}

uint64_t sub_24AA1E928(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855C0, &unk_24AAB7270);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_24AA1695C(a1, &v6 - v3, &qword_27EF855C0, &unk_24AAB7270);
  return sub_24AA1E9D4(v4);
}

uint64_t sub_24AA1E9D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855C0, &unk_24AAB7270);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldStatusMessage;
  swift_beginAccess();
  sub_24AA1695C(v1 + v6, v5, &qword_27EF855C0, &unk_24AAB7270);
  v7 = sub_24AA435B8(v5, a1);
  sub_24AA169C4(v5, &qword_27EF855C0, &unk_24AAB7270);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  else
  {
    sub_24AA1695C(a1, v5, &qword_27EF855C0, &unk_24AAB7270);
    swift_beginAccess();
    sub_24AA43980(v5, v1 + v6, &qword_27EF855C0, &unk_24AAB7270);
    swift_endAccess();
  }

  return sub_24AA169C4(a1, &qword_27EF855C0, &unk_24AAB7270);
}

uint64_t sub_24AA1EBDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855C0, &unk_24AAB7270);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_24AA1695C(a2, &v9 - v5, &qword_27EF855C0, &unk_24AAB7270);
  v7 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldStatusMessage;
  swift_beginAccess();
  sub_24AA43980(v6, a1 + v7, &qword_27EF855C0, &unk_24AAB7270);
  return swift_endAccess();
}

uint64_t sub_24AA1ECC0()
{
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v1 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle);

  return v1;
}

uint64_t sub_24AA1ED7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v4 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle);
  a2[1] = v4;
}

uint64_t sub_24AA1EE4C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle);
  v6 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_24AAB5474() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

BOOL sub_24AA1F130()
{
  v1 = v0;
  swift_getKeyPath();
  v13 = v0;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__posterViewModel);
  if (v2)
  {
    swift_getKeyPath();
    v13 = v0;

    sub_24AAB2CF4();

    v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callTranslationViewModel;
    swift_beginAccess();
    v4 = *(v1 + v3);
    if (v4 && (swift_getKeyPath(), v12 = v4, sub_24AA42080(&qword_27EF85520, type metadata accessor for CallTranslationViewModel, &protocol conformance descriptor for CallTranslationViewModel), , sub_24AAB2CF4(), , v5 = *(v4 + 32), , v5 == 1))
    {
      v6 = sub_24AAB3A64();
      v7 = sub_24AAB5144();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v12 = v9;
        *v8 = 136315650;
        *(v8 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v12);
        *(v8 + 12) = 2080;
        *(v8 + 14) = sub_24AA406B4(0x6E69776F68537369, 0xEF726574736F5067, &v12);
        *(v8 + 22) = 2048;
        *(v8 + 24) = 87;
        _os_log_impl(&dword_24AA0F000, v6, v7, "[%s:%s:%ld] isShowingPoster FALSE because we are currently in translation mode", v8, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v9, -1, -1);
        MEMORY[0x24C226630](v8, -1, -1);
      }
    }

    else if (sub_24AA47230())
    {
      swift_getKeyPath();
      v12 = v2;
      sub_24AA42080(&qword_27EF85528, type metadata accessor for CallNotificationPosterViewModel, &protocol conformance descriptor for CallNotificationPosterViewModel);
      sub_24AAB2CF4();

      v10 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterView) != 0;

      return v10;
    }
  }

  return 0;
}

uint64_t sub_24AA1F4E0()
{
  swift_getObjectType();
  if (sub_24AAB3574())
  {
    v0 = sub_24AAB38F4();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_24AA1F558()
{
  if ([*(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_featureFlags) LVMEverywhere] && (v1 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call), swift_getObjectType(), v12 = v1, (sub_24AAB34D4() & 1) != 0) && (sub_24AAB3A04() & 1) != 0)
  {
    v2 = sub_24AAB39F4() != 1 && sub_24AAB39F4() != 6 && sub_24AAB39F4() != 5;

    v8 = sub_24AAB3A64();
    v9 = sub_24AAB5144();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136316162;
      *(v10 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v12);
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_24AA406B4(0x63656E6E6F437369, 0xEC000000676E6974, &v12);
      *(v10 + 22) = 2048;
      *(v10 + 24) = 109;
      *(v10 + 32) = 1024;
      *(v10 + 34) = sub_24AAB39F4();

      *(v10 + 38) = 1024;
      *(v10 + 40) = v2;
      _os_log_impl(&dword_24AA0F000, v8, v9, "[%s:%s:%ld] call isRelay, call status: %d isConnecting: %{BOOL}d", v10, 0x2Cu);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v11, -1, -1);
      MEMORY[0x24C226630](v10, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    swift_getObjectType();
    if (sub_24AAB39F4() == 1)
    {
      LOBYTE(v2) = sub_24AAB3874() ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }

    v3 = sub_24AAB3A64();
    v4 = sub_24AAB5144();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136315906;
      *(v5 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v12);
      *(v5 + 12) = 2080;
      *(v5 + 14) = sub_24AA406B4(0x63656E6E6F437369, 0xEC000000676E6974, &v12);
      *(v5 + 22) = 2048;
      *(v5 + 24) = 115;
      *(v5 + 32) = 1024;
      *(v5 + 34) = v2 & 1;
      _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] isConnecting: %{BOOL}d", v5, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v6, -1, -1);
      MEMORY[0x24C226630](v5, -1, -1);
    }
  }

  return v2 & 1;
}

uint64_t sub_24AA1F944(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  return *(v2 + *a2);
}

uint64_t sub_24AA1F9E4@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_24AA1FAC0(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  return result;
}

uint64_t sub_24AA1FBC4()
{
  swift_getObjectType();
  v1 = sub_24AAB3954();
  if ((sub_24AA1F558() & 1) != 0 || (swift_getKeyPath(), v11 = v0, sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel), sub_24AAB2CF4(), , *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitingForAskToShare) == 1))
  {

    v2 = sub_24AAB3A64();
    v3 = sub_24AAB5144();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v11 = v5;
      *v4 = 136316162;
      *(v4 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v11);
      *(v4 + 12) = 2080;
      *(v4 + 14) = sub_24AA406B4(0x7669746365666665, 0xEF73757461745365, &v11);
      *(v4 + 22) = 2048;
      *(v4 + 24) = 123;
      *(v4 + 32) = 1024;
      *(v4 + 34) = sub_24AA1F558() & 1;
      *(v4 + 38) = 1024;
      swift_getKeyPath();
      sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
      sub_24AAB2CF4();

      *(v4 + 40) = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitingForAskToShare);

      _os_log_impl(&dword_24AA0F000, v2, v3, "[%s:%s:%ld] Overriding status to ringing - isConnecting: %{BOOL}d, waitingForAskToShare: %{BOOL}d", v4, 0x2Cu);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v5, -1, -1);
      MEMORY[0x24C226630](v4, -1, -1);
    }

    else
    {
    }

    v1 = 4;
  }

  v6 = sub_24AAB3A64();
  v7 = sub_24AAB5144();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315906;
    *(v8 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v11);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_24AA406B4(0x7669746365666665, 0xEF73757461745365, &v11);
    *(v8 + 22) = 2048;
    *(v8 + 24) = 128;
    *(v8 + 32) = 1024;
    *(v8 + 34) = v1;
    _os_log_impl(&dword_24AA0F000, v6, v7, "[%s:%s:%ld] Effective status: %d", v8, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v9, -1, -1);
    MEMORY[0x24C226630](v8, -1, -1);
  }

  return v1;
}

uint64_t (*sub_24AA20090(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  v4[7] = sub_24AA1FFC4(v4);
  return sub_24AA201C8;
}

uint64_t sub_24AA20248@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
}

uint64_t sub_24AA20348(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  swift_beginAccess();
}

uint64_t sub_24AA20420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CE4();
}

uint64_t sub_24AA204E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
}

uint64_t (*sub_24AA20554(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  v4[7] = sub_24AA201D4(v4);
  return sub_24AA2068C;
}

void sub_24AA20698(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_24AAB2D04();

  free(v3);
}

uint64_t sub_24AA20740(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();
}

uint64_t sub_24AA207E4@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  *a4 = *(v6 + *a3);
}

uint64_t sub_24AA2089C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CE4();
}

void *sub_24AA20958()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel____lazy_storage___controlsManager;
  v3 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel____lazy_storage___controlsManager);
  v4 = v3;
  if (v3 == 1)
  {
    sub_24AAB2E94();
    v5 = sub_24AAB2E84();
    v6 = sub_24AAB2E74();

    if ((v6 & 1) != 0 && (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      sub_24AAB2D64();
      swift_unknownObjectRetain();
      v4 = sub_24AAB2D54();
    }

    else
    {
      v4 = 0;
    }

    v7 = *(v1 + v2);
    *(v1 + v2) = v4;
    v8 = v4;
    sub_24AA421A0(v7);
  }

  sub_24AA4345C(v3);
  return v4;
}

uint64_t CallNotificationViewModel.init(call:callCenter:callsReminder:callConfirmationPresenter:forwardCallAction:isScreenLocked:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, int a8)
{
  v31 = a8;
  v29 = a2;
  v30 = a4;
  ObjectType = swift_getObjectType();
  v14 = a3[3];
  v27 = a3[4];
  v28 = ObjectType;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a3, v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v19 = a5[3];
  v20 = a5[4];
  v21 = __swift_mutable_project_boxed_opaque_existential_1(a5, v19);
  MEMORY[0x28223BE20](v21);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23);
  v25 = sub_24AA41024(a1, v17, v30, v23, a6, a7, v31, v32, v28, v14, v19, v29, v27, v20);
  sub_24AA16D74(a6, a7);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v25;
}

uint64_t sub_24AA20C48(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  sub_24AA1695C(a1, v38, &qword_27EF85568, &qword_24AABC830);

  v4 = sub_24AAB3A64();
  v5 = sub_24AAB5144();

  v6 = &qword_27EF85000;
  if (os_log_type_enabled(v4, v5))
  {
    v7 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v30[0] = v29;
    *v7 = 136316162;
    *(v7 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v30);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_24AA406B4(0xD000000000000015, 0x800000024AAD1E70, v30);
    *(v7 + 22) = 2048;
    *(v7 + 24) = 703;
    *(v7 + 32) = 2080;
    swift_getKeyPath();
    *&v32 = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CF4();

    v28 = v5;
    v8 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___trailingControlRecipe;
    swift_beginAccess();
    sub_24AA1695C(v1 + v8, &v32, &qword_27EF85568, &qword_24AABC830);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85568, &qword_24AABC830);
    v9 = sub_24AAB4F34();
    v11 = v3;
    v12 = sub_24AA406B4(v9, v10, v30);

    *(v7 + 34) = v12;
    *(v7 + 42) = 2080;
    sub_24AA1695C(v38, &v32, &qword_27EF85568, &qword_24AABC830);
    v13 = sub_24AAB4F34();
    v15 = v14;
    sub_24AA169C4(v38, &qword_27EF85568, &qword_24AABC830);
    v16 = sub_24AA406B4(v13, v15, v30);
    v3 = v11;
    v6 = &qword_27EF85000;

    *(v7 + 44) = v16;
    _os_log_impl(&dword_24AA0F000, v4, v28, "[%s:%s:%ld] Setting trailing control recipe from %s to %s", v7, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v29, -1, -1);
    MEMORY[0x24C226630](v7, -1, -1);
  }

  else
  {

    sub_24AA169C4(v38, &qword_27EF85568, &qword_24AABC830);
  }

  swift_getKeyPath();
  *&v30[0] = v2;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v17 = v6[172];
  swift_beginAccess();
  sub_24AA1695C(v2 + v17, &v32, &qword_27EF85568, &qword_24AABC830);
  if (v37 == 255)
  {
    sub_24AA169C4(&v32, &qword_27EF85568, &qword_24AABC830);
  }

  else
  {
    v38[2] = v34;
    v38[3] = v35;
    v38[4] = v36;
    v39 = v37;
    v38[0] = v32;
    v38[1] = v33;
    sub_24AA1695C(v3, v30, &qword_27EF85568, &qword_24AABC830);
    if (v31 == 255)
    {
      sub_24AA4214C(v38);
      sub_24AA169C4(v30, &qword_27EF85568, &qword_24AABC830);
    }

    else
    {
      v34 = v30[2];
      v35 = v30[3];
      v36 = v30[4];
      v37 = v31;
      v32 = v30[0];
      v33 = v30[1];
      if (sub_24AA734BC(v38, &v32))
      {
        v18 = sub_24AAB3A64();
        v19 = sub_24AAB5144();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *&v30[0] = v21;
          *v20 = 136315650;
          *(v20 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v30);
          *(v20 + 12) = 2080;
          *(v20 + 14) = sub_24AA406B4(0xD000000000000015, 0x800000024AAD1E70, v30);
          *(v20 + 22) = 2048;
          *(v20 + 24) = 705;
          _os_log_impl(&dword_24AA0F000, v18, v19, "[%s:%s:%ld] Animating trailing control recipe change", v20, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C226630](v21, -1, -1);
          MEMORY[0x24C226630](v20, -1, -1);
        }

        v22 = MEMORY[0x24C2255E0](0.5, 0.85, 0.0);
        MEMORY[0x28223BE20](v22);
        sub_24AAB3E24();

        sub_24AA169C4(v3, &qword_27EF85568, &qword_24AABC830);
        sub_24AA4214C(v38);
        return sub_24AA4214C(&v32);
      }

      sub_24AA4214C(v38);
      sub_24AA4214C(&v32);
    }
  }

  v24 = sub_24AAB3A64();
  v25 = sub_24AAB5144();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v38[0] = v27;
    *v26 = 136315650;
    *(v26 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v38);
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_24AA406B4(0xD000000000000015, 0x800000024AAD1E70, v38);
    *(v26 + 22) = 2048;
    *(v26 + 24) = 710;
    _os_log_impl(&dword_24AA0F000, v24, v25, "[%s:%s:%ld] Not animating trailing control recipe change", v26, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v27, -1, -1);
    MEMORY[0x24C226630](v26, -1, -1);
  }

  sub_24AA1695C(v3, v38, &qword_27EF85568, &qword_24AABC830);
  sub_24AA1C538(v38);
  return sub_24AA169C4(v3, &qword_27EF85568, &qword_24AABC830);
}

uint64_t CallNotificationViewModel.deinit()
{
  v1 = v0;
  v2 = sub_24AAB3A84();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  v8 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;
  v9 = *(v3 + 16);
  v9(&v32 - v6, v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger, v2);
  v10 = sub_24AAB3A64();
  v11 = sub_24AAB5144();
  v12 = os_log_type_enabled(v10, v11);
  v34 = v8;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v35 = v14;
    *v13 = 136315650;
    *(v13 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v35);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_24AA406B4(0x74696E696564, 0xE600000000000000, &v35);
    *(v13 + 22) = 2048;
    *(v13 + 24) = 176;
    _os_log_impl(&dword_24AA0F000, v10, v11, "[%s:%s:%ld] Deinitializing CallNotificationViewModel", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v14, -1, -1);
    v15 = v13;
    v8 = v34;
    MEMORY[0x24C226630](v15, -1, -1);
  }

  v16 = *(v3 + 8);
  v16(v7, v2);
  sub_24AAB2E94();
  v17 = sub_24AAB2E84();
  v18 = sub_24AAB2E74();

  if (v18)
  {
    v19 = v33;
    v9(v33, v1 + v8, v2);

    v20 = sub_24AAB3A64();
    v21 = sub_24AAB5144();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v35 = v32;
      *v22 = 136315906;
      *(v22 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v35);
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_24AA406B4(0x74696E696564, 0xE600000000000000, &v35);
      *(v22 + 22) = 2048;
      *(v22 + 24) = 178;
      *(v22 + 32) = 2080;
      swift_getObjectType();
      v23 = sub_24AAB39A4();
      v25 = sub_24AA406B4(v23, v24, &v35);

      *(v22 + 34) = v25;
      _os_log_impl(&dword_24AA0F000, v20, v21, "[%s:%s:%ld] Clearing menu item registry for call: %s", v22, 0x2Au);
      v26 = v32;
      swift_arrayDestroy();
      MEMORY[0x24C226630](v26, -1, -1);
      MEMORY[0x24C226630](v22, -1, -1);

      v27 = v33;
    }

    else
    {

      v27 = v19;
    }

    v16(v27, v2);
    sub_24AAB3184();
    v28 = sub_24AAB3154();
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_24AAB39A4();
    swift_unknownObjectRelease();
    sub_24AAB3144();

    v8 = v34;
  }

  v16((v1 + v8), v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callsReminder));

  sub_24AA16D74(*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_forwardCallAction), *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_forwardCallAction + 8));
  sub_24AA42D74(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__statusViewModel, type metadata accessor for CallStatusViewModel);
  sub_24AA4214C(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe);
  sub_24AA169C4(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___trailingControlRecipe, &qword_27EF85568, &qword_24AABC830);

  sub_24AA169C4(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldStatusMessage, &qword_27EF855C0, &unk_24AAB7270);

  sub_24AA421A0(*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel____lazy_storage___controlsManager));
  v29 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___observationRegistrar;
  v30 = sub_24AAB2D34();
  (*(*(v30 - 8) + 8))(v1 + v29, v30);
  return v1;
}

uint64_t CallNotificationViewModel.__deallocating_deinit()
{
  CallNotificationViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *sub_24AA21AFC()
{
  v1 = v0;
  v205 = type metadata accessor for CallSubtitle(0);
  v2 = MEMORY[0x28223BE20](v205);
  v196 = (&v191 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = MEMORY[0x28223BE20](v2);
  v201 = &v191 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v203 = &v191 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v194 = (&v191 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v197 = &v191 - v11;
  MEMORY[0x28223BE20](v10);
  v199 = &v191 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v191 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v191 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v191 - v20;
  v204 = type metadata accessor for CallStatusViewModel(0);
  v22 = MEMORY[0x28223BE20](v204);
  v200 = (&v191 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v22);
  v198 = (&v191 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v202 = (&v191 - v27);
  MEMORY[0x28223BE20](v26);
  v29 = (&v191 - v28);
  v209 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;
  v30 = sub_24AAB3A64();
  v31 = sub_24AAB5144();
  v32 = os_log_type_enabled(v30, v31);
  v195 = v16;
  v193 = v19;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v212[0] = v34;
    *v33 = 136315650;
    *(v33 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v212);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_24AA406B4(0x2928657461647075, 0xE800000000000000, v212);
    *(v33 + 22) = 2048;
    *(v33 + 24) = 184;
    _os_log_impl(&dword_24AA0F000, v30, v31, "[%s:%s:%ld] Updating CallNotificationViewModel", v33, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v34, -1, -1);
    MEMORY[0x24C226630](v33, -1, -1);
  }

  swift_getKeyPath();
  v35 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___observationRegistrar;
  v212[0] = v1;
  v208 = sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v207 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__audioCallRecordingViewModel;
  v36 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__audioCallRecordingViewModel);
  if (v36)
  {
    swift_getKeyPath();
    v212[0] = v36;
    sub_24AA42080(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);

    sub_24AAB2CF4();

    if (*(v36 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__statusLabel + 8))
    {
      v206 = v35;
      v37 = *(v36 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__statusLabel);

      v38 = sub_24AAB3A64();
      v39 = sub_24AAB5144();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v205 = v37;
        v41 = v40;
        v42 = swift_slowAlloc();
        v212[0] = v42;
        *v41 = 136315650;
        *(v41 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v212);
        *(v41 + 12) = 2080;
        *(v41 + 14) = sub_24AA406B4(0x2928657461647075, 0xE800000000000000, v212);
        *(v41 + 22) = 2048;
        *(v41 + 24) = 187;
        _os_log_impl(&dword_24AA0F000, v38, v39, "[%s:%s:%ld] Audio call recording active, updating status view model", v41, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v42, -1, -1);
        MEMORY[0x24C226630](v41, -1, -1);
      }

      v43 = sub_24AA39F60();
      if (v43)
      {
        v44 = v43;
        v217 = sub_24AA442A0(0, &qword_27EF85608, 0x277D6EE08);
        v218 = MEMORY[0x277D07EE8];
        *&v215 = v44;
        sub_24AA15A64(&v215, v212);
      }

      else
      {
        v62 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
        v63 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
        ObjectType = swift_getObjectType();
        v214 = *(v63 + 8);
        v212[0] = v62;
        swift_unknownObjectRetain();
      }

      AudioCallRecordingViewModel.recordingStartedDate.getter(v21);
      static CallStatusViewModel.statusViewModelFoCallRecording(for:statusLabel:duration:isScreenLocked:)(v212, v21, *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_isScreenLocked), v29);

      sub_24AA169C4(v21, &qword_27EF855E8, &unk_24AABCB40);
      __swift_destroy_boxed_opaque_existential_1Tm(v212);
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v191 - 2) = v1;
      *(&v191 - 1) = v29;
      v212[0] = v1;
      sub_24AAB2CE4();

      sub_24AA42D74(v29, type metadata accessor for CallStatusViewModel);
      if (!*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waveformViewModel))
      {
        v205 = 0;
LABEL_137:

        goto LABEL_94;
      }

LABEL_135:
      v190 = swift_getKeyPath();
      MEMORY[0x28223BE20](v190);
      *(&v191 - 2) = v1;
      *(&v191 - 1) = 0;
      v212[0] = v1;
      sub_24AAB2CE4();
      v205 = 0;

      goto LABEL_137;
    }
  }

  v45 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  v46 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
  v47 = swift_getObjectType();
  if ((sub_24AAB3944() & 1) == 0)
  {
    swift_getKeyPath();
    v212[0] = v1;
    sub_24AAB2CF4();

    v56 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
    swift_beginAccess();
    v57 = *(v1 + v56);
    v58 = v203;
    v206 = v35;
    if (v57)
    {
      v192 = v46;
      v59 = v203;
      v202 = v57;
      swift_getKeyPath();
      v212[0] = v202;
      sub_24AA42080(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);

      sub_24AAB2CF4();

      if (*(v202 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__isShowingTranscripts) == 1)
      {
        v60 = sub_24AA39F60();
        if (v60)
        {
          v61 = v60;
          v217 = sub_24AA442A0(0, &qword_27EF85608, 0x277D6EE08);
          v218 = MEMORY[0x277D07EE8];
          *&v215 = v61;
          sub_24AA15A64(&v215, v212);
        }

        else
        {
          ObjectType = v47;
          v214 = *(v192 + 8);
          v212[0] = v45;
          swift_unknownObjectRetain();
        }

        v94 = v197;
        v95 = sub_24AA1FBC4();
        v96 = v95;
        v97 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_isScreenLocked);
        if (v95 == 4 || v95 == 1)
        {
          __swift_project_boxed_opaque_existential_1(v212, ObjectType);
          sub_24AAB3504();
          v98 = v220;
          if (v220)
          {
            v99 = v221;
            v100 = v219;

            if (v99)
            {
              goto LABEL_55;
            }
          }
        }

        v101 = ObjectType;
        v102 = v214;
        v103 = __swift_project_boxed_opaque_existential_1(v212, ObjectType);
        v100 = sub_24AA87578(v103, v96, v97, v101, v102);
        v98 = v104;
LABEL_55:
        v105 = ObjectType;
        v106 = v214;
        v107 = __swift_project_boxed_opaque_existential_1(v212, ObjectType);
        v203 = sub_24AA86BC8(v107, v96, 0, v105, v106);
        v201 = v108;
        if (v96 > 2)
        {
          if ((v96 - 5) >= 2)
          {
            if (v96 == 3)
            {
              __swift_project_boxed_opaque_existential_1(v212, ObjectType);
              *v94 = sub_24AAB34F4();
              *(v94 + 8) = v166;
            }

            else if (v96 == 4)
            {
              sub_24AA16768(v212, v94);
              *(v94 + 40) = 4;
              __swift_project_boxed_opaque_existential_1(v212, ObjectType);
              *(v94 + 48) = sub_24AAB34F4();
              *(v94 + 56) = v109;
              *(v94 + 64) = 0;
            }

            goto LABEL_113;
          }

          __swift_project_boxed_opaque_existential_1(v212, ObjectType);
          sub_24AAB35B4();
          v117 = v217;
          if (v217)
          {
            v118 = v216;
          }

          else
          {
            __swift_project_boxed_opaque_existential_1(v212, ObjectType);
            v167 = sub_24AAB34F4();
            if (v168)
            {
              v118 = v167;
            }

            else
            {
              v118 = 0;
            }

            if (v168)
            {
              v117 = v168;
            }

            else
            {
              v117 = 0xE000000000000000;
            }
          }

          v169 = v194;
          *v194 = v118;
          *(v169 + 8) = v117;
          swift_storeEnumTagMultiPayload();
          sub_24AA44DD4(v169, v94, type metadata accessor for CallSubtitle);
        }

        else
        {
          if (v96 != 1)
          {
LABEL_113:
            swift_storeEnumTagMultiPayload();
            goto LABEL_123;
          }

          v200 = v100;
          v197 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85600, &qword_24AAB72B0) + 48);
          __swift_project_boxed_opaque_existential_1(v212, ObjectType);
          *v94 = sub_24AAB34F4();
          *(v94 + 8) = v119;
          __swift_project_boxed_opaque_existential_1(v212, ObjectType);
          v120 = v193;
          sub_24AAB34E4();
          v121 = sub_24AAB2C54();
          v122 = v94;
          v123 = *(v121 - 8);
          v124 = *(v123 + 48);
          if (v124(v120, 1, v121) == 1)
          {
            sub_24AAB2C34();
            v94 = v122;
            if (v124(v120, 1, v121) != 1)
            {
              sub_24AA169C4(v120, &qword_27EF855E8, &unk_24AABCB40);
            }
          }

          else
          {
            (*(v123 + 32))(v122 + v197, v120, v121);
            v94 = v122;
          }

          swift_storeEnumTagMultiPayload();
          v100 = v200;
        }

LABEL_123:
        sub_24AA44DD4(v94, v199, type metadata accessor for CallSubtitle);
        __swift_project_boxed_opaque_existential_1(v212, ObjectType);
        v170 = sub_24AAB3564();
        if (v170 && (v171 = v170, v172 = [v170 shouldHideContactWithLockState_], v171, v172))
        {
          v173 = MEMORY[0x277D84F90];
        }

        else
        {
          v174 = ObjectType;
          v175 = v214;
          v176 = __swift_project_boxed_opaque_existential_1(v212, ObjectType);
          v173 = sub_24AA86F34(v176, v174, v175);
        }

        __swift_project_boxed_opaque_existential_1(v212, ObjectType);
        v177 = sub_24AAB35A4();
        __swift_project_boxed_opaque_existential_1(v212, ObjectType);
        v178 = sub_24AAB3574();
        if ([v177 isFaceTimeProvider])
        {

          if (v178)
          {
            v179 = 2;
          }

          else
          {
            v179 = 1;
          }
        }

        else
        {
          v180 = [v177 isTelephonyProvider];

          if (v180)
          {
            v179 = 0;
          }

          else
          {
            v179 = 3;
          }
        }

        __swift_project_boxed_opaque_existential_1(v212, ObjectType);
        v181 = sub_24AAB3554();
        v183 = v182;
        v185 = v198;
        v184 = v199;
        *v198 = v100;
        v185[1] = v98;
        v186 = v204;
        v187 = v201;
        v185[2] = v203;
        v185[3] = v187;
        sub_24AA44DD4(v184, v185 + v186[6], type metadata accessor for CallSubtitle);
        *(v185 + v186[7]) = v173;
        *(v185 + v186[8]) = v179;
        v188 = (v185 + v186[9]);
        *v188 = v181;
        v188[1] = v183;
        __swift_destroy_boxed_opaque_existential_1Tm(v212);
        v189 = swift_getKeyPath();
        MEMORY[0x28223BE20](v189);
        *(&v191 - 2) = v1;
        *(&v191 - 1) = v185;
        v212[0] = v1;
        sub_24AAB2CE4();

        sub_24AA42D74(v185, type metadata accessor for CallStatusViewModel);
        if (!*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waveformViewModel))
        {
          v205 = 0;
          goto LABEL_137;
        }

        goto LABEL_135;
      }

      v58 = v59;
      v46 = v192;
    }

    v68 = sub_24AAB3A64();
    v69 = sub_24AAB5144();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v212[0] = v71;
      *v70 = 136315650;
      *(v70 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v212);
      *(v70 + 12) = 2080;
      *(v70 + 14) = sub_24AA406B4(0x2928657461647075, 0xE800000000000000, v212);
      *(v70 + 22) = 2048;
      *(v70 + 24) = 198;
      _os_log_impl(&dword_24AA0F000, v68, v69, "[%s:%s:%ld] Default status update", v70, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v71, -1, -1);
      MEMORY[0x24C226630](v70, -1, -1);
    }

    v72 = sub_24AA39F60();
    if (v72)
    {
      v73 = v72;
      v217 = sub_24AA442A0(0, &qword_27EF85608, 0x277D6EE08);
      v218 = MEMORY[0x277D07EE8];
      *&v215 = v73;
      sub_24AA15A64(&v215, v212);
    }

    else
    {
      ObjectType = v47;
      v214 = *(v46 + 8);
      v212[0] = v45;
      swift_unknownObjectRetain();
    }

    v74 = v201;
    v75 = sub_24AA1FBC4();
    v76 = v75;
    v77 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_isScreenLocked);
    if (v75 == 4 || v75 == 1)
    {
      __swift_project_boxed_opaque_existential_1(v212, ObjectType);
      sub_24AAB3504();
      v78 = v220;
      if (v220)
      {
        v79 = v221;
        v80 = v219;

        if (v79)
        {
          goto LABEL_38;
        }
      }
    }

    v81 = ObjectType;
    v82 = v214;
    v83 = __swift_project_boxed_opaque_existential_1(v212, ObjectType);
    v80 = sub_24AA87578(v83, v76, v77, v81, v82);
    v78 = v84;
LABEL_38:
    v85 = ObjectType;
    v86 = v214;
    v87 = __swift_project_boxed_opaque_existential_1(v212, ObjectType);
    v202 = sub_24AA86BC8(v87, v76, 0, v85, v86);
    v199 = v88;
    if (v76 > 2)
    {
      if ((v76 - 5) < 2)
      {
        v90 = v77;
        __swift_project_boxed_opaque_existential_1(v212, ObjectType);
        sub_24AAB35B4();
        v91 = v217;
        if (v217)
        {
          v92 = v80;
          v93 = v216;
        }

        else
        {
          v92 = v80;
          __swift_project_boxed_opaque_existential_1(v212, ObjectType);
          v74 = v201;
          v125 = sub_24AAB34F4();
          if (v126)
          {
            v93 = v125;
          }

          else
          {
            v93 = 0;
          }

          if (v126)
          {
            v91 = v126;
          }

          else
          {
            v91 = 0xE000000000000000;
          }
        }

        v127 = v196;
        *v196 = v93;
        *(v127 + 8) = v91;
        swift_storeEnumTagMultiPayload();
        sub_24AA44DD4(v127, v74, type metadata accessor for CallSubtitle);
        v80 = v92;
        v77 = v90;
        goto LABEL_82;
      }

      if (v76 == 3)
      {
        __swift_project_boxed_opaque_existential_1(v212, ObjectType);
        *v74 = sub_24AAB34F4();
        *(v74 + 8) = v116;
      }

      else if (v76 == 4)
      {
        sub_24AA16768(v212, v74);
        *(v74 + 40) = 4;
        __swift_project_boxed_opaque_existential_1(v212, ObjectType);
        *(v74 + 48) = sub_24AAB34F4();
        *(v74 + 56) = v89;
        *(v74 + 64) = 0;
      }
    }

    else if (v76 == 1)
    {
      LODWORD(v198) = v77;
      v201 = v80;
      v197 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85600, &qword_24AAB72B0) + 48);
      __swift_project_boxed_opaque_existential_1(v212, ObjectType);
      *v74 = sub_24AAB34F4();
      *(v74 + 8) = v110;
      __swift_project_boxed_opaque_existential_1(v212, ObjectType);
      v111 = v195;
      sub_24AAB34E4();
      v112 = sub_24AAB2C54();
      v113 = v74;
      v114 = *(v112 - 8);
      v115 = *(v114 + 48);
      if (v115(v111, 1, v112) == 1)
      {
        sub_24AAB2C34();
        v74 = v113;
        if (v115(v111, 1, v112) != 1)
        {
          sub_24AA169C4(v111, &qword_27EF855E8, &unk_24AABCB40);
        }
      }

      else
      {
        (*(v114 + 32))(v113 + v197, v111, v112);
        v74 = v113;
      }

      swift_storeEnumTagMultiPayload();
      v80 = v201;
      v77 = v198;
      goto LABEL_82;
    }

    swift_storeEnumTagMultiPayload();
LABEL_82:
    sub_24AA44DD4(v74, v58, type metadata accessor for CallSubtitle);
    __swift_project_boxed_opaque_existential_1(v212, ObjectType);
    v128 = sub_24AAB3564();
    if (v128 && (v129 = v128, v130 = [v128 shouldHideContactWithLockState_], v129, v130))
    {
      v131 = MEMORY[0x277D84F90];
    }

    else
    {
      v132 = ObjectType;
      v133 = v214;
      v134 = __swift_project_boxed_opaque_existential_1(v212, ObjectType);
      v131 = sub_24AA86F34(v134, v132, v133);
    }

    __swift_project_boxed_opaque_existential_1(v212, ObjectType);
    v135 = sub_24AAB35A4();
    __swift_project_boxed_opaque_existential_1(v212, ObjectType);
    v136 = sub_24AAB3574();
    if ([v135 isFaceTimeProvider])
    {

      if (v136)
      {
        v137 = 2;
      }

      else
      {
        v137 = 1;
      }
    }

    else
    {
      v138 = [v135 isTelephonyProvider];

      if (v138)
      {
        v137 = 0;
      }

      else
      {
        v137 = 3;
      }
    }

    __swift_project_boxed_opaque_existential_1(v212, ObjectType);
    v139 = sub_24AAB3554();
    v141 = v140;
    v142 = v200;
    *v200 = v80;
    v142[1] = v78;
    v143 = v199;
    v142[2] = v202;
    v142[3] = v143;
    v144 = v204;
    sub_24AA44DD4(v58, v142 + *(v204 + 24), type metadata accessor for CallSubtitle);
    *(v142 + v144[7]) = v131;
    *(v142 + v144[8]) = v137;
    v145 = (v142 + v144[9]);
    *v145 = v139;
    v145[1] = v141;
    __swift_destroy_boxed_opaque_existential_1Tm(v212);
    v146 = swift_getKeyPath();
    MEMORY[0x28223BE20](v146);
    *(&v191 - 2) = v1;
    *(&v191 - 1) = v142;
    v212[0] = v1;
    sub_24AAB2CE4();
    v205 = 0;

    v147 = sub_24AA42D74(v142, type metadata accessor for CallStatusViewModel);
    sub_24AA2F244(v147);
    goto LABEL_94;
  }

  v48 = v35;
  v49 = sub_24AAB3A64();
  v50 = sub_24AAB5144();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v206 = v48;
    v53 = v52;
    v212[0] = v52;
    *v51 = 136315650;
    *(v51 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v212);
    *(v51 + 12) = 2080;
    *(v51 + 14) = sub_24AA406B4(0x2928657461647075, 0xE800000000000000, v212);
    *(v51 + 22) = 2048;
    *(v51 + 24) = 191;
    _os_log_impl(&dword_24AA0F000, v49, v50, "[%s:%s:%ld] Wait on hold active, updating status view model", v51, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v53, -1, -1);
    MEMORY[0x24C226630](v51, -1, -1);
  }

  v54 = sub_24AA39F60();
  if (v54)
  {
    v55 = v54;
    v217 = sub_24AA442A0(0, &qword_27EF85608, 0x277D6EE08);
    v218 = MEMORY[0x277D07EE8];
    *&v215 = v55;
    sub_24AA15A64(&v215, v212);
  }

  else
  {
    ObjectType = v47;
    v214 = *(v46 + 8);
    v212[0] = v45;
    swift_unknownObjectRetain();
  }

  v65 = v202;
  static CallStatusViewModel.statusViewModelForWaitOnHold(for:isScreenLocked:)(v212, *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_isScreenLocked), v202);
  __swift_destroy_boxed_opaque_existential_1Tm(v212);
  v66 = swift_getKeyPath();
  MEMORY[0x28223BE20](v66);
  *(&v191 - 2) = v1;
  *(&v191 - 1) = v65;
  v212[0] = v1;
  sub_24AAB2CE4();

  sub_24AA42D74(v65, type metadata accessor for CallStatusViewModel);
  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waveformViewModel))
  {
    v67 = swift_getKeyPath();
    MEMORY[0x28223BE20](v67);
    *(&v191 - 2) = v1;
    *(&v191 - 1) = 0;
    v212[0] = v1;
    sub_24AAB2CE4();
    v205 = 0;
  }

  else
  {
    v205 = 0;
  }

LABEL_94:
  v148 = sub_24AAB3A64();
  v149 = sub_24AAB5144();
  if (os_log_type_enabled(v148, v149))
  {
    v150 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v212[0] = v151;
    *v150 = 136315650;
    *(v150 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v212);
    *(v150 + 12) = 2080;
    *(v150 + 14) = sub_24AA406B4(0x2928657461647075, 0xE800000000000000, v212);
    *(v150 + 22) = 2048;
    *(v150 + 24) = 203;
    _os_log_impl(&dword_24AA0F000, v148, v149, "[%s:%s:%ld] Updating view models", v150, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v151, -1, -1);
    MEMORY[0x24C226630](v150, -1, -1);
  }

  swift_getKeyPath();
  v212[0] = v1;
  sub_24AAB2CF4();

  v152 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
  swift_beginAccess();
  if (*(v1 + v152))
  {

    CallScreeningViewModel.update(_:)(0);
  }

  swift_getKeyPath();
  v212[0] = v1;
  sub_24AAB2CF4();

  if (*(v1 + v207))
  {

    sub_24AA50268();
    sub_24AA4AD50();
  }

  sub_24AA27488();
  v153 = sub_24AAB3A64();
  v154 = sub_24AAB5144();
  if (os_log_type_enabled(v153, v154))
  {
    v155 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    v212[0] = v156;
    *v155 = 136315650;
    *(v155 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v212);
    *(v155 + 12) = 2080;
    *(v155 + 14) = sub_24AA406B4(0x2928657461647075, 0xE800000000000000, v212);
    *(v155 + 22) = 2048;
    *(v155 + 24) = 208;
    _os_log_impl(&dword_24AA0F000, v153, v154, "[%s:%s:%ld] Updating controls", v155, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v156, -1, -1);
    MEMORY[0x24C226630](v155, -1, -1);
  }

  sub_24AA29C9C(v212);
  sub_24AA20C48(v212);
  sub_24AA2A2D4(v212);
  sub_24AA1D19C(v212);
  v157 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  swift_getObjectType();
  v211[0] = v157;
  result = sub_24AAB35B4();
  if (ObjectType)
  {
    sub_24AA169C4(v212, &qword_27EF855F8, &qword_24AAB72A8);
    v159 = sub_24AAB3A64();
    v160 = sub_24AAB5144();
    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v211[0] = v162;
      *v161 = 136315650;
      *(v161 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, v211);
      *(v161 + 12) = 2080;
      *(v161 + 14) = sub_24AA406B4(0x2928657461647075, 0xE800000000000000, v211);
      *(v161 + 22) = 2048;
      *(v161 + 24) = 213;
      _os_log_impl(&dword_24AA0F000, v159, v160, "[%s:%s:%ld] Post call alert present, hiding keypad and RTT", v161, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v162, -1, -1);
      MEMORY[0x24C226630](v161, -1, -1);
    }

    if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingKeypad))
    {
      v163 = swift_getKeyPath();
      MEMORY[0x28223BE20](v163);
      *(&v191 - 2) = v1;
      *(&v191 - 8) = 0;
      v211[0] = v1;
      sub_24AAB2CE4();
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingKeypad) = 0;
      sub_24AA1DC18(0);
    }

    v164 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingRTT;
    result = swift_beginAccess();
    if (*(v1 + v164))
    {
      v165 = swift_getKeyPath();
      MEMORY[0x28223BE20](v165);
      *(&v191 - 2) = v1;
      *(&v191 - 8) = 0;
      v210 = v1;
      sub_24AAB2CE4();
    }

    else
    {
      *(v1 + v164) = 0;
    }
  }

  return result;
}

void sub_24AA23BC0()
{
  v1 = v0;
  v2 = sub_24AAB2E44();
  v181 = *(v2 - 8);
  v182 = v2;
  MEMORY[0x28223BE20](v2);
  v183 = &v178 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v178 - v5;
  v184 = type metadata accessor for CallSubtitle(0);
  v7 = MEMORY[0x28223BE20](v184);
  v180 = (&v178 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v178 - v10;
  MEMORY[0x28223BE20](v9);
  v191 = &v178 - v12;
  v188 = type metadata accessor for CallStatusViewModel(0);
  MEMORY[0x28223BE20](v188);
  v189 = (&v178 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_featureFlags);
  v15 = [v14 LVMEverywhere];
  v16 = &qword_27EF85000;
  v17 = sub_24AAB3A64();
  v18 = sub_24AAB5144();
  v19 = os_log_type_enabled(v17, v18);
  v20 = &qword_27EF85000;
  v187 = v11;
  v179 = v6;
  if (v15)
  {
    if (v19)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v219 = v22;
      *v21 = 136315650;
      *(v21 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v219);
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1DB0, &v219);
      *(v21 + 22) = 2048;
      *(v21 + 24) = 222;
      _os_log_impl(&dword_24AA0F000, v17, v18, "[%s:%s:%ld] LVM everywhere enabled, creating CallScreeningViewModel", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v22, -1, -1);
      MEMORY[0x24C226630](v21, -1, -1);
    }

    v23 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
    v24 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
    sub_24AA16768(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter, &v219);
    sub_24AA16768(&v219, &v216);
    v25 = qword_27EF84C60;
    swift_unknownObjectRetain();
    if (v25 != -1)
    {
      swift_once();
    }

    v26 = qword_27EF87140;
    type metadata accessor for CallScreeningViewModel(0);
    swift_allocObject();
    swift_unknownObjectRetain();
    sub_24AAA7274(v23, v24, &v216, v26);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(&v219);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v219 = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  else
  {
    if (v19)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v219 = v29;
      *v28 = 136315650;
      *(v28 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v219);
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1DB0, &v219);
      *(v28 + 22) = 2048;
      *(v28 + 24) = 228;
      _os_log_impl(&dword_24AA0F000, v17, v18, "[%s:%s:%ld] LVM everywhere disabled", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v29, -1, -1);
      MEMORY[0x24C226630](v28, -1, -1);
    }

    v30 = swift_getKeyPath();
    MEMORY[0x28223BE20](v30);
    *&v219 = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  v31 = [v14 audioCallTranslationEnabled];
  v32 = sub_24AAB3A64();
  v33 = sub_24AAB5144();
  v34 = os_log_type_enabled(v32, v33);
  if (v31)
  {
    if (v34)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v219 = v36;
      *v35 = 136315650;
      *(v35 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v219);
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1DB0, &v219);
      *(v35 + 22) = 2048;
      *(v35 + 24) = 234;
      _os_log_impl(&dword_24AA0F000, v32, v33, "[%s:%s:%ld] Audio call translation enabled, creating CallTranslationViewModel", v35, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v36, -1, -1);
      MEMORY[0x24C226630](v35, -1, -1);
    }

    v37 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
    type metadata accessor for CallTranslationViewModel(0);
    swift_allocObject();
    v38 = swift_unknownObjectRetain();
    v194 = v37;
    CallTranslationViewModel.init(call:)(v38, v37);
    v39 = swift_getKeyPath();
    MEMORY[0x28223BE20](v39);
    v40 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___observationRegistrar;
    *&v219 = v1;
    v41 = sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    v193 = v40;
    v190 = v41;
    sub_24AAB2CE4();
    v192 = 0;

    sub_24AAB2E94();
    v42 = sub_24AAB2E84();
    v43 = sub_24AAB2E74();

    if (v43)
    {
      v44 = sub_24AAB3A64();
      v45 = sub_24AAB5144();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *&v219 = v47;
        *v46 = 136315650;
        *(v46 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v219);
        *(v46 + 12) = 2080;
        *(v46 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1DB0, &v219);
        *(v46 + 22) = 2048;
        *(v46 + 24) = 238;
        _os_log_impl(&dword_24AA0F000, v44, v45, "[%s:%s:%ld] More menu enabled, registering live translation", v46, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v47, -1, -1);
        MEMORY[0x24C226630](v46, -1, -1);
      }

      sub_24AAB3184();
      v48 = sub_24AAB3154();
      swift_getObjectType();
      sub_24AAB39A4();
      v221 = 0;
      v219 = 0u;
      v220 = 0u;
      v218 = 0;
      v216 = 0u;
      v217 = 0u;
      v215 = 0;
      v213 = 0u;
      v214 = 0u;
      v212 = 0;
      v210 = 0u;
      v211 = 0u;
      v209 = 0;
      v207 = 0u;
      v208 = 0u;
      swift_getKeyPath();
      *&v204 = v1;
      sub_24AAB2CF4();

      v49 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callTranslationViewModel;
      swift_beginAccess();
      v50 = *(v1 + v49);
      if (v50)
      {
        swift_getKeyPath();
        *&v204 = v50;
        sub_24AA42080(&qword_27EF85520, type metadata accessor for CallTranslationViewModel, &protocol conformance descriptor for CallTranslationViewModel);

        sub_24AAB2CF4();

        v51 = *(v50 + 40);

        v50 = sub_24AAB3024();
        v52 = sub_24AA42080(&qword_27EF856C0, MEMORY[0x277CFBA38], MEMORY[0x277CFBA30]);
      }

      else
      {
        v51 = 0;
        v52 = 0;
        *(&v204 + 1) = 0;
        *&v205 = 0;
      }

      v16 = &qword_27EF85000;
      v20 = &qword_27EF85000;
      *&v204 = v51;
      *(&v205 + 1) = v50;
      v206 = v52;
      v203 = 0;
      v202 = 0u;
      v201 = 0u;
      v200 = 0;
      v198 = 0u;
      v199 = 0u;
      v197 = 0;
      v195 = 0u;
      v196 = 0u;
      sub_24AAB3164();

      sub_24AA169C4(&v195, &qword_27EF856B8, &qword_24AAB75B0);
      sub_24AA169C4(&v198, &qword_27EF856B8, &qword_24AAB75B0);
      sub_24AA169C4(&v201, &qword_27EF856B8, &qword_24AAB75B0);
      sub_24AA169C4(&v207, &qword_27EF856B8, &qword_24AAB75B0);
      sub_24AA169C4(&v210, &qword_27EF856B8, &qword_24AAB75B0);
      sub_24AA169C4(&v213, &qword_27EF856B8, &qword_24AAB75B0);
      sub_24AA169C4(&v216, &qword_27EF856B8, &qword_24AAB75B0);
      sub_24AA169C4(&v219, &qword_27EF856B8, &qword_24AAB75B0);
      sub_24AA169C4(&v204, &qword_27EF856B8, &qword_24AAB75B0);
    }

    else
    {
      v16 = &qword_27EF85000;
      v20 = &qword_27EF85000;
    }
  }

  else
  {
    if (v34)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v219 = v54;
      *v53 = 136315650;
      *(v53 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v219);
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1DB0, &v219);
      *(v53 + 22) = 2048;
      *(v53 + 24) = 244;
      _os_log_impl(&dword_24AA0F000, v32, v33, "[%s:%s:%ld] Audio call translation disabled", v53, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v54, -1, -1);
      MEMORY[0x24C226630](v53, -1, -1);
    }

    v55 = swift_getKeyPath();
    MEMORY[0x28223BE20](v55);
    *&v219 = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CE4();
    v192 = 0;
  }

  swift_getKeyPath();
  v56 = v20[154];
  *&v219 = v1;
  v193 = sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  v194 = v56;
  sub_24AAB2CF4();

  v57 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callTranslationViewModel;
  swift_beginAccess();
  v58 = *(v1 + v57);
  if (v58)
  {
    swift_allocObject();
    swift_weakInit();
    v59 = swift_getKeyPath();
    v190 = &v178;
    MEMORY[0x28223BE20](v59);
    *&v219 = v58;
    sub_24AA42080(&qword_27EF85520, type metadata accessor for CallTranslationViewModel, &protocol conformance descriptor for CallTranslationViewModel);

    v60 = v192;
    sub_24AAB2CE4();
    v192 = v60;
  }

  swift_getKeyPath();
  *&v219 = v1;
  sub_24AAB2CF4();

  if (*(v1 + v57))
  {

    CallTranslationViewModel.start()();
  }

  v61 = v16[166];
  v62 = sub_24AAB3A64();
  v63 = sub_24AAB5144();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *&v219 = v65;
    *v64 = 136315650;
    *(v64 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v219);
    *(v64 + 12) = 2080;
    *(v64 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1DB0, &v219);
    *(v64 + 22) = 2048;
    *(v64 + 24) = 253;
    _os_log_impl(&dword_24AA0F000, v62, v63, "[%s:%s:%ld] Beginning smart holding session observation", v64, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v65, -1, -1);
    MEMORY[0x24C226630](v64, -1, -1);
  }

  sub_24AA263D8();
  v66 = sub_24AAB3A64();
  v67 = sub_24AAB5144();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *&v219 = v69;
    *v68 = 136315650;
    *(v68 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v219);
    *(v68 + 12) = 2080;
    *(v68 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1DB0, &v219);
    *(v68 + 22) = 2048;
    *(v68 + 24) = 257;
    _os_log_impl(&dword_24AA0F000, v66, v67, "[%s:%s:%ld] Creating status view model and audio call recording view model", v68, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v69, -1, -1);
    MEMORY[0x24C226630](v68, -1, -1);
  }

  v70 = sub_24AA39F60();
  if (v70)
  {
    v71 = v70;
    v72 = sub_24AA442A0(0, &qword_27EF85608, 0x277D6EE08);
    v218 = MEMORY[0x277D07EE8];
    *(&v217 + 1) = v72;
    *&v216 = v71;
    sub_24AA15A64(&v216, &v219);
  }

  else
  {
    v73 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
    v74 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
    *(&v220 + 1) = swift_getObjectType();
    v221 = *(v74 + 8);
    *&v219 = v73;
    swift_unknownObjectRetain();
  }

  v75 = sub_24AA1FBC4();
  v76 = v75;
  v77 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_isScreenLocked);
  if (v75 == 4 || v75 == 1)
  {
    __swift_project_boxed_opaque_existential_1(&v219, *(&v220 + 1));
    sub_24AAB3504();
    v78 = v223;
    if (v223)
    {
      v79 = v224;
      v80 = v222;

      if (v79)
      {
        goto LABEL_41;
      }
    }
  }

  v81 = *(&v220 + 1);
  v82 = v221;
  v83 = __swift_project_boxed_opaque_existential_1(&v219, *(&v220 + 1));
  v80 = sub_24AA87578(v83, v76, v77, v81, v82);
  v78 = v84;
LABEL_41:
  v85 = *(&v220 + 1);
  v86 = v221;
  v87 = __swift_project_boxed_opaque_existential_1(&v219, *(&v220 + 1));
  v88 = sub_24AA86BC8(v87, v76, 0, v85, v86);
  v190 = v61;
  v185 = v89;
  v186 = v88;
  if (v76 > 2)
  {
    v90 = v187;
    if ((v76 - 5) >= 2)
    {
      if (v76 == 3)
      {
        __swift_project_boxed_opaque_existential_1(&v219, *(&v220 + 1));
        *v90 = sub_24AAB34F4();
        *(v90 + 8) = v99;
      }

      else if (v76 == 4)
      {
        sub_24AA16768(&v219, v187);
        *(v90 + 40) = 4;
        __swift_project_boxed_opaque_existential_1(&v219, *(&v220 + 1));
        *(v90 + 48) = sub_24AAB34F4();
        *(v90 + 56) = v91;
        *(v90 + 64) = 0;
      }

      goto LABEL_55;
    }

    __swift_project_boxed_opaque_existential_1(&v219, *(&v220 + 1));
    sub_24AAB35B4();
    v92 = v226;
    if (v226)
    {
      v93 = v225;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(&v219, *(&v220 + 1));
      v100 = sub_24AAB34F4();
      if (v101)
      {
        v93 = v100;
      }

      else
      {
        v93 = 0;
      }

      if (v101)
      {
        v92 = v101;
      }

      else
      {
        v92 = 0xE000000000000000;
      }
    }

    v102 = v180;
    *v180 = v93;
    *(v102 + 8) = v92;
    swift_storeEnumTagMultiPayload();
    sub_24AA44DD4(v102, v90, type metadata accessor for CallSubtitle);
  }

  else
  {
    v90 = v187;
    if (v76 != 1)
    {
LABEL_55:
      swift_storeEnumTagMultiPayload();
      goto LABEL_65;
    }

    v180 = v80;
    v178 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85600, &qword_24AAB72B0) + 48);
    __swift_project_boxed_opaque_existential_1(&v219, *(&v220 + 1));
    *v90 = sub_24AAB34F4();
    *(v90 + 8) = v94;
    __swift_project_boxed_opaque_existential_1(&v219, *(&v220 + 1));
    v95 = v179;
    sub_24AAB34E4();
    v96 = sub_24AAB2C54();
    v97 = *(v96 - 8);
    v98 = *(v97 + 48);
    if (v98(v95, 1, v96) == 1)
    {
      sub_24AAB2C34();
      if (v98(v95, 1, v96) != 1)
      {
        sub_24AA169C4(v95, &qword_27EF855E8, &unk_24AABCB40);
      }
    }

    else
    {
      (*(v97 + 32))(v90 + v178, v95, v96);
    }

    swift_storeEnumTagMultiPayload();
    v80 = v180;
  }

LABEL_65:
  sub_24AA44DD4(v90, v191, type metadata accessor for CallSubtitle);
  __swift_project_boxed_opaque_existential_1(&v219, *(&v220 + 1));
  v103 = sub_24AAB3564();
  if (v103 && (v104 = v103, v105 = [v103 shouldHideContactWithLockState_], v104, v105))
  {
    v106 = MEMORY[0x277D84F90];
  }

  else
  {
    v107 = *(&v220 + 1);
    v108 = v221;
    v109 = __swift_project_boxed_opaque_existential_1(&v219, *(&v220 + 1));
    v106 = sub_24AA86F34(v109, v107, v108);
  }

  __swift_project_boxed_opaque_existential_1(&v219, *(&v220 + 1));
  v110 = sub_24AAB35A4();
  __swift_project_boxed_opaque_existential_1(&v219, *(&v220 + 1));
  v111 = sub_24AAB3574();
  if ([v110 isFaceTimeProvider])
  {

    if (v111)
    {
      v112 = 2;
    }

    else
    {
      v112 = 1;
    }
  }

  else
  {
    v113 = [v110 isTelephonyProvider];

    if (v113)
    {
      v112 = 0;
    }

    else
    {
      v112 = 3;
    }
  }

  __swift_project_boxed_opaque_existential_1(&v219, *(&v220 + 1));
  v114 = sub_24AAB3554();
  v116 = v115;
  v117 = v189;
  *v189 = v80;
  v117[1] = v78;
  v118 = v185;
  v117[2] = v186;
  v117[3] = v118;
  v119 = v188;
  sub_24AA44DD4(v191, v117 + *(v188 + 24), type metadata accessor for CallSubtitle);
  *(v117 + v119[7]) = v106;
  *(v117 + v119[8]) = v112;
  v120 = (v117 + v119[9]);
  *v120 = v114;
  v120[1] = v116;
  __swift_destroy_boxed_opaque_existential_1Tm(&v219);
  v121 = swift_getKeyPath();
  MEMORY[0x28223BE20](v121);
  *&v219 = v1;
  v122 = v192;
  sub_24AAB2CE4();

  sub_24AA42D74(v117, type metadata accessor for CallStatusViewModel);
  v123 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  v124 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
  ObjectType = swift_getObjectType();
  v126 = sub_24AAB39A4();
  v128 = v127;
  v129 = sub_24AAB3994();
  v191 = v123;
  v188 = ObjectType;
  v189 = v124;
  v130 = sub_24AAB3934();
  v131 = v130;
  if (v130)
  {
    v132 = [v130 recordingState];

    v133 = v132;
  }

  else
  {
    v133 = 0;
  }

  type metadata accessor for AudioCallRecordingViewModel(0);
  swift_allocObject();
  LOBYTE(v219) = v131 == 0;
  AudioCallRecordingViewModel.init(callUUID:_:recordingState:)(v126, v128, v129, v133 | ((v131 == 0) << 32));
  v134 = swift_getKeyPath();
  MEMORY[0x28223BE20](v134);
  *&v219 = v1;
  sub_24AAB2CE4();
  v192 = v122;

  swift_getKeyPath();
  *&v219 = v1;
  sub_24AAB2CF4();

  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__audioCallRecordingViewModel))
  {

    sub_24AA50268();
    sub_24AA4AD50();
  }

  swift_getKeyPath();
  *&v219 = v1;
  sub_24AAB2CF4();

  v135 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
  swift_beginAccess();
  if (*(v1 + v135))
  {

    CallScreeningViewModel.update(_:)(1);
  }

  swift_getKeyPath();
  *&v219 = v1;
  sub_24AAB2CF4();

  v136 = *(v1 + v135);
  if (v136)
  {
    swift_allocObject();
    swift_weakInit();
    v137 = swift_getKeyPath();
    MEMORY[0x28223BE20](v137);
    *&v219 = v136;
    sub_24AA42080(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);

    v138 = v192;
    sub_24AAB2CE4();
    v192 = v138;
  }

  swift_getKeyPath();
  *&v219 = v1;
  sub_24AAB2CF4();

  v139 = *(v1 + v135);
  if (v139)
  {
    swift_allocObject();
    swift_weakInit();
    v140 = swift_getKeyPath();
    MEMORY[0x28223BE20](v140);
    *&v219 = v139;
    sub_24AA42080(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);

    v141 = v192;
    sub_24AAB2CE4();
    v192 = v141;
  }

  swift_getKeyPath();
  *&v219 = v1;
  sub_24AAB2CF4();

  v142 = *(v1 + v135);
  if (v142)
  {
    swift_allocObject();
    swift_weakInit();
    v143 = swift_getKeyPath();
    MEMORY[0x28223BE20](v143);
    *&v219 = v142;
    sub_24AA42080(&qword_27EF85610, type metadata accessor for CallScreeningViewModel, &protocol conformance descriptor for CallScreeningViewModel);

    v144 = v192;
    sub_24AAB2CE4();
    v192 = v144;
  }

  sub_24AAB2E94();
  v145 = sub_24AAB2E84();
  v146 = sub_24AAB2E74();

  if (v146)
  {
    objc_opt_self();
    v147 = swift_dynamicCastObjCClass();
    if (v147)
    {
      v187 = v147;
      swift_unknownObjectRetain();
      v148 = sub_24AA20958();
      if (v148)
      {
        v149 = v148;
        v150 = sub_24AAB3A64();
        v151 = sub_24AAB5144();
        if (os_log_type_enabled(v150, v151))
        {
          v152 = swift_slowAlloc();
          v153 = swift_slowAlloc();
          *&v219 = v153;
          *v152 = 136315650;
          *(v152 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v219);
          *(v152 + 12) = 2080;
          *(v152 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1DB0, &v219);
          *(v152 + 22) = 2048;
          *(v152 + 24) = 277;
          _os_log_impl(&dword_24AA0F000, v150, v151, "[%s:%s:%ld] More menu enabled, registering screen share", v152, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C226630](v153, -1, -1);
          MEMORY[0x24C226630](v152, -1, -1);
        }

        (*(v181 + 104))(v183, *MEMORY[0x277CFCA10], v182);
        v154 = objc_opt_self();
        swift_unknownObjectRetain();
        v191 = v149;
        v155 = [v154 sharedInstance];
        v156 = sub_24AAB2E64();
        swift_allocObject();
        v157 = sub_24AAB2E54();
        sub_24AAB3184();
        v158 = sub_24AAB3154();
        sub_24AAB39A4();
        v221 = 0;
        v219 = 0u;
        v220 = 0u;
        v218 = 0;
        v216 = 0u;
        v217 = 0u;
        v215 = 0;
        v213 = 0u;
        v214 = 0u;
        v212 = 0;
        v210 = 0u;
        v211 = 0u;
        v209 = 0;
        v207 = 0u;
        v208 = 0u;
        v206 = 0;
        v204 = 0u;
        v205 = 0u;
        *(&v202 + 1) = v156;
        v203 = sub_24AA42080(&qword_27EF856B0, MEMORY[0x277CFCA20], MEMORY[0x277CFCA18]);
        *&v201 = v157;
        v200 = 0;
        v198 = 0u;
        v199 = 0u;
        v197 = 0;
        v195 = 0u;
        v196 = 0u;

        sub_24AAB3164();
        swift_unknownObjectRelease();

        sub_24AA169C4(&v195, &qword_27EF856B8, &qword_24AAB75B0);
        sub_24AA169C4(&v198, &qword_27EF856B8, &qword_24AAB75B0);
        sub_24AA169C4(&v204, &qword_27EF856B8, &qword_24AAB75B0);
        sub_24AA169C4(&v207, &qword_27EF856B8, &qword_24AAB75B0);
        sub_24AA169C4(&v210, &qword_27EF856B8, &qword_24AAB75B0);
        sub_24AA169C4(&v213, &qword_27EF856B8, &qword_24AAB75B0);
        sub_24AA169C4(&v216, &qword_27EF856B8, &qword_24AAB75B0);
        sub_24AA169C4(&v219, &qword_27EF856B8, &qword_24AAB75B0);
        sub_24AA169C4(&v201, &qword_27EF856B8, &qword_24AAB75B0);
        goto LABEL_99;
      }

      swift_unknownObjectRelease();
    }

    v159 = sub_24AAB3A64();
    v160 = sub_24AAB5144();
    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      *&v219 = v162;
      *v161 = 136315650;
      *(v161 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v219);
      *(v161 + 12) = 2080;
      *(v161 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1DB0, &v219);
      *(v161 + 22) = 2048;
      *(v161 + 24) = 281;
      _os_log_impl(&dword_24AA0F000, v159, v160, "[%s:%s:%ld] Unable to register screen share", v161, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v162, -1, -1);
      MEMORY[0x24C226630](v161, -1, -1);
    }
  }

LABEL_99:
  v163 = sub_24AAB2E84();
  v164 = sub_24AAB2E74();

  v165 = sub_24AAB3A64();
  v166 = sub_24AAB5144();
  v167 = os_log_type_enabled(v165, v166);
  if (v164)
  {
    if (v167)
    {
      v168 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      *&v219 = v169;
      *v168 = 136315650;
      *(v168 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v219);
      *(v168 + 12) = 2080;
      *(v168 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1DB0, &v219);
      *(v168 + 22) = 2048;
      *(v168 + 24) = 287;
      _os_log_impl(&dword_24AA0F000, v165, v166, "[%s:%s:%ld] More Menu enabled, creating MoreMenuViewModel", v168, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v169, -1, -1);
      MEMORY[0x24C226630](v168, -1, -1);
    }

    sub_24AA27488();
  }

  else
  {
    if (v167)
    {
      v170 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      *&v219 = v171;
      *v170 = 136315650;
      *(v170 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v219);
      *(v170 + 12) = 2080;
      *(v170 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1DB0, &v219);
      *(v170 + 22) = 2048;
      *(v170 + 24) = 290;
      _os_log_impl(&dword_24AA0F000, v165, v166, "[%s:%s:%ld] More Menu not enabled", v170, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v171, -1, -1);
      MEMORY[0x24C226630](v170, -1, -1);
    }

    v172 = swift_getKeyPath();
    MEMORY[0x28223BE20](v172);
    *&v219 = v1;
    sub_24AAB2CE4();
  }

  v173 = sub_24AAB3A64();
  v174 = sub_24AAB5144();
  if (os_log_type_enabled(v173, v174))
  {
    v175 = swift_slowAlloc();
    v176 = swift_slowAlloc();
    *&v219 = v176;
    *v175 = 136315650;
    *(v175 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v219);
    *(v175 + 12) = 2080;
    *(v175 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1DB0, &v219);
    *(v175 + 22) = 2048;
    *(v175 + 24) = 294;
    _os_log_impl(&dword_24AA0F000, v173, v174, "[%s:%s:%ld] Making waveform if needed", v175, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v176, -1, -1);
    MEMORY[0x24C226630](v175, -1, -1);
  }

  sub_24AA2F244(v177);
}

void sub_24AA263D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  MEMORY[0x28223BE20](v2 - 8);
  v82 = &v71 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF856C8, &qword_24AAB75E0);
  MEMORY[0x28223BE20](v4 - 8);
  v81 = &v71 - v5;
  v6 = sub_24AAB51C4();
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF856D0, &qword_24AAB75E8);
  v74 = *(v9 - 8);
  v75 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v71 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF856D8, &qword_24AAB75F0);
  v76 = *(v12 - 8);
  v77 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v71 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF856E0, &qword_24AAB75F8);
  v79 = *(v15 - 8);
  v80 = v15;
  MEMORY[0x28223BE20](v15);
  v78 = &v71 - v16;
  v83 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;
  v17 = sub_24AAB3A64();
  v18 = sub_24AAB5144();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v85 = v20;
    *v19 = 136315650;
    *(v19 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v85);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, &v85);
    *(v19 + 22) = 2048;
    *(v19 + 24) = 910;
    _os_log_impl(&dword_24AA0F000, v17, v18, "[%s:%s:%ld] Beginning smart holding session observation", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v20, -1, -1);
    MEMORY[0x24C226630](v19, -1, -1);
  }

  v21 = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  v22 = [v21 waitOnHoldEnabled];

  v84 = sub_24AAB3A64();
  v23 = sub_24AAB5144();
  v24 = os_log_type_enabled(v84, v23);
  if (v22)
  {
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v85 = v26;
      *v25 = 136315650;
      *(v25 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v85);
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, &v85);
      *(v25 + 22) = 2048;
      *(v25 + 24) = 917;
      _os_log_impl(&dword_24AA0F000, v84, v23, "[%s:%s:%ld] Creating wait on hold controller and service", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v26, -1, -1);
      MEMORY[0x24C226630](v25, -1, -1);
    }

    sub_24AAB2ED4();
    v27 = sub_24AAB2EC4();
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v71 - 2) = v1;
    *(&v71 - 1) = v27;
    v29 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___observationRegistrar;
    v85 = v1;
    v30 = sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    v84 = v29;
    v71 = v30;
    sub_24AAB2CE4();

    v31 = [objc_allocWithZone(sub_24AAB2DC4()) init];
    sub_24AA1E5B4(v31);
    sub_24AA3B8FC(v32);
    v33 = sub_24AAB3A64();
    v34 = sub_24AAB5144();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v85 = v36;
      *v35 = 136315650;
      *(v35 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v85);
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, &v85);
      *(v35 + 22) = 2048;
      *(v35 + 24) = 923;
      _os_log_impl(&dword_24AA0F000, v33, v34, "[%s:%s:%ld] Enabling call screening capabilities", v35, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v36, -1, -1);
      MEMORY[0x24C226630](v35, -1, -1);
    }

    v37 = objc_opt_self();
    v38 = [v37 sharedInstance];
    v39 = [v38 callServicesClientCapabilities];

    [v39 setWantsToScreenCalls_];
    v40 = [v37 sharedInstance];
    v41 = [v40 callServicesClientCapabilities];

    [v41 save];
    v42 = [objc_opt_self() defaultCenter];
    sub_24AAB51D4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF856E8, &qword_24AAB7600);
    sub_24AA42080(&qword_27EF856F0, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
    v43 = v73;
    sub_24AAB3BF4();
    (*(v72 + 8))(v8, v43);
    sub_24AA16A68(&qword_27EF856F8, &qword_27EF856D0, &qword_24AAB75E8, MEMORY[0x277CBCC08]);
    sub_24AA42FB4();
    v44 = v75;
    sub_24AAB3C34();
    (*(v74 + 8))(v11, v44);
    sub_24AA442A0(0, &qword_27EF86400, 0x277D85C78);
    v45 = sub_24AAB5184();
    v85 = v45;
    v46 = sub_24AAB5174();
    v47 = v81;
    (*(*(v46 - 8) + 56))(v81, 1, 1, v46);
    sub_24AA16A68(&qword_27EF85718, &qword_27EF856D8, &qword_24AAB75F0, MEMORY[0x277CBCBE0]);
    sub_24AA43064(&qword_27EF85720, &qword_27EF86400, 0x277D85C78, MEMORY[0x277D85228]);
    v48 = v77;
    v49 = v78;
    sub_24AAB3C14();
    sub_24AA169C4(v47, &qword_27EF856C8, &qword_24AAB75E0);

    (*(v76 + 8))(v14, v48);
    swift_allocObject();
    swift_weakInit();
    sub_24AA16A68(&qword_27EF85728, &qword_27EF856E0, &qword_24AAB75F8, MEMORY[0x277CBCD60]);
    v50 = v80;
    v51 = sub_24AAB3C44();

    (*(v79 + 8))(v49, v50);
    *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_smartHoldingCancellable) = v51;

    swift_getKeyPath();
    v85 = v1;
    sub_24AAB2CF4();

    v52 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldService);
    if (v52)
    {
      v53 = v52;
      v54 = sub_24AAB2DB4();

      v85 = v54;
      swift_allocObject();
      swift_weakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85730, &qword_24AAB7630);
      sub_24AA16A68(&qword_27EF85738, &qword_27EF85730, &qword_24AAB7630, MEMORY[0x277CBCE48]);
      v55 = sub_24AAB3C44();
    }

    else
    {
      v55 = 0;
    }

    *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_waitOnHoldStatusMessageCancellable) = v55;

    v59 = sub_24AAB50F4();
    v60 = *(*(v59 - 8) + 56);
    v61 = v82;
    v60(v82, 1, 1, v59);
    sub_24AAB50C4();

    v62 = sub_24AAB50B4();
    v63 = swift_allocObject();
    v64 = MEMORY[0x277D85700];
    v63[2] = v62;
    v63[3] = v64;
    v63[4] = v1;
    sub_24AA330D4(0, 0, v61, &unk_24AAB7640, v63);

    swift_getKeyPath();
    v85 = v1;
    sub_24AAB2CF4();

    v65 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___callHoldingAnalytics);
    v60(v61, 1, 1, v59);
    v66 = swift_allocObject();
    v66[2] = 0;
    v66[3] = 0;
    v66[4] = v65;

    sub_24AA330D4(0, 0, v61, &unk_24AAB7670, v66);

    v67 = sub_24AAB3A64();
    v68 = sub_24AAB5144();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v85 = v70;
      *v69 = 136315650;
      *(v69 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v85);
      *(v69 + 12) = 2080;
      *(v69 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, &v85);
      *(v69 + 22) = 2048;
      *(v69 + 24) = 997;
      _os_log_impl(&dword_24AA0F000, v67, v68, "[%s:%s:%ld] Smart holding session observation setup completed", v69, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v70, -1, -1);
      MEMORY[0x24C226630](v69, -1, -1);
    }
  }

  else if (v24)
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v85 = v57;
    *v56 = 136315650;
    *(v56 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v85);
    *(v56 + 12) = 2080;
    *(v56 + 14) = sub_24AA406B4(0xD000000000000025, 0x800000024AAD1DD0, &v85);
    *(v56 + 22) = 2048;
    *(v56 + 24) = 913;
    _os_log_impl(&dword_24AA0F000, v84, v23, "[%s:%s:%ld] Wait on hold not enabled", v56, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v57, -1, -1);
    MEMORY[0x24C226630](v56, -1, -1);
  }

  else
  {
    v58 = v84;
  }
}

uint64_t sub_24AA273E0(uint64_t a1, __n128 a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_forwardCallAction);
    v4 = *(result + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_forwardCallAction + 8);
    sub_24AA16D2C(v3, v4);

    if (v3)
    {
      v6 = a2;
      v7 = 2;
      v3(&v6);
      return sub_24AA16D74(v3, v4);
    }
  }

  return result;
}

uint64_t sub_24AA27488()
{
  swift_getObjectType();
  sub_24AAB39A4();
  sub_24AAB3124();
  sub_24AAB3114();
  v0 = sub_24AAB3104();

  if (v0)
  {

    sub_24AAB3114();
    sub_24AAB31C4();
    swift_allocObject();
    sub_24AAB31B4();
    sub_24AAB3184();
    v1 = sub_24AAB3154();
    sub_24AAB3174();

    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();

    sub_24AAB4BD4();
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    sub_24AAB2D84();
    swift_allocObject();
    sub_24AAB2D74();

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  else
  {
  }
}

void sub_24AA278E0()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85868, &qword_24AAB7940);
  MEMORY[0x28223BE20](v3 - 8);
  v77 = &v73 - v4;
  v81 = sub_24AAB2BD4();
  v79 = *(v81 - 8);
  v5 = MEMORY[0x28223BE20](v81);
  v74 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v80 = &v73 - v7;
  v78 = sub_24AAB2A54();
  v8 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v83 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24AAB2CB4();
  v75 = *(v10 - 8);
  v76 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_24AAB2A04();
  v13 = *(v87 - 1);
  v14 = MEMORY[0x28223BE20](v87);
  v86 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v85 = &v73 - v16;
  v17 = sub_24AAB4E24();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;
  v21 = sub_24AAB3A64();
  v22 = sub_24AAB5144();
  v23 = os_log_type_enabled(v21, v22);
  v82 = v8;
  v88 = v2;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    aBlock[0] = v1;
    *v24 = 136315650;
    *(v24 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, aBlock);
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_24AA406B4(0xD000000000000012, 0x800000024AAD2030, aBlock);
    *(v24 + 22) = 2048;
    *(v24 + 24) = 1123;
    _os_log_impl(&dword_24AA0F000, v21, v22, "[%s:%s:%ld] Showing people picker", v24, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v1, -1, -1);
    v25 = v24;
    v2 = v88;
    MEMORY[0x24C226630](v25, -1, -1);
  }

  sub_24AA442A0(0, &qword_27EF86400, 0x277D85C78);
  *v20 = sub_24AAB5184();
  (*(v18 + 104))(v20, *MEMORY[0x277D85200], v17);
  v26 = sub_24AAB4E34();
  (*(v18 + 8))(v20, v17);
  v28 = v85;
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    v20 = sub_24AA40458((v27 > 1), v26, 1, v20);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
  swift_getObjectType();
  v29 = sub_24AAB33A4();
  if (!v29)
  {
    v42 = sub_24AAB3A64();
    v43 = sub_24AAB5124();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock[0] = v45;
      *v44 = 136315650;
      *(v44 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, aBlock);
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_24AA406B4(0xD000000000000012, 0x800000024AAD2030, aBlock);
      *(v44 + 22) = 2048;
      *(v44 + 24) = 1127;
      _os_log_impl(&dword_24AA0F000, v42, v43, "[%s:%s:%ld] [Controller] Could not find active conversation to open FaceTime", v44, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v45, -1, -1);
      MEMORY[0x24C226630](v44, -1, -1);
    }

    return;
  }

  v1 = v29;
  v30 = [v29 groupUUID];
  sub_24AAB2C94();

  sub_24AAB2C74();
  (*(v75 + 8))(v12, v76);
  v2 = 0xD000000000000012;
  sub_24AAB29F4();

  v20 = sub_24AA40458(0, 1, 1, MEMORY[0x277D84F90]);
  v12 = v20[2];
  v27 = v20[3];
  v26 = v12 + 1;
  if (v12 >= v27 >> 1)
  {
    goto LABEL_23;
  }

LABEL_6:
  v20[2] = v26;
  v33 = *(v13 + 32);
  v32 = v13 + 32;
  v31 = v33;
  v34 = (*(v32 + 48) + 32) & ~*(v32 + 48);
  v35 = *(v32 + 40);
  v33(v20 + v34 + v35 * v12, v28, v87);
  sub_24AAB29F4();
  v37 = v20[2];
  v36 = v20[3];
  if (v37 >= v36 >> 1)
  {
    v20 = sub_24AA40458((v36 > 1), v37 + 1, 1, v20);
  }

  v38 = v79;
  v20[2] = v37 + 1;
  v31(v20 + v34 + v37 * v35, v86, v87);
  v39 = v83;
  sub_24AAB2A44();
  v40 = [objc_opt_self() faceTimeMultiwayScheme];
  if (v40)
  {
    v41 = v40;
    sub_24AAB4EF4();
  }

  sub_24AAB2A34();
  sub_24AAB2A14();
  v46 = v77;
  sub_24AAB2A24();
  v47 = v81;
  if ((*(v38 + 48))(v46, 1, v81) == 1)
  {
    sub_24AA169C4(v46, &qword_27EF85868, &qword_24AAB7940);
    v48 = sub_24AAB3A64();
    v49 = sub_24AAB5124();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v90[0] = v51;
      *v50 = 136315906;
      *(v50 + 4) = sub_24AA406B4(v2 + 36, 0x800000024AAD1870, v90);
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_24AA406B4(0xD000000000000012, 0x800000024AAD2030, v90);
      *(v50 + 22) = 2048;
      *(v50 + 24) = 1140;
      *(v50 + 32) = 2080;
      swift_beginAccess();
      sub_24AA42080(&qword_27EF85870, MEMORY[0x277CC8958], MEMORY[0x277CC8968]);
      v52 = v78;
      v53 = sub_24AAB5444();
      v55 = v39;
      v56 = sub_24AA406B4(v53, v54, v90);

      *(v50 + 34) = v56;
      _os_log_impl(&dword_24AA0F000, v48, v49, "[%s:%s:%ld] [Controller] Could not construct FaceTime app URL from %s", v50, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v51, -1, -1);
      MEMORY[0x24C226630](v50, -1, -1);

      (*(v82 + 8))(v55, v52);
      return;
    }
  }

  else
  {
    v87 = v1;
    v57 = v80;
    (*(v38 + 32))(v80, v46, v47);
    v58 = v74;
    (*(v38 + 16))(v74, v57, v47);
    v59 = sub_24AAB3A64();
    v60 = sub_24AAB5144();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      aBlock[0] = v62;
      *v61 = 136315906;
      *(v61 + 4) = sub_24AA406B4(v2 + 36, 0x800000024AAD1870, aBlock);
      *(v61 + 12) = 2080;
      *(v61 + 14) = sub_24AA406B4(0xD000000000000012, 0x800000024AAD2030, aBlock);
      *(v61 + 22) = 2048;
      *(v61 + 24) = 1144;
      *(v61 + 32) = 2080;
      sub_24AA42080(&qword_27EF85878, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v63 = sub_24AAB5444();
      v64 = v47;
      v66 = v65;
      v67 = *(v38 + 8);
      v67(v58, v64);
      v68 = sub_24AA406B4(v63, v66, aBlock);

      *(v61 + 34) = v68;
      _os_log_impl(&dword_24AA0F000, v59, v60, "[%s:%s:%ld] [Controller] Opening FaceTime app to add member, using URL %s", v61, 0x2Au);
      swift_arrayDestroy();
      v69 = v62;
      v39 = v83;
      MEMORY[0x24C226630](v69, -1, -1);
      MEMORY[0x24C226630](v61, -1, -1);
    }

    else
    {

      v67 = *(v38 + 8);
      v67(v58, v47);
      v64 = v47;
    }

    v70 = v80;
    v71 = sub_24AAB2BA4();
    aBlock[4] = sub_24AA44D74;
    aBlock[5] = v88;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24AA3F25C;
    aBlock[3] = &block_descriptor_409;
    v72 = _Block_copy(aBlock);

    TUOpenURLAndActivateWithCompletion();
    _Block_release(v72);

    v67(v70, v64);
  }

  (*(v82 + 8))(v39, v78);
}

void sub_24AA28638(uint64_t a1)
{
  v2 = v1;
  v3 = sub_24AAB3A64();
  v4 = sub_24AAB5144();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26 = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v26);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_24AA406B4(0x726168536E65706FLL, 0xEB00000000292865, &v26);
    *(v5 + 22) = 2048;
    *(v5 + 24) = 756;
    _os_log_impl(&dword_24AA0F000, v3, v4, "[%s:%s:%ld] Opening share", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v6, -1, -1);
    MEMORY[0x24C226630](v5, -1, -1);
  }

  v7 = (v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
  v8 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  v9 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
  swift_getObjectType();
  v10 = sub_24AAB33A4();
  if (v10)
  {

    goto LABEL_5;
  }

  if ([*(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_featureFlags) sharePlayInCallsEnabled])
  {
    v26 = v8;
    if (sub_24AAB3534())
    {
LABEL_5:
      __swift_project_boxed_opaque_existential_1(v7, v7[3]);
      sub_24AAB3414();
      v11 = sub_24AAB3A64();
      v12 = sub_24AAB5144();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v26 = v14;
        *v13 = 136315650;
        *(v13 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v26);
        *(v13 + 12) = 2080;
        *(v13 + 14) = sub_24AA406B4(0x726168536E65706FLL, 0xEB00000000292865, &v26);
        *(v13 + 22) = 2048;
        *(v13 + 24) = 765;
        _os_log_impl(&dword_24AA0F000, v11, v12, "[%s:%s:%ld] Share opened successfully", v13, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v14, -1, -1);
        MEMORY[0x24C226630](v13, -1, -1);
      }

      return;
    }
  }

  v15 = sub_24AAB3A64();
  v16 = sub_24AAB5124();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136316163;
    *(v17 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v28);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_24AA406B4(0x726168536E65706FLL, 0xEB00000000292865, &v28);
    *(v17 + 22) = 2048;
    *(v17 + 24) = 760;
    *(v17 + 32) = 2080;
    v26 = sub_24AAB39A4();
    v27 = v19;
    v20 = sub_24AAB4F44();
    v22 = sub_24AA406B4(v20, v21, &v28);

    *(v17 + 34) = v22;
    *(v17 + 42) = 2081;
    v26 = v8;
    v27 = v9;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85638, &qword_24AAB7340);
    v23 = sub_24AAB4F44();
    v25 = sub_24AA406B4(v23, v24, &v28);

    *(v17 + 44) = v25;
    _os_log_impl(&dword_24AA0F000, v15, v16, "[%s:%s:%ld] Could not find conversation for call with identifier %s %{private}s.", v17, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v18, -1, -1);
    MEMORY[0x24C226630](v17, -1, -1);
  }
}

void sub_24AA28B38()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  MEMORY[0x28223BE20](v2 - 8);
  v58 = v51 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF857D8, &qword_24AAB7898);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v51 - v5;
  v7 = sub_24AAB2CB4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v56 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v10;
  MEMORY[0x28223BE20](v9);
  v59 = v51 - v11;
  v12 = sub_24AAB3A64();
  v13 = sub_24AAB5144();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v60 = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v60);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_24AA406B4(0xD000000000000011, 0x800000024AAD1F30, &v60);
    *(v14 + 22) = 2048;
    *(v14 + 24) = 1034;
    _os_log_impl(&dword_24AA0F000, v12, v13, "[%s:%s:%ld] Starting wait on hold", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v15, -1, -1);
    MEMORY[0x24C226630](v14, -1, -1);
  }

  v16 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    goto LABEL_6;
  }

  v18 = v17;
  swift_unknownObjectRetain();
  v19 = [v18 callUUID];
  sub_24AAB4EF4();

  sub_24AAB2C64();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    swift_unknownObjectRelease();
    sub_24AA169C4(v6, &qword_27EF857D8, &qword_24AAB7898);
LABEL_6:
    v20 = sub_24AAB3A64();
    v21 = sub_24AAB5144();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v60 = v23;
      *v22 = 136315650;
      *(v22 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v60);
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_24AA406B4(0xD000000000000011, 0x800000024AAD1F30, &v60);
      *(v22 + 22) = 2048;
      *(v22 + 24) = 1037;
      _os_log_impl(&dword_24AA0F000, v20, v21, "[%s:%s:%ld] Cannot start wait on hold - invalid call or UUID", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v23, -1, -1);
      MEMORY[0x24C226630](v22, -1, -1);
    }

    return;
  }

  v52 = *(v8 + 32);
  v53 = v8 + 32;
  v52(v59, v6, v7);
  swift_getKeyPath();
  v24 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___observationRegistrar;
  v60 = v1;
  v55 = sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__isHoldDetected) == 1)
  {
    v25 = sub_24AAB3A64();
    v26 = sub_24AAB5144();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v51[1] = v24;
      v28 = v27;
      v29 = swift_slowAlloc();
      v60 = v29;
      *v28 = 136315650;
      *(v28 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v60);
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_24AA406B4(0xD000000000000011, 0x800000024AAD1F30, &v60);
      *(v28 + 22) = 2048;
      *(v28 + 24) = 1042;
      _os_log_impl(&dword_24AA0F000, v25, v26, "[%s:%s:%ld] Hold was detected, recording tip acceptance", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v29, -1, -1);
      MEMORY[0x24C226630](v28, -1, -1);
    }

    swift_getKeyPath();
    v60 = v1;
    sub_24AAB2CF4();

    v30 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___callHoldingAnalytics);
    v31 = sub_24AAB50F4();
    v32 = v58;
    (*(*(v31 - 8) + 56))(v58, 1, 1, v31);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v30;

    sub_24AA330D4(0, 0, v32, &unk_24AAB78B0, v33);
  }

  v34 = sub_24AAB3A64();
  v35 = sub_24AAB5144();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v60 = v37;
    *v36 = 136315650;
    *(v36 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v60);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_24AA406B4(0xD000000000000011, 0x800000024AAD1F30, &v60);
    *(v36 + 22) = 2048;
    *(v36 + 24) = 1046;
    _os_log_impl(&dword_24AA0F000, v34, v35, "[%s:%s:%ld] WoH FOR MAC: Starting Wait on Hold", v36, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v37, -1, -1);
    MEMORY[0x24C226630](v36, -1, -1);
  }

  v38 = (v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle);
  v39 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle + 8);
  v54 = v16;
  v40 = v7;
  if (v39)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v51[-3] = 0;
    v51[-2] = 0;
    v51[-4] = v1;
    v60 = v1;
    sub_24AAB2CE4();
  }

  else
  {
    *v38 = 0;
    v38[1] = 0;
  }

  v42 = v58;
  sub_24AAB50D4();
  v43 = sub_24AAB50F4();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  v44 = v56;
  v45 = v59;
  (*(v8 + 16))(v56, v59, v40);
  sub_24AAB50C4();

  v46 = sub_24AAB50B4();
  v47 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v48 = (v57 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  v50 = MEMORY[0x277D85700];
  *(v49 + 16) = v46;
  *(v49 + 24) = v50;
  v52((v49 + v47), v44, v40);
  *(v49 + v48) = v1;
  sub_24AA330D4(0, 0, v42, &unk_24AAB78A8, v49);

  swift_unknownObjectRelease();
  (*(v8 + 8))(v45, v40);
}

void sub_24AA29550()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85868, &qword_24AAB7940);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_24AAB3A64();
  v6 = sub_24AAB5144();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&aBlock = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &aBlock);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_24AA406B4(0xD000000000000014, 0x800000024AAD2010, &aBlock);
    *(v7 + 22) = 2048;
    *(v7 + 24) = 1155;
    _os_log_impl(&dword_24AA0F000, v5, v6, "[%s:%s:%ld] Presenting contact card", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v8, -1, -1);
    MEMORY[0x24C226630](v7, -1, -1);
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    swift_unknownObjectRetain();
    v11 = [v10 contactIdentifiers];
    if (v11)
    {
      v12 = v11;
      v13 = sub_24AAB5024();

      if (v13[2])
      {
        v15 = v13[4];
        v14 = v13[5];
        strcpy(&aBlock, "addressbook://");
        HIBYTE(aBlock) = -18;

        MEMORY[0x24C2257F0](v15, v14);
        v16 = aBlock;

        v17 = sub_24AAB3A64();
        v18 = sub_24AAB5144();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v31 = v16;
          v20 = v19;
          v21 = swift_slowAlloc();
          *&aBlock = v21;
          *v20 = 136315906;
          *(v20 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &aBlock);
          *(v20 + 12) = 2080;
          *(v20 + 14) = sub_24AA406B4(0xD000000000000014, 0x800000024AAD2010, &aBlock);
          *(v20 + 22) = 2048;
          *(v20 + 24) = 1165;
          *(v20 + 32) = 2080;
          *(v20 + 34) = sub_24AA406B4(v31, *(&v16 + 1), &aBlock);
          _os_log_impl(&dword_24AA0F000, v17, v18, "[%s:%s:%ld] Opening contact card with URL: %s", v20, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x24C226630](v21, -1, -1);
          MEMORY[0x24C226630](v20, -1, -1);
        }

        sub_24AAB2BC4();
        v22 = sub_24AAB2BD4();
        v23 = *(v22 - 8);
        if ((*(v23 + 48))(v4, 1, v22) == 1)
        {
          __break(1u);
        }

        else
        {

          v24 = sub_24AAB2BA4();
          (*(v23 + 8))(v4, v22);
          v35 = sub_24AA44D54;
          v36 = v1;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v33 = sub_24AA3F25C;
          v34 = &block_descriptor_406;
          v25 = _Block_copy(&aBlock);

          TUOpenURLAndActivateWithCompletion();
          _Block_release(v25);
          swift_unknownObjectRelease();
        }

        return;
      }
    }

    swift_unknownObjectRelease();
  }

  v31 = sub_24AAB3A64();
  v26 = sub_24AAB5144();
  if (os_log_type_enabled(v31, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&aBlock = v28;
    *v27 = 136315650;
    *(v27 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &aBlock);
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_24AA406B4(0xD000000000000014, 0x800000024AAD2010, &aBlock);
    *(v27 + 22) = 2048;
    *(v27 + 24) = 1160;
    _os_log_impl(&dword_24AA0F000, v31, v26, "[%s:%s:%ld] Cannot present contact card - missing contact identifiers", v27, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v28, -1, -1);
    MEMORY[0x24C226630](v27, -1, -1);
  }

  else
  {
    v29 = v31;
  }
}

uint64_t sub_24AA29BA8(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_getKeyPath();
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CF4();

    v5 = *(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__audioCallRecordingViewModel);

    if (v5)
    {
      a2(result);
    }
  }

  return result;
}

double sub_24AA29C9C@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_24AAB3A64();
  v6 = sub_24AAB5144();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v30 = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v30);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1FF0, &v30);
    *(v7 + 22) = 2048;
    *(v7 + 24) = 334;
    _os_log_impl(&dword_24AA0F000, v5, v6, "[%s:%s:%ld] Creating trailing controls", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v8, -1, -1);
    MEMORY[0x24C226630](v7, -1, -1);
  }

  swift_getKeyPath();
  *&v22 = v3;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v9 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
  swift_beginAccess();
  if (*(v3 + v9))
  {

    sub_24AA9DE08(&v24);

    if (v29 != 255)
    {
      v32 = v26;
      v33 = v27;
      v34 = v28;
      v35 = v29;
      v30 = v24;
      v31 = v25;
      v10 = sub_24AAB3A64();
      v11 = sub_24AAB5144();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v24 = v13;
        *v12 = 136315650;
        *(v12 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v24);
        *(v12 + 12) = 2080;
        *(v12 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1FF0, &v24);
        *(v12 + 22) = 2048;
        *(v12 + 24) = 338;
        v14 = "[%s:%s:%ld] Using call screening trailing control";
LABEL_12:
        _os_log_impl(&dword_24AA0F000, v10, v11, v14, v12, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v13, -1, -1);
        MEMORY[0x24C226630](v12, -1, -1);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v29 = -1;
  }

  sub_24AA169C4(&v24, &qword_27EF85568, &qword_24AABC830);
  swift_getKeyPath();
  *&v22 = v3;
  sub_24AAB2CF4();

  if (*(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__audioCallRecordingViewModel))
  {

    sub_24AA4FA70(&v22);

    if (v23)
    {
      sub_24AA15A64(&v22, &v24);
      v35 = 1;
      v32 = v26;
      v33 = v27;
      v34 = v28;
      v30 = v24;
      v31 = v25;
      v10 = sub_24AAB3A64();
      v11 = sub_24AAB5144();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v24 = v13;
        *v12 = 136315650;
        *(v12 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v24);
        *(v12 + 12) = 2080;
        *(v12 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1FF0, &v24);
        *(v12 + 22) = 2048;
        *(v12 + 24) = 343;
        v14 = "[%s:%s:%ld] Using call recording trailing control";
        goto LABEL_12;
      }

LABEL_13:

      v15 = v33;
      *(a2 + 32) = v32;
      *(a2 + 48) = v15;
      *(a2 + 64) = v34;
      *(a2 + 80) = v35;
      result = *&v30;
      v17 = v31;
      *a2 = v30;
      *(a2 + 16) = v17;
      return result;
    }

    sub_24AA169C4(&v22, &qword_27EF856A8, &qword_24AAB7508);
  }

  v18 = sub_24AAB3A64();
  v19 = sub_24AAB5144();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v30 = v21;
    *v20 = 136315650;
    *(v20 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v30);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_24AA406B4(0xD000000000000018, 0x800000024AAD1FF0, &v30);
    *(v20 + 22) = 2048;
    *(v20 + 24) = 347;
    _os_log_impl(&dword_24AA0F000, v18, v19, "[%s:%s:%ld] No trailing controls", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v21, -1, -1);
    MEMORY[0x24C226630](v20, -1, -1);
  }

  result = 0.0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 80) = -1;
  return result;
}

void sub_24AA2A2D4(uint64_t *a1@<X8>)
{
  v2 = v1;
  v229 = sub_24AAB2B84();
  v227 = *(v229 - 8);
  MEMORY[0x28223BE20](v229);
  v228 = &v222 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;

  v232 = v5;
  v6 = sub_24AAB3A64();
  v7 = sub_24AAB5144();
  v8 = os_log_type_enabled(v6, v7);
  v231 = a1;
  if (v8)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v242 = v10;
    *v9 = 136315906;
    *(v9 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v242);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v242);
    *(v9 + 22) = 2048;
    *(v9 + 24) = 354;
    *(v9 + 32) = 1024;
    *(v9 + 34) = sub_24AA1FBC4();

    _os_log_impl(&dword_24AA0F000, v6, v7, "[%s:%s:%ld] Making controls, effectiveStatus: %d", v9, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v10, -1, -1);
    MEMORY[0x24C226630](v9, -1, -1);
  }

  else
  {
  }

  if (sub_24AA1F558())
  {
    v11 = 1;
  }

  else
  {
    swift_getKeyPath();
    *&v242 = v2;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CF4();

    v11 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitingForAskToShare);
  }

  LODWORD(v230) = v11;

  v12 = sub_24AAB3A64();
  v13 = sub_24AAB5144();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v242 = v15;
    *v14 = 136316418;
    *(v14 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v242);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v242);
    *(v14 + 22) = 2048;
    *(v14 + 24) = 358;
    *(v14 + 32) = 1024;
    *(v14 + 34) = v230;
    *(v14 + 38) = 1024;
    *(v14 + 40) = sub_24AA1F558() & 1;
    *(v14 + 44) = 1024;
    swift_getKeyPath();
    *&v236 = v2;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CF4();

    *(v14 + 46) = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitingForAskToShare);

    _os_log_impl(&dword_24AA0F000, v12, v13, "[%s:%s:%ld] Controls disabled: %{BOOL}d, isConnecting: %{BOOL}d, waitingForAskToShare: %{BOOL}d", v14, 0x32u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v15, -1, -1);
    MEMORY[0x24C226630](v14, -1, -1);
  }

  else
  {
  }

  swift_getKeyPath();
  *&v242 = v2;
  sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
  sub_24AAB2CF4();

  if (*(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingKeypad) == 1)
  {
    v16 = sub_24AAB3A64();
    v17 = sub_24AAB5144();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v231;
    if (v18)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v242 = v21;
      *v20 = 136315650;
      *(v20 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v242);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v242);
      *(v20 + 22) = 2048;
      *(v20 + 24) = 361;
      _os_log_impl(&dword_24AA0F000, v16, v17, "[%s:%s:%ld] Showing keypad, returning end control", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v21, -1, -1);
      MEMORY[0x24C226630](v20, -1, -1);
    }

    v22 = type metadata accessor for EndControl(0);
    v19[3] = v22;
    v19[4] = sub_24AA42080(&qword_27EF85808, type metadata accessor for EndControl, &unk_24AABB404);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v19);
    *boxed_opaque_existential_1Tm = xmmword_24AAB7010;
    *(boxed_opaque_existential_1Tm + 16) = 2;
    sub_24AAB2B24();
    v24 = (boxed_opaque_existential_1Tm + v22[6]);
    *v24 = 0x6F642E656E6F6870;
    v24[1] = 0xEF6C6C69662E6E77;
    v25 = (boxed_opaque_existential_1Tm + v22[7]);
    v26 = sub_24AAB49F4();
    v27 = sub_24AAB4A44();
    *v25 = v26;
    v25[1] = v27;
    v25[2] = 0;
    v25[3] = 0;
    *(boxed_opaque_existential_1Tm + v22[8]) = 0;
    *(boxed_opaque_existential_1Tm + v22[9]) = 0;
    *(v19 + 80) = 1;
    return;
  }

  swift_getKeyPath();
  *&v242 = v2;
  sub_24AAB2CF4();

  v28 = v231;
  if (*(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView) == 1)
  {
    v29 = sub_24AAB3A64();
    v30 = sub_24AAB5144();
    if (!os_log_type_enabled(v29, v30))
    {
LABEL_18:

      *(v28 + 3) = 0u;
      *(v28 + 4) = 0u;
      *(v28 + 1) = 0u;
      *(v28 + 2) = 0u;
      *v28 = 0u;
      v34 = 5;
LABEL_29:
      *(v28 + 80) = v34;
      return;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v242 = v32;
    *v31 = 136315650;
    *(v31 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v242);
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v242);
    *(v31 + 22) = 2048;
    *(v31 + 24) = 366;
    v33 = "[%s:%s:%ld] Showing secondary more menu view, returning none";
LABEL_17:
    _os_log_impl(&dword_24AA0F000, v29, v30, v33, v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v32, -1, -1);
    MEMORY[0x24C226630](v31, -1, -1);
    goto LABEL_18;
  }

  swift_getKeyPath();
  *&v233[0] = v2;
  sub_24AAB2CF4();

  v35 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
  swift_beginAccess();
  if (*(v2 + v35))
  {

    v36 = sub_24AA1FBC4();
    sub_24AA9E1C4(v36, v230, &v236);

    if (v241 != 255)
    {
      v244 = v238;
      v245 = v239;
      v246 = v240;
      v247 = v241;
      v242 = v236;
      v243 = v237;
      v37 = sub_24AAB3A64();
      v38 = sub_24AAB5144();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *&v236 = v40;
        *v39 = 136315650;
        *(v39 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v236);
        *(v39 + 12) = 2080;
        *(v39 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v236);
        *(v39 + 22) = 2048;
        *(v39 + 24) = 371;
        _os_log_impl(&dword_24AA0F000, v37, v38, "[%s:%s:%ld] Using call screening control recipe", v39, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v40, -1, -1);
        MEMORY[0x24C226630](v39, -1, -1);
      }

      v41 = v245;
      *(v28 + 2) = v244;
      *(v28 + 3) = v41;
      *(v28 + 4) = v246;
      *(v28 + 80) = v247;
      v42 = v243;
      *v28 = v242;
      *(v28 + 1) = v42;
      return;
    }
  }

  else
  {
    v239 = 0u;
    v240 = 0u;
    v238 = 0u;
    v236 = 0u;
    v237 = 0u;
    v241 = -1;
  }

  sub_24AA169C4(&v236, &qword_27EF85568, &qword_24AABC830);
  v43 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  v44 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
  ObjectType = swift_getObjectType();
  if (sub_24AAB3944())
  {
    v46 = sub_24AAB3A64();
    v47 = sub_24AAB5144();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v242 = v49;
      *v48 = 136315650;
      *(v48 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v242);
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v242);
      *(v48 + 22) = 2048;
      *(v48 + 24) = 376;
      _os_log_impl(&dword_24AA0F000, v46, v47, "[%s:%s:%ld] Wait on hold active, returning horizontal stack", v48, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v49, -1, -1);
      MEMORY[0x24C226630](v48, -1, -1);
    }

    v50 = type metadata accessor for WaitOnHoldEndCallControl(0);
    v28[3] = v50;
    v28[4] = sub_24AA42080(&qword_27EF85850, type metadata accessor for WaitOnHoldEndCallControl, &unk_24AABB308);
    v51 = __swift_allocate_boxed_opaque_existential_1Tm(v28);
    *v51 = xmmword_24AAB7010;
    *(v51 + 16) = 2;
    sub_24AAB2B24();
    v52 = (v51 + v50[6]);
    *v52 = 0x6B72616D78;
    v52[1] = 0xE500000000000000;
    v53 = (v51 + v50[7]);
    v54 = sub_24AAB4A44();
    *v53 = 0;
    v53[1] = v54;
    v53[2] = 0;
    v53[3] = 0;
    *(v51 + v50[8]) = 0;
    *(v51 + v50[9]) = 0;
    v55 = type metadata accessor for PickUpControl(0);
    v28[8] = v55;
    v28[9] = sub_24AA42080(&qword_27EF85858, type metadata accessor for PickUpControl, &unk_24AABB2EC);
    v56 = __swift_allocate_boxed_opaque_existential_1Tm(v28 + 5);
    *v56 = xmmword_24AAB7020;
    *(v56 + 16) = 2;
    sub_24AAB2B24();
    v57 = (v56 + v55[6]);
    *v57 = 0x69662E656E6F6870;
    v57[1] = 0xEA00000000006C6CLL;
    v58 = (v56 + v55[7]);
    v59 = sub_24AAB4A34();
    v60 = sub_24AAB4A44();
    *v58 = v59;
    v58[1] = v60;
    v58[2] = 0;
    v58[3] = 0;
    *(v56 + v55[8]) = 0;
    *(v56 + v55[9]) = 0;
    v34 = 4;
    goto LABEL_29;
  }

  v226 = v43;
  v61 = sub_24AA1FBC4();
  v62 = sub_24AAB3A64();
  LODWORD(v224) = sub_24AAB5144();
  v225 = v62;
  v63 = os_log_type_enabled(v62, v224);
  switch(v61)
  {
    case 2:
      v222 = v44;
      v223 = ObjectType;
      v70 = v28;
      if (v63)
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *&v242 = v72;
        *v71 = 136315650;
        *(v71 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v242);
        *(v71 + 12) = 2080;
        *(v71 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v242);
        *(v71 + 22) = 2048;
        *(v71 + 24) = 388;
        v73 = v225;
        _os_log_impl(&dword_24AA0F000, v225, v224, "[%s:%s:%ld] Call held", v71, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v72, -1, -1);
        MEMORY[0x24C226630](v71, -1, -1);
      }

      else
      {
      }

      v95 = (v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter);
      v96 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24);
      v97 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 32);
      v98 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), v96);
      MEMORY[0x28223BE20](v98);
      *(&v222 - 4) = v96;
      *(&v222 - 3) = v97;
      *(&v222 - 2) = sub_24AA44BC8;
      *(&v222 - 1) = v2;
      sub_24AAB3344();
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85638, &qword_24AAB7340);
      v99 = sub_24AAB53D4();

      if (*(v99 + 16))
      {
        v100 = *(v99 + 32);
        swift_unknownObjectRetain();

        __swift_project_boxed_opaque_existential_1(v95, v95[3]);
        swift_getObjectType();
        v230 = v100;
        v101 = sub_24AAB3404();
        v102 = sub_24AAB3A64();
        v103 = sub_24AAB5144();
        v104 = os_log_type_enabled(v102, v103);
        v105 = v28;
        if (v101)
        {
          if (v104)
          {
            v106 = swift_slowAlloc();
            v107 = swift_slowAlloc();
            *&v242 = v107;
            *v106 = 136315650;
            *(v106 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v242);
            *(v106 + 12) = 2080;
            *(v106 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v242);
            *(v106 + 22) = 2048;
            *(v106 + 24) = 395;
            _os_log_impl(&dword_24AA0F000, v102, v103, "[%s:%s:%ld] Can group calls, returning swap/merge", v106, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x24C226630](v107, -1, -1);
            MEMORY[0x24C226630](v106, -1, -1);
          }

          v108 = type metadata accessor for SwapControl(0);
          v70[3] = v108;
          v70[4] = sub_24AA42080(&qword_27EF85828, type metadata accessor for SwapControl, &unk_24AABB378);
          v109 = __swift_allocate_boxed_opaque_existential_1Tm(v70);
          *v109 = xmmword_24AAB6F80;
          *(v109 + 16) = 2;
          sub_24AAB2B24();
          v110 = (v109 + v108[6]);
          *v110 = 0xD000000000000013;
          v110[1] = 0x800000024AAD1F90;
          v111 = (v109 + v108[7]);
          if (qword_27EF84C70 != -1)
          {
            swift_once();
          }

          v112 = qword_27EF919F8;
          v113 = unk_27EF91A00;
          v114 = qword_27EF91A08;
          v115 = unk_27EF91A10;
          *v111 = qword_27EF919F8;
          v111[1] = v113;
          v111[2] = v114;
          v111[3] = v115;
          *(v109 + v108[8]) = 0;
          *(v109 + v108[9]) = 0;
          v116 = type metadata accessor for MergeControl(0);
          v105[8] = v116;
          v105[9] = sub_24AA42080(&qword_27EF85830, type metadata accessor for MergeControl, &unk_24AABB35C);
          v117 = __swift_allocate_boxed_opaque_existential_1Tm(v105 + 5);
          *v117 = xmmword_24AAB6F90;
          *(v117 + 16) = 2;

          sub_24AA1B750(v114, v115);

          sub_24AA1B750(v114, v115);
          sub_24AAB2B24();
          v118 = v116[6];
          swift_unknownObjectRelease();
          v119 = (v117 + v118);
          *v119 = 0xD000000000000014;
          v119[1] = 0x800000024AAD1FB0;
          v120 = (v117 + v116[7]);
          *v120 = v112;
          v120[1] = v113;
          v120[2] = v114;
          v120[3] = v115;
          *(v117 + v116[8]) = 0;
          *(v117 + v116[9]) = 0;
          *(v105 + 80) = 3;
        }

        else
        {
          if (v104)
          {
            v203 = swift_slowAlloc();
            v204 = swift_slowAlloc();
            *&v242 = v204;
            *v203 = 136315650;
            *(v203 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v242);
            *(v203 + 12) = 2080;
            *(v203 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v242);
            *(v203 + 22) = 2048;
            *(v203 + 24) = 401;
            _os_log_impl(&dword_24AA0F000, v102, v103, "[%s:%s:%ld] Cannot group calls, returning titled swap", v203, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x24C226630](v204, -1, -1);
            MEMORY[0x24C226630](v203, -1, -1);
          }

          v205 = type metadata accessor for TitledSwapControl(0);
          v28[3] = v205;
          v28[4] = sub_24AA42080(&qword_27EF85820, type metadata accessor for TitledSwapControl, &unk_24AABB394);
          v206 = __swift_allocate_boxed_opaque_existential_1Tm(v28);
          *v206 = xmmword_24AAB6F80;
          *(v206 + 16) = 2;
          sub_24AAB2B24();
          v207 = (v206 + v205[6]);
          if (qword_27EF84C70 != -1)
          {
            swift_once();
          }

          v208 = qword_27EF919F8;
          v209 = unk_27EF91A00;
          v210 = qword_27EF91A08;
          v211 = unk_27EF91A10;

          sub_24AA1B750(v210, v211);
          swift_unknownObjectRelease();
          *v207 = v208;
          v207[1] = v209;
          v207[2] = v210;
          v207[3] = v211;
          *(v206 + v205[7]) = 0;
          *(v206 + v205[8]) = 0;
          *(v70 + 80) = 2;
        }

        return;
      }

      v195 = sub_24AAB3A64();
      v196 = sub_24AAB5144();
      if (os_log_type_enabled(v195, v196))
      {
        v197 = swift_slowAlloc();
        v198 = swift_slowAlloc();
        *&v242 = v198;
        *v197 = 136315650;
        *(v197 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v242);
        *(v197 + 12) = 2080;
        *(v197 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v242);
        *(v197 + 22) = 2048;
        *(v197 + 24) = 390;
        _os_log_impl(&dword_24AA0F000, v195, v196, "[%s:%s:%ld] No other call, returning unhold control", v197, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v198, -1, -1);
        MEMORY[0x24C226630](v197, -1, -1);
      }

      v199 = type metadata accessor for UnholdControl(0);
      v28[3] = v199;
      v28[4] = sub_24AA42080(&qword_27EF85838, type metadata accessor for UnholdControl, &unk_24AABB340);
      v200 = __swift_allocate_boxed_opaque_existential_1Tm(v28);
      *v200 = xmmword_24AAB6FA0;
      *(v200 + 16) = 2;
      sub_24AAB2B24();
      v201 = (v200 + v199[6]);
      if (qword_27EF84C70 != -1)
      {
        swift_once();
      }

      v202 = unk_27EF91A00;
      v93 = qword_27EF91A08;
      v94 = unk_27EF91A10;
      *v201 = qword_27EF919F8;
      v201[1] = v202;
      v201[2] = v93;
      v201[3] = v94;
      *(v200 + v199[7]) = 0;
      *(v200 + v199[8]) = 0;
      *(v70 + 80) = 2;
LABEL_96:

      sub_24AA1B750(v93, v94);
      return;
    case 6:
      if (v63)
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *&v242 = v68;
        *v67 = 136315650;
        *(v67 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v242);
        *(v67 + 12) = 2080;
        *(v67 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v242);
        *(v67 + 22) = 2048;
        *(v67 + 24) = 405;
        v69 = v225;
        _os_log_impl(&dword_24AA0F000, v225, v224, "[%s:%s:%ld] Call disconnected", v67, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v68, -1, -1);
        MEMORY[0x24C226630](v67, -1, -1);
      }

      else
      {
      }

      *&v236 = v226;
      sub_24AAB35B4();
      if (!*(&v243 + 1) || (v77 = v244, , , (v77 & 1) == 0))
      {
        v29 = sub_24AAB3A64();
        v30 = sub_24AAB5144();
        if (!os_log_type_enabled(v29, v30))
        {
          goto LABEL_18;
        }

        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *&v236 = v32;
        *v31 = 136315650;
        *(v31 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v236);
        *(v31 + 12) = 2080;
        *(v31 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v236);
        *(v31 + 22) = 2048;
        *(v31 + 24) = 407;
        v33 = "[%s:%s:%ld] Not eligible for redial, returning none";
        goto LABEL_17;
      }

      v78 = sub_24AAB3A64();
      v79 = sub_24AAB5144();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *&v236 = v81;
        *v80 = 136315650;
        *(v80 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v236);
        *(v80 + 12) = 2080;
        *(v80 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v236);
        *(v80 + 22) = 2048;
        *(v80 + 24) = 411;
        _os_log_impl(&dword_24AA0F000, v78, v79, "[%s:%s:%ld] Eligible for redial, returning dial controls", v80, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v81, -1, -1);
        MEMORY[0x24C226630](v80, -1, -1);
      }

      v82 = type metadata accessor for DialControl(0);
      v28[3] = v82;
      v28[4] = sub_24AA42080(&qword_27EF854B0, type metadata accessor for DialControl, &unk_24AABB3CC);
      v83 = __swift_allocate_boxed_opaque_existential_1Tm(v28);
      *v83 = xmmword_24AAB6E00;
      *(v83 + 16) = 2;
      sub_24AAB2B24();
      v84 = (v83 + v82[6]);
      *v84 = 0x69662E656E6F6870;
      v84[1] = 0xEA00000000006C6CLL;
      v85 = (v83 + v82[7]);
      v86 = sub_24AAB4A34();
      v87 = sub_24AAB4A44();
      *v85 = v86;
      v85[1] = v87;
      v85[2] = 0;
      v85[3] = 0;
      *(v83 + v82[8]) = 0;
      *(v83 + v82[9]) = 0;
      v88 = type metadata accessor for CancelDialControl(0);
      v28[8] = v88;
      v28[9] = sub_24AA42080(&qword_27EF854B8, type metadata accessor for CancelDialControl, &unk_24AABB3B0);
      v89 = __swift_allocate_boxed_opaque_existential_1Tm(v28 + 5);
      *v89 = xmmword_24AAB6E10;
      *(v89 + 16) = 2;
      sub_24AAB2B24();
      v90 = (v89 + v88[6]);
      *v90 = 0x796C7069746C756DLL;
      v90[1] = 0xE800000000000000;
      v91 = (v89 + v88[7]);
      if (qword_27EF84C70 != -1)
      {
        swift_once();
      }

      v92 = unk_27EF91A00;
      v93 = qword_27EF91A08;
      v94 = unk_27EF91A10;
      *v91 = qword_27EF919F8;
      v91[1] = v92;
      v91[2] = v93;
      v91[3] = v94;
      *(v89 + v88[8]) = 0;
      *(v89 + v88[9]) = 0;
      *(v28 + 80) = 3;
      goto LABEL_96;
    case 4:
      if (v63)
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *&v242 = v65;
        *v64 = 136315650;
        *(v64 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v242);
        *(v64 + 12) = 2080;
        *(v64 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v242);
        *(v64 + 22) = 2048;
        *(v64 + 24) = 382;
        v66 = v225;
        _os_log_impl(&dword_24AA0F000, v225, v224, "[%s:%s:%ld] Call ringing, returning stacked accept/decline", v64, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v65, -1, -1);
        MEMORY[0x24C226630](v64, -1, -1);
      }

      else
      {
      }

      *&v242 = v226;
      if (sub_24AAB3574())
      {
        v121 = sub_24AAB38F4();
      }

      else
      {
        v121 = 0;
      }

      v134 = type metadata accessor for AcceptControl(0);
      v28[3] = v134;
      v28[4] = sub_24AA42080(&qword_27EF85840, type metadata accessor for AcceptControl, &unk_24AABB474);
      v135 = __swift_allocate_boxed_opaque_existential_1Tm(v28);
      *v135 = v121 & 1;
      v135[1] = 0;
      v135[2] = 0;
      *(v135 + 24) = 2;
      sub_24AAB2B24();
      v136 = (v135 + v134[7]);
      v137 = sub_24AAB4A34();
      v138 = sub_24AAB4A44();
      *v136 = v137;
      v136[1] = v138;
      v136[2] = 0;
      v136[3] = 0;
      *(v135 + v134[8]) = v230;
      *(v135 + v134[9]) = 0;
      *(v135 + v134[10]) = 1;
      v139 = type metadata accessor for DeclineControlWithMenu(0);
      v28[8] = v139;
      v28[9] = sub_24AA42080(&qword_27EF85848, type metadata accessor for DeclineControlWithMenu, &unk_24AABB324);
      v140 = __swift_allocate_boxed_opaque_existential_1Tm(v28 + 5);
      *v140 = xmmword_24AAB6FB0;
      *(v140 + 16) = 2;
      sub_24AAB2B24();
      v141 = (v140 + v139[6]);
      *v141 = 0x6F642E656E6F6870;
      v141[1] = 0xEF6C6C69662E6E77;
      v142 = (v140 + v139[7]);
      v143 = sub_24AAB49F4();
      v144 = sub_24AAB4A44();
      *v142 = v143;
      v142[1] = v144;
      v142[2] = 0;
      v142[3] = 0;
      *(v140 + v139[8]) = 0;
      *(v140 + v139[9]) = 0;
      *(v140 + v139[10]) = 1;
      v34 = 3;
      goto LABEL_29;
  }

  v223 = ObjectType;
  if (v63)
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *&v242 = v75;
    *v74 = 136315650;
    *(v74 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v242);
    *(v74 + 12) = 2080;
    *(v74 + 14) = sub_24AA406B4(0x746E6F43656B616DLL, 0xEE002928736C6F72, &v242);
    *(v74 + 22) = 2048;
    *(v74 + 24) = 418;
    v76 = v225;
    _os_log_impl(&dword_24AA0F000, v225, v224, "[%s:%s:%ld] Default case, creating HUD controls", v74, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v75, -1, -1);
    MEMORY[0x24C226630](v74, -1, -1);
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85698, &qword_24AAB74D8);
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_24AAB6FC0;
  v123 = sub_24AA2CE68();
  v222 = v44;
  if (v123)
  {
    LODWORD(v230) = sub_24AAB3874() ^ 1;
    swift_getKeyPath();
    *&v242 = v2;
    sub_24AAB2CF4();

    v124 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingRTT;
    swift_beginAccess();
    v125 = *(v2 + v124);
    v126 = type metadata accessor for RTTControl(0);
    *(v122 + 56) = v126;
    *(v122 + 64) = sub_24AA42080(&qword_27EF85818, type metadata accessor for RTTControl, &unk_24AABB3E8);
    v127 = __swift_allocate_boxed_opaque_existential_1Tm((v122 + 32));
    *v127 = xmmword_24AAB6FE0;
    *(v127 + 16) = 2;
    sub_24AAB2B24();
    v128 = (v127 + v126[6]);
    *v128 = 0x65707974656C6574;
    v128[1] = 0xE800000000000000;
    v129 = (v127 + v126[7]);
    if (qword_27EF84C70 != -1)
    {
      swift_once();
    }

    v130 = qword_27EF919F8;
    v131 = unk_27EF91A00;
    v133 = qword_27EF91A08;
    v132 = unk_27EF91A10;
    *v129 = qword_27EF919F8;
    v129[1] = v131;
    v129[2] = v133;
    v129[3] = v132;
    *(v127 + v126[8]) = v230 & 1;
    *(v127 + v126[9]) = v125;
  }

  else
  {
    *&v242 = v226;
    v145 = sub_24AAB35A4();
    v146 = [v145 isTelephonyProvider];

    v147 = v146 ^ 1;
    v148 = type metadata accessor for KeypadControl(0);
    *(v122 + 56) = v148;
    *(v122 + 64) = sub_24AA42080(&qword_27EF85678, type metadata accessor for KeypadControl, &unk_24AABB51C);
    v149 = __swift_allocate_boxed_opaque_existential_1Tm((v122 + 32));
    *v149 = xmmword_24AAB6FD0;
    *(v149 + 16) = 2;
    sub_24AAB2B24();
    v150 = (v149 + v148[6]);
    *v150 = 0xD000000000000014;
    v150[1] = 0x800000024AAD1D00;
    v151 = (v149 + v148[7]);
    if (qword_27EF84C70 != -1)
    {
      swift_once();
    }

    v130 = qword_27EF919F8;
    v131 = unk_27EF91A00;
    v133 = qword_27EF91A08;
    v132 = unk_27EF91A10;
    *v151 = qword_27EF919F8;
    v151[1] = v131;
    v151[2] = v133;
    v151[3] = v132;
    *(v149 + v148[8]) = v147;
    *(v149 + v148[9]) = 0;
  }

  v230 = v130;
  swift_retain_n();
  swift_retain_n();
  sub_24AA1B750(v133, v132);
  sub_24AA1B750(v133, v132);
  v152 = sub_24AA2D0DC() ^ 1;
  v153 = type metadata accessor for UpgradeVideoControl(0);
  *(v122 + 96) = v153;
  *(v122 + 104) = sub_24AA42080(&qword_27EF857F8, type metadata accessor for UpgradeVideoControl, &unk_24AABB420);
  v154 = __swift_allocate_boxed_opaque_existential_1Tm((v122 + 72));
  *v154 = xmmword_24AAB6FF0;
  *(v154 + 16) = 2;
  sub_24AAB2B24();
  v155 = (v154 + v153[6]);
  *v155 = 0x69662E6F65646976;
  v155[1] = 0xEA00000000006C6CLL;
  v156 = (v154 + v153[7]);
  if (qword_27EF84C70 != -1)
  {
    swift_once();
  }

  *v156 = v230;
  v156[1] = v131;
  v156[2] = v133;
  v156[3] = v132;
  *(v154 + v153[8]) = v152 & 1;
  *(v154 + v153[9]) = 0;
  v157 = sub_24AAB38E4();
  v158 = v157;
  *(v122 + 136) = &type metadata for MuteControl;
  *(v122 + 144) = sub_24AA44B08(v157, v159, v160);
  v161 = swift_allocObject();
  *(v122 + 112) = v161;
  *(v161 + 16) = xmmword_24AAB7000;
  *(v161 + 32) = 2;
  strcpy((v161 + 40), "mic.slash.fill");
  *(v161 + 55) = -18;
  v162 = sub_24AAB4A44();
  v163 = sub_24AAB4A44();
  v164 = [objc_opt_self() systemRedColor];
  v165 = sub_24AAB49C4();
  *(v161 + 56) = 0;
  *(v161 + 64) = v162;
  *(v161 + 72) = v163;
  *(v161 + 80) = v165;
  *(v161 + 88) = 0;
  *(v161 + 89) = v158 & 1;
  v235 = v122;
  v166 = sub_24AA2D4F8();
  sub_24AA2D3F0(v166);
  v167 = type metadata accessor for EndControl(0);
  *(&v243 + 1) = v167;
  *&v244 = sub_24AA42080(&qword_27EF85808, type metadata accessor for EndControl, &unk_24AABB404);
  v168 = __swift_allocate_boxed_opaque_existential_1Tm(&v242);
  *v168 = xmmword_24AAB7010;
  *(v168 + 16) = 2;
  sub_24AAB2B24();
  v169 = (v168 + v167[6]);
  *v169 = 0x6F642E656E6F6870;
  v169[1] = 0xEF6C6C69662E6E77;
  v170 = (v168 + v167[7]);
  v171 = sub_24AAB49F4();
  v172 = sub_24AAB4A44();
  *v170 = v171;
  v170[1] = v172;
  v170[2] = 0;
  v170[3] = 0;
  *(v168 + v167[8]) = 0;
  *(v168 + v167[9]) = 0;
  v173 = v235;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v173 = sub_24AA400BC(0, v173[2] + 1, 1, v173);
  }

  v175 = v173[2];
  v174 = v173[3];
  if (v175 >= v174 >> 1)
  {
    v173 = sub_24AA400BC((v174 > 1), v175 + 1, 1, v173);
  }

  v173[2] = v175 + 1;
  v176 = (v173 + 4);
  v177 = &v173[5 * v175 + 4];
  v178 = v242;
  v179 = v243;
  *(v177 + 32) = v244;
  *v177 = v178;
  *(v177 + 16) = v179;
  swift_bridgeObjectRetain_n();
  v180 = sub_24AAB3A64();
  v181 = sub_24AAB5144();

  if (os_log_type_enabled(v180, v181))
  {
    LODWORD(v225) = v181;
    v182 = swift_slowAlloc();
    v223 = swift_slowAlloc();
    *&v233[0] = v223;
    v224 = v182;
    *v182 = 136315138;
    v230 = v173;
    v183 = v173[2];
    v226 = v180;
    if (v183)
    {
      v232 = (v227 + 8);
      v184 = MEMORY[0x277D84F90];
      v185 = (v173 + 4);
      do
      {
        sub_24AA1695C(v185, &v242, &qword_27EF856A8, &qword_24AAB7508);
        sub_24AA1695C(&v242, &v236, &qword_27EF856A8, &qword_24AAB7508);
        v186 = *(&v237 + 1);
        if (*(&v237 + 1))
        {
          v187 = v238;
          __swift_project_boxed_opaque_existential_1(&v236, *(&v237 + 1));
          v188 = v228;
          (*(*(*(v187 + 8) + 8) + 16))(v186);
          v189 = sub_24AAB2B64();
          v191 = v190;
          (*v232)(v188, v229);
          __swift_destroy_boxed_opaque_existential_1Tm(&v236);
        }

        else
        {
          sub_24AA169C4(&v236, &qword_27EF856A8, &qword_24AAB7508);
          v191 = 0xE800000000000000;
          v189 = 0x656C7469745F6F6ELL;
        }

        *&v236 = v189;
        *(&v236 + 1) = v191;

        MEMORY[0x24C2257F0](8236, 0xE200000000000000);

        v192 = v236;
        sub_24AA169C4(&v242, &qword_27EF856A8, &qword_24AAB7508);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v184 = sub_24AA4034C(0, *(v184 + 2) + 1, 1, v184);
        }

        v194 = *(v184 + 2);
        v193 = *(v184 + 3);
        if (v194 >= v193 >> 1)
        {
          v184 = sub_24AA4034C((v193 > 1), v194 + 1, 1, v184);
        }

        *(v184 + 2) = v194 + 1;
        *&v184[16 * v194 + 32] = v192;
        v185 += 40;
        --v183;
      }

      while (v183);
    }

    else
    {
      v184 = MEMORY[0x277D84F90];
    }

    *&v242 = v184;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85810, &unk_24AAB7920);
    v212 = sub_24AAB4F44();
    v214 = sub_24AA406B4(v212, v213, v233);

    v215 = v224;
    *(v224 + 1) = v214;
    v173 = v230;

    v180 = v226;
    _os_log_impl(&dword_24AA0F000, v226, v225, "Call notification - controls =%s", v215, 0xCu);
    v216 = v223;
    __swift_destroy_boxed_opaque_existential_1Tm(v223);
    MEMORY[0x24C226630](v216, -1, -1);
    MEMORY[0x24C226630](v215, -1, -1);
  }

  else
  {
  }

  v217 = v173[2];
  if (v217)
  {
    v218 = MEMORY[0x277D84F90];
    do
    {
      sub_24AA1695C(v176, &v242, &qword_27EF856A8, &qword_24AAB7508);
      v233[0] = v242;
      v233[1] = v243;
      v234 = v244;
      if (*(&v243 + 1))
      {
        sub_24AA15A64(v233, &v236);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v218 = sub_24AA40204(0, v218[2] + 1, 1, v218);
        }

        v220 = v218[2];
        v219 = v218[3];
        if (v220 >= v219 >> 1)
        {
          v218 = sub_24AA40204((v219 > 1), v220 + 1, 1, v218);
        }

        v218[2] = v220 + 1;
        sub_24AA15A64(&v236, &v218[5 * v220 + 4]);
      }

      else
      {
        sub_24AA169C4(v233, &qword_27EF856A8, &qword_24AAB7508);
      }

      v176 += 40;
      --v217;
    }

    while (v217);
  }

  else
  {

    v218 = MEMORY[0x277D84F90];
  }

  v221 = v231;
  *v231 = v218;
  *(v221 + 80) = 0;
}

uint64_t sub_24AA2CDD0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return a2(a1, AssociatedConformanceWitness) & 1;
}

uint64_t sub_24AA2CE68()
{
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
  sub_24AAB32A4();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85638, &qword_24AAB7340);
  v1 = sub_24AAB53D4();

  v2 = *(v1 + 16);

  if (v2 != 1)
  {
    goto LABEL_7;
  }

  swift_getObjectType();
  if (sub_24AAB39D4() & 1) != 0 || (sub_24AAB39E4())
  {
    v3 = 1;
    goto LABEL_8;
  }

  if (sub_24AAB3974())
  {
    v3 = [objc_opt_self() shouldUseRTT];
  }

  else
  {
LABEL_7:
    v3 = 0;
  }

LABEL_8:
  v4 = sub_24AAB3A64();
  v5 = sub_24AAB5144();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315906;
    *(v6 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v9);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_24AA406B4(0x6176415454527369, 0xEE00656C62616C69, &v9);
    *(v6 + 22) = 2048;
    *(v6 + 24) = 901;
    *(v6 + 32) = 1024;
    *(v6 + 34) = v3;
    _os_log_impl(&dword_24AA0F000, v4, v5, "[%s:%s:%ld] RTT available: %{BOOL}d", v6, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v7, -1, -1);
    MEMORY[0x24C226630](v6, -1, -1);
  }

  return v3;
}

id sub_24AA2D0DC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
  swift_getObjectType();
  v20 = v2;
  v3 = sub_24AAB35A4();
  v4 = [v3 supportsAudioAndVideo];

  if (v4)
  {
    v20 = v2;
    v5 = sub_24AAB35A4();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
    v6 = sub_24AAB32B4();
    v5 = [v6 faceTimeProvider];
  }

  v7 = [v5 supportsAudioAndVideo];
  v20 = v2;
  v8 = sub_24AAB3564();
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  v10 = [v8 value];

  v11 = sub_24AAB4EF4();
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 || (sub_24AAB38C4() & 1) != 0 || (sub_24AAB3894() & 1) != 0 || (sub_24AAB3884() & 1) != 0 || sub_24AAB39F4() != 1 || sub_24AAB3854() == 1)
  {
LABEL_13:
    v7 = 0;
  }

  v15 = sub_24AAB3A64();
  v16 = sub_24AAB5144();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v17 = 136315906;
    *(v17 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v20);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_24AA406B4(0xD000000000000011, 0x800000024AAD1FD0, &v20);
    *(v17 + 22) = 2048;
    *(v17 + 24) = 726;
    *(v17 + 32) = 1024;
    *(v17 + 34) = v7;
    _os_log_impl(&dword_24AA0F000, v15, v16, "[%s:%s:%ld] Can upgrade to video: %{BOOL}d", v17, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v18, -1, -1);
    MEMORY[0x24C226630](v17, -1, -1);
  }

  return v7;
}

void *sub_24AA2D3F0(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_24AA400BC(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF856A8, &qword_24AAB7508);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24AA2D4F8()
{
  v1 = v0;
  v2 = type metadata accessor for CustomViewControl(0);
  MEMORY[0x28223BE20](v2);
  v4 = v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_logger;
  v6 = sub_24AAB3A64();
  v7 = sub_24AAB5144();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v115 = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v115);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_24AA406B4(0xD000000000000019, 0x800000024AAD1D20, &v115);
    *(v8 + 22) = 2048;
    *(v8 + 24) = 435;
    _os_log_impl(&dword_24AA0F000, v6, v7, "[%s:%s:%ld] Generating feature controls", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C226630](v9, -1, -1);
    MEMORY[0x24C226630](v8, -1, -1);
  }

  sub_24AAB2E94();
  v10 = sub_24AAB2E84();
  v11 = sub_24AAB2E74();

  v12 = sub_24AAB3A64();
  v13 = sub_24AAB5144();
  v14 = os_log_type_enabled(v12, v13);
  if (v11)
  {
    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v115 = v16;
      *v15 = 136315650;
      *(v15 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v115);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_24AA406B4(0xD000000000000019, 0x800000024AAD1D20, &v115);
      *(v15 + 22) = 2048;
      *(v15 + 24) = 438;
      _os_log_impl(&dword_24AA0F000, v12, v13, "[%s:%s:%ld] More menu enabled", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v16, -1, -1);
      MEMORY[0x24C226630](v15, -1, -1);
    }

    sub_24AA2E894(v17);
    swift_getKeyPath();
    *&v115 = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CF4();

    v18 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__moreMenuViewModel);
    if (v18)
    {

      v19 = sub_24AAB3A64();
      v20 = sub_24AAB5144();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *&v115 = v22;
        *v21 = 136315650;
        *(v21 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v115);
        *(v21 + 12) = 2080;
        *(v21 + 14) = sub_24AA406B4(0xD000000000000019, 0x800000024AAD1D20, &v115);
        *(v21 + 22) = 2048;
        *(v21 + 24) = 442;
        _os_log_impl(&dword_24AA0F000, v19, v20, "[%s:%s:%ld] More menu view model available, creating more button", v21, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v22, -1, -1);
        MEMORY[0x24C226630](v21, -1, -1);
      }

      sub_24AAB2B24();
      v23 = qword_27EF84C70;

      if (v23 != -1)
      {
        swift_once();
      }

      v25 = qword_27EF919F8;
      v24 = unk_27EF91A00;
      v26 = qword_27EF91A08;
      v27 = unk_27EF91A10;
      v4[v2[8]] = 0;
      v4[v2[9]] = 0;
      *v4 = xmmword_24AAB7060;
      v4[16] = 1;
      *(v4 + 3) = 0;
      *(v4 + 4) = 0xE000000000000000;
      v28 = &v4[v2[7]];
      *v28 = v25;
      v28[1] = v24;
      v28[2] = v26;
      v28[3] = v27;
      v29 = &v4[v2[10]];
      *v29 = 0x7475425F65726F4DLL;
      *(v29 + 1) = 0xEB000000006E6F74;
      v30 = &v4[v2[11]];
      *v30 = sub_24AA42D04;
      v30[1] = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85698, &qword_24AAB74D8);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_24AAB7070;
      *(v31 + 56) = v2;
      *(v31 + 64) = sub_24AA42080(&qword_27EF85680, type metadata accessor for CustomViewControl, &unk_24AABB500);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v31 + 32));
      sub_24AA42D0C(v4, boxed_opaque_existential_1Tm, type metadata accessor for CustomViewControl);

      sub_24AA1B750(v26, v27);

      sub_24AA42D74(v4, type metadata accessor for CustomViewControl);
    }

    else
    {
      v50 = sub_24AAB3A64();
      v51 = sub_24AAB5144();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *&v115 = v53;
        *v52 = 136315650;
        *(v52 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v115);
        *(v52 + 12) = 2080;
        *(v52 + 14) = sub_24AA406B4(0xD000000000000019, 0x800000024AAD1D20, &v115);
        *(v52 + 22) = 2048;
        *(v52 + 24) = 449;
        _os_log_impl(&dword_24AA0F000, v50, v51, "[%s:%s:%ld] More menu view model not available", v52, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v53, -1, -1);
        MEMORY[0x24C226630](v52, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    if (v14)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v115 = v34;
      *v33 = 136315650;
      *(v33 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v115);
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_24AA406B4(0xD000000000000019, 0x800000024AAD1D20, &v115);
      *(v33 + 22) = 2048;
      *(v33 + 24) = 453;
      _os_log_impl(&dword_24AA0F000, v12, v13, "[%s:%s:%ld] More menu disabled, using legacy controls", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v34, -1, -1);
      MEMORY[0x24C226630](v33, -1, -1);
    }

    v35 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
    swift_getObjectType();
    *&v115 = v35;
    v36 = sub_24AAB3534();
    v114[0] = v5;
    if ((v36 & 1) != 0 || (v114[1] = v35, v37 = sub_24AAB35A4(), v38 = [v37 isFaceTimeProvider], v37, v38))
    {
      v39 = sub_24AAB39C4();
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter), *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_callCenter + 24));
      v40 = sub_24AAB33C4();
      v41 = sub_24AAB3874();
      v42 = sub_24AAB3914();
      v43 = type metadata accessor for ShareControl(0);
      *(&v116 + 1) = v43;
      v117 = sub_24AA42080(&qword_27EF85690, type metadata accessor for ShareControl, &unk_24AABB4C8);
      v44 = __swift_allocate_boxed_opaque_existential_1Tm(&v115);
      *v44 = v39 & 1;
      *(v44 + 1) = v40 & 1;
      *(v44 + 1) = xmmword_24AAB7030;
      *(v44 + 24) = 2;
      sub_24AAB2B24();
      v45 = (v44 + v43[8]);
      *v45 = 0xD000000000000028;
      v45[1] = 0x800000024AAD1D60;
      v46 = (v44 + v43[9]);
      v47 = sub_24AAB4A44();
      v48 = sub_24AAB4A44();
      v49 = sub_24AAB4A14();
      *v46 = 0;
      v46[1] = v47;
      v46[2] = v48;
      v46[3] = v49;
      *(v44 + v43[10]) = (v41 & 1) == 0;
      *(v44 + v43[11]) = v42 & 1;
      *(v44 + v43[12]) = 0;
    }

    else
    {
      v54 = type metadata accessor for KeypadControl(0);
      *(&v116 + 1) = v54;
      v117 = sub_24AA42080(&qword_27EF85678, type metadata accessor for KeypadControl, &unk_24AABB51C);
      v55 = __swift_allocate_boxed_opaque_existential_1Tm(&v115);
      *v55 = xmmword_24AAB6FD0;
      *(v55 + 16) = 2;
      sub_24AAB2B24();
      v56 = (v55 + v54[6]);
      *v56 = 0xD000000000000014;
      v56[1] = 0x800000024AAD1D00;
      v57 = (v55 + v54[7]);
      if (qword_27EF84C70 != -1)
      {
        swift_once();
      }

      v58 = unk_27EF91A00;
      v59 = qword_27EF91A08;
      v60 = unk_27EF91A10;
      *v57 = qword_27EF919F8;
      v57[1] = v58;
      v57[2] = v59;
      v57[3] = v60;
      *(v55 + v54[8]) = 1;
      *(v55 + v54[9]) = 0;

      sub_24AA1B750(v59, v60);
    }

    v61 = sub_24AA400BC(0, 1, 1, MEMORY[0x277D84F90]);
    v31 = v61;
    v63 = v61[2];
    v62 = v61[3];
    if (v63 >= v62 >> 1)
    {
      v61 = sub_24AA400BC((v62 > 1), v63 + 1, 1, v61);
      v31 = v61;
    }

    *(v31 + 16) = v63 + 1;
    v64 = v31 + 40 * v63;
    v65 = v115;
    v66 = v116;
    *(v64 + 64) = v117;
    *(v64 + 32) = v65;
    *(v64 + 48) = v66;
    if (sub_24AA2E894(v61))
    {
      v67 = sub_24AAB3A64();
      v68 = sub_24AAB5144();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *&v115 = v70;
        *v69 = 136315650;
        *(v69 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v115);
        *(v69 + 12) = 2080;
        *(v69 + 14) = sub_24AA406B4(0xD000000000000019, 0x800000024AAD1D20, &v115);
        *(v69 + 22) = 2048;
        *(v69 + 24) = 466;
        _os_log_impl(&dword_24AA0F000, v67, v68, "[%s:%s:%ld] Call eligible for wait on hold, appending control", v69, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C226630](v70, -1, -1);
        MEMORY[0x24C226630](v69, -1, -1);
      }

      v71 = type metadata accessor for WaitOnHoldControl(0);
      *(&v116 + 1) = v71;
      v117 = sub_24AA42080(&qword_27EF85688, type metadata accessor for WaitOnHoldControl, &unk_24AABB4E4);
      v72 = __swift_allocate_boxed_opaque_existential_1Tm(&v115);
      *v72 = xmmword_24AAB7040;
      *(v72 + 16) = 2;
      sub_24AAB2B24();
      v73 = (v72 + v71[6]);
      *v73 = 0xD000000000000019;
      v73[1] = 0x800000024AAD1D40;
      v74 = (v72 + v71[7]);
      v75 = sub_24AAB4A44();
      v76 = sub_24AAB4A44();
      v77 = sub_24AAB4A14();
      *v74 = 0;
      v74[1] = v75;
      v74[2] = v76;
      v74[3] = v77;
      *(v72 + v71[8]) = 0;
      *(v72 + v71[9]) = 0;
      v79 = *(v31 + 16);
      v78 = *(v31 + 24);
      if (v79 >= v78 >> 1)
      {
        v31 = sub_24AA400BC((v78 > 1), v79 + 1, 1, v31);
      }

      *(v31 + 16) = v79 + 1;
      v80 = v31 + 40 * v79;
      v81 = v115;
      v82 = v116;
      *(v80 + 64) = v117;
      *(v80 + 32) = v81;
      *(v80 + 48) = v82;
    }

    v83 = sub_24AAB3A64();
    v84 = sub_24AAB5144();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *&v115 = v86;
      *v85 = 136315650;
      *(v85 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v115);
      *(v85 + 12) = 2080;
      *(v85 + 14) = sub_24AA406B4(0xD000000000000019, 0x800000024AAD1D20, &v115);
      *(v85 + 22) = 2048;
      *(v85 + 24) = 471;
      _os_log_impl(&dword_24AA0F000, v83, v84, "[%s:%s:%ld] Appending live translation control", v85, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C226630](v86, -1, -1);
      MEMORY[0x24C226630](v85, -1, -1);
    }

    swift_getKeyPath();
    *&v115 = v1;
    sub_24AA42080(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel, &protocol conformance descriptor for CallNotificationViewModel);
    sub_24AAB2CF4();

    v87 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callTranslationViewModel;
    swift_beginAccess();
    if (*(v1 + v87))
    {

      v88 = sub_24AA1FBC4();
      sub_24AA97C60(v88, &v115);
    }

    else
    {
      v117 = 0;
      v115 = 0u;
      v116 = 0u;
    }

    v90 = *(v31 + 16);
    v89 = *(v31 + 24);
    if (v90 >= v89 >> 1)
    {
      v31 = sub_24AA400BC((v89 > 1), v90 + 1, 1, v31);
    }

    *(v31 + 16) = v90 + 1;
    v91 = v31 + 40 * v90;
    v92 = v115;
    v93 = v116;
    *(v91 + 64) = v117;
    *(v91 + 32) = v92;
    *(v91 + 48) = v93;
    swift_getKeyPath();
    *&v115 = v1;
    sub_24AAB2CF4();

    v94 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__audioCallRecordingViewModel);
    if (v94)
    {
      swift_getKeyPath();
      *&v115 = v94;
      sub_24AA42080(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel, &protocol conformance descriptor for AudioCallRecordingViewModel);

      sub_24AAB2CF4();

      if (*(v94 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__canShowCallRecord) == 1)
      {
        v95 = sub_24AAB3A64();
        v96 = sub_24AAB5144();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          *&v115 = v98;
          *v97 = 136315650;
          *(v97 + 4) = sub_24AA406B4(0xD000000000000036, 0x800000024AAD1870, &v115);
          *(v97 + 12) = 2080;
          *(v97 + 14) = sub_24AA406B4(0xD000000000000019, 0x800000024AAD1D20, &v115);
          *(v97 + 22) = 2048;
          *(v97 + 24) = 477;
          _os_log_impl(&dword_24AA0F000, v95, v96, "[%s:%s:%ld] Appending call recording control", v97, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C226630](v98, -1, -1);
          MEMORY[0x24C226630](v97, -1, -1);
        }

        *(&v116 + 1) = v2;
        v117 = sub_24AA42080(&qword_27EF85680, type metadata accessor for CustomViewControl, &unk_24AABB500);
        v99 = __swift_allocate_boxed_opaque_existential_1Tm(&v115);
        sub_24AAB2B24();
        v100 = qword_27EF84C70;

        if (v100 != -1)
        {
          swift_once();
        }

        v101 = qword_27EF919F8;
        v102 = unk_27EF91A00;
        v103 = qword_27EF91A08;
        v104 = unk_27EF91A10;
        *(v99 + v2[8]) = 0;
        *(v99 + v2[9]) = 0;
        *v99 = xmmword_24AAB7050;
        *(v99 + 16) = 1;
        v99[3] = 0;
        v99[4] = 0xE000000000000000;
        v105 = (v99 + v2[7]);
        *v105 = v101;
        v105[1] = v102;
        v105[2] = v103;
        v105[3] = v104;
        v106 = (v99 + v2[10]);
        *v106 = 0x4345525F4C4C4143;
        v106[1] = 0xEB0000000044524FLL;
        v107 = (v99 + v2[11]);
        *v107 = sub_24AA42CFC;
        v107[1] = v94;

        sub_24AA1B750(v103, v104);
        v109 = *(v31 + 16);
        v108 = *(v31 + 24);
        if (v109 >= v108 >> 1)
        {
          v31 = sub_24AA400BC((v108 > 1), v109 + 1, 1, v31);
        }

        *(v31 + 16) = v109 + 1;
        v110 = v31 + 40 * v109;
        v111 = v115;
        v112 = v116;
        *(v110 + 64) = v117;
        *(v110 + 32) = v111;
        *(v110 + 48) = v112;
      }

      else
      {
      }
    }
  }

  return v31;
}