unint64_t sub_21C9FA46C()
{
  result = qword_27CDF4968;
  if (!qword_27CDF4968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4958, &qword_21CBBBE20);
    sub_21C9D6178();
    sub_21C6EADEC(&qword_27CDF4970, &qword_27CDF4978, &qword_21CBBBE28, MEMORY[0x277CE03E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4968);
  }

  return result;
}

unint64_t sub_21C9FA524()
{
  result = qword_27CDF4980;
  if (!qword_27CDF4980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4980);
  }

  return result;
}

uint64_t sub_21C9FA578(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_21C9FA588(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_21C9FA598()
{
  type metadata accessor for PMGroupMemberRowModel();

  return swift_allocObject();
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_21C9FA61C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C9FA664(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C9FA704@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = sub_21CB83A34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF49B0, &qword_21CBBBF98);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF49B8, &qword_21CBBBFA0);
  v9 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v11 = &v28 - v10;
  *v8 = sub_21CB83074();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF49C0, &qword_21CBBBFA8);
  sub_21C9FAA58(v1, &v8[*(v12 + 44)]);
  sub_21CB83A24();
  sub_21C6EADEC(&qword_27CDF49C8, &qword_27CDF49B0, &qword_21CBBBF98, MEMORY[0x277CE1138]);
  sub_21CB844F4();
  (*(v3 + 8))(v5, v2);
  sub_21C6EA794(v8, &qword_27CDF49B0, &qword_21CBBBF98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF49D0, &qword_21CBBBFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA15B0;
  v14 = sub_21CB83CF4();
  *(inited + 32) = v14;
  v15 = sub_21CB83D04();
  *(inited + 33) = v15;
  v16 = sub_21CB83D24();
  sub_21CB83D24();
  if (sub_21CB83D24() != v14)
  {
    v16 = sub_21CB83D24();
  }

  sub_21CB83D24();
  if (sub_21CB83D24() != v15)
  {
    v16 = sub_21CB83D24();
  }

  sub_21CB81F24();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = v30;
  (*(v9 + 32))(v30, v11, v29);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF49D8, &qword_21CBBBFB8);
  v27 = v25 + *(result + 36);
  *v27 = v16;
  *(v27 + 8) = v18;
  *(v27 + 16) = v20;
  *(v27 + 24) = v22;
  *(v27 + 32) = v24;
  *(v27 + 40) = 0;
  return result;
}

uint64_t sub_21C9FAA58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF49E0, &qword_21CBBBFC0);
  MEMORY[0x28223BE20](v3 - 8);
  v21 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v19 - v6;
  if ((*(a1 + 114) & 1) != 0 && *(a1 + 81) == 2)
  {
    v8 = [objc_opt_self() unknownSenderImageName];
    sub_21CB855C4();

    v22 = sub_21CB84BB4();
    v23 = 0;
    sub_21C9D6178();
  }

  else
  {
    v22 = *(a1 + 160);
    v23 = 256;
    sub_21C9D6178();
  }

  sub_21CB83494();
  v9 = v24;
  v10 = v25;
  v11 = v26;
  v12 = v27;
  j__swift_retain(v24);
  *v7 = sub_21CB832F4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF49E8, &qword_21CBBBFC8);
  v19[1] = v19;
  MEMORY[0x28223BE20](v13);
  v19[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF49F0, &qword_21CBBBFD0);
  sub_21C6EADEC(&qword_27CDF49F8, &qword_27CDF49F0, &qword_21CBBBFD0, MEMORY[0x277CE14C0]);
  sub_21CB81FC4();
  v14 = v21;
  sub_21C9FB548(v7, v21);
  v15 = v20;
  *v20 = v9;
  v15[1] = v10;
  *(v15 + 16) = v11;
  *(v15 + 17) = v12;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A00, &qword_21CBBBFD8);
  sub_21C9FB548(v14, v15 + *(v16 + 48));
  v17 = v15 + *(v16 + 64);
  j__swift_retain(v9);
  j__swift_release(v9);
  *v17 = 0;
  v17[8] = 1;
  sub_21C6EA794(v7, &qword_27CDF49E0, &qword_21CBBBFC0);
  sub_21C6EA794(v14, &qword_27CDF49E0, &qword_21CBBBFC0);
  return j__swift_release(v9);
}

uint64_t sub_21C9FADA0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v62 = a2;
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v59 - v8;
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  if (*(a1 + 152) & 1) != 0 && (*(a1 + 80))
  {
    sub_21CB81014();
    sub_21CB81004();
    (*(v4 + 8))(v9, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_21CBA0690;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_21C7C0050();
    *(v12 + 32) = v11;
    *(v12 + 40) = v10;

    v13 = sub_21CB85594();
    v15 = v14;

    *&v68 = v13;
    *(&v68 + 1) = v15;
    sub_21C71F3FC();
    *&v65 = sub_21CB84054();
    *(&v65 + 1) = v16;
    *&v66 = v17 & 1;
    *(&v66 + 1) = v18;
    LOBYTE(v67) = 0;
  }

  else
  {
    *&v68 = *(a1 + 64);
    *(&v68 + 1) = v10;
    sub_21C71F3FC();

    *&v65 = sub_21CB84054();
    *(&v65 + 1) = v20;
    *&v66 = v19 & 1;
    *(&v66 + 1) = v21;
    LOBYTE(v67) = 1;
  }

  sub_21CB83494();
  v22 = v70;
  v23 = *(a1 + 81);
  v24 = *(&v68 + 1);
  v63 = v68;
  v64 = v69;
  if (v23 == 2)
  {
    sub_21C9D5F04(v68, *(&v68 + 1), v69);
    sub_21CB81014();
    v25 = sub_21CB81004();
    v27 = v26;
    (*(v4 + 8))(v9, v3);
    *&v68 = v25;
    *(&v68 + 1) = v27;
    sub_21C71F3FC();
    v28 = sub_21CB84054();
    v30 = v29;
    *&v65 = v28;
    *(&v65 + 1) = v29;
    v32 = v31 & 1;
    *&v66 = v31 & 1;
    *(&v66 + 1) = v33;
    LOBYTE(v67) = 0;
    sub_21C79B058(v28, v29, v31 & 1);

    sub_21CB83494();
    v65 = v68;
    v66 = v69;
    v67 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC150, &unk_21CBA4F60);
    sub_21C7FC578();
LABEL_9:
    sub_21CB83494();
    sub_21C74A72C(v28, v30, v32);

    v41 = *(&v68 + 1);
    v40 = v68;
    v43 = *(&v69 + 1);
    v42 = v69;
    if (v71)
    {
      v44 = 256;
    }

    else
    {
      v44 = 0;
    }

    v45 = v44 | v70;
    sub_21C9FB5D0(v68, *(&v68 + 1), v69, *(&v69 + 1), v70, v71);
    goto LABEL_20;
  }

  if (*(a1 + 82) == 1)
  {
    sub_21C9D5F04(v68, *(&v68 + 1), v69);
    sub_21CB81014();
    v34 = sub_21CB81004();
    v36 = v35;
    (*(v4 + 8))(v9, v3);
    *&v68 = v34;
    *(&v68 + 1) = v36;
    sub_21C71F3FC();
    v28 = sub_21CB84054();
    v30 = v37;
    v32 = v38 & 1;
    *&v65 = v28;
    *(&v65 + 1) = v37;
    *&v66 = v38 & 1;
    *(&v66 + 1) = v39;
    LOBYTE(v67) = 1;
    sub_21C79B058(v28, v37, v38 & 1);

    sub_21CB83494();
    v65 = v68;
    v66 = v69;
    v67 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC150, &unk_21CBA4F60);
    sub_21C7FC578();
    goto LABEL_9;
  }

  v60 = *(&v68 + 1);
  v61 = *(&v69 + 1);
  sub_21C9D5F04(v68, *(&v68 + 1), v69);
  if (v23)
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v45 = 65280;
  }

  else
  {
    sub_21CB81014();
    sub_21CB81014();
    v46 = sub_21CB80FF4();
    v48 = v47;
    v49 = *(v4 + 8);
    v49(v6, v3);
    v49(v9, v3);
    *&v68 = v46;
    *(&v68 + 1) = v48;
    sub_21C71F3FC();
    *&v65 = sub_21CB84054();
    *(&v65 + 1) = v51;
    *&v66 = v50 & 1;
    *(&v66 + 1) = v52;
    v67 = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC150, &unk_21CBA4F60);
    sub_21C7FC578();
    sub_21CB83494();
    v41 = *(&v68 + 1);
    v40 = v68;
    v43 = *(&v69 + 1);
    v42 = v69;
    if (v71)
    {
      v53 = 256;
    }

    else
    {
      v53 = 0;
    }

    v45 = v53 | v70;
    sub_21C9FB5D0(v68, *(&v68 + 1), v69, *(&v69 + 1), v70, v71);
  }

  v24 = v60;
LABEL_20:
  v54 = v63;
  v55 = v64;
  sub_21C9D5F04(v63, v24, v64);
  sub_21C9FB5B8(v40, v41, v42, v43, v45);
  sub_21C9D5F40(v54, v24, v55);
  sub_21C9FB624(v40, v41, v42, v43, v45);
  LOBYTE(v68) = v22;
  v56 = v62;
  v57 = v64;
  *v62 = v63;
  v56[1] = v57;
  *(v56 + 32) = v22;
  *(v56 + 5) = v40;
  *(v56 + 6) = v41;
  *(v56 + 7) = v42;
  *(v56 + 8) = v43;
  *(v56 + 36) = v45;
  sub_21C9FB624(v40, v41, v42, v43, v45);
  return sub_21C9D5F40(v54, v24, v55);
}

uint64_t sub_21C9FB548(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF49E0, &qword_21CBBBFC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9FB5B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE1(a5) != 255)
  {
    return sub_21C9FB5D0(result, a2, a3, a4, a5, BYTE1(a5) & 1);
  }

  return result;
}

uint64_t sub_21C9FB5D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_21C79B058(a1, a2, a3 & 1);
  }

  else
  {

    return sub_21C9D5F04(a1, a2, a3);
  }
}

uint64_t sub_21C9FB624(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE1(a5) != 255)
  {
    return sub_21C9FB63C(result, a2, a3, a4, a5, BYTE1(a5) & 1);
  }

  return result;
}

uint64_t sub_21C9FB63C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_21C74A72C(a1, a2, a3 & 1);
  }

  else
  {

    return sub_21C9D5F40(a1, a2, a3);
  }
}

unint64_t sub_21C9FB690()
{
  result = qword_27CDF4A08;
  if (!qword_27CDF4A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF49D8, &qword_21CBBBFB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF49B0, &qword_21CBBBF98);
    sub_21C6EADEC(&qword_27CDF49C8, &qword_27CDF49B0, &qword_21CBBBF98, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4A08);
  }

  return result;
}

uint64_t sub_21C9FB7B0()
{
  result = sub_21CB855C4();
  qword_27CDF4A10 = result;
  *algn_27CDF4A18 = v1;
  return result;
}

uint64_t sub_21C9FB818(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_21CB81C84();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  if (qword_27CDEA3D8 != -1)
  {
    swift_once();
  }

  return sub_21CB81C74();
}

uint64_t sub_21C9FB8D0()
{
  v0 = sub_21CB81C84();
  __swift_allocate_value_buffer(v0, qword_27CE18580);
  __swift_project_value_buffer(v0, qword_27CE18580);
  if (qword_27CDEA3D8 != -1)
  {
    swift_once();
  }

  return sub_21CB81C74();
}

uint64_t sub_21C9FB98C()
{
  v0 = sub_21CB81C84();
  __swift_allocate_value_buffer(v0, qword_27CE18598);
  __swift_project_value_buffer(v0, qword_27CE18598);
  return sub_21CB81C74();
}

void sub_21C9FBA10(void (*a1)(void **__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21CB85F64();
    sub_21C6E8F4C(0, qword_280E22EE0, 0x277CCA9C8);
    sub_21C9577B8();
    sub_21CB85A14();
    v5 = v31;
    v6 = v32;
    v7 = v33;
    v8 = v34;
    v9 = v35;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v27 = MEMORY[0x277D84F90];
  v25 = v5;
  while (v5 < 0)
  {
    v18 = sub_21CB85FE4();
    if (!v18)
    {
      goto LABEL_25;
    }

    v36 = v18;
    sub_21C6E8F4C(0, qword_280E22EE0, 0x277CCA9C8);
    swift_dynamicCast();
    v17 = v28;
    v16 = v8;
    v26 = v9;
    if (!v28)
    {
LABEL_26:
      v5 = v25;
LABEL_25:
      sub_21C6F1E7C(v5);
      return;
    }

LABEL_19:
    v36 = v17;
    a1(&v28, &v36);
    if (v4)
    {

      sub_21C6F1E7C(v25);

      return;
    }

    v19 = v29;
    if (v29)
    {
      v20 = v28;
      v21 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_21CA4FBC4(0, *(v27 + 2) + 1, 1, v27);
      }

      v23 = *(v27 + 2);
      v22 = *(v27 + 3);
      if (v23 >= v22 >> 1)
      {
        v27 = sub_21CA4FBC4((v22 > 1), v23 + 1, 1, v27);
      }

      *(v27 + 2) = v23 + 1;
      v13 = &v27[24 * v23];
      *(v13 + 4) = v20;
      *(v13 + 5) = v19;
      *(v13 + 6) = v21;
      v4 = 0;
    }

    v8 = v16;
    v5 = v25;
    v9 = v26;
  }

  v14 = v8;
  v15 = v9;
  v16 = v8;
  if (v9)
  {
LABEL_15:
    v26 = (v15 - 1) & v15;
    v17 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v17)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= ((v7 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall PMCredentialExchangeViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = type metadata accessor for PMCredentialExchangeOnboardingView(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = &v30 - v15;
  v31.receiver = v2;
  v31.super_class = PMCredentialExchangeViewController;
  objc_msgSendSuper2(&v31, sel_viewWillAppear_, a1, v14);
  sub_21CB80764();
  swift_allocObject();
  sub_21CB80754();
  v17 = sub_21CB818C4();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = [v2 exportedCredentialData];
  if (v18)
  {
    v19 = v18;
    v20 = sub_21CB80C84();
    v22 = v21;

    sub_21C9FC5A8();
    sub_21CB80744();
    sub_21C6EA794(v16, &qword_27CDEFFE8, &qword_21CBAE1B0);
    sub_21C7A34C0(v20, v22);
    sub_21CA051A4(v12, v16);
  }

  sub_21C6EDBAC(v16, v9, &qword_27CDEFFE8, &qword_21CBAE1B0);
  v23 = [v2 exporterBundleID];
  v24 = sub_21CB855C4();
  v26 = v25;

  v27 = v2;
  sub_21C9FC1F4(v9, v24, v26, v27, v6);
  v28 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A20, &unk_21CBBC048));
  v29 = sub_21CB833B4();
  [v27 presentViewController:v29 animated:1 completion:0];

  sub_21C6EA794(v16, &qword_27CDEFFE8, &qword_21CBAE1B0);
}

uint64_t type metadata accessor for PMCredentialExchangeOnboardingView(uint64_t a1)
{
  result = qword_27CDF4A50;
  if (!qword_27CDF4A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C9FC1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v34 = a3;
  v35 = a4;
  v32 = a1;
  v33 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for PMCredentialExchangeOnboardingView(0);
  v13 = v12[7];
  *(a5 + v13) = swift_getKeyPath(byte_21CBBC280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v14 = v12[8];
  *(a5 + v14) = swift_getKeyPath(byte_21CBBC2B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v15 = v12[9];
  *(a5 + v15) = swift_getKeyPath(aX_54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  v16 = v12[10];
  v17 = sub_21CB818C4();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  sub_21C6EDBAC(v11, v8, &qword_27CDEFFE8, &qword_21CBAE1B0);
  sub_21CB84D44();
  sub_21C6EA794(v11, &qword_27CDEFFE8, &qword_21CBAE1B0);
  v18 = a5 + v12[11];
  LOBYTE(v36) = 0;
  sub_21CB84D44();
  v19 = *(&v38 + 1);
  *v18 = v38;
  *(v18 + 1) = v19;
  v20 = a5 + v12[12];
  v36 = 0;
  v37 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
  sub_21CB84D44();
  v21 = v39;
  *v20 = v38;
  *(v20 + 2) = v21;
  v22 = a5 + v12[13];
  v36 = 0;
  v37 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A78, &qword_21CBBC088);
  sub_21CB84D44();
  v23 = v39;
  *v22 = v38;
  *(v22 + 2) = v23;
  v24 = a5 + v12[14];
  LOBYTE(v36) = 0;
  sub_21CB84D44();
  v25 = *(&v38 + 1);
  *v24 = v38;
  *(v24 + 1) = v25;
  v26 = a5 + v12[15];
  LOBYTE(v36) = 0;
  sub_21CB84D44();
  v27 = *(&v38 + 1);
  *v26 = v38;
  *(v26 + 1) = v27;
  *(a5 + v12[16]) = 0;
  v28 = v32;
  sub_21C6EDBAC(v32, v11, &qword_27CDEFFE8, &qword_21CBAE1B0);
  sub_21C6EA794(a5 + v16, &qword_27CDF4A48, &qword_21CBBC058);
  sub_21C6EDBAC(v11, v8, &qword_27CDEFFE8, &qword_21CBAE1B0);
  sub_21CB84D44();
  sub_21C6EA794(v11, &qword_27CDEFFE8, &qword_21CBAE1B0);
  v29 = v34;
  *a5 = v33;
  a5[1] = v29;
  a5[2] = v35;
  v30 = [objc_allocWithZone(MEMORY[0x277D49AD8]) init];
  result = sub_21C6EA794(v28, &qword_27CDEFFE8, &qword_21CBAE1B0);
  a5[3] = v30;
  return result;
}

unint64_t sub_21C9FC5A8()
{
  result = qword_27CDF4A28;
  if (!qword_27CDF4A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
    sub_21CA054BC(&qword_27CDF4A30, MEMORY[0x277CBA840], MEMORY[0x277CBA850]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4A28);
  }

  return result;
}

id PMCredentialExchangeViewController.init(exportedCredentialData:exporterBundleID:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_21CB80C64();
    sub_21C7902FC(a1, a2);
  }

  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = sub_21CB85584();

  v7 = [v5 initWithExportedCredentialData:v2 exporterBundleID:v6];

  return v7;
}

{
  v2[OBJC_IVAR___PMCredentialExchangeViewController_viewDidCancel] = 0;
  if (a2 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_21CB80C64();
  }

  v6 = sub_21CB85584();

  v9.receiver = v2;
  v9.super_class = PMCredentialExchangeViewController;
  v7 = objc_msgSendSuper2(&v9, sel_initWithExportedCredentialData_exporterBundleID_, v5, v6);
  sub_21C7902FC(a1, a2);

  return v7;
}

void PMCredentialExchangeViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR___PMCredentialExchangeViewController_viewDidCancel) = 0;
  sub_21CB861C4();
  __break(1u);
}

void __swiftcall PMCredentialExchangeViewController.init(nibName:bundle:)(PMCredentialExchangeViewController *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_21CB85584();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

uint64_t sub_21C9FCB64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v44 = type metadata accessor for PMCredentialExchangeOnboardingView(0);
  v55 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v56 = v3;
  v57 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_21CB83524();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v42 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A80, &qword_21CBBC118);
  MEMORY[0x28223BE20](v43);
  v6 = &v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A88, &qword_21CBBC120);
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v45 = &v39 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A90, &qword_21CBBC128);
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v46 = &v39 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A98, &qword_21CBBC130);
  MEMORY[0x28223BE20](v53);
  v54 = &v39 - v10;
  v59 = v1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4AA0, &qword_21CBBC138);
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4AA8, &qword_21CBBC140);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4AB0, &qword_21CBBC148);
  v12 = type metadata accessor for PMOnboardingView(255);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4AB8, &qword_21CBBC150);
  v14 = sub_21CA054BC(&qword_27CDEE360, type metadata accessor for PMOnboardingView, &unk_21CBB3918);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4AC0, &qword_21CBBC158);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4AC8, &qword_21CBBC160);
  v17 = sub_21C6EADEC(&qword_27CDF4AD0, &qword_27CDF4AC8, &qword_21CBBC160, MEMORY[0x277CDD7A8]);
  v60 = v16;
  v61 = v17;
  v18 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = v15;
  v61 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v60 = v12;
  v61 = v13;
  v21 = v43;
  v62 = v14;
  v63 = v20;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = sub_21CA05504();
  v60 = v40;
  v61 = v11;
  v62 = v22;
  v63 = v23;
  swift_getOpaqueTypeConformance2();
  sub_21CB82924();
  KeyPath = swift_getKeyPath(byte_21CBBC168);
  v25 = &v6[*(v21 + 36)];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4AE8, &qword_21CBBC190);
  sub_21C728D50(v25 + *(v26 + 28));
  *v25 = KeyPath;
  sub_21CB83514();
  LOBYTE(v25) = sub_21CB83CC4();
  sub_21CB83CB4();
  sub_21CB83CB4();
  if (sub_21CB83CB4() != v25)
  {
    sub_21CB83CB4();
  }

  v27 = sub_21CA05660();
  v28 = v45;
  sub_21CB84534();
  (*(v50 + 8))(v18, v52);
  sub_21C6EA794(v6, &qword_27CDF4A80, &qword_21CBBC118);
  v60 = v21;
  v61 = v27;
  swift_getOpaqueTypeConformance2();
  v29 = v46;
  v30 = v48;
  sub_21CB84644();
  (*(v47 + 8))(v28, v30);
  v31 = v57;
  sub_21CA05744(v2, v57);
  v32 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v33 = swift_allocObject();
  sub_21CA07E44(v31, v33 + v32, type metadata accessor for PMCredentialExchangeOnboardingView);
  v34 = v54;
  (*(v49 + 32))(v54, v29, v51);
  v35 = (v34 + *(v53 + 36));
  *v35 = sub_21CA057A8;
  v35[1] = v33;
  v35[2] = 0;
  v35[3] = 0;
  v36 = sub_21CB852C4();
  type metadata accessor for PMGlobalAnimationNamespaceContainer(0);
  v37 = swift_allocObject();
  sub_21CB81104();
  *(v37 + 16) = v36;
  sub_21CA057DC();
  sub_21CA054BC(&qword_27CDEADC8, type metadata accessor for PMGlobalAnimationNamespaceContainer, &unk_21CBA8E84);
  sub_21CB84164();

  return sub_21C6EA794(v34, &qword_27CDF4A98, &qword_21CBBC130);
}

uint64_t sub_21C9FD2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v39 = a2;
  v2 = type metadata accessor for PMCredentialExchangeOnboardingView(0);
  v3 = v2 - 8;
  v34 = *(v2 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMOnboardingView(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4AA8, &qword_21CBBC140);
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v34 - v12;
  sub_21CA890BC(v48);
  sub_21CB81014();
  v13 = sub_21CB81004();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  v16 = v35;
  sub_21CA05744(v35, &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v18 = swift_allocObject();
  sub_21CA07E44(&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for PMCredentialExchangeOnboardingView);
  v19 = v48[2];
  *(v11 + 1) = v48[1];
  *(v11 + 2) = v19;
  *(v11 + 24) = v49;
  *v11 = v48[0];
  *(v11 + 7) = v13;
  *(v11 + 8) = v15;
  *(v11 + 9) = sub_21CA07184;
  *(v11 + 10) = v18;
  v11[88] = 0;
  *(v11 + 6) = 0u;
  *(v11 + 7) = 0u;
  v11[128] = 0;
  v20 = *(v9 + 28);
  *&v11[v20] = swift_getKeyPath(byte_21CBBC168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v41 = v16;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4AB8, &qword_21CBBC150);
  v22 = sub_21CA054BC(&qword_27CDEE360, type metadata accessor for PMOnboardingView, &unk_21CBB3918);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4AC0, &qword_21CBBC158);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4AC8, &qword_21CBBC160);
  v25 = sub_21C6EADEC(&qword_27CDF4AD0, &qword_27CDF4AC8, &qword_21CBBC160, MEMORY[0x277CDD7A8]);
  v42 = v24;
  v43 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v23;
  v43 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v36;
  sub_21CB84894();
  sub_21C85BC4C(v11);
  v29 = v16 + *(v3 + 52);
  v30 = *v29;
  v31 = *(v29 + 8);
  v46 = v30;
  v47 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  v40 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4AB0, &qword_21CBBC148);
  v42 = v9;
  v43 = v21;
  v44 = v22;
  v45 = v27;
  swift_getOpaqueTypeConformance2();
  sub_21CA05504();
  v32 = v37;
  sub_21CB84554();

  return (*(v38 + 8))(v28, v32);
}

uint64_t sub_21C9FD880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v3 = sub_21CB83604();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4AC8, &qword_21CBBC160);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4AC0, &qword_21CBBC158);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - v10;
  sub_21CB835C4();
  v15[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBBE0, &unk_21CBC5190);
  sub_21C6EADEC(&qword_27CDEBBE8, &qword_27CDEBBE0, &unk_21CBC5190, MEMORY[0x277CDF028]);
  sub_21CB82194();
  v12 = sub_21C6EADEC(&qword_27CDF4AD0, &qword_27CDF4AC8, &qword_21CBBC160, MEMORY[0x277CDD7A8]);
  MEMORY[0x21CF131E0](v7, v4, v12);
  (*(v5 + 8))(v7, v4);
  v15[6] = v4;
  v15[7] = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF131E0](v11, v8, OpaqueTypeConformance2);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21C9FDB40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  v62 = type metadata accessor for PMCredentialExchangeOnboardingView(0);
  v64 = *(v62 - 8);
  v63 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  v61 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4B28, &qword_21CBBC1C8);
  MEMORY[0x28223BE20](v60);
  v5 = v52 - v4;
  v52[1] = v52 - v4;
  v6 = sub_21CB81024();
  v53 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for PMOnboardingView(0);
  MEMORY[0x28223BE20](v66);
  v11 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4B30, &qword_21CBBC1D0);
  v67 = *(v12 - 8);
  v68 = v12;
  MEMORY[0x28223BE20](v12);
  v65 = v52 - v13;
  v59 = sub_21CB84C14();
  v14 = sub_21CA002EC();
  v57 = v15;
  v58 = v14;
  sub_21CB81014();
  v56 = sub_21CB81004();
  v55 = v16;
  v17 = *(v7 + 8);
  v52[2] = v7 + 8;
  v54 = v17;
  v17(v9, v6);
  sub_21CA021D0(v5);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4B38, &qword_21CBBC1D8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4B40, &qword_21CBBC1E0);
  v20 = sub_21CB836B4();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4B48, &qword_21CBBC1E8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4B50, &unk_21CBBC1F0);
  v23 = sub_21C6EADEC(&qword_27CDF4B58, &qword_27CDF4B50, &unk_21CBBC1F0, MEMORY[0x277CDE5A0]);
  *&v72 = v22;
  *(&v72 + 1) = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v72 = v21;
  *(&v72 + 1) = OpaqueTypeConformance2;
  v25 = v2;
  v26 = swift_getOpaqueTypeConformance2();
  *&v72 = v19;
  *(&v72 + 1) = v20;
  v73 = v26;
  v74 = MEMORY[0x277CDE0D0];
  v27 = swift_getOpaqueTypeConformance2();
  *&v72 = v18;
  *(&v72 + 1) = v27;
  swift_getOpaqueTypeConformance2();
  v28 = sub_21CB84F14();
  sub_21CB81014();
  v29 = sub_21CB81004();
  v31 = v30;
  v32 = v9;
  v33 = v62;
  v54(v32, v53);
  v34 = v61;
  sub_21CA05744(v25, v61);
  v35 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v36 = swift_allocObject();
  sub_21CA07E44(v34, v36 + v35, type metadata accessor for PMCredentialExchangeOnboardingView);
  v37 = v25 + *(v33 + 48);
  v38 = *(v37 + 16);
  v72 = *v37;
  v73 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
  sub_21CB84D54();
  v39 = v71;
  if (v71)
  {
  }

  v40 = v58;
  *v11 = v59;
  *(v11 + 1) = v40;
  v41 = v56;
  *(v11 + 2) = v57;
  *(v11 + 3) = v41;
  *(v11 + 4) = v55;
  *(v11 + 5) = v28;
  *(v11 + 24) = 1;
  *(v11 + 7) = v29;
  *(v11 + 8) = v31;
  *(v11 + 9) = sub_21CA071E4;
  *(v11 + 10) = v36;
  v11[88] = v39 == 0;
  *(v11 + 6) = 0u;
  *(v11 + 7) = 0u;
  v11[128] = 0;
  v42 = *(v66 + 28);
  *&v11[v42] = swift_getKeyPath(byte_21CBBC168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v43 = v25 + *(v33 + 60);
  v44 = *v43;
  v45 = *(v43 + 8);
  LOBYTE(v70) = v44;
  v71 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  v46 = sub_21CB84D74();
  MEMORY[0x28223BE20](v46);
  sub_21CA054BC(&qword_27CDEE360, type metadata accessor for PMOnboardingView, &unk_21CBB3918);
  sub_21CA0560C();
  v47 = v65;
  sub_21CB84554();

  sub_21C85BC4C(v11);
  LOBYTE(v42) = sub_21CB83CF4();
  v48 = sub_21CB82934();
  v49 = v69;
  (*(v67 + 32))(v69, v47, v68);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4AB0, &qword_21CBBC148);
  v51 = v49 + *(result + 36);
  *v51 = v48;
  *(v51 + 8) = v42;
  return result;
}

uint64_t sub_21C9FE298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, char *, uint64_t, uint64_t))
{
  v7 = type metadata accessor for PMCredentialExchangeOnboardingView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_21CB858E4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_21CA05744(a1, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CB858B4();
  v14 = sub_21CB858A4();
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  sub_21CA07E44(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for PMCredentialExchangeOnboardingView);
  a4(0, 0, v12, a3, v16);
}

uint64_t sub_21C9FE468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a4;
  sub_21CB858B4();
  v4[21] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[22] = v6;
  v4[23] = v5;

  return MEMORY[0x2822009F8](sub_21C9FE500, v6, v5);
}

uint64_t sub_21C9FE500()
{
  v1 = *(v0[20] + 24);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21C9FE620;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4B18, &qword_21CBBC1B0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21C82D1CC;
  v0[13] = &block_descriptor_25;
  v0[14] = v2;
  [v1 getTopFraudTargetsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21C9FE620()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_21C9FE728, v2, v1);
}

uint64_t sub_21C9FE728()
{
  v1 = v0[20];

  v2 = v0[18];
  v3 = [v2 highPriorityFraudTargets];
  v4 = sub_21CB85824();

  v5 = [v2 financialFraudTargets];
  v6 = sub_21CB85824();

  sub_21CAE8F10(v6);
  v7 = sub_21CB009AC(v4);

  v8 = [v2 fraudTargets];
  v9 = sub_21CB85824();

  v10 = sub_21CB009AC(v9);

  v11 = (v1 + *(type metadata accessor for PMCredentialExchangeOnboardingView(0) + 52));
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v0[10] = *v11;
  v0[11] = v13;
  v0[12] = v14;
  v0[18] = v7;
  v0[19] = v10;
  sub_21CA07104(v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4B20, &unk_21CBBC1B8);
  sub_21CB84D64();

  sub_21CA07144(v12);

  v15 = v0[1];

  return v15();
}

uint64_t sub_21C9FE8F0()
{
  type metadata accessor for PMCredentialExchangeOnboardingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
  sub_21CB84D54();
  if (!v5)
  {
    return 0;
  }

  v0 = sub_21C9FE9CC(v4, v5);

  if (!v0)
  {
    return 0;
  }

  v1 = [v0 localizedShortName];
  v2 = sub_21CB855C4();

  return v2;
}

id sub_21C9FE9CC(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  return sub_21CA050C8(a1, a2, 0);
}

uint64_t sub_21C9FEB58()
{
  v1 = sub_21CB82054();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v34[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v34[-v6];
  MEMORY[0x28223BE20](v8);
  v10 = &v34[-v9];
  v11 = (v0 + *(type metadata accessor for PMCredentialExchangeOnboardingView(0) + 48));
  v12 = *(v11 + 2);
  v38 = *v11;
  v39 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
  sub_21CB84D54();
  if (!v37)
  {
    return 0;
  }

  [objc_opt_self() headerIconSize];
  v14 = v13;
  v16 = v15;
  sub_21C74F0F8(v10);
  sub_21C74F0F8(v7);
  v17 = *MEMORY[0x277CDF3D0];
  v36 = v10;
  v18 = *(v2 + 104);
  v18(v4, v17, v1);
  v35 = sub_21CB82044();
  v19 = *(v2 + 8);
  v19(v4, v1);
  v19(v7, v1);
  v20 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v21 = sub_21CB85584();

  v22 = [v20 initWithBundleIdentifier_];

  v23 = [objc_opt_self() mainScreen];
  [v23 scale];
  v25 = v24;

  v26 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:v14 scale:{v16, v25}];
  v18(v7, *MEMORY[0x277CDF3C0], v1);
  v27 = v36;
  v28 = sub_21CB82044();
  v19(v7, v1);
  [v26 setAppearance_];
  [v26 setDrawBorder_];
  v29 = [v22 prepareImageForDescriptor_];
  if (!v29)
  {
    goto LABEL_7;
  }

  v30 = v29;
  v31 = [v29 CGImage];
  if (!v31)
  {

LABEL_7:
    [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    goto LABEL_8;
  }

  v32 = v31;
  [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

  v26 = v30;
  v22 = v32;
LABEL_8:

  v19(v27, v1);
  return sub_21CB84BA4();
}

uint64_t sub_21C9FEF34(uint64_t a1)
{
  v2 = type metadata accessor for PMCredentialExchangeOnboardingView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_21CB81F14();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81EF4();
  sub_21CA05744(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_21CA07E44(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for PMCredentialExchangeOnboardingView);
  return MEMORY[0x21CF148B0](v7, sub_21CA07844, v9);
}

id sub_21C9FF09C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v1[OBJC_IVAR___PMCredentialExchangeViewController_viewDidCancel] = 1;
  result = [v1 delegate];
  if (result)
  {
    [result viewControllerDidCancel_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21C9FF11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  sub_21CB858B4();
  v4[29] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[30] = v6;
  v4[31] = v5;

  return MEMORY[0x2822009F8](sub_21C9FF204, v6, v5);
}

uint64_t sub_21C9FF204()
{
  v1 = *(v0 + 224);
  v2 = type metadata accessor for PMCredentialExchangeOnboardingView(0);
  *(v0 + 288) = *(v2 + 40);
  *(v0 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A48, &qword_21CBBC058);
  sub_21CB84D54();
  v3 = sub_21CB818C4();
  *(v0 + 264) = v3;
  v4 = *(v3 - 8);
  *(v0 + 272) = v4;
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    v5 = *(v0 + 200);
    sub_21C6EA794(*(v0 + 224), &qword_27CDEFFE8, &qword_21CBAE1B0);
    v6 = *(v5 + 16);
    v7 = [v6 delegate];
    *(v0 + 280) = v7;
    if (v7)
    {
      v8 = v7;
      v9 = *(v0 + 200) + *(v2 + 48);
      v10 = *(v9 + 16);
      *(v0 + 144) = *v9;
      *(v0 + 160) = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
      sub_21CB84D54();
      if (*(v0 + 176))
      {
        v11 = sub_21CB85584();

        [v8 userDidSelectImportingDestinationWithBundleIdentfier:v11 exportViewController:v6];

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 184;
        *(v0 + 24) = sub_21C9FF6D8;
        v12 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4B68, &qword_21CBBC228);
        *(v0 + 80) = MEMORY[0x277D85DD0];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_21C9FFA60;
        *(v0 + 104) = &block_descriptor_38;
        *(v0 + 112) = v12;
        [v8 getExportedCredentialData_];

        return MEMORY[0x282200938](v0 + 16);
      }

      if (qword_27CDEA3F8 != -1)
      {
        swift_once();
      }

      v19 = sub_21CB81C84();
      __swift_project_value_buffer(v19, qword_27CE18598);
      v16 = sub_21CB81C64();
      v20 = sub_21CB85B04();
      if (os_log_type_enabled(v16, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_21C6E5000, v16, v20, "Tried to continue export with no selected importer.", v21, 2u);
        MEMORY[0x21CF16D90](v21, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    else
    {

      if (qword_27CDEA3F8 != -1)
      {
        swift_once();
      }

      v15 = sub_21CB81C84();
      __swift_project_value_buffer(v15, qword_27CE18598);
      v16 = sub_21CB81C64();
      v17 = sub_21CB85B04();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_21C6E5000, v16, v17, "Tried to continue export no export view controller delegate.", v18, 2u);
        MEMORY[0x21CF16D90](v18, -1, -1);
      }
    }
  }

  else
  {
    v13 = *(v0 + 224);

    sub_21C6EA794(v13, &qword_27CDEFFE8, &qword_21CBAE1B0);
    v14 = *(v0 + 200);
    *(swift_task_alloc() + 16) = v14;
    sub_21CB85254();
    sub_21CB82524();
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_21C9FF6D8()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);

  return MEMORY[0x2822009F8](sub_21C9FF7E0, v2, v1);
}

uint64_t sub_21C9FF7E0()
{

  v2 = v0[23];
  v1 = v0[24];
  if (v1 >> 60 == 15)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_21CB80764();
    swift_allocObject();
    sub_21CB80754();
    sub_21CA054BC(&qword_27CDF4A30, MEMORY[0x277CBA840], MEMORY[0x277CBA850]);
    sub_21CB80744();
    v3 = v0[33];
    v4 = v0[34];
    v6 = v0[26];
    v5 = v0[27];

    (*(v4 + 56))(v5, 0, 1, v3);
    sub_21C6EDBAC(v5, v6, &qword_27CDEFFE8, &qword_21CBAE1B0);
    sub_21CB84D64();
    sub_21C7902FC(v2, v1);
    swift_unknownObjectRelease();
    sub_21C6EA794(v5, &qword_27CDEFFE8, &qword_21CBAE1B0);
  }

  v7 = v0[25];
  *(swift_task_alloc() + 16) = v7;
  sub_21CB85254();
  sub_21CB82524();

  v8 = v0[1];

  return v8();
}

uint64_t sub_21C9FFA60(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    a2 = sub_21CB80C84();
    v6 = v5;
  }

  else
  {
    v6 = 0xF000000000000000;
  }

  v7 = *(*(v3 + 64) + 40);
  *v7 = a2;
  v7[1] = v6;

  return MEMORY[0x282200948](v3);
}

uint64_t sub_21C9FFAF0(uint64_t a1)
{
  type metadata accessor for PMCredentialExchangeOnboardingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21C9FFB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[28] = a4;
  v5 = sub_21CB81024();
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  sub_21CB858B4();
  v4[32] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v4[33] = v7;
  v4[34] = v6;

  return MEMORY[0x2822009F8](sub_21C9FFC60, v7, v6);
}

uint64_t sub_21C9FFC60()
{
  v1 = *(v0 + 224);
  v3 = *v1;
  v2 = v1[1];
  objc_allocWithZone(MEMORY[0x277CC1E70]);

  v4 = sub_21CA050C8(v3, v2, 0);
  v5 = MEMORY[0x277D84F98];
  if (v4)
  {
    v7 = *(v0 + 240);
    v6 = *(v0 + 248);
    v8 = *(v0 + 232);

    *(v0 + 304) = 1037;
    sub_21CB86034();
    v9 = sub_21CA0011C();
    v10 = MEMORY[0x277D837D0];
    *(v0 + 120) = MEMORY[0x277D837D0];
    *(v0 + 96) = v9;
    *(v0 + 104) = v11;
    sub_21C731A9C((v0 + 96), (v0 + 128));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_21C8D4FD8((v0 + 128), v0 + 16, isUniquelyReferenced_nonNull_native);
    sub_21C8E1980(v0 + 16);
    v13 = v5;
    *(v0 + 308) = 1030;
    sub_21CB86034();
    sub_21CB81014();
    v14 = sub_21CB81004();
    v16 = v15;
    (*(v7 + 8))(v6, v8);
    *(v0 + 184) = v10;
    *(v0 + 160) = v14;
    *(v0 + 168) = v16;
    sub_21C731A9C((v0 + 160), (v0 + 192));
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_21C8D4FD8((v0 + 192), v0 + 56, v17);
    sub_21C8E1980(v0 + 56);
    v5 = v13;
  }

  *(v0 + 280) = v5;
  v18 = swift_task_alloc();
  *(v0 + 288) = v18;
  *v18 = v0;
  v18[1] = sub_21C9FFEB4;

  return sub_21CA8A978(v5);
}

uint64_t sub_21C9FFEB4()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {

    v3 = *(v2 + 264);
    v4 = *(v2 + 272);
    v5 = sub_21CA000B0;
  }

  else
  {
    v3 = *(v2 + 264);
    v4 = *(v2 + 272);
    v5 = sub_21C9FFFD0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21C9FFFD0()
{
  v1 = *(v0 + 224);

  *(swift_task_alloc() + 16) = v1;
  sub_21CB85254();
  sub_21CB82524();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21CA000B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CA0011C()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() currentDevice];
  [v4 deviceClass];

  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_21CA00270(uint64_t a1)
{
  type metadata accessor for PMCredentialExchangeOnboardingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21CA002EC()
{
  v54 = sub_21CB81024();
  v1 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v48 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v44 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  MEMORY[0x28223BE20](v12);
  v55 = &v44 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  MEMORY[0x28223BE20](v17 - 8);
  v52 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v44 - v20;
  v22 = *(type metadata accessor for PMCredentialExchangeOnboardingView(0) + 40);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A48, &qword_21CBBC058);
  v53 = v0;
  v50 = v23;
  v51 = v22;
  sub_21CB84D54();
  v24 = sub_21CB818C4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v49 = v24;
  v46 = v25;
  v47 = v26;
  v27 = (v26)(v21, 1);
  sub_21C6EA794(v21, &qword_27CDEFFE8, &qword_21CBAE1B0);
  if (v27 == 1)
  {
    sub_21CB81014();
    v28 = sub_21CB81004();
    (*(v1 + 8))(v16, v54);
    return v28;
  }

  v45 = v16;
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v44 = sub_21CB81034();
  v29 = *(v44 - 8);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v31 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  v32 = v48;
  sub_21CB81014();
  sub_21CB80FE4();
  v33 = *(v1 + 8);
  v34 = v32;
  v35 = v54;
  v33(v34, v54);
  v33(v5, v35);
  v33(v8, v35);
  v33(v11, v35);
  swift_setDeallocating();
  (*(v29 + 8))(v31 + v30, v44);
  swift_deallocClassInstance();
  v36 = v45;
  sub_21CB81004();
  v33(v55, v35);
  v33(v36, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_21CBA0690;
  v38 = v52;
  sub_21CB84D54();
  v39 = v49;
  result = v47(v38, 1, v49);
  if (result != 1)
  {
    v41 = sub_21CB818B4();
    (*(v46 + 8))(v38, v39);
    v42 = *(v41 + 16);

    v43 = MEMORY[0x277D83C10];
    *(v37 + 56) = MEMORY[0x277D83B88];
    *(v37 + 64) = v43;
    *(v37 + 32) = v42;
    v28 = sub_21CB85594();

    return v28;
  }

  __break(1u);
  return result;
}

uint64_t sub_21CA008FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PMCredentialExchangeOnboardingView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v20 = sub_21C9FEB58();
  v19 = sub_21CA00A5C();
  v8 = v7;
  v9 = sub_21CA01030();
  v11 = v10;
  v12 = sub_21C9FE8F0();
  v14 = v13;
  sub_21CA05744(a1, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  result = sub_21CA07E44(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for PMCredentialExchangeOnboardingView);
  v18 = v19;
  *a2 = v20;
  a2[1] = v18;
  a2[2] = v8;
  a2[3] = v9;
  a2[4] = v11;
  a2[5] = v12;
  a2[6] = v14;
  a2[7] = sub_21CA0729C;
  a2[8] = v16;
  return result;
}

uint64_t sub_21CA00A5C()
{
  v0 = sub_21CB818C4();
  v1 = *(v0 - 8);
  v45 = v0;
  v46 = v1;
  MEMORY[0x28223BE20](v0);
  v41 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v41 - v4;
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  MEMORY[0x28223BE20](v18);
  v43 = &v41 - v19;
  MEMORY[0x28223BE20](v20);
  v44 = &v41 - v21;
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v42 = sub_21CB81034();
  v22 = *(v42 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FE4();
  v25 = *(v6 + 8);
  v25(v8, v5);
  v25(v11, v5);
  v25(v14, v5);
  v25(v17, v5);
  swift_setDeallocating();
  (*(v22 + 8))(v24 + v23, v42);
  v26 = v45;
  swift_deallocClassInstance();
  v27 = v44;
  sub_21CB81004();
  v25(v43, v5);
  v25(v27, v5);
  v28 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_21CBA15B0;
  type metadata accessor for PMCredentialExchangeOnboardingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A48, &qword_21CBBC058);
  v30 = v47;
  sub_21CB84D54();
  v31 = v30;
  if ((*(v28 + 48))(v30, 1, v26))
  {
    sub_21C6EA794(v30, &qword_27CDEFFE8, &qword_21CBAE1B0);
    v32 = 0;
  }

  else
  {
    v33 = v41;
    (*(v28 + 16))(v41, v31, v26);
    sub_21C6EA794(v31, &qword_27CDEFFE8, &qword_21CBAE1B0);
    v34 = sub_21CB818B4();
    (*(v28 + 8))(v33, v26);
    v32 = *(v34 + 16);
  }

  v35 = MEMORY[0x277D83C10];
  *(v29 + 56) = MEMORY[0x277D83B88];
  *(v29 + 64) = v35;
  *(v29 + 32) = v32;
  v36 = sub_21C9FE8F0();
  v38 = v37;
  *(v29 + 96) = MEMORY[0x277D837D0];
  *(v29 + 104) = sub_21C7C0050();
  *(v29 + 72) = v36;
  *(v29 + 80) = v38;
  v39 = sub_21CB85594();

  return v39;
}

unint64_t sub_21CA01030()
{
  v0 = sub_21CB81024();
  v88 = *(v0 - 8);
  v89 = v0;
  MEMORY[0x28223BE20](v0);
  v86 = &v80 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v4 = &v80 - v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v80 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v80 - v9;
  MEMORY[0x28223BE20](v11);
  v87 = &v80 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v80 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v80 - v17;
  v19 = sub_21CB818C4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PMCredentialExchangeOnboardingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A48, &qword_21CBBC058);
  sub_21CB84D54();
  v23 = v19;
  v24 = v20;
  if ((*(v20 + 48))(v18, 1, v23) == 1)
  {
    sub_21C6EA794(v18, &qword_27CDEFFE8, &qword_21CBAE1B0);
    return 0;
  }

  v25 = *(v20 + 32);
  v85 = v23;
  v25(v22, v18, v23);
  v26 = sub_21CA03A60();
  v27 = v26[2];
  if (v27 <= 1)
  {
    if (!v27)
    {

      if (qword_27CDEA3F8 == -1)
      {
LABEL_17:
        v48 = sub_21CB81C84();
        __swift_project_value_buffer(v48, qword_27CE18598);
        v49 = sub_21CB81C64();
        v50 = sub_21CB85AF4();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_21C6E5000, v49, v50, "Export view brought up with no selected credentials!", v51, 2u);
          MEMORY[0x21CF16D90](v51, -1, -1);
        }

        goto LABEL_20;
      }

LABEL_32:
      swift_once();
      goto LABEL_17;
    }

    if (v27 == 1)
    {
      v28 = v22;
      sub_21CB81014();
      sub_21CB81004();
      (*(v88 + 8))(v15, v89);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v22 = swift_allocObject();
      *(v22 + 1) = xmmword_21CBA15B0;
      v29 = sub_21C9FE8F0();
      v24 = v30;
      v31 = MEMORY[0x277D837D0];
      *(v22 + 7) = MEMORY[0x277D837D0];
      v32 = sub_21C7C0050();
      *(v22 + 8) = v32;
      *(v22 + 4) = v29;
      *(v22 + 5) = v24;
      *(v22 + 12) = v31;
      *(v22 + 13) = v32;
      if (v26[2])
      {
        v34 = v26[4];
        v33 = v26[5];

        *(v22 + 9) = v34;
        *(v22 + 10) = v33;
LABEL_25:
        v47 = sub_21CB85594();

        (*(v20 + 8))(v28, v85);
        return v47;
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_15:

LABEL_20:
    (*(v24 + 8))(v22, v85);
    return 0;
  }

  if (v27 == 2)
  {
    v28 = v22;
    sub_21CB81014();
    sub_21CB81004();
    (*(v88 + 8))(v15, v89);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_21CBA15A0;
    v53 = sub_21C9FE8F0();
    v55 = v54;
    v56 = MEMORY[0x277D837D0];
    *(v52 + 56) = MEMORY[0x277D837D0];
    result = sub_21C7C0050();
    *(v52 + 64) = result;
    *(v52 + 32) = v53;
    *(v52 + 40) = v55;
    *(v52 + 96) = v56;
    *(v52 + 104) = result;
    v57 = v26[2];
    if (v57)
    {
      v58 = v26[5];
      *(v52 + 72) = v26[4];
      *(v52 + 80) = v58;
      *(v52 + 136) = v56;
      *(v52 + 144) = result;
      if (v57 != 1)
      {
        v60 = v26[6];
        v59 = v26[7];

        *(v52 + 112) = v60;
        *(v52 + 120) = v59;
        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v27 != 3)
  {
    goto LABEL_15;
  }

  v83 = v22;
  v84 = v20;
  v35 = *(sub_21CB818B4() + 16);

  if (v35 == 3)
  {
    sub_21CB81014();
    sub_21CB81004();
    (*(v88 + 8))(v15, v89);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_21CBA1590;
    v37 = sub_21C9FE8F0();
    v39 = v38;
    v40 = MEMORY[0x277D837D0];
    *(v36 + 56) = MEMORY[0x277D837D0];
    result = sub_21C7C0050();
    *(v36 + 64) = result;
    *(v36 + 32) = v37;
    *(v36 + 40) = v39;
    *(v36 + 96) = v40;
    *(v36 + 104) = result;
    v42 = v26[2];
    if (v42)
    {
      v43 = v26[5];
      *(v36 + 72) = v26[4];
      *(v36 + 80) = v43;
      *(v36 + 136) = v40;
      *(v36 + 144) = result;
      if (v42 != 1)
      {
        v44 = v26[7];
        *(v36 + 112) = v26[6];
        *(v36 + 120) = v44;
        *(v36 + 176) = v40;
        *(v36 + 184) = result;
        if (v42 >= 3)
        {
          v46 = v26[8];
          v45 = v26[9];

          *(v36 + 152) = v46;
          *(v36 + 160) = v45;
          v47 = sub_21CB85594();

          (*(v84 + 8))(v83, v85);
          return v47;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }

    goto LABEL_35;
  }

  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v61 = sub_21CB81034();
  v81 = *(v61 - 8);
  v82 = v61;
  v80 = (*(v81 + 80) + 32) & ~*(v81 + 80);
  v62 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB81014();
  v63 = v86;
  sub_21CB81014();
  sub_21CB80FE4();
  v64 = *(v88 + 8);
  v65 = v63;
  v66 = v89;
  v64(v65, v89);
  v64(v4, v66);
  v64(v7, v66);
  v64(v10, v66);
  swift_setDeallocating();
  (*(v81 + 8))(v62 + v80, v82);
  swift_deallocClassInstance();
  sub_21CB81004();
  v64(v87, v66);
  v64(v15, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_21CBBC030;
  v68 = sub_21C9FE8F0();
  v70 = v69;
  v71 = MEMORY[0x277D837D0];
  *(v67 + 56) = MEMORY[0x277D837D0];
  result = sub_21C7C0050();
  *(v67 + 64) = result;
  *(v67 + 32) = v68;
  *(v67 + 40) = v70;
  *(v67 + 96) = v71;
  *(v67 + 104) = result;
  v72 = v26[2];
  if (!v72)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v73 = v26[5];
  *(v67 + 72) = v26[4];
  *(v67 + 80) = v73;
  *(v67 + 136) = v71;
  *(v67 + 144) = result;
  if (v72 == 1)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v74 = v26[7];
  *(v67 + 112) = v26[6];
  *(v67 + 120) = v74;
  *(v67 + 176) = v71;
  *(v67 + 184) = result;
  if (v72 >= 3)
  {
    v76 = v26[8];
    v75 = v26[9];

    *(v67 + 152) = v76;
    *(v67 + 160) = v75;
    v77 = v83;
    v78 = *(sub_21CB818B4() + 16);

    v79 = MEMORY[0x277D83C10];
    *(v67 + 216) = MEMORY[0x277D83B88];
    *(v67 + 224) = v79;
    *(v67 + 192) = v78 - 3;
    v47 = sub_21CB85594();

    (*(v84 + 8))(v77, v85);
    return v47;
  }

LABEL_40:
  __break(1u);
  return result;
}

void *sub_21CA01AEC()
{
  v1 = v0;
  v2 = sub_21CB823B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB80E34();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMCredentialExchangeOnboardingView(0);
  v11 = (v0 + *(v10 + 48));
  v12 = *(v11 + 2);
  aBlock = *v11;
  v47 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
  result = sub_21CB84D54();
  v14 = v52;
  if (v52)
  {
    v40 = v10;
    v42 = v3;
    v43 = v2;
    v44 = v51;
    sub_21CB80E24();
    v15 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v16 = sub_21CB85584();
    v17 = [v15 initWithActivityType_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4B60, &qword_21CBBC200);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CBA0690;
    *&aBlock = sub_21CB81594();
    *(&aBlock + 1) = v19;
    sub_21CB86034();
    *(inited + 96) = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 72));
    (*(v7 + 16))(boxed_opaque_existential_0, v9, v6);
    sub_21CB12FF8(inited);
    swift_setDeallocating();
    sub_21C6EA794(inited + 32, &qword_27CDF89B0, &unk_21CBBC208);
    v21 = sub_21CB85464();

    v45 = v17;
    [v17 setUserInfo_];

    v22 = *(v1 + 16);
    v23 = [v22 delegate];
    if (v23)
    {
      v24 = v23;
      v25 = sub_21CB80E04();
      [v24 setTokenForImport_];

      swift_unknownObjectRelease();
    }

    v26 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    v27 = sub_21CA050C8(v44, v14, 0);
    v41 = v1;
    v39 = v7;
    v28 = v27;
    v29 = [objc_allocWithZone(MEMORY[0x277CC1F00]) init];
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v30 = result;

      v49 = nullsub_1;
      v50 = 0;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v47 = sub_21CB031D0;
      v48 = &block_descriptor_31_0;
      v31 = _Block_copy(&aBlock);
      v32 = v45;
      v33 = v28;
      v34 = v29;
      [v30 openUserActivity:v32 usingApplicationRecord:v33 configuration:v34 completionHandler:v31];
      _Block_release(v31);

      v35 = v39;
      v36 = v43;
      sub_21C95B2C8(v5);
      sub_21CB823A4();
      (*(v42 + 8))(v5, v36);
      *(v22 + OBJC_IVAR___PMCredentialExchangeViewController_viewDidCancel) = 0;
      v37 = [v22 delegate];
      if (v37)
      {
        [v37 viewControllerDidCancel_];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return (*(v35 + 8))(v9, v6);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21CA021D0@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = sub_21CB836B4();
  v3 = *(v2 - 8);
  v42 = v2;
  v43 = v3;
  MEMORY[0x28223BE20](v2);
  v41 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_21CB83764();
  v37 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4B50, &unk_21CBBC1F0);
  v34 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4B48, &qword_21CBBC1E8);
  v35 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4B40, &qword_21CBBC1E0);
  v36 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4B38, &qword_21CBBC1D8);
  v17 = *(v16 - 8);
  v38 = v16;
  v39 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v33 - v18;
  v20 = (v1 + *(type metadata accessor for PMCredentialExchangeOnboardingView(0) + 48));
  v21 = *(v20 + 2);
  v50 = *v20;
  v51 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
  sub_21CB84D74();
  v45 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4B70, &qword_21CBBC230);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4B78, &qword_21CBBC238);
  v23 = sub_21CA07498();
  *&v50 = v22;
  *(&v50 + 1) = v23;
  swift_getOpaqueTypeConformance2();
  sub_21CB83F24();
  v24 = sub_21CB83D44();
  sub_21CB83754();
  v25 = sub_21C6EADEC(&qword_27CDF4B58, &qword_27CDF4B50, &unk_21CBBC1F0, MEMORY[0x277CDE5A0]);
  MEMORY[0x21CF13D70](v24, 0, 0, v6, v7, v25);
  (*(v37 + 8))(v6, v40);
  (*(v34 + 8))(v9, v7);
  v46 = v7;
  v47 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21CB845F4();
  (*(v35 + 8))(v12, v10);
  v27 = v41;
  sub_21CB836A4();
  v46 = v10;
  v47 = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = MEMORY[0x277CDE0D0];
  v30 = v42;
  sub_21CB849F4();
  (*(v43 + 8))(v27, v30);
  (*(v36 + 8))(v15, v13);
  v46 = v13;
  v47 = v30;
  v48 = v28;
  v49 = v29;
  swift_getOpaqueTypeConformance2();
  v31 = v38;
  sub_21CB84604();
  return (*(v39 + 8))(v19, v31);
}

uint64_t sub_21CA027E8(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4B78, &qword_21CBBC238);
  MEMORY[0x28223BE20](v6);
  v8 = &v17[-v7];
  v18 = a1;
  sub_21CB81014();
  v9 = sub_21CB81004();
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  v19 = v9;
  v20 = v11;
  sub_21C71F3FC();
  v19 = sub_21CB84054();
  v20 = v12;
  v21 = v13 & 1;
  v22 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4BA0, &qword_21CBBC248);
  sub_21CA075E8();
  sub_21CB85034();
  v15 = [objc_opt_self() systemGroupedBackgroundColor];
  v19 = sub_21CB84A24();
  *&v8[*(v6 + 36)] = sub_21CB84F14();
  sub_21CB83CD4();
  sub_21CA07498();
  sub_21CB84434();
  return sub_21C6EA794(v8, &qword_27CDF4B78, &qword_21CBBC238);
}

uint64_t sub_21CA02A6C(uint64_t a1)
{
  v2 = type metadata accessor for PMCredentialExchangeOnboardingView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = sub_21CA02C24();
  sub_21CA05744(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_21CA07E44(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for PMCredentialExchangeOnboardingView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4BC0, &unk_21CBBC260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4BB0, &unk_21CBBC250);
  sub_21C6EADEC(&qword_27CDF4BC8, &qword_27CDF4BC0, &unk_21CBBC260, MEMORY[0x277D83980]);
  sub_21CA0766C();
  sub_21CA077CC();
  return sub_21CB84FF4();
}

char *sub_21CA02C24()
{
  v1 = [objc_opt_self() sharedManager];
  v2 = [v1 extensionsSync];

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_21C6E8F4C(0, qword_280E22EE0, 0x277CCA9C8);
  sub_21C9577B8();
  v3 = sub_21CB859E4();

  MEMORY[0x28223BE20](v4);
  v23[2] = v0;
  sub_21C9FBA10(sub_21CA07820, v23, v3);
  v6 = v5;

  v7 = *v0;
  v8 = v0[1];
  v9 = *MEMORY[0x277D49CC0];
  if (v7 == sub_21CB855C4() && v8 == v10)
  {
  }

  else
  {
    v12 = sub_21CB86344();

    if ((v12 & 1) == 0)
    {
      v13 = sub_21CB855C4();
      v15 = v14;
      v16 = objc_opt_self();
      v17 = objc_opt_self();
      v18 = v9;
      [v17 cellIconSize];
      v19 = [v16 iconForApplicationIdentifier:v18 size:?];

      v20 = *(v6 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v6;
      if (!isUniquelyReferenced_nonNull_native || v20 >= *(v6 + 3) >> 1)
      {
        v6 = sub_21CA4FBC4(isUniquelyReferenced_nonNull_native, v20 + 1, 1, v6);
        v24 = v6;
      }

      sub_21CAA1F18(0, 0, 1, v13, v15, v19);
    }
  }

  return v6;
}

void *sub_21CA02E5C@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  result = sub_21C9FE9CC(*a1, v5);
  v8 = result;
  if (result)
  {
    type metadata accessor for PMCredentialExchangeOnboardingView(0);
    v9 = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
    result = sub_21CB84D54();
    if (v13)
    {
      if (v4 == v12 && v13 == v5)
      {

        v10 = 1;
      }

      else
      {
        v10 = sub_21CB86344();
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10 & 1;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v11 = 0;
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v8;
  *(a3 + 32) = v11;
  return result;
}

uint64_t sub_21CA02F80@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v47 - v4;
  if (*(a1 + 32))
  {
    v6 = sub_21CB84BB4();
    v7 = sub_21CB83DC4();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = sub_21CB83E14();
    sub_21C6EA794(v5, &qword_27CDEBB58, &qword_21CBAF8A0);
    KeyPath = swift_getKeyPath(byte_21CBBC4E8);
    v10 = [objc_opt_self() systemBlueColor];
    v11 = sub_21CB84A24();
    v60 = v6;
    v61 = KeyPath;
    v62 = v8;
    v63 = v11;
    v64 = 0;
  }

  else
  {
    v12 = sub_21CB84BB4();
    v13 = sub_21CB83DC4();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    v14 = sub_21CB83E14();
    sub_21C6EA794(v5, &qword_27CDEBB58, &qword_21CBAF8A0);
    v15 = swift_getKeyPath(byte_21CBBC4E8);
    v16 = [objc_opt_self() systemFillColor];
    v17 = sub_21CB84A24();
    v60 = v12;
    v61 = v15;
    v62 = v14;
    v63 = v17;
    v64 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4570, &unk_21CBBADB0);
  sub_21C8FD504();
  sub_21CB83494();
  v18 = v67;
  v60 = *(a1 + 16);
  v19 = *(&v65 + 1);
  v20 = *(&v66 + 1);
  v54 = *(&v65 + 1);
  v55 = v65;
  v56 = v66;
  if (v60)
  {
    sub_21C6EDBAC(&v60, &v65, &qword_27CDEBA08, &qword_21CBA2A40);
    v21 = v20;
    sub_21CA07EAC(v55, v19, v56, v20);
    sub_21C6EDBAC(&v60, &v65, &qword_27CDEBA08, &qword_21CBA2A40);
    v22 = sub_21CB84BA4();
    v52 = sub_21CB832C4();
    sub_21C6EA794(&v60, &qword_27CDEBA08, &qword_21CBA2A40);

    v51 = sub_21C7902AC;
  }

  else
  {
    v21 = *(&v66 + 1);
    sub_21CA07EAC(v65, *(&v65 + 1), v66, *(&v66 + 1));
    v22 = 0;
    v51 = 0;
    v52 = 0;
  }

  v23 = [*(a1 + 24) localizedName];
  v24 = sub_21CB855C4();
  v26 = v25;

  *&v65 = v24;
  *(&v65 + 1) = v26;
  sub_21C71F3FC();
  v27 = sub_21CB84054();
  v29 = v28;
  v31 = v30;
  LOBYTE(v65) = v18;
  LOBYTE(v23) = v32 & 1;
  v59 = v32 & 1;
  v58 = v18;
  sub_21C79B058(v27, v28, v32 & 1);

  v33 = v55;
  v34 = v56;
  v49 = v55;
  v50 = v56;
  v48 = v21;
  sub_21CA07EAC(v55, v54, v56, v21);
  v35 = v22;
  v36 = v22;
  v37 = v51;
  v38 = v52;
  sub_21CA07F08(v35, v52, v51, 0);
  sub_21C79B058(v27, v29, v23);

  sub_21CA07F48(v36, v38, v37, 0);
  v39 = v33;
  v40 = v54;
  v41 = v34;
  v42 = v48;
  sub_21CA07F88(v39, v54, v41, v48);
  sub_21C74A72C(v27, v29, v23);

  v57 = v23;
  v43 = v58;
  v44 = v53;
  v45 = v56;
  *v53 = v55;
  v44[1] = v45;
  *(v44 + 32) = v43;
  *(v44 + 5) = v36;
  *(v44 + 6) = v38;
  *(v44 + 7) = v37;
  *(v44 + 8) = 0;
  *(v44 + 9) = v27;
  *(v44 + 10) = v29;
  *(v44 + 88) = v23;
  *(v44 + 12) = v31;
  sub_21C74A72C(v27, v29, v59);

  sub_21CA07F48(v36, v38, v37, 0);
  return sub_21CA07F88(v49, v40, v50, v42);
}

double sub_21CA03490@<D0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v21[0] = *v2;
  v21[1] = v4;
  v22 = *(v2 + 32);
  v5 = sub_21CB83074();
  v20 = 1;
  sub_21CA02F80(v21, &v12);
  v27 = v16;
  v28 = v17;
  v29 = v18;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v30[0] = v12;
  v30[1] = v13;
  v30[2] = v14;
  v30[3] = v15;
  v30[4] = v16;
  v30[5] = v17;
  v31 = v18;
  sub_21C6EDBAC(&v23, &v11, &qword_27CDF4BE0, &unk_21CBBC4D8);
  sub_21C6EA794(v30, &qword_27CDF4BE0, &unk_21CBBC4D8);
  *&v19[55] = v26;
  *&v19[71] = v27;
  *&v19[87] = v28;
  *&v19[103] = v29;
  *&v19[7] = v23;
  *&v19[23] = v24;
  *&v19[39] = v25;
  v6 = *&v19[32];
  *(a2 + 65) = *&v19[48];
  v7 = *&v19[80];
  *(a2 + 81) = *&v19[64];
  *(a2 + 97) = v7;
  *(a2 + 112) = *&v19[95];
  result = *v19;
  v9 = *&v19[16];
  *(a2 + 17) = *v19;
  *(a2 + 33) = v9;
  v10 = v20;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 49) = v6;
  return result;
}

void sub_21CA035D8(id *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 sf_bundleIdentifierForContainingApp];
  if (v6)
  {
    v7 = v6;
    v8 = sub_21CB855C4();
    v10 = v9;
    if (v8 != *a2 || v9 != a2[1])
    {
      v12 = v8;
      if ((sub_21CB86344() & 1) == 0)
      {
        v13 = [objc_opt_self() sharedManager];
        v14 = [v13 extensionSupportsCredentialExchange_];

        if (v14)
        {
          v15 = objc_opt_self();
          [objc_opt_self() cellIconSize];
          v16 = [v15 iconForApplicationIdentifier:v7 size:?];

          *a3 = v12;
          a3[1] = v10;
          a3[2] = v16;
          return;
        }
      }
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

uint64_t sub_21CA03718@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMOnboardingView(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1)
  {
    v30 = *v1;
  }

  else
  {
    v30 = sub_21CB84C14();
  }

  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[4];
  v28 = v1[3];
  v29 = v9;

  sub_21CB81014();
  sub_21CB81004();
  (*(v3 + 8))(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21CBA0690;
  v13 = v1[5];
  v14 = v1[6];
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_21C7C0050();
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;

  v15 = sub_21CB85594();
  v17 = v16;

  v18 = v1[7];
  v19 = v1[8];
  v20 = v29;
  *v8 = v30;
  *(v8 + 1) = v20;
  v21 = v28;
  *(v8 + 2) = v10;
  *(v8 + 3) = v21;
  *(v8 + 4) = v11;
  *(v8 + 5) = 0;
  *(v8 + 24) = 2;
  *(v8 + 7) = v15;
  *(v8 + 8) = v17;
  *(v8 + 9) = v18;
  *(v8 + 10) = v19;
  v8[88] = 0;
  *(v8 + 6) = 0u;
  *(v8 + 7) = 0u;
  v8[128] = 0;
  v22 = *(v6 + 28);
  *&v8[v22] = swift_getKeyPath(byte_21CBBC168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();

  LOBYTE(v19) = sub_21CB83CF4();
  v23 = sub_21CB82934();
  v24 = v8;
  v25 = v31;
  sub_21CA07E44(v24, v31, type metadata accessor for PMOnboardingView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4BD8, &qword_21CBBC4D0);
  v27 = v25 + *(result + 36);
  *v27 = v23;
  *(v27 + 8) = v19;
  return result;
}

uint64_t sub_21CA03A60()
{
  v1 = v0;
  v2 = sub_21CB81424();
  v111 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v110 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v99 = &v95 - v5;
  MEMORY[0x28223BE20](v6);
  v101 = &v95 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v95 - v9;
  MEMORY[0x28223BE20](v11);
  v117 = &v95 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v95 - v14;
  v16 = sub_21CB818C4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PMCredentialExchangeOnboardingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A48, &qword_21CBBC058);
  sub_21CB84D54();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_21C6EA794(v15, &qword_27CDEFFE8, &qword_21CBAE1B0);
    return MEMORY[0x277D84F90];
  }

  (*(v17 + 32))(v19, v15, v16);
  v22 = *(v20 + 52);
  v104 = v0;
  v23 = (v0 + v22);
  v24 = *(v23 + 2);
  v120 = *v23;
  v121 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4B20, &unk_21CBBC1B8);
  sub_21CB84D54();
  v25 = v118;
  v114 = v2;
  if (!v118)
  {
LABEL_36:
    v56 = sub_21CB818B4();
    v27 = *(sub_21CB818B4() + 16);

    if (v27 >= 3)
    {
      v57 = 3;
    }

    else
    {
      v57 = v27;
    }

    v30 = *(v56 + 16);
    if (v30 < v57)
    {
      goto LABEL_63;
    }

    if (v27)
    {
      v95 = v19;
      v96 = v17;
      v97 = v16;
      *&v120 = MEMORY[0x277D84F90];
      v58 = v111;
      v59 = (v56 + ((*(v111 + 80) + 32) & ~*(v111 + 80)));
      sub_21C7B0C0C(0, v57, 0);
      v116 = v58[9];
      v117 = v59;
      v10 = v58[2];
      v21 = v120;
      v60 = v110;
      (v10)(v110, v59, v2);
      v19 = sub_21C9F8508();
      v1 = v61;
      v62 = v58[1];
      v111 = v58 + 1;
      v62(v60, v2);
      *&v120 = v21;
      v17 = *(v21 + 16);
      v30 = *(v21 + 24);
      v2 = v17 + 1;
      if (v17 >= v30 >> 1)
      {
        goto LABEL_64;
      }

      goto LABEL_42;
    }

    (*(v17 + 8))(v19, v16);
    return MEMORY[0x277D84F90];
  }

  v96 = v17;
  v97 = v16;
  v112 = v119;
  v95 = v19;
  v26 = sub_21CB818B4();
  v27 = v26;
  v19 = *(v26 + 16);
  if (!v19)
  {

    v28 = MEMORY[0x277D84F90];
LABEL_52:

    v81 = v28[2];
    if (v81)
    {
      *&v120 = MEMORY[0x277D84F90];
      sub_21C7B0C0C(0, v81, 0);
      v21 = v120;
      v82 = v111[2];
      v83 = *(v111 + 80);
      v115 = v28;
      v84 = v28 + ((v83 + 32) & ~v83);
      v116 = v111[9];
      v117 = v82;
      v85 = (v111 + 1);
      do
      {
        v86 = v110;
        (v117)(v110, v84, v2);
        v87 = sub_21C9F8508();
        v88 = v2;
        v90 = v89;
        (*v85)(v86, v88);
        *&v120 = v21;
        v92 = *(v21 + 16);
        v91 = *(v21 + 24);
        if (v92 >= v91 >> 1)
        {
          sub_21C7B0C0C((v91 > 1), v92 + 1, 1);
          v21 = v120;
        }

        *(v21 + 16) = v92 + 1;
        v93 = v21 + 16 * v92;
        *(v93 + 32) = v87;
        *(v93 + 40) = v90;
        v84 = v116 + v84;
        --v81;
        v2 = v114;
      }

      while (v81);
      (*(v96 + 8))(v95, v97);

      return v21;
    }

    (*(v96 + 8))(v95, v97);

    return MEMORY[0x277D84F90];
  }

  v109 = 0;
  v1 = 0;
  v100 = 0;
  v106 = (*(v111 + 80) + 32) & ~*(v111 + 80);
  v108 = v26 + v106;
  v116 = v111 + 2;
  v17 = (v111 + 1);
  v98 = (v111 + 4);
  v28 = MEMORY[0x277D84F90];
  v105 = v25;
  v103 = v26;
  v102 = v19;
  while (1)
  {
    v30 = *(v27 + 2);
    if (v1 >= v30)
    {
      goto LABEL_62;
    }

    v31 = v111[9];
    v113 = v1;
    v115 = v31;
    v32 = v108 + v31 * v1;
    v1 = v111[2];
    v33 = v117;
    (v1)(v117, v32, v2);
    v34 = sub_21CA04624(v33, v25, v112);
    v35 = v28[2];
    if (v109 < v34 || v35 < 3)
    {
      break;
    }

    v29 = *v17;
LABEL_8:
    v1 = v113 + 1;
    v29(v117, v2);
    if (v1 == v19)
    {

      goto LABEL_52;
    }
  }

  v107 = v17 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27 = v28;
  v19 = v28 + v106;
  v36 = -v35;
  v37 = -1;
  while (1)
  {
    v30 = *(v27 + 2);
    if (v36 + v37 == -1)
    {
      v43 = v27;
      if (v30 != 3)
      {
        v16 = v104;
        goto LABEL_25;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = v104;
      if (isUniquelyReferenced_nonNull_native)
      {
        v45 = *(v27 + 2);
        if (v45)
        {
LABEL_23:
          v46 = v45 - 1;
          (*v17)(&v43[v106 + (v45 - 1) * v115], v2);
          *(v43 + 2) = v46;
LABEL_25:
          (v1)(v101, v117, v2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_21CA4FB9C(0, *(v43 + 2) + 1, 1, v43);
          }

          v48 = *(v43 + 2);
          v47 = *(v43 + 3);
          if (v48 >= v47 >> 1)
          {
            v49 = sub_21CA4FB9C((v47 > 1), v48 + 1, 1, v43);
          }

          else
          {
            v49 = v43;
          }

          *(v49 + 2) = v48 + 1;
          v50 = (*v98)(&v49[v106 + v48 * v115], v101, v2);
          MEMORY[0x28223BE20](v50);
          v51 = v105;
          *(&v95 - 4) = v16;
          *(&v95 - 3) = v51;
          *(&v95 - 2) = v112;
          *&v120 = v49;

          v52 = v100;
          sub_21CA05008(sub_21CA07310, (&v95 - 6));
          v53 = &v122;
          v100 = v52;
          if (!v52)
          {
            v28 = v120;

            v54 = v28[2];
            if (v54)
            {
              v55 = v99;
              (v1)(v99, v28 + v106 + (v54 - 1) * v115, v2);

              v25 = v105;
              v109 = sub_21CA04624(v55, v105, v112);
              v29 = *v17;
              (*v17)(v55, v2);
              goto LABEL_32;
            }

            __break(1u);
          }

          __break(1u);
          return result;
        }
      }

      else
      {
        v43 = sub_21CAA117C(v27);
        v45 = *(v43 + 2);
        if (v45)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

    if (++v37 >= v30)
    {
      break;
    }

    (v1)(v10, v19, v2);
    v39 = sub_21C9F8508();
    v41 = v40;
    if (v39 == sub_21C9F8508() && v41 == v42)
    {

      v29 = *v17;
      v2 = v114;
      (*v17)(v10, v114);
LABEL_19:
      v25 = v105;
      v28 = v27;
LABEL_32:
      v27 = v103;
      v19 = v102;
      goto LABEL_8;
    }

    v19 = v115 + v19;
    v38 = sub_21CB86344();

    v29 = *v17;
    v2 = v114;
    (*v17)(v10, v114);
    if (v38)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  sub_21C7B0C0C((v30 > 1), v2, 1);
  v21 = v120;
LABEL_42:
  *(v21 + 16) = v2;
  v63 = v21 + 16 * v17;
  *(v63 + 32) = v19;
  *(v63 + 40) = v1;
  if (v27 != 1)
  {
    v64 = v110;
    v65 = v114;
    (v10)(v110, v116 + v117, v114);
    v66 = sub_21C9F8508();
    v68 = v67;
    (*v111)(v64, v65);
    *&v120 = v21;
    v70 = *(v21 + 16);
    v69 = *(v21 + 24);
    if (v70 >= v69 >> 1)
    {
      sub_21C7B0C0C((v69 > 1), v70 + 1, 1);
      v21 = v120;
    }

    *(v21 + 16) = v70 + 1;
    v71 = v21 + 16 * v70;
    *(v71 + 32) = v66;
    *(v71 + 40) = v68;
    if (v27 != 2)
    {
      v72 = v110;
      v73 = v114;
      (v10)(v110, &v117[2 * v116], v114);
      v74 = sub_21C9F8508();
      v76 = v75;
      (*v111)(v72, v73);
      *&v120 = v21;
      v78 = *(v21 + 16);
      v77 = *(v21 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_21C7B0C0C((v77 > 1), v78 + 1, 1);
        v21 = v120;
      }

      *(v21 + 16) = v78 + 1;
      v79 = v21 + 16 * v78;
      *(v79 + 32) = v74;
      *(v79 + 40) = v76;
    }
  }

  v80 = v95;

  (*(v96 + 8))(v80, v97);
  return v21;
}

uint64_t sub_21CA04624(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_21CB81574();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_21CB80BE4();
  v10 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF47B0, &qword_21CBBB850);
  MEMORY[0x28223BE20](v12 - 8);
  v97 = &v72 - v13;
  v14 = sub_21CB81584();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v98 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21CB813D4();
  v18 = result;
  v88 = *(result + 16);
  if (v88)
  {
    v19 = 0;
    v94 = result + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v92 = v15 + 88;
    v93 = v15 + 16;
    v91 = *MEMORY[0x277CBA6C8];
    v80 = *MEMORY[0x277CBA750];
    v87 = (v15 + 8);
    v76 = (v15 + 96);
    v75 = (v7 + 32);
    v101 = a2 + 56;
    v99 = a3 + 7;
    v77 = (v7 + 8);
    v86 = v10 + 16;
    v85 = v10 + 8;
    v100 = a3;
    v20 = v97;
    v96 = v15;
    v78 = a1;
    while (v19 < *(v18 + 16))
    {
      v21 = *(v15 + 72);
      v95 = v19;
      v22 = v98;
      (*(v15 + 16))(v98, v94 + v21 * v19, v14);
      v23 = (*(v15 + 88))(v22, v14);
      if (v23 == v91)
      {
        sub_21CB813F4();
        v24 = sub_21CB81964();
        v25 = *(v24 - 8);
        if ((*(v25 + 48))(v20, 1, v24) == 1)
        {
          result = sub_21C6EA794(v20, &qword_27CDF47B0, &qword_21CBBB850);
          v26 = MEMORY[0x277D84F90];
        }

        else
        {
          v26 = sub_21CB81954();
          result = (*(v25 + 8))(v20, v24);
        }

        v15 = v96;
        v79 = *(v26 + 16);
        if (v79)
        {
          v44 = 0;
          v81 = v26 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
          v74 = v6;
          v73 = v9;
          v83 = v14;
          v82 = v26;
          while (1)
          {
            if (v44 >= *(v26 + 16))
            {
              goto LABEL_65;
            }

            v45 = *(v10 + 72);
            v84 = v44;
            v46 = v81 + v45 * v44;
            v47 = *(v10 + 16);
            v48 = v89;
            v49 = v10;
            v50 = v90;
            v47(v89, v46, v90);
            sub_21CB80B64();
            sub_21CB80BA4();
            v52 = v51;
            (*(v49 + 8))(v48, v50);
            if (v52)
            {
            }

            v53 = sub_21CB85584();

            v54 = [v53 safari_highLevelDomainForPasswordManager];

            v55 = sub_21CB855C4();
            v57 = v56;

            v10 = v49;
            v14 = v83;
            v15 = v96;
            v20 = v97;
            if (*(a2 + 16))
            {
              sub_21CB86484();
              sub_21CB854C4();
              v58 = sub_21CB864D4();
              v59 = -1 << *(a2 + 32);
              v60 = v58 & ~v59;
              if ((*(v101 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60))
              {
                break;
              }
            }

LABEL_43:
            if (v100[2])
            {
              v64 = v100;
              sub_21CB86484();
              sub_21CB854C4();
              v65 = sub_21CB864D4();
              v66 = -1 << *(v64 + 32);
              v67 = v65 & ~v66;
              if ((*(v99 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67))
              {
                v68 = ~v66;
                while (1)
                {
                  v69 = (v100[6] + 16 * v67);
                  v70 = *v69 == v55 && v69[1] == v57;
                  if (v70 || (sub_21CB86344() & 1) != 0)
                  {
                    break;
                  }

                  v67 = (v67 + 1) & v68;
                  if (((*(v99 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
                  {
                    goto LABEL_30;
                  }
                }

                v71 = 5;
LABEL_59:

                (*v87)(v98, v14);
                return v71;
              }
            }

LABEL_30:
            v44 = v84 + 1;

            v6 = v74;
            v9 = v73;
            v26 = v82;
            if (v44 == v79)
            {
              goto LABEL_54;
            }
          }

          v61 = ~v59;
          while (1)
          {
            v62 = (*(a2 + 48) + 16 * v60);
            v63 = *v62 == v55 && v62[1] == v57;
            if (v63 || (sub_21CB86344() & 1) != 0)
            {
              break;
            }

            v60 = (v60 + 1) & v61;
            if (((*(v101 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
            {
              goto LABEL_43;
            }
          }

          v71 = 10;
          goto LABEL_59;
        }

LABEL_54:

        result = (*v87)(v98, v14);
      }

      else if (v23 == v80)
      {
        v27 = v98;
        (*v76)(v98, v14);
        (*v75)(v9, v27, v6);
        v28 = sub_21CB81544();
        v30 = v29;
        if (*(a2 + 16))
        {
          sub_21CB86484();
          sub_21CB854C4();
          v31 = sub_21CB864D4();
          v32 = -1 << *(a2 + 32);
          v33 = v31 & ~v32;
          if ((*(v101 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
          {
            v34 = ~v32;
            while (1)
            {
              v35 = (*(a2 + 48) + 16 * v33);
              v36 = *v35 == v28 && v35[1] == v30;
              if (v36 || (sub_21CB86344() & 1) != 0)
              {
                break;
              }

              v33 = (v33 + 1) & v34;
              if (((*(v101 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
              {
                goto LABEL_17;
              }
            }

            v71 = 10;
            goto LABEL_62;
          }
        }

LABEL_17:
        if (v100[2])
        {
          v37 = v100;
          sub_21CB86484();
          sub_21CB854C4();
          v38 = sub_21CB864D4();
          v39 = -1 << *(v37 + 32);
          v40 = v38 & ~v39;
          if ((*(v99 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
          {
            v41 = ~v39;
            while (1)
            {
              v42 = (v100[6] + 16 * v40);
              v43 = *v42 == v28 && v42[1] == v30;
              if (v43 || (sub_21CB86344() & 1) != 0)
              {
                break;
              }

              v40 = (v40 + 1) & v41;
              if (((*(v99 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
              {
                goto LABEL_26;
              }
            }

            v71 = 5;
LABEL_62:

            (*v77)(v9, v6);
            return v71;
          }
        }

LABEL_26:
        (*v77)(v9, v6);

        v15 = v96;
        v20 = v97;
      }

      else
      {
        result = (*v87)(v98, v14);
      }

      v19 = v95 + 1;
      if (v95 + 1 == v88)
      {
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
  }

  else
  {
LABEL_56:

    return 1;
  }

  return result;
}

void sub_21CA05008(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  sub_21CB81424();
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_21C864A0C(v5);
  }

  sub_21CA059D8(a1, a2);
  *v2 = v5;
}

id sub_21CA050C8(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_21CB85584();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_21CB80B14();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_21CA051A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21CA05250(uint64_t a1)
{
  type metadata accessor for PMCredentialExchangeViewController(a1);
  sub_21C6E8F4C(319, &qword_27CDF4A60, 0x277D49AD8);
  if (v1 <= 0x3F)
  {
    sub_21C708B28(319, &qword_27CDEC388, &qword_27CDEC390, &qword_21CBA40E0, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_21C70DAD0(319, &qword_27CDEB178, MEMORY[0x277CDD848]);
      if (v3 <= 0x3F)
      {
        sub_21C70DAD0(319, &qword_27CDEC498, MEMORY[0x277CDF3E0]);
        if (v4 <= 0x3F)
        {
          sub_21C708B28(319, &qword_27CDF4A68, &qword_27CDEFFE8, &qword_21CBAE1B0, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_21C7210DC();
            if (v6 <= 0x3F)
            {
              sub_21C708B28(319, &qword_27CDF2C90, &unk_27CDED260, &qword_21CBA1C60, MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_21C708B28(319, &qword_27CDF4A70, &qword_27CDF4A78, &qword_21CBBC088, MEMORY[0x277CE10B8]);
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

uint64_t sub_21CA054BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21CA05504()
{
  result = qword_27CDF4AD8;
  if (!qword_27CDF4AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4AB0, &qword_21CBBC148);
    type metadata accessor for PMOnboardingView(255);
    sub_21CA054BC(&qword_27CDEE360, type metadata accessor for PMOnboardingView, &unk_21CBB3918);
    sub_21CA0560C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4AD8);
  }

  return result;
}

unint64_t sub_21CA0560C()
{
  result = qword_27CDF4AE0;
  if (!qword_27CDF4AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4AE0);
  }

  return result;
}

unint64_t sub_21CA05660()
{
  result = qword_27CDF4AF0;
  if (!qword_27CDF4AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4A80, &qword_21CBBC118);
    sub_21C6EADEC(&qword_27CDF4AF8, &qword_27CDF4B00, &qword_21CBBC198, MEMORY[0x277CDDA18]);
    sub_21C6EADEC(&qword_27CDF4B08, &qword_27CDF4AE8, &qword_21CBBC190, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4AF0);
  }

  return result;
}

uint64_t sub_21CA05744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMCredentialExchangeOnboardingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CA057DC()
{
  result = qword_27CDF4B10;
  if (!qword_27CDF4B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4A98, &qword_21CBBC130);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4A88, &qword_21CBBC120);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4A80, &qword_21CBBC118);
    sub_21CA05660();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4B10);
  }

  return result;
}

uint64_t sub_21CA058E8(uint64_t a1)
{
  v4 = *(type metadata accessor for PMCredentialExchangeOnboardingView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21C9FE468(a1, v6, v7, v1 + v5);
}

void sub_21CA059D8(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  v6 = sub_21CB862E4();
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21CB81424();
        v9 = sub_21CB85844();
        *(v9 + 16) = v8;
      }

      v10 = *(sub_21CB81424() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_21CA05E00(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_21CA05B14(0, v5, 1, a1, a2);
  }
}

void sub_21CA05B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v7 = v6;
  v52 = a5;
  v53 = a4;
  v11 = sub_21CB81424();
  MEMORY[0x28223BE20](v11);
  v47 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v54 = &v38 - v14;
  v18 = MEMORY[0x28223BE20](v15);
  v39 = a2;
  if (a3 != a2)
  {
    v50 = &v38 - v16;
    v19 = *v5;
    v21 = *(v17 + 16);
    v20 = v17 + 16;
    v22 = *(v20 + 56);
    v48 = v21;
    v49 = (v20 - 8);
    v51 = v20;
    v45 = (v20 + 16);
    v46 = v19;
    v23 = (v19 + v22 * (a3 - 1));
    v44 = -v22;
    v24 = a1 - a3;
    v38 = v22;
    v25 = v19 + v22 * a3;
    v26 = v54;
    while (2)
    {
      v42 = v23;
      v43 = a3;
      v40 = v25;
      v41 = v24;
      v27 = v23;
      while (1)
      {
        v28 = v50;
        v29 = v48;
        (v48)(v50, v25, v11, v18);
        v29(v26, v27, v11);
        v30 = v53(v28, v26);
        if (v7)
        {
          v37 = *v49;
          (*v49)(v26, v11);
          v37(v28, v11);
          return;
        }

        v31 = v30;
        v32 = v26;
        v33 = *v49;
        (*v49)(v32, v11);
        v33(v28, v11);
        if ((v31 & 1) == 0)
        {
          break;
        }

        if (!v46)
        {
          __break(1u);
          return;
        }

        v34 = *v45;
        v35 = v47;
        (*v45)(v47, v25, v11);
        swift_arrayInitWithTakeFrontToBack();
        v34(v27, v35, v11);
        v27 += v44;
        v25 += v44;
        v36 = __CFADD__(v24++, 1);
        v26 = v54;
        v7 = 0;
        if (v36)
        {
          goto LABEL_11;
        }
      }

      v26 = v54;
      v7 = 0;
LABEL_11:
      a3 = v43 + 1;
      v23 = &v42[v38];
      v24 = v41 - 1;
      v25 = v40 + v38;
      if (v43 + 1 != v39)
      {
        continue;
      }

      break;
    }
  }
}

void sub_21CA05E00(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v142 = a1;
  v163 = sub_21CB81424();
  MEMORY[0x28223BE20](v163);
  v146 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v149 = &v134 - v14;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v134 - v18;
  MEMORY[0x28223BE20](v20);
  v140 = &v134 - v21;
  MEMORY[0x28223BE20](v22);
  v29 = MEMORY[0x28223BE20](&v134 - v23);
  v161 = v26;
  v162 = a3;
  v30 = a3[1];
  if (v30 < 1)
  {
    v32 = MEMORY[0x277D84F90];
    v33 = a4;
LABEL_104:
    a4 = *v142;
    if (*v142)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_106;
    }

    goto LABEL_147;
  }

  v141 = &v134 - v25;
  v139 = v24;
  v151 = v19;
  v147 = v28;
  v148 = v27;
  v137 = a6;
  v31 = 0;
  v159 = (v26 + 8);
  v160 = v26 + 16;
  v155 = (v26 + 32);
  v32 = MEMORY[0x277D84F90];
  v156 = a5;
  v33 = a4;
  v158 = a4;
  while (1)
  {
    v34 = v31;
    v143 = v32;
    if ((v31 + 1) < v30)
    {
      v144 = v31;
      v145 = v30;
      v35 = *v162;
      v36 = *(v161 + 72);
      a4 = *v162 + v36 * (v31 + 1);
      v37 = *(v161 + 16);
      v38 = v163;
      v37(v141, a4, v163, v29);
      v157 = v36;
      v138 = v35;
      v39 = v35 + v36 * v144;
      v40 = v139;
      v152 = v37;
      (v37)(v139, v39, v38);
      v41 = v141;
      LODWORD(v154) = v33(v141, v40);
      if (v7)
      {
        v133 = *v159;
        (*v159)(v40, v38);
        v133(v41, v38);
        goto LABEL_117;
      }

      v164 = 0;
      v42 = *v159;
      (*v159)(v40, v38);
      v150 = v42;
      (v42)(v41, v38);
      v136 = v145 - 1;
      v153 = v145 - 2;
      v43 = v144;
      a5 = v156;
      v44 = v157;
      v45 = v138 + v157 * (v144 + 2);
      v46 = v140;
      while (v153 != v43)
      {
        v47 = v163;
        v48 = v152;
        (v152)(v46, v45, v163);
        v49 = a5;
        v50 = v151;
        (v48)(v151, a4, v47);
        v51 = v49;
        v52 = v164;
        v53 = v158(v46, v50);
        v164 = v52;
        if (v52)
        {
          v131 = v150;
          (v150)(v50, v47);
          v131(v46, v47);
LABEL_117:

          return;
        }

        v54 = v53;
        v55 = v150;
        (v150)(v50, v47);
        v55(v46, v47);
        ++v43;
        v44 = v157;
        v45 += v157;
        a4 += v157;
        a5 = v51;
        if ((v154 ^ v54))
        {
          v56 = v43 + 1;
          goto LABEL_12;
        }
      }

      v43 = v136;
      v56 = v145;
LABEL_12:
      v34 = v144;
      if (v154)
      {
        if (v56 < v144)
        {
          goto LABEL_141;
        }

        v32 = v163;
        if (v144 <= v43)
        {
          a4 = v44 * (v56 - 1);
          v57 = v56;
          v58 = v56 * v44;
          v145 = v57;
          v59 = v57;
          v60 = v144;
          v61 = v144 * v44;
          do
          {
            if (v60 != --v59)
            {
              v63 = *v162;
              if (!*v162)
              {
                goto LABEL_145;
              }

              v64 = *v155;
              (*v155)(v146, v63 + v61, v163);
              if (v61 < a4 || v63 + v61 >= (v63 + v58))
              {
                v62 = v163;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v62 = v163;
                if (v61 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v64((v63 + a4), v146, v62);
              a5 = v156;
              v44 = v157;
              v32 = v62;
            }

            ++v60;
            a4 -= v44;
            v58 -= v44;
            v61 += v44;
          }

          while (v60 < v59);
          v7 = v164;
          v33 = v158;
          v34 = v144;
          v56 = v145;
        }

        else
        {
          v7 = v164;
          v33 = v158;
        }
      }

      else
      {
        v32 = v163;
        v7 = v164;
        v33 = v158;
      }
    }

    else
    {
      v56 = (v31 + 1);
      v32 = v163;
    }

    v65 = v162[1];
    if (v56 < v65)
    {
      if (__OFSUB__(v56, v34))
      {
        goto LABEL_137;
      }

      if (v56 - v34 < v137)
      {
        if (__OFADD__(v34, v137))
        {
          __break(1u);
        }

        else
        {
          v145 = v56;
          if (&v34[v137] >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = &v34[v137];
          }

          if (v66 >= v34)
          {
            if (v145 == v66)
            {
              v56 = v145;
              goto LABEL_38;
            }

            v164 = v7;
            v113 = *v162;
            v114 = *(v161 + 72);
            v157 = *(v161 + 16);
            v115 = (v113 + v114 * (v145 - 1));
            v153 = -v114;
            v154 = v113;
            v144 = v34;
            v116 = &v34[-v145];
            v135 = v114;
            a4 = v113 + v145 * v114;
            v152 = v66;
            while (1)
            {
              v136 = a4;
              v138 = v116;
              v150 = v115;
              while (1)
              {
                v117 = v147;
                v118 = v157;
                (v157)(v147, a4, v32, v29);
                v119 = v148;
                v118(v148, v115, v32);
                v120 = v164;
                v121 = v158(v117, v119);
                v164 = v120;
                if (v120)
                {
                  v132 = *v159;
                  (*v159)(v119, v32);
                  v132(v117, v32);
                  goto LABEL_117;
                }

                v122 = v121;
                v123 = *v159;
                (*v159)(v119, v32);
                v123(v117, v32);
                if ((v122 & 1) == 0)
                {
                  break;
                }

                if (!v154)
                {
                  goto LABEL_143;
                }

                v124 = *v155;
                v125 = v149;
                v32 = v163;
                (*v155)(v149, a4, v163);
                swift_arrayInitWithTakeFrontToBack();
                v124(v115, v125, v32);
                v115 += v153;
                a4 += v153;
                v126 = __CFADD__(v116++, 1);
                a5 = v156;
                if (v126)
                {
                  goto LABEL_101;
                }
              }

              a5 = v156;
              v32 = v163;
LABEL_101:
              v115 = &v150[v135];
              v116 = (v138 - 1);
              a4 = v136 + v135;
              v56 = v152;
              if (++v145 == v152)
              {
                v33 = v158;
                v7 = v164;
                v34 = v144;
                goto LABEL_38;
              }
            }
          }
        }

        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

LABEL_38:
    v32 = v143;
    if (v56 < v34)
    {
      goto LABEL_136;
    }

    a4 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_21C86467C(0, *(v32 + 2) + 1, 1, v32);
    }

    v68 = *(v32 + 2);
    v67 = *(v32 + 3);
    v69 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      v32 = sub_21C86467C((v67 > 1), v68 + 1, 1, v32);
    }

    *(v32 + 2) = v69;
    v70 = &v32[16 * v68];
    *(v70 + 4) = v34;
    *(v70 + 5) = v56;
    v152 = v56;
    v71 = *v142;
    if (!*v142)
    {
      goto LABEL_146;
    }

    if (v68)
    {
      break;
    }

    a5 = v156;
    v33 = a4;
LABEL_90:
    v30 = v162[1];
    v31 = v152;
    if (v152 >= v30)
    {
      goto LABEL_104;
    }
  }

  a5 = v156;
  v33 = a4;
  while (1)
  {
    a4 = v69 - 1;
    if (v69 >= 4)
    {
      v76 = &v32[16 * v69 + 32];
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_123;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_124;
      }

      v83 = &v32[16 * v69];
      v85 = *v83;
      v84 = *(v83 + 1);
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_126;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_129;
      }

      if (v87 >= v79)
      {
        v105 = &v32[16 * a4 + 32];
        v107 = *v105;
        v106 = *(v105 + 1);
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_135;
        }

        if (v74 < v108)
        {
          a4 = v69 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    if (v69 == 3)
    {
      v72 = *(v32 + 4);
      v73 = *(v32 + 5);
      v82 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      v75 = v82;
LABEL_59:
      if (v75)
      {
        goto LABEL_125;
      }

      v88 = &v32[16 * v69];
      v90 = *v88;
      v89 = *(v88 + 1);
      v91 = __OFSUB__(v89, v90);
      v92 = v89 - v90;
      v93 = v91;
      if (v91)
      {
        goto LABEL_128;
      }

      v94 = &v32[16 * a4 + 32];
      v96 = *v94;
      v95 = *(v94 + 1);
      v82 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v82)
      {
        goto LABEL_131;
      }

      if (__OFADD__(v92, v97))
      {
        goto LABEL_132;
      }

      if (v92 + v97 >= v74)
      {
        if (v74 < v97)
        {
          a4 = v69 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v98 = &v32[16 * v69];
    v100 = *v98;
    v99 = *(v98 + 1);
    v82 = __OFSUB__(v99, v100);
    v92 = v99 - v100;
    v93 = v82;
LABEL_73:
    if (v93)
    {
      goto LABEL_127;
    }

    v101 = &v32[16 * a4];
    v103 = *(v101 + 4);
    v102 = *(v101 + 5);
    v82 = __OFSUB__(v102, v103);
    v104 = v102 - v103;
    if (v82)
    {
      goto LABEL_130;
    }

    if (v104 < v92)
    {
      goto LABEL_90;
    }

LABEL_80:
    v109 = a4 - 1;
    if (a4 - 1 >= v69)
    {
      break;
    }

    if (!*v162)
    {
      goto LABEL_142;
    }

    v110 = *&v32[16 * v109 + 32];
    v111 = *&v32[16 * a4 + 40];
    sub_21CA06A0C((*v162 + *(v161 + 72) * v110), (*v162 + *(v161 + 72) * *&v32[16 * a4 + 32]), (*v162 + *(v161 + 72) * v111), v71, v33, a5);
    if (v7)
    {
      goto LABEL_117;
    }

    if (v111 < v110)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_21C864538(v32);
    }

    if (v109 >= *(v32 + 2))
    {
      goto LABEL_122;
    }

    v112 = &v32[16 * v109];
    *(v112 + 4) = v110;
    *(v112 + 5) = v111;
    v165 = v32;
    sub_21C8644AC(a4);
    v32 = v165;
    v69 = *(v165 + 2);
    if (v69 <= 1)
    {
      goto LABEL_90;
    }
  }

  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
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
LABEL_129:
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
  v32 = sub_21C864538(v32);
LABEL_106:
  v165 = v32;
  v127 = *(v32 + 2);
  if (v127 < 2)
  {
    goto LABEL_117;
  }

  while (*v162)
  {
    v128 = *&v32[16 * v127];
    v129 = *&v32[16 * v127 + 24];
    sub_21CA06A0C((*v162 + *(v161 + 72) * v128), (*v162 + *(v161 + 72) * *&v32[16 * v127 + 16]), (*v162 + *(v161 + 72) * v129), a4, v33, a5);
    if (v7)
    {
      goto LABEL_117;
    }

    if (v129 < v128)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_21C864538(v32);
    }

    if (v127 - 2 >= *(v32 + 2))
    {
      goto LABEL_134;
    }

    v130 = &v32[16 * v127];
    *v130 = v128;
    *(v130 + 1) = v129;
    v165 = v32;
    sub_21C8644AC(v127 - 1);
    v32 = v165;
    v127 = *(v165 + 2);
    if (v127 <= 1)
    {
      goto LABEL_117;
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

void sub_21CA06A0C(char *a1, char *a2, char *a3, char *a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6)
{
  v77 = a6;
  v78 = a5;
  v76 = sub_21CB81424();
  v11 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v68 - v16;
  MEMORY[0x28223BE20](v18);
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v23 = &v68 - v19;
  if (a2 - a1 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_67;
  }

  v24 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v22 != -1)
  {
    v25 = (a2 - a1) / v22;
    v84 = a1;
    v83 = a4;
    v79 = v22;
    if (v25 < v24 / v22)
    {
      v26 = v25 * v22;
      if (a4 < a1 || &a1[v26] <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v75 = &a4[v26];
      v82 = &a4[v26];
      if (v26 >= 1 && a2 < a3)
      {
        v52 = *(v11 + 16);
        v73 = v17;
        v74 = v11 + 16;
        v71 = v52;
        v72 = (v11 + 8);
        v53 = v23;
        v54 = v76;
        v55 = v6;
        v70 = a3;
        while (1)
        {
          v80 = a1;
          v56 = v71;
          v71(v53, a2, v54);
          v57 = a2;
          v58 = v53;
          v59 = v73;
          v56(v73, a4, v54);
          v60 = v78(v58, v59);
          if (v55)
          {
            break;
          }

          v61 = v60;
          v81 = 0;
          v62 = *v72;
          (*v72)(v59, v54);
          v62(v58, v54);
          v53 = v58;
          if (v61)
          {
            v63 = v79;
            v64 = v80;
            a2 = &v57[v79];
            if (v80 < v57 || v80 >= a2)
            {
              v54 = v76;
              swift_arrayInitWithTakeFrontToBack();
              v63 = v79;
              v55 = v81;
            }

            else
            {
              v55 = v81;
              v54 = v76;
              if (v80 != v57)
              {
                swift_arrayInitWithTakeBackToFront();
                v63 = v79;
              }
            }
          }

          else
          {
            v63 = v79;
            v64 = v80;
            v65 = &a4[v79];
            a2 = v57;
            if (v80 < a4 || v80 >= v65)
            {
              v54 = v76;
              swift_arrayInitWithTakeFrontToBack();
              v63 = v79;
              v55 = v81;
            }

            else
            {
              v55 = v81;
              v54 = v76;
              if (v80 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
                v63 = v79;
              }
            }

            v83 = v65;
            a4 = v65;
          }

          a1 = &v64[v63];
          v84 = a1;
          if (a4 >= v75 || a2 >= v70)
          {
            goto LABEL_65;
          }
        }

        v66 = *v72;
        (*v72)(v59, v54);
        v66(v58, v54);
      }

LABEL_65:
      sub_21C86457C(&v84, &v83, &v82);
      return;
    }

    v75 = v20;
    v27 = a3;
    v28 = a2;
    v29 = v24 / v22 * v22;
    if (a4 < v28 || &v28[v29] <= a4)
    {
      v30 = v28;
      v31 = v76;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v30 = v28;
      v31 = v76;
      if (a4 == v28)
      {
LABEL_24:
        v81 = v6;
        v33 = &a4[v29];
        if (v29 >= 1)
        {
          v34 = -v22;
          v68 = a4;
          v69 = (v11 + 16);
          v71 = (v11 + 8);
          v35 = &a4[v29];
          v36 = v27;
          v37 = v75;
          v80 = a1;
          v73 = -v22;
          do
          {
            v74 = v33;
            v70 = v33;
            v38 = v30;
            v76 = v30 + v34;
            v72 = v30;
            while (1)
            {
              if (v38 <= a1)
              {
                v84 = v38;
                v33 = v70;
                goto LABEL_64;
              }

              v39 = v36;
              v40 = v73;
              v79 = v35;
              v41 = &v35[v73];
              v42 = *v69;
              (*v69)(v37, &v35[v73], v31);
              v42(v13, v76, v31);
              v43 = v37;
              v44 = v81;
              v45 = v78(v37, v13);
              v81 = v44;
              if (v44)
              {
                v67 = *v71;
                (*v71)(v13, v31);
                v67(v43, v31);
                v84 = v72;
                v33 = v74;
                goto LABEL_64;
              }

              v46 = v45;
              v47 = &v39[v40];
              v48 = v13;
              v49 = *v71;
              v50 = v48;
              (*v71)();
              v49(v43, v31);
              if (v46)
              {
                break;
              }

              v36 = &v39[v40];
              if (v39 < v79 || v47 >= v79)
              {
                swift_arrayInitWithTakeFrontToBack();
                v13 = v50;
                v37 = v75;
              }

              else
              {
                v13 = v50;
                v37 = v75;
                if (v39 != v79)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v74 = v41;
              v35 = v41;
              a1 = v80;
              v38 = v72;
              if (v41 <= v68)
              {
                v30 = v72;
                v33 = v74;
                goto LABEL_63;
              }
            }

            v36 = &v39[v40];
            if (v39 < v72 || v47 >= v72)
            {
              v30 = v76;
              swift_arrayInitWithTakeFrontToBack();
              v51 = v68;
              v13 = v50;
              v37 = v75;
            }

            else
            {
              v37 = v75;
              v30 = v76;
              v51 = v68;
              v13 = v50;
              if (v39 != v72)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v35 = v79;
            a1 = v80;
            v34 = v73;
            v33 = v74;
          }

          while (v79 > v51);
        }

LABEL_63:
        v84 = v30;
LABEL_64:
        v82 = v33;
        goto LABEL_65;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v22 = v79;
    goto LABEL_24;
  }

LABEL_68:
  __break(1u);
}

uint64_t sub_21CA07104(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21CA07144(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper_29_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL sub_21CA07310(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = sub_21CA04624(a1, v4, v5);
  return sub_21CA04624(a2, v4, v5) < v6;
}

uint64_t sub_21CA07384(uint64_t a1)
{
  v4 = *(type metadata accessor for PMCredentialExchangeOnboardingView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21C9FF11C(a1, v6, v7, v1 + v5);
}

unint64_t sub_21CA07498()
{
  result = qword_27CDF4B80;
  if (!qword_27CDF4B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4B78, &qword_21CBBC238);
    sub_21CA07550();
    sub_21C6EADEC(&qword_27CDF1178, &qword_27CDF1180, &qword_21CBB0A70, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4B80);
  }

  return result;
}

unint64_t sub_21CA07550()
{
  result = qword_27CDF4B88;
  if (!qword_27CDF4B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4B90, &qword_21CBBC240);
    sub_21CA075E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4B88);
  }

  return result;
}

unint64_t sub_21CA075E8()
{
  result = qword_27CDF4B98;
  if (!qword_27CDF4B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4BA0, &qword_21CBBC248);
    sub_21CA0766C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4B98);
  }

  return result;
}

unint64_t sub_21CA0766C()
{
  result = qword_27CDF4BA8;
  if (!qword_27CDF4BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4BB0, &unk_21CBBC250);
    sub_21CA076F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4BA8);
  }

  return result;
}

unint64_t sub_21CA076F0()
{
  result = qword_27CDF4BB8;
  if (!qword_27CDF4BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4BB8);
  }

  return result;
}

void *sub_21CA0774C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PMCredentialExchangeOnboardingView(0);

  return sub_21CA02E5C(a1, a2);
}

unint64_t sub_21CA077CC()
{
  result = qword_27CDF4BD0;
  if (!qword_27CDF4BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4BD0);
  }

  return result;
}

id sub_21CA07844()
{
  v1 = *(type metadata accessor for PMCredentialExchangeOnboardingView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C9FF09C(v2);
}

uint64_t objectdestroy_13Tm()
{
  v1 = type metadata accessor for PMCredentialExchangeOnboardingView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB83834();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21CB823B4();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21CB82054();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  v13 = v5 + v1[10];
  v14 = sub_21CB818C4();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v13, 1, v14))
  {
    (*(v15 + 8))(v13, v14);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A48, &qword_21CBBC058);

  if (*(v5 + v1[13]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21CA07C38(uint64_t a1)
{
  v4 = *(type metadata accessor for PMCredentialExchangeOnboardingView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C6F35D0;

  return sub_21C9FFB6C(a1, v6, v7, v1 + v5);
}

uint64_t sub_21CA07D64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_21CA07DAC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_21CA07E44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA07EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
}

uint64_t sub_21CA07F08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21CA07F48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21CA07F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
}

unint64_t sub_21CA07FE0()
{
  result = qword_27CDF4BE8;
  if (!qword_27CDF4BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4BD8, &qword_21CBBC4D0);
    sub_21CA054BC(&qword_27CDEE360, type metadata accessor for PMOnboardingView, &unk_21CBB3918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4BE8);
  }

  return result;
}

uint64_t sub_21CA080A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CA080EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CA08180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v96 = a2;
  v73 = sub_21CB82F84();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4C80, &unk_21CBCC8C0) - 8;
  MEMORY[0x28223BE20](v86);
  v80 = &v71 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4C88, &unk_21CBBC640);
  MEMORY[0x28223BE20](v7 - 8);
  v95 = &v71 - v8;
  v9 = *(a1 + 16);
  v10 = a1;
  v74 = a1;
  v76 = v9;
  v79 = *(v9 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21CB828F4();
  v78 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v75 = &v71 - v15;
  v16 = sub_21CB828F4();
  v93 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v97 = &v71 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1180, &qword_21CBB0A70);
  v18 = sub_21CB828F4();
  v91 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v89 = &v71 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4C90, &unk_21CBBC650);
  v20 = sub_21CB828F4();
  v88 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v87 = &v71 - v21;
  v22 = MEMORY[0x277CDF918];
  v106 = *(v10 + 24);
  v107 = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v105 = v22;
  v94 = v16;
  v23 = swift_getWitnessTable();
  v24 = MEMORY[0x277CE04A0];
  v25 = sub_21C6EADEC(&qword_27CDF1178, &qword_27CDF1180, &qword_21CBB0A70, MEMORY[0x277CE04A0]);
  v83 = v23;
  v102 = v23;
  v103 = v25;
  v92 = v18;
  v26 = swift_getWitnessTable();
  v27 = sub_21C6EADEC(&qword_27CDF4C98, &qword_27CDF4C90, &unk_21CBBC650, v24);
  v82 = v26;
  v100 = v26;
  v101 = v27;
  v28 = swift_getWitnessTable();
  v90 = v20;
  v98 = v20;
  v99 = v28;
  v85 = v28;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v77 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v81 = &v71 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v31);
  v84 = &v71 - v33;
  (*(v3 + 32))(v32);
  v34 = v75;
  v35 = v76;
  sub_21CB84874();
  v36 = v80;
  (*(v79 + 8))(v13, v35);
  sub_21CB83CD4();
  sub_21CB84884();
  (*(v78 + 8))(v34, v14);
  v37 = *(sub_21CB82A84() + 20);
  v38 = *MEMORY[0x277CE0118];
  v39 = sub_21CB831A4();
  (*(*(v39 - 8) + 104))(&v36[v37], v38, v39);
  __asm { FMOV            V0.2D, #8.0 }

  *v36 = _Q0;
  *&v36[*(v86 + 44)] = sub_21CA08BE8();
  v45 = sub_21CB83CD4();
  if (*(v3 + 24))
  {
    v109 = *(v3 + 56);
    v108 = *(v3 + 48);
    if (v109 != 1)
    {

      sub_21CB85B04();
      v46 = sub_21CB83C94();
      sub_21CB81C14();

      v47 = v71;
      sub_21CB82F74();
      swift_getAtKeyPath();
      sub_21C6EA794(&v108, &qword_27CDF4CA0, &qword_21CBBEB00);
      (*(v72 + 8))(v47, v73);
    }
  }

  sub_21CB81F24();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = v95;
  sub_21CA08F48(v36, v95);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4CA8, &unk_21CBBC660);
  v58 = v56 + *(v57 + 36);
  *v58 = v45;
  *(v58 + 8) = v49;
  *(v58 + 16) = v51;
  *(v58 + 24) = v53;
  *(v58 + 32) = v55;
  *(v58 + 40) = 0;
  (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
  sub_21CA08FB8();
  v59 = v89;
  v60 = v94;
  v61 = v97;
  sub_21CB843C4();
  sub_21C6EA794(v56, &qword_27CDF4C88, &unk_21CBBC640);
  (*(v93 + 8))(v61, v60);
  v62 = v87;
  v63 = v92;
  sub_21CA08E58(1, v92, v82);
  (*(v91 + 8))(v59, v63);
  sub_21CB82324();
  v64 = v81;
  v65 = v90;
  v66 = v85;
  sub_21CB84344();
  (*(v88 + 8))(v62, v65);
  v98 = v65;
  v99 = v66;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v68 = v84;
  sub_21C72BE10(v64, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v69 = *(v77 + 8);
  v69(v64, OpaqueTypeMetadata2);
  sub_21C72BE10(v68, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v69)(v68, OpaqueTypeMetadata2);
}

uint64_t sub_21CA08BE8()
{
  v1 = sub_21CB82F84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 25) != 1)
  {
    v13 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4CC8, &qword_21CBBC670);
    sub_21C6EADEC(&qword_27CDF4CD0, &qword_27CDF4CC8, &qword_21CBBC670, MEMORY[0x277CE0848]);
    return sub_21CB82384();
  }

  v14 = *(v0 + 56);
  v6 = *(v0 + 48);
  v13 = v6;
  if (v14 != 1)
  {
    v8 = v3;

    sub_21CB85B04();
    v9 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C6EA794(&v13, &qword_27CDF4CA0, &qword_21CBBEB00);
    (*(v2 + 8))(v5, v8);
    if (v12 != 1)
    {
      goto LABEL_4;
    }

LABEL_7:
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4CD8, &qword_21CBBC678);
    sub_21C6EADEC(&qword_27CDF4CE0, &qword_27CDF4CD8, &qword_21CBBC678, MEMORY[0x277CE0848]);
    return sub_21CB82384();
  }

  if (v6)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v12 = sub_21CB84A24();
  return sub_21CB82384();
}

uint64_t sub_21CA08E58(char a1, uint64_t a2, uint64_t a3)
{
  sub_21CB83A44();
  sub_21C74AB8C(&qword_27CDF4CC0, MEMORY[0x277CDE390], MEMORY[0x277CDE388]);
  return sub_21CB847D4();
}

uint64_t sub_21CA08F48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4C80, &unk_21CBCC8C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CA08FB8()
{
  result = qword_27CDF4CB0;
  if (!qword_27CDF4CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4CA8, &unk_21CBBC660);
    sub_21C74AAA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4CB0);
  }

  return result;
}

unint64_t sub_21CA09048()
{
  result = qword_27CDF4CE8;
  if (!qword_27CDF4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4CE8);
  }

  return result;
}

double sub_21CA0909C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
  sub_21CB84F54();
  v15 = v17;
  v5 = v18;
  v6 = v19;
  v20[0] = *(a1 + 32);
  v17 = *(a1 + 64);
  v8 = *(a1 + 80);
  v7 = *(a1 + 88);
  KeyPath = swift_getKeyPath(aX_55);
  sub_21CB855C4();
  v10 = objc_opt_self();
  sub_21C805950(v20, v16);
  sub_21CA0B2DC(&v17, v16);

  v11 = [v10 pm_defaults];
  v12 = sub_21CB81E74();
  *a2 = v15;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v12;
  result = *v20;
  v14 = v17;
  *(a2 + 48) = v20[0];
  *(a2 + 64) = v14;
  *(a2 + 80) = v8;
  *(a2 + 88) = v7;
  *(a2 + 96) = 256;
  return result;
}

uint64_t sub_21CA091DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21C71F3FC();

  v4 = sub_21CB84054();
  v6 = v5;
  v8 = v7;
  if (*(a1 + 96))
  {
    sub_21CB837E4();
  }

  else
  {
    sub_21CB837B4();
  }

  v9 = sub_21CB83FC4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_21C74A72C(v4, v6, v8 & 1);

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_21CA092DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4DA0, &qword_21CBBC970);
  sub_21CA0B250();
  return sub_21CB825D4();
}

void sub_21CA09400()
{
  sub_21CB807C4();
  if (v3[3])
  {
    sub_21C6E8F4C(0, &qword_27CDF4D98, 0x277D75BB8);
    if (swift_dynamicCast())
    {

      v0 = [v2 text];
      if (v0)
      {
        v1 = v0;
        sub_21CB855C4();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
      sub_21CB84F34();

      swift_bridgeObjectRelease_n();

      sub_21CA096E8(v2);
    }
  }

  else
  {
    sub_21CA0B028(v3);
  }
}

void sub_21CA096E8(void *a1)
{
  v3 = sub_21CB853D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB85404();
  v66 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CB81024();
  *&v13 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (v1 + OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField);
  if (*(v1 + OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField + 72))
  {
    v61 = v12;
    v62 = v11;
    v63 = v7;
    v64 = v4;
    v65 = v3;
    v17 = a1;
    v18 = v16[3];
    v76 = v16[2];
    v77 = v18;
    v19 = v16[5];
    v78 = v16[4];
    v79 = v19;
    v20 = v16[1];
    aBlock = *v16;
    v75 = v20;
    v21 = v76;

    sub_21CA0AF44(&aBlock, &v69);
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v22 = sub_21C81C2D0(v21, v69);

    sub_21CA0AF7C(&aBlock);
    v67 = v22;
    v23 = [v22 passwordGenerationManager];
    v24 = sub_21CB85584();

    v25 = [v23 defaultRequirementsForDomain_];

    if (v25)
    {
      v26 = sub_21CB85474();
    }

    else
    {
      v26 = 0;
    }

    v32 = [v67 passwordGenerationManager];
    if (v26)
    {
      v33 = sub_21CB85464();
    }

    else
    {
      v33 = 0;
    }

    v34 = v17;
    v35 = [v32 generatedPasswordMatchingRequirements_];

    if (v35)
    {
      sub_21CB855C4();
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    v38 = *(v16 + 2);
    v39 = *(v16 + 3);
    v69 = *v16;
    v70 = v38;
    v71 = v39;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
    MEMORY[0x21CF14A20](v68, v40);
    v41 = v68[0];
    v42 = v68[1];

    v43 = HIBYTE(v42) & 0xF;
    if ((v42 & 0x2000000000000000) == 0)
    {
      v43 = v41 & 0xFFFFFFFFFFFFLL;
    }

    v44 = MEMORY[0x277D84F90];
    v68[0] = MEMORY[0x277D84F90];
    if (v43)
    {

      v45 = MEMORY[0x277D84F90];
    }

    else
    {
      if (v37)
      {
        v46 = sub_21CB85584();
      }

      else
      {
        v46 = 0;
      }

      v52 = [objc_opt_self() textSuggestionWithInputText:v46 searchText:0];

      sub_21CB81014();
      sub_21CB81004();
      (*(v61 + 8))(v15, v62);
      v53 = sub_21CB85584();

      [v52 setHeaderText_];

      v54 = v52;
      MEMORY[0x21CF15300]();
      if (*((v68[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21CB85834();
      }

      sub_21CB85854();

      v45 = v68[0];
    }

    sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
    v55 = sub_21CB85CF4();
    v56 = swift_allocObject();
    *(v56 + 16) = v34;
    *(v56 + 24) = v45;
    v72 = sub_21CA0B3B0;
    v73 = v56;
    *&v69 = MEMORY[0x277D85DD0];
    *(&v69 + 1) = 1107296256;
    v70 = sub_21C6ECBD4;
    v71 = &block_descriptor_26;
    v57 = _Block_copy(&v69);
    v58 = v34;

    sub_21CB853E4();
    *&v69 = v44;
    sub_21C91A4E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
    sub_21C91A53C();
    v59 = v65;
    sub_21CB85F14();
    MEMORY[0x21CF15800](0, v9, v6, v57);
    _Block_release(v57);

    (*(v64 + 8))(v6, v59);
    (*(v66 + 8))(v9, v63);
  }

  else
  {
    v27 = [a1 text];
    if (v27)
    {
      v28 = v27;
      v29 = sub_21CB855C4();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0xE000000000000000;
    }

    v47 = [objc_opt_self() sharedProvider];
    v48 = sub_21CB85584();
    v49 = swift_allocObject();
    v49[2] = v29;
    v49[3] = v31;
    v49[4] = a1;
    *&v76 = sub_21CA0B000;
    *(&v76 + 1) = v49;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v75 = sub_21CA0A424;
    *(&v75 + 1) = &block_descriptor_15;
    v50 = _Block_copy(&aBlock);
    v51 = a1;

    [v47 suggestedUsersOfType:0 matchingText:v48 completionHandler:v50];
    _Block_release(v50);
  }
}

uint64_t sub_21CA09F44(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v31 = a4;
  v5 = sub_21CB853D4();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_21CB85404();
  v33 = *(v35 - 8);
  v7 = MEMORY[0x28223BE20](v35);
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_26:
    v40 = a1 & 0xFFFFFFFFFFFFFF8;
    v9 = sub_21CB85FA4();
  }

  else
  {
    v40 = a1 & 0xFFFFFFFFFFFFFF8;
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v9)
  {
    v38 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v10 = 0;
  v39 = a1 & 0xC000000000000001;
  v38 = MEMORY[0x277D84F90];
  do
  {
    v11 = v10;
    while (1)
    {
      if (v39)
      {
        v12 = MEMORY[0x21CF15BD0](v11, a1, v7);
      }

      else
      {
        if (v11 >= *(v40 + 16))
        {
          goto LABEL_25;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v14 = [v12 value];
      if (!v14)
      {
        sub_21CB855C4();
        v14 = sub_21CB85584();
      }

      v15 = sub_21CB85584();
      v16 = [v14 safari:v15 isCaseInsensitiveEqualToString:?];

      if (!v16)
      {
        break;
      }

LABEL_7:
      ++v11;
      if (v10 == v9)
      {
        goto LABEL_23;
      }
    }

    v17 = [v13 value];
    sub_21CB855C4();

    v18 = sub_21CB85584();

    v19 = sub_21CB85584();
    v20 = [objc_opt_self() textSuggestionWithInputText:v18 searchText:v19];

    if (!v20)
    {
      goto LABEL_7;
    }

    MEMORY[0x21CF15300]();
    if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21CB85834();
    }

    sub_21CB85854();
    v38 = aBlock[0];
  }

  while (v10 != v9);
LABEL_23:
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v21 = sub_21CB85CF4();
  v22 = swift_allocObject();
  v23 = v31;
  v24 = v38;
  *(v22 + 16) = v31;
  *(v22 + 24) = v24;
  aBlock[4] = sub_21CA0B00C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_21_0;
  v25 = _Block_copy(aBlock);
  v26 = v23;

  v27 = v32;
  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21C91A4E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C91A53C();
  v28 = v34;
  v29 = v37;
  sub_21CB85F14();
  MEMORY[0x21CF15800](0, v27, v28, v25);
  _Block_release(v25);

  (*(v36 + 8))(v28, v29);
  return (*(v33 + 8))(v27, v35);
}

uint64_t sub_21CA0A424(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_21C6E8F4C(0, &qword_27CDF4D80, 0x277D49E00);
  v3 = sub_21CB85824();

  v2(v3);
}

id sub_21CA0A4A8(void *a1, uint64_t a2)
{
  result = [a1 textInputSuggestionDelegate];
  if (result)
  {
    v3 = result;
    sub_21C6E8F4C(0, &qword_27CDF4D88, 0x277D75C38);
    v4 = sub_21CB85814();
    [v3 setSuggestions_];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_21CA0A574()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _PMTextFieldWithSuggestions.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21CA0A670(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_21CA0A6B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_21CA0A720()
{
  v24 = *v0;
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 9);
  v4 = [objc_allocWithZone(MEMORY[0x277D75BB8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D68, &unk_21CBBC870);
  sub_21CB83A54();
  [v4 setDelegate_];

  v26 = v24;
  v27 = v1;
  v28 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
  MEMORY[0x21CF14A20](&v25, v5);
  v6 = sub_21CB85584();

  [v4 setText_];

  v7 = sub_21CB85584();
  [v4 setPlaceholder_];

  [v4 setAutocorrectionType_];
  [v4 setAutocapitalizationType_];
  v8 = objc_opt_self();
  v9 = [v8 preferredFontForTextStyle_];
  [v4 setFont_];

  v10 = v4;
  LODWORD(v11) = 1132068864;
  [v10 setContentCompressionResistancePriority:0 forAxis:v11];
  if (v3)
  {
    [v10 setSpellCheckingType_];
    sub_21CB81E94();
    [v10 setSecureTextEntry_];
    sub_21CB81E94();
    [v10 setDisplaySecureTextUsingPlainText_];
    v12 = [v10 font];
    if (v12)
    {
      v13 = v12;
      [v12 pointSize];
      v14 = [v8 monospacedSystemFontOfSize_weight_];
      [v10 setFont_];

      result = [v10 _placeholderLabel];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v16 = result;
      [result setFont_];
    }
  }

  v17 = [v10 effectiveUserInterfaceLayoutDirection];

  v18 = v17 == 0;
  v19 = [objc_opt_self() sharedApplication];
  v20 = [v19 preferredContentSizeCategory];

  LOBYTE(v19) = sub_21CB85D64();
  if ((v19 ^ v18))
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  [v10 setTextAlignment_];
  sub_21CB83A54();
  v22 = v26;
  v23 = [objc_opt_self() defaultCenter];
  [v23 addObserver:v22 selector:sel_textFieldDidChange_ name:*MEMORY[0x277D770B0] object:v10];

  return v10;
}

void sub_21CA0AB04(void *a1)
{
  v3 = v1[3];
  v31 = v1[2];
  v32 = v3;
  v4 = v1[5];
  v33 = v1[4];
  v34 = v4;
  v5 = v1[1];
  v29 = *v1;
  v30 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D68, &unk_21CBBC870);
  sub_21CB83A54();
  v6 = v26[0];
  v7 = (v26[0] + OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField);
  v8 = *(v26[0] + OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField + 16);
  v35[0] = *(v26[0] + OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField);
  v35[1] = v8;
  v9 = *(v26[0] + OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField + 32);
  v10 = *(v26[0] + OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField + 48);
  v11 = *(v26[0] + OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField + 80);
  v35[4] = *(v26[0] + OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField + 64);
  v35[5] = v11;
  v35[2] = v9;
  v35[3] = v10;
  v12 = v34;
  v14 = v31;
  v13 = v32;
  v7[4] = v33;
  v7[5] = v12;
  v7[2] = v14;
  v7[3] = v13;
  v15 = v30;
  *v7 = v29;
  v7[1] = v15;
  sub_21CA0AF44(&v29, &v27);
  sub_21CA0AF7C(v35);

  v16 = [a1 text];
  if (v16)
  {
    v17 = v16;
    v18 = sub_21CB855C4();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = v29;
  v22 = v30;
  v27 = v29;
  v28 = v30;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
  MEMORY[0x21CF14A20](v26);
  if (!v20)
  {

LABEL_10:
    v27 = v21;
    v28 = v22;
    MEMORY[0x21CF14A20](v26, v23);
    v25 = sub_21CB85584();

    [a1 setText_];

    return;
  }

  if (v18 == v26[0] && v20 == v26[1])
  {

    return;
  }

  v24 = sub_21CB86344();

  if ((v24 & 1) == 0)
  {
    goto LABEL_10;
  }
}

void *sub_21CA0AD10@<X0>(void *a1@<X8>)
{
  v3 = v1[3];
  v18 = v1[2];
  v19 = v3;
  v4 = v1[5];
  v20 = v1[4];
  v21 = v4;
  v5 = v1[1];
  v16 = *v1;
  v17 = v5;
  v6 = type metadata accessor for _PMTextFieldWithSuggestions.Coordinator();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField];
  v9 = v17;
  *v8 = v16;
  *(v8 + 1) = v9;
  v10 = v21;
  v12 = v18;
  v11 = v19;
  *(v8 + 4) = v20;
  *(v8 + 5) = v10;
  *(v8 + 2) = v12;
  *(v8 + 3) = v11;
  sub_21CA0AF44(&v16, v15);
  v14.receiver = v7;
  v14.super_class = v6;
  result = objc_msgSendSuper2(&v14, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_21CA0ADFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CA0AFAC();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_21CA0AE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CA0AFAC();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_21CA0AEC4(uint64_t a1)
{
  sub_21CA0AFAC();
  sub_21CB83454();
  __break(1u);
}

unint64_t sub_21CA0AEF0()
{
  result = qword_27CDF4D60;
  if (!qword_27CDF4D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4D60);
  }

  return result;
}

unint64_t sub_21CA0AFAC()
{
  result = qword_27CDF4D78;
  if (!qword_27CDF4D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4D78);
  }

  return result;
}

uint64_t sub_21CA0B028(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D90, &qword_21CBA9F00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_21CA0B0BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_21CA0B104(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CA0B170(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21CA0B1C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_21CA0B250()
{
  result = qword_27CDF4DA8;
  if (!qword_27CDF4DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4DA0, &qword_21CBBC970);
    sub_21CA0AEF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4DA8);
  }

  return result;
}

unint64_t sub_21CA0B314()
{
  result = qword_27CDF4DB8;
  if (!qword_27CDF4DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CDF4DC0, &unk_21CBBC9A0);
    sub_21CA0B250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4DB8);
  }

  return result;
}

uint64_t sub_21CA0B3BC()
{
  sub_21C815960();
  sub_21CB82F94();
  return v1;
}

uint64_t sub_21CA0B408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1);
  v9(v8);
  return sub_21CB85064();
}

uint64_t sub_21CA0B4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4E50, &qword_21CBBCA98);
  v7 = *(a1 + 16);
  v29 = sub_21CB85074();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v26 = &v26 - v8;
  v9 = sub_21CB828F4();
  v32 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v28 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v30 = &v26 - v12;
  v13 = *(a1 + 24);
  v39 = v7;
  v40 = v13;
  v41 = v2;
  v35 = v7;
  v36 = v13;
  v37 = v2;
  v14 = sub_21C6EADEC(&qword_27CDF4E58, &qword_27CDF4E50, &qword_21CBBCA98, MEMORY[0x277CE14C0]);
  sub_21CA0B408(sub_21CA0E01C, v38, sub_21CA0E028, v34, v6, v7, v14, v13);
  v15 = v27;
  (*(v4 + 16))(v27, v2, a1);
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v7;
  *(v17 + 24) = v13;
  (*(v4 + 32))(v17 + v16, v15, a1);
  v44 = MEMORY[0x277CE1410];
  v45 = v14;
  v46 = v13;
  v18 = v29;
  WitnessTable = swift_getWitnessTable();
  v20 = v28;
  v21 = v26;
  sub_21CB84914();

  (*(v31 + 8))(v21, v18);
  v42 = WitnessTable;
  v43 = MEMORY[0x277CE0790];
  v22 = swift_getWitnessTable();
  v23 = v30;
  sub_21C72BE10(v20, v9, v22);
  v24 = *(v32 + 8);
  v24(v20, v9);
  sub_21C72BE10(v23, v9, v22);
  return (v24)(v23, v9);
}

uint64_t sub_21CA0B914@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v92 = a4;
  v93 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v76 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v84 = v68 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4E60, &qword_21CBBCAA0);
  v80 = *(v8 - 8);
  v81 = v8;
  MEMORY[0x28223BE20](v8);
  v78 = v68 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4E68, &qword_21CBBCAA8);
  v89 = *(v10 - 8);
  v90 = v10;
  MEMORY[0x28223BE20](v10);
  v77 = v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4E70, &qword_21CBBCAB0);
  MEMORY[0x28223BE20](v12 - 8);
  v91 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v85 = v68 - v15;
  v17 = type metadata accessor for PMGroupMembersList(0, a2, a3, v16);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v68 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4E78, &unk_21CBBCAB8);
  v87 = *(v22 - 8);
  v88 = v22;
  MEMORY[0x28223BE20](v22);
  v86 = v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = v68 - v26;
  v82 = a1;
  v94 = *a1;
  v71 = *(v18 + 16);
  v71(v21, a1, v17, v25);
  v28 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v72 = v19;
  v29 = swift_allocObject();
  *(v29 + 16) = v93;
  *(v29 + 24) = a3;
  v75 = a3;
  v30 = *(v18 + 32);
  v73 = v21;
  v74 = v17;
  v70 = v30;
  v30(v29 + v28, v21, v17);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EB8, &qword_21CBB5E80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4E80, &qword_21CBBCAC8);
  sub_21C6EADEC(&qword_27CDF4E88, &qword_27CDF1EB8, &qword_21CBB5E80, MEMORY[0x277D83980]);
  sub_21CA0E130();
  sub_21C9FA524();
  v83 = v27;
  v31 = v82;
  sub_21CB84FF4();
  if (*(v31 + 9) == 1)
  {
    v32 = v74;
    sub_21CA0D410(v74);
    v33 = v31 + *(v32 + 80);
    v34 = *v33;
    v35 = *(v33 + 1);
    LOBYTE(v98) = v34;
    v99 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
    sub_21CB84D74();
    v68[1] = v95;
    v69 = v96;
    v36 = v73;
    (v71)(v73, v31, v32);
    v37 = swift_allocObject();
    v38 = v75;
    *(v37 + 16) = v93;
    *(v37 + 24) = v38;
    v70(v37 + v28, v36, v32);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4EB8, &qword_21CBBCAE0);
    v93 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    v40 = type metadata accessor for PMAddGroupMembersView(255);
    v41 = sub_21CB83994();
    v42 = sub_21CA0E614(&qword_27CDEE470, type metadata accessor for PMAddGroupMembersView, &unk_21CBA9BF8);
    v94 = v40;
    v95 = v41;
    v96 = v42;
    v97 = MEMORY[0x277CDE2B8];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v43 = v39;
    v44 = v78;
    v45 = v79;
    v46 = v84;
    sub_21CB847B4();

    (*(v76 + 8))(v46, v45);
    v47 = (v31 + *(v32 + 96));
    v48 = v47[1];
    v98 = *v47;
    v99 = v48;

    sub_21CB852C4();
    v94 = v45;
    v95 = v43;
    v96 = v93;
    v97 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v49 = v77;
    v50 = v81;
    sub_21CB845E4();

    (*(v80 + 8))(v44, v50);
    v52 = v89;
    v51 = v90;
    v53 = v85;
    (*(v89 + 32))(v85, v49, v90);
    v54 = 0;
    v55 = v51;
    v56 = v52;
  }

  else
  {
    v54 = 1;
    v56 = v89;
    v55 = v90;
    v53 = v85;
  }

  (*(v56 + 56))(v53, v54, 1, v55);
  v58 = v86;
  v57 = v87;
  v59 = *(v87 + 16);
  v60 = v83;
  v61 = v88;
  v59(v86, v83, v88);
  v62 = v91;
  sub_21C775844(v53, v91);
  v63 = v92;
  v59(v92, v58, v61);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4EB0, &qword_21CBBCAD8);
  sub_21C775844(v62, &v63[*(v64 + 48)]);
  sub_21C7758B4(v53);
  v65 = *(v57 + 8);
  v65(v60, v61);
  sub_21C7758B4(v62);
  return (v65)(v58, v61);
}

uint64_t sub_21CA0C220@<X0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a3;
  v33 = a4;
  v35 = a5;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4EC0, &qword_21CBBCB20);
  MEMORY[0x28223BE20](v34);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4EC8, &qword_21CBBCB28);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4EA0, &qword_21CBBCAD0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v17 = &v31 - v16;
  v18 = a1[5];
  v38[4] = a1[4];
  v38[5] = v18;
  v38[6] = a1[6];
  v19 = a1[1];
  v38[0] = *a1;
  v38[1] = v19;
  v20 = a1[3];
  v38[2] = a1[2];
  v38[3] = v20;
  if (*(a2 + 11) == 1)
  {
    v31 = &v31;
    MEMORY[0x28223BE20](v14);
    v21 = v32;
    v22 = v33;
    *(&v31 - 4) = v32;
    *(&v31 - 3) = v22;
    *(&v31 - 2) = a2;
    *(&v31 - 1) = v38;
    sub_21CA0C5D8(a2, v38, v21, v22, v11);
    sub_21CA0E1E8();
    sub_21CA0E468();
    sub_21CB825F4();
    (*(v13 + 16))(v8, v17, v12);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDF4E98, &qword_27CDF4EA0, &qword_21CBBCAD0, MEMORY[0x277CDD938]);
    sub_21CB83494();
    return (*(v13 + 8))(v17, v12);
  }

  else
  {
    v24 = type metadata accessor for PMGroupMembersList(0, v32, v33, v15);
    sub_21CA0CEC8(v38, v24, v36);
    v25 = v36[11];
    *(v8 + 10) = v36[10];
    *(v8 + 11) = v25;
    *(v8 + 12) = v36[12];
    *(v8 + 26) = v37;
    v26 = v36[7];
    *(v8 + 6) = v36[6];
    *(v8 + 7) = v26;
    v27 = v36[9];
    *(v8 + 8) = v36[8];
    *(v8 + 9) = v27;
    v28 = v36[3];
    *(v8 + 2) = v36[2];
    *(v8 + 3) = v28;
    v29 = v36[5];
    *(v8 + 4) = v36[4];
    *(v8 + 5) = v29;
    v30 = v36[1];
    *v8 = v36[0];
    *(v8 + 1) = v30;
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDF4E98, &qword_27CDF4EA0, &qword_21CBBCAD0, MEMORY[0x277CDD938]);
    sub_21CA0E1E8();
    return sub_21CB83494();
  }
}

uint64_t sub_21CA0C5D8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v79 = a5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4EE0, &unk_21CBBCB30);
  v69 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v70 = &v69 - v9;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4EE8, &qword_21CBBCB40);
  v80 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v71 = &v69 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4EF0, &qword_21CBBCB48);
  MEMORY[0x28223BE20](v74);
  v76 = &v69 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3178, &qword_21CBB7260);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v69 - v13);
  v72 = a3;
  v73 = a4;
  v16 = type metadata accessor for PMGroupMembersList(0, a3, a4, v15);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v69 - v19;
  v75 = type metadata accessor for PMGroupMemberDetailView(0);
  v21 = MEMORY[0x28223BE20](v75);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  if ((*(a1 + 9) & 1) != 0 || *(a2 + 80) == 1)
  {
    LODWORD(v71) = *(a1 + 9);
    (*(v17 + 16))(v20, a1, v16, v21);
    v25 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v80 = v14;
    v26 = (v18 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    v28 = v73;
    *(v27 + 16) = v72;
    *(v27 + 24) = v28;
    (*(v17 + 32))(v27 + v25, v20, v16);
    v69 = v27;
    v29 = (v27 + v26);
    v30 = a2[5];
    v29[4] = a2[4];
    v29[5] = v30;
    v29[6] = a2[6];
    v31 = a2[1];
    *v29 = *a2;
    v29[1] = v31;
    v32 = a2[3];
    v29[2] = a2[2];
    v29[3] = v32;
    LODWORD(v70) = *(v24 + 64);
    sub_21CA0E5A4(v24 + *(v16 + 76), v80);
    v33 = v75;
    v34 = *(v75 + 32);
    v35 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0);
    v36 = *(*(v35 - 8) + 56);
    v72 = v34;
    v36(&v23[v34], 1, 1, v35);
    *&v23[v33[9]] = 0x4044000000000000;
    v37 = v33[10];
    *&v23[v37] = swift_getKeyPath(byte_21CBBCAE8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
    swift_storeEnumTagMultiPayload();
    v38 = v33[12];
    v73 = v33[11];
    v39 = &v23[v38];
    KeyPath = swift_getKeyPath(byte_21CBBCB50);
    sub_21C7A33F0(a2, v88);
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C81C328(KeyPath, *&v88[0]);

    type metadata accessor for PMGroupMemberImageCache();
    sub_21CA0E614(&qword_27CDEECA8, type metadata accessor for PMGroupMemberImageCache, &unk_21CBBBA3C);
    v41 = sub_21CB82674();
    v43 = v42;

    *v39 = v41;
    v39[1] = v43;
    v44 = a2[5];
    *(v23 + 4) = a2[4];
    *(v23 + 5) = v44;
    *(v23 + 6) = a2[6];
    v45 = a2[1];
    *v23 = *a2;
    *(v23 + 1) = v45;
    v46 = a2[3];
    *(v23 + 2) = a2[2];
    *(v23 + 3) = v46;
    v23[112] = v71;
    v47 = v69;
    *(v23 + 15) = sub_21CA0EBC4;
    *(v23 + 16) = v47;
    v23[136] = v70;
    sub_21C7A33F0(a2, v88);

    v48 = v80;
    sub_21CA0E65C(v80, &v23[v72]);
    type metadata accessor for PMGroupMemberImageModel(0);
    swift_allocObject();
    sub_21C7A33F0(a2, v88);
    v49 = sub_21CA42988(v43, a2, 40.0);
    sub_21C7A344C(a2);

    sub_21C6EA794(v48, &qword_27CDF3178, &qword_21CBB7260);
    *&v23[v73] = v49;
    sub_21C9F4F54(v23, v76);
    swift_storeEnumTagMultiPayload();
    sub_21CA0E614(&qword_27CDF4ED8, type metadata accessor for PMGroupMemberDetailView, &unk_21CBBB898);
    v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4860, &qword_21CBBB958);
    v51 = sub_21C9F5084();
    *&v88[0] = v50;
    *(&v88[0] + 1) = v51;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v88[0] = v77;
    *(&v88[0] + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    return sub_21CA0E6CC(v23, type metadata accessor for PMGroupMemberDetailView);
  }

  else
  {
    v54 = a2[5];
    v85 = a2[4];
    v86 = v54;
    v87[0] = a2[6];
    v55 = a2[1];
    v81 = *a2;
    v82 = v55;
    v56 = a2[3];
    v83 = a2[2];
    v84 = v56;
    v57 = sub_21CB82934();
    v58 = v69;
    v59 = v57;
    v60 = sub_21CB83CE4();
    *&v87[1] = v59;
    BYTE8(v87[1]) = v60;
    sub_21C7A33F0(a2, v88);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4860, &qword_21CBBB958);
    v62 = sub_21C9F5084();
    v63 = v70;
    sub_21CB84674();
    v88[4] = v85;
    v88[5] = v86;
    v89[0] = v87[0];
    *(v89 + 9) = *(v87 + 9);
    v88[0] = v81;
    v88[1] = v82;
    v88[2] = v83;
    v88[3] = v84;
    sub_21C6EA794(v88, &qword_27CDF4860, &qword_21CBBB958);
    *&v81 = v61;
    *(&v81 + 1) = v62;
    v64 = swift_getOpaqueTypeConformance2();
    v65 = v71;
    v66 = v77;
    MEMORY[0x21CF143C0](1, MEMORY[0x277D84F90], v77, v64);
    (*(v58 + 8))(v63, v66);
    v67 = v80;
    v68 = v78;
    v80[2](v76, v65, v78);
    swift_storeEnumTagMultiPayload();
    sub_21CA0E614(&qword_27CDF4ED8, type metadata accessor for PMGroupMemberDetailView, &unk_21CBBB898);
    *&v81 = v66;
    *(&v81 + 1) = v64;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    return (*(v67 + 8))(v65, v68);
  }
}

double sub_21CA0CEC8@<D0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a3;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v60 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v53 - v10;
  v12 = v3[8];
  v63 = v3[9];
  v64 = v12;
  v62 = v3[12];
  v13 = *(v6 + 16);
  v58 = v3;
  v59 = v13;
  (v13)(&v53 - v10, v3, a2, v9);
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v54 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  v16 = *(a2 + 16);
  v56 = *(a2 + 24);
  v17 = v56;
  v57 = v16;
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  v18 = *(v6 + 32);
  v55 = v6 + 32;
  v18(v15 + v14, v11, a2);
  v19 = v18;
  v61 = v15;
  v20 = v54;
  v21 = (v15 + v54);
  v22 = a1[5];
  v21[4] = a1[4];
  v21[5] = v22;
  v21[6] = a1[6];
  v23 = a1[1];
  *v21 = *a1;
  v21[1] = v23;
  v24 = a1[3];
  v21[2] = a1[2];
  v21[3] = v24;
  v25 = v60;
  v26 = v58;
  v59(v60, v58, a2);
  v27 = swift_allocObject();
  v28 = v56;
  *(v27 + 16) = v57;
  *(v27 + 24) = v28;
  v29 = v25;
  v30 = v27;
  v19(v27 + v14, v29, a2);
  v31 = (v30 + v20);
  v32 = a1[5];
  v31[4] = a1[4];
  v31[5] = v32;
  v31[6] = a1[6];
  v33 = a1[1];
  *v31 = *a1;
  v31[1] = v33;
  v34 = a1[3];
  v31[2] = a1[2];
  v31[3] = v34;
  v35 = v26[10];
  v68 = 0;
  KeyPath = swift_getKeyPath(byte_21CBBCB50);
  sub_21C7A33F0(a1, v93);
  sub_21C7A33F0(a1, v93);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C81C328(KeyPath, *&v93[0]);

  type metadata accessor for PMGroupMemberImageCache();
  sub_21CA0E614(&qword_27CDEECA8, type metadata accessor for PMGroupMemberImageCache, &unk_21CBBBA3C);
  v37 = sub_21CB82674();
  v39 = v38;

  v40 = a1[5];
  v76 = a1[4];
  v77 = v40;
  v78 = a1[6];
  v41 = a1[1];
  v72 = *a1;
  v73 = v41;
  v42 = a1[3];
  v74 = a1[2];
  v75 = v42;
  type metadata accessor for PMGroupMemberImageModel(0);
  swift_allocObject();
  sub_21C7A33F0(a1, v93);

  v44 = sub_21CA42988(v43, a1, 32.0);

  v83 = v76;
  v84 = v77;
  v85 = v78;
  v79 = v72;
  v80 = v73;
  v81 = v74;
  v82 = v75;
  LOBYTE(v86) = v64;
  BYTE1(v86) = v63;
  BYTE2(v86) = v62;
  BYTE7(v86) = v71;
  *(&v86 + 3) = v70;
  *(&v86 + 1) = sub_21CA0E72C;
  *&v87 = v61;
  *(&v87 + 1) = sub_21CA0EA74;
  *&v88 = v30;
  BYTE8(v88) = v35;
  *(&v88 + 9) = *v69;
  HIDWORD(v88) = *&v69[3];
  *&v89 = v44;
  *(&v89 + 1) = 0x4040000000000000;
  *&v90 = sub_21C9FA598;
  *(&v90 + 1) = 0;
  LOBYTE(v91) = v68;
  DWORD1(v91) = *&v67[3];
  *(&v91 + 1) = *v67;
  *(&v91 + 1) = v37;
  v92 = v39;
  v93[0] = v72;
  v93[1] = v73;
  v93[5] = v77;
  v93[6] = v78;
  v93[3] = v75;
  v93[4] = v76;
  v93[2] = v74;
  v94 = v64;
  v95 = v63;
  v96 = v62;
  v98 = v71;
  v97 = v70;
  v99 = sub_21CA0E72C;
  v100 = v61;
  v101 = sub_21CA0EA74;
  v102 = v30;
  v103 = v35;
  *&v104[3] = *&v69[3];
  *v104 = *v69;
  v105 = v44;
  v106 = 0x4040000000000000;
  v107 = sub_21C9FA598;
  v108 = 0;
  v109 = v68;
  *&v110[3] = *&v67[3];
  *v110 = *v67;
  v111 = v37;
  v112 = v39;
  sub_21CA0EB14(&v79, &v66);
  sub_21CA0EB70(v93);
  v45 = v90;
  v46 = v65;
  *(v65 + 160) = v89;
  *(v46 + 176) = v45;
  *(v46 + 192) = v91;
  *(v46 + 208) = v92;
  v47 = v86;
  *(v46 + 96) = v85;
  *(v46 + 112) = v47;
  v48 = v88;
  *(v46 + 128) = v87;
  *(v46 + 144) = v48;
  v49 = v82;
  *(v46 + 32) = v81;
  *(v46 + 48) = v49;
  v50 = v84;
  *(v46 + 64) = v83;
  *(v46 + 80) = v50;
  result = v79.n128_f64[0];
  v52 = v80;
  *v46 = v79;
  *(v46 + 16) = v52;
  return result;
}

uint64_t sub_21CA0D410(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = *(a1 + 16);
  (*(v2 + 32))(v6 + v5, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21CB84DA4();
}

uint64_t sub_21CA0D564@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v34 = a4;
  v7 = sub_21CB83994();
  v8 = *(v7 - 8);
  v32 = v7;
  v33 = v8;
  MEMORY[0x28223BE20](v7);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMGroupMembersList(0, a2, a3, v10);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = type metadata accessor for PMAddGroupMembersView(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = (&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *a1;
  (*(v12 + 16))(v14, a1, v11, v16);
  v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v21 = swift_allocObject();
  v22 = v30;
  *(v21 + 16) = a2;
  *(v21 + 24) = v22;
  (*(v12 + 32))(v21 + v20, v14, v11);
  *v18 = v19;
  v18[1] = sub_21CA0E2C8;
  v18[2] = v21;
  v23 = *(v15 + 24);
  *(v18 + v23) = swift_getKeyPath(byte_21CBBCAE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v24 = (a1 + *(v11 + 96));
  v25 = v24[1];
  v35 = *v24;
  v36 = v25;

  sub_21CB852C4();
  v26 = v31;
  sub_21CB834F4();

  sub_21CA0E614(&qword_27CDEE470, type metadata accessor for PMAddGroupMembersView, &unk_21CBA9BF8);
  v27 = v32;
  sub_21CB84524();
  (*(v33 + 8))(v26, v27);
  return sub_21CA0E6CC(v18, type metadata accessor for PMAddGroupMembersView);
}

uint64_t sub_21CA0D8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  (*(v12 + 16))(v9);
  sub_21C72BE10(v7, a2, a3);
  v13 = *(v5 + 8);
  v13(v7, a2);
  sub_21C72BE10(v11, a2, a3);
  return (v13)(v11, a2);
}

void sub_21CA0D9DC(int *a1)
{
  v2 = v1;
  v4 = sub_21CB82F84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2 + a1[22];
  v9 = *v8;
  if (*(v8 + 8) == 1)
  {
    if ((v9 & 1) == 0)
    {
      return;
    }
  }

  else
  {

    sub_21CB85B04();
    v10 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v9, 0);
    (*(v5 + 8))(v7, v4);
    if (v19 != 1)
    {
      return;
    }
  }

  v11 = (v2 + a1[21]);
  v12 = *v11;
  v13 = *(v11 + 1);
  v19 = *v11;
  v20 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  if ((v18 & 1) == 0)
  {
    v14 = (v2 + a1[20]);
    v15 = *v14;
    v16 = *(v14 + 1);
    v19 = v15;
    v20 = v16;
    v18 = 1;
    sub_21CB84D64();
    v19 = v12;
    v20 = v13;
    v18 = 1;
    sub_21CB84D64();
  }
}

uint64_t sub_21CA0DBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PMGroupMembersList(0, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21CA0DC44@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

void sub_21CA0DD7C(uint64_t a1)
{
  sub_21CA0DF88(319, &qword_27CDEE458, &type metadata for PMGroupMember, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_21C7226D8();
    if (v2 <= 0x3F)
    {
      sub_21CA0DF30(319);
      if (v3 <= 0x3F)
      {
        sub_21CA0DF88(319, &qword_27CDF4000, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_21CA0DF88(319, &qword_27CDEB890, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21CA0DF30(uint64_t a1)
{
  if (!qword_27CDF3198)
  {
    type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(255);
    v1 = sub_21CB85E54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF3198);
    }
  }
}

void sub_21CA0DF88(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_21CA0E094@<X0>(__n128 *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for PMGroupMembersList(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_21CA0C220(a1, v9, v6, v7, a3);
}

unint64_t sub_21CA0E130()
{
  result = qword_27CDF4E90;
  if (!qword_27CDF4E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4E80, &qword_21CBBCAC8);
    sub_21C6EADEC(&qword_27CDF4E98, &qword_27CDF4EA0, &qword_21CBBCAD0, MEMORY[0x277CDD938]);
    sub_21CA0E1E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4E90);
  }

  return result;
}

unint64_t sub_21CA0E1E8()
{
  result = qword_27CDF4EA8;
  if (!qword_27CDF4EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4EA8);
  }

  return result;
}

uint64_t sub_21CA0E23C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for PMGroupMembersList(0, v4, v5, a1) - 8);
  v7 = (v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)));

  return sub_21CA0D564(v7, v4, v5, a2);
}

uint64_t sub_21CA0E338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for PMGroupMembersList(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_21CA0DBD0(v9, v5, v6, v7);
}

double sub_21CA0E3BC@<D0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[5];
  v7 = type metadata accessor for PMGroupMembersList(0, v4, v5, a1);
  sub_21CA0CEC8(v6, v7, v15);
  v8 = v15[11];
  *(a2 + 160) = v15[10];
  *(a2 + 176) = v8;
  *(a2 + 192) = v15[12];
  *(a2 + 208) = v16;
  v9 = v15[7];
  *(a2 + 96) = v15[6];
  *(a2 + 112) = v9;
  v10 = v15[9];
  *(a2 + 128) = v15[8];
  *(a2 + 144) = v10;
  v11 = v15[3];
  *(a2 + 32) = v15[2];
  *(a2 + 48) = v11;
  v12 = v15[5];
  *(a2 + 64) = v15[4];
  *(a2 + 80) = v12;
  result = *v15;
  v14 = v15[1];
  *a2 = v15[0];
  *(a2 + 16) = v14;
  return result;
}

unint64_t sub_21CA0E468()
{
  result = qword_27CDF4ED0;
  if (!qword_27CDF4ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4EC8, &qword_21CBBCB28);
    sub_21CA0E614(&qword_27CDF4ED8, type metadata accessor for PMGroupMemberDetailView, &unk_21CBBB898);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4EE0, &unk_21CBBCB30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4860, &qword_21CBBB958);
    sub_21C9F5084();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4ED0);
  }

  return result;
}

uint64_t sub_21CA0E5A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3178, &qword_21CBB7260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CA0E614(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CA0E65C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3178, &qword_21CBB7260);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CA0E6CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CA0E730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for PMGroupMembersList(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return (*(v4 + v6 + 48))(*(v4 + v7 + 32), *(v4 + v7 + 40));
}

uint64_t objectdestroy_18Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PMGroupMembersList(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 8) + 64);

  v9 = v4 + v7 + *(v5 + 76);
  v10 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {

    v11 = v9 + *(v10 + 24);
    v12 = sub_21CB85C44();
    (*(*(v12 - 8) + 8))(v11, v12);
    type metadata accessor for PMSharingGroup(0);

    v13 = v9 + *(v10 + 28);
    if (*(v13 + 40))
    {
    }
  }

  v14 = (v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_21C7025C4(*(v4 + v7 + *(v5 + 88)), *(v4 + v7 + *(v5 + 88) + 8));

  return MEMORY[0x2821FE8E8](v4, v14 + 112, v6 | 7);
}

uint64_t sub_21CA0EA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(type metadata accessor for PMGroupMembersList(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return (*(v4 + v7 + 72))(*(v4 + v8 + 32), *(v4 + v8 + 40), a1);
}

char *sub_21CA0EBC8(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    *&v29[0] = MEMORY[0x277D84F90];
    sub_21CB86154();
    v8 = a1 + 40;
    do
    {
      v9 = objc_allocWithZone(MEMORY[0x277CDBD40]);

      v10 = sub_21CB85584();

      [v9 initWithHandle:v10 permissionLevel:a2];

      sub_21CB86134();
      sub_21CB86164();
      sub_21CB86174();
      sub_21CB86144();
      v8 += 16;
      --v4;
    }

    while (v4);
  }

  v11 = *(v3 + 16);
  sub_21C6E8F4C(0, &qword_27CDF4460, 0x277CDBD40);
  v12 = sub_21CB85814();

  v13 = [v11 groupMemberDataForGroupParticipants_];

  sub_21C6E8F4C(0, &qword_27CDEE440, 0x277CBAA00);
  v14 = sub_21CB85824();

  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_6;
    }

LABEL_16:

    return MEMORY[0x277D84F90];
  }

  v15 = sub_21CB85FA4();
  if (!v15)
  {
    goto LABEL_16;
  }

LABEL_6:
  result = sub_21C7B10A0(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    v18 = v5;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x21CF15BD0](v17, v14);
      }

      else
      {
        v19 = *(v14 + 8 * v17 + 32);
      }

      v20 = v19;
      sub_21C9DCC64(v19, v29);

      v22 = *(v5 + 16);
      v21 = *(v5 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_21C7B10A0((v21 > 1), v22 + 1, 1);
      }

      ++v17;
      *(v5 + 16) = v22 + 1;
      v23 = (v5 + 112 * v22);
      v24 = v29[0];
      v25 = v29[2];
      v23[3] = v29[1];
      v23[4] = v25;
      v23[2] = v24;
      v26 = v29[3];
      v27 = v29[4];
      v28 = v29[6];
      v23[7] = v29[5];
      v23[8] = v28;
      v23[5] = v26;
      v23[6] = v27;
    }

    while (v15 != v17);

    return v18;
  }

  __break(1u);
  return result;
}

uint64_t sub_21CA0EE78()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21CA0EF18@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PMAppAccountsCollectionView(0);
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F10, &qword_21CBBCC38);
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F18, &qword_21CBBCC40);
  MEMORY[0x28223BE20](v29);
  v9 = &v24 - v8;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F20, &qword_21CBBCC48);
  MEMORY[0x28223BE20](v28);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F28, &qword_21CBBCC50);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  if (sub_21CA0F4E8())
  {
    v16 = v1[3];
    v30 = v1[2];
    v31 = v16;
    sub_21C71F3FC();

    v30 = sub_21CB84054();
    v31 = v17;
    v32 = v18 & 1;
    v33 = v19;
    MEMORY[0x28223BE20](v30);
    sub_21CA10860();
    sub_21CB85034();
    (*(v13 + 16))(v11, v15, v12);
    swift_storeEnumTagMultiPayload();
    sub_21CA107C8();
    sub_21CB83494();
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    v30 = *v1;
    sub_21CA10AA0(v1, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppAccountsCollectionView);
    v21 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v22 = swift_allocObject();
    sub_21CA10BCC(&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for PMAppAccountsCollectionView);

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
    v25 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F30, &qword_21CBBCC58);
    sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730, MEMORY[0x277D83980]);
    sub_21C6EADEC(&qword_27CDF4F38, &qword_27CDF4F30, &qword_21CBBCC58, MEMORY[0x277CDD938]);
    sub_21CA10D00(&qword_27CDEB2C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
    sub_21CB84FF4();
    swift_getKeyPath(a0_40);
    v23 = v27;
    sub_21CB84FC4();

    (*(v26 + 8))(v7, v23);
    v9[*(v29 + 36)] = 0;
    sub_21C6EDBAC(v9, v11, &qword_27CDF4F18, &qword_21CBBCC40);
    swift_storeEnumTagMultiPayload();
    sub_21CA107C8();
    sub_21CA10860();
    sub_21CB83494();
    return sub_21C6EA794(v9, &qword_27CDF4F18, &qword_21CBBCC40);
  }
}

BOOL sub_21CA0F4E8()
{
  v1 = sub_21CB83834();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v25 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  type metadata accessor for PMAppAccountsCollectionView(0);
  v26 = v0;
  sub_21C728D50(v16);
  (*(v2 + 104))(v13, *MEMORY[0x277CE0558], v1);
  (*(v2 + 56))(v13, 0, 1, v1);
  v17 = *(v5 + 56);
  sub_21C70CA1C(v16, v7);
  sub_21C70CA1C(v13, &v7[v17]);
  v18 = *(v2 + 48);
  if (v18(v7, 1, v1) != 1)
  {
    sub_21C70CA1C(v7, v10);
    if (v18(&v7[v17], 1, v1) != 1)
    {
      v19 = v25;
      (*(v2 + 32))(v25, &v7[v17], v1);
      sub_21CA10D00(&qword_27CDEE538, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v20 = sub_21CB85574();
      v21 = *(v2 + 8);
      v21(v19, v1);
      sub_21C6EA794(v13, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
      v21(v10, v1);
      sub_21C6EA794(v7, &qword_27CDEC390, &qword_21CBA40E0);
      if ((v20 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    sub_21C6EA794(v13, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v2 + 8))(v10, v1);
LABEL_6:
    sub_21C6EA794(v7, &qword_27CDEE530, &unk_21CBA9D80);
    return 0;
  }

  sub_21C6EA794(v13, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
  if (v18(&v7[v17], 1, v1) != 1)
  {
    goto LABEL_6;
  }

  sub_21C6EA794(v7, &qword_27CDEC390, &qword_21CBA40E0);
LABEL_8:
  v22 = v26[5];
  v23 = v26[4] & 0xFFFFFFFFFFFFLL;
  if ((v22 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v22) & 0xF;
  }

  if (!v23)
  {
    return *(v26[1] + 16) != 0;
  }

  return 0;
}

uint64_t sub_21CA0F948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[0] = a2;
  v3 = type metadata accessor for PMAppAccountsCollectionView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F10, &qword_21CBBCC38);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - v8;
  v14[1] = *(a1 + 8);
  sub_21CA10AA0(a1, v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppAccountsCollectionView);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_21CA10BCC(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for PMAppAccountsCollectionView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F30, &qword_21CBBCC58);
  sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730, MEMORY[0x277D83980]);
  sub_21C6EADEC(&qword_27CDF4F38, &qword_27CDF4F30, &qword_21CBBCC58, MEMORY[0x277CDD938]);
  sub_21CA10D00(&qword_27CDEB2C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
  sub_21CB84FF4();
  swift_getKeyPath(a0_40);
  v12 = v14[0];
  sub_21CB84FC4();

  (*(v7 + 8))(v9, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F18, &qword_21CBBCC40);
  *(v12 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_21CA0FC6C(void *a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F60, &qword_21CBBCC88);
  sub_21C6EADEC(&qword_27CDF4F68, &qword_27CDF4F60, &qword_21CBBCC88, &unk_21CBA4210);
  return sub_21CB82614();
}

uint64_t sub_21CA0FD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F70, &qword_21CBBCC90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  sub_21CA0FF28(a1, v3, &v19 - v7);
  v9 = (a1 + *(type metadata accessor for PMAccount(0) + 28));
  v11 = *v9;
  v10 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  if (v10)
  {
    if (v12)
    {
      v14 = 2;
    }

    else
    {
      v15 = [v13 severity];
      if (v15 <= 3)
      {
        v14 = 0x2010002u >> (8 * v15);
      }

      else
      {
        v14 = 2;
      }
    }
  }

  else
  {
    v14 = 3;
  }

  *a2 = v11;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 33) = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F60, &qword_21CBBCC88);
  sub_21C6EDBAC(v8, a2 + *(v16 + 48), &qword_27CDF4F70, &qword_21CBBCC90);
  v17 = *(v16 + 52);
  *(a2 + v17) = swift_getKeyPath(byte_21CBBCC98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  sub_21C7D33AC(v11, v10, v12, v13);
  return sub_21C6EA794(v8, &qword_27CDF4F70, &qword_21CBBCC90);
}

uint64_t sub_21CA0FEFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C7C9AD8();
  *a1 = result;
  return result;
}

uint64_t sub_21CA0FF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = type metadata accessor for PMAccountRow(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC70, &qword_21CBAD0C0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v37 = a1;
  sub_21CA10AA0(a1, v7, type metadata accessor for PMAccount);
  v11 = *(a2 + 40);
  v36 = *(a2 + 32);

  v12 = sub_21CB837E4();
  v13 = &v7[v5[7]];
  v14 = MEMORY[0x277CE04E8];
  *(v13 + 3) = MEMORY[0x277CE04F8];
  *(v13 + 4) = v14;
  *v13 = v12;
  v15 = v5[9];
  KeyPath = swift_getKeyPath(byte_21CBBCCC8);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v17 = &v7[v15];
  sub_21CB86544();
  sub_21C7073E8(KeyPath, v39);

  type metadata accessor for PMGroupsStore(0);
  sub_21CA10D00(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v18 = sub_21CB82674();
  v20 = v19;

  *v17 = v18;
  v17[1] = v20;
  v21 = &v7[v5[10]];
  *v21 = swift_getKeyPath(byte_21CBBCCE8);
  v21[8] = 0;
  v22 = &v7[v5[11]];
  *v22 = swift_getKeyPath(byte_21CBBCD10);
  v22[8] = 0;
  v23 = v5[12];
  *&v7[v23] = swift_getKeyPath(aX_56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v24 = v5[13];
  *&v7[v24] = swift_getKeyPath(aH_86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v25 = v5[14];
  *&v7[v25] = swift_getKeyPath(byte_21CBBCDB0);
  v26 = &v7[v5[5]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v7[v5[6]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v7[v5[8]];
  *v28 = v36;
  *(v28 + 1) = v11;
  [objc_opt_self() isPasswordsAppInstalled];
  sub_21CB85214();
  sub_21CB82AC4();
  v29 = sub_21CA10BCC(v7, v10, type metadata accessor for PMAccountRow);
  v30 = &v10[*(v8 + 36)];
  v31 = v44;
  *(v30 + 4) = v43;
  *(v30 + 5) = v31;
  *(v30 + 6) = v45;
  v32 = v40;
  *v30 = v39;
  *(v30 + 1) = v32;
  v33 = v42;
  *(v30 + 2) = v41;
  *(v30 + 3) = v33;
  MEMORY[0x28223BE20](v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F78, &qword_21CBBCDD0);
  sub_21C7EC1C8();
  sub_21CA10B10();
  sub_21CB84204();
  return sub_21C6EA794(v10, &qword_27CDEBC70, &qword_21CBAD0C0);
}

uint64_t sub_21CA10390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v25 = a1;
  v29 = a3;
  v3 = type metadata accessor for PMAccount(0);
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for PMAppAccountsCollectionView(0);
  v24 = *(v5 - 8);
  v6 = *(v24 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB81024();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC198, &qword_21CBAF100);
  MEMORY[0x28223BE20](v28);
  v13 = &v24 - v12;
  sub_21CB81014();
  v14 = sub_21CB81004();
  v16 = v15;
  (*(v9 + 8))(v11, v8);
  sub_21CA10AA0(v25, v7, type metadata accessor for PMAppAccountsCollectionView);
  sub_21CA10AA0(v27, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccount);
  v17 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v18 = (v6 + *(v26 + 80) + v17) & ~*(v26 + 80);
  v19 = swift_allocObject();
  sub_21CA10BCC(v7, v19 + v17, type metadata accessor for PMAppAccountsCollectionView);
  sub_21CA10BCC(&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for PMAccount);
  v33[0] = v14;
  v33[1] = v16;
  v30 = v33;
  v31 = 0x69662E6873617274;
  v32 = 0xEA00000000006C6CLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  sub_21CB84DA4();

  v20 = sub_21CB84A64();
  KeyPath = swift_getKeyPath(byte_21CBBCDD8);
  v22 = &v13[*(v28 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  sub_21C7FC8A0();
  sub_21CB845C4();
  return sub_21C6EA794(v13, &qword_27CDEC198, &qword_21CBAF100);
}

unint64_t sub_21CA107C8()
{
  result = qword_27CDF4F40;
  if (!qword_27CDF4F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4F28, &qword_21CBBCC50);
    sub_21CA10860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4F40);
  }

  return result;
}

unint64_t sub_21CA10860()
{
  result = qword_27CDF4F48;
  if (!qword_27CDF4F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4F18, &qword_21CBBCC40);
    sub_21CA108EC();
    sub_21CA1099C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4F48);
  }

  return result;
}

unint64_t sub_21CA108EC()
{
  result = qword_27CDF4F50;
  if (!qword_27CDF4F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4F10, &qword_21CBBCC38);
    sub_21C6EADEC(&qword_27CDF4F38, &qword_27CDF4F30, &qword_21CBBCC58, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4F50);
  }

  return result;
}

unint64_t sub_21CA1099C()
{
  result = qword_27CDF4F58;
  if (!qword_27CDF4F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4F58);
  }

  return result;
}

uint64_t sub_21CA109F8(void *a1)
{
  v3 = *(type metadata accessor for PMAppAccountsCollectionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CA0FC6C(a1, v4);
}

uint64_t sub_21CA10AA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21CA10B10()
{
  result = qword_27CDF4F80;
  if (!qword_27CDF4F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4F78, &qword_21CBBCDD0);
    sub_21C7FC8A0();
    sub_21CA10D00(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4F80);
  }

  return result;
}

uint64_t sub_21CA10BCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA10C34()
{
  v1 = *(type metadata accessor for PMAppAccountsCollectionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PMAccount(0) - 8);
  return (*(v0 + v2 + 48))(v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t sub_21CA10D00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21CA10D48()
{
  result = qword_27CDF4F88;
  if (!qword_27CDF4F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4F90, &unk_21CBBCE10);
    sub_21CA107C8();
    sub_21CA10860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4F88);
  }

  return result;
}

uint64_t sub_21CA10E1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBBD210);
  sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__networkToShowQRCodeSheetFor;
  swift_beginAccess();
  return sub_21C6EDBAC(v3 + v4, a2, &qword_27CDEE678, &unk_21CBBA210);
}

uint64_t sub_21CA10EF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_21C6EDBAC(a1, &v6 - v3, &qword_27CDEE678, &unk_21CBBA210);
  return sub_21C861308(v4);
}

uint64_t sub_21CA10FA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBBD0C8);
  sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__forgetNetworkAlertConfiguration;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21CA11094()
{
  sub_21CB86484();
  sub_21CB854C4();
  return sub_21CB864D4();
}

uint64_t sub_21CA110E8(uint64_t a1)
{
  sub_21CB86484();
  sub_21CB854C4();
  return sub_21CB864D4();
}

uint64_t sub_21CA11130(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CB86344();
  }
}

uint64_t sub_21CA11160@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  v55 = *(v3 - 8);
  *&v56 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v44 - v4;
  v47 = sub_21CB81024();
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4FB8, &qword_21CBBCE98);
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4FC0, &qword_21CBBCEA0);
  v45 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4FC8, &qword_21CBBCEA8);
  v48 = *(v13 - 8);
  v49 = v13;
  MEMORY[0x28223BE20](v13);
  v44 = &v44 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4FD0, &qword_21CBBCEB0);
  v51 = *(v15 - 8);
  v52 = v15;
  MEMORY[0x28223BE20](v15);
  v50 = &v44 - v16;
  sub_21CA118EC(v2, v9);
  v54 = v2;
  v58 = v2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4FD8, &qword_21CBBCEB8);
  v18 = sub_21CA1A428();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5090, &qword_21CBBCF20);
  v20 = sub_21C6EADEC(&qword_27CDF5098, &qword_27CDF5090, &qword_21CBBCF20, MEMORY[0x277CDDF68]);
  *&v59 = v19;
  *(&v59 + 1) = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21CB84894();
  sub_21C6EA794(v9, &qword_27CDF4FB8, &qword_21CBBCE98);
  MGGetBoolAnswer();
  sub_21CB81014();
  v22 = sub_21CB81004();
  v24 = v23;
  (*(v46 + 8))(v6, v47);
  v62 = v22;
  v63 = v24;
  *&v59 = v7;
  *(&v59 + 1) = v17;
  v60 = v18;
  v61 = OpaqueTypeConformance2;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = sub_21C71F3FC();
  v27 = MEMORY[0x277D837D0];
  v28 = v44;
  sub_21CB842F4();

  (*(v45 + 8))(v12, v10);
  v29 = sub_21CB85184();
  MEMORY[0x28223BE20](v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF50A0, &qword_21CBBCF28);
  *&v59 = v10;
  *(&v59 + 1) = v27;
  v60 = v25;
  v61 = v26;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = v49;
  *&v59 = v49;
  *(&v59 + 1) = v27;
  v60 = v30;
  v61 = v26;
  swift_getOpaqueTypeConformance2();
  v32 = v50;
  sub_21CB84974();
  (*(v48 + 8))(v28, v31);
  v33 = v53;
  v34 = v56;
  sub_21CB85094();
  swift_getKeyPath(a0_41);
  sub_21CB850B4();

  (*(v55 + 8))(v33, v34);
  v56 = v59;
  v35 = v60;
  v36 = v61;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF50A8, &qword_21CBBCF58);
  v38 = v57;
  v39 = (v57 + *(v37 + 36));
  *v39 = swift_getKeyPath(asc_21CBBCF60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v40 = type metadata accessor for PMContentListSearchable(0);
  v41 = *(v40 + 20);
  *(v39 + v41) = swift_getKeyPath(byte_21CBBCF90);
  type metadata accessor for PMAppRootNavigationModel(0);
  sub_21CA1BBDC(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  sub_21CB821F4();
  v42 = v39 + *(v40 + 28);
  *v42 = v56;
  *(v42 + 2) = v35;
  *(v42 + 3) = v36;
  return (*(v51 + 32))(v38, v32, v52);
}

uint64_t sub_21CA118EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5088, &unk_21CBBCF10);
  MEMORY[0x28223BE20](v98);
  v87 = v77 - v3;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5100, &qword_21CBBD1A0);
  MEMORY[0x28223BE20](v89);
  v90 = v77 - v4;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5108, &qword_21CBBD1A8);
  v81 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v80 = v77 - v5;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5000, &qword_21CBBCEC8);
  MEMORY[0x28223BE20](v96);
  v92 = v77 - v6;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5110, &qword_21CBBD1B0);
  MEMORY[0x28223BE20](v93);
  v95 = v77 - v7;
  v8 = type metadata accessor for PMEmptyStateDetailView.Source(0);
  MEMORY[0x28223BE20](v8 - 8);
  v78 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for PMEmptyStateDetailView(0);
  MEMORY[0x28223BE20](v94);
  v79 = (v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_21CB83834();
  v85 = *(v11 - 8);
  v86 = v11;
  MEMORY[0x28223BE20](v11);
  v82 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  MEMORY[0x28223BE20](v83);
  v84 = v77 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v77 - v18;
  MEMORY[0x28223BE20](v20);
  v88 = v77 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  v23 = v99;
  swift_getKeyPath(a8_29);
  v99 = v23;
  v24 = sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  v25 = &qword_27CDEE000;
  v26 = *(v23 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__allNetworks);

  v27 = *(v26 + 16);

  if (!v27)
  {
    v28 = v16;
    v29 = v82;
    v77[1] = v24;
    v77[2] = v22;
    type metadata accessor for PMWiFiList(0);
    v77[3] = a1;
    v30 = v88;
    sub_21C728D50(v88);
    v32 = v85;
    v31 = v86;
    (*(v85 + 104))(v19, *MEMORY[0x277CE0558], v86);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = *(v83 + 48);
    v34 = v30;
    v35 = v84;
    sub_21C6EDBAC(v34, v84, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EDBAC(v19, v35 + v33, &qword_27CDEC390, &qword_21CBA40E0);
    v36 = *(v32 + 48);
    if (v36(v35, 1, v31) == 1)
    {
      sub_21C6EA794(v19, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v88, &qword_27CDEC390, &qword_21CBA40E0);
      if (v36(v35 + v33, 1, v31) == 1)
      {
        sub_21C6EA794(v35, &qword_27CDEC390, &qword_21CBA40E0);
        v37 = v79;
        v38 = v78;
LABEL_14:
        v76 = sub_21CB85C44();
        (*(*(v76 - 8) + 56))(v38, 4, 6, v76);
        sub_21C9E14F8(v38, 1, v37);
        sub_21CA1AEE4(v37, v95, type metadata accessor for PMEmptyStateDetailView);
        swift_storeEnumTagMultiPayload();
        sub_21CA1BBDC(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView, &unk_21CBBAF28);
        sub_21CA1A568();
        sub_21CB83494();
        return sub_21CA1B3F8(v37, type metadata accessor for PMEmptyStateDetailView);
      }

      goto LABEL_7;
    }

    sub_21C6EDBAC(v35, v28, &qword_27CDEC390, &qword_21CBA40E0);
    if (v36(v35 + v33, 1, v31) == 1)
    {
      sub_21C6EA794(v19, &qword_27CDEC390, &qword_21CBA40E0);
      sub_21C6EA794(v88, &qword_27CDEC390, &qword_21CBA40E0);
      (*(v32 + 8))(v28, v31);
LABEL_7:
      sub_21C6EA794(v35, &qword_27CDEE530, &unk_21CBA9D80);
      v25 = &qword_27CDEE000;
      goto LABEL_8;
    }

    (*(v32 + 32))(v29, v35 + v33, v31);
    sub_21CA1BBDC(&qword_27CDEE538, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
    v74 = sub_21CB85574();
    v75 = *(v32 + 8);
    v75(v29, v31);
    sub_21C6EA794(v19, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v88, &qword_27CDEC390, &qword_21CBA40E0);
    v75(v28, v31);
    sub_21C6EA794(v35, &qword_27CDEC390, &qword_21CBA40E0);
    v37 = v79;
    v38 = v78;
    v25 = &qword_27CDEE000;
    if (v74)
    {
      goto LABEL_14;
    }
  }

LABEL_8:
  sub_21CB85084();
  v39 = v99;
  swift_getKeyPath(a8_29);
  v99 = v39;
  sub_21CB810D4();

  v40 = *(v39 + v25[190]);

  v41 = *(v40 + 16);

  if (v41)
  {
    v42 = v87;
    sub_21CA1274C(v87);
    v43 = sub_21CB85214();
    v45 = v44;
    v46 = v42 + *(v98 + 36);
    sub_21CA13588(v46);
    v47 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF70, &qword_21CBA3990) + 36));
    *v47 = v43;
    v47[1] = v45;
    sub_21C6EDBAC(v42, v90, &qword_27CDF5088, &unk_21CBBCF10);
    swift_storeEnumTagMultiPayload();
    v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5008, &qword_21CBBCED0);
    v49 = type metadata accessor for PMWiFiNetwork(255);
    v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5010, &qword_21CBBCED8);
    v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5018, &qword_21CBBCEE0);
    v52 = sub_21CA1A768();
    v99 = v51;
    v100 = v52;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v54 = sub_21CA1BBDC(&qword_27CDF5070, type metadata accessor for PMWiFiNetwork, &protocol conformance descriptor for PMWiFiNetwork);
    v55 = type metadata accessor for PMWiFiQRCodeView(255);
    v56 = sub_21CB83994();
    v57 = sub_21CA1BBDC(&qword_27CDF5078, type metadata accessor for PMWiFiQRCodeView, &unk_21CBC6534);
    v99 = v55;
    v100 = v56;
    v101 = v57;
    v102 = MEMORY[0x277CDE2B8];
    v58 = swift_getOpaqueTypeConformance2();
    v99 = v48;
    v100 = v49;
    v101 = v50;
    v102 = OpaqueTypeConformance2;
    v103 = v54;
    v104 = v58;
    swift_getOpaqueTypeConformance2();
    sub_21CA1AA74();
    v59 = v92;
    sub_21CB83494();
    sub_21C6EA794(v42, &qword_27CDF5088, &unk_21CBBCF10);
  }

  else
  {
    v60 = v80;
    sub_21CA1274C(v80);
    v61 = v81;
    v62 = v91;
    (*(v81 + 16))(v90, v60, v91);
    swift_storeEnumTagMultiPayload();
    v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5008, &qword_21CBBCED0);
    v63 = type metadata accessor for PMWiFiNetwork(255);
    v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5010, &qword_21CBBCED8);
    v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5018, &qword_21CBBCEE0);
    v66 = sub_21CA1A768();
    v99 = v65;
    v100 = v66;
    v67 = swift_getOpaqueTypeConformance2();
    v68 = sub_21CA1BBDC(&qword_27CDF5070, type metadata accessor for PMWiFiNetwork, &protocol conformance descriptor for PMWiFiNetwork);
    v69 = type metadata accessor for PMWiFiQRCodeView(255);
    v70 = sub_21CB83994();
    v71 = sub_21CA1BBDC(&qword_27CDF5078, type metadata accessor for PMWiFiQRCodeView, &unk_21CBC6534);
    v99 = v69;
    v100 = v70;
    v101 = v71;
    v102 = MEMORY[0x277CDE2B8];
    v72 = swift_getOpaqueTypeConformance2();
    v99 = v89;
    v100 = v63;
    v101 = v64;
    v102 = v67;
    v103 = v68;
    v104 = v72;
    swift_getOpaqueTypeConformance2();
    sub_21CA1AA74();
    v59 = v92;
    sub_21CB83494();
    (*(v61 + 8))(v60, v62);
  }

  sub_21C6EDBAC(v59, v95, &qword_27CDF5000, &qword_21CBBCEC8);
  swift_storeEnumTagMultiPayload();
  sub_21CA1BBDC(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView, &unk_21CBBAF28);
  sub_21CA1A568();
  sub_21CB83494();
  return sub_21C6EA794(v59, &qword_27CDF5000, &qword_21CBBCEC8);
}

uint64_t sub_21CA1274C@<X0>(uint64_t a1@<X8>)
{
  v98 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5118, &qword_21CBBD1B8);
  MEMORY[0x28223BE20](v2 - 8);
  v99 = &v78 - v3;
  v92 = sub_21CB85114();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v89 = &v78 - v6;
  v7 = type metadata accessor for PMWiFiList(0);
  v96 = *(v7 - 8);
  v8 = *(v96 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v85 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v78 - v13;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5040, &qword_21CBBCEF8);
  v82 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v78 - v15;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5038, &qword_21CBBCEF0);
  v84 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = &v78 - v16;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5018, &qword_21CBBCEE0);
  MEMORY[0x28223BE20](v102);
  v101 = &v78 - v17;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5008, &qword_21CBBCED0);
  v95 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v93 = &v78 - v18;
  sub_21CB85094();
  swift_getKeyPath(byte_21CBBD008);
  v100 = v9;
  sub_21CB850B4();

  v19 = *(v10 + 8);
  v105 = v10 + 8;
  v104 = v19;
  v88 = v14;
  v19(v14, v9);
  v107 = v1;
  v103 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5120, &qword_21CBBD1C0);
  v20 = sub_21CA1A9CC();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5128, &qword_21CBBD1C8);
  v22 = sub_21CA1AF54();
  v108 = v21;
  v109 = v22;
  swift_getOpaqueTypeConformance2();
  sub_21CB83F14();
  sub_21CA1AEE4(v1, &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMWiFiList);
  v23 = *(v96 + 80);
  v24 = (v23 + 16) & ~v23;
  v94 = v8;
  v86 = v23;
  v25 = swift_allocObject();
  v87 = v24;
  v96 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CA1B0EC(v96, v25 + v24, type metadata accessor for PMWiFiList);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5048, &unk_21CBBCF00);
  v27 = sub_21C6EADEC(&qword_27CDF5050, &qword_27CDF5040, &qword_21CBBCEF8, MEMORY[0x277CDE5A0]);
  v77 = sub_21C6EADEC(&qword_27CDF5060, &qword_27CDF5048, &unk_21CBBCF00, MEMORY[0x277CE14C0]);
  v28 = v80;
  v29 = v81;
  v30 = v79;
  sub_21CB84144();

  (*(v82 + 8))(v30, v29);
  v114 = v29;
  v115 = &type metadata for PMWiFiNetworkIdentifier;
  v116 = v26;
  v117 = v27;
  v118 = v20;
  v119 = v77;
  swift_getOpaqueTypeConformance2();
  v31 = v83;
  sub_21CB845F4();
  (*(v84 + 8))(v28, v31);
  v32 = v85;
  v33 = v100;
  sub_21CB85094();
  swift_getKeyPath(byte_21CBBD0C8);
  sub_21CB850B4();

  v104(v32, v33);
  v35 = v113[6];
  v34 = v113[7];
  v36 = v113[8];
  v106[0] = 0;
  swift_getKeyPath(byte_21CBBD0F0, v106);
  v113[3] = v35;
  v113[4] = v34;
  v113[5] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF50F0, &qword_21CBBD138);
  sub_21CB84F44();

  v37 = v114;
  v38 = v115;
  v39 = v116;
  v40 = v117;
  v41 = v118;

  KeyPath = swift_getKeyPath(asc_21CBBD140);
  v108 = v37;
  v109 = v38;
  v110 = v39;
  v111 = v40;
  v112 = v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF46D0, &qword_21CBBB1B0);
  MEMORY[0x21CF14A20](v113, v43);
  v44 = v113[0];
  if (v113[0])
  {
    v45 = v113[1];
    v46 = v113[2];

    sub_21C968AF4(v47, v45, v46);
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
  }

  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5030, &qword_21CBBCEE8);
  v49 = v101;
  v50 = &v101[*(v48 + 36)];
  *v50 = KeyPath;
  v50[1] = v37;
  v50[2] = v38;
  v50[3] = v39;
  v50[4] = v40;
  v50[5] = v41;
  v50[6] = v44;
  v51 = swift_getKeyPath(byte_21CBBD1D8);
  v52 = (v49 + *(v102 + 36));
  v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED938, &qword_21CBA7D60) + 28);
  v54 = v88;
  v55 = v100;
  v56 = v103;
  sub_21CB85094();
  swift_getKeyPath(byte_21CBBCFB8);
  sub_21CB850B4();

  v104(v54, v55);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000);
  (*(*(v57 - 8) + 56))(v52 + v53, 0, 1, v57);
  *v52 = v51;
  sub_21CB85084();
  v58 = v114;
  swift_getKeyPath(byte_21CBBCFB8);
  v114 = v58;
  sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  v59 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__editMode;
  swift_beginAccess();
  v60 = v91;
  v61 = v89;
  v62 = v92;
  (*(v91 + 16))(v89, v58 + v59, v92);

  v63 = v90;
  (*(v60 + 104))(v90, *MEMORY[0x277CDF0D0], v62);
  sub_21CB850F4();
  v64 = *(v60 + 8);
  v64(v63, v62);
  v64(v61, v62);
  v65 = sub_21CA1A768();
  v66 = v93;
  v67 = v102;
  sub_21CB84674();
  sub_21C6EA794(v49, &qword_27CDF5018, &qword_21CBBCEE0);
  sub_21CB85094();
  swift_getKeyPath(byte_21CBBD210);
  v68 = v99;
  sub_21CB850B4();

  v104(v54, v55);
  v69 = v96;
  sub_21CA1AEE4(v56, v96, type metadata accessor for PMWiFiList);
  v70 = v87;
  v71 = swift_allocObject();
  sub_21CA1B0EC(v69, v71 + v70, type metadata accessor for PMWiFiList);
  type metadata accessor for PMWiFiNetwork(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5010, &qword_21CBBCED8);
  v114 = v67;
  v115 = v65;
  swift_getOpaqueTypeConformance2();
  sub_21CA1BBDC(&qword_27CDF5070, type metadata accessor for PMWiFiNetwork, &protocol conformance descriptor for PMWiFiNetwork);
  v72 = type metadata accessor for PMWiFiQRCodeView(255);
  v73 = sub_21CB83994();
  v74 = sub_21CA1BBDC(&qword_27CDF5078, type metadata accessor for PMWiFiQRCodeView, &unk_21CBC6534);
  v114 = v72;
  v115 = v73;
  v116 = v74;
  v117 = MEMORY[0x277CDE2B8];
  swift_getOpaqueTypeConformance2();
  v75 = v97;
  sub_21CB847C4();

  sub_21C6EA794(v68, &qword_27CDF5118, &qword_21CBBD1B8);
  return (*(v95 + 8))(v66, v75);
}

uint64_t sub_21CA13588@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D8, &qword_21CBA3C70);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  v5 = v14;
  swift_getKeyPath(byte_21CBBCFE0);
  v14 = v5;
  sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  v6 = *(v5 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__listedNetworks);

  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = 1;
    v9 = v13;
  }

  else
  {
    sub_21CB85084();
    v10 = v14;
    swift_getKeyPath(a0_41);
    v14 = v10;
    sub_21CB810D4();

    sub_21CB83784();

    v11 = v13;
    (*(v2 + 32))(v13, v4, v1);
    v8 = 0;
    v9 = v11;
  }

  return (*(v2 + 56))(v9, v8, 1, v1);
}

uint64_t sub_21CA137E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5090, &qword_21CBBCF20);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - v2;
  sub_21CA1390C(&v6 - v2);
  v4 = sub_21C6EADEC(&qword_27CDF5098, &qword_27CDF5090, &qword_21CBBCF20, MEMORY[0x277CDDF68]);
  MEMORY[0x21CF131E0](v3, v0, v4);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21CA1390C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF50B0, &unk_21CBBD030);
  MEMORY[0x28223BE20](v65);
  v64 = &v50 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB58, &qword_21CBACD28);
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v53 = &v50 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB60, &qword_21CBACD30);
  v52 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v51 = &v50 - v5;
  v6 = sub_21CB85114();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB68, &qword_21CBACD38);
  MEMORY[0x28223BE20](v13 - 8);
  v54 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v67 = &v50 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF50B8, &unk_21CBBD040);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v18 = &v50 - v17;
  v19 = sub_21CB83604();
  MEMORY[0x28223BE20](v19 - 8);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB50, &qword_21CBACD20);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v21 = &v50 - v20;
  sub_21CB835A4();
  v69 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFB78, &unk_21CBACD40);
  sub_21C8C3F64();
  v55 = v21;
  sub_21CB82194();
  sub_21CB835F4();
  v68 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF50C0, &qword_21CBBD050);
  sub_21C6EADEC(&qword_27CDF50C8, &qword_27CDF50C0, &qword_21CBBD050, MEMORY[0x277CE14C0]);
  v58 = v18;
  sub_21CB82AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  v22 = v72;
  swift_getKeyPath(byte_21CBBCFB8);
  v72 = v22;
  sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  v23 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__editMode;
  swift_beginAccess();
  (*(v7 + 16))(v12, v22 + v23, v6);

  (*(v7 + 104))(v9, *MEMORY[0x277CDF0D0], v6);
  LOBYTE(v23) = sub_21CB850F4();
  v24 = *(v7 + 8);
  v24(v9, v6);
  v24(v12, v6);
  if (v23)
  {
    v25 = sub_21CB83594();
    MEMORY[0x28223BE20](v25);
    *(&v50 - 2) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE9D8, &unk_21CBAA9C0);
    sub_21C87C0A0();
    v26 = v51;
    sub_21CB82194();
    v27 = sub_21C6EADEC(&qword_27CDEFB70, &qword_27CDEFB60, &qword_21CBACD30, MEMORY[0x277CDD7A8]);
    v28 = v53;
    v29 = v62;
    MEMORY[0x21CF131E0](v26, v62, v27);
    v30 = v61;
    v31 = v54;
    v32 = v63;
    (*(v61 + 16))(v54, v28, v63);
    (*(v30 + 56))(v31, 0, 1, v32);
    v70 = v29;
    v71 = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF13220](v31, v32, OpaqueTypeConformance2);
    sub_21C6EA794(v31, &qword_27CDEFB68, &qword_21CBACD38);
    (*(v30 + 8))(v28, v32);
    (*(v52 + 8))(v26, v29);
  }

  else
  {
    v34 = v54;
    v35 = v63;
    (*(v61 + 56))(v54, 1, 1, v63);
    v36 = sub_21C6EADEC(&qword_27CDEFB70, &qword_27CDEFB60, &qword_21CBACD30, MEMORY[0x277CDD7A8]);
    v70 = v62;
    v71 = v36;
    v37 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF13220](v34, v35, v37);
    sub_21C6EA794(v34, &qword_27CDEFB68, &qword_21CBACD38);
  }

  v38 = v64;
  v39 = *(v65 + 48);
  v40 = *(v65 + 64);
  v41 = v56;
  v42 = v55;
  v43 = v57;
  (*(v56 + 16))(v64, v55, v57);
  v44 = v59;
  v45 = v58;
  v46 = v60;
  (*(v59 + 16))(&v38[v39], v58, v60);
  v47 = &v38[v40];
  v48 = v67;
  sub_21C6EDBAC(v67, v47, &qword_27CDEFB68, &qword_21CBACD38);
  sub_21CB83394();
  sub_21C6EA794(v48, &qword_27CDEFB68, &qword_21CBACD38);
  (*(v44 + 8))(v45, v46);
  return (*(v41 + 8))(v42, v43);
}

uint64_t sub_21CA142A4()
{
  sub_21CA14460();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4FC8, &qword_21CBBCEA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4FC0, &qword_21CBBCEA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4FB8, &qword_21CBBCE98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4FD8, &qword_21CBBCEB8);
  sub_21CA1A428();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF5090, &qword_21CBBCF20);
  sub_21C6EADEC(&qword_27CDF5098, &qword_27CDF5090, &qword_21CBBCF20, MEMORY[0x277CDDF68]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  sub_21CB84444();
}

uint64_t sub_21CA14460()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v50 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v48 - v5;
  MEMORY[0x28223BE20](v7);
  v51 = &v48 - v8;
  MEMORY[0x28223BE20](v9);
  v52 = &v48 - v10;
  MEMORY[0x28223BE20](v11);
  v56 = &v48 - v12;
  MEMORY[0x28223BE20](v13);
  v57 = &v48 - v14;
  v15 = sub_21CB85114();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v48 - v20;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  v55 = v0;
  sub_21CB85084();
  v22 = v59;
  swift_getKeyPath(byte_21CBBCFB8);
  v59 = v22;
  v54 = sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  v23 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__editMode;
  swift_beginAccess();
  (*(v16 + 16))(v21, v22 + v23, v15);

  (*(v16 + 104))(v18, *MEMORY[0x277CDF0D0], v15);
  LOBYTE(v23) = sub_21CB850F4();
  v24 = *(v16 + 8);
  v24(v18, v15);
  v24(v21, v15);
  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v49 = sub_21CB81034();
  v25 = *(v49 - 8);
  if (v23)
  {
    v48 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v26 = swift_allocObject();
    v27 = v52;
    sub_21CB81014();
    v28 = v51;
    sub_21CB81014();
    sub_21CB81014();
    v29 = v50;
    sub_21CB81014();
    v30 = v48;
    sub_21CB80FE4();
    v31 = *(v2 + 8);
    v31(v29, v1);
    v31(v6, v1);
    v31(v28, v1);
    v31(v27, v1);
    swift_setDeallocating();
    (*(v25 + 8))(v26 + v30, v49);
    swift_deallocClassInstance();
    v32 = v57;
    sub_21CB81004();
    v31(v56, v1);
    v31(v32, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_21CBA0690;
    sub_21CB85084();
    v34 = v58;
    swift_getKeyPath(byte_21CBBD008);
    v58 = v34;
    sub_21CB810D4();

    v35 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__selectedNetworkIDs;
  }

  else
  {
    v36 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v37 = swift_allocObject();
    v38 = v52;
    sub_21CB81014();
    v39 = v51;
    sub_21CB81014();
    sub_21CB81014();
    v40 = v50;
    sub_21CB81014();
    sub_21CB80FE4();
    v41 = *(v2 + 8);
    v41(v40, v1);
    v41(v6, v1);
    v41(v39, v1);
    v41(v38, v1);
    swift_setDeallocating();
    (*(v25 + 8))(v37 + v36, v49);
    swift_deallocClassInstance();
    v42 = v57;
    sub_21CB81004();
    v41(v56, v1);
    v41(v42, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_21CBA0690;
    sub_21CB85084();
    v34 = v58;
    swift_getKeyPath(byte_21CBBCFE0);
    v58 = v34;
    sub_21CB810D4();

    v35 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__listedNetworks;
  }

  v43 = *(v34 + v35);

  v44 = *(v43 + 16);

  v45 = MEMORY[0x277D83C10];
  *(v33 + 56) = MEMORY[0x277D83B88];
  *(v33 + 64) = v45;
  *(v33 + 32) = v44;
  v46 = sub_21CB85594();

  return v46;
}

uint64_t sub_21CA14D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v3 = type metadata accessor for PMWiFiList(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5128, &qword_21CBBD1C8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  v10 = v16;
  swift_getKeyPath(byte_21CBBCFE0, v15);
  v16 = v10;
  sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  v11 = *(v10 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__listedNetworks);

  v16 = v11;
  sub_21CA1AEE4(a1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMWiFiList);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_21CA1B0EC(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for PMWiFiList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE680, &qword_21CBAA1C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5140, &qword_21CBBD1D0);
  sub_21C6EADEC(&qword_27CDF51B0, &qword_27CDEE680, &qword_21CBAA1C0, MEMORY[0x277D83980]);
  sub_21C6EADEC(&qword_27CDF5138, &qword_27CDF5140, &qword_21CBBD1D0, MEMORY[0x277CDD938]);
  sub_21CA1BBDC(&qword_27CDF5070, type metadata accessor for PMWiFiNetwork, &protocol conformance descriptor for PMWiFiNetwork);
  sub_21CB84FF4();
  sub_21CB82334();
  sub_21CA1AF54();
  sub_21CB84514();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21CA15100(void *a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF51B8, &qword_21CBBD2F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF51C0, &qword_21CBBD300);
  type metadata accessor for PMWiFiNetworkRow(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC198, &qword_21CBAF100);
  sub_21CA1BBDC(&qword_27CDF51C8, type metadata accessor for PMWiFiNetworkRow, &unk_21CBA8CF4);
  sub_21C7FC8A0();
  swift_getOpaqueTypeConformance2();
  sub_21CA1B090();
  swift_getOpaqueTypeConformance2();
  sub_21CA1B274();
  sub_21CA1B2C8();
  sub_21CA1A9CC();
  return sub_21CB82614();
}

uint64_t sub_21CA15294@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for PMWiFiNetworkRow(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF51C0, &qword_21CBBD300);
  v8 = *(v7 - 8);
  v24 = v7;
  v25 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  sub_21CA1AEE4(a1, v6, type metadata accessor for PMWiFiNetwork);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  v11 = v29;
  swift_getKeyPath(a0_41);
  v29 = v11;
  sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  v13 = *(v11 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText);
  v12 = *(v11 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__searchText + 8);

  sub_21CB85084();
  v14 = sub_21C861558(a1);

  v15 = &v6[v4[5]];
  *v15 = v13;
  *(v15 + 1) = v12;
  v6[v4[6]] = v14 & 1;
  v16 = v4[7];
  *&v6[v16] = swift_getKeyPath(byte_21CBBD308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v27 = v2;
  v28 = a1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC198, &qword_21CBAF100);
  v18 = sub_21CA1BBDC(&qword_27CDF51C8, type metadata accessor for PMWiFiNetworkRow, &unk_21CBA8CF4);
  v19 = sub_21C7FC8A0();
  sub_21CB84204();
  sub_21CA1B3F8(v6, type metadata accessor for PMWiFiNetworkRow);
  v20 = a1[1];
  v33 = *a1;
  v34 = v20;
  type metadata accessor for PMWiFiList(0);

  sub_21CB852C4();
  v29 = v4;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  swift_getOpaqueTypeConformance2();
  sub_21CA1B090();
  v21 = v24;
  sub_21CB845E4();

  return (*(v25 + 8))(v10, v21);
}

uint64_t sub_21CA15654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8D0, &unk_21CBA4AF0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v83 = &v70 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5150, &qword_21CBBD270);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v80 = &v70 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5158, &qword_21CBBD278);
  v78 = *(v10 - 8);
  v79 = v10;
  MEMORY[0x28223BE20](v10);
  v77 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v76 = &v70 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5160, &qword_21CBBD280);
  MEMORY[0x28223BE20](v14 - 8);
  v75 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v82 = &v70 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v70 - v19;
  v21 = type metadata accessor for PMWiFiNetwork(0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v81 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5168, &qword_21CBBD288);
  MEMORY[0x28223BE20](v24 - 8);
  v88 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v70 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC8A8, &unk_21CBACF50);
  MEMORY[0x28223BE20](v29 - 8);
  v87 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v86 = &v70 - v32;
  MEMORY[0x28223BE20](v33);
  v84 = &v70 - v34;
  MEMORY[0x28223BE20](v35);
  v85 = &v70 - v36;
  sub_21CA18D54(a1, &v70 - v36);
  if (*(a1 + 16) == 1)
  {
    v73 = v28;
    v74 = a1;
    sub_21C7C6E94(a1, &v90);
    v37 = v91;
    if (v91)
    {
      v71 = v7;
      v72 = v4;
      v70 = v90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
      sub_21CB85084();
      v38 = v90;
      swift_getKeyPath(byte_21CBBCFE0);
      v39 = v2;
      v90 = v38;
      sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
      sub_21CB810D4();

      v40 = *(v38 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__listedNetworks);

      v90 = v70;
      v91 = v37;
      MEMORY[0x28223BE20](v41);
      *(&v70 - 2) = &v90;
      sub_21C9693F8(sub_21C7AE738, v40, v20);

      if ((*(v22 + 48))(v20, 1, v21) != 1)
      {
        v50 = v81;
        sub_21CA1B0EC(v20, v81, type metadata accessor for PMWiFiNetwork);
        v51 = v82;
        v52 = sub_21CA1AEE4(v50, v82, type metadata accessor for PMWiFiNetwork);
        MEMORY[0x28223BE20](v52);
        v70 = v8;
        v43 = v39;
        *(&v70 - 2) = v39;
        *(&v70 - 1) = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5178, &qword_21CBBD298);
        sub_21C6EADEC(&qword_27CDF5180, &qword_27CDF5178, &qword_21CBBD298, MEMORY[0x277CE14C0]);
        v53 = v76;
        sub_21CB85054();
        v54 = v75;
        sub_21C6EDBAC(v51, v75, &qword_27CDF5160, &qword_21CBBD280);
        v56 = v77;
        v55 = v78;
        v57 = *(v78 + 16);
        v58 = v79;
        v57(v77, v53, v79);
        v59 = v80;
        sub_21C6EDBAC(v54, v80, &qword_27CDF5160, &qword_21CBBD280);
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5188, &qword_21CBBD2A0);
        v57((v59 + *(v60 + 48)), v56, v58);
        v61 = *(v55 + 8);
        v61(v53, v58);
        sub_21C6EA794(v82, &qword_27CDF5160, &qword_21CBBD280);
        v61(v56, v58);
        sub_21C6EA794(v54, &qword_27CDF5160, &qword_21CBBD280);
        v45 = v73;
        sub_21C716934(v59, v73, &qword_27CDF5150, &qword_21CBBD270);
        (*(v70 + 56))(v45, 0, 1, v71);
        v44 = sub_21CA1B3F8(v81, type metadata accessor for PMWiFiNetwork);
        v4 = v72;
        if (*(v74 + 16))
        {
          goto LABEL_7;
        }

LABEL_9:
        v49 = 1;
        v48 = v84;
        goto LABEL_10;
      }

      sub_21C6EA794(v20, &qword_27CDEE678, &unk_21CBBA210);
      a1 = v74;
      v2 = v39;
      v4 = v72;
      v28 = v73;
      v7 = v71;
    }

    else
    {
      v28 = v73;
      a1 = v74;
    }
  }

  v42 = v8;
  v43 = v2;
  v44 = (*(v42 + 56))(v28, 1, 1, v7);
  v45 = v28;
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

LABEL_7:
  MEMORY[0x28223BE20](v44);
  *(&v70 - 2) = v46;
  *(&v70 - 1) = v43;
  v47 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40, MEMORY[0x277CDF028]);
  sub_21CB85054();
  v48 = v84;
  (*(v5 + 32))(v84, v47, v4);
  v49 = 0;
LABEL_10:
  (*(v5 + 56))(v48, v49, 1, v4);
  v63 = v85;
  v62 = v86;
  sub_21C6EDBAC(v85, v86, &qword_27CDEC8A8, &unk_21CBACF50);
  v64 = v45;
  v65 = v88;
  sub_21C6EDBAC(v45, v88, &qword_27CDF5168, &qword_21CBBD288);
  v66 = v87;
  sub_21C6EDBAC(v48, v87, &qword_27CDEC8A8, &unk_21CBACF50);
  v67 = v89;
  sub_21C6EDBAC(v62, v89, &qword_27CDEC8A8, &unk_21CBACF50);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5170, &qword_21CBBD290);
  sub_21C6EDBAC(v65, v67 + *(v68 + 48), &qword_27CDF5168, &qword_21CBBD288);
  sub_21C6EDBAC(v66, v67 + *(v68 + 64), &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v48, &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v64, &qword_27CDF5168, &qword_21CBBD288);
  sub_21C6EA794(v63, &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v66, &qword_27CDEC8A8, &unk_21CBACF50);
  sub_21C6EA794(v65, &qword_27CDF5168, &qword_21CBBD288);
  return sub_21C6EA794(v62, &qword_27CDEC8A8, &unk_21CBACF50);
}

uint64_t sub_21CA16140@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  v5 = 0uLL;
  if (*(*result + 16))
  {
    result = sub_21CB109D0(*a2);
    if (v6)
    {
      v7 = *(v4 + 56) + 24 * result;
      v9 = *v7;
      v8 = *(v7 + 16);

      v5 = v9;
    }

    else
    {
      v8 = 0;
      v5 = 0uLL;
    }
  }

  else
  {
    v8 = 0;
  }

  *a3 = v5;
  *(a3 + 16) = v8;
  return result;
}

uint64_t sub_21CA161CC(uint64_t *a1, uint64_t a2)
{
  v3 = sub_21CB83994();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMWiFiQRCodeView(0);
  MEMORY[0x28223BE20](v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CA1AEE4(a1, v9, type metadata accessor for PMWiFiNetwork);
  *&v9[*(v7 + 20)] = swift_getKeyPath(byte_21CBBD238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v10 = *a1;
  v11 = a1[1];
  v13[0] = v10;
  v13[1] = v11;
  type metadata accessor for PMWiFiList(0);

  sub_21CB852C4();
  sub_21CA1B090();
  sub_21CB834F4();

  sub_21CA1BBDC(&qword_27CDF5078, type metadata accessor for PMWiFiQRCodeView, &unk_21CBC6534);
  sub_21CB84524();
  (*(v4 + 8))(v6, v3);
  return sub_21CA1B3F8(v9, type metadata accessor for PMWiFiQRCodeView);
}

uint64_t sub_21CA16418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v27 = a3;
  v24 = a1;
  v3 = type metadata accessor for PMWiFiNetwork(0);
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMWiFiList(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_21CB81024();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v13 = sub_21CB81004();
  v15 = v14;
  (*(v10 + 8))(v12, v9);
  sub_21CA1AEE4(v24, &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMWiFiList);
  sub_21CA1AEE4(v26, v5, type metadata accessor for PMWiFiNetwork);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = (v8 + *(v25 + 80) + v16) & ~*(v25 + 80);
  v18 = swift_allocObject();
  sub_21CA1B0EC(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for PMWiFiList);
  sub_21CA1B0EC(v5, v18 + v17, type metadata accessor for PMWiFiNetwork);
  v31[0] = v13;
  v31[1] = v15;
  v28 = v31;
  v29 = 0x69662E6873617274;
  v30 = 0xEA00000000006C6CLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  v19 = v27;
  sub_21CB84DA4();

  v20 = sub_21CB84A64();
  KeyPath = swift_getKeyPath(byte_21CBBD340);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC198, &qword_21CBAF100);
  v23 = (v19 + *(result + 36));
  *v23 = KeyPath;
  v23[1] = v20;
  return result;
}

uint64_t sub_21CA167B4(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  sub_21CB85084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7730, &unk_21CBA0E60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA0690;
  v4 = a2[1];
  *(inited + 32) = *a2;
  *(inited + 40) = v4;

  v5 = sub_21C8D898C(inited);
  swift_setDeallocating();
  sub_21CA1B8E8(inited + 32);
  sub_21C861B98(v5, 0);
}

uint64_t sub_21CA16880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_21CB81024();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for PMPlatformRoleButton(0);
  MEMORY[0x28223BE20](v60);
  v52 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = sub_21CB81F14();
  v51 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v50 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFBD8, &qword_21CBACE68);
  MEMORY[0x28223BE20](v57);
  v59 = &v45 - v7;
  v8 = type metadata accessor for PMWiFiList(0);
  v53 = *(v8 - 8);
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  MEMORY[0x28223BE20](v58);
  v49 = &v45 - v10;
  v11 = sub_21CB85114();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  v56 = a1;
  sub_21CB85084();
  v18 = v63;
  swift_getKeyPath(byte_21CBBCFB8);
  v63 = v18;
  sub_21CA1BBDC(&qword_27CDEE650, type metadata accessor for PMWiFiListModel, &unk_21CBAA030);
  sub_21CB810D4();

  v19 = OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__editMode;
  swift_beginAccess();
  (*(v12 + 16))(v17, v18 + v19, v11);

  (*(v12 + 104))(v14, *MEMORY[0x277CDF0D8], v11);
  LOBYTE(v18) = sub_21CB850F4();
  v20 = *(v12 + 8);
  v20(v14, v11);
  v20(v17, v11);
  if (v18)
  {
    v21 = v54;
    sub_21CA1AEE4(v56, v54, type metadata accessor for PMWiFiList);
    v22 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v23 = swift_allocObject();
    sub_21CA1B0EC(v21, v23 + v22, type metadata accessor for PMWiFiList);
    v24 = v49;
    sub_21CB84DA4();
    sub_21CB85084();
    v25 = v62;
    swift_getKeyPath(a8_29);
    v62 = v25;
    sub_21CB810D4();

    v26 = *(v25 + OBJC_IVAR____TtC17PasswordManagerUI15PMWiFiListModel__allNetworks);

    v27 = *(v26 + 16);

    LOBYTE(v26) = v27 == 0;
    KeyPath = swift_getKeyPath(byte_21CBBD090);
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    v30 = v59;
    v31 = (v24 + *(v58 + 36));
    *v31 = KeyPath;
    v31[1] = sub_21C87E800;
    v31[2] = v29;
    sub_21C6EDBAC(v24, v30, &qword_27CDEDA98, &unk_21CBABCB0);
    swift_storeEnumTagMultiPayload();
    sub_21C844588();
    sub_21CA1BBDC(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton, &unk_21CBA2ED8);
    sub_21CB83494();
    return sub_21C6EA794(v24, &qword_27CDEDA98, &unk_21CBABCB0);
  }

  else
  {
    v33 = v50;
    sub_21CB81F04();
    v34 = v46;
    sub_21CB81014();
    v35 = sub_21CB81004();
    v37 = v36;
    (*(v47 + 8))(v34, v48);
    v38 = v60;
    v40 = v51;
    v39 = v52;
    (*(v51 + 16))(v52 + *(v60 + 20), v33, v55);
    v41 = v54;
    sub_21CA1AEE4(v56, v54, type metadata accessor for PMWiFiList);
    v42 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v43 = swift_allocObject();
    sub_21CA1B0EC(v41, v43 + v42, type metadata accessor for PMWiFiList);
    *v39 = v35;
    v39[1] = v37;
    v44 = (v39 + *(v38 + 24));
    *v44 = sub_21CA1AE08;
    v44[1] = v43;
    sub_21CA1AEE4(v39, v59, type metadata accessor for PMPlatformRoleButton);
    swift_storeEnumTagMultiPayload();
    sub_21C844588();
    sub_21CA1BBDC(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton, &unk_21CBA2ED8);
    sub_21CB83494();
    sub_21CA1B3F8(v39, type metadata accessor for PMPlatformRoleButton);
    return (*(v40 + 8))(v33, v55);
  }
}