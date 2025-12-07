uint64_t sub_24ADB5A28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696A6F6D65 && a2 == 0xE500000000000000;
  if (v4 || (sub_24AE097C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461436567616D69 && a2 == 0xED000079726F6765 || (sub_24AE097C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F4D6567616D69 && a2 == 0xEA00000000006C65 || (sub_24AE097C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F436567616D69 && a2 == 0xEA0000000000726FLL || (sub_24AE097C8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7261566567616D69 && a2 == 0xEC000000746E6169)
  {

    return 4;
  }

  else
  {
    v6 = sub_24AE097C8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24ADB5BEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9360, &qword_24AE0C6A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ADB7448();
  sub_24AE09878();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v35[0]) = 0;
  v9 = sub_24AE09698();
  v29 = v10;
  LOBYTE(v35[0]) = 1;
  v11 = sub_24AE09698();
  v28 = v12;
  v25 = v11;
  LOBYTE(v35[0]) = 2;
  v24 = sub_24AE09698();
  v27 = v13;
  LOBYTE(v35[0]) = 3;
  v23 = sub_24AE09698();
  v26 = v14;
  v38 = 4;
  sub_24ADB78E0();
  sub_24AE096B8();
  (*(v6 + 8))(v8, v5);
  v37 = v39;
  v16 = v28;
  v15 = v29;
  *&v30 = v9;
  *(&v30 + 1) = v29;
  v17 = v25;
  *&v31 = v25;
  *(&v31 + 1) = v28;
  v18 = v27;
  *&v32 = v24;
  *(&v32 + 1) = v27;
  v19 = v26;
  *&v33 = v23;
  *(&v33 + 1) = v26;
  v34 = v39;
  sub_24ADB39D8(&v30, v35);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v35[0] = v9;
  v35[1] = v15;
  v35[2] = v17;
  v35[3] = v16;
  v35[4] = v24;
  v35[5] = v18;
  v35[6] = v23;
  v35[7] = v19;
  v36 = v37;
  result = sub_24ADB3A64(v35);
  v21 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v21;
  *(a2 + 64) = v34;
  v22 = v31;
  *a2 = v30;
  *(a2 + 16) = v22;
  return result;
}

uint64_t sub_24ADB5FB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_24AE097C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6710895 && a2 == 0xE300000000000000 || (sub_24AE097C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69646E6570 && a2 == 0xE700000000000000 || (sub_24AE097C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646575657571 && a2 == 0xE600000000000000 || (sub_24AE097C8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000 || (sub_24AE097C8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24AE097C8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24ADB61A8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9370, &qword_24AE0C6A8);
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x28223BE20](v2);
  v52 = &v37[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9378, &qword_24AE0C6B0);
  v5 = *(v4 - 8);
  v47 = v4;
  v48 = v5;
  MEMORY[0x28223BE20](v4);
  v51 = &v37[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9380, &qword_24AE0C6B8);
  v8 = *(v7 - 8);
  v45 = v7;
  v46 = v8;
  MEMORY[0x28223BE20](v7);
  v54 = &v37[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9388, &qword_24AE0C6C0);
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x28223BE20](v10);
  v53 = &v37[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9390, &qword_24AE0C6C8);
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v37[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9398, &qword_24AE0C6D0);
  v40 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v37[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA93A0, &qword_24AE0C6D8);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v37[-v20];
  v22 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_24ADB74F0();
  v23 = v55;
  sub_24AE09878();
  if (v23)
  {
    goto LABEL_9;
  }

  v39 = v15;
  v24 = v14;
  v26 = v53;
  v25 = v54;
  v55 = v19;
  v27 = sub_24AE096F8();
  if (*(v27 + 16) != 1 || (v28 = *(v27 + 32), v28 == 6))
  {
    v30 = sub_24AE09558();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA93A8, &qword_24AE0C6E0);
    *v32 = &type metadata for ItemEntity.PayloadV1.PlaySoundState;
    sub_24AE09688();
    sub_24AE09548();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84160], v30);
    swift_willThrow();
    (*(v55 + 8))(v21, v18);
    swift_unknownObjectRelease();
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v56);
    return 0;
  }

  v38 = *(v27 + 32);
  if (v28 > 2)
  {
    if (v28 != 3)
    {
      v29 = v55;
      if (v28 == 4)
      {
        v61 = 4;
        sub_24ADB7598();
        v34 = v51;
        sub_24AE09678();
        (*(v48 + 8))(v34, v47);
      }

      else
      {
        v62 = 5;
        sub_24ADB7544();
        v36 = v52;
        sub_24AE09678();
        (*(v49 + 8))(v36, v50);
      }

      goto LABEL_17;
    }

    v60 = 3;
    sub_24ADB75EC();
    sub_24AE09678();
    v35 = v55;
    (*(v46 + 8))(v25, v45);
    (*(v35 + 8))(v21, v18);
  }

  else
  {
    if (v28)
    {
      if (v28 == 1)
      {
        v58 = 1;
        sub_24ADB7694();
        sub_24AE09678();
        v29 = v55;
        (*(v41 + 8))(v24, v42);
      }

      else
      {
        v59 = 2;
        sub_24ADB7640();
        sub_24AE09678();
        v29 = v55;
        (*(v43 + 8))(v26, v44);
      }

LABEL_17:
      (*(v29 + 8))(v21, v18);
      goto LABEL_18;
    }

    v57 = 0;
    sub_24ADB76E8();
    sub_24AE09678();
    (*(v40 + 8))(v17, v39);
    (*(v55 + 8))(v21, v18);
  }

LABEL_18:
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v56);
  return v38;
}

uint64_t sub_24ADB69AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_24AE097C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000 || (sub_24AE097C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024AE12E70 == a2 || (sub_24AE097C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024AE12E90 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_24AE097C8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24ADB6B18(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA93B0, &qword_24AE0C6E8);
  v3 = *(v2 - 8);
  v45 = v2;
  v46 = v3;
  MEMORY[0x28223BE20](v2);
  v48 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA93B8, &qword_24AE0C6F0);
  v6 = *(v5 - 8);
  v43 = v5;
  v44 = v6;
  MEMORY[0x28223BE20](v5);
  v47 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA93C0, &qword_24AE0C6F8);
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA93C8, &qword_24AE0C700);
  v40 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA93D0, &qword_24AE0C708);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  v19 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24ADB773C();
  v20 = v49;
  sub_24AE09878();
  if (v20)
  {
    goto LABEL_16;
  }

  v38 = v12;
  v39 = v18;
  v22 = v47;
  v21 = v48;
  v49 = v16;
  v23 = sub_24AE096F8();
  v24 = *(v23 + 16);
  if (!v24 || ((v25 = *(v23 + 32), v24 == 1) ? (v26 = v25 == 4) : (v26 = 1), v26))
  {
    v27 = sub_24AE09558();
    swift_allocError();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA93A8, &qword_24AE0C6E0);
    *v29 = &type metadata for ItemEntity.PayloadV1.LostModeState;
    v30 = v39;
    sub_24AE09688();
    sub_24AE09548();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
    swift_willThrow();
    (*(v49 + 8))(v30, v15);
    swift_unknownObjectRelease();
LABEL_16:
    __swift_destroy_boxed_opaque_existential_0(v50);
    return 0;
  }

  v51 = *(v23 + 32);
  if (v25 > 1)
  {
    v32 = v49;
    if (v25 == 2)
    {
      v54 = 2;
      sub_24ADB77E4();
      v33 = v22;
      v34 = v39;
      sub_24AE09678();
      (*(v44 + 8))(v33, v43);
      (*(v32 + 8))(v34, v15);
    }

    else
    {
      v55 = 3;
      sub_24ADB7790();
      v35 = v39;
      sub_24AE09678();
      (*(v46 + 8))(v21, v45);
      (*(v32 + 8))(v35, v15);
    }
  }

  else
  {
    if (v25)
    {
      v53 = 1;
      sub_24ADB7838();
      v31 = v39;
      sub_24AE09678();
      (*(v42 + 8))(v11, v41);
    }

    else
    {
      v52 = 0;
      sub_24ADB788C();
      v31 = v39;
      sub_24AE09678();
      (*(v40 + 8))(v14, v38);
    }

    (*(v49 + 8))(v31, v15);
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v50);
  return v51;
}

uint64_t sub_24ADB7190(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63656E6E6F437369 && a2 == 0xEB00000000646574;
  if (v4 || (sub_24AE097C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6574497369 && a2 == 0xE600000000000000 || (sub_24AE097C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6665446567616D69 && a2 == 0xEF6E6F6974696E69 || (sub_24AE097C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79726574746162 && a2 == 0xE700000000000000 || (sub_24AE097C8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974 || (sub_24AE097C8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E756F5379616C70 && a2 == 0xEE00657461745364 || (sub_24AE097C8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65646F4D74736F6CLL && a2 == 0xED00006574617453 || (sub_24AE097C8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024AE13170 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_24AE097C8();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_24ADB7448()
{
  result = qword_27EFA9290;
  if (!qword_27EFA9290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9290);
  }

  return result;
}

unint64_t sub_24ADB749C()
{
  result = qword_27EFA9298;
  if (!qword_27EFA9298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9298);
  }

  return result;
}

unint64_t sub_24ADB74F0()
{
  result = qword_27EFA92D8;
  if (!qword_27EFA92D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA92D8);
  }

  return result;
}

unint64_t sub_24ADB7544()
{
  result = qword_27EFA92E0;
  if (!qword_27EFA92E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA92E0);
  }

  return result;
}

unint64_t sub_24ADB7598()
{
  result = qword_27EFA92E8;
  if (!qword_27EFA92E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA92E8);
  }

  return result;
}

unint64_t sub_24ADB75EC()
{
  result = qword_27EFA92F0;
  if (!qword_27EFA92F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA92F0);
  }

  return result;
}

unint64_t sub_24ADB7640()
{
  result = qword_27EFA92F8;
  if (!qword_27EFA92F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA92F8);
  }

  return result;
}

unint64_t sub_24ADB7694()
{
  result = qword_27EFA9300;
  if (!qword_27EFA9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9300);
  }

  return result;
}

unint64_t sub_24ADB76E8()
{
  result = qword_27EFA9308;
  if (!qword_27EFA9308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9308);
  }

  return result;
}

unint64_t sub_24ADB773C()
{
  result = qword_27EFA9338;
  if (!qword_27EFA9338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9338);
  }

  return result;
}

unint64_t sub_24ADB7790()
{
  result = qword_27EFA9340;
  if (!qword_27EFA9340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9340);
  }

  return result;
}

unint64_t sub_24ADB77E4()
{
  result = qword_27EFA9348;
  if (!qword_27EFA9348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9348);
  }

  return result;
}

unint64_t sub_24ADB7838()
{
  result = qword_27EFA9350;
  if (!qword_27EFA9350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9350);
  }

  return result;
}

unint64_t sub_24ADB788C()
{
  result = qword_27EFA9358;
  if (!qword_27EFA9358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9358);
  }

  return result;
}

unint64_t sub_24ADB78E0()
{
  result = qword_27EFA9368;
  if (!qword_27EFA9368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9368);
  }

  return result;
}

unint64_t sub_24ADB7934()
{
  result = qword_27EFA93D8;
  if (!qword_27EFA93D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA93D8);
  }

  return result;
}

uint64_t sub_24ADB7988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 0x80) == 0)
  {
    sub_24AE08288();
    sub_24AE08288();
  }

  return sub_24AE08288();
}

uint64_t _s13LostModeStateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s13LostModeStateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s14PlaySoundStateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14PlaySoundStateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24ADB7D3C()
{
  result = qword_27EFA93E0;
  if (!qword_27EFA93E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA93E0);
  }

  return result;
}

unint64_t sub_24ADB7D94()
{
  result = qword_27EFA93E8;
  if (!qword_27EFA93E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA93E8);
  }

  return result;
}

unint64_t sub_24ADB7DEC()
{
  result = qword_27EFA93F0;
  if (!qword_27EFA93F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA93F0);
  }

  return result;
}

unint64_t sub_24ADB7E44()
{
  result = qword_27EFA93F8;
  if (!qword_27EFA93F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA93F8);
  }

  return result;
}

unint64_t sub_24ADB7E9C()
{
  result = qword_27EFA9400;
  if (!qword_27EFA9400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9400);
  }

  return result;
}

unint64_t sub_24ADB7EF4()
{
  result = qword_27EFA9408;
  if (!qword_27EFA9408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9408);
  }

  return result;
}

unint64_t sub_24ADB7F4C()
{
  result = qword_27EFA9410;
  if (!qword_27EFA9410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9410);
  }

  return result;
}

unint64_t sub_24ADB7FA4()
{
  result = qword_27EFA9418;
  if (!qword_27EFA9418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9418);
  }

  return result;
}

unint64_t sub_24ADB7FFC()
{
  result = qword_27EFA9420;
  if (!qword_27EFA9420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9420);
  }

  return result;
}

unint64_t sub_24ADB8054()
{
  result = qword_27EFA9428;
  if (!qword_27EFA9428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9428);
  }

  return result;
}

unint64_t sub_24ADB80AC()
{
  result = qword_27EFA9430;
  if (!qword_27EFA9430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9430);
  }

  return result;
}

unint64_t sub_24ADB8104()
{
  result = qword_27EFA9438;
  if (!qword_27EFA9438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9438);
  }

  return result;
}

unint64_t sub_24ADB815C()
{
  result = qword_27EFA9440;
  if (!qword_27EFA9440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9440);
  }

  return result;
}

unint64_t sub_24ADB81B4()
{
  result = qword_27EFA9448;
  if (!qword_27EFA9448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9448);
  }

  return result;
}

unint64_t sub_24ADB820C()
{
  result = qword_27EFA9450;
  if (!qword_27EFA9450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9450);
  }

  return result;
}

unint64_t sub_24ADB8264()
{
  result = qword_27EFA9458;
  if (!qword_27EFA9458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9458);
  }

  return result;
}

unint64_t sub_24ADB82BC()
{
  result = qword_27EFA9460;
  if (!qword_27EFA9460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9460);
  }

  return result;
}

unint64_t sub_24ADB8314()
{
  result = qword_27EFA9468;
  if (!qword_27EFA9468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9468);
  }

  return result;
}

unint64_t sub_24ADB836C()
{
  result = qword_27EFA9470;
  if (!qword_27EFA9470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9470);
  }

  return result;
}

unint64_t sub_24ADB83C4()
{
  result = qword_27EFA9478;
  if (!qword_27EFA9478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9478);
  }

  return result;
}

unint64_t sub_24ADB841C()
{
  result = qword_27EFA9480;
  if (!qword_27EFA9480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9480);
  }

  return result;
}

unint64_t sub_24ADB8474()
{
  result = qword_27EFA9488;
  if (!qword_27EFA9488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9488);
  }

  return result;
}

unint64_t sub_24ADB84CC()
{
  result = qword_27EFA9490;
  if (!qword_27EFA9490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9490);
  }

  return result;
}

unint64_t sub_24ADB8524()
{
  result = qword_27EFA9498;
  if (!qword_27EFA9498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9498);
  }

  return result;
}

unint64_t sub_24ADB857C()
{
  result = qword_27EFA94A0;
  if (!qword_27EFA94A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA94A0);
  }

  return result;
}

unint64_t sub_24ADB85D4()
{
  result = qword_27EFA94A8;
  if (!qword_27EFA94A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA94A8);
  }

  return result;
}

unint64_t sub_24ADB862C()
{
  result = qword_27EFA94B0;
  if (!qword_27EFA94B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA94B0);
  }

  return result;
}

unint64_t sub_24ADB8684()
{
  result = qword_27EFA94B8;
  if (!qword_27EFA94B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA94B8);
  }

  return result;
}

unint64_t sub_24ADB86DC()
{
  result = qword_27EFA94C0;
  if (!qword_27EFA94C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA94C0);
  }

  return result;
}

unint64_t sub_24ADB8734()
{
  result = qword_27EFA94C8;
  if (!qword_27EFA94C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA94C8);
  }

  return result;
}

unint64_t sub_24ADB8788()
{
  result = qword_27EFA9520;
  if (!qword_27EFA9520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9520);
  }

  return result;
}

unint64_t sub_24ADB87DC()
{
  result = qword_27EFA9528;
  if (!qword_27EFA9528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9528);
  }

  return result;
}

unint64_t sub_24ADB8830()
{
  result = qword_27EFA9530;
  if (!qword_27EFA9530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9530);
  }

  return result;
}

unint64_t sub_24ADB8884()
{
  result = qword_27EFA9538;
  if (!qword_27EFA9538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9538);
  }

  return result;
}

unint64_t sub_24ADB88D8()
{
  result = qword_27EFA9540;
  if (!qword_27EFA9540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9540);
  }

  return result;
}

unint64_t sub_24ADB892C()
{
  result = qword_27EFA9548;
  if (!qword_27EFA9548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9548);
  }

  return result;
}

unint64_t sub_24ADB8980()
{
  result = qword_27EFA9550;
  if (!qword_27EFA9550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9550);
  }

  return result;
}

unint64_t sub_24ADB89D4()
{
  result = qword_27EFA9558;
  if (!qword_27EFA9558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9558);
  }

  return result;
}

unint64_t sub_24ADB8A28()
{
  result = qword_27EFA9560;
  if (!qword_27EFA9560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9560);
  }

  return result;
}

unint64_t sub_24ADB8A7C()
{
  result = qword_27EFA9568;
  if (!qword_27EFA9568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9568);
  }

  return result;
}

uint64_t _s11ServerImageV7VariantOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11ServerImageV7VariantOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24ADB8CB4()
{
  result = qword_27EFA95C0;
  if (!qword_27EFA95C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA95C0);
  }

  return result;
}

unint64_t sub_24ADB8D0C()
{
  result = qword_27EFA95C8;
  if (!qword_27EFA95C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA95C8);
  }

  return result;
}

unint64_t sub_24ADB8D64()
{
  result = qword_27EFA95D0;
  if (!qword_27EFA95D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA95D0);
  }

  return result;
}

unint64_t sub_24ADB8DBC()
{
  result = qword_27EFA95D8;
  if (!qword_27EFA95D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA95D8);
  }

  return result;
}

unint64_t sub_24ADB8E14()
{
  result = qword_27EFA95E0;
  if (!qword_27EFA95E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA95E0);
  }

  return result;
}

unint64_t sub_24ADB8E6C()
{
  result = qword_27EFA95E8;
  if (!qword_27EFA95E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA95E8);
  }

  return result;
}

unint64_t sub_24ADB8EC4()
{
  result = qword_27EFA95F0;
  if (!qword_27EFA95F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA95F0);
  }

  return result;
}

unint64_t sub_24ADB8F1C()
{
  result = qword_27EFA95F8;
  if (!qword_27EFA95F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA95F8);
  }

  return result;
}

unint64_t sub_24ADB8F74()
{
  result = qword_27EFA9600;
  if (!qword_27EFA9600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9600);
  }

  return result;
}

unint64_t sub_24ADB8FCC()
{
  result = qword_27EFA9608;
  if (!qword_27EFA9608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9608);
  }

  return result;
}

unint64_t sub_24ADB9024()
{
  result = qword_27EFA9610;
  if (!qword_27EFA9610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9610);
  }

  return result;
}

unint64_t sub_24ADB907C()
{
  result = qword_27EFA9618;
  if (!qword_27EFA9618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9618);
  }

  return result;
}

unint64_t sub_24ADB90D4()
{
  result = qword_27EFA9620;
  if (!qword_27EFA9620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9620);
  }

  return result;
}

unint64_t sub_24ADB912C()
{
  result = qword_27EFA9628;
  if (!qword_27EFA9628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9628);
  }

  return result;
}

unint64_t sub_24ADB9184()
{
  result = qword_27EFA9630;
  if (!qword_27EFA9630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9630);
  }

  return result;
}

unint64_t sub_24ADB91DC()
{
  result = qword_27EFA9638;
  if (!qword_27EFA9638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9638);
  }

  return result;
}

unint64_t sub_24ADB9234()
{
  result = qword_27EFA9640;
  if (!qword_27EFA9640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9640);
  }

  return result;
}

unint64_t sub_24ADB928C()
{
  result = qword_27EFA9648;
  if (!qword_27EFA9648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9648);
  }

  return result;
}

unint64_t sub_24ADB92E4()
{
  result = qword_27EFA9650;
  if (!qword_27EFA9650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9650);
  }

  return result;
}

unint64_t sub_24ADB933C()
{
  result = qword_27EFA9658;
  if (!qword_27EFA9658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9658);
  }

  return result;
}

unint64_t sub_24ADB9394()
{
  result = qword_27EFA9660;
  if (!qword_27EFA9660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9660);
  }

  return result;
}

uint64_t sub_24ADB9494(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PersonModel(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v23 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v22 = *(a1 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    v20 = a2;
    v21 = a1;
    while (v12 < *(a1 + 16))
    {
      v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v15 = *(v6 + 72);
      sub_24ADC3D4C(a1 + v14 + v15 * v12, v11, type metadata accessor for PersonModel);
      v16 = sub_24ADBD338(v11, a2);
      if (v2)
      {
        sub_24ADC3DB4(v11, type metadata accessor for PersonModel);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_24ADC3C30(v11, v23);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24ADFB2A0(0, *(v13 + 16) + 1, 1);
          v13 = v24;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_24ADFB2A0((v18 > 1), v19 + 1, 1);
          v13 = v24;
        }

        *(v13 + 16) = v19 + 1;
        result = sub_24ADC3C30(v23, v13 + v14 + v19 * v15);
        a2 = v20;
        a1 = v21;
      }

      else
      {
        result = sub_24ADC3DB4(v11, type metadata accessor for PersonModel);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
LABEL_15:

    return v13;
  }

  return result;
}

__n128 ItemEntityQuery.init(dependencies:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  type metadata accessor for ItemEntityQuery(0);
  sub_24AE08DF8();
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t type metadata accessor for ItemEntityQuery(uint64_t a1)
{
  result = qword_27EFA96A0;
  if (!qword_27EFA96A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ItemEntityQuery.customDefaultResult()(uint64_t a1)
{
  *(v2 + 1072) = v1;
  *(v2 + 1064) = a1;
  return MEMORY[0x2822009F8](sub_24ADB9824, 0, 0);
}

uint64_t sub_24ADB9824()
{
  v8 = v0;
  *(v0 + 612) = *(type metadata accessor for ItemEntityQuery(0) + 20);
  v1 = sub_24AE08DE8();
  v2 = sub_24AE09408();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_24AD9F840(0xD000000000000015, 0x800000024AE13220, &v7);
    _os_log_impl(&dword_24AD89000, v1, v2, "%s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C231F80](v4, -1, -1);
    MEMORY[0x24C231F80](v3, -1, -1);
  }

  *(v0 + 1056) = 0;
  v5 = swift_task_alloc();
  *(v0 + 1080) = v5;
  *v5 = v0;
  v5[1] = sub_24ADB99AC;

  return sub_24ADB9F44((v0 + 1056));
}

uint64_t sub_24ADB99AC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1088) = a1;
  *(v3 + 1096) = v1;

  if (v1)
  {
    v4 = sub_24ADB9D38;
  }

  else
  {
    v4 = sub_24ADB9AC4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24ADB9AC4()
{
  v47 = v0;
  if (qword_27EFA87B0 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFAA480;
  v2 = qword_27EFA87C0;
  sub_24AE08288();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 1088);
  v4 = qword_27EFAA488;
  LOBYTE(v38) = 2;
  v5 = MEMORY[0x277D84F90];
  *&v35 = MEMORY[0x277D84F90];
  *(&v35 + 1) = MEMORY[0x277D84F90];
  *&v36 = MEMORY[0x277D84F90];
  sub_24AE08288();
  *(&v36 + 1) = sub_24ADC2F7C(v5);
  *&v37 = v1;
  *(&v37 + 1) = v4;
  *(&v38 + 1) = 0;
  *&v39 = 0xE000000000000000;
  sub_24ADBBEB0(v3);

  v6 = v38;
  *(v0 + 1016) = v37;
  *(v0 + 1032) = v6;
  *(v0 + 1048) = v39;
  v7 = v36;
  *(v0 + 984) = v35;
  *(v0 + 1000) = v7;
  v8 = *(v0 + 1000);
  v9 = *(v0 + 1064);
  if (*(v8 + 16))
  {
    v10 = *(v8 + 32);
    v11 = *(v8 + 48);
    v12 = *(v8 + 80);
    *(v0 + 464) = *(v8 + 64);
    *(v0 + 480) = v12;
    *(v0 + 432) = v10;
    *(v0 + 448) = v11;
    v13 = *(v8 + 96);
    v14 = *(v8 + 112);
    v15 = *(v8 + 144);
    *(v0 + 528) = *(v8 + 128);
    *(v0 + 544) = v15;
    *(v0 + 496) = v13;
    *(v0 + 512) = v14;
    v16 = *(v8 + 160);
    v17 = *(v8 + 176);
    v18 = *(v8 + 192);
    *(v0 + 608) = *(v8 + 208);
    *(v0 + 576) = v17;
    *(v0 + 592) = v18;
    *(v0 + 560) = v16;
    v19 = *(v8 + 176);
    v43 = *(v8 + 160);
    v44 = v19;
    v45 = *(v8 + 192);
    v46 = *(v8 + 208);
    v20 = *(v8 + 112);
    v39 = *(v8 + 96);
    v40 = v20;
    v21 = *(v8 + 144);
    v41 = *(v8 + 128);
    v42 = v21;
    v22 = *(v8 + 48);
    v35 = *(v8 + 32);
    v36 = v22;
    v23 = *(v8 + 80);
    v37 = *(v8 + 64);
    v38 = v23;
    sub_24ADAF1D4(v0 + 432, v0 + 616);
    sub_24ADAF1D4(v0 + 432, v0 + 800);
    ItemEntity.init(model:)(&v35, v9);
    sub_24AD92BE4(v0 + 984, &qword_27EFA9670, &qword_24AE0DA98);
    sub_24ADAFAD4(v0 + 432);
    nullsub_1();
  }

  else
  {
    sub_24AD92BE4(v0 + 984, &qword_27EFA9670, &qword_24AE0DA98);
    sub_24ADBA644((v0 + 224));
    *v9 = *(v0 + 224);
    v24 = *(v0 + 240);
    v25 = *(v0 + 256);
    v26 = *(v0 + 288);
    v9[3] = *(v0 + 272);
    v9[4] = v26;
    v9[1] = v24;
    v9[2] = v25;
    v27 = *(v0 + 304);
    v28 = *(v0 + 320);
    v29 = *(v0 + 352);
    v9[7] = *(v0 + 336);
    v9[8] = v29;
    v9[5] = v27;
    v9[6] = v28;
    v30 = *(v0 + 368);
    v31 = *(v0 + 384);
    v32 = *(v0 + 416);
    v9[11] = *(v0 + 400);
    v9[12] = v32;
    v9[9] = v30;
    v9[10] = v31;
  }

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_24ADB9D38()
{
  v25 = v0;
  v1 = *(v0 + 1096);
  v2 = v1;
  v3 = sub_24AE08DE8();
  v4 = sub_24AE093F8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 1096);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AD9F840(0xD000000000000015, 0x800000024AE13220, &v24);
    *(v7 + 12) = 2114;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_24AD89000, v3, v4, "%s - error: %{public}@", v7, 0x16u);
    sub_24AD92BE4(v8, &qword_27EFA9668, &qword_24AE0DA90);
    MEMORY[0x24C231F80](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C231F80](v9, -1, -1);
    MEMORY[0x24C231F80](v7, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 1064);
  sub_24ADBA644((v0 + 16));
  *v12 = *(v0 + 16);
  v13 = *(v0 + 32);
  v14 = *(v0 + 48);
  v15 = *(v0 + 80);
  v12[3] = *(v0 + 64);
  v12[4] = v15;
  v12[1] = v13;
  v12[2] = v14;
  v16 = *(v0 + 96);
  v17 = *(v0 + 112);
  v18 = *(v0 + 144);
  v12[7] = *(v0 + 128);
  v12[8] = v18;
  v12[5] = v16;
  v12[6] = v17;
  v19 = *(v0 + 160);
  v20 = *(v0 + 176);
  v21 = *(v0 + 208);
  v12[11] = *(v0 + 192);
  v12[12] = v21;
  v12[9] = v19;
  v12[10] = v20;
  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_24ADB9F44(uint64_t *a1)
{
  v2[4] = v1;
  v4 = sub_24AE08388();
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a1;
  v2[7] = v5;
  v2[8] = v6;

  return MEMORY[0x2822009F8](sub_24ADBA00C, 0, 0);
}

uint64_t sub_24ADBA00C()
{
  v15 = v0;
  *(v0 + 96) = *(type metadata accessor for ItemEntityQuery(0) + 20);
  sub_24AE08288();
  v1 = sub_24AE08DE8();
  v2 = sub_24AE09408();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 64);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_24AD9F840(0xD000000000000015, 0x800000024AE13150, &v14);
    *(v4 + 12) = 2080;
    *(v0 + 24) = v3;
    sub_24AE08288();
    v6 = sub_24AE08FF8();
    v8 = sub_24AD9F840(v6, v7, &v14);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_24AD89000, v1, v2, "%s - will call fetchWithOptions: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v5, -1, -1);
    MEMORY[0x24C231F80](v4, -1, -1);
  }

  v9 = **(v0 + 32);
  *(v0 + 16) = *(v0 + 64);
  sub_24ADC4058(&qword_27EFA9678, type metadata accessor for ItemEntityQuery, &protocol conformance descriptor for ItemEntityQuery);
  sub_24AE084C8();
  v13 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = sub_24ADBA2C0;
  v11 = *(v0 + 56);

  return v13(v0 + 16, v11);
}

uint64_t sub_24ADBA2C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_24ADBA5E0;
  }

  else
  {
    v7 = sub_24ADBA434;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24ADBA434()
{
  v13 = v0;
  sub_24AE08288();
  v1 = sub_24AE08DE8();
  v2 = sub_24AE09408();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 80);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_24AD9F840(0xD000000000000015, 0x800000024AE13150, &v12);
    *(v4 + 12) = 2080;
    v6 = MEMORY[0x24C231100](v3, &type metadata for ItemModel);
    v8 = sub_24AD9F840(v6, v7, &v12);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_24AD89000, v1, v2, "%s - did receive fetchWithOptions: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v5, -1, -1);
    MEMORY[0x24C231F80](v4, -1, -1);
  }

  v9 = *(v0 + 8);
  v10 = *(v0 + 80);

  return v9(v10);
}

uint64_t sub_24ADBA5E0()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_24ADBA644(_OWORD *a1)
{
  result = 0.0;
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
  return result;
}

uint64_t ItemEntityQuery.entities(for:)(uint64_t a1)
{
  *(v2 + 392) = a1;
  *(v2 + 400) = v1;
  return MEMORY[0x2822009F8](sub_24ADBA688, 0, 0);
}

uint64_t sub_24ADBA688()
{
  v14 = v0;
  type metadata accessor for ItemEntityQuery(0);
  sub_24AE08288();
  v1 = sub_24AE08DE8();
  v2 = sub_24AE09408();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[49];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315394;
    *(v4 + 4) = sub_24AD9F840(0x7365697469746E65, 0xEE00293A726F6628, &v13);
    *(v4 + 12) = 2082;
    v6 = MEMORY[0x24C231100](v3, &type metadata for ItemModel.UniqueIdentifier);
    v8 = sub_24AD9F840(v6, v7, &v13);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_24AD89000, v1, v2, "%s - ids: %{public}s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v5, -1, -1);
    MEMORY[0x24C231F80](v4, -1, -1);
  }

  v9 = sub_24AE08288();
  v10 = sub_24ADAE0E8(v9);

  v0[48] = v10;
  v11 = swift_task_alloc();
  v0[51] = v11;
  *v11 = v0;
  v11[1] = sub_24ADBA890;

  return sub_24ADB9F44(v0 + 48);
}

uint64_t sub_24ADBA890(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 416) = a1;
  *(v3 + 424) = v1;

  if (v1)
  {
    v4 = sub_24ADBAB98;
  }

  else
  {
    v4 = sub_24ADBA9AC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24ADBA9AC()
{
  v38 = v0;
  v1 = *(v0 + 416);
  v2 = *(v1 + 16);
  if (v2)
  {
    v34 = MEMORY[0x277D84F90];
    sub_24ADFB1C4(0, v2, 0);
    v3 = v34;
    v4 = v1 + 32;
    for (i = v2 - 1; ; --i)
    {
      v6 = *v4;
      v7 = *(v4 + 16);
      v8 = *(v4 + 48);
      *(v0 + 48) = *(v4 + 32);
      *(v0 + 64) = v8;
      *(v0 + 16) = v6;
      *(v0 + 32) = v7;
      v9 = *(v4 + 64);
      v10 = *(v4 + 80);
      v11 = *(v4 + 112);
      *(v0 + 112) = *(v4 + 96);
      *(v0 + 128) = v11;
      *(v0 + 80) = v9;
      *(v0 + 96) = v10;
      v12 = *(v4 + 128);
      v13 = *(v4 + 144);
      v14 = *(v4 + 160);
      *(v0 + 192) = *(v4 + 176);
      *(v0 + 160) = v13;
      *(v0 + 176) = v14;
      *(v0 + 144) = v12;
      v15 = *(v4 + 144);
      v36[8] = *(v4 + 128);
      v36[9] = v15;
      v36[10] = *(v4 + 160);
      v37 = *(v4 + 176);
      v16 = *(v4 + 80);
      v36[4] = *(v4 + 64);
      v36[5] = v16;
      v17 = *(v4 + 112);
      v36[6] = *(v4 + 96);
      v36[7] = v17;
      v18 = *(v4 + 16);
      v36[0] = *v4;
      v36[1] = v18;
      v19 = *(v4 + 48);
      v36[2] = *(v4 + 32);
      v36[3] = v19;
      sub_24ADAF1D4(v0 + 16, v0 + 200);
      ItemEntity.init(model:)(v36, v35);
      v21 = *(v34 + 16);
      v20 = *(v34 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_24ADFB1C4((v20 > 1), v21 + 1, 1);
      }

      *(v34 + 16) = v21 + 1;
      v22 = (v34 + 208 * v21);
      v22[2] = v35[0];
      v23 = v35[1];
      v24 = v35[2];
      v25 = v35[4];
      v22[5] = v35[3];
      v22[6] = v25;
      v22[3] = v23;
      v22[4] = v24;
      v26 = v35[5];
      v27 = v35[6];
      v28 = v35[8];
      v22[9] = v35[7];
      v22[10] = v28;
      v22[7] = v26;
      v22[8] = v27;
      v29 = v35[9];
      v30 = v35[10];
      v31 = v35[12];
      v22[13] = v35[11];
      v22[14] = v31;
      v22[11] = v29;
      v22[12] = v30;
      if (!i)
      {
        break;
      }

      v4 += 184;
    }
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
  }

  v32 = *(v0 + 8);

  return v32(v3);
}

uint64_t ItemEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x2822009F8](sub_24ADBABD4, 0, 0);
}

uint64_t sub_24ADBABD4()
{
  v10 = v0;
  type metadata accessor for ItemEntityQuery(0);
  sub_24AE08288();
  v1 = sub_24AE08DE8();
  v2 = sub_24AE09408();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[7];
    v3 = v0[8];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_24AD9F840(0xD000000000000013, 0x800000024AE13240, &v9);
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_24AD9F840(v4, v3, &v9);
    _os_log_impl(&dword_24AD89000, v1, v2, "%s - string: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v6, -1, -1);
    MEMORY[0x24C231F80](v5, -1, -1);
  }

  v0[5] = 0;
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_24ADBADA0;

  return sub_24ADB9F44(v0 + 5);
}

uint64_t sub_24ADBADA0(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[11] = v1;

  if (v1)
  {
    v4 = sub_24ADBAFDC;
  }

  else
  {
    v4 = sub_24ADBAEBC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24ADBAEBC()
{
  v13 = v0;
  if (qword_27EFA87B0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = qword_27EFAA480;
  sub_24AE08288();
  v6 = sub_24ADAE244(&unk_285E2F568);
  v10 = 2;
  v9[0] = MEMORY[0x277D84F90];
  v9[1] = MEMORY[0x277D84F90];
  v9[2] = MEMORY[0x277D84F90];
  v9[3] = sub_24ADC2F7C(MEMORY[0x277D84F90]);
  v9[4] = v5;
  v9[5] = v6;
  v11 = v3;
  v12 = v2;
  sub_24AE08288();
  sub_24ADBBEB0(v1);

  sub_24ADBAFF4(v9, v4);
  v7 = v0[1];

  return v7();
}

uint64_t sub_24ADBAFF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29[8] = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9738, &qword_24AE0DD48);
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v33 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v29 - v9;
  v11 = a1[1];
  v29[7] = *a1;
  v12 = a1[2];
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1[5];
  v16 = a1[8];
  v17 = sub_24AE08718();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = *(v11 + 16);
  if (v18)
  {
    v29[0] = v16;
    v29[1] = v15;
    v29[2] = v14;
    v29[3] = v13;
    v29[4] = v12;
    v29[6] = v10;
    v39 = MEMORY[0x277D84F90];
    sub_24ADFB1E4(0, v18, 0);
    v19 = v39;
    v31 = v3 + 32;
    v32 = v3;
    v29[5] = v11;
    v20 = (v11 + 56);
    v30 = v5;
    do
    {
      v21 = *(v20 - 3);
      v22 = *(v20 - 2);
      v24 = *(v20 - 1);
      v23 = *v20;
      v36 = v21;
      v37 = v22;
      v38 = v24;
      sub_24ADC3E34(v21, v22, v24);
      sub_24AE08288();
      v25 = ItemModel.Section.title.getter(v33);
      v35 = v29;
      MEMORY[0x28223BE20](v25);
      v29[-4] = v21;
      v29[-3] = v22;
      v29[-2] = v24;
      v29[-1] = v23;
      sub_24ADB411C();
      sub_24AE08458();
      sub_24ADC3E58(v21, v22, v24);

      v39 = v19;
      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_24ADFB1E4((v26 > 1), v27 + 1, 1);
        v19 = v39;
      }

      *(v19 + 16) = v27 + 1;
      (*(v32 + 32))(v19 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v27, v30, v34);
      v20 += 4;
      --v18;
    }

    while (v18);
  }

  sub_24ADB411C();
  return sub_24AE08468();
}

uint64_t ItemEntityQuery.allEntities()(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_24ADBB3E0, 0, 0);
}

uint64_t sub_24ADBB3E0()
{
  v8 = v0;
  type metadata accessor for ItemEntityQuery(0);
  v1 = sub_24AE08DE8();
  v2 = sub_24AE09408();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_24AD9F840(0x7469746E456C6C61, 0xED00002928736569, &v7);
    _os_log_impl(&dword_24AD89000, v1, v2, "%s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C231F80](v4, -1, -1);
    MEMORY[0x24C231F80](v3, -1, -1);
  }

  *(v0 + 40) = 0;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_24ADBB56C;

  return sub_24ADB9F44((v0 + 40));
}

uint64_t sub_24ADBB56C(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[9] = v1;

  if (v1)
  {
    v4 = sub_24ADBB798;
  }

  else
  {
    v4 = sub_24ADBB688;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24ADBB688()
{
  v11 = v0;
  if (qword_27EFA87B0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = v0[6];
  v3 = qword_27EFAA480;
  sub_24AE08288();
  v4 = sub_24ADAE244(&unk_285E2F590);
  v8 = 2;
  v7[0] = MEMORY[0x277D84F90];
  v7[1] = MEMORY[0x277D84F90];
  v7[2] = MEMORY[0x277D84F90];
  v7[3] = sub_24ADC2F7C(MEMORY[0x277D84F90]);
  v7[4] = v3;
  v7[5] = v4;
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_24ADBBEB0(v1);

  sub_24ADBAFF4(v7, v2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_24ADBB7B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AD8E628;

  return ItemEntityQuery.allEntities()(a1);
}

uint64_t sub_24ADBB8A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24ADAE93C;

  return ItemEntityQuery.entities(for:)(a1);
}

uint64_t sub_24ADBB93C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_24ADC4058(&qword_27EFA96B0, type metadata accessor for ItemEntityQuery, &protocol conformance descriptor for ItemEntityQuery);
  *v5 = v2;
  v5[1] = sub_24AD9B61C;

  return MEMORY[0x28210C0E8](a1, a2, v6);
}

uint64_t sub_24ADBBA20(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_24ADC4058(&qword_27EFA91C0, type metadata accessor for ItemEntityQuery, &protocol conformance descriptor for ItemEntityQuery);
  *v5 = v2;
  v5[1] = sub_24AD9B61C;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_24ADBBB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9740, &qword_24AE0DD50);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  v10 = *(a4 + 16);
  if (v10)
  {
    v11 = a4 + 32;
    v38 = (v6 + 8);
    v39 = v6 + 16;
    v12 = MEMORY[0x277D84F90];
    v13 = v9;
    v37 = xmmword_24AE0A280;
    v14 = v7;
    v40 = v6;
    do
    {
      v41 = v10;
      v15 = *(v11 + 144);
      v16 = *(v11 + 112);
      v62 = *(v11 + 128);
      v63 = v15;
      v17 = *(v11 + 144);
      v64 = *(v11 + 160);
      v18 = *(v11 + 80);
      v19 = *(v11 + 48);
      v58 = *(v11 + 64);
      v59 = v18;
      v20 = *(v11 + 80);
      v21 = *(v11 + 112);
      v60 = *(v11 + 96);
      v61 = v21;
      v22 = *(v11 + 16);
      v55[0] = *v11;
      v55[1] = v22;
      v23 = *(v11 + 48);
      v25 = *v11;
      v24 = *(v11 + 16);
      v56 = *(v11 + 32);
      v57 = v23;
      v75 = v62;
      v76 = v17;
      v77 = *(v11 + 160);
      v71 = v58;
      v72 = v20;
      v73 = v60;
      v74 = v16;
      v67 = v25;
      v68 = v24;
      v65 = *(v11 + 176);
      LOWORD(v78) = *(v11 + 176);
      v69 = v56;
      v70 = v19;
      sub_24ADAF1D4(v55, v66);
      ItemEntity.init(model:)(&v67, v66);
      v52 = v66[10];
      v53 = v66[11];
      v54 = v66[12];
      v48 = v66[6];
      v49 = v66[7];
      v50 = v66[8];
      v51 = v66[9];
      v44 = v66[2];
      v45 = v66[3];
      v46 = v66[4];
      v47 = v66[5];
      v42 = v66[0];
      v43 = v66[1];
      sub_24ADB411C();
      sub_24AE082A8();
      v77 = v52;
      v78 = v53;
      v79 = v54;
      v73 = v48;
      v74 = v49;
      v75 = v50;
      v76 = v51;
      v69 = v44;
      v70 = v45;
      v71 = v46;
      v72 = v47;
      v67 = v42;
      v68 = v43;
      sub_24ADC3E70(&v67);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9748, &qword_24AE0DD58);
      v26 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v27 = swift_allocObject();
      v28 = v12;
      *(v27 + 16) = v37;
      v29 = v13;
      (*(v6 + 16))(v27 + v26, v13, v14);
      v30 = sub_24AE08288();
      v31 = v28;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_24ADAB0E0(0, v28[2] + 1, 1, v28);
      }

      v33 = v31[2];
      v32 = v31[3];
      v34 = v31;
      if (v33 >= v32 >> 1)
      {
        v34 = sub_24ADAB0E0((v32 > 1), v33 + 1, 1, v31);
      }

      v13 = v29;
      (*v38)(v29, v14);
      v34[2] = v33 + 1;
      v12 = v34;
      v34[v33 + 4] = v30;
      v11 += 184;
      v6 = v40;
      v10 = v41 - 1;
    }

    while (v41 != 1);
  }

  sub_24ADB411C();
  sub_24AE08278();

  v35 = sub_24AE08288();

  return v35;
}

uint64_t sub_24ADBBEB0(uint64_t a1)
{
  v122 = a1;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9750, &qword_24AE12010);
  v2 = *(v127 - 8);
  v3 = MEMORY[0x28223BE20](v127);
  v5 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v120 - v6;
  v123 = v1;
  v8 = 0;
  v9 = sub_24ADC39D0(&unk_285E2F448, v1, sub_24ADFB194);
  v10 = *(v9 + 16);
  if (v10)
  {
    v121 = 0;
    *&v132 = MEMORY[0x277D84F90];
    v11 = v9;
    sub_24ADFB154(0, v10, 0);
    v12 = v11;
    v13 = 0;
    v125 = v11;
    v126 = v2;
    v14 = (v2 + 32);
    v15 = v132;
    v124 = v10;
    while (1)
    {
      if (v13 >= v12[2])
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        sub_24AE097E8();
        __break(1u);
        goto LABEL_65;
      }

      v128 = v15;
      v16 = *(v12 + v13 + 32);
      MEMORY[0x28223BE20](v12);
      *(&v120 - 2) = &type metadata for ItemModel.Sort;
      *(&v120 - 1) = sub_24ADC3EC4();
      swift_getKeyPath();
      if (v16 <= 1)
      {
        v17 = v127;
      }

      else
      {
        v17 = v127;
        if (v16 != 2)
        {
          swift_getKeyPath();
          if (v16 == 3)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9790, &qword_24AE0DDC8);
            sub_24AE09648();

            sub_24ADC3FB4();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9758, &qword_24AE0DD88);
            sub_24AE09648();

            sub_24ADC3F18();
          }

          goto LABEL_12;
        }
      }

      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA97A0, &qword_24AE0DDF8);
      sub_24AE09648();

LABEL_12:
      sub_24AE086A8();
      v18 = *v14;
      v19 = v5;
      (*v14)(v7, v5, v17);

      v15 = v128;
      *&v132 = v128;
      v20 = v17;
      v22 = v128[2];
      v21 = v128[3];
      v11 = (v22 + 1);
      if (v22 >= v21 >> 1)
      {
        sub_24ADFB154((v21 > 1), v22 + 1, 1);
        v15 = v132;
      }

      ++v13;
      v15[2] = v11;
      v18(v15 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v22, v7, v20);
      v12 = v125;
      v5 = v19;
      if (v124 == v13)
      {

        v8 = v121;
        v23 = v15;
        goto LABEL_17;
      }
    }
  }

  v23 = MEMORY[0x277D84F90];
LABEL_17:
  v24 = sub_24AE08288();
  v25 = v123;
  v26 = sub_24ADC3394(v24, v123);

  v27 = sub_24ADC35A4(v26, v25);
  v128 = v8;

  *&v132 = v27;
  *&v130[0] = v23;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9768, &qword_24AE0DD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9770, &qword_24AE0DD98);
  v28 = MEMORY[0x277D83970];
  sub_24AD9B548(&qword_27EFA9778, &qword_27EFA9768, &qword_24AE0DD90, MEMORY[0x277D83970]);
  sub_24AD9B548(&qword_27EFA9780, &qword_27EFA9770, &qword_24AE0DD98, v28);
  sub_24AD9B548(&qword_27EFA9788, &qword_27EFA9750, &qword_24AE12010, MEMORY[0x277CC8A08]);
  v29 = sub_24AE09128();

  v30 = sub_24AE08288();
  v11 = v128;
  v31 = sub_24ADC2204(v30, v25);
  v127 = v29;

  v128 = v31;
  v32 = v31[2];
  if (v32)
  {
    v33 = v11;
    v34 = sub_24ADBD4E4(v31[2], 0);
    v126 = sub_24ADC1B70(&v132, v34 + 4, v32, v128);
    v35 = v132;
    v11 = v134;
    swift_bridgeObjectRetain_n();
    sub_24ADC3C28(v35);
    if (v126 != v32)
    {
      goto LABEL_63;
    }

    v11 = v33;
  }

  else
  {
    sub_24AE08288();
    v34 = MEMORY[0x277D84F90];
  }

  *&v132 = v34;
  sub_24ADBF8F4(&v132, sub_24ADC2008, &type metadata for ItemModel.Section, sub_24ADBFEF8, sub_24ADBFAA0);
  if (v11)
  {
LABEL_65:

    __break(1u);
    return result;
  }

  v36 = v132;
  v37 = *(v132 + 16);
  if (!v37)
  {
    v40 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

  v38 = 0;
  v39 = v132 + 48;
  v40 = MEMORY[0x277D84F90];
  v125 = *(v132 + 16);
  do
  {
    v126 = v40;
    v11 = (v37 - v38);
    v41 = (v39 + 24 * v38);
    while (1)
    {
      if (v38 >= *(v36 + 16))
      {
        goto LABEL_59;
      }

      if (!v128[2])
      {
        goto LABEL_26;
      }

      v45 = *(v41 - 2);
      v42 = *(v41 - 1);
      v43 = *v41;
      sub_24ADC3E34(v45, v42, *v41);
      v46 = sub_24ADD6C14(v45, v42, v43);
      if (v47)
      {
        break;
      }

      sub_24ADC3E58(v45, v42, v43);
LABEL_26:
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0x1FFFFFFFELL;
LABEL_27:
      sub_24ADC3F6C(v45, v42, v43, v44);
      v41 += 3;
      ++v38;
      v11 = (v11 - 1);
      if (!v11)
      {
        v40 = v126;
        goto LABEL_42;
      }
    }

    v48 = v36;
    v49 = v39;
    v50 = *(v128[7] + 8 * v46);
    sub_24AE08288();
    if (v45 >> 1 == 0xFFFFFFFF)
    {
      v44 = v50;
      v39 = v49;
      v36 = v48;
      goto LABEL_27;
    }

    v51 = v126;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = sub_24ADAAD80(0, v51[2] + 1, 1, v51);
    }

    v52 = v51;
    v53 = v51[2];
    v54 = v52;
    v55 = v52[3];
    v56 = v53 + 1;
    if (v53 >= v55 >> 1)
    {
      v126 = v53 + 1;
      v59 = sub_24ADAAD80((v55 > 1), v53 + 1, 1, v52);
      v56 = v126;
      v57 = v50;
      v54 = v59;
    }

    else
    {
      v57 = v50;
    }

    v39 = v49;
    ++v38;
    v54[2] = v56;
    v58 = &v54[4 * v53];
    v40 = v54;
    v58[4] = v45;
    v58[5] = v42;
    v58[6] = v43;
    v58[7] = v57;
    v37 = v125;
    v36 = v48;
  }

  while (v11 != 1);
LABEL_42:

  v60 = v122;
  v11 = v123;
  sub_24AE08288();

  *v11 = v60;

  v11[1] = v40;
  v61 = v127;
  sub_24AE08288();

  v11[2] = v61;
  v62 = sub_24ADC2F7C(MEMORY[0x277D84F90]);
  v63 = *(v61 + 16);
  if (v63)
  {
    v64 = 0;
    v65 = v61 + 32;
    while (1)
    {
      if (v64 >= *(v61 + 16))
      {
        goto LABEL_60;
      }

      v85 = *v65;
      v86 = *(v65 + 16);
      v87 = *(v65 + 48);
      v134 = *(v65 + 32);
      v135 = v87;
      v132 = v85;
      v133 = v86;
      v88 = *(v65 + 64);
      v89 = *(v65 + 80);
      v90 = *(v65 + 112);
      v138 = *(v65 + 96);
      v139 = v90;
      v136 = v88;
      v137 = v89;
      v91 = *(v65 + 128);
      v92 = *(v65 + 144);
      v93 = *(v65 + 160);
      v143 = *(v65 + 176);
      v141 = v92;
      v142 = v93;
      v140 = v91;
      v11 = *(&v132 + 1);
      v94 = v132;
      sub_24ADAF1D4(&v132, v130);
      sub_24ADAF1D4(&v132, v130);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v129 = v62;
      v96 = sub_24ADD6B54(v94, v11);
      v98 = v62[2];
      v99 = (v97 & 1) == 0;
      v100 = __OFADD__(v98, v99);
      v101 = v98 + v99;
      if (v100)
      {
        goto LABEL_61;
      }

      v102 = v97;
      if (v62[3] < v101)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_52;
      }

      v117 = v96;
      sub_24ADBF6F4();
      v96 = v117;
      if (v102)
      {
LABEL_44:
        v62 = v129;
        v66 = v129[7] + 184 * v96;
        v67 = *(v66 + 48);
        v69 = *v66;
        v68 = *(v66 + 16);
        v130[2] = *(v66 + 32);
        v130[3] = v67;
        v130[0] = v69;
        v130[1] = v68;
        v70 = *(v66 + 112);
        v72 = *(v66 + 64);
        v71 = *(v66 + 80);
        v130[6] = *(v66 + 96);
        v130[7] = v70;
        v130[4] = v72;
        v130[5] = v71;
        v74 = *(v66 + 144);
        v73 = *(v66 + 160);
        v75 = *(v66 + 128);
        v131 = *(v66 + 176);
        v130[9] = v74;
        v130[10] = v73;
        v130[8] = v75;
        v76 = v132;
        v77 = v133;
        v78 = v135;
        *(v66 + 32) = v134;
        *(v66 + 48) = v78;
        *v66 = v76;
        *(v66 + 16) = v77;
        v79 = v136;
        v80 = v137;
        v81 = v139;
        *(v66 + 96) = v138;
        *(v66 + 112) = v81;
        *(v66 + 64) = v79;
        *(v66 + 80) = v80;
        v82 = v140;
        v83 = v141;
        v84 = v142;
        *(v66 + 176) = v143;
        *(v66 + 144) = v83;
        *(v66 + 160) = v84;
        *(v66 + 128) = v82;
        sub_24ADAFAD4(v130);
        sub_24ADAFAD4(&v132);
        goto LABEL_45;
      }

LABEL_53:
      v62 = v129;
      v129[(v96 >> 6) + 8] |= 1 << v96;
      v104 = (v62[6] + 16 * v96);
      *v104 = v94;
      v104[1] = v11;
      v105 = v62[7] + 184 * v96;
      v106 = v143;
      v108 = v141;
      v107 = v142;
      *(v105 + 128) = v140;
      *(v105 + 144) = v108;
      *(v105 + 160) = v107;
      *(v105 + 176) = v106;
      v110 = v138;
      v109 = v139;
      v111 = v137;
      *(v105 + 64) = v136;
      *(v105 + 80) = v111;
      *(v105 + 96) = v110;
      *(v105 + 112) = v109;
      v113 = v134;
      v112 = v135;
      v114 = v133;
      *v105 = v132;
      *(v105 + 16) = v114;
      *(v105 + 32) = v113;
      *(v105 + 48) = v112;
      sub_24AE08288();
      sub_24ADAFAD4(&v132);
      v115 = v62[2];
      v100 = __OFADD__(v115, 1);
      v116 = v115 + 1;
      if (v100)
      {
        goto LABEL_62;
      }

      v62[2] = v116;
LABEL_45:
      ++v64;
      v65 += 184;
      v61 = v127;
      if (v63 == v64)
      {
        goto LABEL_57;
      }
    }

    sub_24ADBE4C4(v101, isUniquelyReferenced_nonNull_native);
    v96 = sub_24ADD6B54(v94, v11);
    if ((v102 & 1) != (v103 & 1))
    {
      goto LABEL_64;
    }

LABEL_52:
    if (v102)
    {
      goto LABEL_44;
    }

    goto LABEL_53;
  }

LABEL_57:

  v118 = v123;

  *(v118 + 24) = v62;
  return result;
}

uint64_t sub_24ADBC970(uint64_t a1)
{
  v81 = a1;
  v2 = type metadata accessor for PersonModel(0);
  v86 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v89 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v88 = (&v79 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA96B8, &qword_24AE11FD0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v79 - v11;
  v82 = v1;
  v13 = 0;
  v14 = sub_24ADC39D0(&unk_285E2F608, v1, sub_24ADFB324);
  v15 = *(v14 + 16);
  if (v15)
  {
    v80 = 0;
    v87 = v6;
    v90[0] = MEMORY[0x277D84F90];
    v16 = v14;
    sub_24ADFB2E4(0, v15, 0);
    v17 = v16;
    v18 = 0;
    v84 = v16;
    v85 = v7;
    v19 = (v7 + 32);
    v20 = v90[0];
    v83 = v15;
    while (v18 < *(v17 + 16))
    {
      v21 = *(v17 + v18 + 32);
      MEMORY[0x28223BE20](v17);
      *(&v79 - 2) = &type metadata for PersonModel.Sort;
      *(&v79 - 1) = sub_24ADC3B80();
      swift_getKeyPath();
      if (v21 > 1)
      {
        swift_getKeyPath();
        if (v21 == 2)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9700, &qword_24AE0DCC8);
          sub_24AE09648();

          sub_24ADC3CF8();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA96C8, &qword_24AE0DC88);
          sub_24AE09648();

          sub_24ADC3BD4();
        }
      }

      else
      {
        swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9710, &qword_24AE0DCF8);
        sub_24AE09648();
      }

      sub_24AE086A8();
      v22 = *v19;
      v23 = v10;
      v24 = v10;
      v25 = v87;
      (*v19)(v12, v24, v87);

      v90[0] = v20;
      v27 = *(v20 + 16);
      v26 = *(v20 + 24);
      v13 = (v27 + 1);
      if (v27 >= v26 >> 1)
      {
        sub_24ADFB2E4((v26 > 1), v27 + 1, 1);
        v20 = v90[0];
      }

      ++v18;
      *(v20 + 16) = v13;
      v22(v20 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v27, v12, v25);
      v17 = v84;
      v10 = v23;
      if (v83 == v18)
      {

        v13 = v80;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_14:
  v28 = sub_24AE08288();
  v29 = v82;
  v30 = sub_24ADB9494(v28, v82);
  v31 = sub_24ADC3794(v30, v29);
  v87 = v13;

  v90[0] = v31;
  v90[5] = v20;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA96D8, &qword_24AE0DC90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA96E0, &qword_24AE0DC98);
  v32 = MEMORY[0x277D83970];
  sub_24AD9B548(&qword_27EFA96E8, &qword_27EFA96D8, &qword_24AE0DC90, MEMORY[0x277D83970]);
  sub_24AD9B548(&qword_27EFA96F0, &qword_27EFA96E0, &qword_24AE0DC98, v32);
  sub_24AD9B548(&qword_27EFA96F8, &qword_27EFA96B8, &qword_24AE11FD0, MEMORY[0x277CC8A08]);
  v33 = sub_24AE09128();

  v34 = sub_24AE08288();
  v13 = v87;
  v35 = sub_24ADC2824(v34, v29);

  v36 = v35[2];
  if (v36)
  {
    v37 = v13;
    v38 = sub_24ADBD670(v35[2], 0);
    v87 = sub_24ADC1F0C(v90, v38 + 32, v36, v35);
    v39 = v90[0];
    v13 = v90[4];
    swift_bridgeObjectRetain_n();
    sub_24ADC3C28(v39);
    if (v87 != v36)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      sub_24AE097E8();
      __break(1u);
      goto LABEL_56;
    }

    v13 = v37;
  }

  else
  {
    sub_24AE08288();
    v38 = MEMORY[0x277D84F90];
  }

  v90[0] = v38;
  sub_24ADBF8F4(v90, sub_24ADC201C, &type metadata for PersonModel.Section, sub_24ADC0A88, sub_24ADBFE00);
  if (!v13)
  {

    v40 = v90[0];
    v41 = *(v90[0] + 16);
    if (v41)
    {
      v42 = v90[0] + 32;
      v43 = (v41 - 1);
      v13 = MEMORY[0x277D84F90];
      v44 = 0;
      while (v44 < *(v40 + 16))
      {
        if (v35[2] && (v45 = *(v44 + v42), v46 = sub_24ADD6D1C(v45), (v47 & 1) != 0) && (v48 = *(v35[7] + 8 * v46), sub_24AE08288(), v48))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v87 = v43;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v13 = sub_24ADAB22C(0, v13[2] + 1, 1, v13);
          }

          v51 = v13[2];
          v50 = v13[3];
          v52 = v51 + 1;
          if (v51 >= v50 >> 1)
          {
            v85 = v51 + 1;
            v54 = sub_24ADAB22C((v50 > 1), v51 + 1, 1, v13);
            v52 = v85;
            v13 = v54;
          }

          v13[2] = v52;
          v53 = &v13[2 * v51];
          *(v53 + 32) = v45;
          v53[5] = v48;
          v43 = v87;
          if (v87 == v44)
          {
            goto LABEL_33;
          }

          v44 = (v44 + 1);
        }

        else
        {
          v44 = (v44 + 1);

          if (v41 == v44)
          {
            goto LABEL_33;
          }
        }
      }

LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v13 = MEMORY[0x277D84F90];
LABEL_33:

    v56 = v81;
    v55 = v82;
    sub_24AE08288();

    *v55 = v56;

    v55[1] = v13;
    sub_24AE08288();

    v55[2] = v33;
    v57 = sub_24ADC2030(MEMORY[0x277D84F90]);
    v58 = *(v33 + 16);
    if (!v58)
    {
LABEL_48:

      v77 = v82;

      *(v77 + 24) = v57;
      return result;
    }

    v59 = 0;
    v60 = v33 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
    while (1)
    {
      if (v59 >= *(v33 + 16))
      {
        goto LABEL_51;
      }

      v61 = *(v86 + 72);
      v62 = v88;
      sub_24ADC3D4C(v60 + v61 * v59, v88, type metadata accessor for PersonModel);
      v13 = *v62;
      v63 = v62[1];
      sub_24ADC3D4C(v62, v89, type metadata accessor for PersonModel);
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v90[0] = v57;
      v65 = sub_24ADD69C8(v13, v63);
      v67 = v57[2];
      v68 = (v66 & 1) == 0;
      v69 = __OFADD__(v67, v68);
      v70 = v67 + v68;
      if (v69)
      {
        goto LABEL_52;
      }

      v71 = v66;
      if (v57[3] < v70)
      {
        break;
      }

      if (v64)
      {
        goto LABEL_43;
      }

      v76 = v65;
      sub_24ADBF2F0();
      v65 = v76;
      v57 = v90[0];
      if (v71)
      {
LABEL_35:
        sub_24ADC3C94(v89, v57[7] + v65 * v61);
        goto LABEL_36;
      }

LABEL_44:
      v57[(v65 >> 6) + 8] |= 1 << v65;
      v73 = (v57[6] + 16 * v65);
      *v73 = v13;
      v73[1] = v63;
      sub_24ADC3C30(v89, v57[7] + v65 * v61);
      v74 = v57[2];
      v69 = __OFADD__(v74, 1);
      v75 = v74 + 1;
      if (v69)
      {
        goto LABEL_53;
      }

      v57[2] = v75;
      sub_24AE08288();
LABEL_36:
      ++v59;
      sub_24ADC3DB4(v88, type metadata accessor for PersonModel);
      if (v58 == v59)
      {
        goto LABEL_48;
      }
    }

    sub_24ADBD6E4(v70, v64);
    v65 = sub_24ADD69C8(v13, v63);
    if ((v71 & 1) != (v72 & 1))
    {
      goto LABEL_55;
    }

LABEL_43:
    v57 = v90[0];
    if (v71)
    {
      goto LABEL_35;
    }

    goto LABEL_44;
  }

LABEL_56:

  __break(1u);
  return result;
}

uint64_t sub_24ADBD338(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *(a2 + 56) & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    sub_24ADA16A8();
    sub_24AE08288();
    v17 = sub_24AE09468();
    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v19 = *(a1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFAA5D0, &unk_24AE0B940);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24AE0A280;
    *(inited + 32) = v6;
    *(inited + 40) = v5;
    *(inited + 48) = v7;
    *(inited + 56) = v19;
    *(inited + 64) = v8;
    v18 = inited;
    sub_24AE08288();
    sub_24AE08288();
    v10 = sub_24AE08288();
    result = sub_24ADFC258(v10);
    v12 = v18 + 40;
    v13 = -*(v18 + 16);
    v14 = -1;
    while (1)
    {
      if (v13 + v14 == -1)
      {
        v16 = v17;
        goto LABEL_11;
      }

      if (++v14 >= *(v18 + 16))
      {
        break;
      }

      v15 = v12 + 40;
      result = sub_24AE09468();
      v12 = v15;
      if (result)
      {
        v16 = 1;
LABEL_11:

        return v16 & 1;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = 1;
    return v16 & 1;
  }

  return result;
}

void *sub_24ADBD4E4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA97B0, &qword_24AE0DE78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_24ADBD574(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9058, &qword_24AE0B980);
  v4 = *(type metadata accessor for PersonModel(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_24ADBD670(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9720, &qword_24AE0DD30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_24ADBD6E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PersonModel(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9718, &qword_24AE0DD28);
  v40 = v4;
  result = sub_24AE09618();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
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
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_24ADC3C30(v28, v41);
      }

      else
      {
        sub_24ADC3D4C(v28, v41, type metadata accessor for PersonModel);
        sub_24AE08288();
      }

      sub_24AE09838();
      v42 = 0x3A3156444953;
      v43 = 0xE600000000000000;
      MEMORY[0x24C230FB0](v25, v26);
      sub_24AE09048();

      result = sub_24AE09868();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_24ADC3C30(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_24ADBDA64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA97E8, &qword_24AE0DEA8);
  v30 = v4;
  result = sub_24AE09618();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 56) + 8 * v19);
      v31 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v30 & 1) == 0)
      {
        sub_24AE08288();
        sub_24AE08288();
      }

      sub_24AE09838();
      sub_24AE09858();
      if (v21)
      {
        sub_24AE08288();
        sub_24AE09048();
      }

      result = sub_24AE09868();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v31;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

uint64_t sub_24ADBDD3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA97D8, &qword_24AE0DE98);
  v40 = v4;
  result = sub_24AE09618();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + (v21 << 7);
      if (v40)
      {
        v50 = *(v25 + 8);
        v51 = *(v25 + 9);
        v41 = *(v25 + 16);
        v42 = *(v25 + 32);
        v43 = *(v25 + 48);
        v44 = *(v25 + 64);
        v45 = *(v25 + 80);
        v46 = *(v25 + 96);
        v48 = *(v25 + 112);
        v49 = *v25;
        v47 = *(v25 + 120);
      }

      else
      {
        v27 = *(v25 + 32);
        v26 = *(v25 + 48);
        v28 = *v25;
        v54 = *(v25 + 16);
        v55 = v27;
        v53 = v28;
        v29 = *(v25 + 112);
        v31 = *(v25 + 64);
        v30 = *(v25 + 80);
        v59 = *(v25 + 96);
        v60 = v29;
        v57 = v31;
        v58 = v30;
        v56 = v26;
        v50 = BYTE8(v53);
        v51 = BYTE9(v53);
        v48 = v29;
        v49 = v53;
        v47 = *(&v29 + 1);
        v45 = v30;
        v46 = v59;
        v43 = v26;
        v44 = v31;
        v41 = v54;
        v42 = v27;
        sub_24AE08288();
        sub_24ADAE7A8(&v53, v52);
      }

      sub_24AE09838();
      v52[0] = 0x3A3156444953;
      v52[1] = 0xE600000000000000;
      MEMORY[0x24C230FB0](v23, v24);
      sub_24AE09048();

      result = sub_24AE09868();
      v32 = -1 << *(v7 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + (v15 << 7);
      *v17 = v49;
      *(v17 + 8) = v50;
      *(v17 + 9) = v51;
      *(v17 + 16) = v41;
      *(v17 + 32) = v42;
      *(v17 + 48) = v43;
      *(v17 + 64) = v44;
      *(v17 + 80) = v45;
      *(v17 + 96) = v46;
      *(v17 + 112) = v48;
      *(v17 + 120) = v47;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_24ADBE0E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24AE089B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA97C8, &qword_24AE0DE90);
  v39 = v4;
  result = sub_24AE09618();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
        sub_24AE08288();
      }

      sub_24ADC4058(&qword_27EFA97D0, MEMORY[0x277D08FF0], MEMORY[0x277D08FF8]);
      result = sub_24AE08EA8();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_24ADBE4C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA97A8, &qword_24AE0DE70);
  v43 = v4;
  result = sub_24AE09618();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 184 * v21;
      if (v43)
      {
        v47 = *v25;
        v48 = *(v25 + 16);
        v44 = *(v25 + 8);
        v45 = *(v25 + 24);
        v52 = *(v25 + 32);
        v53 = *(v25 + 48);
        v49 = *(v25 + 72);
        v46 = *(v25 + 80);
        v58 = *(v25 + 104);
        v56 = *(v25 + 88);
        v54 = *(v25 + 128);
        v55 = *(v25 + 120);
        v50 = *(v25 + 136);
        v51 = *(v25 + 64);
        v57 = *(v25 + 144);
        v59 = *(v25 + 145);
        v60 = *(v25 + 152);
        v61 = *(v25 + 160);
        v62 = *(v25 + 176);
        v63 = *(v25 + 177);
      }

      else
      {
        v27 = *(v25 + 32);
        v26 = *(v25 + 48);
        v28 = *v25;
        v66 = *(v25 + 16);
        v67 = v27;
        v65 = v28;
        v29 = *(v25 + 112);
        v31 = *(v25 + 64);
        v30 = *(v25 + 80);
        *&v70[16] = *(v25 + 96);
        *&v70[32] = v29;
        v69 = v31;
        *v70 = v30;
        v33 = *(v25 + 144);
        v32 = *(v25 + 160);
        v34 = *(v25 + 128);
        v74 = *(v25 + 176);
        v72 = v33;
        v73 = v32;
        v71 = v34;
        v68 = v26;
        v63 = HIBYTE(v74);
        v62 = v74;
        v61 = v32;
        v60 = *(&v33 + 1);
        v59 = BYTE1(v33);
        v57 = v33;
        v58 = *&v70[24];
        v56 = *&v70[8];
        v54 = v34;
        v55 = *&v70[40];
        v52 = v67;
        v53 = v26;
        v50 = *(&v34 + 1);
        v51 = v31;
        v46 = v70[0];
        v48 = v66;
        v49 = *(&v31 + 1);
        v44 = *(&v65 + 1);
        v47 = v65;
        v45 = *(&v66 + 1);
        sub_24AE08288();
        sub_24ADAF1D4(&v65, v64);
      }

      sub_24AE09838();
      v64[0] = 0x3A315644494142;
      v64[1] = 0xE700000000000000;
      MEMORY[0x24C230FB0](v23, v24);
      sub_24AE09048();

      result = sub_24AE09868();
      v35 = -1 << *(v7 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v14 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v14 + 8 * v37);
          if (v41 != -1)
          {
            v15 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v36) & ~*(v14 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 184 * v15;
      *v17 = v47;
      *(v17 + 8) = v44;
      *(v17 + 16) = v48;
      *(v17 + 24) = v45;
      *(v17 + 32) = v52;
      *(v17 + 48) = v53;
      *(v17 + 64) = v51;
      *(v17 + 72) = v49;
      *(v17 + 80) = v46;
      *(v17 + 104) = v58;
      *(v17 + 88) = v56;
      *(v17 + 120) = v55;
      *(v17 + 128) = v54;
      *(v17 + 136) = v50;
      *(v17 + 144) = v57;
      *(v17 + 145) = v59;
      *(v17 + 152) = v60;
      *(v17 + 160) = v61;
      *(v17 + 176) = v62;
      *(v17 + 177) = v63;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v2;
    if (v42 >= 64)
    {
      bzero((v5 + 64), ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_24ADBE980(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA97B8, &qword_24AE0DE80);
  v41 = v4;
  result = sub_24AE09618();
  v7 = result;
  if (*(v5 + 16))
  {
    v39 = v2;
    v40 = v5;
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
    while (1)
    {
      if (!v12)
      {
        v18 = v8;
        while (1)
        {
          v8 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_49;
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

        if ((v41 & 1) == 0)
        {

          v3 = v39;
          goto LABEL_47;
        }

        v38 = 1 << *(v5 + 32);
        v3 = v39;
        if (v38 >= 64)
        {
          bzero(v9, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v38;
        }

        *(v5 + 16) = 0;
        goto LABEL_46;
      }

      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v21 + 8 * v20);
      if ((v41 & 1) == 0)
      {
        sub_24ADC3E34(*v22, *(v22 + 8), *(v22 + 16));
        sub_24AE08288();
      }

      sub_24AE09838();
      v27 = v23 >> 62;
      if ((v23 >> 62) > 1)
      {
        break;
      }

      if (!v27)
      {
        v28 = 1;
        goto LABEL_22;
      }

      MEMORY[0x24C231780](2);
      MEMORY[0x24C231780](v23 & 1);
      sub_24AE09048();
LABEL_25:
      result = sub_24AE09868();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_49:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 24 * v15);
      *v16 = v23;
      v16[1] = v24;
      v16[2] = v25;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
      v5 = v40;
    }

    if (v27 == 2)
    {
      v28 = 3;
LABEL_22:
      MEMORY[0x24C231780](v28);
      v29 = v23 & 1;
    }

    else if (v23 == 0xC000000000000000 && (v25 | v24) == 0)
    {
      v29 = 0;
    }

    else
    {
      v29 = 4;
    }

    MEMORY[0x24C231780](v29);
    goto LABEL_25;
  }

LABEL_46:

LABEL_47:
  *v3 = v7;
  return result;
}

uint64_t sub_24ADBECCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9728, &qword_24AE0DD38);
  v30 = v4;
  result = sub_24AE09618();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        sub_24AE08288();
      }

      sub_24AE09838();
      MEMORY[0x24C231780](v20);
      result = sub_24AE09868();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24ADBEF5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24ADD69C8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_24ADBF2F0();
      goto LABEL_7;
    }

    sub_24ADBD6E4(v15, a4 & 1);
    v22 = sub_24ADD69C8(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_24AE097E8();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for PersonModel(0) - 8) + 72) * v12;

    return sub_24ADC3C94(a1, v20);
  }

LABEL_13:
  sub_24ADBF258(v12, a2, a3, a1, v18);

  return sub_24AE08288();
}

uint64_t sub_24ADBF0C0(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24ADD69C8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_24ADBDD3C(v16, a4 & 1);
      v11 = sub_24ADD69C8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_24AE097E8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_24ADBF534();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + (v11 << 7);

    return sub_24ADC40A0(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + (v11 << 7));
  v26 = *a1;
  v27 = a1[1];
  v28 = a1[3];
  v25[2] = a1[2];
  v25[3] = v28;
  *v25 = v26;
  v25[1] = v27;
  v29 = a1[4];
  v30 = a1[5];
  v31 = a1[7];
  v25[6] = a1[6];
  v25[7] = v31;
  v25[4] = v29;
  v25[5] = v30;
  v32 = v21[2];
  v15 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v33;

  return sub_24AE08288();
}

uint64_t sub_24ADBF258(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for PersonModel(0);
  result = sub_24ADC3C30(a4, v9 + *(*(v10 - 8) + 72) * a1);
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

void *sub_24ADBF2F0()
{
  v1 = v0;
  v2 = type metadata accessor for PersonModel(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9718, &qword_24AE0DD28);
  v4 = *v0;
  v5 = sub_24AE09608();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_24ADC3D4C(*(v4 + 56) + v26, v30, type metadata accessor for PersonModel);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_24ADC3C30(v25, *(v27 + 56) + v26);
        result = sub_24AE08288();
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_24ADBF534()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA97D8, &qword_24AE0DE98);
  v2 = *v0;
  v3 = sub_24AE09608();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 7;
        v23 = *(v19 + v17 + 112);
        v25 = *(v19 + v17 + 64);
        v24 = *(v19 + v17 + 80);
        v44 = *(v19 + v17 + 96);
        v45 = v23;
        v42 = v25;
        v43 = v24;
        v27 = *(v19 + v17);
        v26 = *(v19 + v17 + 16);
        v28 = *(v19 + v17 + 48);
        v40 = *(v19 + v17 + 32);
        v41 = v28;
        v38 = v27;
        v39 = v26;
        v29 = (*(v4 + 48) + v18);
        *v29 = v22;
        v29[1] = v21;
        v30 = (*(v4 + 56) + v17);
        v31 = v38;
        v32 = v39;
        v33 = v41;
        v30[2] = v40;
        v30[3] = v33;
        *v30 = v31;
        v30[1] = v32;
        v34 = v42;
        v35 = v43;
        v36 = v45;
        v30[6] = v44;
        v30[7] = v36;
        v30[4] = v34;
        v30[5] = v35;
        sub_24AE08288();
        result = sub_24ADAE7A8(&v38, &v37);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_24ADBF6F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA97A8, &qword_24AE0DE70);
  v2 = *v0;
  v3 = sub_24AE09608();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_24ADAF1D4(&v43, v42))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 184;
      v21 = *(v2 + 56) + v16;
      v22 = *(v21 + 112);
      v24 = *(v21 + 64);
      v23 = *(v21 + 80);
      v49 = *(v21 + 96);
      v50 = v22;
      v47 = v24;
      v48 = v23;
      v26 = *(v21 + 144);
      v25 = *(v21 + 160);
      v27 = *(v21 + 128);
      v54 = *(v21 + 176);
      v52 = v26;
      v53 = v25;
      v51 = v27;
      v29 = *v21;
      v28 = *(v21 + 16);
      v30 = *(v21 + 48);
      v45 = *(v21 + 32);
      v46 = v30;
      v43 = v29;
      v44 = v28;
      v31 = (*(v4 + 48) + v17);
      *v31 = v20;
      v31[1] = v19;
      v32 = *(v4 + 56) + v16;
      v33 = v43;
      v34 = v44;
      v35 = v46;
      *(v32 + 32) = v45;
      *(v32 + 48) = v35;
      *v32 = v33;
      *(v32 + 16) = v34;
      v36 = v47;
      v37 = v48;
      v38 = v50;
      *(v32 + 96) = v49;
      *(v32 + 112) = v38;
      *(v32 + 64) = v36;
      *(v32 + 80) = v37;
      v39 = v51;
      v40 = v52;
      v41 = v53;
      *(v32 + 176) = v54;
      *(v32 + 144) = v40;
      *(v32 + 160) = v41;
      *(v32 + 128) = v39;
      sub_24AE08288();
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_24ADBF8F4(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_24ADBF990(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_24ADBF990(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_24AE09778();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      if (v7 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        v10 = sub_24AE09208();
        *(v10 + 16) = v7 / 2;
      }

      v12[0] = v10 + 32;
      v12[1] = v7 / 2;
      v11 = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

unint64_t sub_24ADBFAA0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v30 = *a4;
    v4 = (*a4 + 24 * a3);
    v5 = result - a3;
LABEL_5:
    v28 = v4;
    v29 = a3;
    v6 = (v30 + 24 * a3);
    v8 = *v6;
    v7 = v6[1];
    v9 = v6[2];
    v27 = v5;
    while (1)
    {
      v11 = *(v4 - 3);
      v10 = *(v4 - 2);
      v12 = *(v4 - 1);
      v13 = v8 >> 62;
      v31 = v7;
      v35 = v10;
      v32 = v12;
      if ((v8 >> 62) <= 1)
      {
        break;
      }

      if (v13 == 2)
      {
        if (v8)
        {
          v14 = 49;
        }

        else
        {
          v14 = 48;
        }

        v15 = 51;
LABEL_17:
        v33 = v15;
        sub_24ADC3E34(v11, v10, v12);
        MEMORY[0x24C230FB0](v14, 0xE100000000000000);
        goto LABEL_22;
      }

      if (v8 != 0xC000000000000000 || v9 | v7)
      {
        sub_24ADC3E34(v11, v10, v12);
        v17 = 52;
      }

      else
      {
        sub_24ADC3E34(v11, v10, v12);
        v17 = 48;
      }

LABEL_23:
      v18 = v11 >> 62;
      if ((v11 >> 62) <= 1)
      {
        if (!v18)
        {
          if (v11)
          {
            v19 = 49;
          }

          else
          {
            v19 = 48;
          }

          v20 = 49;
          goto LABEL_34;
        }

        if (v11)
        {
          v21 = 49;
        }

        else
        {
          v21 = 48;
        }

        v34 = 50;
        MEMORY[0x24C230FB0](v21, 0xE100000000000000);
        sub_24AE08288();
        MEMORY[0x24C230FB0](v35, v32);

LABEL_39:
        if (v17 == v34)
        {
          goto LABEL_51;
        }

        goto LABEL_52;
      }

      if (v18 == 2)
      {
        if (v11)
        {
          v19 = 49;
        }

        else
        {
          v19 = 48;
        }

        v20 = 51;
LABEL_34:
        v34 = v20;
        MEMORY[0x24C230FB0](v19, 0xE100000000000000);
        goto LABEL_39;
      }

      if (v32 | v35)
      {
        v22 = 0;
      }

      else
      {
        v22 = v11 == 0xC000000000000000;
      }

      if (v22)
      {
        v23 = 48;
      }

      else
      {
        v23 = 52;
      }

      if (v17 == v23)
      {
LABEL_51:

        sub_24ADC3E58(v11, v35, v32);
        result = sub_24ADC3E58(v8, v7, v9);
LABEL_4:
        a3 = v29 + 1;
        v4 = v28 + 3;
        v5 = v27 - 1;
        if (v29 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

LABEL_52:
      v24 = sub_24AE097C8();

      sub_24ADC3E58(v11, v35, v32);
      result = sub_24ADC3E58(v8, v31, v9);
      if ((v24 & 1) == 0)
      {
        goto LABEL_4;
      }

      if (!v30)
      {
        __break(1u);
        return result;
      }

      v8 = *v4;
      v7 = v4[1];
      v9 = v4[2];
      *v4 = *(v4 - 3);
      v4[2] = *(v4 - 1);
      *(v4 - 2) = v7;
      *(v4 - 1) = v9;
      *(v4 - 3) = v8;
      v4 -= 3;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    if (!v13)
    {
      if (v8)
      {
        v14 = 49;
      }

      else
      {
        v14 = 48;
      }

      v15 = 49;
      goto LABEL_17;
    }

    if (v8)
    {
      v16 = 49;
    }

    else
    {
      v16 = 48;
    }

    v33 = 50;
    sub_24ADC3E34(v11, v10, v12);
    sub_24ADC3E34(v8, v7, v9);
    MEMORY[0x24C230FB0](v16, 0xE100000000000000);
    sub_24AE08288();
    MEMORY[0x24C230FB0](v7, v9);

LABEL_22:
    v17 = v33;
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_24ADBFE00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = (*a4 + a3);
    v8 = result - a3;
LABEL_6:
    v9 = *(v6 + v4);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      if (v9 == *(v11 - 1))
      {
        result = swift_bridgeObjectRelease_n();
LABEL_5:
        ++v4;
        ++v7;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v12 = sub_24AE097C8();
      result = swift_bridgeObjectRelease_n();
      if ((v12 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v9 = *v11;
      *v11 = *(v11 - 1);
      *--v11 = v9;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24ADBFEF8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = a3;
  v132 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_186:
    v4 = *v132;
    if (!*v132)
    {
      goto LABEL_224;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_188:
      v124 = *(v10 + 2);
      if (v124 >= 2)
      {
        while (*v7)
        {
          v125 = *&v10[16 * v124];
          v126 = *&v10[16 * v124 + 24];
          sub_24ADC10AC((*v7 + 24 * v125), (*v7 + 24 * *&v10[16 * v124 + 16]), *v7 + 24 * v126, v4);
          if (v6)
          {
          }

          if (v126 < v125)
          {
            goto LABEL_211;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_24ADC1B5C(v10);
          }

          if (v124 - 2 >= *(v10 + 2))
          {
            goto LABEL_212;
          }

          v127 = &v10[16 * v124];
          *v127 = v125;
          *(v127 + 1) = v126;
          result = sub_24ADC1AD0(v124 - 1);
          v124 = *(v10 + 2);
          if (v124 <= 1)
          {
          }
        }

        goto LABEL_222;
      }
    }

LABEL_218:
    result = sub_24ADC1B5C(v10);
    v10 = result;
    goto LABEL_188;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (2)
  {
    v11 = v9 + 1;
    v134 = v9;
    if (v9 + 1 >= v8)
    {
      goto LABEL_71;
    }

    v137 = v8;
    v129 = v10;
    v130 = v6;
    v12 = (*v7 + 24 * v11);
    v4 = *v12;
    v13 = v12[1];
    v14 = v12[2];
    v15 = (*v7 + 24 * v9);
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v148 = *v7;
    sub_24ADC3E34(v4, v13, v14);
    sub_24ADC3E34(v16, v17, v18);
    v19 = ItemModel.Section.sortOrder.getter();
    v21 = v20;
    if (v19 == ItemModel.Section.sortOrder.getter() && v21 == v22)
    {
      v141 = 0;
    }

    else
    {
      v141 = sub_24AE097C8();
    }

    sub_24ADC3E58(v16, v17, v18);
    result = sub_24ADC3E58(v4, v13, v14);
    v23 = 0;
    v7 = a3;
    v24 = v134 + 2;
    v6 = (v148 + 24 * v134 + 32);
    v25 = 24 * v134;
    do
    {
      v11 = v24;
      v10 = v23;
      v28 = v25;
      if (v24 >= v137)
      {
        break;
      }

      v139 = v24;
      v30 = v6[3];
      v29 = v6[4];
      v32 = *(v6 - 1);
      v31 = *v6;
      v33 = v6[1];
      v34 = v6[2];
      v35 = v34 >> 62;
      v144 = v30;
      *&v146 = v33;
      *(&v146 + 1) = *v6;
      if ((v34 >> 62) <= 1)
      {
        if (!v35)
        {
          if (v34)
          {
            v36 = 49;
          }

          else
          {
            v36 = 48;
          }

          v37 = 49;
          goto LABEL_24;
        }

        if (v34)
        {
          v38 = 49;
        }

        else
        {
          v38 = 48;
        }

        v149 = 50;
        sub_24ADC3E34(v32, v31, v33);
        sub_24ADC3E34(v34, v30, v29);
        MEMORY[0x24C230FB0](v38, 0xE100000000000000);
        sub_24AE08288();
        v7 = a3;
        MEMORY[0x24C230FB0](v30, v29);

LABEL_29:
        v39 = v149;
        v4 = 0xE100000000000000;
        goto LABEL_30;
      }

      if (v35 == 2)
      {
        if (v34)
        {
          v36 = 49;
        }

        else
        {
          v36 = 48;
        }

        v37 = 51;
LABEL_24:
        v149 = v37;
        sub_24ADC3E34(v32, v31, v33);
        MEMORY[0x24C230FB0](v36, 0xE100000000000000);
        goto LABEL_29;
      }

      if (v34 == 0xC000000000000000 && (v29 | v30) == 0)
      {
        sub_24ADC3E34(v32, v31, v33);
        v4 = 0xE100000000000000;
        v39 = 48;
      }

      else
      {
        sub_24ADC3E34(v32, v31, v33);
        v4 = 0xE100000000000000;
        v39 = 52;
      }

LABEL_30:
      v40 = v32 >> 62;
      if ((v32 >> 62) <= 1)
      {
        if (!v40)
        {
          if (v32)
          {
            v41 = 49;
          }

          else
          {
            v41 = 48;
          }

          v42 = 49;
          goto LABEL_41;
        }

        if (v32)
        {
          v44 = 49;
        }

        else
        {
          v44 = 48;
        }

        v150 = 50;
        MEMORY[0x24C230FB0](v44, 0xE100000000000000);
        sub_24AE08288();
        MEMORY[0x24C230FB0](*(&v146 + 1), v146);
        v7 = a3;

LABEL_51:
        if (v39 == v150)
        {
          goto LABEL_60;
        }

        goto LABEL_10;
      }

      if (v40 == 2)
      {
        if (v32)
        {
          v41 = 49;
        }

        else
        {
          v41 = 48;
        }

        v42 = 51;
LABEL_41:
        v150 = v42;
        MEMORY[0x24C230FB0](v41, 0xE100000000000000);
        goto LABEL_51;
      }

      if (v146 == 0 && v32 == 0xC000000000000000)
      {
        v46 = 48;
      }

      else
      {
        v46 = 52;
      }

      if (v39 == v46)
      {
LABEL_60:
        v26 = 0;
        goto LABEL_11;
      }

LABEL_10:
      v26 = sub_24AE097C8();
LABEL_11:

      sub_24ADC3E58(v32, *(&v146 + 1), v146);
      result = sub_24ADC3E58(v34, v144, v29);
      v27 = v141 ^ v26;
      v11 = v139;
      v24 = v139 + 1;
      v6 += 3;
      v23 = v10 + 1;
      v25 = v28 + 24;
    }

    while ((v27 & 1) == 0);
    if (v141)
    {
      if (v11 < v134)
      {
        goto LABEL_215;
      }

      if (v134 < v11)
      {
        v47 = 0;
        v48 = 24 * v134;
        do
        {
          if ((v134 + v47) != &v10[v134 + 1])
          {
            v49 = *v7;
            if (!*v7)
            {
              goto LABEL_221;
            }

            v50 = v49 + v48;
            v51 = v49 + v28;
            v52 = *(v50 + 16);
            v53 = *v50;
            v54 = *(v51 + 40);
            *v50 = *(v51 + 24);
            *(v50 + 16) = v54;
            *(v51 + 24) = v53;
            *(v51 + 40) = v52;
          }

          --v10;
          ++v47;
          v28 -= 24;
          v48 += 24;
        }

        while (v47 + v134 < &v10[v134 + 2]);
      }
    }

    v10 = v129;
    v6 = v130;
LABEL_71:
    v55 = v7[1];
    if (v11 >= v55)
    {
      goto LABEL_135;
    }

    if (__OFSUB__(v11, v134))
    {
      goto LABEL_214;
    }

    if (v11 - v134 >= a4)
    {
LABEL_135:
      if (v11 < v134)
      {
        goto LABEL_213;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24ADAAEB4(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v4 = *(v10 + 2);
      v79 = *(v10 + 3);
      v80 = v4 + 1;
      if (v4 >= v79 >> 1)
      {
        result = sub_24ADAAEB4((v79 > 1), v4 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v80;
      v81 = &v10[16 * v4];
      *(v81 + 4) = v134;
      *(v81 + 5) = v11;
      v82 = *v132;
      if (!*v132)
      {
        goto LABEL_223;
      }

      v9 = v11;
      if (!v4)
      {
LABEL_3:
        v8 = v7[1];
        if (v9 >= v8)
        {
          goto LABEL_186;
        }

        continue;
      }

      while (1)
      {
        v83 = v80 - 1;
        if (v80 >= 4)
        {
          break;
        }

        if (v80 == 3)
        {
          v84 = *(v10 + 4);
          v85 = *(v10 + 5);
          v94 = __OFSUB__(v85, v84);
          v86 = v85 - v84;
          v87 = v94;
LABEL_155:
          if (v87)
          {
            goto LABEL_202;
          }

          v100 = &v10[16 * v80];
          v102 = *v100;
          v101 = *(v100 + 1);
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_205;
          }

          v106 = &v10[16 * v83 + 32];
          v108 = *v106;
          v107 = *(v106 + 1);
          v94 = __OFSUB__(v107, v108);
          v109 = v107 - v108;
          if (v94)
          {
            goto LABEL_208;
          }

          if (__OFADD__(v104, v109))
          {
            goto LABEL_209;
          }

          if (v104 + v109 >= v86)
          {
            if (v86 < v109)
            {
              v83 = v80 - 2;
            }

            goto LABEL_176;
          }

          goto LABEL_169;
        }

        v110 = &v10[16 * v80];
        v112 = *v110;
        v111 = *(v110 + 1);
        v94 = __OFSUB__(v111, v112);
        v104 = v111 - v112;
        v105 = v94;
LABEL_169:
        if (v105)
        {
          goto LABEL_204;
        }

        v113 = &v10[16 * v83];
        v115 = *(v113 + 4);
        v114 = *(v113 + 5);
        v94 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v94)
        {
          goto LABEL_207;
        }

        if (v116 < v104)
        {
          goto LABEL_3;
        }

LABEL_176:
        v4 = v83 - 1;
        if (v83 - 1 >= v80)
        {
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
          goto LABEL_217;
        }

        if (!*v7)
        {
          goto LABEL_220;
        }

        v121 = *&v10[16 * v4 + 32];
        v122 = *&v10[16 * v83 + 40];
        sub_24ADC10AC((*v7 + 24 * v121), (*v7 + 24 * *&v10[16 * v83 + 32]), *v7 + 24 * v122, v82);
        if (v6)
        {
        }

        if (v122 < v121)
        {
          goto LABEL_198;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_24ADC1B5C(v10);
        }

        if (v4 >= *(v10 + 2))
        {
          goto LABEL_199;
        }

        v123 = &v10[16 * v4];
        *(v123 + 4) = v121;
        *(v123 + 5) = v122;
        result = sub_24ADC1AD0(v83);
        v80 = *(v10 + 2);
        if (v80 <= 1)
        {
          goto LABEL_3;
        }
      }

      v88 = &v10[16 * v80 + 32];
      v89 = *(v88 - 64);
      v90 = *(v88 - 56);
      v94 = __OFSUB__(v90, v89);
      v91 = v90 - v89;
      if (v94)
      {
        goto LABEL_200;
      }

      v93 = *(v88 - 48);
      v92 = *(v88 - 40);
      v94 = __OFSUB__(v92, v93);
      v86 = v92 - v93;
      v87 = v94;
      if (v94)
      {
        goto LABEL_201;
      }

      v95 = &v10[16 * v80];
      v97 = *v95;
      v96 = *(v95 + 1);
      v94 = __OFSUB__(v96, v97);
      v98 = v96 - v97;
      if (v94)
      {
        goto LABEL_203;
      }

      v94 = __OFADD__(v86, v98);
      v99 = v86 + v98;
      if (v94)
      {
        goto LABEL_206;
      }

      if (v99 >= v91)
      {
        v117 = &v10[16 * v83 + 32];
        v119 = *v117;
        v118 = *(v117 + 1);
        v94 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v94)
        {
          goto LABEL_210;
        }

        if (v86 < v120)
        {
          v83 = v80 - 2;
        }

        goto LABEL_176;
      }

      goto LABEL_155;
    }

    break;
  }

  v56 = v134 + a4;
  if (__OFADD__(v134, a4))
  {
    goto LABEL_216;
  }

  if (v56 >= v55)
  {
    v56 = v7[1];
  }

  if (v56 < v134)
  {
LABEL_217:
    __break(1u);
    goto LABEL_218;
  }

  if (v11 == v56)
  {
    goto LABEL_135;
  }

  v131 = v6;
  v142 = *v7;
  v57 = (*v7 + 24 * v11);
  v58 = v134 - v11;
  v133 = v56;
  while (2)
  {
    v138 = v57;
    v140 = v11;
    v59 = (v142 + 24 * v11);
    v61 = *v59;
    v60 = v59[1];
    v62 = v59[2];
    v136 = v58;
LABEL_82:
    v64 = *(v57 - 3);
    v63 = *(v57 - 2);
    v65 = *(v57 - 1);
    v66 = v61 >> 62;
    v143 = v62;
    v145 = v60;
    *&v147 = v65;
    *(&v147 + 1) = v63;
    if ((v61 >> 62) > 1)
    {
      if (v66 == 2)
      {
        if (v61)
        {
          v67 = 49;
        }

        else
        {
          v67 = 48;
        }

        v68 = 51;
LABEL_93:
        v151 = v68;
        sub_24ADC3E34(v64, v63, v65);
        MEMORY[0x24C230FB0](v67, 0xE100000000000000);
        goto LABEL_98;
      }

      if (v61 != 0xC000000000000000 || v62 | v60)
      {
        sub_24ADC3E34(v64, v63, v65);
        v4 = 0xE100000000000000;
        v70 = 52;
      }

      else
      {
        sub_24ADC3E34(v64, v63, v65);
        v4 = 0xE100000000000000;
        v70 = 48;
      }
    }

    else
    {
      if (!v66)
      {
        if (v61)
        {
          v67 = 49;
        }

        else
        {
          v67 = 48;
        }

        v68 = 49;
        goto LABEL_93;
      }

      if (v61)
      {
        v69 = 49;
      }

      else
      {
        v69 = 48;
      }

      v151 = 50;
      sub_24ADC3E34(v64, v63, v65);
      sub_24ADC3E34(v61, v60, v62);
      MEMORY[0x24C230FB0](v69, 0xE100000000000000);
      sub_24AE08288();
      MEMORY[0x24C230FB0](v60, v62);

LABEL_98:
      v70 = v151;
      v4 = 0xE100000000000000;
    }

    v71 = v64 >> 62;
    if ((v64 >> 62) > 1)
    {
      if (v71 == 2)
      {
        if (v64)
        {
          v72 = 49;
        }

        else
        {
          v72 = 48;
        }

        v73 = 51;
LABEL_110:
        v152 = v73;
        MEMORY[0x24C230FB0](v72, 0xE100000000000000);
        goto LABEL_118;
      }

      if (v147 == 0 && v64 == 0xC000000000000000)
      {
        v76 = 48;
      }

      else
      {
        v76 = 52;
      }

      if (v70 == v76)
      {
LABEL_127:

        sub_24ADC3E58(v64, *(&v147 + 1), v147);
        sub_24ADC3E58(v61, v60, v143);
LABEL_80:
        v11 = v140 + 1;
        v57 = v138 + 3;
        v58 = v136 - 1;
        if (v140 + 1 == v133)
        {
          v11 = v133;
          v6 = v131;
          v7 = a3;
          goto LABEL_135;
        }

        continue;
      }
    }

    else
    {
      if (!v71)
      {
        if (v64)
        {
          v72 = 49;
        }

        else
        {
          v72 = 48;
        }

        v73 = 49;
        goto LABEL_110;
      }

      if (v64)
      {
        v74 = 49;
      }

      else
      {
        v74 = 48;
      }

      v152 = 50;
      MEMORY[0x24C230FB0](v74, 0xE100000000000000);
      sub_24AE08288();
      MEMORY[0x24C230FB0](*(&v147 + 1), v147);

LABEL_118:
      if (v70 == v152)
      {
        goto LABEL_127;
      }
    }

    break;
  }

  v77 = sub_24AE097C8();

  sub_24ADC3E58(v64, *(&v147 + 1), v147);
  result = sub_24ADC3E58(v61, v145, v143);
  if ((v77 & 1) == 0)
  {
    goto LABEL_80;
  }

  if (v142)
  {
    v61 = *v57;
    v60 = v57[1];
    v62 = v57[2];
    *v57 = *(v57 - 3);
    v57[2] = *(v57 - 1);
    *(v57 - 2) = v60;
    *(v57 - 1) = v62;
    *(v57 - 3) = v61;
    v57 -= 3;
    if (__CFADD__(v58++, 1))
    {
      goto LABEL_80;
    }

    goto LABEL_82;
  }

  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
  return result;
}

uint64_t sub_24ADC0A88(uint64_t result, uint64_t a2, unsigned __int8 **a3, uint64_t a4)
{
  v6 = v4;
  v79 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_98:
    v5 = *v79;
    if (!*v79)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_100:
      v72 = *(v9 + 2);
      if (v72 >= 2)
      {
        while (*a3)
        {
          v73 = *&v9[16 * v72];
          v74 = *&v9[16 * v72 + 24];
          sub_24ADC1850(&(*a3)[v73], &(*a3)[*&v9[16 * v72 + 16]], &(*a3)[v74], v5);
          if (v6)
          {
          }

          if (v74 < v73)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_24ADC1B5C(v9);
          }

          if (v72 - 2 >= *(v9 + 2))
          {
            goto LABEL_124;
          }

          v75 = &v9[16 * v72];
          *v75 = v73;
          *(v75 + 1) = v74;
          result = sub_24ADC1AD0(v72 - 1);
          v72 = *(v9 + 2);
          if (v72 <= 1)
          {
          }
        }

        goto LABEL_134;
      }
    }

LABEL_130:
    result = sub_24ADC1B5C(v9);
    v9 = result;
    goto LABEL_100;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v5 = *a3;
      if ((*a3)[v8] == (*a3)[v10])
      {
        v11 = 0;
      }

      else
      {
        v11 = sub_24AE097C8();
      }

      result = swift_bridgeObjectRelease_n();
      v8 = v10 + 2;
      if (v10 + 2 < v7)
      {
        do
        {
          if (*(v5 + v8) == *(v5 + v8 - 1))
          {
            result = swift_bridgeObjectRelease_n();
            if (v11)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v12 = sub_24AE097C8();
            result = swift_bridgeObjectRelease_n();
            if ((v11 ^ v12))
            {
              goto LABEL_16;
            }
          }

          ++v8;
        }

        while (v7 != v8);
        v8 = v7;
      }

LABEL_16:
      if (v11)
      {
LABEL_17:
        if (v8 < v10)
        {
          goto LABEL_127;
        }

        if (v10 < v8)
        {
          v13 = v8 - 1;
          v14 = v10;
          do
          {
            if (v14 != v13)
            {
              v17 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v15 = v17[v14];
              v17[v14] = v17[v13];
              v17[v13] = v15;
            }
          }

          while (++v14 < v13--);
        }
      }
    }

    v18 = a3[1];
    if (v8 >= v18)
    {
      goto LABEL_47;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_126;
    }

    if (v8 - v10 >= a4)
    {
      goto LABEL_47;
    }

    if (__OFADD__(v10, a4))
    {
      goto LABEL_128;
    }

    v77 = v6;
    if (v10 + a4 >= v18)
    {
      v6 = a3[1];
    }

    else
    {
      v6 = v10 + a4;
    }

    if (v6 < v10)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v8 == v6)
    {
      goto LABEL_46;
    }

    v19 = *a3;
    v20 = &(*a3)[v8];
    v76 = v10;
    v21 = v10 - v8;
LABEL_38:
    v22 = v19[v8];
    v23 = v21;
    v5 = v20;
LABEL_39:
    if (v22 != *(v5 - 1))
    {
      break;
    }

    swift_bridgeObjectRelease_n();
LABEL_37:
    ++v8;
    ++v20;
    --v21;
    if (v8 != v6)
    {
      goto LABEL_38;
    }

    v8 = v6;
    v10 = v76;
LABEL_46:
    v6 = v77;
LABEL_47:
    if (v8 < v10)
    {
      goto LABEL_125;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24ADAAEB4(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v27 = *(v9 + 2);
    v26 = *(v9 + 3);
    v28 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      result = sub_24ADAAEB4((v26 > 1), v27 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v28;
    v29 = &v9[16 * v27];
    *(v29 + 4) = v10;
    *(v29 + 5) = v8;
    v30 = *v79;
    if (!*v79)
    {
      goto LABEL_135;
    }

    if (v27)
    {
      while (2)
      {
        v31 = v28 - 1;
        if (v28 >= 4)
        {
          v36 = &v9[16 * v28 + 32];
          v37 = *(v36 - 64);
          v38 = *(v36 - 56);
          v42 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          if (v42)
          {
            goto LABEL_112;
          }

          v41 = *(v36 - 48);
          v40 = *(v36 - 40);
          v42 = __OFSUB__(v40, v41);
          v34 = v40 - v41;
          v35 = v42;
          if (v42)
          {
            goto LABEL_113;
          }

          v43 = &v9[16 * v28];
          v45 = *v43;
          v44 = *(v43 + 1);
          v42 = __OFSUB__(v44, v45);
          v46 = v44 - v45;
          if (v42)
          {
            goto LABEL_115;
          }

          v42 = __OFADD__(v34, v46);
          v47 = v34 + v46;
          if (v42)
          {
            goto LABEL_118;
          }

          if (v47 >= v39)
          {
            v65 = &v9[16 * v31 + 32];
            v67 = *v65;
            v66 = *(v65 + 1);
            v42 = __OFSUB__(v66, v67);
            v68 = v66 - v67;
            if (v42)
            {
              goto LABEL_122;
            }

            if (v34 < v68)
            {
              v31 = v28 - 2;
            }
          }

          else
          {
LABEL_67:
            if (v35)
            {
              goto LABEL_114;
            }

            v48 = &v9[16 * v28];
            v50 = *v48;
            v49 = *(v48 + 1);
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_117;
            }

            v54 = &v9[16 * v31 + 32];
            v56 = *v54;
            v55 = *(v54 + 1);
            v42 = __OFSUB__(v55, v56);
            v57 = v55 - v56;
            if (v42)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v52, v57))
            {
              goto LABEL_121;
            }

            if (v52 + v57 < v34)
            {
              goto LABEL_81;
            }

            if (v34 < v57)
            {
              v31 = v28 - 2;
            }
          }
        }

        else
        {
          if (v28 == 3)
          {
            v32 = *(v9 + 4);
            v33 = *(v9 + 5);
            v42 = __OFSUB__(v33, v32);
            v34 = v33 - v32;
            v35 = v42;
            goto LABEL_67;
          }

          v58 = &v9[16 * v28];
          v60 = *v58;
          v59 = *(v58 + 1);
          v42 = __OFSUB__(v59, v60);
          v52 = v59 - v60;
          v53 = v42;
LABEL_81:
          if (v53)
          {
            goto LABEL_116;
          }

          v61 = &v9[16 * v31];
          v63 = *(v61 + 4);
          v62 = *(v61 + 5);
          v42 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v42)
          {
            goto LABEL_119;
          }

          if (v64 < v52)
          {
            break;
          }
        }

        v5 = v31 - 1;
        if (v31 - 1 >= v28)
        {
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v69 = *&v9[16 * v5 + 32];
        v70 = *&v9[16 * v31 + 40];
        sub_24ADC1850(&(*a3)[v69], &(*a3)[*&v9[16 * v31 + 32]], &(*a3)[v70], v30);
        if (v6)
        {
        }

        if (v70 < v69)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24ADC1B5C(v9);
        }

        if (v5 >= *(v9 + 2))
        {
          goto LABEL_111;
        }

        v71 = &v9[16 * v5];
        *(v71 + 4) = v69;
        *(v71 + 5) = v70;
        result = sub_24ADC1AD0(v31);
        v28 = *(v9 + 2);
        if (v28 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_98;
    }
  }

  v24 = sub_24AE097C8();
  result = swift_bridgeObjectRelease_n();
  if ((v24 & 1) == 0)
  {
    goto LABEL_37;
  }

  if (v19)
  {
    v22 = *v5;
    *v5 = *(v5 - 1);
    *--v5 = v22;
    if (__CFADD__(v23++, 1))
    {
      goto LABEL_37;
    }

    goto LABEL_39;
  }

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
  return result;
}

uint64_t sub_24ADC10AC(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src;
  v7 = __dst - __src;
  v8 = (__dst - __src) / 24;
  v9 = a3 - __dst;
  v10 = (a3 - __dst) / 24;
  if (v8 >= v10)
  {
    if (a4 != __dst || &__dst[24 * v10] <= a4)
    {
      v36 = a4;
      memmove(a4, __dst, 24 * v10);
      a4 = v36;
    }

    v76 = &a4[24 * v10];
    v11 = a4;
    if (v9 < 24 || v5 <= v6)
    {
      goto LABEL_133;
    }

    v66 = v6;
    v62 = a4;
LABEL_71:
    v61 = v5 - 3;
    v37 = v4 - 24;
    v38 = v76;
    while (1)
    {
      v40 = *(v38 - 3);
      v39 = *(v38 - 2);
      v38 -= 24;
      v42 = *(v5 - 3);
      v41 = *(v5 - 2);
      v43 = *(v5 - 1);
      v44 = v40 >> 62;
      *(&v68 + 1) = v41;
      v71 = v37;
      v64 = *(v38 + 2);
      *&v68 = v43;
      if ((v40 >> 62) <= 1)
      {
        break;
      }

      if (v44 == 2)
      {
        if (v40)
        {
          v45 = 49;
        }

        else
        {
          v45 = 48;
        }

        v46 = 51;
LABEL_84:
        v74 = v46;
        sub_24ADC3E34(v42, v41, v43);
        MEMORY[0x24C230FB0](v45, 0xE100000000000000);
        goto LABEL_89;
      }

      if (v40 == 0xC000000000000000 && (*(v38 + 2) | v39) == 0)
      {
        sub_24ADC3E34(v42, v41, v43);
        v48 = 48;
      }

      else
      {
        sub_24ADC3E34(v42, v41, v43);
        v48 = 52;
      }

LABEL_90:
      v49 = v42 >> 62;
      if ((v42 >> 62) <= 1)
      {
        if (!v49)
        {
          if (v42)
          {
            v50 = 49;
          }

          else
          {
            v50 = 48;
          }

          v51 = 49;
          goto LABEL_101;
        }

        if (v42)
        {
          v53 = 49;
        }

        else
        {
          v53 = 48;
        }

        v75 = 50;
        MEMORY[0x24C230FB0](v53, 0xE100000000000000);
        sub_24AE08288();
        MEMORY[0x24C230FB0](*(&v68 + 1), v68);
        v6 = v66;

LABEL_111:
        if (v48 != v75)
        {
          goto LABEL_121;
        }

        goto LABEL_120;
      }

      if (v49 == 2)
      {
        if (v42)
        {
          v50 = 49;
        }

        else
        {
          v50 = 48;
        }

        v51 = 51;
LABEL_101:
        v75 = v51;
        MEMORY[0x24C230FB0](v50, 0xE100000000000000);
        goto LABEL_111;
      }

      if (v68 == 0 && v42 == 0xC000000000000000)
      {
        v55 = 48;
      }

      else
      {
        v55 = 52;
      }

      if (v48 != v55)
      {
LABEL_121:
        v56 = sub_24AE097C8();
        goto LABEL_122;
      }

LABEL_120:
      v56 = 0;
LABEL_122:

      sub_24ADC3E58(v42, *(&v68 + 1), v68);
      sub_24ADC3E58(v40, v39, v64);
      if (v56)
      {
        v4 = v71;
        if ((v71 + 24) != v5)
        {
          v58 = *v61;
          *(v71 + 16) = *(v5 - 1);
          *v71 = v58;
        }

        if (v76 <= v11 || (v5 -= 3, v61 <= v6))
        {
          v5 = v61;
          goto LABEL_133;
        }

        goto LABEL_71;
      }

      if ((v71 + 24) != v76)
      {
        v57 = *v38;
        *(v71 + 16) = *(v38 + 2);
        *v71 = v57;
      }

      v37 = v71 - 24;
      v76 = v38;
      if (v38 <= v11)
      {
        v76 = v38;
        goto LABEL_133;
      }
    }

    if (!v44)
    {
      if (v40)
      {
        v45 = 49;
      }

      else
      {
        v45 = 48;
      }

      v46 = 49;
      goto LABEL_84;
    }

    if (v40)
    {
      v47 = 49;
    }

    else
    {
      v47 = 48;
    }

    v74 = 50;
    sub_24ADC3E34(v42, v41, v43);
    sub_24ADC3E34(v40, v39, v64);
    MEMORY[0x24C230FB0](v47, 0xE100000000000000);
    sub_24AE08288();
    v11 = v62;
    MEMORY[0x24C230FB0](v39, v64);

LABEL_89:
    v48 = v74;
    goto LABEL_90;
  }

  v11 = a4;
  if (a4 != __src || &__src[24 * v8] <= a4)
  {
    memmove(a4, __src, 24 * v8);
  }

  v76 = &v11[3 * v8];
  if (v7 >= 24 && v5 < v4)
  {
    v70 = v4;
    while (1)
    {
      v65 = v6;
      v13 = *v5;
      v12 = v5[1];
      v67 = v12;
      v69 = v5;
      v14 = v5[2];
      v15 = *v11;
      v16 = v11[1];
      v17 = v11[2];
      v18 = v13 >> 62;
      v63 = v14;
      if ((v13 >> 62) <= 1)
      {
        break;
      }

      if (v18 == 2)
      {
        if (v13)
        {
          v19 = 49;
        }

        else
        {
          v19 = 48;
        }

        v20 = 51;
LABEL_19:
        v72 = v20;
        sub_24ADC3E34(v15, v16, v17);
        MEMORY[0x24C230FB0](v19, 0xE100000000000000);
        goto LABEL_24;
      }

      if (v13 == 0xC000000000000000 && (v14 | v12) == 0)
      {
        sub_24ADC3E34(v15, v16, v17);
        v22 = 48;
      }

      else
      {
        sub_24ADC3E34(v15, v16, v17);
        v22 = 52;
      }

LABEL_25:
      v23 = v15 >> 62;
      v24 = v11;
      if ((v15 >> 62) <= 1)
      {
        if (!v23)
        {
          if (v15)
          {
            v25 = 49;
          }

          else
          {
            v25 = 48;
          }

          v26 = 49;
          goto LABEL_36;
        }

        if (v15)
        {
          v28 = 49;
        }

        else
        {
          v28 = 48;
        }

        v73 = 50;
        MEMORY[0x24C230FB0](v28, 0xE100000000000000);
        sub_24AE08288();
        MEMORY[0x24C230FB0](v16, v17);

LABEL_46:
        if (v22 == v73)
        {
          goto LABEL_55;
        }

        goto LABEL_56;
      }

      if (v23 == 2)
      {
        if (v15)
        {
          v25 = 49;
        }

        else
        {
          v25 = 48;
        }

        v26 = 51;
LABEL_36:
        v73 = v26;
        MEMORY[0x24C230FB0](v25, 0xE100000000000000);
        goto LABEL_46;
      }

      if (v17 | v16)
      {
        v29 = 0;
      }

      else
      {
        v29 = v15 == 0xC000000000000000;
      }

      if (v29)
      {
        v30 = 48;
      }

      else
      {
        v30 = 52;
      }

      if (v22 == v30)
      {
LABEL_55:

        sub_24ADC3E58(v15, v16, v17);
        sub_24ADC3E58(v13, v67, v63);
        v31 = v70;
LABEL_59:
        v33 = v24;
        v11 = v24 + 3;
        v34 = v65;
        v5 = v69;
        if (v65 == v24)
        {
          goto LABEL_61;
        }

LABEL_60:
        v35 = *v33;
        *(v34 + 2) = v33[2];
        *v34 = v35;
        goto LABEL_61;
      }

LABEL_56:
      v32 = sub_24AE097C8();

      sub_24ADC3E58(v15, v16, v17);
      sub_24ADC3E58(v13, v67, v63);
      v31 = v70;
      if ((v32 & 1) == 0)
      {
        goto LABEL_59;
      }

      v33 = v69;
      v5 = v69 + 3;
      v34 = v65;
      v11 = v24;
      if (v65 != v69)
      {
        goto LABEL_60;
      }

LABEL_61:
      v6 = v34 + 24;
      if (v11 >= v76 || v5 >= v31)
      {
        goto LABEL_131;
      }
    }

    if (!v18)
    {
      if (v13)
      {
        v19 = 49;
      }

      else
      {
        v19 = 48;
      }

      v20 = 49;
      goto LABEL_19;
    }

    if (v13)
    {
      v21 = 49;
    }

    else
    {
      v21 = 48;
    }

    v72 = 50;
    sub_24ADC3E34(v15, v16, v17);
    sub_24ADC3E34(v13, v12, v14);
    MEMORY[0x24C230FB0](v21, 0xE100000000000000);
    sub_24AE08288();
    MEMORY[0x24C230FB0](v12, v14);

LABEL_24:
    v22 = v72;
    goto LABEL_25;
  }

LABEL_131:
  v5 = v6;
LABEL_133:
  v59 = (v76 - v11) / 24;
  if (v5 != v11 || v5 >= &v11[3 * v59])
  {
    memmove(v5, v11, 24 * v59);
  }

  return 1;
}

uint64_t sub_24ADC1850(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst < a3 - __src)
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        if (*v6 == *v4)
        {
          swift_bridgeObjectRelease_n();
        }

        else
        {
          v11 = sub_24AE097C8();
          swift_bridgeObjectRelease_n();
          if (v11)
          {
            v12 = v6 + 1;
            v13 = v6;
            if (v7 >= v6 && v7 < v12)
            {
              goto LABEL_18;
            }

            goto LABEL_17;
          }
        }

        v14 = v4 + 1;
        v13 = v4;
        v12 = v6;
        if (v7 < v4)
        {
          ++v4;
        }

        else
        {
          ++v4;
          if (v7 < v14)
          {
            goto LABEL_18;
          }
        }

LABEL_17:
        *v7 = *v13;
LABEL_18:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_46;
    }

LABEL_45:
    if (v6 >= v10)
    {
      goto LABEL_46;
    }

    return 1;
  }

  if (a4 != __src || a4 >= a3)
  {
    memmove(a4, __src, a3 - __src);
  }

  v10 = &v4[v9];
  if (v9 < 1 || v6 <= v7)
  {
LABEL_44:
    if (v6 != v4)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  do
  {
    v15 = v6 - 1;
    --v5;
    v16 = v10;
    while (1)
    {
      v17 = *--v16;
      if (v17 == *v15)
      {
        swift_bridgeObjectRelease_n();
        goto LABEL_33;
      }

      v18 = sub_24AE097C8();
      swift_bridgeObjectRelease_n();
      if (v18)
      {
        break;
      }

LABEL_33:
      if ((v5 + 1) < v10 || v5 >= v10)
      {
        *v5 = *v16;
      }

      --v5;
      v10 = v16;
      if (v16 <= v4)
      {
        v10 = v16;
        goto LABEL_44;
      }
    }

    if (v5 + 1 < v6 || v5 >= v6)
    {
      *v5 = *v15;
    }

    if (v10 <= v4)
    {
      break;
    }

    --v6;
  }

  while (v15 > v7);
  v6 = v15;
  if (v15 == v4)
  {
    goto LABEL_45;
  }

LABEL_46:
  memmove(v6, v4, v10 - v4);
  return 1;
}

uint64_t sub_24ADC1AD0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24ADC1B5C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_24ADC1B70(void *result, uint64_t *a2, uint64_t a3, uint64_t a4)
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
      v18 = (*(a4 + 48) + 24 * (v17 | (v12 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      *v11 = *v18;
      v11[1] = v20;
      v11[2] = v21;
      if (v14 == v10)
      {
        sub_24ADC3E34(v19, v20, v21);
        goto LABEL_24;
      }

      v11 += 3;
      sub_24ADC3E34(v19, v20, v21);
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

uint64_t sub_24ADC1CD0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for PersonModel(0);
  v32 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  v15 = a4 + 8;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & a4[8];
  if (!a2)
  {
LABEL_18:
    v19 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v19 = 0;
    v29 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      a1 = a4;
      v25 = a4[7];
      v26 = *(v32 + 72);
      sub_24ADC3D4C(v25 + v26 * (v24 | (v19 << 6)), v11, type metadata accessor for PersonModel);
      sub_24ADC3C30(v11, v14);
      sub_24ADC3C30(v14, a2);
      if (v21 == v31)
      {
        a4 = a1;
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += v26;
      result = v21;
      v27 = __OFADD__(v21++, 1);
      a4 = a1;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = v15[v23];
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v28 = v19 + 1;
    }

    else
    {
      v28 = v20;
    }

    v19 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v16 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_24ADC1F0C(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
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
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
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

unint64_t sub_24ADC2030(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9730, &qword_24AE0DD40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v21 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9718, &qword_24AE0DD28);
    v7 = sub_24AE09628();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24AD92B7C(v9, v5, &qword_27EFA9730, &qword_24AE0DD40);
      result = sub_24ADD69C8(*v5, v5[1]);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v7[6] + 16 * result);
      v15 = v5[1];
      *v14 = *v5;
      v14[1] = v15;
      v16 = v7[7];
      v17 = type metadata accessor for PersonModel(0);
      result = sub_24ADC3C30(v5 + v8, v16 + *(*(v17 - 8) + 72) * v13);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_24ADC2204(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F98];
  v89 = MEMORY[0x277D84F98];
  v74 = *(a1 + 16);
  if (!v74)
  {
    return v2;
  }

  v3 = 0;
  v73 = a1 + 32;
  while (1)
  {
    v14 = (v73 + 184 * v3);
    v15 = v14[9];
    v85 = v14[8];
    v86 = v15;
    v87 = v14[10];
    v88 = *(v14 + 88);
    v16 = v14[5];
    v81 = v14[4];
    v82 = v16;
    v17 = v14[7];
    v83 = v14[6];
    v84 = v17;
    v18 = v14[1];
    v77 = *v14;
    v78 = v18;
    v19 = v14[3];
    v79 = v14[2];
    v80 = v19;
    v20 = *(a2 + 32);
    v21 = v83;
    v22 = BYTE1(v86);
    v90 = v3;
    if (v83)
    {
      v23 = *(&v82 + 1);
      v24 = *(&v83 + 1);
      v25 = v84;
      v26 = v85;
      if (BYTE1(v86))
      {
        if (!*(v20 + 16) || (v71 = *(&v82 + 1), v72 = *(&v83 + 1), sub_24AE09838(), MEMORY[0x24C231780](2), v27 = sub_24AE09868(), v23 = v71, v24 = v72, v28 = -1 << *(v20 + 32), v29 = v27 & ~v28, ((*(v20 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0))
        {
LABEL_12:
          v31 = v24;
          sub_24ADAF1D4(&v77, v76);
          sub_24AE08288();
          sub_24ADC4008(v23, v21, v31, v25, *(&v25 + 1), v26, *(&v26 + 1));

LABEL_26:

          v41 = 0;
          v42 = 0;
          v22 = 0xC000000000000001;
          goto LABEL_27;
        }

        v30 = ~v28;
        while (*(*(v20 + 48) + v29) != 2)
        {
          v29 = (v29 + 1) & v30;
          if (((*(v20 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v42 = *(&v26 + 1);
        v41 = v26;
        if (!*(&v26 + 1))
        {
          sub_24AE08288();
          v42 = *(&v25 + 1);
          v41 = v25;
        }

        sub_24ADAF1D4(&v77, v76);
        sub_24ADC4008(v71, v21, v72, v25, *(&v25 + 1), v26, *(&v26 + 1));

        v22 = 0x4000000000000001;
      }

      else
      {
        v36 = *(&v83 + 1);
        sub_24ADAF1D4(&v77, v76);
        sub_24AE08288();
        sub_24ADC4008(v23, v21, v36, v25, *(&v25 + 1), v26, *(&v26 + 1));

        if (!*(v20 + 16))
        {
          goto LABEL_26;
        }

        sub_24AE09838();
        MEMORY[0x24C231780](3);
        v37 = sub_24AE09868();
        v38 = -1 << *(v20 + 32);
        v39 = v37 & ~v38;
        if (((*(v20 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
        {
LABEL_24:

          goto LABEL_25;
        }

        v40 = ~v38;
        while (*(*(v20 + 48) + v39) != 3)
        {
          v39 = (v39 + 1) & v40;
          if (((*(v20 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        v41 = 0;
        v42 = 0;
        v22 = 0x8000000000000000;
      }
    }

    else
    {
      if (!*(v20 + 16) || (sub_24AE09838(), MEMORY[0x24C231780](1), v32 = sub_24AE09868(), v33 = -1 << *(v20 + 32), v34 = v32 & ~v33, ((*(v20 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0))
      {
LABEL_18:
        sub_24ADAF1D4(&v77, v76);
LABEL_25:
        v41 = 0;
        v42 = 0;
        v22 = 0xC000000000000001;
        goto LABEL_27;
      }

      v35 = ~v33;
      while (*(*(v20 + 48) + v34) != 1)
      {
        v34 = (v34 + 1) & v35;
        if (((*(v20 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      sub_24ADAF1D4(&v77, v76);
      v41 = 0;
      v42 = 0;
    }

LABEL_27:
    v44 = sub_24ADD6C14(v22, v41, v42);
    v45 = v2[2];
    v46 = (v43 & 1) == 0;
    v47 = v45 + v46;
    if (__OFADD__(v45, v46))
    {
      break;
    }

    v48 = v43;
    if (v2[3] < v47)
    {
      sub_24ADBE980(v47, 1);
      v2 = v89;
      v49 = sub_24ADD6C14(v22, v41, v42);
      if ((v48 & 1) != (v50 & 1))
      {
        goto LABEL_46;
      }

      v44 = v49;
    }

    if (v48)
    {
      sub_24ADC3E58(v22, v41, v42);
      v51 = v2[7];
      v52 = *(v51 + 8 * v44);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v51 + 8 * v44) = v52;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v52 = sub_24ADAAFB8(0, *(v52 + 2) + 1, 1, v52);
        *(v51 + 8 * v44) = v52;
      }

      v55 = *(v52 + 2);
      v54 = *(v52 + 3);
      if (v55 >= v54 >> 1)
      {
        v52 = sub_24ADAAFB8((v54 > 1), v55 + 1, 1, v52);
        *(v51 + 8 * v44) = v52;
      }

      *(v52 + 2) = v55 + 1;
      v4 = &v52[184 * v55];
      v5 = v77;
      v6 = v78;
      v7 = v80;
      *(v4 + 4) = v79;
      *(v4 + 5) = v7;
      *(v4 + 2) = v5;
      *(v4 + 3) = v6;
      v8 = v81;
      v9 = v82;
      v10 = v84;
      *(v4 + 8) = v83;
      *(v4 + 9) = v10;
      *(v4 + 6) = v8;
      *(v4 + 7) = v9;
      v11 = v85;
      v12 = v86;
      v13 = v87;
      *(v4 + 104) = v88;
      *(v4 + 11) = v12;
      *(v4 + 12) = v13;
      *(v4 + 10) = v11;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA90A0, &qword_24AE0B9C0);
      v56 = swift_allocObject();
      v57 = v85;
      v58 = v87;
      *(v56 + 176) = v86;
      *(v56 + 192) = v58;
      v59 = v81;
      v60 = v83;
      v61 = v84;
      *(v56 + 112) = v82;
      *(v56 + 128) = v60;
      *(v56 + 144) = v61;
      *(v56 + 160) = v57;
      v62 = v77;
      v63 = v78;
      *(v56 + 16) = xmmword_24AE0A280;
      *(v56 + 32) = v62;
      v64 = v79;
      v65 = v80;
      *(v56 + 48) = v63;
      *(v56 + 64) = v64;
      *(v56 + 208) = v88;
      *(v56 + 80) = v65;
      *(v56 + 96) = v59;
      v2[(v44 >> 6) + 8] |= 1 << v44;
      v66 = (v2[6] + 24 * v44);
      *v66 = v22;
      v66[1] = v41;
      v66[2] = v42;
      *(v2[7] + 8 * v44) = v56;
      v67 = v2[2];
      v68 = __OFADD__(v67, 1);
      v69 = v67 + 1;
      if (v68)
      {
        goto LABEL_45;
      }

      v2[2] = v69;
    }

    v3 = v90 + 1;
    if (v90 + 1 == v74)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_24AE097E8();
  __break(1u);
  return result;
}

void *sub_24ADC2824(uint64_t a1, uint64_t a2)
{
  v54 = type metadata accessor for PersonModel.Relationship.Follower(0);
  MEMORY[0x28223BE20](v54);
  v5 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = type metadata accessor for PersonModel(0);
  v6 = MEMORY[0x28223BE20](v55);
  v53 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v45[-v9];
  v11 = MEMORY[0x277D84F98];
  v57 = MEMORY[0x277D84F98];
  v52 = *(a1 + 16);
  if (!v52)
  {
    return v11;
  }

  v12 = 0;
  v47 = *(v8 + 80);
  v56 = *(v8 + 72);
  v49 = v10 + 8;
  v50 = (v47 + 32) & ~v47;
  v51 = a1 + v50;
  v46 = xmmword_24AE0A280;
  v48 = a2;
  while (1)
  {
    sub_24ADC3D4C(v51 + v56 * v12, v10, type metadata accessor for PersonModel);
    v13 = *(a2 + 32);
    v14 = &v10[*(v55 + 32)];
    v15 = type metadata accessor for PersonModel.Relationship(0);
    sub_24ADC3D4C(&v14[*(v15 + 20)], v5, type metadata accessor for PersonModel.Relationship.Follower);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_24AE08288();
      sub_24AD92BE4(v5, &qword_27EFA8878, &qword_24AE0E6E0);
      if (!*(v13 + 16))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v20 = v14[*(v15 + 24)];
      if (v20 == 2 || (v20 & 1) == 0)
      {
        sub_24AE08288();
        sub_24ADC3DB4(v5, type metadata accessor for PersonModel.Relationship.Follower);
LABEL_17:
        if (v49[*(v55 + 36)] & 1) == 0 && *(v13 + 16) && (sub_24AE09838(), MEMORY[0x24C231780](1), v21 = sub_24AE09868(), v22 = -1 << *(v13 + 32), v23 = v21 & ~v22, ((*(v13 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23)))
        {
          v24 = ~v22;
          while (*(*(v13 + 48) + v23) != 1)
          {
            v23 = (v23 + 1) & v24;
            if (((*(v13 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          v25 = 1;
        }

        else
        {
LABEL_23:

          v25 = 2;
        }

        goto LABEL_24;
      }

      sub_24AE08288();
      sub_24ADC3DB4(v5, type metadata accessor for PersonModel.Relationship.Follower);
      if (!*(v13 + 16))
      {
        goto LABEL_17;
      }
    }

    sub_24AE09838();
    MEMORY[0x24C231780](0);
    v16 = sub_24AE09868();
    v17 = -1 << *(v13 + 32);
    v18 = v16 & ~v17;
    if (((*(v13 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_17;
    }

    v19 = ~v17;
    while (*(*(v13 + 48) + v18))
    {
      v18 = (v18 + 1) & v19;
      if (((*(v13 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v25 = 0;
LABEL_24:
    v27 = sub_24ADD6D1C(v25);
    v28 = v11[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v26;
    if (v11[3] < v30)
    {
      sub_24ADBECCC(v30, 1);
      v11 = v57;
      v32 = sub_24ADD6D1C(v25);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_40;
      }

      v27 = v32;
    }

    if (v31)
    {
      v34 = v11[7];
      sub_24ADC3C30(v10, v53);
      v35 = *(v34 + 8 * v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v34 + 8 * v27) = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = sub_24ADAB360(0, v35[2] + 1, 1, v35);
        *(v34 + 8 * v27) = v35;
      }

      v38 = v35[2];
      v37 = v35[3];
      if (v38 >= v37 >> 1)
      {
        v35 = sub_24ADAB360((v37 > 1), v38 + 1, 1, v35);
        *(v34 + 8 * v27) = v35;
      }

      v35[2] = v38 + 1;
      sub_24ADC3C30(v53, v35 + v50 + v38 * v56);
      a2 = v48;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9058, &qword_24AE0B980);
      v39 = v50;
      v40 = swift_allocObject();
      *(v40 + 16) = v46;
      sub_24ADC3C30(v10, v40 + v39);
      v11[(v27 >> 6) + 8] |= 1 << v27;
      *(v11[6] + v27) = v25;
      *(v11[7] + 8 * v27) = v40;
      v41 = v11[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_39;
      }

      v11[2] = v43;
    }

    if (++v12 == v52)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_24AE097E8();
  __break(1u);
  return result;
}

unint64_t sub_24ADC2DB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA97D8, &qword_24AE0DE98);
  v3 = sub_24AE09628();

  v4 = *(a1 + 144);
  v37 = *(a1 + 128);
  v38 = v4;
  v39 = *(a1 + 160);
  v5 = *(a1 + 48);
  v31 = *(a1 + 32);
  v32 = v5;
  v6 = *(a1 + 80);
  v33 = *(a1 + 64);
  v34 = v6;
  v7 = *(a1 + 112);
  v35 = *(a1 + 96);
  v36 = v7;
  v9 = *(&v31 + 1);
  v8 = v31;
  sub_24AD92B7C(&v31, v30, &qword_27EFA97E0, &qword_24AE0DEA0);
  result = sub_24ADD69C8(v8, v9);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v12 = (a1 + 176);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v13 = (v3[6] + 16 * result);
    *v13 = v8;
    v13[1] = v9;
    v14 = (v3[7] + (result << 7));
    v15 = v32;
    v16 = v33;
    v17 = v35;
    v14[2] = v34;
    v14[3] = v17;
    *v14 = v15;
    v14[1] = v16;
    v18 = v36;
    v19 = v37;
    v20 = v39;
    v14[6] = v38;
    v14[7] = v20;
    v14[4] = v18;
    v14[5] = v19;
    v21 = v3[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      break;
    }

    v3[2] = v23;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v24 = v12 + 9;
    v25 = v12[7];
    v37 = v12[6];
    v38 = v25;
    v39 = v12[8];
    v26 = v12[1];
    v31 = *v12;
    v32 = v26;
    v27 = v12[3];
    v33 = v12[2];
    v34 = v27;
    v28 = v12[5];
    v35 = v12[4];
    v36 = v28;
    v9 = *(&v31 + 1);
    v8 = v31;
    sub_24AD92B7C(&v31, v30, &qword_27EFA97E0, &qword_24AE0DEA0);
    result = sub_24ADD69C8(v8, v9);
    v12 = v24;
    if (v29)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24ADC2F7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA97A8, &qword_24AE0DE70);
  v3 = sub_24AE09628();

  v4 = *(a1 + 208);
  v48 = *(a1 + 192);
  v49 = v4;
  v50 = *(a1 + 224);
  v5 = *(a1 + 144);
  v44 = *(a1 + 128);
  v45 = v5;
  v6 = *(a1 + 176);
  v46 = *(a1 + 160);
  v47 = v6;
  v7 = *(a1 + 80);
  v40 = *(a1 + 64);
  v41 = v7;
  v8 = *(a1 + 112);
  v42 = *(a1 + 96);
  v43 = v8;
  v9 = *(a1 + 48);
  v38 = *(a1 + 32);
  v39 = v9;
  v11 = *(&v38 + 1);
  v10 = v38;
  sub_24AD92B7C(&v38, v37, &qword_27EFA97C0, &qword_24AE0DE88);
  result = sub_24ADD6B54(v10, v11);
  if (v13)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v14 = (a1 + 232);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v15 = (v3[6] + 16 * result);
    *v15 = v10;
    v15[1] = v11;
    v16 = v3[7] + 184 * result;
    v17 = v39;
    v18 = v40;
    v19 = v42;
    *(v16 + 32) = v41;
    *(v16 + 48) = v19;
    *v16 = v17;
    *(v16 + 16) = v18;
    v20 = v43;
    v21 = v44;
    v22 = v46;
    *(v16 + 96) = v45;
    *(v16 + 112) = v22;
    *(v16 + 64) = v20;
    *(v16 + 80) = v21;
    v23 = v47;
    v24 = v48;
    v25 = v49;
    *(v16 + 176) = v50;
    *(v16 + 144) = v24;
    *(v16 + 160) = v25;
    *(v16 + 128) = v23;
    v26 = v3[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      break;
    }

    v3[2] = v28;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v29 = (v14 + 200);
    v30 = v14[11];
    v48 = v14[10];
    v49 = v30;
    v50 = *(v14 + 96);
    v31 = v14[7];
    v44 = v14[6];
    v45 = v31;
    v32 = v14[9];
    v46 = v14[8];
    v47 = v32;
    v33 = v14[3];
    v40 = v14[2];
    v41 = v33;
    v34 = v14[5];
    v42 = v14[4];
    v43 = v34;
    v35 = v14[1];
    v38 = *v14;
    v39 = v35;
    v11 = *(&v38 + 1);
    v10 = v38;
    sub_24AD92B7C(&v38, v37, &qword_27EFA97C0, &qword_24AE0DE88);
    result = sub_24ADD6B54(v10, v11);
    v14 = v29;
    if (v36)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24ADC3318(uint64_t a1)
{
  result = sub_24AE08E08();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24ADC3394(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = result + 32;
  v6 = MEMORY[0x277D84F90];
  v29 = result + 32;
  do
  {
    v7 = (v5 + 184 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v2)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      v9 = v7[9];
      v42 = v7[8];
      v43 = v9;
      v44 = v7[10];
      v45 = *(v7 + 88);
      v10 = v7[5];
      v38 = v7[4];
      v39 = v10;
      v11 = v7[7];
      v40 = v7[6];
      v41 = v11;
      v12 = v7[1];
      v34 = *v7;
      v35 = v12;
      v13 = v7[3];
      v36 = v7[2];
      v37 = v13;
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_22;
      }

      v14 = *(a2 + 56);
      v15 = *(a2 + 64);
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (!v16)
      {
        break;
      }

      v33 = v35;
      v31 = v14;
      v32 = v15;
      sub_24ADAF1D4(&v34, v30);
      sub_24ADA16A8();
      if (sub_24AE09468())
      {
        goto LABEL_13;
      }

      result = sub_24ADAFAD4(&v34);
      v7 = (v7 + 184);
      if (v4 == v2)
      {
        return v6;
      }
    }

    sub_24ADAF1D4(&v34, v30);
LABEL_13:
    result = swift_isUniquelyReferenced_nonNull_native();
    v46 = v6;
    if ((result & 1) == 0)
    {
      result = sub_24ADFB134(0, *(v6 + 16) + 1, 1);
      v6 = v46;
    }

    v18 = *(v6 + 16);
    v17 = *(v6 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_24ADFB134((v17 > 1), v18 + 1, 1);
      v6 = v46;
    }

    *(v6 + 16) = v18 + 1;
    v19 = v6 + 184 * v18;
    v20 = v34;
    v21 = v35;
    v22 = v37;
    *(v19 + 64) = v36;
    *(v19 + 80) = v22;
    *(v19 + 32) = v20;
    *(v19 + 48) = v21;
    v23 = v38;
    v24 = v39;
    v25 = v41;
    *(v19 + 128) = v40;
    *(v19 + 144) = v25;
    *(v19 + 96) = v23;
    *(v19 + 112) = v24;
    v26 = v42;
    v27 = v43;
    v28 = v44;
    *(v19 + 208) = v45;
    *(v19 + 176) = v27;
    *(v19 + 192) = v28;
    *(v19 + 160) = v26;
    v5 = v29;
  }

  while (v4 != v2);
  return v6;
}

uint64_t sub_24ADC35A4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = result + 32;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = (v5 + 184 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v2)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

      v9 = v7[9];
      v38 = v7[8];
      v39 = v9;
      v40 = v7[10];
      v41 = *(v7 + 88);
      v10 = v7[5];
      v34 = v7[4];
      v35 = v10;
      v11 = v7[7];
      v36 = v7[6];
      v37 = v11;
      v12 = v7[1];
      v30 = *v7;
      v31 = v12;
      v13 = v7[3];
      v32 = v7[2];
      v33 = v13;
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_27;
      }

      v14 = *(a2 + 64);
      v15 = *(a2 + 56) & 0xFFFFFFFFFFFFLL;
      if ((v14 & 0x2000000000000000) != 0)
      {
        v15 = HIBYTE(v14) & 0xF;
      }

      if (v15)
      {
        break;
      }

      v16 = *(a2 + 48);
      if (v16 <= 1)
      {
        if (!*(a2 + 48) && !v36)
        {
          break;
        }
      }

      else if (v16 == 3)
      {
        if (BYTE1(v39))
        {
          break;
        }
      }

      else if (v16 != 4 || (BYTE1(v39) & 1) == 0)
      {
        break;
      }

      v7 = (v7 + 184);
      if (v4 == v2)
      {
        return v6;
      }
    }

    sub_24ADAF1D4(&v30, v29);
    result = swift_isUniquelyReferenced_nonNull_native();
    v42 = v6;
    if ((result & 1) == 0)
    {
      result = sub_24ADFB134(0, *(v6 + 16) + 1, 1);
      v6 = v42;
    }

    v18 = *(v6 + 16);
    v17 = *(v6 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_24ADFB134((v17 > 1), v18 + 1, 1);
      v6 = v42;
    }

    *(v6 + 16) = v18 + 1;
    v19 = v6 + 184 * v18;
    v20 = v30;
    v21 = v31;
    v22 = v33;
    *(v19 + 64) = v32;
    *(v19 + 80) = v22;
    *(v19 + 32) = v20;
    *(v19 + 48) = v21;
    v23 = v34;
    v24 = v35;
    v25 = v37;
    *(v19 + 128) = v36;
    *(v19 + 144) = v25;
    *(v19 + 96) = v23;
    *(v19 + 112) = v24;
    v26 = v38;
    v27 = v39;
    v28 = v40;
    *(v19 + 208) = v41;
    *(v19 + 176) = v27;
    *(v19 + 192) = v28;
    *(v19 + 160) = v26;
  }

  while (v4 != v2);
  return v6;
}

uint64_t sub_24ADC3794(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for PersonModel(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = *(v8 + 72);
  v25 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v25;
  v14 = MEMORY[0x277D84F90];
  v26 = v7;
  do
  {
    sub_24ADC3D4C(v13, v10, type metadata accessor for PersonModel);
    v15 = a2[8];
    v16 = a2[7] & 0xFFFFFFFFFFFFLL;
    if ((v15 & 0x2000000000000000) != 0)
    {
      v16 = HIBYTE(v15) & 0xF;
    }

    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = a2[6];
      sub_24ADC3E24(v17);
    }

    v27 = v17;
    v18 = PersonModel.contains(tag:)(&v27);
    sub_24ADC3E14(v27);
    if (v18)
    {
      sub_24ADC3C30(v10, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24ADFB2A0(0, *(v14 + 16) + 1, 1);
        v14 = v28;
      }

      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_24ADFB2A0((v20 > 1), v21 + 1, 1);
        v14 = v28;
      }

      *(v14 + 16) = v21 + 1;
      v22 = v14 + v25 + v21 * v12;
      v7 = v26;
      sub_24ADC3C30(v26, v22);
    }

    else
    {
      sub_24ADC3DB4(v10, type metadata accessor for PersonModel);
    }

    v13 += v12;
    --v11;
  }

  while (v11);
  return v14;
}

uint64_t sub_24ADC39D0(uint64_t result, uint64_t a2, uint64_t (*a3)(BOOL, uint64_t, uint64_t))
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = 0;
    v6 = result + 32;
    v7 = MEMORY[0x277D84F90];
    while (v5 < v3)
    {
      v8 = v5;
      if (__OFADD__(v5++, 1))
      {
        goto LABEL_21;
      }

      v10 = *(a2 + 40);
      if (*(v10 + 16) && (v11 = *(v6 + v8), sub_24AE09838(), MEMORY[0x24C231780](v11), result = sub_24AE09868(), v12 = -1 << *(v10 + 32), v13 = result & ~v12, ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0))
      {
        v14 = ~v12;
        while (*(*(v10 + 48) + v13) != v11)
        {
          v13 = (v13 + 1) & v14;
          if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = a3(0, *(v7 + 16) + 1, 1);
        }

        v16 = *(v7 + 16);
        v15 = *(v7 + 24);
        if (v16 >= v15 >> 1)
        {
          result = a3(v15 > 1, v16 + 1, 1);
        }

        *(v7 + 16) = v16 + 1;
        *(v7 + v16 + 32) = v11;
        if (v5 == v3)
        {
          return v7;
        }
      }

      else
      {
LABEL_3:
        if (v5 == v3)
        {
          return v7;
        }
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_24ADC3B80()
{
  result = qword_27EFA96C0;
  if (!qword_27EFA96C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA96C0);
  }

  return result;
}

unint64_t sub_24ADC3BD4()
{
  result = qword_27EFA96D0;
  if (!qword_27EFA96D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA96D0);
  }

  return result;
}

uint64_t sub_24ADC3C30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADC3C94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_24ADC3CF8()
{
  result = qword_27EFA9708;
  if (!qword_27EFA9708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9708);
  }

  return result;
}

uint64_t sub_24ADC3D4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ADC3DB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24ADC3E14(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_24ADC3E24(unint64_t result)
{
  if (result >= 2)
  {
    return sub_24AE08288();
  }

  return result;
}

unint64_t sub_24ADC3E34(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >> 62 == 1)
  {
    return sub_24AE08288();
  }

  return result;
}

unint64_t sub_24ADC3E58(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >> 62 == 1)
  {
  }

  return result;
}

unint64_t sub_24ADC3EC4()
{
  result = qword_281519BA0;
  if (!qword_281519BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281519BA0);
  }

  return result;
}

unint64_t sub_24ADC3F18()
{
  result = qword_27EFA9760;
  if (!qword_27EFA9760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9760);
  }

  return result;
}

unint64_t sub_24ADC3F6C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result >> 1 != 0xFFFFFFFF)
  {
    sub_24ADC3E58(result, a2, a3);
  }

  return result;
}