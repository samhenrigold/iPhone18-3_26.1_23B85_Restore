uint64_t sub_1C1E0EEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1C1E5483C();
  v5[4] = sub_1C1E5482C();
  v7 = sub_1C1E5481C();

  return MEMORY[0x1EEE6DFA0](sub_1C1E0EF40, v7, v6);
}

uint64_t sub_1C1E0EF40()
{

  sub_1C1E52BAC();
  sub_1C1E215E8(v1, v2, 0);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C1E0EFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  (*(v14 + 16))(&v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v17, v15);
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = a2;
  v18[7] = a3;
  sub_1C1E527FC();
  return (*(v14 + 8))(a1, a4);
}

uint64_t sub_1C1E0F11C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1E10390(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1C1E0F210@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1E10390(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v4 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__isAnimatingFunction;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

unint64_t sub_1C1E0F2FC()
{
  result = qword_1EBF1D2A8;
  if (!qword_1EBF1D2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2A0, &qword_1C1E58810);
    sub_1C1E0F388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D2A8);
  }

  return result;
}

unint64_t sub_1C1E0F388()
{
  result = qword_1EBF1D2B0;
  if (!qword_1EBF1D2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2B8, &unk_1C1E5A330);
    sub_1C1E0F414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D2B0);
  }

  return result;
}

unint64_t sub_1C1E0F414()
{
  result = qword_1EBF1D2C0;
  if (!qword_1EBF1D2C0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2C8, &qword_1C1E58818);
    sub_1C1DD9040(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D2C0);
  }

  return result;
}

uint64_t sub_1C1E0F4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4UUIDVxRi_zRi0_zlyxIsegnr_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
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
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1C1E0F590(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1C1E0F5D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C1E0F654@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, char *a7@<X8>)
{
  v25[1] = a3;
  v26 = a2;
  v25[0] = a1;
  v27 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D368, &qword_1C1E5AA30);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v25 - v11;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v25 - v18;
  v20 = sub_1C1E527EC();
  v22 = *(v20 - 8);
  result = v20 - 8;
  if (*(v22 + 64) == v10)
  {
    (*(v9 + 16))(v12, v25[0], v8);
    v26(v12);
    (*(v9 + 8))(v12, v8);
    v23 = *(v13 + 16);
    v23(v19, v16, a5);
    v24 = *(v13 + 8);
    v24(v16, a5);
    v23(v27, v19, a5);
    return (v24)(v19, a5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1E0F8CC(uint64_t a1)
{
  v4 = *(sub_1C1E52BBC() - 8);
  v5 = (*(v4 + 80) + 200) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C1DE1518;

  return sub_1C1E0EEA8(a1, v6, v7, v1 + 48, v1 + v5);
}

uint64_t sub_1C1E0F9D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C748, &qword_1C1E56E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1E0FA44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1DE184C;

  return sub_1C1E06E2C(a1, v4);
}

unint64_t sub_1C1E0FAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D400;
  if (!qword_1EBF1D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D400);
  }

  return result;
}

unint64_t sub_1C1E0FB50()
{
  result = qword_1EBF1D408;
  if (!qword_1EBF1D408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D3F0, &qword_1C1E58AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D408);
  }

  return result;
}

uint64_t objectdestroy_32Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  sub_1C1DDEC6C(*(v0 + 72), *(v0 + 80));
  sub_1C1DDEC6C(*(v0 + 88), *(v0 + 96));

  return MEMORY[0x1EEE6BDD0](v0, 200, 7);
}

unint64_t sub_1C1E0FC80()
{
  result = qword_1EBF1D420;
  if (!qword_1EBF1D420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D418, &qword_1C1E5A8A0);
    sub_1C1DC1124(&qword_1EBF1D428, &qword_1EBF1D430, &qword_1C1E58AC8, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D420);
  }

  return result;
}

unint64_t sub_1C1E0FD50()
{
  result = qword_1EBF1D438;
  if (!qword_1EBF1D438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C778, &qword_1C1E56FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D438);
  }

  return result;
}

unint64_t sub_1C1E0FDCC()
{
  result = qword_1EBF1D448;
  if (!qword_1EBF1D448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D298, &qword_1C1E58808);
    sub_1C1E0FE50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D448);
  }

  return result;
}

unint64_t sub_1C1E0FE50()
{
  result = qword_1EBF1D450;
  if (!qword_1EBF1D450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D440, &unk_1C1E5A7D0);
    sub_1C1E0FF0C();
    sub_1C1E10390(&qword_1EBF1C690, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D450);
  }

  return result;
}

unint64_t sub_1C1E0FF0C()
{
  result = qword_1EBF1D458;
  if (!qword_1EBF1D458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D380, &unk_1C1E5A730);
    sub_1C1E0FFC4();
    sub_1C1DC1124(&qword_1EBF1CD40, &qword_1EBF1CD48, &qword_1C1E57818, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D458);
  }

  return result;
}

unint64_t sub_1C1E0FFC4()
{
  result = qword_1EBF1D460;
  if (!qword_1EBF1D460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D468, &qword_1C1E58B20);
    sub_1C1E10050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D460);
  }

  return result;
}

unint64_t sub_1C1E10050()
{
  result = qword_1EBF1D470;
  if (!qword_1EBF1D470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D478, &unk_1C1E5A7E0);
    sub_1C1E100DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D470);
  }

  return result;
}

unint64_t sub_1C1E100DC()
{
  result = qword_1EBF1D480;
  if (!qword_1EBF1D480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D488, &qword_1C1E58B28);
    sub_1C1E10168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D480);
  }

  return result;
}

unint64_t sub_1C1E10168()
{
  result = qword_1EBF1D490;
  if (!qword_1EBF1D490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D498, &unk_1C1E5A7F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D378, &qword_1C1E58A48);
    sub_1C1E52E7C();
    sub_1C1E102AC();
    sub_1C1E10390(&qword_1EBF1D4B8, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
    swift_getOpaqueTypeConformance2();
    sub_1C1DC1124(&qword_1EBF1D4C0, &qword_1EBF1D4C8, &qword_1C1E58B30, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D490);
  }

  return result;
}

unint64_t sub_1C1E102AC()
{
  result = qword_1EBF1D4A0;
  if (!qword_1EBF1D4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D378, &qword_1C1E58A48);
    sub_1C1DC1124(&qword_1EBF1D428, &qword_1EBF1D430, &qword_1C1E58AC8, MEMORY[0x1E697D680]);
    sub_1C1DC1124(&qword_1EBF1D4A8, &qword_1EBF1D4B0, &unk_1C1E5A800, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D4A0);
  }

  return result;
}

uint64_t sub_1C1E10390(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C1E103F0@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for Function(0) - 8);
  v5 = *(v1 + 32);
  v6 = v1 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  return sub_1C1E0E9FC(v5, v6, v3, a1);
}

uint64_t objectdestroyTm_2()
{

  if (*(v0 + 40))
  {
  }

  sub_1C1DDEC6C(*(v0 + 56), *(v0 + 64));
  sub_1C1DDEC6C(*(v0 + 72), *(v0 + 80));

  return MEMORY[0x1EEE6BDD0](v0, 184, 7);
}

unint64_t sub_1C1E105C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_1C1E5476C() != a1 || v9 != a2)
  {
    v10 = sub_1C1E54D2C();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1C1E546AC();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1C1E106B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D090, &qword_1C1E58158);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1E10720(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1C1E54A8C();
    v5 = v4;
    v6 = sub_1C1E54AFC();
    v8 = v7;
    v9 = MEMORY[0x1C6910670](v3, v5, v6, v7);
    sub_1C1E119F0(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1C1E119F0(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_1C1E54A6C();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1C1E117F0(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1C1E119F0(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_1C1E1083C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  if (qword_1EBF1C140 != -1)
  {
    swift_once();
  }

  v9 = sub_1C1E522AC();
  __swift_project_value_buffer(v9, qword_1EBF20D40);
  v10 = sub_1C1E5228C();
  v11 = sub_1C1E5491C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1C1DBF000, v10, v11, "Received Keyboard Press", v12, 2u);
    MEMORY[0x1C6911150](v12, -1, -1);
  }

  if (sub_1C1E53D5C())
  {
    v13 = sub_1C1E53D3C();

    v14 = v13 == 2;
  }

  else
  {
    v14 = 0;
  }

  if (sub_1C1E53D5C())
  {
    v15 = sub_1C1E53B5C();
  }

  else
  {
    v16 = sub_1C1E53B5C();
    v15 = v16;
  }

  sub_1C1DC733C(v16, v17, v18);
  v20 = sub_1C1E54A2C();
  v21 = v19;
  if (v5[3] == v20 && v5[4] == v19 || (sub_1C1E54D2C() & 1) != 0)
  {

    if (v14 && (v6 & 4) != 0)
    {
      sub_1C1E5432C();
      result = sub_1C1E5428C();
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v5[5] == v20 && v5[6] == v21 || (sub_1C1E54D2C() & 1) != 0)
  {

    if (v14 && (v6 & 4) != 0)
    {
      sub_1C1E5432C();
      result = sub_1C1E5422C();
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v20 == 40 && v21 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    if (!v14)
    {
      sub_1C1E5432C();
      result = sub_1C1E53E9C();
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v20 == 41 && v21 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    if (!v14)
    {
      sub_1C1E5432C();
      result = sub_1C1E53EAC();
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v20 == 47043 && v21 == 0xA200000000000000 || (sub_1C1E54D2C() & 1) != 0 || v20 == 8684002 && v21 == 0xA300000000000000 || (sub_1C1E54D2C() & 1) != 0 || v20 == 47 && v21 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    sub_1C1E5432C();
    result = sub_1C1E541EC();
    goto LABEL_27;
  }

  if (v20 == 8 && v21 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0 || v20 == 11050223 && v21 == 0xA300000000000000 || (sub_1C1E54D2C() & 1) != 0 || v20 == 127 && v21 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    sub_1C1E5432C();
    if (v14 && (v6 & 4) != 0)
    {
      result = sub_1C1E5405C();
    }

    else
    {
      result = sub_1C1E540DC();
    }

    goto LABEL_27;
  }

  if (v20 == 24 && v21 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0 || v20 == 61 && v21 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0 || v20 == 3 && v21 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0 || v20 == 13 && v21 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    sub_1C1E5432C();
    if (v14)
    {
      result = sub_1C1E540AC();
    }

    else
    {
      result = sub_1C1E541FC();
    }

    goto LABEL_27;
  }

  if (v20 == 99 && v21 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0 || v20 == 67 && v21 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    v28 = sub_1C1E53D2C();
    sub_1C1E5432C();
    if (v28 == 1)
    {
LABEL_82:
      result = sub_1C1E541AC();
      goto LABEL_27;
    }

    if (v15)
    {
LABEL_84:
      result = sub_1C1E5409C();
      goto LABEL_27;
    }

LABEL_92:
    result = sub_1C1E542AC();
    goto LABEL_27;
  }

  if (v5[7] == v20 && v5[8] == v21 || (sub_1C1E54D2C() & 1) != 0 || v20 == 12164335 && v21 == 0xA300000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    sub_1C1E5432C();
    if (v15)
    {
      goto LABEL_84;
    }

    goto LABEL_92;
  }

  if (v20 == 94 && v21 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0 || v20 == 34507 && v21 == 0xA200000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    v29 = sub_1C1E53D2C();
    sub_1C1E5432C();
    if (v29 == 1)
    {
      result = sub_1C1E5403C();
    }

    else
    {
      result = sub_1C1E540BC();
    }

    goto LABEL_27;
  }

  if (v20 == 43 && v21 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    sub_1C1E5432C();
    result = sub_1C1E53FDC();
    goto LABEL_27;
  }

  if (v20 == 9666786 && v21 == 0xA300000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    sub_1C1E5432C();
    result = sub_1C1E5420C();
    goto LABEL_27;
  }

  if (v20 == 45 && v21 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    sub_1C1E5432C();
    result = sub_1C1E542EC();
    goto LABEL_27;
  }

  if (v20 == 42 && v21 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    sub_1C1E5432C();
    result = sub_1C1E542DC();
    goto LABEL_27;
  }

  if (v20 == 37 && v21 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0 || v20 == 43737 && v21 == 0xA200000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    v30 = sub_1C1E53D2C();
    sub_1C1E5432C();
    if (v30 == 1)
    {
      result = sub_1C1E53FFC();
    }

    else
    {
      result = sub_1C1E5427C();
    }

    goto LABEL_27;
  }

  if (v20 == 112 && v21 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0 || v20 == 32975 && v21 == 0xA200000000000000 || (sub_1C1E54D2C() & 1) != 0 || v20 == 43480 && v21 == 0xA200000000000000 || (sub_1C1E54D2C() & 1) != 0 || v20 == 44504 && v21 == 0xA200000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    if (sub_1C1E53D2C() != 1)
    {
      sub_1C1E5432C();
      result = sub_1C1E53FCC();
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v20 == 10127586 && v21 == 0xA300000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    sub_1C1E5432C();
    result = sub_1C1E53DEC();
    goto LABEL_27;
  }

  if (v20 == 33 && v21 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    if (sub_1C1E53D2C() != 1)
    {
      sub_1C1E5432C();
      result = sub_1C1E5430C();
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v20 == 126 && v21 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    if (sub_1C1E53D2C() == 1)
    {
      sub_1C1E5432C();
      result = sub_1C1E5402C();
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v20 == 124 && v21 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    if (sub_1C1E53D2C() == 1)
    {
      sub_1C1E5432C();
      result = sub_1C1E53FBC();
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v20 == 38 && v21 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    if (sub_1C1E53D2C() == 1)
    {
      sub_1C1E5432C();
      result = sub_1C1E53FEC();
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v20 == 101 && v21 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    if (v14 && (v6 & 4) != 0)
    {
      sub_1C1E5432C();
      result = sub_1C1E5408C();
      goto LABEL_27;
    }

    v32 = sub_1C1E53D2C();
    sub_1C1E5432C();
    if (v32 != 1)
    {
      result = sub_1C1E53EEC();
      goto LABEL_27;
    }

LABEL_176:
    result = sub_1C1E541CC();
    goto LABEL_27;
  }

  if (v20 == 69 && v21 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    v31 = sub_1C1E53D2C();
    sub_1C1E5432C();
    if (v31 != 1)
    {
      result = sub_1C1E53F9C();
      goto LABEL_27;
    }

    goto LABEL_176;
  }

  if (v20 == 60 && v21 == 0xE100000000000000 || (sub_1C1E54D2C() & 1) != 0)
  {

    if (sub_1C1E53D2C() == 1)
    {
      sub_1C1E5432C();
      result = sub_1C1E5431C();
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v20 == 62 && v21 == 0xE100000000000000)
  {

    goto LABEL_187;
  }

  v33 = sub_1C1E54D2C();

  if (v33)
  {
LABEL_187:
    if (sub_1C1E53D2C() == 1)
    {
      sub_1C1E5432C();
      result = sub_1C1E53DDC();
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  sub_1C1DC9F68(a2, a3);
  if (v34 && (v35 = sub_1C1E5455C(), v37 = v36, , (v37 & 1) == 0) || (sub_1C1DC9F68(a2, a3), v38) && (v35 = sub_1C1E5456C(), v40 = v39, , (v40 & 1) == 0))
  {
    switch(v35)
    {
      case 0:
        sub_1C1E5432C();
        result = sub_1C1E540EC();
        goto LABEL_27;
      case 1:
        sub_1C1E5432C();
        result = sub_1C1E540FC();
        goto LABEL_27;
      case 2:
        sub_1C1E5432C();
        result = sub_1C1E5410C();
        goto LABEL_27;
      case 3:
        sub_1C1E5432C();
        result = sub_1C1E5411C();
        goto LABEL_27;
      case 4:
        sub_1C1E5432C();
        result = sub_1C1E5412C();
        goto LABEL_27;
      case 5:
        sub_1C1E5432C();
        result = sub_1C1E5413C();
        goto LABEL_27;
      case 6:
        sub_1C1E5432C();
        result = sub_1C1E5414C();
        goto LABEL_27;
      case 7:
        sub_1C1E5432C();
        result = sub_1C1E5415C();
        goto LABEL_27;
      case 8:
        sub_1C1E5432C();
        result = sub_1C1E5416C();
        goto LABEL_27;
      case 9:
        sub_1C1E5432C();
        result = sub_1C1E5417C();
        goto LABEL_27;
      case 10:
        sub_1C1E5432C();
        result = sub_1C1E5418C();
        goto LABEL_27;
      case 11:
        sub_1C1E5432C();
        result = sub_1C1E5419C();
        goto LABEL_27;
      case 12:
        sub_1C1E5432C();
        goto LABEL_82;
      case 13:
        sub_1C1E5432C();
        result = sub_1C1E541BC();
        goto LABEL_27;
      case 14:
        sub_1C1E5432C();
        result = sub_1C1E541CC();
        goto LABEL_27;
      case 15:
        sub_1C1E5432C();
        result = sub_1C1E541DC();
        goto LABEL_27;
      default:
        break;
    }
  }

LABEL_25:
  v23 = sub_1C1E51318(&unk_1F4186EB8);
  swift_arrayDestroy();
  v24 = sub_1C1E4E564(a2, a3, v23);

  if ((v24 & 1) == 0)
  {
    return 0;
  }

  sub_1C1E5432C();
  result = sub_1C1E5424C();
LABEL_27:
  if ((v6 & 4) != 0)
  {
    v25 = v5[2];
    v26 = result;

    v27 = sub_1C1DC4F3C(v26, v25);

    result = v26;
    if ((v27 & 1) == 0)
    {

      return 0;
    }
  }

  return result;
}

void sub_1C1E117F0(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1C69106B0](a1, a2, v7);
      sub_1C1E119FC();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1C1E119FC();
    if (sub_1C1E54AAC() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1C1E54ABC();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_1C1E549AC();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_1C1E549BC();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

double sub_1C1E119F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1C1E119FC()
{
  result = qword_1EBF1D180;
  if (!qword_1EBF1D180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBF1D180);
  }

  return result;
}

double sub_1C1E11A48@<D0>(uint64_t a1@<X8>)
{
  sub_1C1E5245C();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t Function.FunctionSamplerWrapper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t Function.init(id:name:xAxisLabel:yAxisLabel:zAxisLabel:body:body3D:colorOverride:shouldAnimate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  *(a9 + 13) = 0;
  v37 = type metadata accessor for Function(0);
  v23 = *(v37 + 48);
  v24 = sub_1C1E51F9C();
  v38 = *(v24 - 8);
  v39 = v24;
  (*(v38 + 16))(&a9[v23], a1);
  *a9 = a2;
  *(a9 + 1) = a3;
  *(a9 + 2) = a4;
  *(a9 + 3) = a5;
  *(a9 + 4) = a6;
  *(a9 + 5) = a7;
  *(a9 + 6) = a8;
  *(a9 + 7) = a10;
  if (a11)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = a11;
    *(v25 + 24) = a12;
    v26 = sub_1C1E11FF4;
  }

  else
  {
    v26 = sub_1C1E11F08;
    v25 = 0;
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v25;
  *(a9 + 8) = sub_1C1E11F14;
  *(a9 + 9) = v27;
  *(a9 + 10) = a13;
  *(a9 + 11) = a14;
  if (a13)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = a13;
    *(v28 + 24) = a14;
    type metadata accessor for Function.FunctionSamplerWrapper();
    v29 = swift_allocObject();
    *(v29 + 24) = 0;
    *(v29 + 32) = 0;
    *(v29 + 40) = 1;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 1;
    sub_1C1E5247C();
    swift_allocObject();
    sub_1C1DD6A34(a13, a14);
    sub_1C1DD6A34(a11, a12);
    sub_1C1DD6A34(a13, a14);
    *(v29 + 16) = sub_1C1E5248C();
    *(a9 + 12) = v29;
    v30 = swift_allocObject();
    *(v30 + 16) = a13;
    *(v30 + 24) = a14;
    v31 = swift_allocObject();
    *(v31 + 24) = 0;
    *(v31 + 32) = 0;
    *(v31 + 40) = 1;
    *(v31 + 48) = 0;
    *(v31 + 56) = 0;
    *(v31 + 64) = 1;
    swift_allocObject();
    *(v31 + 16) = sub_1C1E5248C();
    *(a9 + 13) = v31;
  }

  else
  {
    type metadata accessor for Function.FunctionSamplerWrapper();
    v32 = swift_allocObject();
    *(v32 + 24) = 0;
    *(v32 + 32) = 0;
    *(v32 + 40) = 1;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    *(v32 + 64) = 1;
    sub_1C1E5247C();
    swift_allocObject();
    sub_1C1DD6A34(a11, a12);

    *(v32 + 16) = sub_1C1E5248C();
    *(a9 + 12) = v32;
  }

  *&a9[*(v37 + 52)] = a15;
  if (a16)
  {
    sub_1C1E51F3C();
  }

  else
  {
    sub_1C1E51EEC();
  }

  sub_1C1DD0EB8(a11, a12);
  v33 = *(v38 + 8);

  return v33(a1, v39);
}

uint64_t type metadata accessor for Function(uint64_t a1)
{
  result = qword_1EDE73CA8;
  if (!qword_1EDE73CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Function.name.getter()
{
  v1 = *v0;

  return v1;
}

void Function.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t Function.xAxisLabel.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void Function.xAxisLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t Function.yAxisLabel.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void Function.yAxisLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t Function.zAxisLabel.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void Function.zAxisLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t Function.body.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void sub_1C1E12278(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  a2[8] = sub_1C1E13414;
  a2[9] = v5;
  type metadata accessor for Function.FunctionSamplerWrapper();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 1;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 1;
  sub_1C1E5247C();
  swift_allocObject();
  *(v6 + 16) = sub_1C1E5248C();

  a2[12] = v6;
}

void Function.body.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v3[8] = a1;
  v3[9] = a2;
  type metadata accessor for Function.FunctionSamplerWrapper();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 1;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 1;
  sub_1C1E5247C();
  swift_allocObject();
  *(v6 + 16) = sub_1C1E5248C();

  v3[12] = v6;
}

void sub_1C1E12420(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *a1;
    type metadata accessor for Function.FunctionSamplerWrapper();
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 1;
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 1;
    sub_1C1E5247C();
    swift_allocObject();

    *(v3 + 16) = sub_1C1E5248C();

    *(v2 + 96) = v3;
  }
}

uint64_t sub_1C1E124C4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1C1E13398;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1C1DD6A34(v3, v4);
}

uint64_t sub_1C1E12544(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1C1E13354;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 80);
  v8 = *(a2 + 88);
  sub_1C1DD6A34(v3, v4);
  result = sub_1C1DD0EB8(v7, v8);
  *(a2 + 80) = v6;
  *(a2 + 88) = v5;
  return result;
}

uint64_t Function.body3D.getter()
{
  v1 = *(v0 + 80);
  sub_1C1DD6A34(v1, *(v0 + 88));
  return v1;
}

uint64_t Function.body3D.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1C1DD0EB8(*(v2 + 80), *(v2 + 88));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t Function.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Function(0) + 48);
  v4 = sub_1C1E51F9C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Function.colorOverride.getter()
{
  type metadata accessor for Function(0);
}

void Function.colorOverride.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Function(0) + 52);

  *(v1 + v3) = a1;
}

Swift::Double __swiftcall Function.callAsFunction3D(_:_:)(Swift::Double a1, Swift::Double a2)
{
  v3 = *(v2 + 80);
  if (!v3)
  {
    return 0.0;
  }

  v6 = *(v2 + 88);

  v8 = v3(v7, a1, a2);
  sub_1C1DD0EB8(v3, v6);
  return v8;
}

uint64_t Function.onAppearDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Function(0) + 56);
  v4 = sub_1C1E51F5C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Function.onAppearDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Function(0) + 56);
  v4 = sub_1C1E51F5C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

double Function.defaultXDomain.getter()
{
  v1 = *(v0 + 96);
  if (*(v1 + 40) != 1)
  {
    return *(v1 + 24);
  }

  sub_1C1E5243C();
  *(v1 + 24) = result;
  *(v1 + 32) = v3;
  *(v1 + 40) = 0;
  return result;
}

void Function.defaultYDomain.getter(__n128 a1, __n128 a2)
{
  v3 = *(v2 + 104);
  if (v3)
  {
    if (*(v3 + 40) == 1)
    {

      sub_1C1E5243C();
      *(v3 + 24) = v4;
      *(v3 + 32) = v5;
      *(v3 + 40) = 0;
    }
  }

  else
  {
    v6 = *(v2 + 96);
    if (*(v6 + 64) == 1)
    {
      if (*(v6 + 40) == 1)
      {
        sub_1C1E5243C();
        *(v6 + 24) = v7;
        *(v6 + 32) = v8;
        *(v6 + 40) = 0;
      }

      sub_1C1E5244C();
      *(v6 + 48) = v9;
      *(v6 + 56) = v10;
      *(v6 + 64) = 0;
    }
  }
}

void Function.defaultZDomain.getter()
{
  v1 = *(v0 + 104);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + 96);
  if (*(v2 + 64))
  {
    if (*(v2 + 40))
    {

      sub_1C1E5243C();
      *(v2 + 24) = v3;
      *(v2 + 32) = v4;
      *(v2 + 40) = 0;
    }

    else
    {
    }

    sub_1C1E5244C();
    v6 = v9;
    v5 = v10;
    *(v2 + 48) = v9;
    *(v2 + 56) = v10;
    *(v2 + 64) = 0;
    if (*(v1 + 64))
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *(v2 + 48);
    v5 = *(v2 + 56);

    if (*(v1 + 64))
    {
LABEL_10:
      if (*(v1 + 40))
      {
        sub_1C1E5243C();
        *(v1 + 24) = v11;
        *(v1 + 32) = v12;
        *(v1 + 40) = 0;
      }

      sub_1C1E5244C();
      v8 = v13;
      v7 = v14;
      *(v1 + 48) = v13;
      *(v1 + 56) = v14;
      *(v1 + 64) = 0;
      goto LABEL_13;
    }
  }

  v8 = *(v1 + 48);
  v7 = *(v1 + 56);
LABEL_13:

  if (v8 >= v6)
  {
    v15 = v6;
  }

  else
  {
    v15 = v8;
  }

  if (v5 > v7)
  {
    v16 = v5;
  }

  else
  {
    v16 = v7;
  }

  if (v15 > v16)
  {
    __break(1u);
  }
}

uint64_t Function.hash(into:)(uint64_t a1)
{
  type metadata accessor for Function(0);
  sub_1C1E51F9C();
  sub_1C1E1307C(&qword_1EDE750A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  return sub_1C1E5454C();
}

uint64_t static Function.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Function(0);

  return sub_1C1E51F7C();
}

uint64_t Function.hashValue.getter()
{
  sub_1C1E54D7C();
  type metadata accessor for Function(0);
  sub_1C1E51F9C();
  sub_1C1E1307C(&qword_1EDE750A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1C1E5454C();
  return sub_1C1E54DAC();
}

uint64_t sub_1C1E12DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_1C1E51F9C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C1E12E38()
{
  sub_1C1E54D7C();
  sub_1C1E51F9C();
  sub_1C1E1307C(&qword_1EDE750A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1C1E5454C();
  return sub_1C1E54DAC();
}

uint64_t sub_1C1E12ED4(uint64_t a1)
{
  sub_1C1E51F9C();
  sub_1C1E1307C(&qword_1EDE750A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  return sub_1C1E5454C();
}

uint64_t sub_1C1E12F54(uint64_t a1)
{
  sub_1C1E54D7C();
  sub_1C1E51F9C();
  sub_1C1E1307C(&qword_1EDE750A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1C1E5454C();
  return sub_1C1E54DAC();
}

uint64_t sub_1C1E1307C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C1E130FC(uint64_t a1)
{
  sub_1C1E13200();
  if (v1 <= 0x3F)
  {
    sub_1C1DC0DD4(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Function.FunctionSamplerWrapper();
      sub_1C1E13250(319);
      if (v3 <= 0x3F)
      {
        sub_1C1E51F9C();
        if (v4 <= 0x3F)
        {
          sub_1C1E132A4();
          if (v5 <= 0x3F)
          {
            sub_1C1E51F5C();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C1E13200()
{
  result = qword_1EDE73798;
  if (!qword_1EDE73798)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDE73798);
  }

  return result;
}

void sub_1C1E13250(uint64_t a1)
{
  if (!qword_1EBF1D4E8)
  {
    type metadata accessor for Function.FunctionSamplerWrapper();
    v1 = sub_1C1E549CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBF1D4E8);
    }
  }
}

void sub_1C1E132A4()
{
  if (!qword_1EDE73B08)
  {
    v0 = sub_1C1E549CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE73B08);
    }
  }
}

double sub_1C1E13354(double a1, double a2)
{
  v3 = *(v2 + 16);
  v6 = a2;
  v7 = a1;
  v3(&v5, &v7, &v6);
  return v5;
}

double sub_1C1E133D0(double a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_1C1E13444@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v73 = sub_1C1E51E2C();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C1E51F9C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v82 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1C1E53CBC();
  v78 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4F0, &qword_1C1E58E78);
  MEMORY[0x1EEE9AC00](v85);
  v86 = (&v71 - v6);
  v77 = sub_1C1E5218C();
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v75 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for TypesetCanvasView(0);
  MEMORY[0x1EEE9AC00](v83);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v71 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4F8, &qword_1C1E58E80);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v71 - v13;
  v15 = sub_1C1E5226C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v71 - v20;
  type metadata accessor for Utilities();
  v22 = v1;
  v24 = *v1;
  v23 = v1[1];

  v74 = v24;
  v84 = v23;
  sub_1C1E08B64(v24, v23, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1C1E13DC4(v14);
    v25 = v22[5];
    v26 = v22[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C800, &unk_1C1E570D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1E55C40;
    v28 = *MEMORY[0x1E6992250];
    *(inited + 32) = *MEMORY[0x1E6992250];
    v29 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v30 = v28;
    v31 = v84;

    v32 = [v29 initWithUnsignedInteger_];
    v33 = sub_1C1DC0D28(0, &qword_1EBF1C808, 0x1E696AD98);
    *(inited + 40) = v32;
    v34 = *MEMORY[0x1E6992228];
    *(inited + 64) = v33;
    *(inited + 72) = v34;
    v35 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v36 = v34;
    v37 = [v35 initWithBool_];
    *(inited + 104) = v33;
    *(inited + 80) = v37;
    sub_1C1DF776C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C810, &qword_1C1E576E0);
    swift_arrayDestroy();
    (*(v78 + 104))(v81, *MEMORY[0x1E6992100], v80);
    sub_1C1E51F8C();
    sub_1C1E5444C();
    swift_allocObject();
    v38 = v74;
    sub_1C1E5445C();
    sub_1C1E53D4C();
    v39 = sub_1C1E53B0C();
    v41 = v40;

    v42 = HIBYTE(v41) & 0xF;
    if ((v41 & 0x2000000000000000) == 0)
    {
      v42 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (v42)
    {
      goto LABEL_5;
    }

    v88 = v38;
    v89 = v31;
    v51 = v71;
    v52 = sub_1C1E51E1C();
    sub_1C1DC733C(v52, v53, v54);
    v55 = sub_1C1E549FC();
    v57 = v56;
    (*(v72 + 8))(v51, v73);

    v58 = HIBYTE(v57) & 0xF;
    if ((v57 & 0x2000000000000000) == 0)
    {
      v58 = v55 & 0xFFFFFFFFFFFFLL;
    }

    if (!v58)
    {
LABEL_5:

      v38 = sub_1C1E53B0C();
      v31 = v43;

      v44 = 0;
    }

    else
    {

      v44 = 1;
    }

    v59 = v86;
    *v86 = v38;
    v59[1] = v31;
    v59[2] = v25;
    *(v59 + 24) = v44;
    v59[4] = v26;
    swift_storeEnumTagMultiPayload();
    v60 = sub_1C1E13E2C();
    sub_1C1DE2904(v60, v61, v62);
    return sub_1C1E52CEC();
  }

  else
  {

    (*(v16 + 32))(v21, v14, v15);
    v45 = v16;
    v46 = *(v16 + 16);
    v84 = v21;
    v46(v18, v21, v15);
    v47 = v22[5];
    v48 = v22[6];
    v46(v9, v18, v15);
    *&v9[*(v83 + 20)] = v47;
    if (v48)
    {
      sub_1C1DC0D28(0, &qword_1EDE737A8, 0x1E69DC888);
      swift_retain_n();
      v49 = sub_1C1E5499C();
      v50 = [v49 CGColor];
    }

    else
    {
      v49 = [objc_opt_self() labelColor];
      v50 = [v49 CGColor];
    }

    v64 = v50;
    v65 = v75;
    sub_1C1E5217C();
    sub_1C1E5225C();

    (*(v76 + 8))(v65, v77);
    v66 = *(v45 + 8);
    v66(v18, v15);
    v67 = v79;
    sub_1C1E13E84(v9, v79);
    sub_1C1E13EE8(v67, v86);
    swift_storeEnumTagMultiPayload();
    v68 = sub_1C1E13E2C();
    sub_1C1DE2904(v68, v69, v70);
    sub_1C1E52CEC();
    sub_1C1E13F4C(v67);
    return (v66)(v84, v15);
  }
}

uint64_t sub_1C1E13DC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4F8, &qword_1C1E58E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C1E13E2C()
{
  result = qword_1EBF1D500;
  if (!qword_1EBF1D500)
  {
    type metadata accessor for TypesetCanvasView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D500);
  }

  return result;
}

uint64_t sub_1C1E13E84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypesetCanvasView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1E13EE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypesetCanvasView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1E13F4C(uint64_t a1)
{
  v2 = type metadata accessor for TypesetCanvasView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C1E13FA8()
{
  result = qword_1EBF1D508;
  if (!qword_1EBF1D508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D510, &qword_1C1E58E88);
    v3 = sub_1C1E13E2C();
    sub_1C1DE2904(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D508);
  }

  return result;
}

id sub_1C1E140C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OneFingerDragRepresentable.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for OneFingerDragRepresentable.Coordinator(uint64_t a1)
{
  result = qword_1EBF1D518;
  if (!qword_1EBF1D518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1E141CC(uint64_t a1)
{
  result = sub_1C1E5350C();
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

uint64_t sub_1C1E14268(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C1E142B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C1E1431C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C1E5350C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 40);
  v11 = *(v6 + 16);
  v11(v9, a1, v5, v7);
  v12 = type metadata accessor for OneFingerDragRepresentable.Coordinator(0);
  v13 = objc_allocWithZone(v12);
  (v11)(&v13[OBJC_IVAR____TtCV11CalculateUI26OneFingerDragRepresentable11Coordinator_converter], v9, v5);
  *&v13[OBJC_IVAR____TtCV11CalculateUI26OneFingerDragRepresentable11Coordinator_graphViewModel] = v10;
  v16.receiver = v13;
  v16.super_class = v12;

  v14 = objc_msgSendSuper2(&v16, sel_init);
  result = (*(v6 + 8))(v9, v5);
  *a2 = v14;
  return result;
}

uint64_t sub_1C1E14488(void *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = *v2;
  v5[1] = v3;
  v6 = *(v2 + 32);
  return sub_1C1E14AB8(a1, a2, v5);
}

BOOL sub_1C1E144BC(void *a1)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C758, &qword_1C1E579C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v31 - v3;
  v37 = sub_1C1E52CFC();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1E5350C();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D540, &qword_1C1E58F98);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31 - v10;
  v12 = sub_1C1E522DC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v1;
  v31 = OBJC_IVAR____TtCV11CalculateUI26OneFingerDragRepresentable11Coordinator_graphViewModel;
  v16 = *(v1 + OBJC_IVAR____TtCV11CalculateUI26OneFingerDragRepresentable11Coordinator_graphViewModel);
  swift_getKeyPath();
  v42 = v16;
  sub_1C1DF2D00();

  sub_1C1E520BC();

  v17 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartProxy;
  swift_beginAccess();
  sub_1C1E14D8C(v16 + v17, v11);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1C1DC1870(v11, &qword_1EBF1D540, &qword_1C1E58F98);
    return 0;
  }

  (*(v13 + 32))(v15, v11, v12);
  v19 = v33;
  v18 = v34;
  (*(v33 + 16))(v8, v38 + OBJC_IVAR____TtCV11CalculateUI26OneFingerDragRepresentable11Coordinator_converter, v34);
  [v36 locationInView_];
  sub_1C1E52D9C();
  v20 = v37;
  sub_1C1E534EC();
  (*(v35 + 8))(v5, v20);
  (*(v19 + 8))(v8, v18);
  sub_1C1E522BC();
  if (v41)
  {
    (*(v13 + 8))(v15, v12);
    return 0;
  }

  v23 = v39;
  v22 = v40;

  sub_1C1E24AC8();
  v25 = v24;
  sub_1C1E24AC8();
  sub_1C1E25C2C(round(vabdd_f64(v25, v26)));
  v27 = v32;
  sub_1C1E24334(v32, v23, v22, v28);

  (*(v13 + 8))(v15, v12);
  v29 = type metadata accessor for Function(0);
  v30 = (*(*(v29 - 8) + 48))(v27, 1, v29) != 1;
  sub_1C1DC1870(v27, &qword_1EBF1C758, &qword_1C1E579C0);
  return v30;
}

id sub_1C1E149D0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCD28]) init];
  [v0 setMinimumNumberOfTouches_];
  [v0 setMaximumNumberOfTouches_];
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF1D530, &unk_1C1E58F88);
  sub_1C1E52F9C();
  [v1 setDelegate_];

  v2 = sub_1C1E545BC();
  [v1 setName_];

  return v1;
}

uint64_t sub_1C1E14AB8(void *a1, uint64_t a2, __int128 *a3)
{
  v5 = sub_1C1E52CFC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C1E5350C();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 state] == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF1D530, &unk_1C1E58F88);
    sub_1C1E52FAC();
    sub_1C1E52D9C();
    sub_1C1E534FC();
    v15 = v14;
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v13, v9);
    v18 = a3[1];
    v31 = *a3;
    v32 = v18;
    v33 = *(a3 + 32);
    v28 = v15;
    v29 = v17;
    v30 = 0;
  }

  else
  {
    if ([a1 state] == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF1D530, &unk_1C1E58F88);
      sub_1C1E52FAC();
      sub_1C1E52D9C();
      sub_1C1E534FC();
      v20 = v19;
      v22 = v21;
      (*(v6 + 8))(v8, v5);
      (*(v10 + 8))(v13, v9);
      v23 = a3[1];
      v31 = *a3;
      v32 = v23;
      v33 = *(a3 + 32);
      v28 = v20;
      v29 = v22;
      v24 = 1;
    }

    else
    {
      v25 = a3[1];
      v31 = *a3;
      v32 = v25;
      v33 = *(a3 + 32);
      v28 = 0;
      v29 = 0;
      v24 = 2;
    }

    v30 = v24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D528, &qword_1C1E58F80);
  return sub_1C1E537AC();
}

uint64_t sub_1C1E14D8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D540, &qword_1C1E58F98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GraphViewModel.__allocating_init(functions:initialXAxisBounds:initialYAxisBounds:isSelected:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v6 = a2;
  v12 = swift_allocObject();
  GraphViewModel.init(functions:initialXAxisBounds:initialYAxisBounds:isSelected:)(a1, v6, a3, a4, a5, a6);
  return v12;
}

uint64_t GraphViewModel.init(functions:initialXAxisBounds:initialYAxisBounds:isSelected:)(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = sub_1C1E5232C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 16) = 0;
  sub_1C1E51F3C();
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterX) = 0;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterY) = 0;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterZ) = 0;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakX) = 0x4008000000000000;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakY) = 0x4008000000000000;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakZ) = 0x4008000000000000;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = 0;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom) = 0x3FF0000000000000;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX) = 0;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY) = 0;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ) = 0;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio) = 0x3FE0000000000000;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioY) = 0x3FE0000000000000;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioZ) = 0x3FE0000000000000;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX) = 0x4008000000000000;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY) = 0x4008000000000000;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ) = 0x4008000000000000;
  v18 = v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__plotRect;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 1;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter) = 0;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowEqualizeAxes) = 0;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowCenterOrigin) = 0;
  v19 = v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_xDragStartPlottable;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_yDragStartPlottable;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_lock;
  *(v7 + v21) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v22 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock;
  *(v7 + v22) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions) = MEMORY[0x1E69E7CC0];
  v23 = (v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___xAxisLabel);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___yAxisLabel);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___zAxisLabel);
  *v25 = 0;
  v25[1] = 0;
  v26 = v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 1;
  v27 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartProxy;
  v28 = sub_1C1E522DC();
  (*(*(v28 - 8) + 56))(v7 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__selectedFunctionID3D;
  v30 = sub_1C1E51F9C();
  (*(*(v30 - 8) + 56))(v7 + v29, 1, 1, v30);
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_baseAxesIntervals) = &unk_1F4187040;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__isAnimatingFunction) = 0;
  sub_1C1E5231C();
  (*(v15 + 32))(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose, v17, v14);
  sub_1C1E520EC();
  v31 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions;

  *(v7 + v31) = a1;
  v32 = (v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  *v32 = a3;
  v32[1] = a4;
  v33 = (v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  *v33 = a5;
  v33[1] = a6;
  v34 = (v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds) = xmmword_1C1E58FD0;
  *(v7 + 17) = a2;
  *(v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType) = 0;
  v35 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
  swift_beginAccess();
  *(v7 + v35) = (a3 + a4) * 0.5;
  v36 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
  swift_beginAccess();
  *(v7 + v36) = (a5 + a6) * 0.5;
  swift_getKeyPath();
  v48[12] = v7;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  swift_beginAccess();
  v37 = *v34;
  swift_getKeyPath();
  v48[9] = v7;
  sub_1C1E520BC();

  v38 = (v37 + v34[1]) * 0.5;
  v39 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
  swift_beginAccess();
  *(v7 + v39) = v38;
  v40 = sqrt(a4 - a3);
  v41 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
  swift_beginAccess();
  *(v7 + v41) = v40;
  v42 = sqrt(a6 - a5);
  v43 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
  swift_beginAccess();
  *(v7 + v43) = v42;
  swift_getKeyPath();
  v48[0] = v7;
  sub_1C1E520BC();

  v44 = v34[1];
  swift_getKeyPath();
  v48[0] = v7;
  sub_1C1E520BC();

  v45 = sqrt(v44 - *v34);
  v46 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  swift_beginAccess();
  *(v7 + v46) = v45;
  sub_1C1E1A2C0();
  return v7;
}

double sub_1C1E154DC(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  if (*(v1 + 16) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }

  return result;
}

void sub_1C1E155F8(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }
}

void sub_1C1E15710(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__plotRect;
  swift_beginAccess();
  if ((*(v7 + 32) & 1) == 0)
  {
    if (*(a1 + 32))
    {
      goto LABEL_7;
    }

    v10.origin.x = v3;
    v10.origin.y = v4;
    v10.size.width = v5;
    v10.size.height = v6;
    if (!CGRectEqualToRect(*v7, v10))
    {
      goto LABEL_7;
    }

LABEL_6:
    v8 = *(a1 + 16);
    *v7 = *a1;
    *(v7 + 16) = v8;
    *(v7 + 32) = *(a1 + 32);
    return;
  }

  if (*(a1 + 32))
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520AC();
}

void sub_1C1E158DC(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1 & 1;
  v6 = *a2;
  swift_beginAccess();
  if (*(v4 + v6) == v5)
  {
    *(v4 + v6) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }
}

void sub_1C1E15A20(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions;

  v5 = sub_1C1E26580(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;

    v6 = (v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___xAxisLabel);
    if (*(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___xAxisLabel + 8))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
      sub_1C1E520AC();
    }

    else
    {
      *v6 = 0;
      v6[1] = 0;
    }

    v9 = (v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___yAxisLabel);
    if (*(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___yAxisLabel + 8))
    {
      v10 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v10);
      sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
      sub_1C1E520AC();
    }

    else
    {
      *v9 = 0;
      v9[1] = 0;
    }

    v11 = (v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___zAxisLabel);
    if (*(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___zAxisLabel + 8))
    {
      v12 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v12);
      sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
      sub_1C1E520AC();
    }

    else
    {
      *v11 = 0;
      v11[1] = 0;
    }
  }

  else
  {
    v8 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v8);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }
}

double sub_1C1E15E4C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = (v5 + *a3);
  v9 = v8[1];
  if (v9)
  {
    if (a2)
    {
      v10 = *v8 == a1 && v9 == a2;
      if (v10 || (sub_1C1E54D2C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v8 = a1;
  v8[1] = a2;

  return result;
}

uint64_t sub_1C1E15FF0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5E0, &qword_1C1E592F8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__selectedFunctionID3D;
  swift_beginAccess();
  sub_1C1DC1424(v1 + v6, v5, &qword_1EBF1D5E0, &qword_1C1E592F8);
  v7 = sub_1C1E28868(v5, a1);
  sub_1C1DC1870(v5, &qword_1EBF1D5E0, &qword_1C1E592F8);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }

  else
  {
    sub_1C1DC1424(a1, v5, &qword_1EBF1D5E0, &qword_1C1E592F8);
    swift_beginAccess();
    sub_1C1E28BBC(v5, v1 + v6, &qword_1EBF1D5E0, &qword_1C1E592F8);
    swift_endAccess();
  }

  return sub_1C1DC1870(a1, &qword_1EBF1D5E0, &qword_1C1E592F8);
}

uint64_t sub_1C1E16220(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1E5232C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1C1DC4DB0(&qword_1EBF1D588, MEMORY[0x1E695AF98], MEMORY[0x1E695AFA0]);
  v14[0] = a1;
  LOBYTE(a1) = sub_1C1E545AC();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }

  return (v10)(v14[0], v4);
}

void sub_1C1E16538(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, __n128, __n128), double a5, double a6)
{
  v10 = (v6 + *a1);
  v11 = swift_beginAccess();
  v12.n128_f64[0] = *v10;
  v13.n128_f64[0] = v10[1];
  if (*v10 == a5 && v13.n128_f64[0] == a6)
  {
    *v10 = a5;
    v10[1] = a6;
    a4(v11, v12, v13);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }
}

void sub_1C1E166B0(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 17) == v2)
  {
    *(v1 + 17) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }
}

void sub_1C1E167D4(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType;
  swift_beginAccess();
  if (v2 == *(v1 + v3))
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }
}

uint64_t GraphViewModel.__allocating_init(functions:initialXAxisBounds:initialYAxisBounds:initialZAxisBounds:chartPose:isSelected:)(uint64_t a1, uint64_t a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v54 = a3;
  v53 = a2;
  v16 = sub_1C1E5232C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  sub_1C1E51F3C();
  *(v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterX) = 0;
  *(v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterY) = 0;
  *(v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterZ) = 0;
  *(v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakX) = 0x4008000000000000;
  *(v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakY) = 0x4008000000000000;
  *(v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakZ) = 0x4008000000000000;
  *(v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = 0;
  *(v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom) = 0x3FF0000000000000;
  *(v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX) = 0;
  *(v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY) = 0;
  *(v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ) = 0;
  *(v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio) = 0x3FE0000000000000;
  *(v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioY) = 0x3FE0000000000000;
  *(v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioZ) = 0x3FE0000000000000;
  *(v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX) = 0x4008000000000000;
  *(v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY) = 0x4008000000000000;
  *(v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ) = 0x4008000000000000;
  v21 = v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__plotRect;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 1;
  *(v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter) = 0;
  *(v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowEqualizeAxes) = 0;
  *(v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowCenterOrigin) = 0;
  v22 = v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_xDragStartPlottable;
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_yDragStartPlottable;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_lock;
  *(v20 + v24) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v25 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock;
  *(v20 + v25) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions) = MEMORY[0x1E69E7CC0];
  v26 = (v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___xAxisLabel);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___yAxisLabel);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___zAxisLabel);
  *v28 = 0;
  v28[1] = 0;
  v29 = v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
  *v29 = 0;
  *(v29 + 8) = 0;
  *(v29 + 16) = 1;
  v30 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartProxy;
  v31 = sub_1C1E522DC();
  (*(*(v31 - 8) + 56))(v20 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__selectedFunctionID3D;
  v33 = sub_1C1E51F9C();
  (*(*(v33 - 8) + 56))(v20 + v32, 1, 1, v33);
  *(v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_baseAxesIntervals) = &unk_1F4187078;
  *(v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__isAnimatingFunction) = 0;
  sub_1C1E5231C();
  v34 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
  v35 = *(v17 + 32);
  v35(v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose, v19, v16);
  sub_1C1E520EC();
  v36 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions;

  *(v20 + v36) = a1;
  v37 = (v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  *v37 = a4;
  v37[1] = a5;
  v38 = (v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  *v38 = a6;
  v38[1] = a7;
  v39 = (v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  *v39 = a8;
  v39[1] = a9;
  v40 = v53;
  (*(v17 + 16))(v19, v53, v16);
  v41 = *(v17 + 8);
  v41(v20 + v34, v16);
  v35(v20 + v34, v19, v16);
  *(v20 + 17) = v54;
  *(v20 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType) = 1;
  v42 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
  swift_beginAccess();
  *(v20 + v42) = (a4 + a5) * 0.5;
  v43 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
  swift_beginAccess();
  *(v20 + v43) = (a6 + a7) * 0.5;
  v44 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
  swift_beginAccess();
  *(v20 + v44) = (a8 + a9) * 0.5;
  v45 = sqrt(a5 - a4);
  v46 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
  swift_beginAccess();
  *(v20 + v46) = v45;
  v47 = sqrt(a7 - a6);
  v48 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
  swift_beginAccess();
  *(v20 + v48) = v47;
  v49 = sqrt(a9 - a8);
  v50 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  swift_beginAccess();
  *(v20 + v50) = v49;
  sub_1C1E1A2C0();
  v41(v40, v16);
  return v20;
}

uint64_t GraphViewModel.init(functions:initialXAxisBounds:initialYAxisBounds:initialZAxisBounds:chartPose:isSelected:)(uint64_t a1, uint64_t a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v54 = a3;
  v53 = a2;
  v17 = sub_1C1E5232C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v9 + 16) = 0;
  sub_1C1E51F3C();
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterX) = 0;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterY) = 0;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterZ) = 0;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakX) = 0x4008000000000000;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakY) = 0x4008000000000000;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakZ) = 0x4008000000000000;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = 0;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom) = 0x3FF0000000000000;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX) = 0;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY) = 0;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ) = 0;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio) = 0x3FE0000000000000;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioY) = 0x3FE0000000000000;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioZ) = 0x3FE0000000000000;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX) = 0x4008000000000000;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY) = 0x4008000000000000;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ) = 0x4008000000000000;
  v21 = v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__plotRect;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 1;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter) = 0;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowEqualizeAxes) = 0;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowCenterOrigin) = 0;
  v22 = v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_xDragStartPlottable;
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_yDragStartPlottable;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_lock;
  *(v9 + v24) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v25 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock;
  *(v9 + v25) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions) = MEMORY[0x1E69E7CC0];
  v26 = (v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___xAxisLabel);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___yAxisLabel);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___zAxisLabel);
  *v28 = 0;
  v28[1] = 0;
  v29 = v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
  *v29 = 0;
  *(v29 + 8) = 0;
  *(v29 + 16) = 1;
  v30 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartProxy;
  v31 = sub_1C1E522DC();
  (*(*(v31 - 8) + 56))(v9 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__selectedFunctionID3D;
  v33 = sub_1C1E51F9C();
  (*(*(v33 - 8) + 56))(v9 + v32, 1, 1, v33);
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_baseAxesIntervals) = &unk_1F41870B0;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__isAnimatingFunction) = 0;
  sub_1C1E5231C();
  v34 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
  v35 = *(v18 + 32);
  v35(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose, v20, v17);
  sub_1C1E520EC();
  v36 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions;

  *(v9 + v36) = a1;
  v37 = (v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  *v37 = a4;
  v37[1] = a5;
  v38 = (v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  *v38 = a6;
  v38[1] = a7;
  v39 = (v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  *v39 = a8;
  v39[1] = a9;
  v40 = v53;
  (*(v18 + 16))(v20, v53, v17);
  v41 = *(v18 + 8);
  v41(v9 + v34, v17);
  v35(v9 + v34, v20, v17);
  *(v9 + 17) = v54;
  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType) = 1;
  v42 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
  swift_beginAccess();
  *(v9 + v42) = (a4 + a5) * 0.5;
  v43 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
  swift_beginAccess();
  *(v9 + v43) = (a6 + a7) * 0.5;
  v44 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
  swift_beginAccess();
  *(v9 + v44) = (a8 + a9) * 0.5;
  v45 = sqrt(a5 - a4);
  v46 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
  swift_beginAccess();
  *(v9 + v46) = v45;
  v47 = sqrt(a7 - a6);
  v48 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
  swift_beginAccess();
  *(v9 + v48) = v47;
  v49 = sqrt(a9 - a8);
  v50 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  swift_beginAccess();
  *(v9 + v50) = v49;
  sub_1C1E1A2C0();
  v41(v40, v17);
  return v9;
}

uint64_t GraphViewModel.GraphType.hashValue.getter()
{
  v1 = *v0;
  sub_1C1E54D7C();
  MEMORY[0x1C6910960](v1);
  return sub_1C1E54DAC();
}

uint64_t GraphViewModel.State.hashValue.getter()
{
  v1 = *v0;
  sub_1C1E54D7C();
  MEMORY[0x1C6910960](v1);
  return sub_1C1E54DAC();
}

uint64_t sub_1C1E175C0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t (*sub_1C1E1767C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E17570(v4);
  return sub_1C1E177B4;
}

uint64_t sub_1C1E17810@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  result = swift_beginAccess();
  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_1C1E178F4()
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  swift_beginAccess();
  return *(v0 + 17);
}

uint64_t sub_1C1E179A8(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 17) = a2;
  return result;
}

uint64_t (*sub_1C1E179FC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E177C0(v4);
  return sub_1C1E17B34;
}

uint64_t sub_1C1E17B40()
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  return *(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal);
}

void sub_1C1E17BE8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  *a2 = *(v3 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal);
}

double sub_1C1E17CC0()
{
  v1 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1E17D04(double a1)
{
  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1C1E17DB4()
{
  v1 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1E17DF8(double a1)
{
  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1C1E17EA8()
{
  v1 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1E17EEC(double a1)
{
  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1C1E17F9C()
{
  v1 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1E17FE0(double a1)
{
  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1C1E18090()
{
  v1 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1E180D4(double a1)
{
  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1C1E18184()
{
  v1 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioY;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1E181C8(double a1)
{
  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioY;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1C1E18278()
{
  v1 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioZ;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1E182BC(double a1)
{
  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioZ;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1C1E1836C()
{
  v1 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_1C1E183D0(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
  v3[4] = *v1;
  v3[5] = v4;
  swift_beginAccess();
  return sub_1C1E18480;
}

double sub_1C1E18498()
{
  v1 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_1C1E184FC(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
  v3[4] = *v1;
  v3[5] = v4;
  swift_beginAccess();
  return sub_1C1E185AC;
}

double sub_1C1E185C4()
{
  v1 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1C1E18628(uint64_t *a1, uint64_t a2, double a3)
{
  v5 = *a1;
  v6 = swift_beginAccess();
  *(v3 + v5) = a3;
  if (a3 < 0.4)
  {
    MEMORY[0x1EEE9AC00](v6);
    sub_1C1E5395C();
    sub_1C1E5291C();
  }
}

uint64_t (*sub_1C1E18718(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  v3[4] = *v1;
  v3[5] = v4;
  swift_beginAccess();
  return sub_1C1E187C8;
}

void sub_1C1E187E0(void *a1, char a2, uint64_t a3)
{
  v4 = *a1;
  v5 = swift_endAccess();
  if ((a2 & 1) == 0 && *(v4[3] + v4[5]) < 0.4)
  {
    MEMORY[0x1EEE9AC00](v5);
    sub_1C1E5395C();
    sub_1C1E5291C();
  }

  free(v4);
}

double sub_1C1E188D0(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *a1;
  swift_beginAccess();
  return *(v1 + v5) * (v4 * *(v1 + v5));
}

__n128 sub_1C1E189AC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v4 = v3 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__plotRect;
  swift_beginAccess();
  v5 = *(v4 + 32);
  result = *v4;
  v7 = *(v4 + 16);
  *a2 = *v4;
  *(a2 + 16) = v7;
  *(a2 + 32) = v5;
  return result;
}

void sub_1C1E18A7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2[0] = *a1;
  v2[1] = v1;
  v3 = *(a1 + 32);
  sub_1C1E15710(v2);
}

__n128 sub_1C1E18ABC@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v3 = v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__plotRect;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t (*sub_1C1E18B8C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E1894C(v4);
  return sub_1C1E18CC4;
}

uint64_t sub_1C1E18D80(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

uint64_t (*sub_1C1E18DDC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E18CD0(v4);
  return sub_1C1E18F14;
}

uint64_t sub_1C1E18F94@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v7 = *a3;
  result = swift_beginAccess();
  *a4 = *(v6 + v7);
  return result;
}

uint64_t sub_1C1E19098(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_1C1E1914C(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowEqualizeAxes;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

uint64_t (*sub_1C1E191A8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E18F20(v4);
  return sub_1C1E192E0;
}

uint64_t sub_1C1E1939C(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowCenterOrigin;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

uint64_t (*sub_1C1E193F8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E192EC(v4);
  return sub_1C1E19530;
}

uint64_t sub_1C1E19548(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_xDragStartPlottable;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1C1E19614(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_1C1E1965C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_yDragStartPlottable;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1C1E1971C()
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();
}

uint64_t sub_1C1E197C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  *a2 = *(v3 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);
}

void sub_1C1E198A8(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions) = a2;

  v3 = (a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___xAxisLabel);
  if (*(a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___xAxisLabel + 8))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
  }

  v5 = (a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___yAxisLabel);
  if (*(a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___yAxisLabel + 8))
  {
    v6 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v6);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }

  else
  {
    *v5 = 0;
    v5[1] = 0;
  }

  v7 = (a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___zAxisLabel);
  if (*(a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___zAxisLabel + 8))
  {
    v8 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v8);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }

  else
  {
    *v7 = 0;
    v7[1] = 0;
  }
}

id sub_1C1E19BA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
  [v4 lock];
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v5 = *(v3 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  result = [v4 unlock];
  *a2 = v5;
  return result;
}

id sub_1C1E19C90(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);

  [v3 lock];
  sub_1C1E15A20(v2);

  return [v3 unlock];
}

uint64_t sub_1C1E19D04()
{
  v1 = *(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
  [v1 lock];
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v2 = *(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  [v1 unlock];
  return v2;
}

id sub_1C1E19DE4(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
  [v3 lock];
  sub_1C1E15A20(a1);

  return [v3 unlock];
}

void (*sub_1C1E19E4C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
  a1[2] = v1;
  a1[3] = v3;
  [v3 lock];
  swift_getKeyPath();
  a1[1] = v1;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v4 = *(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  [v3 unlock];
  *a1 = v4;
  return sub_1C1E19F54;
}

void sub_1C1E19F54(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[3];
  if (a2)
  {

    [v3 lock];
    sub_1C1E15A20(v2);
    [v3 unlock];
  }

  else
  {
    [a1[3] lock];
    sub_1C1E15A20(v2);

    [v3 unlock];
  }
}

uint64_t sub_1C1E1A0B8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

uint64_t (*sub_1C1E1A17C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E1A00C(v4);
  return sub_1C1E1A2B4;
}

void sub_1C1E1A2C0()
{
  v1 = v0;
  sub_1C1E1C5E4(&v55);
  v2 = v55;
  v3 = v56;
  v5 = v57;
  v4 = v58;
  v7 = v59;
  v6 = v60;
  swift_getKeyPath();
  v55 = v0;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v8 = (*&v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  swift_beginAccess();
  v9 = v8[1];
  if (v2 + -0.01 < *v8 && *v8 < v2 + 0.01 && v3 + -0.01 < v9 && v9 < v3 + 0.01)
  {
    swift_getKeyPath();
    v55 = v0;
    sub_1C1E520BC();

    v14 = (*&v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
    swift_beginAccess();
    v13 = 1;
    if (v5 + -0.01 < *v14 && *v14 < v5 + 0.01)
    {
      v15 = v14[1];
      if (v4 + -0.01 < v15)
      {
        v13 = v15 >= v4 + 0.01;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  swift_getKeyPath();
  v55 = v1;
  sub_1C1E520BC();

  v16 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType;
  swift_beginAccess();
  v17 = *(*&v1 + v16);
  v18 = v17 | v13;
  if (v17 == 1 && !v13)
  {
    swift_getKeyPath();
    v55 = v1;
    sub_1C1E520BC();

    v19 = (*&v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
    swift_beginAccess();
    v18 = 1;
    if (v7 + -0.01 < *v19 && *v19 < v7 + 0.01)
    {
      v20 = v19[1];
      if (v6 + -0.01 < v20)
      {
        v18 = v20 >= v6 + 0.01;
      }
    }
  }

  v21 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter;
  swift_beginAccess();
  if ((v18 & 1) == *(*&v1 + v21))
  {
    *(*&v1 + v21) = v18 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v55 = v1;
    sub_1C1E520AC();
  }

  sub_1C1E1AB64(&v55);
  v24 = v55;
  v23 = v56;
  v26 = v57;
  v25 = v58;
  v28 = v59;
  v27 = v60;
  swift_getKeyPath();
  v55 = v1;
  sub_1C1E520BC();

  v29 = 1;
  if (v24 + -0.01 < *v8 && *v8 < v24 + 0.01)
  {
    v30 = v8[1];
    if (v23 + -0.01 < v30 && v30 < v23 + 0.01)
    {
      swift_getKeyPath();
      v55 = v1;
      sub_1C1E520BC();

      v31 = (*&v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
      swift_beginAccess();
      if (v26 + -0.01 < *v31 && *v31 < v26 + 0.01)
      {
        v32 = v31[1];
        if (v25 + -0.01 < v32)
        {
          v29 = v32 >= v25 + 0.01;
        }
      }
    }
  }

  swift_getKeyPath();
  v55 = v1;
  sub_1C1E520BC();

  v33 = *(*&v1 + v16);
  v34 = v33 | v29;
  if (v33 == 1 && !v29)
  {
    swift_getKeyPath();
    v55 = v1;
    sub_1C1E520BC();

    v35 = (*&v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
    swift_beginAccess();
    v34 = 1;
    if (v28 + -0.01 < *v35 && *v35 < v28 + 0.01)
    {
      v36 = v35[1];
      if (v27 + -0.01 < v36)
      {
        v34 = v36 >= v27 + 0.01;
      }
    }
  }

  v37 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowEqualizeAxes;
  swift_beginAccess();
  if ((v34 & 1) == *(*&v1 + v37))
  {
    *(*&v1 + v37) = v34 & 1;
  }

  else
  {
    v38 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v38);
    v55 = v1;
    sub_1C1E520AC();
  }

  sub_1C1E1AFAC(&v55);
  v40 = v55;
  v39 = v56;
  v42 = v57;
  v41 = v58;
  v44 = v59;
  v43 = v60;
  swift_getKeyPath();
  v55 = v1;
  sub_1C1E520BC();

  v45 = 1;
  if (v40 + -0.01 < *v8 && *v8 < v40 + 0.01)
  {
    v46 = v8[1];
    if (v39 + -0.01 < v46 && v46 < v39 + 0.01)
    {
      swift_getKeyPath();
      v55 = v1;
      sub_1C1E520BC();

      v47 = (*&v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
      swift_beginAccess();
      if (v42 + -0.01 < *v47 && *v47 < v42 + 0.01)
      {
        v48 = v47[1];
        if (v41 + -0.01 < v48)
        {
          v45 = v48 >= v41 + 0.01;
        }
      }
    }
  }

  swift_getKeyPath();
  v55 = v1;
  sub_1C1E520BC();

  v49 = *(*&v1 + v16);
  v50 = v49 | v45;
  if (v49 == 1 && !v45)
  {
    swift_getKeyPath();
    v55 = v1;
    sub_1C1E520BC();

    v51 = (*&v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
    swift_beginAccess();
    v50 = 1;
    if (v44 + -0.01 < *v51 && *v51 < v44 + 0.01)
    {
      v52 = v51[1];
      if (v43 + -0.01 < v52)
      {
        v50 = v52 >= v43 + 0.01;
      }
    }
  }

  v53 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowCenterOrigin;
  swift_beginAccess();
  if ((v50 & 1) == *(*&v1 + v53))
  {
    *(*&v1 + v53) = v50 & 1;
  }

  else
  {
    v54 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v54);
    sub_1C1E520AC();
  }
}

void sub_1C1E1AB64(double *a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v4 = (v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  swift_beginAccess();
  v5 = v4[1];
  swift_getKeyPath();
  sub_1C1E520BC();

  v6 = v5 - *v4;
  swift_getKeyPath();
  sub_1C1E520BC();

  v7 = (v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  swift_beginAccess();
  v8 = v7[1];
  swift_getKeyPath();
  sub_1C1E520BC();

  v9 = v8 - *v7;
  swift_getKeyPath();
  sub_1C1E520BC();

  v10 = (v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  swift_beginAccess();
  v11 = v10[1];
  swift_getKeyPath();
  sub_1C1E520BC();

  v12 = v11 - *v10;
  if (v6 > v9)
  {
    v13 = v6;
  }

  else
  {
    v13 = v9;
  }

  swift_getKeyPath();
  sub_1C1E520BC();

  v14 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType;
  swift_beginAccess();
  if ((*(v2 + v14) & (v13 <= v12)) != 0)
  {
    v13 = v12;
  }

  swift_getKeyPath();
  sub_1C1E520BC();

  v15 = (v13 - v6) * 0.5;
  v16 = *v4 - v15;
  swift_getKeyPath();
  sub_1C1E520BC();

  v17 = v15 + v4[1];
  if (v16 > v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  swift_getKeyPath();
  sub_1C1E520BC();

  v18 = (v13 - v9) * 0.5;
  v19 = *v7 - v18;
  swift_getKeyPath();
  sub_1C1E520BC();

  v20 = v18 + v7[1];
  if (v19 > v20)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_getKeyPath();
  sub_1C1E520BC();

  v21 = (v13 - v12) * 0.5;
  v22 = *v10 - v21;
  swift_getKeyPath();
  sub_1C1E520BC();

  v23 = v21 + v10[1];
  if (v22 <= v23)
  {
    *a1 = v16;
    a1[1] = v17;
    a1[2] = v19;
    a1[3] = v20;
    a1[4] = v22;
    a1[5] = v23;
    return;
  }

LABEL_12:
  __break(1u);
}

void sub_1C1E1AFAC(double *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v3 = (v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  swift_beginAccess();
  v4 = v3[1];
  swift_getKeyPath();
  sub_1C1E520BC();

  v5 = v4 - *v3;
  swift_getKeyPath();
  sub_1C1E520BC();

  v6 = (v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  swift_beginAccess();
  v7 = v6[1];
  swift_getKeyPath();
  sub_1C1E520BC();

  v8 = v7 - *v6;
  swift_getKeyPath();
  sub_1C1E520BC();

  v9 = (v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  swift_beginAccess();
  v10 = v9[1];
  swift_getKeyPath();
  sub_1C1E520BC();

  v11 = v10 - *v9;
  v12 = v8 * -0.5;
  v13 = v8 * 0.5;
  v14 = v11 * -0.5;
  v15 = v11 * 0.5;
  if (v5 * -0.5 > v5 * 0.5 || v12 > v13 || v14 > v15)
  {
    __break(1u);
  }

  else
  {
    *a1 = v5 * -0.5;
    a1[1] = v5 * 0.5;
    a1[2] = v12;
    a1[3] = v13;
    a1[4] = v14;
    a1[5] = v15;
  }
}

void sub_1C1E1B224()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v2 = (v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  swift_beginAccess();
  v3 = *v2;
  swift_getKeyPath();
  v10 = v0;
  sub_1C1E520BC();

  v4 = (v3 + v2[1]) * 0.5;
  v5 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
  swift_beginAccess();
  *(v10 + v5) = v4;
  swift_getKeyPath();
  sub_1C1E520BC();

  v6 = v2[1];
  swift_getKeyPath();
  sub_1C1E520BC();

  v7 = sqrt(v6 - *v2);
  v8 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
  v9 = swift_beginAccess();
  *(v10 + v8) = v7;
  if (v7 < 0.4)
  {
    MEMORY[0x1EEE9AC00](v9);
    sub_1C1E5395C();
    sub_1C1E5291C();
  }

  sub_1C1E1A2C0();
  swift_getKeyPath();
  sub_1C1E520BC();

  swift_getKeyPath();
  sub_1C1E520DC();

  *(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = (*(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) & 1) == 0;
  swift_getKeyPath();
  sub_1C1E520CC();
}

uint64_t (*sub_1C1E1B540(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C1E1B5A4;
}

uint64_t (*sub_1C1E1B640(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E1B540(v4);
  return sub_1C1E1B778;
}

void sub_1C1E1B784()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v2 = (v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  swift_beginAccess();
  v3 = *v2;
  swift_getKeyPath();
  v10 = v0;
  sub_1C1E520BC();

  v4 = (v3 + v2[1]) * 0.5;
  v5 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
  swift_beginAccess();
  *(v10 + v5) = v4;
  swift_getKeyPath();
  sub_1C1E520BC();

  v6 = v2[1];
  swift_getKeyPath();
  sub_1C1E520BC();

  v7 = sqrt(v6 - *v2);
  v8 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
  v9 = swift_beginAccess();
  *(v10 + v8) = v7;
  if (v7 < 0.4)
  {
    MEMORY[0x1EEE9AC00](v9);
    sub_1C1E5395C();
    sub_1C1E5291C();
  }

  sub_1C1E1A2C0();
  swift_getKeyPath();
  sub_1C1E520BC();

  swift_getKeyPath();
  sub_1C1E520DC();

  *(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = (*(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) & 1) == 0;
  swift_getKeyPath();
  sub_1C1E520CC();
}

uint64_t (*sub_1C1E1BAA0(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C1E1BB04;
}

uint64_t sub_1C1E1BB1C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

__n128 sub_1C1E1BB74@<Q0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, __n128 *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v7 = *a3;
  swift_beginAccess();
  result = *(v6 + v7);
  *a4 = result;
  return result;
}

double sub_1C1E1BC78(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v4 = v2 + *a2;
  swift_beginAccess();
  return *v4;
}

uint64_t (*sub_1C1E1BD64(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E1BAA0(v4);
  return sub_1C1E1BE9C;
}

void sub_1C1E1BEA8()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v2 = (v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  swift_beginAccess();
  v3 = *v2;
  swift_getKeyPath();
  v10 = v0;
  sub_1C1E520BC();

  v4 = (v3 + v2[1]) * 0.5;
  v5 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
  swift_beginAccess();
  *(v10 + v5) = v4;
  swift_getKeyPath();
  sub_1C1E520BC();

  v6 = v2[1];
  swift_getKeyPath();
  sub_1C1E520BC();

  v7 = sqrt(v6 - *v2);
  v8 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  v9 = swift_beginAccess();
  *(v10 + v8) = v7;
  if (v7 < 0.4)
  {
    MEMORY[0x1EEE9AC00](v9);
    sub_1C1E5395C();
    sub_1C1E5291C();
  }

  sub_1C1E1A2C0();
  swift_getKeyPath();
  sub_1C1E520BC();

  swift_getKeyPath();
  sub_1C1E520DC();

  *(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = (*(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) & 1) == 0;
  swift_getKeyPath();
  sub_1C1E520CC();
}

uint64_t (*sub_1C1E1C1C4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C1E1C228;
}

uint64_t type metadata accessor for GraphViewModel(uint64_t a1)
{
  result = qword_1EDE74840;
  if (!qword_1EDE74840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1E1C2DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

__n128 sub_1C1E1C330()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__plotRect;
  swift_beginAccess();
  result = *v1;
  v4 = *(v1 + 16);
  *(v2 + 32) = *(v1 + 32);
  *v2 = result;
  *(v2 + 16) = v4;
  return result;
}

uint64_t sub_1C1E1C42C(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), double a4, double a5)
{
  v8 = (a1 + *a2);
  v9 = swift_beginAccess();
  *v8 = a4;
  v8[1] = a5;
  return a3(v9);
}

uint64_t (*sub_1C1E1C4A0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E1C1C4(v4);
  return sub_1C1E1C5D8;
}

void sub_1C1E1C5E4(double *a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = type metadata accessor for Function(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v52 - v8;
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v52 - v12;
  v14 = *(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
  [v14 lock];
  swift_getKeyPath();
  v15 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  v60 = v2;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  v58 = v15;
  sub_1C1E520BC();

  v16 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions;
  v17 = *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  [v14 unlock];
  if (!*(v17 + 16))
  {

    v23 = 5.0;
    v22 = -5.0;
    v24 = -5.0;
    v25 = 5.0;
    v26 = -5.0;
    v27 = 5.0;
LABEL_40:
    v51 = v57;
    *v57 = v22;
    v51[1] = v23;
    v51[2] = v24;
    v51[3] = v25;
    v51[4] = v26;
    v51[5] = v27;
    return;
  }

  v56 = v4;
  v53 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  sub_1C1DE160C(v17 + v53, v9);

  sub_1C1DF7E98(v9, v13);
  v54 = *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_lock);
  [v54 lock];
  v20 = *(v13 + 12);
  v21 = v16;
  if (*(v20 + 40) == 1)
  {
    sub_1C1E5243C();
    v22 = v18.n128_f64[0];
    v23 = v19.n128_f64[0];
    *(v20 + 24) = v18.n128_u64[0];
    *(v20 + 32) = v19.n128_u64[0];
    *(v20 + 40) = 0;
  }

  else
  {
    v22 = *(v20 + 24);
    v23 = *(v20 + 32);
  }

  Function.defaultYDomain.getter(v18, v19);
  v24 = v28;
  v25 = v29;
  swift_getKeyPath();
  v60 = v2;
  sub_1C1E520BC();

  v30 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType;
  swift_beginAccess();
  v31 = *(v2 + v30);
  v32 = v56;
  v55 = v13;
  if (v31 == 1)
  {
    Function.defaultZDomain.getter();
    v26 = v33;
    v27 = v34;
  }

  else
  {
    v26 = -5.0;
    v27 = 5.0;
  }

  [v14 lock];
  swift_getKeyPath();
  v59 = v2;
  sub_1C1E520BC();

  v35 = *(v2 + v21);

  [v14 unlock];
  v36 = *(v35 + 16);
  if (!v36)
  {
LABEL_39:

    [v54 unlock];
    sub_1C1DE1670(v55);
    goto LABEL_40;
  }

  v52 = v35;
  v37 = v35 + v53;
  v38 = *(v32 + 72);
  while (1)
  {
    sub_1C1DE160C(v37, v6);
    v39 = *(v6 + 12);
    if (*(v39 + 40) == 1)
    {
      sub_1C1E5243C();
      *(v39 + 24) = v40;
      *(v39 + 32) = v41;
      *(v39 + 40) = 0;
    }

    else
    {
      v40 = *(v39 + 24);
      v41 = *(v39 + 32);
    }

    if (v40 < v22)
    {
      v22 = v40;
    }

    if (v23 <= v41)
    {
      v23 = v41;
    }

    if (v22 > v23)
    {
      break;
    }

    v42 = *(v6 + 13);
    if (v42)
    {
      if (*(v42 + 40))
      {

        sub_1C1E5243C();
        v44 = v43;
        v46 = v45;
        *(v42 + 24) = v43;
        *(v42 + 32) = v45;
        *(v42 + 40) = 0;
      }

      else
      {
        v44 = *(v42 + 24);
        v46 = *(v42 + 32);
      }
    }

    else if (*(v39 + 64))
    {
      sub_1C1E5244C();
      v44 = v47;
      v46 = v48;
      *(v39 + 48) = v47;
      *(v39 + 56) = v48;
      *(v39 + 64) = 0;
    }

    else
    {
      v44 = *(v39 + 48);
      v46 = *(v39 + 56);
    }

    if (v44 < v24)
    {
      v24 = v44;
    }

    if (v25 <= v46)
    {
      v25 = v46;
    }

    if (v24 > v25)
    {
      goto LABEL_42;
    }

    swift_getKeyPath();
    v59 = v2;
    sub_1C1E520BC();

    if (*(v2 + v30))
    {
      Function.defaultZDomain.getter();
      if (v49 < v26)
      {
        v26 = v49;
      }

      if (v27 <= v50)
      {
        v27 = v50;
      }

      if (v26 > v27)
      {
        __break(1u);
        goto LABEL_39;
      }
    }

    sub_1C1DE1670(v6);
    v37 += v38;
    if (!--v36)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t sub_1C1E1CB98(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v4 = *(v2 + *a2);

  return v4;
}

uint64_t sub_1C1E1CC4C@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v7 = (v6 + *a3);
  v8 = v7[1];
  *a4 = *v7;
  a4[1] = v8;
}

uint64_t sub_1C1E1CD1C()
{
  v1 = v0;
  v2 = type metadata accessor for Function(0);
  v43 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D590, &qword_1C1E59210);
  v49 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v46 = &v39 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D598, &qword_1C1E59218);
  v44 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5A0, &qword_1C1E59220);
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v39 - v9;
  swift_getKeyPath();
  v10 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  v55 = v0;
  v11 = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v53 = (v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___xAxisLabel);
  if (!*(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___xAxisLabel + 8))
  {
    v12 = *(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
    [v12 lock];
    swift_getKeyPath();
    v50 = v10;
    v55 = v0;
    sub_1C1E520BC();

    v13 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions;
    v14 = *(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

    [v12 unlock];
    v15 = *(v14 + 16);

    if (v15)
    {
      v41 = v7;
      [v12 lock];
      swift_getKeyPath();
      v55 = v1;
      v42 = v11;
      sub_1C1E520BC();

      v16 = *(v1 + v13);

      [v12 unlock];
      v17 = *(v16 + 16);
      if (v17)
      {
        v40 = v1;
        v55 = MEMORY[0x1E69E7CC0];
        sub_1C1E26720(0, v17, 0);
        v18 = v55;
        v19 = *(v43 + 80);
        v39 = v16;
        v20 = v16 + ((v19 + 32) & ~v19);
        v21 = *(v43 + 72);
        do
        {
          sub_1C1DE160C(v20, v4);
          v22 = *(v4 + 2);
          v23 = *(v4 + 3);

          sub_1C1DE1670(v4);
          v55 = v18;
          v25 = *(v18 + 16);
          v24 = *(v18 + 24);
          if (v25 >= v24 >> 1)
          {
            sub_1C1E26720((v24 > 1), v25 + 1, 1);
            v18 = v55;
          }

          *(v18 + 16) = v25 + 1;
          v26 = v18 + 16 * v25;
          *(v26 + 32) = v22;
          *(v26 + 40) = v23;
          v20 += v21;
          --v17;
        }

        while (v17);

        v1 = v40;
      }

      else
      {
      }

      v27 = v52;
      v55 = MEMORY[0x1E69E7CD0];

      sub_1C1E26A24(v28);
      v30 = v29;
      v43 = v29;

      v54 = v30;
      v31 = v44;
      v32 = v41;
      (*(v44 + 104))(v41, *MEMORY[0x1E6968638], v51);
      v33 = v49;
      v34 = v46;
      (*(v49 + 104))(v46, *MEMORY[0x1E6968650], v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5A8, &qword_1C1E5A8C0);
      sub_1C1DC1124(&qword_1EBF1D5B0, &qword_1EBF1D5A8, &qword_1C1E5A8C0, MEMORY[0x1E69E6328]);
      v35 = v45;
      sub_1C1E51DFC();
      (*(v33 + 8))(v34, v52);
      (*(v31 + 8))(v32, v51);
      sub_1C1DC1124(&qword_1EBF1D5B8, &qword_1EBF1D5A0, &qword_1C1E59220, MEMORY[0x1E6968670]);
      v36 = v48;
      sub_1C1E547AC();
      (*(v47 + 8))(v35, v36);

      sub_1C1E15DFC(v55, v56);
    }
  }

  swift_getKeyPath();
  v55 = v1;
  sub_1C1E520BC();

  if (v53[1])
  {
    v37 = *v53;
  }

  else
  {
    v37 = 120;
  }

  return v37;
}

uint64_t sub_1C1E1D3D4()
{
  v1 = v0;
  v2 = type metadata accessor for Function(0);
  v43 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D590, &qword_1C1E59210);
  v49 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v46 = &v39 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D598, &qword_1C1E59218);
  v44 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5A0, &qword_1C1E59220);
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v39 - v9;
  swift_getKeyPath();
  v10 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  v55 = v0;
  v11 = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v53 = (v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___yAxisLabel);
  if (!*(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___yAxisLabel + 8))
  {
    v12 = *(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
    [v12 lock];
    swift_getKeyPath();
    v50 = v10;
    v55 = v0;
    sub_1C1E520BC();

    v13 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions;
    v14 = *(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

    [v12 unlock];
    v15 = *(v14 + 16);

    if (v15)
    {
      v41 = v7;
      [v12 lock];
      swift_getKeyPath();
      v55 = v1;
      v42 = v11;
      sub_1C1E520BC();

      v16 = *(v1 + v13);

      [v12 unlock];
      v17 = *(v16 + 16);
      if (v17)
      {
        v40 = v1;
        v55 = MEMORY[0x1E69E7CC0];
        sub_1C1E26720(0, v17, 0);
        v18 = v55;
        v19 = *(v43 + 80);
        v39 = v16;
        v20 = v16 + ((v19 + 32) & ~v19);
        v21 = *(v43 + 72);
        do
        {
          sub_1C1DE160C(v20, v4);
          v22 = *(v4 + 4);
          v23 = *(v4 + 5);

          sub_1C1DE1670(v4);
          v55 = v18;
          v25 = *(v18 + 16);
          v24 = *(v18 + 24);
          if (v25 >= v24 >> 1)
          {
            sub_1C1E26720((v24 > 1), v25 + 1, 1);
            v18 = v55;
          }

          *(v18 + 16) = v25 + 1;
          v26 = v18 + 16 * v25;
          *(v26 + 32) = v22;
          *(v26 + 40) = v23;
          v20 += v21;
          --v17;
        }

        while (v17);

        v1 = v40;
      }

      else
      {
      }

      v27 = v52;
      v55 = MEMORY[0x1E69E7CD0];

      sub_1C1E26A24(v28);
      v30 = v29;
      v43 = v29;

      v54 = v30;
      v31 = v44;
      v32 = v41;
      (*(v44 + 104))(v41, *MEMORY[0x1E6968638], v51);
      v33 = v49;
      v34 = v46;
      (*(v49 + 104))(v46, *MEMORY[0x1E6968650], v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5A8, &qword_1C1E5A8C0);
      sub_1C1DC1124(&qword_1EBF1D5B0, &qword_1EBF1D5A8, &qword_1C1E5A8C0, MEMORY[0x1E69E6328]);
      v35 = v45;
      sub_1C1E51DFC();
      (*(v33 + 8))(v34, v52);
      (*(v31 + 8))(v32, v51);
      sub_1C1DC1124(&qword_1EBF1D5B8, &qword_1EBF1D5A0, &qword_1C1E59220, MEMORY[0x1E6968670]);
      v36 = v48;
      sub_1C1E547AC();
      (*(v47 + 8))(v35, v36);

      sub_1C1E15E24(v55, v56);
    }
  }

  swift_getKeyPath();
  v55 = v1;
  sub_1C1E520BC();

  if (v53[1])
  {
    v37 = *v53;
  }

  else
  {
    v37 = 121;
  }

  return v37;
}

uint64_t sub_1C1E1DA8C()
{
  v1 = v0;
  v2 = type metadata accessor for Function(0);
  v43 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D590, &qword_1C1E59210);
  v49 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v46 = &v39 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D598, &qword_1C1E59218);
  v44 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5A0, &qword_1C1E59220);
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v39 - v9;
  swift_getKeyPath();
  v10 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  v55 = v0;
  v11 = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v53 = (v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___zAxisLabel);
  if (!*(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___zAxisLabel + 8))
  {
    v12 = *(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
    [v12 lock];
    swift_getKeyPath();
    v50 = v10;
    v55 = v0;
    sub_1C1E520BC();

    v13 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions;
    v14 = *(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

    [v12 unlock];
    v15 = *(v14 + 16);

    if (v15)
    {
      v41 = v7;
      [v12 lock];
      swift_getKeyPath();
      v55 = v1;
      v42 = v11;
      sub_1C1E520BC();

      v16 = *(v1 + v13);

      [v12 unlock];
      v17 = *(v16 + 16);
      if (v17)
      {
        v40 = v1;
        v55 = MEMORY[0x1E69E7CC0];
        sub_1C1E26720(0, v17, 0);
        v18 = v55;
        v19 = *(v43 + 80);
        v39 = v16;
        v20 = v16 + ((v19 + 32) & ~v19);
        v21 = *(v43 + 72);
        do
        {
          sub_1C1DE160C(v20, v4);
          v22 = *(v4 + 6);
          v23 = *(v4 + 7);

          sub_1C1DE1670(v4);
          v55 = v18;
          v25 = *(v18 + 16);
          v24 = *(v18 + 24);
          if (v25 >= v24 >> 1)
          {
            sub_1C1E26720((v24 > 1), v25 + 1, 1);
            v18 = v55;
          }

          *(v18 + 16) = v25 + 1;
          v26 = v18 + 16 * v25;
          *(v26 + 32) = v22;
          *(v26 + 40) = v23;
          v20 += v21;
          --v17;
        }

        while (v17);

        v1 = v40;
      }

      else
      {
      }

      v27 = v52;
      v55 = MEMORY[0x1E69E7CD0];

      sub_1C1E26A24(v28);
      v30 = v29;
      v43 = v29;

      v54 = v30;
      v31 = v44;
      v32 = v41;
      (*(v44 + 104))(v41, *MEMORY[0x1E6968638], v51);
      v33 = v49;
      v34 = v46;
      (*(v49 + 104))(v46, *MEMORY[0x1E6968650], v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5A8, &qword_1C1E5A8C0);
      sub_1C1DC1124(&qword_1EBF1D5B0, &qword_1EBF1D5A8, &qword_1C1E5A8C0, MEMORY[0x1E69E6328]);
      v35 = v45;
      sub_1C1E51DFC();
      (*(v33 + 8))(v34, v52);
      (*(v31 + 8))(v32, v51);
      sub_1C1DC1124(&qword_1EBF1D5B8, &qword_1EBF1D5A0, &qword_1C1E59220, MEMORY[0x1E6968670]);
      v36 = v48;
      sub_1C1E547AC();
      (*(v47 + 8))(v35, v36);

      sub_1C1E15FC8(v55, v56);
    }
  }

  swift_getKeyPath();
  v55 = v1;
  sub_1C1E520BC();

  if (v53[1])
  {
    v37 = *v53;
  }

  else
  {
    v37 = 122;
  }

  return v37;
}

uint64_t sub_1C1E1E144@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  result = swift_beginAccess();
  *a2 = *(v3 + 16) == 1;
  return result;
}

BOOL sub_1C1E1E208()
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  swift_beginAccess();
  return *(v0 + 16) == 1;
}

double sub_1C1E1E2C4(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 16) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }

  return result;
}

void (*sub_1C1E1E3E0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
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
  *(v4 + 40) = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  *(v4 + 48) = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  swift_beginAccess();
  *(v4 + 56) = *(v1 + 16) == 1;
  return sub_1C1E1E4F4;
}

void sub_1C1E1E4F4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 56);
  v5 = *(v3 + 16);
  if (a2)
  {
    if (v5 != v4)
    {
      goto LABEL_5;
    }
  }

  else if (v5 != v4)
  {
LABEL_5:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v2[3] = v3;
    sub_1C1E520AC();
  }

  free(v2);
}

uint64_t sub_1C1E1E640@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  result = swift_beginAccess();
  *a2 = *(v3 + 16) == 2;
  return result;
}

BOOL sub_1C1E1E704()
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  swift_beginAccess();
  return *(v0 + 16) == 2;
}

double sub_1C1E1E7C0(char a1)
{
  if (a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  swift_beginAccess();
  if (*(v1 + 16) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }

  return result;
}

void (*sub_1C1E1E8E4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
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
  *(v4 + 40) = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  *(v4 + 48) = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  swift_beginAccess();
  *(v4 + 56) = *(v1 + 16) == 2;
  return sub_1C1E1E9F8;
}

void sub_1C1E1E9F8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (*(*a1 + 56))
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 16);
  if (a2)
  {
    if (v5 != v4)
    {
      goto LABEL_8;
    }
  }

  else if (v5 != v4)
  {
LABEL_8:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v2[3] = v3;
    sub_1C1E520AC();
  }

  free(v2);
}

uint64_t sub_1C1E1EB50@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  result = swift_beginAccess();
  *a2 = *(v3 + 16) == 3;
  return result;
}

BOOL sub_1C1E1EC14()
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  swift_beginAccess();
  return *(v0 + 16) == 3;
}

double sub_1C1E1ECD0(char a1)
{
  if (a1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  swift_beginAccess();
  if (*(v1 + 16) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }

  return result;
}

void (*sub_1C1E1EDF4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
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
  *(v4 + 40) = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  *(v4 + 48) = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  swift_beginAccess();
  *(v4 + 56) = *(v1 + 16) == 3;
  return sub_1C1E1EF08;
}

void sub_1C1E1EF08(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (*(*a1 + 56))
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v3 + 16);
  if (a2)
  {
    if (v5 != v4)
    {
      goto LABEL_8;
    }
  }

  else if (v5 != v4)
  {
LABEL_8:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v2[3] = v3;
    sub_1C1E520AC();
  }

  free(v2);
}

void sub_1C1E1F060(int a1)
{
  v2 = v1;
  v4 = sub_1C1E539CC();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v51 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1C1E539EC();
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v49 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1C1E53A0C();
  v48 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v47 = v46 - v10;
  v11 = sub_1C1E51F5C();
  v55 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v56) = a1;
  v14 = (a1 & 1) == 0;
  swift_beginAccess();
  if (*(*&v2 + 16) != v14)
  {
    KeyPath = swift_getKeyPath();
    v46[1] = v46;
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v46[-2] = v2;
    LOBYTE(v46[-1]) = v14;
    v58 = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }

  v16 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter;
  swift_beginAccess();
  if (*(*&v2 + v16))
  {
    v17 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v17);
    *&v46[-2] = v2;
    LOBYTE(v46[-1]) = 0;
    v58 = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }

  else
  {
    *(*&v2 + v16) = 0;
  }

  v18 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakX) = *(*&v2 + v18);
  v19 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakY) = *(*&v2 + v19);
  v20 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakZ) = *(*&v2 + v20);
  v21 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterX) = *(*&v2 + v21);
  v22 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterY) = *(*&v2 + v22);
  v23 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterZ) = *(*&v2 + v23);
  sub_1C1E1C5E4(&v58);
  v25 = v58;
  v24 = *&v59;
  v27 = *&v60;
  v26 = v61;
  v29 = *&v62;
  v28 = v63;
  v30 = (*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  swift_beginAccess();
  if (*v30 == v25 && v30[1] == v24)
  {
    *v30 = v25;
    v30[1] = v24;
    sub_1C1E1B224();
  }

  else
  {
    v31 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v31);
    *&v46[-4] = v2;
    *&v46[-3] = v25;
    *&v46[-2] = v24;
    v58 = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }

  v32 = (*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  swift_beginAccess();
  if (*v32 == v27 && v32[1] == v26)
  {
    *v32 = v27;
    v32[1] = v26;
    sub_1C1E1B784();
  }

  else
  {
    v33 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v33);
    *&v46[-4] = v2;
    *&v46[-3] = v27;
    *&v46[-2] = v26;
    v58 = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }

  v34 = (*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  swift_beginAccess();
  if (*v34 == v29 && v34[1] == v28)
  {
    *v34 = v29;
    v34[1] = v28;
    sub_1C1E1BEA8();
  }

  else
  {
    v35 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v35);
    *&v46[-4] = v2;
    *&v46[-3] = v29;
    *&v46[-2] = v28;
    v58 = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }

  v36 = (v55 + 40);
  if (v56)
  {
    sub_1C1E51EEC();
    v37 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_centeringDate;
    swift_beginAccess();
    (*v36)(*&v2 + v37, v13, v11);
    swift_endAccess();
    if (*(*&v2 + 16))
    {
      v38 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v38);
      *&v46[-2] = v2;
      LOBYTE(v46[-1]) = 0;
      v58 = v2;
      sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
      sub_1C1E520AC();
    }
  }

  else
  {
    sub_1C1E51F3C();
    v39 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_centeringDate;
    swift_beginAccess();
    (*v36)(*&v2 + v39, v13, v11);
    swift_endAccess();
    sub_1C1E26BCC();
    v55 = sub_1C1E5494C();
    sub_1C1E539FC();
    v40 = v47;
    sub_1C1E53A1C();
    v56 = *(v48 + 8);
    v56(v8, v57);
    *&v62 = COERCE_DOUBLE(sub_1C1E26C18);
    v63 = v2;
    v58 = MEMORY[0x1E69E9820];
    v59 = 1107296256;
    *&v60 = COERCE_DOUBLE(sub_1C1E1FC50);
    v61 = COERCE_DOUBLE(&block_descriptor_2);
    v41 = _Block_copy(&v58);

    v42 = v49;
    sub_1C1E539DC();
    v58 = MEMORY[0x1E69E7CC0];
    sub_1C1DC4DB0(&qword_1EBF1D5C8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5D0, &qword_1C1E592A0);
    sub_1C1DC1124(&qword_1EBF1D5D8, &qword_1EBF1D5D0, &qword_1C1E592A0, MEMORY[0x1E69E6328]);
    v43 = v51;
    v44 = v54;
    sub_1C1E54A5C();
    v45 = v55;
    MEMORY[0x1C6910510](v40, v42, v43, v41);
    _Block_release(v41);

    (*(v53 + 8))(v43, v44);
    (*(v50 + 8))(v42, v52);
    v56(v40, v57);
  }
}

double sub_1C1E1FC50(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

void sub_1C1E1FC94(int a1)
{
  v2 = v1;
  v4 = sub_1C1E539CC();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1C1E539EC();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1C1E53A0C();
  v46 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v44 - v10;
  v11 = sub_1C1E51F5C();
  v53 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v54) = a1;
  if (a1)
  {
    v14 = 0;
  }

  else
  {
    v14 = 2;
  }

  swift_beginAccess();
  if (*(*&v2 + 16) != v14)
  {
    KeyPath = swift_getKeyPath();
    v44 = &v44;
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v44 - 2) = v2;
    *(&v44 - 8) = v14;
    v56 = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }

  v16 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakX) = *(*&v2 + v16);
  v17 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakY) = *(*&v2 + v17);
  v18 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakZ) = *(*&v2 + v18);
  v19 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterX) = *(*&v2 + v19);
  v20 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterY) = *(*&v2 + v20);
  v21 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterZ) = *(*&v2 + v21);
  sub_1C1E1AB64(&v56);
  v23 = v56;
  v22 = *&v57;
  v25 = *&v58;
  v24 = v59;
  v27 = *&v60;
  v26 = v61;
  v28 = (*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  swift_beginAccess();
  if (*v28 == v23 && v28[1] == v22)
  {
    *v28 = v23;
    v28[1] = v22;
    sub_1C1E1B224();
  }

  else
  {
    v29 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v29);
    *(&v44 - 4) = v2;
    *(&v44 - 3) = v23;
    *(&v44 - 2) = v22;
    v56 = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }

  v30 = (*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  swift_beginAccess();
  if (*v30 == v25 && v30[1] == v24)
  {
    *v30 = v25;
    v30[1] = v24;
    sub_1C1E1B784();
  }

  else
  {
    v31 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v31);
    *(&v44 - 4) = v2;
    *(&v44 - 3) = v25;
    *(&v44 - 2) = v24;
    v56 = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }

  v32 = (*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  swift_beginAccess();
  if (*v32 == v27 && v32[1] == v26)
  {
    *v32 = v27;
    v32[1] = v26;
    sub_1C1E1BEA8();
  }

  else
  {
    v33 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v33);
    *(&v44 - 4) = v2;
    *(&v44 - 3) = v27;
    *(&v44 - 2) = v26;
    v56 = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }

  sub_1C1E1A2C0();
  v34 = (v53 + 40);
  if (v54)
  {
    sub_1C1E51EEC();
    v35 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_centeringDate;
    swift_beginAccess();
    (*v34)(*&v2 + v35, v13, v11);
    swift_endAccess();
    if (*(*&v2 + 16))
    {
      v36 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v36);
      *(&v44 - 2) = v2;
      *(&v44 - 8) = 0;
      v56 = v2;
      sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
      sub_1C1E520AC();
    }
  }

  else
  {
    sub_1C1E51F3C();
    v37 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_centeringDate;
    swift_beginAccess();
    (*v34)(*&v2 + v37, v13, v11);
    swift_endAccess();
    sub_1C1E26BCC();
    v53 = sub_1C1E5494C();
    sub_1C1E539FC();
    v38 = v45;
    sub_1C1E53A1C();
    v54 = *(v46 + 8);
    v54(v8, v55);
    *&v60 = COERCE_DOUBLE(sub_1C1E26C18);
    v61 = v2;
    v56 = MEMORY[0x1E69E9820];
    v57 = 1107296256;
    *&v58 = COERCE_DOUBLE(sub_1C1E1FC50);
    v59 = COERCE_DOUBLE(&block_descriptor_104);
    v39 = _Block_copy(&v56);

    v40 = v47;
    sub_1C1E539DC();
    v56 = MEMORY[0x1E69E7CC0];
    sub_1C1DC4DB0(&qword_1EBF1D5C8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5D0, &qword_1C1E592A0);
    sub_1C1DC1124(&qword_1EBF1D5D8, &qword_1EBF1D5D0, &qword_1C1E592A0, MEMORY[0x1E69E6328]);
    v41 = v49;
    v42 = v52;
    sub_1C1E54A5C();
    v43 = v53;
    MEMORY[0x1C6910510](v38, v40, v41, v39);
    _Block_release(v39);

    (*(v51 + 8))(v41, v42);
    (*(v48 + 8))(v40, v50);
    v54(v38, v55);
  }
}

double sub_1C1E207A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(a1 + 16))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }

  return result;
}

void sub_1C1E208B0(int a1)
{
  v2 = v1;
  v4 = sub_1C1E539CC();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1C1E539EC();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1C1E53A0C();
  v46 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v44 - v10;
  v11 = sub_1C1E51F5C();
  v53 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v54) = a1;
  if (a1)
  {
    v14 = 0;
  }

  else
  {
    v14 = 3;
  }

  swift_beginAccess();
  if (*(*&v2 + 16) != v14)
  {
    KeyPath = swift_getKeyPath();
    v44 = &v44;
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v44 - 2) = v2;
    *(&v44 - 8) = v14;
    v56 = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }

  v16 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakX) = *(*&v2 + v16);
  v17 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakY) = *(*&v2 + v17);
  v18 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakZ) = *(*&v2 + v18);
  v19 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterX) = *(*&v2 + v19);
  v20 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterY) = *(*&v2 + v20);
  v21 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
  swift_beginAccess();
  *(*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterZ) = *(*&v2 + v21);
  sub_1C1E1AFAC(&v56);
  v23 = v56;
  v22 = *&v57;
  v25 = *&v58;
  v24 = v59;
  v27 = *&v60;
  v26 = v61;
  v28 = (*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  swift_beginAccess();
  if (*v28 == v23 && v28[1] == v22)
  {
    *v28 = v23;
    v28[1] = v22;
    sub_1C1E1B224();
  }

  else
  {
    v29 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v29);
    *(&v44 - 4) = v2;
    *(&v44 - 3) = v23;
    *(&v44 - 2) = v22;
    v56 = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }

  v30 = (*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  swift_beginAccess();
  if (*v30 == v25 && v30[1] == v24)
  {
    *v30 = v25;
    v30[1] = v24;
    sub_1C1E1B784();
  }

  else
  {
    v31 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v31);
    *(&v44 - 4) = v2;
    *(&v44 - 3) = v25;
    *(&v44 - 2) = v24;
    v56 = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }

  v32 = (*&v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  swift_beginAccess();
  if (*v32 == v27 && v32[1] == v26)
  {
    *v32 = v27;
    v32[1] = v26;
    sub_1C1E1BEA8();
  }

  else
  {
    v33 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v33);
    *(&v44 - 4) = v2;
    *(&v44 - 3) = v27;
    *(&v44 - 2) = v26;
    v56 = v2;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }

  sub_1C1E1A2C0();
  v34 = (v53 + 40);
  if (v54)
  {
    sub_1C1E51EEC();
    v35 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_centeringDate;
    swift_beginAccess();
    (*v34)(*&v2 + v35, v13, v11);
    swift_endAccess();
    if (*(*&v2 + 16))
    {
      v36 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v36);
      *(&v44 - 2) = v2;
      *(&v44 - 8) = 0;
      v56 = v2;
      sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
      sub_1C1E520AC();
    }
  }

  else
  {
    sub_1C1E51F3C();
    v37 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_centeringDate;
    swift_beginAccess();
    (*v34)(*&v2 + v37, v13, v11);
    swift_endAccess();
    sub_1C1E26BCC();
    v53 = sub_1C1E5494C();
    sub_1C1E539FC();
    v38 = v45;
    sub_1C1E53A1C();
    v54 = *(v46 + 8);
    v54(v8, v55);
    *&v60 = COERCE_DOUBLE(sub_1C1E26C18);
    v61 = v2;
    v56 = MEMORY[0x1E69E9820];
    v57 = 1107296256;
    *&v58 = COERCE_DOUBLE(sub_1C1E1FC50);
    v59 = COERCE_DOUBLE(&block_descriptor_112);
    v39 = _Block_copy(&v56);

    v40 = v47;
    sub_1C1E539DC();
    v56 = MEMORY[0x1E69E7CC0];
    sub_1C1DC4DB0(&qword_1EBF1D5C8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5D0, &qword_1C1E592A0);
    sub_1C1DC1124(&qword_1EBF1D5D8, &qword_1EBF1D5D0, &qword_1C1E592A0, MEMORY[0x1E69E6328]);
    v41 = v49;
    v42 = v52;
    sub_1C1E54A5C();
    v43 = v53;
    MEMORY[0x1C6910510](v38, v40, v41, v39);
    _Block_release(v39);

    (*(v51 + 8))(v41, v42);
    (*(v48 + 8))(v40, v50);
    v54(v38, v55);
  }
}

__n128 sub_1C1E21420@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v4 = (v3 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation);
  swift_beginAccess();
  v5 = v4[1].n128_u8[0];
  result = *v4;
  *a2 = *v4;
  a2[1].n128_u8[0] = v5;
  return result;
}

uint64_t sub_1C1E21524()
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v1 = v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
  swift_beginAccess();
  return *v1;
}

void sub_1C1E215E8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
  swift_beginAccess();
  if ((*(v7 + 16) & 1) == 0)
  {
    if ((a3 & 1) == 0 && *v7 == *&a1 && *(v7 + 8) == *&a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();

    return;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v7 = *&a1;
  *(v7 + 8) = *&a2;
  *(v7 + 16) = a3 & 1;
}

uint64_t sub_1C1E21758(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
  result = swift_beginAccess();
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4 & 1;
  return result;
}

uint64_t (*sub_1C1E217CC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E213C0(v4);
  return sub_1C1E21904;
}

uint64_t sub_1C1E21994(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D540, &qword_1C1E58F98);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  sub_1C1DC1424(a1, &v9[-v5], &qword_1EBF1D540, &qword_1C1E58F98);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520AC();

  return sub_1C1DC1870(v6, &qword_1EBF1D540, &qword_1C1E58F98);
}

uint64_t sub_1C1E21B08(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520AC();

  return sub_1C1DC1870(a1, &qword_1EBF1D540, &qword_1C1E58F98);
}

uint64_t (*sub_1C1E21C18(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E21910(v4);
  return sub_1C1E21D50;
}

uint64_t sub_1C1E21D80@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v10 = *a2;
  swift_beginAccess();
  return sub_1C1DC1424(v12 + v10, a5, a3, a4);
}

uint64_t sub_1C1E21E60@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v11 = *a3;
  swift_beginAccess();
  return sub_1C1DC1424(v10 + v11, a6, a4, a5);
}

uint64_t sub_1C1E21F44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5E0, &qword_1C1E592F8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1C1DC1424(a1, &v6 - v3, &qword_1EBF1D5E0, &qword_1C1E592F8);
  return sub_1C1E15FF0(v4);
}

uint64_t sub_1C1E21FF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15 - v11;
  sub_1C1DC1424(a2, &v15 - v11, a3, a4);
  v13 = *a5;
  swift_beginAccess();
  sub_1C1E28BBC(v12, a1 + v13, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1C1E220D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v16[0] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5E0, &qword_1C1E592F8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v16 - v4;
  v6 = sub_1C1E51F9C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v17 = v1;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v10 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__selectedFunctionID3D;
  swift_beginAccess();
  sub_1C1DC1424(v2 + v10, v5, &qword_1EBF1D5E0, &qword_1C1E592F8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1C1DC1870(v5, &qword_1EBF1D5E0, &qword_1C1E592F8);
    v11 = type metadata accessor for Function(0);
    return (*(*(v11 - 8) + 56))(v16[0], 1, 1, v11);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v13 = *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
    [v13 lock];
    swift_getKeyPath();
    v16[2] = v2;
    sub_1C1E520BC();

    v14 = *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

    v15 = [v13 unlock];
    MEMORY[0x1EEE9AC00](v15);
    v16[-2] = v9;
    sub_1C1E22410(sub_1C1E26CAC, v14, v16[0]);

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1C1E22410@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Function(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_1C1DE160C(v12, v10);
      v14 = a1(v10);
      if (v3)
      {
        return sub_1C1DE1670(v10);
      }

      if (v14)
      {
        break;
      }

      sub_1C1DE1670(v10);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_1C1DF7E98(v10, v18);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_1C1E2258C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_1C1E54ACC();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1C6910730](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

void sub_1C1E226B0(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v7 = v6;
  v65 = a5;
  v64 = a3;
  v12 = type metadata accessor for Function(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5E0, &qword_1C1E592F8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v53 - v20;
  if (a2 & 1) != 0 || (a4 & 1) != 0 || (a6)
  {
    v22 = sub_1C1E51F9C();
    (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
    sub_1C1E15FF0(v18);
    return;
  }

  v54 = v13;
  v23 = sub_1C1E51F9C();
  v55 = *(v23 - 8);
  v24 = *(v55 + 56);
  v60 = v21;
  v59 = v23;
  v58 = v24;
  v57 = v55 + 56;
  (v24)(v21, 1, 1);
  v25 = *(*&v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
  [v25 lock];
  swift_getKeyPath();
  v66[0] = v7;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v26 = *(*&v7 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  [v25 unlock];
  v27 = *(v26 + 16);
  if (!v27)
  {
LABEL_20:

    v52 = v60;
    sub_1C1DC1424(v60, v18, &qword_1EBF1D5E0, &qword_1C1E592F8);
    sub_1C1E15FF0(v18);
    sub_1C1DC1870(v52, &qword_1EBF1D5E0, &qword_1C1E592F8);
    return;
  }

  v56 = v12;
  v28 = *&a1;
  v29 = *&v64;
  v30 = *&v65;
  v31 = *(v54 + 80);
  v53 = v26;
  v32 = v26 + ((v31 + 32) & ~v31);
  v65 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio;
  v33 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
  v34 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom;
  v35 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  v64 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioZ;
  swift_beginAccess();
  v63 = v33;
  swift_beginAccess();
  v62 = v34;
  swift_beginAccess();
  v61 = v35;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v55 += 16;
  v36 = *(v54 + 72);
  v37 = INFINITY;
  while (1)
  {
    sub_1C1DE160C(v32, v15);
    v38 = *(v15 + 10);
    if (v38)
    {
      v39 = *(v15 + 11);

      v41 = v38(v40, v28, v30);
      sub_1C1DD0EB8(v38, v39);
    }

    else
    {
      v41 = 0.0;
    }

    swift_getKeyPath();
    v66[0] = v7;
    sub_1C1E520BC();

    swift_getKeyPath();
    v66[0] = v7;
    sub_1C1E520BC();

    if (*(*&v7 + 16))
    {
      break;
    }

    v45 = *(*&v7 + v63);
    v46 = *(*&v7 + v61) * (*(*&v7 + v62) * *(*&v7 + v61));
    v47 = *(*&v7 + v64);
    v44 = v45 - v47 * v46;
    if (v44 > v45 + v46 * (1.0 - v47))
    {
      goto LABEL_21;
    }

LABEL_16:
    if (v44 > v41 || (sub_1C1E24EE0(), v41 > v48) || (v49 = vabdd_f64(v29, v41), v49 >= v37))
    {
      sub_1C1DE1670(v15);
    }

    else
    {
      v50 = v60;
      sub_1C1DC1870(v60, &qword_1EBF1D5E0, &qword_1C1E592F8);
      v51 = v59;
      (*v55)(v50, &v15[*(v56 + 48)], v59);
      sub_1C1DE1670(v15);
      v58(v50, 0, 1, v51);
      v37 = v49;
    }

    v32 += v36;
    if (!--v27)
    {
      goto LABEL_20;
    }
  }

  sub_1C1E25E2C(v66);
  v42 = v66[2];
  sub_1C1E25E2C(v66);
  v43 = *(*&v7 + v65);
  v44 = v42 - v67 * v67 * v43;
  if (v44 <= v42 + v67 * v67 * (1.0 - v43))
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1C1E22DA4()
{
  v1 = swift_allocObject();
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = v0;
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = v0;
  swift_retain_n();
  sub_1C1E537BC();
  return v4;
}

uint64_t sub_1C1E22E64@<X0>(uint64_t a1@<X2>, BOOL *a2@<X8>)
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v4 = a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
  result = swift_beginAccess();
  *a2 = (*(v4 + 16) & 1) == 0;
  return result;
}

void sub_1C1E22F34(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5E0, &qword_1C1E592F8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v12 - v7;
  if ((*a1 & 1) == 0)
  {
    v9 = a4 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
    swift_beginAccess();
    if (*(v9 + 16) == 1)
    {
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v12[-3] = 0;
      v12[-2] = 0;
      v12[-4] = a4;
      LOBYTE(v12[-1]) = 1;
      v12[2] = a4;
      sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
      sub_1C1E520AC();
    }

    v11 = sub_1C1E51F9C();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    sub_1C1E15FF0(v8);
  }
}

uint64_t sub_1C1E2311C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C298, &qword_1C1E56168);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C1E58FE0;
  *(v0 + 32) = sub_1C1E5356C();
  *(v0 + 40) = sub_1C1E5360C();
  *(v0 + 48) = sub_1C1E5365C();
  *(v0 + 56) = sub_1C1E5355C();
  *(v0 + 64) = sub_1C1E5357C();
  *(v0 + 72) = sub_1C1E535AC();
  *(v0 + 80) = sub_1C1E5363C();
  *(v0 + 88) = sub_1C1E535BC();
  *(v0 + 96) = sub_1C1E5362C();
  *(v0 + 104) = sub_1C1E535CC();
  *(v0 + 112) = sub_1C1E535EC();
  result = sub_1C1E5364C();
  *(v0 + 120) = result;
  qword_1EBF20D88 = v0;
  return result;
}

uint64_t sub_1C1E231D0()
{
  result = sub_1C1E5365C();
  qword_1EBF20D90 = result;
  return result;
}

uint64_t sub_1C1E231F0()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  swift_beginAccess();
  if (*(v0 + 16))
  {
    return 1;
  }

  swift_getKeyPath();
  sub_1C1E520BC();

  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__isAnimatingFunction;
  swift_beginAccess();
  return *(v1 + v3);
}

BOOL sub_1C1E2330C()
{
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  swift_beginAccess();
  return *(v0 + 16) != 0;
}

uint64_t (*sub_1C1E2345C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E233C8(v4);
  return sub_1C1E23594;
}

void sub_1C1E235A0(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v62 = sub_1C1E53A0C();
  v52 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v50 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v50 - v7;
  v8 = sub_1C1E539CC();
  v59 = *(v8 - 8);
  v60 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1C1E539EC();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for Function(0);
  v11 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C758, &qword_1C1E579C0);
  *&v15 = MEMORY[0x1EEE9AC00](v14 - 8).n128_u64[0];
  v17 = &v50 - v16;
  v18 = *(a1 + 16);
  v19 = &unk_1EDE74000;
  if (!v18)
  {
    v20 = *&v3[OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock];
    [v20 lock];
    swift_getKeyPath();
    aBlock = v3;
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520BC();

    v21 = *&v3[OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions];

    [v20 unlock];
    v22 = *(v21 + 16);
    v19 = &unk_1EDE74000;

    if (!v22)
    {
      sub_1C1E24054();
      return;
    }
  }

  v53 = v11;
  v54 = v17;
  v23 = *&v3[OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock];
  [v23 lock];
  swift_getKeyPath();
  v24 = v19[269];
  aBlock = v3;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  v63 = v24;
  sub_1C1E520BC();

  v25 = *&v3[OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions];

  [v23 unlock];
  v26 = *(v25 + 16);

  [v23 0x1E815B878];

  sub_1C1E15A20(v27);
  [v23 unlock];
  if (v18)
  {
    v28 = v53;
    v29 = a1 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
    v30 = *(v53 + 72);
    v31 = v61;
    v32 = v54;
    while (1)
    {
      sub_1C1DE160C(v29, v13);
      if (*(v13 + 10))
      {
        break;
      }

      sub_1C1DE1670(v13);
      v29 += v30;
      if (!--v18)
      {
        v33 = 0;
        v34 = 1;
        goto LABEL_10;
      }
    }

    sub_1C1DF7E98(v13, v32);
    v34 = 0;
    v33 = 1;
  }

  else
  {
    v33 = 0;
    v34 = 1;
    v31 = v61;
    v32 = v54;
    v28 = v53;
  }

LABEL_10:
  (*(v28 + 56))(v32, v34, 1, v31);
  sub_1C1DC1870(v32, &qword_1EBF1C758, &qword_1C1E579C0);
  v35 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType;
  swift_beginAccess();
  if (v33 == v3[v35])
  {
    v3[v35] = v33;
    if (v26)
    {
      goto LABEL_12;
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v50 - 2) = v3;
    *(&v50 - 8) = v33;
    aBlock = v3;
    sub_1C1E520AC();

    if (v26)
    {
LABEL_12:
      sub_1C1E1A2C0();
      goto LABEL_15;
    }
  }

  sub_1C1E26BCC();
  v37 = sub_1C1E5494C();
  v68 = sub_1C1E26D5C;
  v69 = v3;
  aBlock = MEMORY[0x1E69E9820];
  v65 = 1107296256;
  v66 = sub_1C1E1FC50;
  v67 = &block_descriptor_140;
  v38 = _Block_copy(&aBlock);

  v39 = v55;
  sub_1C1E539DC();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1C1DC4DB0(&qword_1EBF1D5C8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5D0, &qword_1C1E592A0);
  sub_1C1DC1124(&qword_1EBF1D5D8, &qword_1EBF1D5D0, &qword_1C1E592A0, MEMORY[0x1E69E6328]);
  v40 = v57;
  v41 = v60;
  sub_1C1E54A5C();
  MEMORY[0x1C6910530](0, v39, v40, v38);
  _Block_release(v38);

  (*(v59 + 8))(v40, v41);
  (*(v56 + 8))(v39, v58);
LABEL_15:
  sub_1C1E24054();
  swift_getKeyPath();
  aBlock = v3;
  sub_1C1E520BC();

  v42 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__isAnimatingFunction;
  swift_beginAccess();
  if (v3[v42] == 1)
  {
    sub_1C1E26BCC();
    v43 = sub_1C1E5494C();
    v44 = v50;
    sub_1C1E539FC();
    v45 = v51;
    sub_1C1E53A1C();
    v63 = *(v52 + 8);
    v63(v44, v62);
    v68 = sub_1C1E26D58;
    v69 = v3;
    aBlock = MEMORY[0x1E69E9820];
    v65 = 1107296256;
    v66 = sub_1C1E1FC50;
    v67 = &block_descriptor_137;
    v46 = _Block_copy(&aBlock);

    v47 = v55;
    sub_1C1E539DC();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1C1DC4DB0(&qword_1EBF1D5C8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5D0, &qword_1C1E592A0);
    sub_1C1DC1124(&qword_1EBF1D5D8, &qword_1EBF1D5D0, &qword_1C1E592A0, MEMORY[0x1E69E6328]);
    v48 = v57;
    v49 = v60;
    sub_1C1E54A5C();
    MEMORY[0x1C6910510](v45, v47, v48, v46);
    _Block_release(v46);

    (*(v59 + 8))(v48, v49);
    (*(v56 + 8))(v47, v58);
    v63(v45, v62);
  }
}

double sub_1C1E23FDC(uint64_t a1)
{
  sub_1C1E5395C();
  sub_1C1E5291C();

  return result;
}

void sub_1C1E24054()
{
  v1 = v0;
  v2 = type metadata accessor for Function(0);
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
  [v7 lock];
  swift_getKeyPath();
  v8 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  v18 = v1;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  v17[0] = v8;
  sub_1C1E520BC();

  v9 = *(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  [v7 unlock];
  v10 = 0;
  v11 = *(v9 + 16);
  do
  {
    v12 = v10;
    if (v11 == v10)
    {
      break;
    }

    if (v10 >= *(v9 + 16))
    {
      __break(1u);
      return;
    }

    sub_1C1DE160C(v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10++, v6);
    sub_1C1E51F2C();
    v14 = v13;
    sub_1C1DE1670(v6);
  }

  while (v14 <= -1.5);

  swift_getKeyPath();
  v18 = v1;
  sub_1C1E520BC();

  v15 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__isAnimatingFunction;
  swift_beginAccess();
  if ((v11 != v12) != *(v1 + v15))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v17[-2] = v1;
    LOBYTE(v17[-1]) = v11 != v12;
    v17[2] = v1;
    sub_1C1E520AC();
  }
}

uint64_t sub_1C1E24334@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v5 = v4;
  v10 = type metadata accessor for Function(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C758, &qword_1C1E579C0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v32 - v16;
  v18 = *(v11 + 56);
  v37 = v10;
  v18(v32 - v16, 1, 1, v10, v15);
  v19 = *(v4 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
  [v19 lock];
  swift_getKeyPath();
  v20 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  v39 = v5;
  v34 = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  v35 = v20;
  sub_1C1E520BC();

  v36 = v5;
  v21 = *(v5 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  [v19 unlock];
  v22 = *(v21 + 16);
  if (v22)
  {
    v32[1] = v21;
    v33 = a1;
    v23 = v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v24 = *(v11 + 72);
    v25 = INFINITY;
    do
    {
      v26 = sub_1C1DE160C(v23, v13);
      v27 = vabdd_f64(a3, v13[8](v26, a2));
      if (v27 < v25)
      {
        sub_1C1DC1870(v17, &qword_1EBF1C758, &qword_1C1E579C0);
        sub_1C1DF7E98(v13, v17);
        (v18)(v17, 0, 1, v37);
        v25 = v27;
      }

      else
      {
        sub_1C1DE1670(v13);
      }

      v23 += v24;
      --v22;
    }

    while (v22);

    a1 = v33;
    if (v25 < a4)
    {
      return sub_1C1E28744(v17, v33);
    }
  }

  else
  {
  }

  v29 = v36;
  v30 = v36 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
  swift_beginAccess();
  if (*(v30 + 16) == 1)
  {
    sub_1C1DC1870(v17, &qword_1EBF1C758, &qword_1C1E579C0);
    *v30 = 0;
    *(v30 + 8) = 0;
    *(v30 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v32[-3] = 0;
    v32[-2] = 0;
    v32[-4] = v29;
    LOBYTE(v32[-1]) = 1;
    v38 = v29;
    sub_1C1E520AC();

    sub_1C1DC1870(v17, &qword_1EBF1C758, &qword_1C1E579C0);
  }

  return (v18)(a1, 1, 1, v37);
}

uint64_t sub_1C1E2473C(uint64_t a1)
{
  v2 = v1;
  sub_1C1E24AC8();
  v4 = v3;
  v6 = v5;
  v7 = (v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  swift_beginAccess();
  if (*v7 == v4 && v7[1] == v6)
  {
    *v7 = v4;
    v7[1] = v6;
    sub_1C1E1B224();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }

  sub_1C1E24CD4();
  v11 = v10;
  v13 = v12;
  v14 = (v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  swift_beginAccess();
  if (*v14 == v11 && v14[1] == v13)
  {
    *v14 = v11;
    v14[1] = v13;
    sub_1C1E1B784();
  }

  else
  {
    v16 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v16);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }

  sub_1C1E24EE0();
  v18 = v17;
  v20 = v19;
  v21 = (v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  swift_beginAccess();
  if (*v21 == v18 && v21[1] == v20)
  {
    *v21 = v18;
    v21[1] = v20;
    sub_1C1E1BEA8();
  }

  else
  {
    v22 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v22);
    sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }

  v23 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom;
  result = swift_beginAccess();
  *(v2 + v23) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1C1E24AC8()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  swift_getKeyPath();
  v13[0] = v0;
  sub_1C1E520BC();

  swift_beginAccess();
  if (*(*&v0 + 16))
  {
    sub_1C1E25E2C(v13);
    v2 = v13[0];
    sub_1C1E25E2C(v13);
    v3 = v14 * v14;
    v4 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio;
    result = swift_beginAccess();
    if (v2 - v3 * *(*&v1 + v4) <= v2 + v3 * (1.0 - *(*&v1 + v4)))
    {
      return result;
    }

    __break(1u);
  }

  v6 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
  swift_beginAccess();
  v7 = *(*&v1 + v6);
  v8 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom;
  swift_beginAccess();
  v9 = *(*&v1 + v8);
  v10 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
  swift_beginAccess();
  v11 = *(*&v1 + v10) * (v9 * *(*&v1 + v10));
  v12 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio;
  result = swift_beginAccess();
  if (v7 - v11 * *(*&v1 + v12) > v7 + v11 * (1.0 - *(*&v1 + v12)))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1E24CD4()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  swift_getKeyPath();
  v13[0] = v0;
  sub_1C1E520BC();

  swift_beginAccess();
  if (*(*&v0 + 16))
  {
    sub_1C1E25E2C(v13);
    v2 = v13[1];
    sub_1C1E25E2C(v13);
    v3 = v14 * v14;
    v4 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio;
    result = swift_beginAccess();
    if (v2 - v3 * *(*&v1 + v4) <= v2 + v3 * (1.0 - *(*&v1 + v4)))
    {
      return result;
    }

    __break(1u);
  }

  v6 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
  swift_beginAccess();
  v7 = *(*&v1 + v6);
  v8 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom;
  swift_beginAccess();
  v9 = *(*&v1 + v8);
  v10 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
  swift_beginAccess();
  v11 = *(*&v1 + v10) * (v9 * *(*&v1 + v10));
  v12 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioY;
  result = swift_beginAccess();
  if (v7 - v11 * *(*&v1 + v12) > v7 + v11 * (1.0 - *(*&v1 + v12)))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1E24EE0()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  swift_getKeyPath();
  v13[0] = v0;
  sub_1C1E520BC();

  swift_beginAccess();
  if (*(*&v0 + 16))
  {
    sub_1C1E25E2C(v13);
    v2 = v13[2];
    sub_1C1E25E2C(v13);
    v3 = v14 * v14;
    v4 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio;
    result = swift_beginAccess();
    if (v2 - v3 * *(*&v1 + v4) <= v2 + v3 * (1.0 - *(*&v1 + v4)))
    {
      return result;
    }

    __break(1u);
  }

  v6 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
  swift_beginAccess();
  v7 = *(*&v1 + v6);
  v8 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom;
  swift_beginAccess();
  v9 = *(*&v1 + v8);
  v10 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  swift_beginAccess();
  v11 = *(*&v1 + v10) * (v9 * *(*&v1 + v10));
  v12 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioZ;
  result = swift_beginAccess();
  if (v7 - v11 * *(*&v1 + v12) > v7 + v11 * (1.0 - *(*&v1 + v12)))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1E25150@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v4 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
  swift_beginAccess();
  v5 = sub_1C1E5232C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1C1E25248(uint64_t a1)
{
  v2 = sub_1C1E5232C();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1C1E16220(v5);
}

uint64_t sub_1C1E25314@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
  swift_beginAccess();
  v4 = sub_1C1E5232C();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1C1E2540C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1E5232C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

uint64_t sub_1C1E255AC(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = v2[3];
  v5 = v2[4];
  v6 = (v2[2] + *a1);
  v7 = swift_beginAccess();
  *v6 = v4;
  v6[1] = v5;
  return a2(v7);
}

uint64_t sub_1C1E25654()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 17) = v2;
  return result;
}

uint64_t sub_1C1E256C0()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
  result = swift_beginAccess();
  *(v1 + v2) = 0x3FD999999999999ALL;
  return result;
}

uint64_t sub_1C1E25724()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
  result = swift_beginAccess();
  *(v1 + v2) = 0x3FD999999999999ALL;
  return result;
}

uint64_t sub_1C1E25788()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  result = swift_beginAccess();
  *(v1 + v2) = 0x3FD999999999999ALL;
  return result;
}

uint64_t (*sub_1C1E257EC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E250EC(v4);
  return sub_1C1E25924;
}

void sub_1C1E25930(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_1C1E520CC();

  free(v3);
}

void sub_1C1E259F4(double (*a1)(uint64_t))
{
  v3 = v1;
  v4 = sub_1C1E5232C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = v1;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v8 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
  swift_beginAccess();
  v9 = (*(v5 + 16))(v7, v3 + v8, v4);
  v10 = a1(v9);
  (*(v5 + 8))(v7, v4);
  v11.radians = v10;
  SPAngleGetDegrees(v11);
}

double sub_1C1E25BD8(double (*a1)(uint64_t))
{
  v2 = (a1)();
  v4 = round(vabdd_f64(v3, a1(v2)));

  sub_1C1E25C2C(v4);
  return result;
}

uint64_t sub_1C1E25C2C(double a1)
{
  v24 = sub_1C1E51F5C();
  v3 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  result = sub_1C1E51F3C();
  v13 = *(v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_baseAxesIntervals);
  v14 = *(v13 + 16);
  v15 = (v3 + 8);
  v16 = 1.0;
  v17 = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
LABEL_2:
  v18 = 0;
  while (1)
  {
    if (v14 == v18)
    {
      v16 = v16 * 10.0;
      v23 = v17;
      sub_1C1E51F3C();
      sub_1C1E51F1C();
      v20 = sub_1C1E51F0C();
      v22 = *v15;
      v21 = v24;
      (*v15)(v5, v24);
      result = (v22)(v8, v21);
      v17 = v23;
      if ((v20 & 1) == 0)
      {
        goto LABEL_2;
      }

      return (v22)(v11, v24);
    }

    if (v18 >= *(v13 + 16))
    {
      break;
    }

    v19 = *(v13 + 32 + 8 * v18++);
    if (a1 / (v16 * v19) <= 10.0)
    {
      v22 = *v15;
      return (v22)(v11, v24);
    }
  }

  __break(1u);
  return result;
}

double sub_1C1E25E2C@<D0>(double *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C1E51F5C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v35 - v9;
  sub_1C1E51F3C();
  v11 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_centeringDate;
  swift_beginAccess();
  (*(v5 + 16))(v7, v2 + v11, v4);
  sub_1C1E51EFC();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v7, v4);
  v14(v10, v4);
  v15 = 0.0;
  if (v13 + v13 >= 0.0)
  {
    v15 = v13 + v13;
  }

  if (v13 + v13 >= 1.0)
  {
    v16 = 1.0;
  }

  else
  {
    v16 = v15;
  }

  swift_getKeyPath();
  v35[6] = v2;
  sub_1C1DC4DB0(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v17 = (v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  swift_beginAccess();
  v18 = v17[1];
  v19 = (*v17 + v18) * 0.5;
  v20 = sqrt(v18 - *v17);
  swift_getKeyPath();
  v35[3] = v2;
  sub_1C1E520BC();

  v21 = (v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  swift_beginAccess();
  v22 = v21[1];
  v23 = (*v21 + v22) * 0.5;
  v24 = sqrt(v22 - *v21);
  swift_getKeyPath();
  v35[0] = v2;
  sub_1C1E520BC();

  v25 = (v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  swift_beginAccess();
  v26 = v25[1];
  v27 = (*v25 + v26) * 0.5;
  v28 = sqrt(v26 - *v25);
  v29 = *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterY) + v16 * (v23 - *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterY));
  v30 = *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterZ) + v16 * (v27 - *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterZ));
  v31 = *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakX) + v16 * (v20 - *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakX));
  v32 = *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakY) + v16 * (v24 - *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakY));
  v33 = *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakZ);
  *a1 = *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterX) + v16 * (v19 - *(v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterX));
  a1[1] = v29;
  result = v33 + v16 * (v28 - v33);
  a1[2] = v30;
  a1[3] = v31;
  a1[4] = v32;
  a1[5] = result;
  return result;
}

uint64_t GraphViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_centeringDate;
  v2 = sub_1C1E51F5C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1C1DC1870(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartProxy, &qword_1EBF1D540, &qword_1C1E58F98);
  sub_1C1DC1870(v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__selectedFunctionID3D, &qword_1EBF1D5E0, &qword_1C1E592F8);

  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
  v4 = sub_1C1E5232C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  v6 = sub_1C1E520FC();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t GraphViewModel.__deallocating_deinit()
{
  GraphViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C1E263C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 80);
    for (i = (a2 + 80); ; i += 7)
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(i - 2);
      v9 = *i;
      v12 = *(i - 1);
      if ((*(v3 - 4) != *(i - 4) || *(v3 - 3) != *(i - 3)) && (sub_1C1E54D2C() & 1) == 0)
      {
        break;
      }

      if ((v5 != v8 || v6 != v12) && (sub_1C1E54D2C() & 1) == 0)
      {
        break;
      }

      if (v7)
      {
        if (!v9)
        {
          return 0;
        }

        swift_retain_n();
        v11 = sub_1C1E5354C();

        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v9)
      {
        return 0;
      }

      v3 += 7;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1C1E26580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Function(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1C1DE160C(v13, v10);
        sub_1C1DE160C(v14, v6);
        v16 = sub_1C1E51F7C();
        sub_1C1DE1670(v6);
        sub_1C1DE1670(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void *sub_1C1E26700(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C1E26740(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C1E26720(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C1E26918(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C1E26740(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D600, &qword_1C1E59550);
  v10 = *(type metadata accessor for Function(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Function(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1C1E26918(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D618, &qword_1C1E59560);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1C1E26A24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 40;
    v4 = MEMORY[0x1E69E7CC0];
    v14 = a1 + 40;
    do
    {
      v5 = (v3 + 16 * v2);
      for (i = v2; ; ++i)
      {
        if (i >= v1)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }

        v2 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        v8 = *(v5 - 1);
        v7 = *v5;
        swift_bridgeObjectRetain_n();
        v9 = sub_1C1E34624(&v15, v8, v7);

        if (v9)
        {
          break;
        }

        v5 += 2;
        if (v2 == v1)
        {
          return;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C1E26720(0, *(v4 + 16) + 1, 1);
        v4 = v16;
      }

      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1C1E26720((v11 > 1), v12 + 1, 1);
        v4 = v16;
      }

      *(v4 + 16) = v12 + 1;
      v13 = v4 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v7;
      v3 = v14;
    }

    while (v2 != v1);
  }
}

uint64_t keypath_set_70Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

unint64_t sub_1C1E26BCC()
{
  result = qword_1EBF1D5C0;
  if (!qword_1EBF1D5C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBF1D5C0);
  }

  return result;
}

double block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1C1E26CFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

unint64_t sub_1C1E26D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D5E8;
  if (!qword_1EBF1D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D5E8);
  }

  return result;
}

unint64_t sub_1C1E26DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBF1D5F0;
  if (!qword_1EBF1D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D5F0);
  }

  return result;
}

double keypath_get_151Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t keypath_set_144Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t keypath_get_163Tm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v6;
  return result;
}

uint64_t keypath_set_164Tm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2 + *a5;
  result = swift_beginAccess();
  *v7 = v5;
  *(v7 + 8) = v6;
  return result;
}

void sub_1C1E26F90(uint64_t a1)
{
  sub_1C1E51F5C();
  if (v1 <= 0x3F)
  {
    sub_1C1E286D0(319, &qword_1EDE73BE0, MEMORY[0x1E695AF78]);
    if (v2 <= 0x3F)
    {
      sub_1C1E286D0(319, &qword_1EBF1D5F8, MEMORY[0x1E69695A8]);
      if (v3 <= 0x3F)
      {
        sub_1C1E5232C();
        if (v4 <= 0x3F)
        {
          sub_1C1E520FC();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of GraphViewModel.plotRect.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*v1 + 1048);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

void sub_1C1E286D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C1E549CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C1E28744(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C758, &qword_1C1E579C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1E287F8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16) + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
  result = swift_beginAccess();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  return result;
}

uint64_t sub_1C1E28868(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1E51F9C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5E0, &qword_1C1E592F8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D608, &qword_1C1E59558);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1C1DC1424(a1, &v21 - v12, &qword_1EBF1D5E0, &qword_1C1E592F8);
  sub_1C1DC1424(a2, &v13[v15], &qword_1EBF1D5E0, &qword_1C1E592F8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1C1DC1424(v13, v10, &qword_1EBF1D5E0, &qword_1C1E592F8);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1C1DC4DB0(&qword_1EBF1D610, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v18 = sub_1C1E545AC();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1C1DC1870(v13, &qword_1EBF1D5E0, &qword_1C1E592F8);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1C1DC1870(v13, &qword_1EBF1D608, &qword_1C1E59558);
    v17 = 1;
    return v17 & 1;
  }

  sub_1C1DC1870(v13, &qword_1EBF1D5E0, &qword_1C1E592F8);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1C1E28BBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_1C1E28CA0(void *a1)
{
  v2 = v1[4];
  v3 = (v1[2] + *a1);
  *v3 = v1[3];
  v3[1] = v2;
}

uint64_t sub_1C1E28CEC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

double CalculateGraph.viewModel.getter(uint64_t a1)
{
  sub_1C1E36158();

  return result;
}

void sub_1C1E28F4C(unint64_t a1, uint64_t *a2, int a3, int a4)
{
  v5 = v4;
  v27 = a3;
  v28 = a4;
  v26 = a2;
  v7 = type metadata accessor for Function(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = v22)
  {
    v13 = v9;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1C1E26700(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v14 = 0;
    v15 = v30;
    v16 = v13;
    v24 = v13;
    v25 = v13 & 0xC000000000000001;
    v23 = v13 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v25)
      {
        v18 = MEMORY[0x1C6910730](v14, v16);
      }

      else
      {
        if (v14 >= *(v23 + 16))
        {
          goto LABEL_17;
        }

        v18 = *(v16 + 8 * v14 + 32);
      }

      v29 = v18;
      sub_1C1E3027C(&v29, v26, v27 & 1, v28 & 1, v11);
      if (v5)
      {
        goto LABEL_20;
      }

      v5 = 0;

      v30 = v15;
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1C1E26700((v19 > 1), v20 + 1, 1);
        v15 = v30;
      }

      *(v15 + 16) = v20 + 1;
      sub_1C1DF7E98(v11, v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20);
      ++v14;
      v16 = v24;
      if (v17 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v21 = v9;
    v22 = sub_1C1E54ACC();
    v9 = v21;
  }
}

void (*Graph3DBounds.xBounds.modify(uint64_t *a1))(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 48) = *v1;
  swift_getKeyPath();
  *(v4 + 56) = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v5;
  *(v4 + 64) = sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v6 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds;
  *(v4 + 72) = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + v6);
  return sub_1C1E29350;
}

void (*Graph3DBounds.yBounds.modify(uint64_t *a1))(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 48) = *v1;
  swift_getKeyPath();
  *(v4 + 56) = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v5;
  *(v4 + 64) = sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v6 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds;
  *(v4 + 72) = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + v6);
  return sub_1C1E29500;
}

double sub_1C1E2955C(uint64_t a1, void *a2)
{
  v4 = *v2;
  swift_getKeyPath();
  sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v5 = v4 + *a2;
  swift_beginAccess();
  return *v5;
}

__n128 sub_1C1E29614@<Q0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, __n128 *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v7 = *a3;
  swift_beginAccess();
  result = *(v6 + v7);
  *a4 = result;
  return result;
}

void sub_1C1E29718(void *a1, void (*a2)(uint64_t, __n128, __n128), uint64_t a3, uint64_t a4, double a5, double a6)
{
  v10 = (*v6 + *a1);
  v11 = swift_beginAccess();
  v12.n128_f64[0] = *v10;
  v13.n128_f64[0] = v10[1];
  if (*v10 == a5 && v13.n128_f64[0] == a6)
  {
    *v10 = a5;
    v10[1] = a6;
    a2(v11, v12, v13);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
    sub_1C1E520AC();
  }
}

void (*Graph3DBounds.zBounds.modify(uint64_t *a1))(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 48) = *v1;
  swift_getKeyPath();
  *(v4 + 56) = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v5;
  *(v4 + 64) = sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);
  sub_1C1E520BC();

  v6 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds;
  *(v4 + 72) = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + v6);
  return sub_1C1E29970;
}

void sub_1C1E299B8(uint64_t a1, char a2, void (*a3)(__n128), uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v7 = *a1;
  v8 = *(*a1 + 24);
  v9 = *(*a1 + 48);
  v10 = v9 + *(*a1 + 72);
  v11 = *(*a1 + 32);
  a7.n128_u64[0] = *v10;
  v12 = *v10 == v8;
  if (*(v10 + 8) != v11)
  {
    v12 = 0;
  }

  if (a2)
  {
    if (!v12)
    {
      goto LABEL_8;
    }
  }

  else if (!v12)
  {
LABEL_8:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v7[5] = v9;
    sub_1C1E520AC();

    goto LABEL_9;
  }

  *v10 = v8;
  *(v10 + 8) = v11;
  a3(a7);
LABEL_9:
  free(v7);
}

double sub_1C1E29AE8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;

  swift_getKeyPath();
  sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression, &protocol conformance descriptor for CalculateGraphExpression);
  sub_1C1E520BC();

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C1E33630();
  }

  return result;
}

uint64_t (*sub_1C1E29BEC(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C1E29C40;
}

double sub_1C1E29C40(void *a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = a1[3];
    swift_getKeyPath();
    *a1 = v5;
    sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression, &protocol conformance descriptor for CalculateGraphExpression);
    sub_1C1E520BC();

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1C1E33630();
    }
  }

  return result;
}

double sub_1C1E29D30@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression, &protocol conformance descriptor for CalculateGraphExpression);
  sub_1C1E520BC();

  swift_beginAccess();
  *a2 = *(v3 + 24);

  return result;
}

double sub_1C1E29E1C()
{
  swift_getKeyPath();
  sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression, &protocol conformance descriptor for CalculateGraphExpression);
  sub_1C1E520BC();

  swift_beginAccess();

  return result;
}

double sub_1C1E29ED4(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 24))
  {
    if (a1)
    {

      v3 = sub_1C1E5354C();

      if (v3)
      {
        return sub_1C1E29AE8(a1);
      }
    }
  }

  else if (!a1)
  {
    return sub_1C1E29AE8(a1);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression, &protocol conformance descriptor for CalculateGraphExpression);
  sub_1C1E520AC();

  return result;
}

uint64_t (*sub_1C1E2A024(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC11CalculateUI24CalculateGraphExpression___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression, &protocol conformance descriptor for CalculateGraphExpression);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E29BEC(v4);
  return sub_1C1E2A15C;
}

uint64_t sub_1C1E2A168()
{
  v1 = swift_allocObject();
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = v0;
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = v0;
  swift_retain_n();
  sub_1C1E537BC();
  return v4;
}

uint64_t sub_1C1E2A228@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1E2A918();
  *a1 = result;
  return result;
}

double sub_1C1E2A254(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  swift_beginAccess();
  if (*(a4 + 24))
  {

    v6 = sub_1C1E5354C();

    if (v6)
    {
      return sub_1C1E29AE8(v5);
    }
  }

  else
  {
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression, &protocol conformance descriptor for CalculateGraphExpression);
  sub_1C1E520AC();

  return result;
}

void (*sub_1C1E2A3B0(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1C1E2A440;
}

void sub_1C1E2A440(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1C1E2A4C0@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression, &protocol conformance descriptor for CalculateGraphExpression);
  sub_1C1E520BC();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1C1E2A5AC()
{
  swift_getKeyPath();
  sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression, &protocol conformance descriptor for CalculateGraphExpression);
  sub_1C1E520BC();

  swift_beginAccess();
  return swift_weakLoadStrong();
}

double sub_1C1E2A664(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a1)
    {
      v2 = sub_1C1E51F7C();

      if ((v2 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      swift_weakAssign();

      return result;
    }
  }

  else if (!a1)
  {
    goto LABEL_6;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression, &protocol conformance descriptor for CalculateGraphExpression);
  sub_1C1E520AC();

  return result;
}

uint64_t (*sub_1C1E2A7D4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC11CalculateUI24CalculateGraphExpression___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression, &protocol conformance descriptor for CalculateGraphExpression);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E2A3B0(v4);
  return sub_1C1E2A90C;
}

uint64_t sub_1C1E2A918()
{
  v1 = sub_1C1E51F9C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v15 = v0;
  sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression, &protocol conformance descriptor for CalculateGraphExpression);
  sub_1C1E520BC();

  swift_beginAccess();
  if (*(v0 + 24))
  {
    v5 = *(v0 + 24);
  }

  else
  {
    swift_getKeyPath();
    v14[4] = v0;
    sub_1C1E520BC();

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      sub_1C1E53C9C();
      swift_getKeyPath();
      v14[1] = v7;
      sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
      sub_1C1E520BC();

      v8 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphColors;
      swift_beginAccess();
      v9 = *(v7 + v8);

      if (*(v9 + 16))
      {
        v10 = sub_1C1E33C94(v4);
        if (v11)
        {
          v5 = *(*(v9 + 56) + 8 * v10);
          v12 = *(v2 + 8);

          v12(v4, v1);

          goto LABEL_11;
        }
      }

      (*(v2 + 8))(v4, v1);
    }

    if (qword_1EBF1C160 != -1)
    {
      swift_once();
    }

    v5 = qword_1EBF20D90;
  }

LABEL_11:

  return v5;
}

double sub_1C1E2AC64(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression, &protocol conformance descriptor for CalculateGraphExpression);
    sub_1C1E520BC();

    swift_beginAccess();
    Strong = swift_weakLoadStrong();

    if (Strong)
    {
      if (*(Strong + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__needsUpdate) == 1)
      {
        *(Strong + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__needsUpdate) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
        sub_1C1E520AC();
      }
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C1E5209C();
  }

  return result;
}

void (*CalculateGraphExpression.deinit())(uint64_t *, void)
{
  v1 = v0;

  result = sub_1C1E53C0C();
  if (__OFSUB__(*v3, 1))
  {
    __break(1u);
  }

  else
  {
    --*v3;
    result(&v6, 0);

    swift_weakDestroy();
    v4 = OBJC_IVAR____TtC11CalculateUI24CalculateGraphExpression___observationRegistrar;
    v5 = sub_1C1E520FC();
    (*(*(v5 - 8) + 8))(v1 + v4, v5);
    return v1;
  }

  return result;
}

void (*CalculateGraphExpression.__deallocating_deinit())(uint64_t *, void)
{
  v1 = v0;

  result = sub_1C1E53C0C();
  if (__OFSUB__(*v3, 1))
  {
    __break(1u);
  }

  else
  {
    --*v3;
    result(&v6, 0);

    swift_weakDestroy();
    v4 = OBJC_IVAR____TtC11CalculateUI24CalculateGraphExpression___observationRegistrar;
    v5 = sub_1C1E520FC();
    (*(*(v5 - 8) + 8))(v1 + v4, v5);
    return swift_deallocClassInstance();
  }

  return result;
}

void (*CalculateGraphExpression.__allocating_init(_:color:)(uint64_t a1, uint64_t a2))(_BYTE *, void)
{
  swift_allocObject();
  v4 = sub_1C1E363C0(a1, a2);

  return v4;
}

void (*CalculateGraphExpression.init(_:color:)(uint64_t a1, uint64_t a2))(_BYTE *, void)
{
  v2 = sub_1C1E363C0(a1, a2);

  return v2;
}

uint64_t CalculateGraph.GraphType.init(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1C1E53B6C();
  v5 = *(v4 - 8);
  result = (*(v5 + 88))(a1, v4);
  if (result == *MEMORY[0x1E69920D0])
  {
    goto LABEL_5;
  }

  if (result != *MEMORY[0x1E69920D8])
  {
    result = (*(v5 + 8))(a1, v4);
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  *a2 = v7;
  return result;
}

uint64_t sub_1C1E2B250()
{
  if (*v0)
  {
    return 0x443365707974;
  }

  else
  {
    return 0x443265707974;
  }
}

void sub_1C1E2B27C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x443265707974 && a2 == 0xE600000000000000;
  if (v6 || (sub_1C1E54D2C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x443365707974 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1C1E54D2C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1C1E2B35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C1E365DC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C1E2B398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C1E365DC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C1E2B3E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C1E36684(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C1E2B41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C1E36684(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1C1E2B458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C1E36630(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1C1E2B494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C1E36630(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t CalculateGraph.GraphType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D620, &qword_1C1E59660);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D628, &qword_1C1E59668);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D630, &qword_1C1E59670);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v12 = *v1;
  v13 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C1E365DC(v13, v14, v15);
  v16 = sub_1C1E54DCC();
  v19 = (v9 + 8);
  if (v12)
  {
    v28 = 1;
    sub_1C1E36630(v16, v17, v18);
    v20 = v24;
    sub_1C1E54CBC();
    (*(v25 + 8))(v20, v26);
  }

  else
  {
    v27 = 0;
    sub_1C1E36684(v16, v17, v18);
    sub_1C1E54CBC();
    (*(v22 + 8))(v7, v23);
  }

  return (*v19)(v11, v8);
}

uint64_t CalculateGraph.GraphType.hashValue.getter()
{
  v1 = *v0;
  sub_1C1E54D7C();
  MEMORY[0x1C6910960](v1);
  return sub_1C1E54DAC();
}

double CalculateGraph.GraphType.init(from:)@<D0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D650, &qword_1C1E59678);
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D658, &qword_1C1E59680);
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D660, &qword_1C1E59688);
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C1E365DC(v13, v14, v15);
  v16 = v36;
  sub_1C1E54DBC();
  if (v16)
  {
    goto LABEL_7;
  }

  v30 = v7;
  v36 = a1;
  v18 = v34;
  v17 = v35;
  v19 = v12;
  v20 = sub_1C1E54CAC();
  if (*(v20 + 16) != 1)
  {
    v24 = sub_1C1E54B8C();
    swift_allocError();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D668, &qword_1C1E59690);
    *v26 = &type metadata for CalculateGraph.GraphType;
    sub_1C1E54C6C();
    sub_1C1E54B7C();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    (*(v18 + 8))(v19, v10);
    swift_unknownObjectRelease();
    a1 = v36;
LABEL_7:
    v27 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v27);
  }

  v29 = v20;
  v23 = *(v20 + 32);
  if (v23)
  {
    v38 = 1;
    sub_1C1E36630(v20, v21, v22);
    sub_1C1E54C5C();
    (*(v33 + 8))(v6, v32);
  }

  else
  {
    v37 = 0;
    sub_1C1E36684(v20, v21, v22);
    sub_1C1E54C5C();
    (*(v31 + 8))(v9, v30);
  }

  (*(v18 + 8))(v19, v10);
  swift_unknownObjectRelease();
  *v17 = v23;
  v27 = v36;
  return __swift_destroy_boxed_opaque_existential_0(v27);
}

uint64_t CalculateGraph.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph_id;
  v4 = sub_1C1E51F9C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_1C1E2BD04(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1E53B6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v14 = v1;
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  v8 = *(v1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions);
  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_14:
    sub_1C1E3205C(a1);
    return;
  }

  if (!sub_1C1E54ACC())
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v8 & 0xC000000000000001) != 0)
  {

    MEMORY[0x1C6910730](0, v8);

LABEL_6:
    sub_1C1E53C6C();
    v9 = (*(v5 + 88))(v7, v4);
    if (v9 != *MEMORY[0x1E69920D0])
    {
      if (v9 == *MEMORY[0x1E69920D8])
      {
        v10 = 1;
        goto LABEL_11;
      }

      (*(v5 + 8))(v7, v4);
    }

    v10 = 0;
LABEL_11:
    v11 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType;
    swift_beginAccess();
    if (v10 == *(v2 + v11))
    {

      *(v2 + v11) = v10;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v13[-2] = v2;
      LOBYTE(v13[-1]) = v10;
      v13[2] = v2;
      sub_1C1E520AC();
    }

    goto LABEL_14;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_6;
  }

  __break(1u);
}

double (*sub_1C1E2BFFC(void *a1))(uint64_t *a1, char a2)
{
  v2 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions;
  a1[2] = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions;
  *a1 = *(v1 + v2);
  a1[1] = v1;

  return sub_1C1E2C054;
}

double sub_1C1E2C054(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *(v3 + v2);
  *(v3 + v2) = *a1;
  if (a2)
  {

    sub_1C1E2BD04(v4);
  }

  else
  {
    sub_1C1E2BD04(v4);
  }

  return result;
}

uint64_t sub_1C1E2C0C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  *a2 = *(v3 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions);
}

uint64_t sub_1C1E2C198()
{
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();
}

double sub_1C1E2C244(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520AC();

  return result;
}

uint64_t (*sub_1C1E2C314(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC11CalculateUI14CalculateGraph___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E2BFFC(v4);
  return sub_1C1E2C44C;
}

void sub_1C1E2C458(_BYTE *a2@<X8>)
{
  v3 = sub_1C1E36158();
  swift_getKeyPath();
  sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);

  sub_1C1E520BC();

  swift_beginAccess();
  v4 = *(v3 + 17);

  *a2 = v4;
}

uint64_t sub_1C1E2C538(uint64_t a1)
{
  v1 = sub_1C1E36158();
  swift_getKeyPath();
  sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);

  sub_1C1E520BC();

  swift_beginAccess();
  v2 = *(v1 + 17);

  return v2;
}

void sub_1C1E2C608(uint64_t a1)
{
  v1 = a1 & 1;
  v2 = sub_1C1E36158();
  swift_beginAccess();
  if (*(v2 + 17) == v1)
  {
    *(v2 + 17) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);

    sub_1C1E520AC();
  }
}

void (*sub_1C1E2C748(uint64_t **a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[9] = v1;
  v5 = sub_1C1E36158();
  swift_getKeyPath();
  *v4 = v5;
  v4[10] = sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel, &protocol conformance descriptor for GraphViewModel);

  sub_1C1E520BC();

  swift_beginAccess();
  v6 = *(v5 + 17);

  *(v4 + 88) = v6;
  return sub_1C1E2C868;
}

void sub_1C1E2C868(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 88);
  v5 = sub_1C1E36158();
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    if (v4 != *(v5 + 17))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v3[3] = v5;

      goto LABEL_6;
    }

LABEL_7:
    *(v5 + 17) = v4;
    goto LABEL_8;
  }

  swift_beginAccess();
  if (v4 == *(v5 + 17))
  {
    goto LABEL_7;
  }

  v6 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v6);
  v3[6] = v5;

LABEL_6:
  sub_1C1E520AC();

LABEL_8:
  free(v3);
}

uint64_t sub_1C1E2CA28()
{
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  swift_beginAccess();
}

uint64_t sub_1C1E2CAE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  v4 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphColors;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

double sub_1C1E2CBB0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphColors;
  swift_beginAccess();

  sub_1C1E35760(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
    sub_1C1E520AC();
  }

  return result;
}

void sub_1C1E2CD00(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphColors;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_1C1E2CD70()
{
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  return *(v0 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__needsUpdate);
}

void sub_1C1E2CE18(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  *a2 = *(v3 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__needsUpdate);
}

void sub_1C1E2CEF0(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__needsUpdate) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__needsUpdate) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
    sub_1C1E520AC();
  }
}

double sub_1C1E2D018()
{
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph, &protocol conformance descriptor for CalculateGraph);
  sub_1C1E520BC();

  return result;
}