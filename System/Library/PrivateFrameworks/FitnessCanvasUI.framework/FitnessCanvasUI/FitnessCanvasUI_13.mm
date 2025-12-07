unint64_t sub_1E688C6DC()
{
  result = qword_1ED099FB0;
  if (!qword_1ED099FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099FB0);
  }

  return result;
}

unint64_t sub_1E688C734()
{
  result = qword_1ED099FB8;
  if (!qword_1ED099FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099FB8);
  }

  return result;
}

unint64_t sub_1E688C78C()
{
  result = qword_1ED099FC0;
  if (!qword_1ED099FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099FC0);
  }

  return result;
}

unint64_t sub_1E688C830()
{
  result = qword_1ED099FE0;
  if (!qword_1ED099FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099FD8, &unk_1E68C63A0);
    sub_1E67688F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099FE0);
  }

  return result;
}

unint64_t sub_1E688C8BC()
{
  result = qword_1ED099FE8;
  if (!qword_1ED099FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099FC8, &qword_1E68C6390);
    sub_1E688C830();
    sub_1E688C978(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099FE8);
  }

  return result;
}

uint64_t sub_1E688C978(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E688C9C0()
{
  result = qword_1ED099FF0;
  if (!qword_1ED099FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099FD0, &qword_1E68C6398);
    sub_1E688C830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099FF0);
  }

  return result;
}

uint64_t sub_1E688CA4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001E68E3100 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E68E3120 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001E68E3140 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E68E3160 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E68B3B00();

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

uint64_t CanvasLayout.init(bounds:carouselPageControlSpacing:contentMargins:dynamicTypeSize:intersectionSpacing:sectionDensityFactor:sizeClass:)@<X0>(_OWORD *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>)
{
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = a12;
  *(a9 + 24) = a13;
  *(a9 + 32) = a14;
  v18 = a1[1];
  *(a9 + 40) = *a1;
  *(a9 + 56) = v18;
  *(a9 + 72) = a2;
  *(a9 + 80) = a15;
  *(a9 + 88) = a3;
  v21[0] = a5;
  v21[1] = a6;
  v21[2] = a7;
  v21[3] = a8;
  v19 = type metadata accessor for CanvasLayout(0, v21);
  return (*(*(a6 - 8) + 32))(a9 + *(v19 + 72), a4, a6);
}

__n128 CanvasLayout.contentMargins.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E688CD20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73646E756F62 && a2 == 0xE600000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001E68E3180 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5463696D616E7964 && a2 == 0xEF657A6953657079 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E68E31A0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E68E31C0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73616C43657A6973 && a2 == 0xE900000000000073)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1E688CF84(unsigned __int8 a1)
{
  v1 = 0x73646E756F62;
  if (a1 == 5)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v2 = 0x73616C43657A6973;
  }

  v3 = 0x5463696D616E7964;
  if (a1 != 3)
  {
    v3 = 0xD000000000000013;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0xD00000000000001ALL;
  if (a1 != 1)
  {
    v4 = 0x4D746E65746E6F63;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E688D090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E688CD20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E688D0C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E6773BAC();
  *a1 = result;
  return result;
}

uint64_t sub_1E688D0F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E688D14C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CanvasLayout.encode(to:)(void *a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[4];
  v5 = a2[5];
  v20 = a2[3];
  v21 = v3;
  *&v27 = v3;
  *(&v27 + 1) = v20;
  v22 = v4;
  *&v28 = v4;
  *(&v28 + 1) = v5;
  v19 = v5;
  type metadata accessor for CanvasLayout.CodingKeys(255, &v27);
  swift_getWitnessTable();
  v6 = sub_1E68B3AC0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v23;
  sub_1E68B3BD0();
  v12 = v11[1];
  v27 = *v11;
  v28 = v12;
  v29 = 0;
  type metadata accessor for CGRect(0);
  sub_1E688DB40(&qword_1ED099FF8, MEMORY[0x1E695EF68]);
  v13 = v24;
  sub_1E68B3AB0();
  if (v13)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v14 = v22;
  *&v27 = *(v11 + 4);
  v29 = 1;
  sub_1E67621E8();
  sub_1E68B3AB0();
  v16 = *(v11 + 56);
  v27 = *(v11 + 40);
  v28 = v16;
  v29 = 2;
  sub_1E67F4B08();
  v24 = v10;
  sub_1E68B3AB0();
  LOBYTE(v27) = *(v11 + 72);
  v29 = 3;
  sub_1E688D564();
  sub_1E68B3AB0();
  *&v27 = *(v11 + 10);
  v29 = 4;
  sub_1E68B3AB0();
  *&v27 = *(v11 + 11);
  v29 = 5;
  sub_1E68B30E0();
  v17 = *(v14 + 16);
  v18 = sub_1E6804270();
  v25 = v17;
  v26 = v18;
  swift_getWitnessTable();
  sub_1E68B3AB0();
  LOBYTE(v27) = 6;
  sub_1E68B3AB0();
  return (*(v7 + 8))(v24, v6);
}

unint64_t sub_1E688D564()
{
  result = qword_1EE2EBD00;
  if (!qword_1EE2EBD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD00);
  }

  return result;
}

uint64_t CanvasLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a6;
  v40 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v45 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v52 = v12;
  *(&v52 + 1) = v13;
  *&v53 = v14;
  *(&v53 + 1) = v15;
  type metadata accessor for CanvasLayout.CodingKeys(255, &v52);
  swift_getWitnessTable();
  v47 = sub_1E68B3A20();
  v44 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v16);
  v18 = &v38 - v17;
  v42 = a2;
  v43 = a4;
  *&v52 = a2;
  *(&v52 + 1) = a3;
  *&v53 = a4;
  *(&v53 + 1) = a5;
  v46 = a5;
  v19 = type metadata accessor for CanvasLayout(0, &v52);
  v39 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v38 - v21;
  v23 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v24 = v48;
  sub_1E68B3BC0();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  v25 = v22;
  v48 = v19;
  v26 = v45;
  v27 = v44;
  type metadata accessor for CGRect(0);
  v54 = 0;
  sub_1E688DB40(&qword_1ED09A000, MEMORY[0x1E695EF80]);
  v28 = v18;
  sub_1E68B3A00();
  v29 = v53;
  *v25 = v52;
  *(v25 + 1) = v29;
  v54 = 1;
  sub_1E6762A60();
  sub_1E68B3A00();
  v30 = v27;
  *(v25 + 4) = v52;
  v54 = 2;
  sub_1E67F4BB0();
  sub_1E68B3A00();
  v31 = v53;
  *(v25 + 40) = v52;
  *(v25 + 56) = v31;
  v54 = 3;
  sub_1E688DB84();
  sub_1E68B3A00();
  v25[72] = v52;
  v54 = 4;
  sub_1E68B3A00();
  *(v25 + 10) = v52;
  v32 = v43;
  sub_1E68B30E0();
  v54 = 5;
  v33 = *(v32 + 8);
  v34 = sub_1E6804318();
  v50 = v33;
  v51 = v34;
  swift_getWitnessTable();
  sub_1E68B3A00();
  *(v25 + 11) = v52;
  LOBYTE(v52) = 6;
  sub_1E68B3A00();
  (*(v30 + 8))(v28, v47);
  v35 = v48;
  (*(v40 + 32))(&v25[*(v48 + 72)], v26, a3);
  v36 = v39;
  (*(v39 + 16))(v41, v25, v35);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return (*(v36 + 8))(v25, v35);
}

uint64_t sub_1E688DB40(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E688DB84()
{
  result = qword_1ED09A008;
  if (!qword_1ED09A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED09A008);
  }

  return result;
}

uint64_t static CanvasLayout.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = CGRectEqualToRect(*a1, *a2);
  if (v12)
  {
    if (*(a1 + 32) == *(a2 + 32) && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 40), *(a2 + 40)), vceqq_f64(*(a1 + 56), *(a2 + 56))))) & 1) != 0 && *(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80) && (sub_1E6839A10(), (sub_1E68B3100() & 1) != 0))
    {
      v14[0] = a3;
      v14[1] = a4;
      v14[2] = a5;
      v14[3] = a6;
      type metadata accessor for CanvasLayout(0, v14);
      LOBYTE(v12) = sub_1E68B3190();
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  return v12 & 1;
}

void sub_1E688DD64(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 96) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = ((((((a1 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
  }

  else
  {
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
}

uint64_t dispatch thunk of CanvasItemPlaceholderCaching.registerMissingPlaceholders(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 136) + **(a3 + 136));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E6782994;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CanvasItemPlaceholderCaching.registerPlaceholdersToFetch(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 144) + **(a3 + 144));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E688E298;

  return v9(a1, a2, a3);
}

uint64_t sub_1E688E298(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of CanvasItemPlaceholderCaching.registerResolvedItems(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 152) + **(a3 + 152));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E6782994;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CanvasItemPlaceholderCaching.removeCurrentlyFetchingPlaceholders(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 160) + **(a3 + 160));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E6782994;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CanvasItemPlaceholderCaching.invalidate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 168) + **(a2 + 168));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E6782994;

  return v7(a1, a2);
}

uint64_t dispatch thunk of CanvasItemPlaceholderCaching.invalidatePlaceholders(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 176) + **(a3 + 176));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E6782994;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CanvasItemPlaceholderCaching.transformResolvedItems<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 184) + **(a6 + 184));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1E6782994;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1E688E9D4()
{
  v0 = swift_allocObject();
  sub_1E688F840();
  return v0;
}

uint64_t sub_1E688EA2C()
{
  v18 = v0;
  v1 = *(v0 + 16);
  v2 = *(v1 + 128);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 128) = v4;
    if (qword_1EE2EAA00 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v5 = sub_1E68B1AE0();
  __swift_project_value_buffer(v5, qword_1EE2F8440);
  swift_retain_n();
  v6 = sub_1E68B1AC0();
  v7 = sub_1E68B3740();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446466;

    v10 = sub_1E68915C8();
    v12 = v11;

    v13 = sub_1E683B478(v10, v12, &v17);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2048;
    v14 = *(v1 + 128);

    *(v8 + 14) = v14;

    _os_log_impl(&dword_1E6725000, v6, v7, "%{public}s reference count is now %ld", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E6952A70](v9, -1, -1);
    MEMORY[0x1E6952A70](v8, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 8);

  return v15();
}

void sub_1E688EC2C()
{
  if (!v0[16])
  {
    v1 = *v0;
    if (qword_1EE2EAA00 != -1)
    {
      swift_once();
    }

    v2 = sub_1E68B1AE0();
    __swift_project_value_buffer(v2, qword_1EE2F8440);

    v3 = sub_1E68B1AC0();
    v4 = sub_1E68B3740();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *&v17 = v6;
      *v5 = 136446210;

      v7 = sub_1E68915C8();
      v9 = v8;

      v10 = sub_1E683B478(v7, v9, &v17);

      *(v5 + 4) = v10;
      _os_log_impl(&dword_1E6725000, v3, v4, "%{public}s cleaning up", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1E6952A70](v6, -1, -1);
      MEMORY[0x1E6952A70](v5, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v12 = *(v1 + 152);
    v16 = *(v1 + 160);
    *&v17 = *(v1 + 104);
    v11 = v17;
    *(&v17 + 1) = v12;
    v18 = v16;
    type metadata accessor for CanvasItemPlaceholder(255, &v17);
    v13 = *(v1 + 96);
    *&v14 = *(v1 + 144);
    v17 = *(v1 + 80);
    *&v18 = v13;
    *(&v18 + 1) = v11;
    v15 = *(v1 + 128);
    v19 = *(v1 + 112);
    v20 = v15;
    *(&v14 + 1) = v12;
    v21 = v14;
    v22 = v16;
    v23 = *(v1 + 176);
    type metadata accessor for CanvasItemDescriptor(255, &v17);
    swift_getWitnessTable();
    sub_1E68B30E0();
    sub_1E68B30D0();
    swift_endAccess();
    swift_beginAccess();
    sub_1E68B3630();
    sub_1E68B3620();
    swift_endAccess();
    swift_beginAccess();
    sub_1E68B3620();
    swift_endAccess();
  }
}

uint64_t sub_1E688EF10()
{
  v1[16] = v0;
  v1[17] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097A10, &qword_1E68B7DE0);
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E688EFD4, v0, 0);
}

uint64_t sub_1E688EFD4()
{
  v29 = v0;
  v1 = *(v0 + 128);
  v2 = *(v1 + 128);
  v3 = v2 < 1;
  v4 = v2 - 1;
  if (v3)
  {
    return sub_1E68B3910("Fatal error", 11, 2, 0xD00000000000001ALL, 0x80000001E68E3290, "FitnessCanvasUI/CanvasPlaceholderCaching.swift", 46, 2, 82, 0);
  }

  *(v1 + 128) = v4;
  if (qword_1EE2EAA00 != -1)
  {
    swift_once();
  }

  v5 = sub_1E68B1AE0();
  __swift_project_value_buffer(v5, qword_1EE2F8440);
  swift_retain_n();
  v6 = sub_1E68B1AC0();
  v7 = sub_1E68B3740();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136446466;
    v10 = sub_1E68915C8();
    v12 = sub_1E683B478(v10, v11, &v28);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    v13 = *(v1 + 128);

    *(v8 + 14) = v13;

    _os_log_impl(&dword_1E6725000, v6, v7, "%{public}s reference count is now %ld", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E6952A70](v9, -1, -1);
    MEMORY[0x1E6952A70](v8, -1, -1);
  }

  else
  {
  }

  if (!*(v1 + 128))
  {
    v16 = *(v0 + 136);
    v15 = *(v0 + 144);
    v17 = *(v0 + 128);
    v18 = sub_1E68B3460();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    v19 = v16[6];
    v20 = v16[7];
    v21 = v16[8];
    v22 = v16[9];
    v23 = v16[10];
    v24 = v16[11];
    *(v0 + 16) = v16[5];
    *(v0 + 32) = v19;
    *(v0 + 48) = v20;
    *(v0 + 64) = v21;
    *(v0 + 80) = v22;
    *(v0 + 96) = v23;
    *(v0 + 112) = v24;
    type metadata accessor for CanvasItemPlaceholderCache(255, v0 + 16);
    WitnessTable = swift_getWitnessTable();
    v26 = swift_allocObject();
    v26[2] = v17;
    v26[3] = WitnessTable;
    v26[4] = v17;
    swift_retain_n();
    sub_1E688F558(0, 0, v15, &unk_1E68C67E0, v26);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1E688F314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1E688F3B0;

  return MEMORY[0x1EEE6DA60](1000000000);
}

uint64_t sub_1E688F3B0()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 16);

    return MEMORY[0x1EEE6DFA0](sub_1E688F4F4, v6, 0);
  }
}

uint64_t sub_1E688F4F4()
{
  sub_1E688EC2C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E688F558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097A10, &qword_1E68B7DE0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v23 - v10;
  sub_1E678271C(a3, v23 - v10);
  v12 = sub_1E68B3460();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1E67826B4(v11);
  }

  else
  {
    sub_1E68B3450();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1E68B3400();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1E68B31C0() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1E67826B4(a3);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E67826B4(a3);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1E688F7C4()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1E688F7FC()
{
  sub_1E688F7C4();

  return MEMORY[0x1EEE6DEF0](v0);
}

void *sub_1E688F840()
{
  v1 = *v0;
  v2 = *v0;
  swift_defaultActor_initialize();
  v3 = v1[13];
  v4 = v1[19];
  v5 = v1[20];
  v6 = v1[21];
  *&v22 = v3;
  *(&v22 + 1) = v4;
  v23 = v5;
  v24 = v6;
  v7 = type metadata accessor for CanvasItemPlaceholder(0, &v22);
  v8 = sub_1E68B3350();
  if (sub_1E68B3380())
  {
    WitnessTable = swift_getWitnessTable();
    v10 = sub_1E6891918(v8, v7, WitnessTable);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CD0];
  }

  v0[14] = v10;
  v11 = sub_1E68B3350();
  if (sub_1E68B3380())
  {
    v12 = swift_getWitnessTable();
    v13 = sub_1E6891918(v11, v7, v12);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CD0];
  }

  v0[15] = v13;
  v0[16] = 0;
  v14 = v2[12];
  v15 = v2[18];
  v22 = *(v2 + 5);
  v23 = v14;
  v24 = v3;
  v16 = *(v2 + 8);
  v25 = *(v2 + 7);
  v26 = v16;
  v27 = v15;
  v28 = v4;
  v29 = v5;
  v30 = v6;
  v31 = *(v2 + 11);
  v17 = type metadata accessor for CanvasItemDescriptor(255, &v22);
  swift_getTupleTypeMetadata2();
  v18 = sub_1E68B3350();
  v19 = swift_getWitnessTable();
  v20 = sub_1E678307C(v18, v7, v17, v19);

  v0[17] = v20;
  return v0;
}

uint64_t sub_1E688FA90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E67825C0;

  return sub_1E688EA0C();
}

uint64_t sub_1E688FB20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097A10, &qword_1E68B7DE0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - v6;
  v8 = sub_1E68B3460();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;

  sub_1E67877E0(0, 0, v7, a2, v9);
}

uint64_t sub_1E688FC1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E6782994;

  return sub_1E688EF10();
}

uint64_t sub_1E688FCAC(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1E688FCF4, v1, 0);
}

uint64_t sub_1E688FCF4()
{
  v1 = *(v0 + 96);
  *(v0 + 72) = *(v0 + 80);
  swift_beginAccess();
  v2 = *(v1 + 104);
  v3 = *(v1 + 168);

  v4 = *(v1 + 152);
  *(v0 + 16) = v2;
  *(v0 + 24) = v4;
  *(v0 + 40) = v3;
  type metadata accessor for CanvasItemPlaceholder(255, v0 + 16);
  swift_getWitnessTable();
  sub_1E68B3630();
  swift_getWitnessTable();
  sub_1E68B3610();
  swift_endAccess();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1E688FE1C(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v2[28] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1E688FE64, v1, 0);
}

uint64_t sub_1E688FE64()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  swift_beginAccess();
  v4 = v2[17];
  v5 = *(v1 + 104);
  v6 = *(v1 + 168);
  v24 = *(v1 + 152);
  *(v0 + 16) = v5;
  *(v0 + 24) = v24;
  *(v0 + 40) = v6;
  v23 = *(v1 + 160);
  v7 = type metadata accessor for CanvasItemPlaceholder(0, v0 + 16);
  v8 = *(v1 + 88);
  v9 = *(v1 + 112);
  v10 = *(v1 + 128);
  v11 = *(v1 + 176);
  *(v0 + 16) = *(v1 + 80);
  *(v0 + 24) = v8;
  *(v0 + 40) = v5;
  *(v0 + 48) = v9;
  *(v0 + 64) = v10;
  v8.i64[0] = *(v1 + 144);
  *(v0 + 80) = vzip1q_s64(v8, v24);
  *(v0 + 96) = v23;
  *(v0 + 112) = v11;
  type metadata accessor for CanvasItemDescriptor(0, v0 + 16);
  WitnessTable = swift_getWitnessTable();
  *(v0 + 16) = v4;
  sub_1E68B3050();

  swift_getWitnessTable();
  sub_1E68B3640();
  MEMORY[0x1E6951DD0]();

  swift_beginAccess();
  v13 = v2[15];

  MEMORY[0x1E6951DD0](v3, v13, v7, WitnessTable);
  swift_beginAccess();
  v14 = v2[14];

  MEMORY[0x1E6951DD0](v3, v14, v7, WitnessTable);
  *(v0 + 176) = v2[17];

  sub_1E68B3640();
  sub_1E68B3560();

  sub_1E68B3560();
  v15 = sub_1E68B3560();
  if (sub_1E68B35D0())
  {

    v16 = sub_1E68B35B0();

    v17 = sub_1E68B35B0();

    v18 = sub_1E68B35B0();

    sub_1E68438C8();
    swift_allocError();
    *v19 = v16;
    *(v19 + 8) = v17;
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    swift_willThrow();
    v20 = *(v0 + 8);

    return v20();
  }

  else
  {

    *(v0 + 200) = v15;
    swift_beginAccess();
    sub_1E68B3630();

    swift_getWitnessTable();
    sub_1E68B3610();
    swift_endAccess();
    v22 = *(v0 + 8);

    return v22(v15);
  }
}

uint64_t sub_1E6890288(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v2[19] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1E68902D0, v1, 0);
}

uint64_t sub_1E68902D0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v1 + 104);
  v4 = *(v1 + 152);
  v17 = *(v1 + 160);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v17;
  type metadata accessor for CanvasItemPlaceholder(0, v0 + 16);
  v5 = *(v1 + 112);
  v11 = *(v1 + 144);
  v12 = *(v1 + 176);
  v15 = *(v1 + 128);
  v16 = *(v1 + 80);
  *(v0 + 16) = v16;
  *&v6 = *(v1 + 96);
  *(&v6 + 1) = v3;
  v13 = v6;
  v14 = v5;
  *(v0 + 32) = v6;
  *(v0 + 48) = v5;
  *(v0 + 64) = v15;
  *(v0 + 80) = v11;
  *(v0 + 88) = v4;
  *(v0 + 96) = v17;
  *(v0 + 112) = v12;
  type metadata accessor for CanvasItemDescriptor(0, v0 + 16);
  swift_getWitnessTable();
  *(v0 + 128) = v2;
  swift_beginAccess();
  sub_1E68B3630();
  sub_1E68B3050();
  swift_getWitnessTable();
  sub_1E68B3600();
  swift_endAccess();
  v7 = swift_task_alloc();
  *&v8 = v11;
  *(&v8 + 1) = v4;
  v7[1] = v16;
  v7[2] = v13;
  v7[3] = v14;
  v7[4] = v15;
  v7[5] = v8;
  v7[6] = v17;
  v7[7] = v12;
  swift_beginAccess();
  sub_1E68B30E0();

  sub_1E68B3070();
  swift_endAccess();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1E6890520(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1E6890568, v1, 0);
}

uint64_t sub_1E6890568()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  v2 = *(v1 + 168);
  v3 = *(v1 + 152);
  *(v0 + 16) = *(v1 + 104);
  *(v0 + 24) = v3;
  *(v0 + 40) = v2;
  type metadata accessor for CanvasItemPlaceholder(255, v0 + 16);
  swift_getWitnessTable();
  sub_1E68B3630();
  sub_1E68B35F0();
  swift_endAccess();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1E6890650()
{
  v1 = *v0;
  v2 = *v0;
  swift_beginAccess();
  *&v10 = v1[13];
  v3 = v10;
  v9 = *(v2 + 10);
  *(&v10 + 1) = v1[19];
  v4 = *(&v10 + 1);
  v11 = v9;
  type metadata accessor for CanvasItemPlaceholder(255, &v10);
  swift_getWitnessTable();
  sub_1E68B3630();
  sub_1E68B3620();
  swift_endAccess();
  swift_beginAccess();
  v5 = v1[12];
  *&v6 = v2[18];
  v10 = *(v2 + 5);
  *&v11 = v5;
  *(&v11 + 1) = v3;
  v7 = *(v2 + 8);
  v12 = *(v2 + 7);
  v13 = v7;
  *(&v6 + 1) = v4;
  v14 = v6;
  v15 = v9;
  v16 = *(v2 + 11);
  type metadata accessor for CanvasItemDescriptor(255, &v10);
  sub_1E68B30E0();
  sub_1E68B30D0();
  swift_endAccess();
  swift_beginAccess();
  sub_1E68B3620();
  return swift_endAccess();
}

uint64_t sub_1E689082C(uint64_t a1)
{
  v2 = *v1;
  swift_beginAccess();
  v14 = v2[10];
  v3 = v2[11];
  v4 = v2[12];
  v5 = v2[13];
  v15 = v2[14];
  v13 = v2[15];
  v12 = v2[16];
  v11 = v2[17];
  v10 = v2[18];
  v6 = v2[19];
  v7 = v2[20];
  v8 = v2[21];
  v17 = v2[22];
  v16 = v2[23];

  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  type metadata accessor for CanvasItemPlaceholder(0, &v18);
  swift_getWitnessTable();
  v1[14] = sub_1E68B35C0();

  swift_beginAccess();

  v18 = v14;
  v19 = v3;
  v20 = v4;
  v21 = v5;
  v22 = v15;
  v23 = v13;
  v24 = v12;
  v25 = v11;
  v26 = v10;
  v27 = v6;
  v28 = v7;
  v29 = v8;
  v30 = v17;
  v31 = v16;
  type metadata accessor for CanvasItemDescriptor(0, &v18);
  v1[17] = sub_1E68B30A0();
}

BOOL sub_1E6890B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v46 = a8;
  v44 = a6;
  v52 = a2;
  v53 = a3;
  v50 = a1;
  v45 = a16;
  v42 = a9;
  v43 = a15;
  v51 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v48 = a14;
  v49 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v19;
  v55 = a12;
  v20 = v19;
  v47 = v19;
  v56 = a13;
  v57 = a14;
  v21 = type metadata accessor for CanvasItemPlaceholder(255, &v54);
  v54 = a4;
  v55 = a5;
  v56 = v44;
  v57 = v20;
  v58 = v46;
  v59 = v42;
  v60 = a10;
  v61 = a11;
  v62 = a12;
  v63 = a13;
  v64 = a14;
  v65 = v43;
  v66 = v45;
  v22 = type metadata accessor for CanvasItemDescriptor(255, &v54);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v24 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v25);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v32 = &v40 - v31;
  v41 = v21;
  v33 = *(v21 - 8);
  (*(v33 + 16))(&v40 - v31, v50, v21, v30);
  v34 = *(TupleTypeMetadata2 + 48);
  v46 = v22;
  v35 = *(v22 - 8);
  (*(v35 + 16))(&v32[v34], v52, v22);
  (*(v24 + 16))(v27, v32, TupleTypeMetadata2);
  v52 = *(TupleTypeMetadata2 + 48);
  v36 = v51;
  v37 = v49;
  v38 = v47;
  (*(v51 + 16))(v49, v27, v47);
  (*(v33 + 8))(v27, v41);
  LOBYTE(v33) = sub_1E68B35E0();
  (*(v36 + 8))(v37, v38);
  (*(v24 + 8))(v32, TupleTypeMetadata2);
  (*(v35 + 8))(&v27[v52], v46);
  return (v33 & 1) == 0;
}

uint64_t sub_1E6890F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6890F44, v3, 0);
}

uint64_t sub_1E6890F44()
{
  v1 = v0[11];
  v2 = v0[9];
  swift_beginAccess();
  v3 = *(v1 + 136);
  swift_beginAccess();
  v4 = *(v1 + 112);

  v2(v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E68910B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E6782994;

  return sub_1E688FCAC(a1);
}

uint64_t sub_1E689114C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E68911E4;

  return sub_1E688FE1C(a1);
}

uint64_t sub_1E68911E4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1E68912E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E6782994;

  return sub_1E6890288(a1);
}

uint64_t sub_1E689137C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E6782994;

  return sub_1E6890520(a1);
}

uint64_t sub_1E6891414()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1E6891434, v2, 0);
}

uint64_t sub_1E6891434()
{
  sub_1E6890650();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6891494(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1E68914B4, v3, 0);
}

uint64_t sub_1E68914B4()
{
  sub_1E689082C(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6891514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E67825C0;

  return sub_1E6890F20(a1, a2, a3);
}

unint64_t sub_1E68915C8()
{
  sub_1E68B3820();

  v0 = sub_1E68B31B0();
  MEMORY[0x1E6951A70](v0);

  MEMORY[0x1E6951A70](41, 0xE100000000000000);
  return 0xD00000000000001CLL;
}

uint64_t sub_1E6891714@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v10[0] = v2[1];
  v10[1] = v5;
  v6 = v2[4];
  v10[2] = v2[3];
  v10[3] = v6;
  v7 = v2[6];
  v10[4] = v2[5];
  v10[5] = v7;
  v10[6] = v2[7];
  v8 = type metadata accessor for CanvasItemDescriptor(0, v10);
  return (*(*(v8 - 8) + 16))(a2, a1, v8);
}

uint64_t sub_1E68917B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E6782994;

  return sub_1E688FC1C();
}

uint64_t sub_1E6891864()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E67825C0;

  return sub_1E688FA90();
}

uint64_t sub_1E6891918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v52 = &v40 - v11;
  v41 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v40 - v15;
  if (sub_1E68B3380())
  {
    sub_1E68B3800();
    v17 = sub_1E68B37F0();
  }

  else
  {
    v17 = MEMORY[0x1E69E7CD0];
  }

  v45 = sub_1E68B3380();
  if (!v45)
  {
    return v17;
  }

  v18 = 0;
  v50 = (v6 + 16);
  v51 = v17 + 56;
  v47 = v6 + 32;
  v49 = (v6 + 8);
  v42 = v6;
  v43 = v5;
  v44 = v16;
  while (1)
  {
    v19 = sub_1E68B3370();
    sub_1E68B3340();
    if (v19)
    {
      v20 = *(v6 + 16);
      v20(v16, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18), a2);
      v21 = __OFADD__(v18, 1);
      v22 = v18 + 1;
      if (v21)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_1E68B3840();
      if (v41 != 8)
      {
        goto LABEL_23;
      }

      v53 = result;
      v20 = *v50;
      (*v50)(v16, &v53, a2);
      swift_unknownObjectRelease();
      v21 = __OFADD__(v18, 1);
      v22 = v18 + 1;
      if (v21)
      {
LABEL_20:
        __break(1u);
        return v17;
      }
    }

    v48 = v22;
    v46 = *(v6 + 32);
    v46(v52, v16, a2);
    v23 = sub_1E68B3130();
    v24 = v17;
    v25 = -1 << *(v17 + 32);
    v26 = v23 & ~v25;
    v27 = v26 >> 6;
    v28 = *(v51 + 8 * (v26 >> 6));
    v29 = 1 << v26;
    v30 = *(v6 + 72);
    if (((1 << v26) & v28) != 0)
    {
      v31 = ~v25;
      do
      {
        v20(v8, (*(v24 + 48) + v30 * v26), a2);
        v32 = a3;
        v33 = sub_1E68B3190();
        v34 = *v49;
        (*v49)(v8, a2);
        if (v33)
        {
          v34(v52, a2);
          a3 = v32;
          v6 = v42;
          v5 = v43;
          v17 = v24;
          goto LABEL_7;
        }

        v26 = (v26 + 1) & v31;
        v27 = v26 >> 6;
        v28 = *(v51 + 8 * (v26 >> 6));
        v29 = 1 << v26;
        a3 = v32;
      }

      while (((1 << v26) & v28) != 0);
      v6 = v42;
      v5 = v43;
    }

    v35 = v52;
    *(v51 + 8 * v27) = v29 | v28;
    v36 = *(v24 + 48) + v30 * v26;
    v17 = v24;
    result = (v46)(v36, v35, a2);
    v38 = *(v24 + 16);
    v21 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v21)
    {
      break;
    }

    *(v24 + 16) = v39;
LABEL_7:
    v16 = v44;
    v18 = v48;
    if (v48 == v45)
    {
      return v17;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm_10()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E6891D14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E67825C0;

  return sub_1E688F314(a1, v4, v5, v6);
}

uint64_t String.attributedTextStyle(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E68B1880();
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  (*(v8 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);

  return sub_1E68B1830();
}

uint64_t Optional<A>.attributedTextStyle(_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_1E68B1880();
  v11 = MEMORY[0x1EEE9AC00](v7, v8);
  if (a3)
  {
    (*(v10 + 16))(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);

    sub_1E68B1830();
    v12 = sub_1E68B1820();
    return (*(*(v12 - 8) + 56))(a4, 0, 1, v12);
  }

  else
  {
    v14 = sub_1E68B1820();
    v15 = *(*(v14 - 8) + 56);

    return v15(a4, 1, 1, v14);
  }
}

double sub_1E6892048@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t ListView.init(header:items:footer:metrics:contentMargins:densityFactor:dynamicTypeSize:sizeClass:artworkViewBuilder:artworkLeadingOverlayViewBuilder:artworkTrailingOverlayViewBuilder:actionButtonViewBuilder:contextMenuViewModifierBuilder:viewDescriptorBuilder:sectionHeaderSubtitleViewBuilder:onItemAppearedAtIndex:onItemDisappearedAtIndex:onItemSelectedWithIdentifier:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t *a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, __int128 a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, __int128 a36, uint64_t a38, __int128 a39, __int128 a41, uint64_t a43, __int128 a44, __int128 a46, __int128 a48, __int128 a50, __int128 a52, __int128 a54, uint64_t a56, uint64_t a57)
{
  v94 = *a3;
  v49 = a6[1];
  v92 = a6[2];
  v93 = *a6;
  swift_getFunctionTypeMetadata1();
  v50 = sub_1E68B3750();
  v124 = 0;
  v125 = 0;
  v90 = a5[1];
  v91 = *a5;
  sub_1E672890C(&v124, v50, &v106);
  v101 = *(&v106 + 1);
  v102 = v106;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v106 = a31;
  *(&v106 + 1) = a41;
  v107 = AssociatedConformanceWitness;
  v108 = *(&a52 + 1);
  type metadata accessor for CanvasSectionHeader(255, &v106);
  v52 = sub_1E68B3750();
  v99 = *(v52 - 8);
  v100 = v52;
  (*(v99 + 16))(a9, a1);
  v106 = a31;
  v107 = a32;
  v108 = a33;
  v109 = a34;
  v110 = a35;
  v111 = a36;
  v112 = a38;
  v113 = a39;
  v114 = a41;
  v115 = a43;
  v116 = a44;
  v117 = a46;
  v118 = a48;
  v119 = a50;
  v120 = a52;
  v121 = a54;
  v122 = a56;
  v123 = a57;
  v53 = type metadata accessor for ListView(0, &v106);
  *(a9 + v53[61]) = a2;
  *(a9 + v53[62]) = v94;
  v54 = v53[63];
  v55 = sub_1E68B3750();
  v95 = *(v55 - 8);
  v97 = v55;
  (*(v95 + 16))(a9 + v54, a4);
  v56 = v53[68];
  v124 = a10;
  v125 = a11;
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v124, FunctionTypeMetadata1, &v106);
  *(a9 + v56) = v106;
  v58 = v53[69];
  v124 = a12;
  v125 = a13;
  v59 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v124, v59, &v106);
  *(a9 + v58) = v106;
  v60 = v53[70];
  v124 = a14;
  v125 = a15;
  v61 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v124, v61, &v106);
  *(a9 + v60) = v106;
  v62 = (a9 + v53[74]);

  *v62 = sub_1E6892B84(a20, a21, a31, *(&a31 + 1), a32, a33, a34, a35, a36, *(&a36 + 1), a38, a39, a41, a43, a44, *(&a44 + 1), a46, a48, a50, a52, a54, a56, a57);
  v62[1] = v63;
  v64 = (a9 + v53[71]);

  *&v88[40] = a43;
  *&v88[24] = a41;
  *v88 = a38;
  *&v88[8] = a39;
  *v64 = sub_1E689296C(a16, a17, a31, *(&a31 + 1), a32, a33, a34, a35, a36, *v88, *&v88[16], *&v88[32], a44, a46, a48, a50, a52, a54, a56, a57);
  v64[1] = v65;
  v66 = v53[72];
  v124 = a18;
  v125 = a19;
  v67 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v124, v67, &v106);
  *(a9 + v66) = v106;
  v68 = v53[73];
  v124 = a22;
  v125 = a23;
  v69 = v53;
  v70 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v124, v70, &v106);
  *(a9 + v68) = v106;
  v71 = (a9 + v53[64]);
  *v71 = v91;
  v71[1] = v90;
  v72 = (a9 + v53[65]);
  *v72 = v93;
  v72[1] = v49;
  v72[2] = v92;
  *(a9 + v53[66]) = a7;
  v73 = v53[67];
  v74 = *(a44 - 8);
  (*(v74 + 16))(a9 + v73, a8, a44);
  if (a24)
  {
    v75 = swift_allocObject();
    *(v75 + 16) = a24;
    *(v75 + 24) = a25;
    v76 = sub_1E67E403C;
  }

  else
  {
    v76 = 0;
    v75 = 0;
  }

  v77 = (a9 + v69[75]);
  *v77 = v76;
  v77[1] = v75;
  if (a26)
  {
    v78 = swift_allocObject();
    *(v78 + 16) = a26;
    *(v78 + 24) = a27;
    v79 = sub_1E67E3FAC;
  }

  else
  {
    v79 = 0;
    v78 = 0;
  }

  v80 = (a9 + v69[76]);
  v81 = (a9 + v69[77]);
  *v80 = v79;
  v80[1] = v78;
  v82 = sub_1E6892EA0(a28, a29, a31, *(&a31 + 1), a32, a33, a34, a35, a36, *(&a36 + 1), a38, a39, *(&a39 + 1), a41, *(&a41 + 1), a43, a44, *(&a44 + 1), a46, *(&a46 + 1), a48, *(&a48 + 1), a50, *(&a50 + 1), a52, *(&a52 + 1), a54, *(&a54 + 1), a56, a57);
  v84 = v83;

  (*(v74 + 8))(a8, a44);
  (*(v95 + 8))(a4, v97);
  (*(v99 + 8))(a1, v100);
  sub_1E672E440(v102, v101);
  *v81 = v82;
  v81[1] = v84;
  v85 = v69[78];
  v86 = sub_1E68B1950();
  return (*(*(v86 - 8) + 32))(a9 + v85, a30, v86);
}

uint64_t sub_1E689296C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20)
{
  v28 = swift_allocObject();
  *(v28 + 16) = a3;
  *(v28 + 24) = a4;
  *(v28 + 32) = a5;
  *(v28 + 40) = a6;
  *(v28 + 48) = a7;
  *(v28 + 56) = a8;
  *(v28 + 64) = a9;
  *(v28 + 80) = a10;
  *(v28 + 96) = a11;
  *(v28 + 112) = a12;
  *(v28 + 128) = a13;
  *(v28 + 144) = a14;
  *(v28 + 160) = a15;
  *(v28 + 176) = a16;
  *(v28 + 192) = a17;
  *(v28 + 208) = a18;
  *(v28 + 224) = a19;
  *(v28 + 232) = a20;
  *(v28 + 240) = a1;
  *(v28 + 248) = a2;
  v31[0] = sub_1E67D5538;
  v31[1] = v28;
  sub_1E68B3750();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098208, &qword_1E68BB878);
  FunctionTypeMetadata2 = swift_getFunctionTypeMetadata2();
  sub_1E672890C(v31, FunctionTypeMetadata2, &v32);
  return v32;
}

uint64_t (*sub_1E6892AD8(uint64_t a1))(uint64_t a1, uint64_t a2, char a3)
{
  v3 = (v1 + *(a1 + 284));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  v7 = *(a1 + 32);
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 32) = v7;
  v8 = *(a1 + 64);
  *(v6 + 48) = *(a1 + 48);
  *(v6 + 64) = v8;
  v9 = *(a1 + 96);
  *(v6 + 80) = *(a1 + 80);
  *(v6 + 96) = v9;
  v10 = *(a1 + 128);
  *(v6 + 112) = *(a1 + 112);
  *(v6 + 128) = v10;
  v11 = *(a1 + 160);
  *(v6 + 144) = *(a1 + 144);
  *(v6 + 160) = v11;
  v12 = *(a1 + 192);
  *(v6 + 176) = *(a1 + 176);
  *(v6 + 192) = v12;
  v13 = *(a1 + 224);
  *(v6 + 208) = *(a1 + 208);
  *(v6 + 224) = v13;
  *(v6 + 240) = v5;
  *(v6 + 248) = v4;

  return sub_1E689A1D0;
}

uint64_t sub_1E6892B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, uint64_t a22, uint64_t a23)
{
  v27 = swift_allocObject();
  *(v27 + 16) = a3;
  *(v27 + 24) = a4;
  *(v27 + 32) = a5;
  *(v27 + 40) = a6;
  *(v27 + 48) = a7;
  *(v27 + 56) = a8;
  *(v27 + 64) = a9;
  *(v27 + 72) = a10;
  *(v27 + 80) = a11;
  *(v27 + 88) = a12;
  *(v27 + 104) = a13;
  *(v27 + 120) = a14;
  *(v27 + 128) = a15;
  *(v27 + 136) = a16;
  *(v27 + 144) = a17;
  *(v27 + 160) = a18;
  *(v27 + 176) = a19;
  *(v27 + 192) = a20;
  *(v27 + 208) = a21;
  *(v27 + 224) = a22;
  *(v27 + 232) = a23;
  *(v27 + 240) = a1;
  *(v27 + 248) = a2;
  v34[0] = sub_1E67D559C;
  v34[1] = v27;
  FunctionTypeMetadata2 = swift_getFunctionTypeMetadata2();
  sub_1E672890C(v34, FunctionTypeMetadata2, &v35);
  return v35;
}

uint64_t (*sub_1E6892CEC(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = (v1 + *(a1 + 296));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  v7 = *(a1 + 32);
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 32) = v7;
  v8 = *(a1 + 64);
  *(v6 + 48) = *(a1 + 48);
  *(v6 + 64) = v8;
  v9 = *(a1 + 96);
  *(v6 + 80) = *(a1 + 80);
  *(v6 + 96) = v9;
  v10 = *(a1 + 128);
  *(v6 + 112) = *(a1 + 112);
  *(v6 + 128) = v10;
  v11 = *(a1 + 160);
  *(v6 + 144) = *(a1 + 144);
  *(v6 + 160) = v11;
  v12 = *(a1 + 192);
  *(v6 + 176) = *(a1 + 176);
  *(v6 + 192) = v12;
  v13 = *(a1 + 224);
  *(v6 + 208) = *(a1 + 208);
  *(v6 + 224) = v13;
  *(v6 + 240) = v5;
  *(v6 + 248) = v4;

  return sub_1E689B2EC;
}

uint64_t (*sub_1E6892D98(uint64_t a1))(uint64_t a1)
{
  v2 = (v1 + *(a1 + 300));
  v3 = *v2;
  v4 = v2[1];
  if (*v2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E689B34C;
  }

  else
  {
    v6 = 0;
  }

  sub_1E6739D68(v3, v4);
  return v6;
}

uint64_t (*sub_1E6892E1C(uint64_t a1))(uint64_t a1)
{
  v2 = (v1 + *(a1 + 304));
  v3 = *v2;
  v4 = v2[1];
  if (*v2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E689B2B4;
  }

  else
  {
    v6 = 0;
  }

  sub_1E6739D68(v3, v4);
  return v6;
}

uint64_t sub_1E6892EA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a1)
  {
    v30 = a1;
    a1 = swift_allocObject();
    a1[2] = a3;
    a1[3] = a4;
    a1[4] = a5;
    a1[5] = a6;
    a1[6] = a7;
    a1[7] = a8;
    a1[8] = a9;
    a1[9] = a10;
    a1[10] = a11;
    a1[11] = a12;
    a1[12] = a13;
    a1[13] = a14;
    a1[14] = a15;
    a1[15] = a16;
    a1[16] = a17;
    a1[17] = a18;
    a1[18] = a19;
    a1[19] = a20;
    a1[20] = a21;
    a1[21] = a22;
    a1[22] = a23;
    a1[23] = a24;
    a1[24] = a25;
    a1[25] = a26;
    a1[26] = a27;
    a1[27] = a28;
    a1[28] = a29;
    a1[29] = a30;
    a1[30] = v30;
    a1[31] = a2;
    v37 = sub_1E67D5600;
  }

  else
  {
    v37 = 0;
  }

  v41[0] = v37;
  v41[1] = a1;
  swift_getFunctionTypeMetadata1();
  v38 = sub_1E68B3750();
  sub_1E672890C(v41, v38, &v42);
  return v42;
}

uint64_t (*sub_1E6893090(uint64_t a1))()
{
  v2 = (v1 + *(a1 + 308));
  v3 = *v2;
  v4 = v2[1];
  if (*v2)
  {
    v6 = swift_allocObject();
    v7 = *(a1 + 32);
    *(v6 + 16) = *(a1 + 16);
    *(v6 + 32) = v7;
    v8 = *(a1 + 64);
    *(v6 + 48) = *(a1 + 48);
    *(v6 + 64) = v8;
    v9 = *(a1 + 96);
    *(v6 + 80) = *(a1 + 80);
    *(v6 + 96) = v9;
    v10 = *(a1 + 128);
    *(v6 + 112) = *(a1 + 112);
    *(v6 + 128) = v10;
    v11 = *(a1 + 160);
    *(v6 + 144) = *(a1 + 144);
    *(v6 + 160) = v11;
    v12 = *(a1 + 192);
    *(v6 + 176) = *(a1 + 176);
    *(v6 + 192) = v12;
    v13 = *(a1 + 224);
    *(v6 + 208) = *(a1 + 208);
    *(v6 + 224) = v13;
    *(v6 + 240) = v3;
    *(v6 + 248) = v4;
    v14 = sub_1E689B324;
  }

  else
  {
    v14 = 0;
  }

  sub_1E6739D68(v3, v4);
  return v14;
}

uint64_t ListView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8, &unk_1E68BB7C0);
  v117 = &v202[8];
  v3 = a1[3];
  v119 = a1[14];
  *v202 = v3;
  *&v202[8] = v119;
  v4 = a1[19];
  v120 = a1[26];
  *&v202[16] = v4;
  v203 = v120;
  type metadata accessor for CanvasSectionHeaderView(255, v202);
  sub_1E68B2390();
  sub_1E68B1E40();
  sub_1E68B2220();
  v118 = sub_1E68B3750();
  v112 = a1[18];
  swift_getTupleTypeMetadata2();
  v5 = sub_1E68B33B0();
  v132 = a1[29];
  v115 = *(v132 + 32);
  v116 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = a1[20];
  *v202 = a1[5];
  *&v202[8] = v3;
  v128 = *v202;
  *&v202[16] = v3;
  v203 = v6;
  v7 = v6;
  v129 = v6;
  *&v204 = v4;
  *(&v204 + 1) = v4;
  v107 = type metadata accessor for ActionCardView(255, v202);
  WitnessTable = swift_getWitnessTable();
  *v202 = v107;
  *&v202[8] = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v124 = sub_1E68B2440();
  sub_1E68B1E40();
  v8 = sub_1E68B1E40();
  *&v123 = sub_1E6899E90(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v213 = v7;
  v214 = v123;
  v9 = MEMORY[0x1E697E858];
  v10 = swift_getWitnessTable();
  v211 = v10;
  v212 = MEMORY[0x1E697F568];
  v126 = v9;
  v104 = v8;
  v103 = swift_getWitnessTable();
  *v202 = v8;
  *&v202[8] = v103;
  v91 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v96 = sub_1E68B1E40();
  v209 = v10;
  v210 = MEMORY[0x1E697E040];
  v95 = swift_getWitnessTable();
  *v202 = v96;
  *&v202[8] = v95;
  swift_getOpaqueTypeMetadata2();
  v97 = sub_1E68B2220();
  v99 = sub_1E68B2B90();
  v98 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8, &qword_1E68B4C68);
  v102 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0, &qword_1E68BB7D0);
  v105 = sub_1E68B2220();
  v86 = sub_1E68B2220();
  OpaqueTypeMetadata2 = a1[10];
  v111 = a1[16];
  v113 = a1[28];
  *v202 = v128;
  *&v202[8] = v3;
  *&v202[16] = v3;
  v203 = OpaqueTypeMetadata2;
  *&v204 = v111;
  *(&v204 + 1) = v129;
  v205 = v4;
  v206 = v4;
  v131 = v4;
  v125 = a1[24];
  v207 = v125;
  v208 = v113;
  v101 = type metadata accessor for FullWidthStageView(255, v202);
  v100 = swift_getWitnessTable();
  *v202 = v101;
  *&v202[8] = v100;
  swift_getOpaqueTypeMetadata2();
  v108 = v3;
  v94 = type metadata accessor for InfoActionCardView(255, v3, v4, v11);
  v93 = swift_getWitnessTable();
  *v202 = v94;
  *&v202[8] = v93;
  swift_getOpaqueTypeMetadata2();
  v92 = sub_1E68B2220();
  v64 = sub_1E68B2220();
  v130 = a1;
  v110 = *(a1 + 21);
  *v202 = v128;
  v203 = v129;
  v204 = v110;
  v109 = *(a1 + 3);
  *&v202[8] = v109;
  v90 = type metadata accessor for LargeBrickView(255, v202);
  v89 = swift_getWitnessTable();
  *v202 = v90;
  *&v202[8] = v89;
  swift_getOpaqueTypeMetadata2();
  v88 = type metadata accessor for DynamicBrickView(255, v128, v129, v12);
  v87 = swift_getWitnessTable();
  *v202 = v88;
  *&v202[8] = v87;
  swift_getOpaqueTypeMetadata2();
  v79 = sub_1E68B2220();
  v84 = type metadata accessor for MonogramVerticalStackView(255, v128, v129, v13);
  v83 = swift_getWitnessTable();
  *v202 = v84;
  *&v202[8] = v83;
  swift_getOpaqueTypeMetadata2();
  v80 = sub_1E68B2220();
  v85 = sub_1E68B2220();
  sub_1E68B2220();
  v82 = type metadata accessor for StandardCardView(255, v128, v129, v14);
  v81 = swift_getWitnessTable();
  *v202 = v82;
  *&v202[8] = v81;
  swift_getOpaqueTypeMetadata2();
  *v202 = v128;
  *&v202[8] = v3;
  *&v202[16] = v129;
  v203 = v4;
  v78 = type metadata accessor for StandardHorizontalStackView(255, v202);
  v77 = swift_getWitnessTable();
  *v202 = v78;
  *&v202[8] = v77;
  swift_getOpaqueTypeMetadata2();
  v61 = sub_1E68B2220();
  v76 = type metadata accessor for StandardVerticalStackView(255, v128, v129, v15);
  v75 = swift_getWitnessTable();
  *v202 = v76;
  *&v202[8] = v75;
  swift_getOpaqueTypeMetadata2();
  v70 = type metadata accessor for SummaryCardView(255, v128, v129, v16);
  v74 = sub_1E68B2220();
  v58[1] = sub_1E68B2220();
  v72 = type metadata accessor for TallCardView(255, v128, v129, v17);
  v71 = swift_getWitnessTable();
  *v202 = v72;
  *&v202[8] = v71;
  swift_getOpaqueTypeMetadata2();
  v66 = type metadata accessor for VerticalStackCardView(255, v128, v129, v18);
  v65 = swift_getWitnessTable();
  *v202 = v66;
  *&v202[8] = v65;
  swift_getOpaqueTypeMetadata2();
  v58[2] = sub_1E68B2220();
  v20 = type metadata accessor for WideBrickView(255, v128, v129, v19);
  v59 = swift_getWitnessTable();
  *v202 = v20;
  *&v202[8] = v59;
  swift_getOpaqueTypeMetadata2();
  v58[3] = sub_1E68B2220();
  v60 = sub_1E68B2220();
  v62 = sub_1E68B2220();
  v63 = sub_1E68B2220();
  v67 = sub_1E68B2B90();
  v68 = sub_1E68B1E40();
  v69 = sub_1E68B2220();
  v73 = sub_1E68B1E40();
  v124 = sub_1E68B1E40();
  *v202 = v107;
  *&v202[8] = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *v202 = v8;
  *&v202[8] = v103;
  v22 = swift_getOpaqueTypeConformance2();
  *v202 = v96;
  *&v202[8] = v95;
  v200 = v22;
  v201 = swift_getOpaqueTypeConformance2();
  v199 = swift_getWitnessTable();
  v197 = swift_getWitnessTable();
  v198 = MEMORY[0x1E697E5D8];
  v195 = swift_getWitnessTable();
  v196 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8, &qword_1E68B4C68, MEMORY[0x1E697D680]);
  v23 = swift_getWitnessTable();
  v107 = MEMORY[0x1E6981870];
  v193 = v23;
  v194 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0, &qword_1E68BB7D0, MEMORY[0x1E6981870]);
  v191 = OpaqueTypeConformance2;
  v192 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  *v202 = v101;
  *&v202[8] = v100;
  v25 = swift_getOpaqueTypeConformance2();
  *v202 = v94;
  *&v202[8] = v93;
  v189 = v25;
  v190 = swift_getOpaqueTypeConformance2();
  v187 = v24;
  v188 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  *v202 = v90;
  *&v202[8] = v89;
  v27 = swift_getOpaqueTypeConformance2();
  *v202 = v88;
  *&v202[8] = v87;
  v185 = v27;
  v186 = swift_getOpaqueTypeConformance2();
  v28 = swift_getWitnessTable();
  *v202 = v84;
  *&v202[8] = v83;
  v183 = swift_getOpaqueTypeConformance2();
  v184 = v186;
  v181 = v28;
  v182 = swift_getWitnessTable();
  v179 = v26;
  v180 = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  *v202 = v82;
  *&v202[8] = v81;
  v30 = swift_getOpaqueTypeConformance2();
  *v202 = v78;
  *&v202[8] = v77;
  v177 = v30;
  v178 = swift_getOpaqueTypeConformance2();
  v31 = swift_getWitnessTable();
  *v202 = v76;
  *&v202[8] = v75;
  v175 = swift_getOpaqueTypeConformance2();
  v176 = swift_getWitnessTable();
  v173 = v31;
  v174 = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  *v202 = v72;
  *&v202[8] = v71;
  v33 = swift_getOpaqueTypeConformance2();
  *v202 = v66;
  *&v202[8] = v65;
  v171 = v33;
  v172 = swift_getOpaqueTypeConformance2();
  v34 = swift_getWitnessTable();
  *v202 = v20;
  *&v202[8] = v59;
  v169 = v125;
  v170 = swift_getOpaqueTypeConformance2();
  v167 = v34;
  v168 = swift_getWitnessTable();
  v165 = v32;
  v166 = swift_getWitnessTable();
  v163 = v29;
  v164 = swift_getWitnessTable();
  v162 = swift_getWitnessTable();
  v160 = swift_getWitnessTable();
  v161 = v123;
  v35 = swift_getWitnessTable();
  v158 = MEMORY[0x1E6981E60];
  v159 = v35;
  v36 = swift_getWitnessTable();
  v37 = MEMORY[0x1E69805D0];
  v156 = v36;
  v157 = MEMORY[0x1E69805D0];
  v154 = swift_getWitnessTable();
  v155 = v37;
  v38 = swift_getWitnessTable();
  *v202 = v124;
  *&v202[8] = v38;
  v105 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v123 = *(a1 + 4);
  v39 = v112;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  WitnessTable = a1[23];
  *v202 = v123;
  *&v202[16] = AssociatedConformanceWitness;
  v203 = WitnessTable;
  type metadata accessor for CanvasContextMenu(255, v202);
  v41 = sub_1E68B1E40();
  v42 = swift_getWitnessTable();
  v43 = swift_getAssociatedConformanceWitness();
  *v202 = v116;
  *&v202[8] = AssociatedTypeWitness;
  *&v202[16] = v41;
  v203 = v42;
  *&v204 = v43;
  sub_1E68B2D40();
  *v202 = v124;
  *&v202[8] = v38;
  v152 = swift_getOpaqueTypeConformance2();
  v153 = v38;
  v150 = swift_getWitnessTable();
  v151 = swift_getWitnessTable();
  v149 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B1B70();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v44 = sub_1E68B2CC0();
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v46);
  v48 = v58 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = v58 - v51;
  sub_1E68B21D0();
  *&v53 = v130[2];
  *(&v53 + 1) = v108;
  *&v54 = v130[4];
  *(&v54 + 1) = v128;
  v133 = v53;
  v134 = v54;
  v135 = v109;
  v136 = v123;
  v137 = OpaqueTypeMetadata2;
  v138 = *(v130 + 11);
  *&v53 = v130[13];
  *(&v53 + 1) = v119;
  *&v54 = v130[15];
  *(&v54 + 1) = v111;
  v140 = v54;
  *&v54 = v130[17];
  *(&v54 + 1) = v39;
  *&v55 = v131;
  *(&v55 + 1) = v129;
  v139 = v53;
  v142 = v55;
  v141 = v54;
  *&v53 = WitnessTable;
  *(&v53 + 1) = v125;
  v144 = v53;
  v143 = v110;
  *&v53 = v130[25];
  *(&v53 + 1) = v120;
  *&v54 = v130[27];
  *(&v54 + 1) = v113;
  v146 = v54;
  v145 = v53;
  v147 = v132;
  v148 = v121;
  sub_1E68B2CB0();
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v56 = *(v45 + 8);
  v56(v48, v44);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v56)(v52, v44);
}

uint64_t sub_1E6894384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void (*a25)(void, void), uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v317 = a8;
  v316 = a7;
  v315 = a6;
  *&v306 = a4;
  v305 = a2;
  v290 = a1;
  v288 = a9;
  v319 = a30;
  v318 = a29;
  v308 = a28;
  v295 = a27;
  v307 = a26;
  v323 = a25;
  v314 = a24;
  v313 = a23;
  v312 = a22;
  v299 = a19;
  v302 = a18;
  v311 = a17;
  v301 = a16;
  v300 = a15;
  v298 = a14;
  v297 = a13;
  v296 = a12;
  *(&v322 + 1) = a11;
  v310 = a10;
  v32 = sub_1E68B22C0();
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v287 = v241 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  v309 = sub_1E68B33B0();
  v294 = *(a30 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v336 = a5;
  *&v322 = a3;
  *(&v336 + 1) = a3;
  *&v337 = a3;
  *(&v337 + 1) = a21;
  v338 = a20;
  v339 = a20;
  v35 = type metadata accessor for ActionCardView(255, &v336);
  v291 = v35;
  WitnessTable = swift_getWitnessTable();
  *&v336 = v35;
  *(&v336 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v320 = sub_1E68B2440();
  sub_1E68B1E40();
  v36 = sub_1E68B1E40();
  v292 = sub_1E6899E90(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v419 = a21;
  v420 = v292;
  v37 = MEMORY[0x1E697E858];
  v38 = swift_getWitnessTable();
  v417 = v38;
  v418 = MEMORY[0x1E697F568];
  v321 = v37;
  v285 = v36;
  v284 = swift_getWitnessTable();
  *&v336 = v36;
  *(&v336 + 1) = v284;
  v272 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v39 = sub_1E68B1E40();
  v277 = v39;
  v415 = v38;
  v416 = MEMORY[0x1E697E040];
  v275 = swift_getWitnessTable();
  *&v336 = v39;
  *(&v336 + 1) = v275;
  swift_getOpaqueTypeMetadata2();
  v278 = sub_1E68B2220();
  v280 = sub_1E68B2B90();
  v279 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8, &qword_1E68B4C68);
  v281 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0, &qword_1E68BB7D0);
  v286 = sub_1E68B2220();
  v267 = sub_1E68B2220();
  *&v336 = a5;
  v40 = v322;
  *(&v336 + 1) = v322;
  v337 = v322;
  v338 = v311;
  v339 = a21;
  v340 = a20;
  v341 = a20;
  v342 = v323;
  v343 = v318;
  v41 = type metadata accessor for FullWidthStageView(255, &v336);
  OpaqueTypeMetadata2 = v41;
  v282 = swift_getWitnessTable();
  *&v336 = v41;
  *(&v336 + 1) = v282;
  swift_getOpaqueTypeMetadata2();
  v42 = v40;
  v303 = a20;
  v44 = type metadata accessor for InfoActionCardView(255, v40, a20, v43);
  v276 = v44;
  v274 = swift_getWitnessTable();
  *&v336 = v44;
  *(&v336 + 1) = v274;
  swift_getOpaqueTypeMetadata2();
  v273 = sub_1E68B2220();
  v247 = sub_1E68B2220();
  *&v336 = a5;
  *(&v336 + 1) = v315;
  *&v337 = v316;
  *(&v337 + 1) = a21;
  v338 = v312;
  v339 = v313;
  v45 = type metadata accessor for LargeBrickView(255, &v336);
  v271 = v45;
  v270 = swift_getWitnessTable();
  *&v336 = v45;
  *(&v336 + 1) = v270;
  swift_getOpaqueTypeMetadata2();
  v47 = type metadata accessor for DynamicBrickView(255, a5, a21, v46);
  v269 = v47;
  v268 = swift_getWitnessTable();
  *&v336 = v47;
  *(&v336 + 1) = v268;
  swift_getOpaqueTypeMetadata2();
  v260 = sub_1E68B2220();
  v49 = type metadata accessor for MonogramVerticalStackView(255, a5, a21, v48);
  v265 = v49;
  v264 = swift_getWitnessTable();
  *&v336 = v49;
  *(&v336 + 1) = v264;
  swift_getOpaqueTypeMetadata2();
  v261 = sub_1E68B2220();
  v266 = sub_1E68B2220();
  v241[1] = sub_1E68B2220();
  v51 = type metadata accessor for StandardCardView(255, a5, a21, v50);
  v263 = v51;
  v262 = swift_getWitnessTable();
  *&v336 = v51;
  *(&v336 + 1) = v262;
  swift_getOpaqueTypeMetadata2();
  *&v336 = a5;
  *(&v336 + 1) = v42;
  *&v337 = a21;
  *(&v337 + 1) = a20;
  v52 = type metadata accessor for StandardHorizontalStackView(255, &v336);
  v259 = v52;
  v258 = swift_getWitnessTable();
  *&v336 = v52;
  *(&v336 + 1) = v258;
  swift_getOpaqueTypeMetadata2();
  v244 = sub_1E68B2220();
  v54 = type metadata accessor for StandardVerticalStackView(255, a5, a21, v53);
  v257 = v54;
  v256 = swift_getWitnessTable();
  *&v336 = v54;
  *(&v336 + 1) = v256;
  swift_getOpaqueTypeMetadata2();
  v252 = type metadata accessor for SummaryCardView(255, a5, a21, v55);
  v255 = sub_1E68B2220();
  v241[2] = sub_1E68B2220();
  *(&v306 + 1) = a5;
  v304 = a21;
  v57 = type metadata accessor for TallCardView(255, a5, a21, v56);
  v253 = swift_getWitnessTable();
  *&v336 = v57;
  *(&v336 + 1) = v253;
  swift_getOpaqueTypeMetadata2();
  v59 = type metadata accessor for VerticalStackCardView(255, a5, a21, v58);
  v248 = swift_getWitnessTable();
  *&v336 = v59;
  *(&v336 + 1) = v248;
  swift_getOpaqueTypeMetadata2();
  v241[3] = sub_1E68B2220();
  v61 = type metadata accessor for WideBrickView(255, a5, a21, v60);
  v242 = swift_getWitnessTable();
  *&v336 = v61;
  *(&v336 + 1) = v242;
  swift_getOpaqueTypeMetadata2();
  v241[4] = sub_1E68B2220();
  v243 = sub_1E68B2220();
  v245 = sub_1E68B2220();
  v246 = sub_1E68B2220();
  v249 = sub_1E68B2B90();
  v250 = sub_1E68B1E40();
  v251 = sub_1E68B2220();
  v254 = sub_1E68B1E40();
  v320 = sub_1E68B1E40();
  *&v336 = v291;
  *(&v336 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v336 = v285;
  *(&v336 + 1) = v284;
  v63 = swift_getOpaqueTypeConformance2();
  *&v336 = v277;
  *(&v336 + 1) = v275;
  v64 = swift_getOpaqueTypeConformance2();
  v413 = v63;
  v414 = v64;
  v412 = swift_getWitnessTable();
  v291 = MEMORY[0x1E6981600];
  v410 = swift_getWitnessTable();
  v411 = MEMORY[0x1E697E5D8];
  v65 = swift_getWitnessTable();
  v66 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8, &qword_1E68B4C68, MEMORY[0x1E697D680]);
  v408 = v65;
  v409 = v66;
  v67 = swift_getWitnessTable();
  v68 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0, &qword_1E68BB7D0, MEMORY[0x1E6981870]);
  v406 = v67;
  v407 = v68;
  v69 = swift_getWitnessTable();
  v404 = OpaqueTypeConformance2;
  v405 = v69;
  v70 = swift_getWitnessTable();
  *&v336 = OpaqueTypeMetadata2;
  *(&v336 + 1) = v282;
  v71 = swift_getOpaqueTypeConformance2();
  *&v336 = v276;
  *(&v336 + 1) = v274;
  v72 = swift_getOpaqueTypeConformance2();
  v402 = v71;
  v403 = v72;
  v73 = swift_getWitnessTable();
  v400 = v70;
  v401 = v73;
  v74 = swift_getWitnessTable();
  *&v336 = v271;
  *(&v336 + 1) = v270;
  v75 = swift_getOpaqueTypeConformance2();
  *&v336 = v269;
  *(&v336 + 1) = v268;
  v76 = swift_getOpaqueTypeConformance2();
  v398 = v75;
  v399 = v76;
  v77 = swift_getWitnessTable();
  *&v336 = v265;
  *(&v336 + 1) = v264;
  v396 = swift_getOpaqueTypeConformance2();
  v397 = v76;
  v78 = swift_getWitnessTable();
  v394 = v77;
  v395 = v78;
  v79 = swift_getWitnessTable();
  v392 = v74;
  v393 = v79;
  v80 = swift_getWitnessTable();
  *&v336 = v263;
  *(&v336 + 1) = v262;
  v81 = swift_getOpaqueTypeConformance2();
  *&v336 = v259;
  *(&v336 + 1) = v258;
  v82 = swift_getOpaqueTypeConformance2();
  v390 = v81;
  v391 = v82;
  v83 = swift_getWitnessTable();
  *&v336 = v257;
  *(&v336 + 1) = v256;
  v84 = swift_getOpaqueTypeConformance2();
  v85 = swift_getWitnessTable();
  v388 = v84;
  v389 = v85;
  v86 = swift_getWitnessTable();
  v386 = v83;
  v387 = v86;
  v87 = swift_getWitnessTable();
  *&v336 = v57;
  *(&v336 + 1) = v253;
  v88 = swift_getOpaqueTypeConformance2();
  *&v336 = v59;
  *(&v336 + 1) = v248;
  v89 = swift_getOpaqueTypeConformance2();
  v384 = v88;
  v385 = v89;
  v90 = swift_getWitnessTable();
  *&v336 = v61;
  *(&v336 + 1) = v242;
  v91 = swift_getOpaqueTypeConformance2();
  v382 = v323;
  v383 = v91;
  v92 = swift_getWitnessTable();
  v380 = v90;
  v381 = v92;
  v93 = swift_getWitnessTable();
  v378 = v87;
  v379 = v93;
  v94 = swift_getWitnessTable();
  v376 = v80;
  v377 = v94;
  v375 = swift_getWitnessTable();
  v373 = swift_getWitnessTable();
  v374 = v292;
  v95 = swift_getWitnessTable();
  v371 = MEMORY[0x1E6981E60];
  v372 = v95;
  v96 = swift_getWitnessTable();
  v97 = MEMORY[0x1E69805D0];
  v369 = v96;
  v370 = MEMORY[0x1E69805D0];
  v367 = swift_getWitnessTable();
  v368 = v97;
  v98 = v320;
  v99 = swift_getWitnessTable();
  *&v336 = v98;
  *(&v336 + 1) = v99;
  v292 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v100 = v299;
  v101 = v317;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v336 = v101;
  *(&v336 + 1) = v310;
  *&v337 = AssociatedConformanceWitness;
  *(&v337 + 1) = v314;
  type metadata accessor for CanvasContextMenu(255, &v336);
  v103 = sub_1E68B1E40();
  v104 = v309;
  v105 = swift_getWitnessTable();
  v106 = AssociatedTypeWitness;
  v107 = swift_getAssociatedConformanceWitness();
  *&v336 = v104;
  *(&v336 + 1) = v106;
  *&v337 = v103;
  *(&v337 + 1) = v105;
  v338 = v107;
  v108 = sub_1E68B2D40();
  *&v336 = v320;
  *(&v336 + 1) = v99;
  v109 = v100;
  v365 = swift_getOpaqueTypeConformance2();
  v366 = v99;
  v110 = swift_getWitnessTable();
  v111 = swift_getWitnessTable();
  v363 = v110;
  v364 = v111;
  v362 = swift_getWitnessTable();
  v112 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v108;
  v278 = v112;
  v113 = sub_1E68B1B70();
  v280 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v113);
  v279 = v241 - v114;
  v281 = v115;
  v286 = sub_1E68B1E40();
  v282 = *(v286 - 8);
  MEMORY[0x1EEE9AC00](v286, v116);
  v285 = v241 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v118, v119);
  v284 = v241 - v120;
  v121 = v305;
  *&v336 = v305;
  v122 = v322;
  *(&v336 + 1) = v322;
  v337 = v306;
  v338 = v315;
  v339 = v316;
  v340 = v317;
  v341 = v310;
  v342 = *(&v322 + 1);
  v343 = v296;
  v344 = v297;
  v123 = v298;
  v345 = v298;
  v124 = v300;
  v346 = v300;
  v347 = v301;
  v348 = v311;
  v349 = v302;
  v350 = v109;
  v125 = v303;
  v351 = v303;
  v352 = v304;
  v353 = v312;
  v354 = v313;
  v355 = v314;
  v356 = v323;
  v126 = v307;
  v357 = v307;
  v127 = v295;
  v358 = v295;
  v359 = v308;
  v360 = v318;
  v361 = v319;
  WitnessTable = type metadata accessor for ListView(0, &v336);
  v273 = *(WitnessTable - 8);
  v272 = *(v273 + 64);
  MEMORY[0x1EEE9AC00](WitnessTable, v128);
  v276 = v241 - v129;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8, &unk_1E68BB7C0);
  *&v336 = v122;
  *(&v336 + 1) = v124;
  *&v337 = v125;
  *(&v337 + 1) = v127;
  v130 = type metadata accessor for CanvasSectionHeaderView(255, &v336);
  sub_1E68B2390();
  AssociatedTypeWitness = v130;
  v294 = sub_1E68B1E40();
  v131 = sub_1E68B2220();
  v277 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131, v132);
  v275 = (v241 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v134, v135);
  v274 = v241 - v136;
  v137 = v299;
  v138 = swift_getAssociatedConformanceWitness();
  *&v336 = v121;
  *(&v336 + 1) = v123;
  *&v337 = v138;
  *(&v337 + 1) = v126;
  v139 = type metadata accessor for CanvasSectionHeader(255, &v336);
  v140 = sub_1E68B3750();
  v141 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140, v142);
  v144 = v241 - v143;
  v145 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v146, v147);
  v149 = v241 - v148;
  v150 = sub_1E68B3750();
  v291 = *(v150 - 8);
  v292 = v150;
  MEMORY[0x1EEE9AC00](v150, v151);
  v320 = v241 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = MEMORY[0x1EEE9AC00](v153, v154);
  v309 = v241 - v156;
  v157 = v290;
  (*(v141 + 16))(v144, v155);
  v158 = (*(v145 + 48))(v144, 1, v139);
  v321 = v131;
  if (v158 == 1)
  {
    (*(v141 + 8))(v144, v140);
    v277[7](v320, 1, 1, v131);
    v159 = sub_1E673F2EC();
    v160 = swift_getWitnessTable();
    v161 = sub_1E6899E90(&qword_1EE2EA5E8, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
    v335[6] = v160;
    v335[7] = v161;
    v162 = swift_getWitnessTable();
    v335[4] = v159;
    v335[5] = v162;
    swift_getWitnessTable();
  }

  else
  {
    (*(v145 + 32))(v149, v144, v139);
    v163 = v273;
    v164 = *(v273 + 16);
    v270 = v149;
    v271 = v145;
    v165 = v157;
    v166 = v157;
    v167 = WitnessTable;
    v164(v276, v166, WitnessTable);
    v168 = (*(v163 + 80) + 240) & ~*(v163 + 80);
    v169 = swift_allocObject();
    v170 = v322;
    *(v169 + 2) = v305;
    *(v169 + 3) = v170;
    v171 = *(&v306 + 1);
    *(v169 + 4) = v306;
    *(v169 + 5) = v171;
    v172 = v316;
    *(v169 + 6) = v315;
    *(v169 + 7) = v172;
    v173 = v310;
    *(v169 + 8) = v317;
    *(v169 + 9) = v173;
    v174 = v296;
    v175 = v297;
    *(v169 + 10) = *(&v322 + 1);
    *(v169 + 11) = v174;
    v176 = v298;
    *(v169 + 12) = v175;
    *(v169 + 13) = v176;
    v178 = v300;
    v177 = v301;
    *(v169 + 14) = v300;
    *(v169 + 15) = v177;
    v179 = v302;
    *(v169 + 16) = v311;
    *(v169 + 17) = v179;
    *(v169 + 18) = v137;
    v180 = v303;
    v181 = v304;
    *(v169 + 19) = v303;
    *(v169 + 20) = v181;
    v182 = v313;
    *(v169 + 21) = v312;
    *(v169 + 22) = v182;
    v183 = v323;
    *(v169 + 23) = v314;
    *(v169 + 24) = v183;
    v184 = v295;
    *(v169 + 25) = v307;
    *(v169 + 26) = v184;
    v185 = v318;
    *(v169 + 27) = v308;
    *(v169 + 28) = v185;
    *(v169 + 29) = v319;
    (*(v163 + 32))(&v169[v168], v276, v167);
    v186 = v165 + v167[73];
    v187 = *v186;
    v188 = *(v186 + 8);
    v189 = (v165 + v167[64]);
    v190 = v189[1];
    v336 = *v189;
    v337 = v190;
    LODWORD(v167) = *(v165 + v167[66]);

    v239 = v180;
    v240 = v184;
    v137 = v299;
    v238 = v178;
    v191 = v275;
    v192 = v270;
    sub_1E68AF848(sub_1E6899F6C, v169, v187, v188, &v336, v167, v139, v322, v275, v238, v239, v240);

    (*(v271 + 8))(v192, v139);
    v193 = sub_1E673F2EC();
    v194 = swift_getWitnessTable();
    v195 = sub_1E6899E90(&qword_1EE2EA5E8, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
    v326 = v194;
    v327 = v195;
    v196 = swift_getWitnessTable();
    v324 = v193;
    v325 = v196;
    swift_getWitnessTable();
    v197 = v274;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v198 = v277;
    v199 = v277[1];
    (v199)(v191, v321);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    (v199)(v197, v321);
    v200 = v321;
    v201 = v320;
    (v198[4])(v320, v191, v321);
    v198[7](v201, 0, 1, v200);
    v157 = v290;
  }

  v202 = v295;
  v203 = v320;
  sub_1E67FDFA4(v320, v309);
  v204 = *(v291 + 8);
  v276 = (v291 + 8);
  v277 = v204;
  (v204)(v203, v292);
  v205 = sub_1E68B21D0();
  v275 = v241;
  MEMORY[0x1EEE9AC00](v205, v206);
  v207 = v322;
  v241[-30] = v305;
  v241[-29] = v207;
  v208 = *(&v306 + 1);
  v241[-28] = v306;
  v241[-27] = v208;
  v209 = v316;
  v241[-26] = v315;
  v241[-25] = v209;
  v210 = v310;
  v241[-24] = v317;
  v241[-23] = v210;
  v212 = v296;
  v211 = v297;
  v241[-22] = *(&v322 + 1);
  v241[-21] = v212;
  v241[-20] = v211;
  v214 = v300;
  v213 = v301;
  v241[-19] = v298;
  v241[-18] = v214;
  v241[-17] = v213;
  v215 = v302;
  v241[-16] = v311;
  v241[-15] = v215;
  v216 = v303;
  v241[-14] = v137;
  v241[-13] = v216;
  v217 = v312;
  v241[-12] = v304;
  v241[-11] = v217;
  v218 = v314;
  v241[-10] = v313;
  v241[-9] = v218;
  v219 = v307;
  v241[-8] = v323;
  v241[-7] = v219;
  v220 = v308;
  v241[-6] = v202;
  v241[-5] = v220;
  v238 = v318;
  v239 = v319;
  v240 = v157;
  sub_1E689D740();
  v221 = v279;
  sub_1E68B1B60();
  v222 = v281;
  v223 = swift_getWitnessTable();
  v224 = v285;
  sub_1E68B2A60();
  (*(v280 + 8))(v221, v222);
  v335[2] = v223;
  v335[3] = MEMORY[0x1E697E5D8];
  v225 = v286;
  v226 = swift_getWitnessTable();
  v227 = v284;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v228 = v282;
  v323 = *(v282 + 8);
  v323(v224, v225);
  v229 = v292;
  v230 = v320;
  (*(v291 + 16))(v320, v309, v292);
  *&v336 = v230;
  (*(v228 + 16))(v224, v227, v225);
  *(&v336 + 1) = v224;
  v335[0] = v229;
  v335[1] = v225;
  v231 = sub_1E673F2EC();
  v232 = swift_getWitnessTable();
  v233 = sub_1E6899E90(&qword_1EE2EA5E8, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
  v331 = v232;
  v332 = v233;
  v234 = swift_getWitnessTable();
  v329 = v231;
  v330 = v234;
  v328 = swift_getWitnessTable();
  v333 = swift_getWitnessTable();
  v334 = v226;
  sub_1E6848F14(&v336, 2uLL, v335);
  v235 = v323;
  v323(v227, v225);
  v236 = v277;
  (v277)(v309, v229);
  v235(v224, v225);
  return (v236)(v320, v229);
}

uint64_t sub_1E68961DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, uint64_t a21, uint64_t a22)
{
  v57 = a8;
  v55 = a7;
  v52 = a6;
  v60 = a2;
  v61 = a1;
  v63 = a9;
  v59 = a22;
  v58 = a21;
  v56 = a20;
  v54 = a19;
  v51 = a18;
  v50 = a17;
  v53 = a16;
  v49 = a14;
  v48 = a13;
  v47 = a12;
  v46 = a11;
  v45 = a10;
  v62 = sub_1E68B3750();
  v25 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v26);
  v28 = &v45 - v27;
  v29 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v45 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v45 - v36;
  v64 = a3;
  v65 = a4;
  v66 = a5;
  v67 = v52;
  v68 = v55;
  v69 = v57;
  v70 = v45;
  v71 = v46;
  v72 = v47;
  v73 = v48;
  v74 = v49;
  v75 = a15;
  v76 = a16;
  v77 = v50;
  v78 = v51;
  v79 = v54;
  v80 = v56;
  v81 = v58;
  v82 = v59;
  v38 = type metadata accessor for ListView(0, &v64);
  sub_1E6892AD8(v38);
  v40 = v39;
  v41 = *(a3 - 8);
  (*(v41 + 16))(v28, v61, a3);
  (*(v41 + 56))(v28, 0, 1, a3);
  v42 = *(v40 + 240);
  v64 = 0;
  LOBYTE(v65) = 1;
  v42(v28, &v64);

  (*(v25 + 8))(v28, v62);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v43 = *(v29 + 8);
  v43(v33, a4);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v43)(v37, a4);
}

uint64_t sub_1E6896600@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v219 = a8;
  v228 = a7;
  v226 = a6;
  v209 = a4;
  v231 = a3;
  v208 = a2;
  v213 = a1;
  v214 = a9;
  v224 = a29;
  v212 = a28;
  v211 = a27;
  v210 = a26;
  v233 = a25;
  v222 = a24;
  v227 = a23;
  v225 = a22;
  v207 = a18;
  v223 = a17;
  v206 = a16;
  v205 = a15;
  v204 = a14;
  v203 = a13;
  v202 = a12;
  v230 = a11;
  v220 = a10;
  v293 = a2;
  v294 = a3;
  v295 = a4;
  v296 = a5;
  v297 = a6;
  v298 = a7;
  v299 = a8;
  v300 = a10;
  v301 = a11;
  v302 = a12;
  v303 = a13;
  v304 = a14;
  v305 = a15;
  v306 = a16;
  v307 = a17;
  v308 = a18;
  v217 = a19;
  v309 = a19;
  v310 = a20;
  v311 = a21;
  v312 = a22;
  v313 = a23;
  v314 = a24;
  v315 = a25;
  v316 = a26;
  v317 = a27;
  v318 = a28;
  v319 = a29;
  v320 = a30;
  v221 = a30;
  v31 = type metadata accessor for ListView(0, &v293);
  v199 = *(v31 - 8);
  v200 = v31;
  v201 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v31, v32);
  v198 = v146 - v33;
  swift_getTupleTypeMetadata2();
  v197 = sub_1E68B33B0();
  v229 = *(a30 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v293 = a5;
  v294 = v231;
  v295 = v231;
  v296 = a21;
  v216 = a20;
  v297 = a20;
  v298 = a20;
  v34 = type metadata accessor for ActionCardView(255, &v293);
  v193 = v34;
  WitnessTable = swift_getWitnessTable();
  v293 = v34;
  v294 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v215 = sub_1E68B2440();
  sub_1E68B1E40();
  v35 = sub_1E68B1E40();
  v196 = sub_1E6899E90(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v291 = a21;
  v292 = v196;
  v36 = MEMORY[0x1E697E858];
  v37 = swift_getWitnessTable();
  v289 = v37;
  v290 = MEMORY[0x1E697F568];
  v232 = v36;
  v190 = v35;
  v189 = swift_getWitnessTable();
  v293 = v35;
  v294 = v189;
  v177 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v38 = sub_1E68B1E40();
  v182 = v38;
  v287 = v37;
  v288 = MEMORY[0x1E697E040];
  v180 = swift_getWitnessTable();
  v293 = v38;
  v294 = v180;
  swift_getOpaqueTypeMetadata2();
  v183 = sub_1E68B2220();
  v185 = sub_1E68B2B90();
  v184 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8, &qword_1E68B4C68);
  v186 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0, &qword_1E68BB7D0);
  v191 = sub_1E68B2220();
  v172 = sub_1E68B2220();
  v39 = a5;
  v293 = a5;
  v40 = v231;
  v294 = v231;
  v295 = v231;
  v296 = v230;
  v297 = v223;
  v298 = a21;
  v41 = v216;
  v299 = v216;
  v300 = v216;
  v301 = v233;
  v302 = v224;
  v42 = type metadata accessor for FullWidthStageView(255, &v293);
  v188 = v42;
  v187 = swift_getWitnessTable();
  v293 = v42;
  v294 = v187;
  swift_getOpaqueTypeMetadata2();
  v43 = v40;
  v45 = type metadata accessor for InfoActionCardView(255, v40, v41, v44);
  v181 = v45;
  v179 = swift_getWitnessTable();
  v293 = v45;
  v294 = v179;
  swift_getOpaqueTypeMetadata2();
  v178 = sub_1E68B2220();
  v152 = sub_1E68B2220();
  v293 = v39;
  v294 = v226;
  v295 = v228;
  v296 = a21;
  v297 = v225;
  v298 = v227;
  v46 = type metadata accessor for LargeBrickView(255, &v293);
  v176 = v46;
  v175 = swift_getWitnessTable();
  v293 = v46;
  v294 = v175;
  swift_getOpaqueTypeMetadata2();
  v48 = type metadata accessor for DynamicBrickView(255, v39, a21, v47);
  v174 = v48;
  v173 = swift_getWitnessTable();
  v293 = v48;
  v294 = v173;
  swift_getOpaqueTypeMetadata2();
  v165 = sub_1E68B2220();
  v50 = type metadata accessor for MonogramVerticalStackView(255, v39, a21, v49);
  v170 = v50;
  v169 = swift_getWitnessTable();
  v293 = v50;
  v294 = v169;
  swift_getOpaqueTypeMetadata2();
  v166 = sub_1E68B2220();
  v171 = sub_1E68B2220();
  sub_1E68B2220();
  v52 = type metadata accessor for StandardCardView(255, v39, a21, v51);
  v168 = v52;
  v167 = swift_getWitnessTable();
  v293 = v52;
  v294 = v167;
  swift_getOpaqueTypeMetadata2();
  v293 = v39;
  v294 = v43;
  v295 = a21;
  v296 = v41;
  v53 = type metadata accessor for StandardHorizontalStackView(255, &v293);
  v164 = v53;
  v163 = swift_getWitnessTable();
  v293 = v53;
  v294 = v163;
  swift_getOpaqueTypeMetadata2();
  v149 = sub_1E68B2220();
  v55 = type metadata accessor for StandardVerticalStackView(255, v39, a21, v54);
  v154 = v55;
  v162 = swift_getWitnessTable();
  v293 = v55;
  v294 = v162;
  swift_getOpaqueTypeMetadata2();
  v158 = type metadata accessor for SummaryCardView(255, v39, a21, v56);
  v161 = sub_1E68B2220();
  v146[0] = sub_1E68B2220();
  v57 = v39;
  v59 = type metadata accessor for TallCardView(255, v39, a21, v58);
  v159 = swift_getWitnessTable();
  v293 = v59;
  v294 = v159;
  swift_getOpaqueTypeMetadata2();
  v194 = v57;
  v195 = a21;
  v61 = type metadata accessor for VerticalStackCardView(255, v57, a21, v60);
  v153 = swift_getWitnessTable();
  v293 = v61;
  v294 = v153;
  swift_getOpaqueTypeMetadata2();
  v146[1] = sub_1E68B2220();
  v63 = type metadata accessor for WideBrickView(255, v57, a21, v62);
  v147 = swift_getWitnessTable();
  v293 = v63;
  v294 = v147;
  swift_getOpaqueTypeMetadata2();
  v146[2] = sub_1E68B2220();
  v148 = sub_1E68B2220();
  v150 = sub_1E68B2220();
  v151 = sub_1E68B2220();
  v155 = sub_1E68B2B90();
  v156 = sub_1E68B1E40();
  v157 = sub_1E68B2220();
  v160 = sub_1E68B1E40();
  v215 = sub_1E68B1E40();
  v293 = v193;
  v294 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v293 = v190;
  v294 = v189;
  v65 = swift_getOpaqueTypeConformance2();
  v293 = v182;
  v294 = v180;
  v66 = swift_getOpaqueTypeConformance2();
  v285 = v65;
  v286 = v66;
  v284 = swift_getWitnessTable();
  v193 = MEMORY[0x1E6981600];
  v282 = swift_getWitnessTable();
  v283 = MEMORY[0x1E697E5D8];
  v67 = swift_getWitnessTable();
  v68 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8, &qword_1E68B4C68, MEMORY[0x1E697D680]);
  v280 = v67;
  v281 = v68;
  v69 = swift_getWitnessTable();
  v70 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0, &qword_1E68BB7D0, MEMORY[0x1E6981870]);
  v278 = v69;
  v279 = v70;
  v71 = swift_getWitnessTable();
  v276 = OpaqueTypeConformance2;
  v277 = v71;
  v72 = swift_getWitnessTable();
  v293 = v188;
  v294 = v187;
  v73 = swift_getOpaqueTypeConformance2();
  v293 = v181;
  v294 = v179;
  v74 = swift_getOpaqueTypeConformance2();
  v274 = v73;
  v275 = v74;
  v75 = swift_getWitnessTable();
  v272 = v72;
  v273 = v75;
  v76 = swift_getWitnessTable();
  v293 = v176;
  v294 = v175;
  v77 = swift_getOpaqueTypeConformance2();
  v293 = v174;
  v294 = v173;
  v78 = swift_getOpaqueTypeConformance2();
  v270 = v77;
  v271 = v78;
  v79 = swift_getWitnessTable();
  v293 = v170;
  v294 = v169;
  v268 = swift_getOpaqueTypeConformance2();
  v269 = v78;
  v80 = swift_getWitnessTable();
  v266 = v79;
  v267 = v80;
  v81 = swift_getWitnessTable();
  v264 = v76;
  v265 = v81;
  v82 = swift_getWitnessTable();
  v293 = v168;
  v294 = v167;
  v83 = swift_getOpaqueTypeConformance2();
  v293 = v164;
  v294 = v163;
  v84 = swift_getOpaqueTypeConformance2();
  v262 = v83;
  v263 = v84;
  v85 = swift_getWitnessTable();
  v293 = v154;
  v294 = v162;
  v86 = swift_getOpaqueTypeConformance2();
  v87 = swift_getWitnessTable();
  v260 = v86;
  v261 = v87;
  v88 = swift_getWitnessTable();
  v258 = v85;
  v259 = v88;
  v89 = swift_getWitnessTable();
  v293 = v59;
  v294 = v159;
  v90 = swift_getOpaqueTypeConformance2();
  v293 = v61;
  v294 = v153;
  v91 = swift_getOpaqueTypeConformance2();
  v256 = v90;
  v257 = v91;
  v92 = swift_getWitnessTable();
  v293 = v63;
  v294 = v147;
  v93 = swift_getOpaqueTypeConformance2();
  v254 = v233;
  v255 = v93;
  v94 = swift_getWitnessTable();
  v252 = v92;
  v253 = v94;
  v95 = swift_getWitnessTable();
  v250 = v89;
  v251 = v95;
  v96 = swift_getWitnessTable();
  v248 = v82;
  v249 = v96;
  v247 = swift_getWitnessTable();
  v245 = swift_getWitnessTable();
  v246 = v196;
  v97 = swift_getWitnessTable();
  v243 = MEMORY[0x1E6981E60];
  v244 = v97;
  v98 = swift_getWitnessTable();
  v99 = MEMORY[0x1E69805D0];
  v241 = v98;
  v242 = MEMORY[0x1E69805D0];
  v239 = swift_getWitnessTable();
  v240 = v99;
  v100 = v215;
  v196 = swift_getWitnessTable();
  v293 = v100;
  v294 = v196;
  v193 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  v191 = sub_1E68B2220();
  v101 = v217;
  v102 = v219;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v293 = v102;
  v294 = v220;
  v295 = AssociatedConformanceWitness;
  v296 = v222;
  WitnessTable = type metadata accessor for CanvasContextMenu(255, &v293);
  v104 = sub_1E68B1E40();
  v189 = v104;
  v105 = v197;
  v106 = swift_getWitnessTable();
  v107 = v101;
  v108 = AssociatedTypeWitness;
  v109 = swift_getAssociatedConformanceWitness();
  v293 = v105;
  v294 = v108;
  v295 = v104;
  v296 = v106;
  v297 = v109;
  v110 = sub_1E68B2D40();
  v197 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110, v111);
  v113 = v146 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = MEMORY[0x1EEE9AC00](v114, v115);
  v190 = v146 - v117;
  v118 = v199;
  v119 = v200;
  v188 = *(v213 + *(v200 + 244));
  v120 = v198;
  (*(v199 + 16))(v198, v116);
  v121 = (*(v118 + 80) + 240) & ~*(v118 + 80);
  v122 = swift_allocObject();
  v123 = v231;
  *(v122 + 2) = v208;
  *(v122 + 3) = v123;
  v124 = v194;
  *(v122 + 4) = v209;
  *(v122 + 5) = v124;
  v125 = v228;
  *(v122 + 6) = v226;
  *(v122 + 7) = v125;
  v126 = v220;
  *(v122 + 8) = v219;
  *(v122 + 9) = v126;
  v127 = v202;
  v128 = v203;
  *(v122 + 10) = v230;
  *(v122 + 11) = v127;
  v129 = v204;
  v130 = v205;
  *(v122 + 12) = v128;
  *(v122 + 13) = v129;
  v131 = v206;
  *(v122 + 14) = v130;
  *(v122 + 15) = v131;
  v132 = v207;
  *(v122 + 16) = v223;
  *(v122 + 17) = v132;
  v133 = v216;
  *(v122 + 18) = v107;
  *(v122 + 19) = v133;
  v134 = v225;
  *(v122 + 20) = v195;
  *(v122 + 21) = v134;
  v135 = v222;
  *(v122 + 22) = v227;
  *(v122 + 23) = v135;
  v136 = v210;
  *(v122 + 24) = v233;
  *(v122 + 25) = v136;
  v137 = v212;
  *(v122 + 26) = v211;
  *(v122 + 27) = v137;
  v138 = v221;
  *(v122 + 28) = v224;
  *(v122 + 29) = v138;
  (*(v118 + 32))(&v122[v121], v120, v119);

  v293 = v215;
  v139 = v196;
  v294 = v196;
  v237 = swift_getOpaqueTypeConformance2();
  v238 = v139;
  v140 = swift_getWitnessTable();
  v141 = swift_getWitnessTable();
  v235 = v140;
  v236 = v141;
  v142 = swift_getWitnessTable();
  sub_1E68B2D20();
  v234 = v142;
  swift_getWitnessTable();
  v143 = v190;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v144 = *(v197 + 8);
  v144(v113, v110);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v144)(v143, v110);
}

uint64_t sub_1E68979C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v377 = a8;
  v352 = a7;
  v359 = a6;
  v368 = a5;
  v349 = a4;
  v364 = a3;
  v339 = a2;
  v346 = a1;
  v325 = a9;
  v353 = a30;
  v363 = a29;
  v362 = a28;
  v365 = a27;
  v371 = a24;
  v370 = a23;
  v367 = a22;
  v369 = a21;
  v376 = a18;
  v357 = a17;
  v358 = a16;
  v348 = a15;
  v373 = a14;
  v356 = a13;
  v375 = a26;
  v374 = a12;
  v351 = a19;
  v372 = a10;
  v32 = sub_1E68B3750();
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v322 = v275 - v34;
  v360 = a31;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v436 = a11;
  v361 = *(&a11 + 1);
  v350 = a11;
  *&v437 = AssociatedConformanceWitness;
  *(&v437 + 1) = a25;
  v366 = a25;
  v338 = type metadata accessor for CanvasContextMenu(0, &v436);
  v324 = *(v338 - 8);
  MEMORY[0x1EEE9AC00](v338, v35);
  v321 = v275 - v36;
  v347 = a20;
  v328 = *(a20 - 8);
  v342 = *(v328 + 64);
  MEMORY[0x1EEE9AC00](v37, v38);
  v340 = v275 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v436 = v349;
  *(&v436 + 1) = a5;
  *&v437 = v359;
  v40 = v352;
  *(&v437 + 1) = v352;
  v438 = v377;
  v439 = a10;
  v440 = a11;
  v441 = a12;
  v442 = v356;
  v443 = v373;
  v444 = v348;
  v445 = v358;
  v446 = v357;
  v447 = v376;
  v448 = a19;
  v449 = a20;
  v41 = v369;
  v450 = v369;
  v42 = v367;
  v451 = v367;
  v452 = v370;
  v453 = v371;
  v454 = a25;
  v455 = v375;
  v456 = v365;
  v457 = v362;
  v458 = v363;
  v43 = v353;
  v459 = v353;
  v460 = a31;
  v355 = type metadata accessor for ListView(0, &v436);
  v354 = *(v355 - 8);
  v343 = *(v354 + 64);
  MEMORY[0x1EEE9AC00](v355, v44);
  v337 = v275 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46, v47);
  v320 = v275 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v336 = v275 - v51;
  v52 = v40;
  *&v436 = v40;
  *(&v436 + 1) = v368;
  *&v437 = v368;
  *(&v437 + 1) = v42;
  v438 = v41;
  v439 = v41;
  v53 = type metadata accessor for ActionCardView(255, &v436);
  v344 = v53;
  WitnessTable = swift_getWitnessTable();
  *&v436 = v53;
  *(&v436 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v335 = sub_1E68B2440();
  sub_1E68B1E40();
  v54 = sub_1E68B1E40();
  v345 = sub_1E6899E90(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v434 = v42;
  v435 = v345;
  v55 = MEMORY[0x1E697E858];
  v56 = swift_getWitnessTable();
  v432 = v56;
  v433 = MEMORY[0x1E697F568];
  v331 = v55;
  v327 = v54;
  v326 = swift_getWitnessTable();
  *&v436 = v54;
  *(&v436 + 1) = v326;
  v304 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v57 = sub_1E68B1E40();
  v309 = v57;
  v430 = v56;
  v431 = MEMORY[0x1E697E040];
  v307 = swift_getWitnessTable();
  *&v436 = v57;
  *(&v436 + 1) = v307;
  swift_getOpaqueTypeMetadata2();
  v310 = sub_1E68B2220();
  v312 = sub_1E68B2B90();
  v311 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8, &qword_1E68B4C68);
  v313 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0, &qword_1E68BB7D0);
  v330 = sub_1E68B2220();
  v299 = sub_1E68B2220();
  *&v436 = v40;
  v58 = v368;
  *(&v436 + 1) = v368;
  *&v437 = v368;
  *(&v437 + 1) = v374;
  v438 = v376;
  v59 = v367;
  v439 = v367;
  v60 = v369;
  *&v440 = v369;
  *(&v440 + 1) = v369;
  v441 = v375;
  v442 = v43;
  v61 = type metadata accessor for FullWidthStageView(255, &v436);
  v315 = v61;
  v314 = swift_getWitnessTable();
  *&v436 = v61;
  *(&v436 + 1) = v314;
  swift_getOpaqueTypeMetadata2();
  v62 = v60;
  v64 = type metadata accessor for InfoActionCardView(255, v58, v60, v63);
  v308 = v64;
  v306 = swift_getWitnessTable();
  *&v436 = v64;
  *(&v436 + 1) = v306;
  swift_getOpaqueTypeMetadata2();
  v305 = sub_1E68B2220();
  sub_1E68B2220();
  *&v436 = v52;
  *(&v436 + 1) = v377;
  *&v437 = v372;
  *(&v437 + 1) = v59;
  v438 = v370;
  v439 = v371;
  v65 = type metadata accessor for LargeBrickView(255, &v436);
  v303 = v65;
  v302 = swift_getWitnessTable();
  *&v436 = v65;
  *(&v436 + 1) = v302;
  swift_getOpaqueTypeMetadata2();
  v67 = type metadata accessor for DynamicBrickView(255, v52, v59, v66);
  v301 = v67;
  v300 = swift_getWitnessTable();
  *&v436 = v67;
  *(&v436 + 1) = v300;
  swift_getOpaqueTypeMetadata2();
  v292 = sub_1E68B2220();
  v69 = type metadata accessor for MonogramVerticalStackView(255, v52, v59, v68);
  v297 = v69;
  v296 = swift_getWitnessTable();
  *&v436 = v69;
  *(&v436 + 1) = v296;
  swift_getOpaqueTypeMetadata2();
  v293 = sub_1E68B2220();
  v298 = sub_1E68B2220();
  v275[0] = sub_1E68B2220();
  v71 = type metadata accessor for StandardCardView(255, v52, v59, v70);
  v295 = v71;
  v294 = swift_getWitnessTable();
  *&v436 = v71;
  *(&v436 + 1) = v294;
  swift_getOpaqueTypeMetadata2();
  *&v436 = v52;
  *(&v436 + 1) = v58;
  *&v437 = v59;
  *(&v437 + 1) = v62;
  v72 = type metadata accessor for StandardHorizontalStackView(255, &v436);
  v291 = v72;
  v290 = swift_getWitnessTable();
  *&v436 = v72;
  *(&v436 + 1) = v290;
  swift_getOpaqueTypeMetadata2();
  v278 = sub_1E68B2220();
  v74 = type metadata accessor for StandardVerticalStackView(255, v52, v59, v73);
  v289 = v74;
  v288 = swift_getWitnessTable();
  *&v436 = v74;
  *(&v436 + 1) = v288;
  swift_getOpaqueTypeMetadata2();
  v284 = type metadata accessor for SummaryCardView(255, v52, v59, v75);
  v287 = sub_1E68B2220();
  v275[1] = sub_1E68B2220();
  v77 = type metadata accessor for TallCardView(255, v52, v59, v76);
  v286 = v77;
  v285 = swift_getWitnessTable();
  *&v436 = v77;
  *(&v436 + 1) = v285;
  swift_getOpaqueTypeMetadata2();
  v78 = v59;
  v80 = type metadata accessor for VerticalStackCardView(255, v52, v59, v79);
  v281 = swift_getWitnessTable();
  *&v436 = v80;
  *(&v436 + 1) = v281;
  swift_getOpaqueTypeMetadata2();
  v275[2] = sub_1E68B2220();
  v82 = type metadata accessor for WideBrickView(255, v52, v78, v81);
  v276 = swift_getWitnessTable();
  *&v436 = v82;
  *(&v436 + 1) = v276;
  swift_getOpaqueTypeMetadata2();
  v275[3] = sub_1E68B2220();
  v277 = sub_1E68B2220();
  v279 = sub_1E68B2220();
  v280 = sub_1E68B2220();
  v282 = sub_1E68B2B90();
  v283 = sub_1E68B1E40();
  v332 = sub_1E68B2220();
  v317 = *(v332 - 8);
  MEMORY[0x1EEE9AC00](v332, v332);
  v333 = v275 - v83;
  v334 = sub_1E68B1E40();
  v318 = *(v334 - 8);
  MEMORY[0x1EEE9AC00](v334, v334);
  v335 = v275 - v84;
  v329 = sub_1E68B1E40();
  v319 = *(v329 - 8);
  MEMORY[0x1EEE9AC00](v329, v85);
  v316 = v275 - v86;
  *&v436 = v344;
  *(&v436 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v436 = v327;
  *(&v436 + 1) = v326;
  v88 = swift_getOpaqueTypeConformance2();
  *&v436 = v309;
  *(&v436 + 1) = v307;
  v89 = swift_getOpaqueTypeConformance2();
  v428 = v88;
  v429 = v89;
  v90 = MEMORY[0x1E697F968];
  v427 = swift_getWitnessTable();
  v425 = swift_getWitnessTable();
  v426 = MEMORY[0x1E697E5D8];
  v91 = swift_getWitnessTable();
  v92 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8, &qword_1E68B4C68, MEMORY[0x1E697D680]);
  v423 = v91;
  v424 = v92;
  v93 = swift_getWitnessTable();
  v94 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0, &qword_1E68BB7D0, MEMORY[0x1E6981870]);
  v421 = v93;
  v422 = v94;
  v95 = swift_getWitnessTable();
  v419 = OpaqueTypeConformance2;
  v420 = v95;
  v96 = swift_getWitnessTable();
  *&v436 = v315;
  *(&v436 + 1) = v314;
  v97 = swift_getOpaqueTypeConformance2();
  *&v436 = v308;
  *(&v436 + 1) = v306;
  v98 = swift_getOpaqueTypeConformance2();
  v417 = v97;
  v418 = v98;
  v99 = swift_getWitnessTable();
  v415 = v96;
  v416 = v99;
  v100 = swift_getWitnessTable();
  *&v436 = v303;
  *(&v436 + 1) = v302;
  v101 = swift_getOpaqueTypeConformance2();
  *&v436 = v301;
  *(&v436 + 1) = v300;
  v102 = swift_getOpaqueTypeConformance2();
  v413 = v101;
  v414 = v102;
  v103 = swift_getWitnessTable();
  *&v436 = v297;
  *(&v436 + 1) = v296;
  v411 = swift_getOpaqueTypeConformance2();
  v412 = v102;
  v104 = swift_getWitnessTable();
  v409 = v103;
  v410 = v104;
  v105 = swift_getWitnessTable();
  v407 = v100;
  v408 = v105;
  v106 = swift_getWitnessTable();
  *&v436 = v295;
  *(&v436 + 1) = v294;
  v107 = swift_getOpaqueTypeConformance2();
  *&v436 = v291;
  *(&v436 + 1) = v290;
  v108 = swift_getOpaqueTypeConformance2();
  v405 = v107;
  v406 = v108;
  v109 = swift_getWitnessTable();
  *&v436 = v289;
  *(&v436 + 1) = v288;
  v110 = swift_getOpaqueTypeConformance2();
  v111 = swift_getWitnessTable();
  v403 = v110;
  v404 = v111;
  v112 = v90;
  v113 = swift_getWitnessTable();
  v401 = v109;
  v402 = v113;
  v114 = swift_getWitnessTable();
  *&v436 = v286;
  *(&v436 + 1) = v285;
  v115 = swift_getOpaqueTypeConformance2();
  *&v436 = v80;
  *(&v436 + 1) = v281;
  v116 = swift_getOpaqueTypeConformance2();
  v399 = v115;
  v400 = v116;
  v117 = swift_getWitnessTable();
  *&v436 = v82;
  *(&v436 + 1) = v276;
  v118 = swift_getOpaqueTypeConformance2();
  v397 = v375;
  v398 = v118;
  v119 = swift_getWitnessTable();
  v395 = v117;
  v396 = v119;
  v120 = swift_getWitnessTable();
  v393 = v114;
  v394 = v120;
  v121 = swift_getWitnessTable();
  v391 = v106;
  v392 = v121;
  v309 = v112;
  v390 = swift_getWitnessTable();
  v388 = swift_getWitnessTable();
  v389 = v345;
  v122 = swift_getWitnessTable();
  v386 = MEMORY[0x1E6981E60];
  v387 = v122;
  v305 = swift_getWitnessTable();
  v123 = MEMORY[0x1E69805D0];
  v384 = v305;
  v385 = MEMORY[0x1E69805D0];
  v306 = swift_getWitnessTable();
  v382 = v306;
  v383 = v123;
  v124 = v329;
  v307 = swift_getWitnessTable();
  *&v436 = v124;
  *(&v436 + 1) = v307;
  v311 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  v310 = sub_1E68B2220();
  v313 = *(v310 - 8);
  MEMORY[0x1EEE9AC00](v310, v310);
  v330 = v275 - v125;
  v126 = sub_1E68B1E40();
  v127 = *(v126 - 8);
  v314 = v126;
  v315 = v127;
  MEMORY[0x1EEE9AC00](v126, v128);
  v308 = v275 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = MEMORY[0x1EEE9AC00](v130, v131);
  v312 = v275 - v133;
  v134 = v354;
  v135 = *(v354 + 16);
  v344 = v354 + 16;
  v345 = v135;
  v136 = v336;
  (v135)(v336, v364, v355, v132);
  v137 = v328;
  v138 = v347;
  (*(v328 + 16))(v340, v339, v347);
  v139 = *(v134 + 80);
  v140 = (v139 + 240) & ~v139;
  v141 = v140 + v343;
  WitnessTable = v140;
  v343 = v139 | 7;
  v142 = (v141 + *(v137 + 80)) & ~*(v137 + 80);
  v143 = swift_allocObject();
  v144 = v368;
  *(v143 + 2) = v349;
  *(v143 + 3) = v144;
  v145 = v352;
  *(v143 + 4) = v359;
  *(v143 + 5) = v145;
  v146 = v372;
  *(v143 + 6) = v377;
  *(v143 + 7) = v146;
  v147 = v361;
  *(v143 + 8) = v350;
  *(v143 + 9) = v147;
  v148 = v356;
  *(v143 + 10) = v374;
  *(v143 + 11) = v148;
  v149 = v348;
  *(v143 + 12) = v373;
  *(v143 + 13) = v149;
  v150 = v357;
  *(v143 + 14) = v358;
  *(v143 + 15) = v150;
  v151 = v351;
  *(v143 + 16) = v376;
  *(v143 + 17) = v151;
  v152 = v369;
  *(v143 + 18) = v138;
  *(v143 + 19) = v152;
  v153 = v370;
  *(v143 + 20) = v367;
  *(v143 + 21) = v153;
  v154 = v366;
  *(v143 + 22) = v371;
  *(v143 + 23) = v154;
  v155 = v365;
  *(v143 + 24) = v375;
  *(v143 + 25) = v155;
  v156 = v363;
  *(v143 + 26) = v362;
  *(v143 + 27) = v156;
  v157 = v360;
  *(v143 + 28) = v353;
  *(v143 + 29) = v157;
  v158 = *(v134 + 32);
  v354 = v134 + 32;
  v342 = v158;
  v159 = v136;
  v160 = v355;
  v158(&v143[v140], v159, v355);
  (*(v137 + 32))(&v143[v142], v340, v138);
  v161 = v160[67];
  v162 = (v364 + v160[68]);
  v163 = v162[1];
  v304 = *v162;
  v164 = (v364 + v160[69]);
  v166 = *v164;
  v165 = v164[1];
  v302 = v161;
  v303 = v166;
  v327 = v165;
  v328 = v163;
  v167 = (v364 + v160[70]);
  v169 = *v167;
  v168 = v167[1];
  v301 = v169;
  v326 = v168;
  v170 = v320;
  v171 = v160;
  v345(v320);
  v340 = ((v141 + 7) & 0xFFFFFFFFFFFFFFF8);
  v172 = swift_allocObject();
  v173 = v349;
  v174 = v368;
  *(v172 + 16) = v349;
  *(v172 + 24) = v174;
  v175 = v359;
  v176 = v352;
  *(v172 + 32) = v359;
  *(v172 + 40) = v176;
  v177 = v372;
  *(v172 + 48) = v377;
  *(v172 + 56) = v177;
  v178 = v361;
  *(v172 + 64) = v350;
  *(v172 + 72) = v178;
  v179 = v356;
  *(v172 + 80) = v374;
  *(v172 + 88) = v179;
  *(v172 + 96) = v373;
  *(v172 + 104) = v149;
  v180 = v357;
  *(v172 + 112) = v358;
  *(v172 + 120) = v180;
  v181 = v351;
  *(v172 + 128) = v376;
  *(v172 + 136) = v181;
  v182 = v369;
  *(v172 + 144) = v138;
  *(v172 + 152) = v182;
  v183 = v370;
  *(v172 + 160) = v367;
  *(v172 + 168) = v183;
  v184 = v366;
  *(v172 + 176) = v371;
  *(v172 + 184) = v184;
  v185 = v375;
  v186 = v365;
  *(v172 + 192) = v375;
  *(v172 + 200) = v186;
  v187 = v363;
  *(v172 + 208) = v362;
  *(v172 + 216) = v187;
  v188 = v360;
  *(v172 + 224) = v353;
  *(v172 + 232) = v188;
  v342(v172 + WitnessTable, v170, v171);
  *&v340[v172] = v346;
  (v345)(v337, v364, v171);
  v189 = swift_allocObject();
  *(v189 + 16) = v173;
  *(v189 + 24) = v174;
  v190 = v352;
  *(v189 + 32) = v175;
  *(v189 + 40) = v190;
  v191 = v372;
  *(v189 + 48) = v377;
  *(v189 + 56) = v191;
  v192 = v361;
  *(v189 + 64) = v350;
  *(v189 + 72) = v192;
  v193 = v356;
  *(v189 + 80) = v374;
  *(v189 + 88) = v193;
  v194 = v348;
  *(v189 + 96) = v373;
  *(v189 + 104) = v194;
  *(v189 + 112) = v358;
  *(v189 + 120) = v180;
  v195 = v351;
  *(v189 + 128) = v376;
  *(v189 + 136) = v195;
  v196 = v369;
  *(v189 + 144) = v347;
  *(v189 + 152) = v196;
  v197 = v367;
  v198 = v370;
  *(v189 + 160) = v367;
  *(v189 + 168) = v198;
  v199 = v371;
  v200 = v366;
  *(v189 + 176) = v371;
  *(v189 + 184) = v200;
  v201 = v365;
  *(v189 + 192) = v185;
  *(v189 + 200) = v201;
  v202 = v363;
  *(v189 + 208) = v362;
  *(v189 + 216) = v202;
  v203 = v353;
  v204 = v360;
  *(v189 + 224) = v353;
  *(v189 + 232) = v204;
  v342(v189 + WitnessTable, v337, v355);
  *&v340[v189] = v346;
  v437 = 0u;
  v436 = 0u;

  v272 = v199;
  v270 = v203;
  v205 = v352;
  v206 = v364;
  CanvasItemDescriptorProtocol.buildView<A, B, C, D, E, F>(onSelection:sizeClass:contentMargins:artworkViewBuilder:artworkLeadingOverlayViewBuilder:artworkTrailingOverlayViewBuilder:viewDescriptorBuilder:actionButtonViewBuilder:)(sub_1E689A850, v143, v364 + v302, &v436, v304, v328, v303, v327, v333, v301, v326, sub_1E689AA24, v172, sub_1E689AA3C, v189, v347, v376, v352, v377, v372, v374, v368, v204, v270, v197, v198, v272, v375, v196);

  v207 = v336;
  v208 = v206;
  v209 = v355;
  (v345)(v336, v208, v355);
  v210 = v340;
  v211 = swift_allocObject();
  v212 = v349;
  v213 = v368;
  *(v211 + 16) = v349;
  *(v211 + 24) = v213;
  *(v211 + 32) = v359;
  *(v211 + 40) = v205;
  v214 = v372;
  *(v211 + 48) = v377;
  *(v211 + 56) = v214;
  v215 = v350;
  v216 = v361;
  *(v211 + 64) = v350;
  *(v211 + 72) = v216;
  v217 = v356;
  *(v211 + 80) = v374;
  *(v211 + 88) = v217;
  v218 = v348;
  *(v211 + 96) = v373;
  *(v211 + 104) = v218;
  v219 = v357;
  *(v211 + 112) = v358;
  *(v211 + 120) = v219;
  v220 = v351;
  *(v211 + 128) = v376;
  *(v211 + 136) = v220;
  v221 = v369;
  *(v211 + 144) = v347;
  *(v211 + 152) = v221;
  v222 = v370;
  *(v211 + 160) = v367;
  *(v211 + 168) = v222;
  v223 = v366;
  *(v211 + 176) = v371;
  *(v211 + 184) = v223;
  v224 = v365;
  *(v211 + 192) = v375;
  *(v211 + 200) = v224;
  v225 = v363;
  *(v211 + 208) = v362;
  *(v211 + 216) = v225;
  v226 = v360;
  *(v211 + 224) = v353;
  *(v211 + 232) = v226;
  v342(v211 + WitnessTable, v207, v209);
  v227 = v346;
  *&v210[v211] = v346;
  v229 = v332;
  v228 = v333;
  sub_1E68B2AA0();

  (*(v317 + 8))(v228, v229);
  v230 = v355;
  (v345)(v207, v364, v355);
  v231 = swift_allocObject();
  v232 = v368;
  *(v231 + 16) = v212;
  *(v231 + 24) = v232;
  v233 = v352;
  *(v231 + 32) = v359;
  *(v231 + 40) = v233;
  v234 = v372;
  *(v231 + 48) = v377;
  *(v231 + 56) = v234;
  v235 = v361;
  *(v231 + 64) = v215;
  *(v231 + 72) = v235;
  *(v231 + 80) = v374;
  *(v231 + 88) = v217;
  v236 = v348;
  *(v231 + 96) = v373;
  *(v231 + 104) = v236;
  v237 = v357;
  *(v231 + 112) = v358;
  *(v231 + 120) = v237;
  v238 = v351;
  *(v231 + 128) = v376;
  *(v231 + 136) = v238;
  v239 = v347;
  v240 = v369;
  *(v231 + 144) = v347;
  *(v231 + 152) = v240;
  v241 = v370;
  *(v231 + 160) = v367;
  *(v231 + 168) = v241;
  v242 = v366;
  *(v231 + 176) = v371;
  *(v231 + 184) = v242;
  v243 = v365;
  *(v231 + 192) = v375;
  *(v231 + 200) = v243;
  v244 = v363;
  *(v231 + 208) = v362;
  *(v231 + 216) = v244;
  v245 = v360;
  *(v231 + 224) = v353;
  *(v231 + 232) = v245;
  v246 = v207;
  v247 = v230;
  v342(v231 + WitnessTable, v246, v230);
  *&v340[v231] = v227;
  v248 = v316;
  v250 = v334;
  v249 = v335;
  sub_1E68B27E0();

  (*(v318 + 8))(v249, v250);
  v274 = v245;
  v251 = v364;
  v252 = v364 + *(v247 + 252);
  v273 = v244;
  v253 = v307;
  v271 = v239;
  v254 = v239;
  v255 = v329;
  v256 = v350;
  sub_1E6814294(v339, v252, v346, v329, v330, v373, v357, v238, v271, v307, v273, v274);
  (*(v319 + 8))(v248, v255);
  v257 = v322;
  (*(v360 + 168))(v254);
  v258 = (v251 + *(v355 + 288));
  v259 = v321;
  sub_1E67C02C4(v257, *v258, v258[1], v256, v361, AssociatedConformanceWitness, v366, v321);

  *&v436 = v255;
  *(&v436 + 1) = v253;
  v380 = swift_getOpaqueTypeConformance2();
  v381 = v253;
  v260 = v310;
  v261 = swift_getWitnessTable();
  v262 = v308;
  v263 = v338;
  v264 = v330;
  MEMORY[0x1E69512E0](v259, v260, v338, v261);
  (*(v324 + 8))(v259, v263);
  (*(v313 + 8))(v264, v260);
  v265 = swift_getWitnessTable();
  v378 = v261;
  v379 = v265;
  v266 = v314;
  swift_getWitnessTable();
  v267 = v312;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v268 = *(v315 + 8);
  v268(v262, v266);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v268)(v267, v266);
}

uint64_t (*sub_1E68997BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30))()
{
  v30 = *(a12 - 8);
  v31 = MEMORY[0x1EEE9AC00](a17, a11);
  v33 = v57 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57[0] = v34;
  v57[1] = v35;
  v57[2] = v36;
  v57[3] = v37;
  v57[4] = v38;
  v57[5] = v39;
  v58 = v40;
  v59 = v41;
  v60 = a12;
  v61 = v43;
  v62 = v42;
  v63 = v44;
  v64 = v45;
  *(v46 + 136) = v47;
  *(v46 + 152) = v48;
  *(v46 + 168) = v49;
  *(v46 + 184) = v31;
  v65 = a19;
  v66 = v51;
  v67 = v50;
  v68 = a30;
  v52 = type metadata accessor for ListView(0, v57);
  result = sub_1E6893090(v52);
  if (result)
  {
    v55 = result;
    v56 = v54;
    (*(a30 + 152))(a19, a30);
    (v55)(v33);
    sub_1E672E440(v55, v56);
    return (*(v30 + 8))(v33, a12);
  }

  return result;
}

uint64_t sub_1E6899974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v28 = *(a12 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = &v59[-1] - v30;
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v35 = &v59[-1] - v34;
  v59[0] = v36;
  v59[1] = v37;
  v59[2] = v38;
  v59[3] = v39;
  v59[4] = v40;
  v60 = v41;
  v61 = v42;
  v62 = a12;
  v63 = v44;
  v64 = v43;
  v65 = v46;
  v66 = v45;
  *(v47 + 136) = v48;
  *(v47 + 152) = v49;
  v67 = v50;
  v68 = a26;
  *(v47 + 184) = v51;
  *(v47 + 200) = v33;
  v69 = v52;
  v53 = type metadata accessor for ListView(0, v59);
  sub_1E6892CEC(v53);
  v55 = *(v54 + 240);
  v59[0] = a3;
  v55(a1, v59);

  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v56 = *(v28 + 8);
  v56(v31, a12);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v56)(v35, a12);
}

uint64_t sub_1E6899B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v24 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = &v54 - v26;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v31 = &v54 - v30;
  v55 = v32;
  v56 = v33;
  v57 = v34;
  v58 = v35;
  v59 = v36;
  v60 = v37;
  v61 = v39;
  v62 = v38;
  v63 = v41;
  v64 = v40;
  v65 = v43;
  v66 = v42;
  v67 = a21;
  v68 = v44;
  v69 = v45;
  v70 = v46;
  v71 = v29;
  v72 = v48;
  v73 = v47;
  v49 = type metadata accessor for ListView(0, &v55);
  sub_1E6892AD8(v49);
  v51 = *(v50 + 240);
  v55 = a3;
  LOBYTE(v56) = 0;
  v51(a1, &v55);

  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v52 = *(v24 + 8);
  v52(v27, a5);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v52)(v31, a5);
}

void (*sub_1E6899D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(uint64_t)))(uint64_t)
{
  v27[0] = a3;
  v27[1] = a4;
  v27[2] = a5;
  v27[3] = a6;
  v27[4] = a7;
  v27[5] = a8;
  v28 = a9;
  v29 = a10;
  v30 = a11;
  v31 = a12;
  v32 = a13;
  v33 = a14;
  v34 = a15;
  v35 = a16;
  v36 = a17;
  v37 = a18;
  v38 = a19;
  v39 = a20;
  v22 = type metadata accessor for ListView(0, v27);
  result = a21(v22);
  if (result)
  {
    v25 = result;
    v26 = v24;
    result(a2);
    return sub_1E672E440(v25, v26);
  }

  return result;
}

uint64_t sub_1E6899E90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6899F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = v2[3];
  v38 = v2[5];
  v39 = v2[4];
  v36 = v2[7];
  v37 = v2[6];
  v34 = v2[9];
  v35 = v2[8];
  v32 = v2[11];
  v33 = v2[10];
  v30 = v2[13];
  v31 = v2[12];
  v28 = v2[15];
  v29 = v2[14];
  v26 = v2[17];
  v27 = v2[16];
  v24 = v2[19];
  v25 = v2[18];
  v3 = v2[21];
  v23 = v2[20];
  v4 = v2[22];
  v5 = v2[23];
  v6 = v2[24];
  v7 = v2[25];
  v9 = v2[26];
  v8 = v2[27];
  v11 = v2[28];
  v10 = v2[29];
  v44[0] = v2[2];
  v41 = v44[0];
  v44[1] = v40;
  v44[2] = v39;
  v44[3] = v38;
  v44[4] = v37;
  v44[5] = v36;
  v44[6] = v35;
  v44[7] = v34;
  v44[8] = v33;
  v44[9] = v32;
  v44[10] = v31;
  v44[11] = v30;
  v44[12] = v29;
  v44[13] = v28;
  v44[14] = v27;
  v44[15] = v26;
  v44[16] = v25;
  v44[17] = v24;
  v44[18] = v23;
  v44[19] = v3;
  v44[20] = v4;
  v44[21] = v5;
  v44[22] = v6;
  v44[23] = v7;
  v44[24] = v9;
  v44[25] = v8;
  v44[26] = v11;
  v44[27] = v10;
  v12 = *(type metadata accessor for ListView(0, v44) - 8);
  *&v22 = v9;
  *(&v22 + 1) = v8;
  *&v21 = v6;
  *(&v21 + 1) = v7;
  *&v20 = v4;
  *(&v20 + 1) = v5;
  *&v19 = v23;
  *(&v19 + 1) = v3;
  *(&v18 + 1) = v26;
  *(&v17 + 1) = v28;
  *&v18 = v27;
  *(&v16 + 1) = v30;
  *&v17 = v29;
  *(&v15 + 1) = v32;
  *&v16 = v31;
  *(&v14 + 1) = v34;
  *&v15 = v33;
  *&v14 = v35;
  return sub_1E68961DC(a1, v2 + ((*(v12 + 80) + 240) & ~*(v12 + 80)), v41, v40, v39, v38, v37, v36, a2, v14, v15, v16, v17, v18, v25, v24, v19, v20, v21, v22, v11, v10);
}

uint64_t sub_1E689A158(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t *))
{
  v5 = a2;
  v6 = a3 & 1;
  return a4(a1, &v5);
}

uint64_t sub_1E689A1D0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 240);
  v6 = a2;
  v7 = a3 & 1;
  return v4(a1, &v6);
}

uint64_t objectdestroy_10Tm_1()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 120);
  v3 = *(v0 + 192);
  v4 = *(v0 + 232);
  v5 = *(v0 + 32);
  v31 = *(v0 + 16);
  v30 = v31;
  v6 = *(v0 + 48);
  v7 = *(v0 + 64);
  v32 = v5;
  v33 = v6;
  v8 = *(v0 + 80);
  v34 = v7;
  v35 = v8;
  v36 = v1;
  v37 = *(v0 + 104);
  v29 = v37;
  v38 = v2;
  v26 = *(v0 + 144);
  v28 = *(v0 + 128);
  v39 = v28;
  v40 = v26;
  v9 = *(v0 + 176);
  v41 = *(v0 + 160);
  v42 = v9;
  v44 = *(v0 + 200);
  v27 = v44;
  v45 = *(v0 + 216);
  v43 = v3;
  v46 = v4;
  v10 = type metadata accessor for ListView(0, &v31);
  v11 = *(*(v10 - 1) + 80);
  v12 = (v11 + 240) & ~v11;
  v13 = v0 + v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = vzip1q_s64(v30, v29);
  *&v32 = AssociatedConformanceWitness;
  *(&v32 + 1) = v27;
  v15 = type metadata accessor for CanvasSectionHeader(0, &v31);
  if (!(*(*(v15 - 8) + 48))(v0 + v12, 1, v15))
  {
    v16 = sub_1E68B1820();
    (*(*(v16 - 8) + 8))(v0 + v12, v16);
    v17 = *(v15 + 52);
    v18 = *(v29.i64[0] - 8);
    if (!(*(v18 + 48))(v13 + v17, 1, v29.i64[0]))
    {
      (*(v18 + 8))(v13 + v17, v29.i64[0]);
    }

    v19 = *(v15 + 56);
    v20 = *(v30.i64[0] - 8);
    if (!(*(v20 + 48))(v13 + v19, 1, v30.i64[0]))
    {
      (*(v20 + 8))(v13 + v19, v30.i64[0]);
    }
  }

  v21 = v10[63];
  v22 = *(v2 - 8);
  if (!(*(v22 + 48))(v13 + v21, 1, v2))
  {
    (*(v22 + 8))(v13 + v21, v2);
  }

  (*(*(v28 - 8) + 8))(v13 + v10[67]);

  if (*(v13 + v10[75]))
  {
  }

  if (*(v13 + v10[76]))
  {
  }

  if (*(v13 + v10[77]))
  {
  }

  v23 = v10[78];
  v24 = sub_1E68B1950();
  (*(*(v24 - 8) + 8))(v13 + v23, v24);
  return swift_deallocObject();
}

uint64_t sub_1E689A6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = v3[3];
  v31 = v3[5];
  v32 = v3[4];
  v29 = v3[7];
  v30 = v3[6];
  v27 = v3[9];
  v28 = v3[8];
  v25 = v3[11];
  v26 = v3[10];
  v23 = v3[13];
  v24 = v3[12];
  v21 = v3[15];
  v22 = v3[14];
  v19 = v3[17];
  v20 = v3[16];
  v17 = v3[19];
  v18 = v3[18];
  v4 = v3[21];
  v16 = v3[20];
  v5 = v3[22];
  v6 = v3[23];
  v7 = v3[24];
  v8 = v3[25];
  v9 = v3[26];
  v10 = v3[27];
  v38[0] = v3[2];
  v34 = v38[0];
  v38[1] = v33;
  v38[2] = v32;
  v38[3] = v31;
  v38[4] = v30;
  v38[5] = v29;
  v38[6] = v28;
  v38[7] = v27;
  v38[8] = v26;
  v38[9] = v25;
  v38[10] = v24;
  v38[11] = v23;
  v38[12] = v22;
  v38[13] = v21;
  v38[14] = v20;
  v38[15] = v19;
  v38[16] = v18;
  v38[17] = v17;
  v38[18] = v16;
  v38[19] = v4;
  v38[20] = v5;
  v38[21] = v6;
  v38[22] = v7;
  v38[23] = v8;
  v38[24] = v9;
  v38[25] = v10;
  v11 = v3[29];
  v39 = v3[28];
  v12 = v39;
  v40 = v11;
  v13 = *(type metadata accessor for ListView(0, v38) - 8);
  *(&v15 + 1) = v27;
  *&v15 = v28;
  return sub_1E68979C0(a1, a2, v3 + ((*(v13 + 80) + 240) & ~*(v13 + 80)), v34, v33, v32, v31, v30, a3, v29, v15, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v4, v5, v6, v7, v8, v9, v10, v12, v11);
}

uint64_t (*sub_1E689A850())()
{
  v30 = v0[3];
  v28 = v0[5];
  v29 = v0[4];
  v26 = v0[7];
  v27 = v0[6];
  v24 = v0[9];
  v25 = v0[8];
  v22 = v0[11];
  v23 = v0[10];
  v20 = v0[13];
  v21 = v0[12];
  v18 = v0[15];
  v19 = v0[14];
  v16 = v0[17];
  v17 = v0[16];
  v1 = v0[18];
  v14 = v0[20];
  v15 = v0[19];
  v13 = v0[21];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[25];
  v6 = v0[26];
  v7 = v0[27];
  v8 = v0[28];
  v9 = v0[29];
  v32[0] = v0[2];
  v31 = v32[0];
  v32[1] = v30;
  v32[2] = v29;
  v32[3] = v28;
  v32[4] = v27;
  v32[5] = v26;
  v32[6] = v25;
  v32[7] = v24;
  v32[8] = v23;
  v32[9] = v22;
  v32[10] = v21;
  v32[11] = v20;
  v32[12] = v19;
  v32[13] = v18;
  v32[14] = v17;
  v32[15] = v16;
  v32[16] = v1;
  v32[17] = v15;
  v32[18] = v14;
  v32[19] = v13;
  v32[20] = v2;
  v32[21] = v3;
  v32[22] = v4;
  v32[23] = v5;
  v32[24] = v6;
  v32[25] = v7;
  v32[26] = v8;
  v32[27] = v9;
  v10 = *(type metadata accessor for ListView(0, v32) - 8);
  v11 = (*(v10 + 80) + 240) & ~*(v10 + 80);
  return sub_1E68997BC(v0 + v11, v0 + ((v11 + *(v10 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80)), v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v1, v15, v14, v13, v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1E689AA54(uint64_t a1, uint64_t (*a2)(uint64_t, char *, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v32 = *(v2 + 3);
  v30 = *(v2 + 5);
  v31 = *(v2 + 4);
  v28 = *(v2 + 7);
  v29 = *(v2 + 6);
  v26 = *(v2 + 9);
  v27 = *(v2 + 8);
  v24 = *(v2 + 11);
  v25 = *(v2 + 10);
  v22 = *(v2 + 13);
  v23 = *(v2 + 12);
  v20 = *(v2 + 15);
  v21 = *(v2 + 14);
  v18 = *(v2 + 17);
  v19 = *(v2 + 16);
  v16 = *(v2 + 19);
  v17 = *(v2 + 18);
  v3 = *(v2 + 21);
  v15 = *(v2 + 20);
  v4 = *(v2 + 22);
  v5 = *(v2 + 23);
  v6 = *(v2 + 24);
  v7 = *(v2 + 25);
  v8 = *(v2 + 26);
  v9 = *(v2 + 27);
  v36[0] = *(v2 + 2);
  v33 = v36[0];
  v36[1] = v32;
  v36[2] = v31;
  v36[3] = v30;
  v36[4] = v29;
  v36[5] = v28;
  v36[6] = v27;
  v36[7] = v26;
  v36[8] = v25;
  v36[9] = v24;
  v36[10] = v23;
  v36[11] = v22;
  v36[12] = v21;
  v36[13] = v20;
  v36[14] = v19;
  v36[15] = v18;
  v36[16] = v17;
  v36[17] = v16;
  v36[18] = v15;
  v36[19] = v3;
  v36[20] = v4;
  v36[21] = v5;
  v36[22] = v6;
  v36[23] = v7;
  v36[24] = v8;
  v36[25] = v9;
  v10 = *(v2 + 29);
  v37 = *(v2 + 28);
  v11 = v37;
  v38 = v10;
  v12 = *(type metadata accessor for ListView(0, v36) - 8);
  v13 = (*(v12 + 80) + 240) & ~*(v12 + 80);
  return a2(a1, &v2[v13], *&v2[(*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8], v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v3, v4, v5, v6, v7, v8, v9, v11, v10);
}

uint64_t objectdestroy_22Tm_0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 120);
  v3 = *(v0 + 192);
  v4 = *(v0 + 232);
  v5 = *(v0 + 32);
  v31 = *(v0 + 16);
  v30 = v31;
  v6 = *(v0 + 48);
  v7 = *(v0 + 64);
  v32 = v5;
  v33 = v6;
  v8 = *(v0 + 80);
  v34 = v7;
  v35 = v8;
  v36 = v1;
  v37 = *(v0 + 104);
  v29 = v37;
  v38 = v2;
  v26 = *(v0 + 144);
  v28 = *(v0 + 128);
  v39 = v28;
  v40 = v26;
  v9 = *(v0 + 176);
  v41 = *(v0 + 160);
  v42 = v9;
  v44 = *(v0 + 200);
  v27 = v44;
  v45 = *(v0 + 216);
  v43 = v3;
  v46 = v4;
  v10 = type metadata accessor for ListView(0, &v31);
  v11 = *(*(v10 - 1) + 80);
  v12 = (v11 + 240) & ~v11;
  v13 = v0 + v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = vzip1q_s64(v30, v29);
  *&v32 = AssociatedConformanceWitness;
  *(&v32 + 1) = v27;
  v15 = type metadata accessor for CanvasSectionHeader(0, &v31);
  if (!(*(*(v15 - 8) + 48))(v0 + v12, 1, v15))
  {
    v16 = sub_1E68B1820();
    (*(*(v16 - 8) + 8))(v0 + v12, v16);
    v17 = *(v15 + 52);
    v18 = *(v29.i64[0] - 8);
    if (!(*(v18 + 48))(v13 + v17, 1, v29.i64[0]))
    {
      (*(v18 + 8))(v13 + v17, v29.i64[0]);
    }

    v19 = *(v15 + 56);
    v20 = *(v30.i64[0] - 8);
    if (!(*(v20 + 48))(v13 + v19, 1, v30.i64[0]))
    {
      (*(v20 + 8))(v13 + v19, v30.i64[0]);
    }
  }

  v21 = v10[63];
  v22 = *(v2 - 8);
  if (!(*(v22 + 48))(v13 + v21, 1, v2))
  {
    (*(v22 + 8))(v13 + v21, v2);
  }

  (*(*(v28 - 8) + 8))(v13 + v10[67]);

  if (*(v13 + v10[75]))
  {
  }

  if (*(v13 + v10[76]))
  {
  }

  if (*(v13 + v10[77]))
  {
  }

  v23 = v10[78];
  v24 = sub_1E68B1950();
  (*(*(v24 - 8) + 8))(v13 + v23, v24);
  return swift_deallocObject();
}

void (*sub_1E689B100(uint64_t (*a1)(uint64_t)))(uint64_t)
{
  v40 = v1[4];
  v41 = v1[3];
  v38 = v1[6];
  v39 = v1[5];
  v36 = v1[8];
  v37 = v1[7];
  v34 = v1[10];
  v35 = v1[9];
  v32 = v1[12];
  v33 = v1[11];
  v30 = v1[14];
  v31 = v1[13];
  v28 = v1[16];
  v29 = v1[15];
  v26 = v1[18];
  v27 = v1[17];
  v2 = v1[21];
  v24 = v1[20];
  v25 = v1[19];
  v3 = v1[22];
  v4 = v1[23];
  v5 = v1[24];
  v6 = v1[25];
  v7 = v1[26];
  v8 = v1[27];
  v10 = v1[28];
  v9 = v1[29];
  v44[0] = v1[2];
  v42 = v44[0];
  v44[1] = v41;
  v44[2] = v40;
  v44[3] = v39;
  v44[4] = v38;
  v44[5] = v37;
  v44[6] = v36;
  v44[7] = v35;
  v44[8] = v34;
  v44[9] = v33;
  v44[10] = v32;
  v44[11] = v31;
  v44[12] = v30;
  v44[13] = v29;
  v44[14] = v28;
  v44[15] = v27;
  v44[16] = v26;
  v44[17] = v25;
  v44[18] = v24;
  v44[19] = v2;
  v44[20] = v3;
  v44[21] = v4;
  v44[22] = v5;
  v44[23] = v6;
  v44[24] = v7;
  v44[25] = v8;
  v44[26] = v10;
  v44[27] = v9;
  v11 = *(type metadata accessor for ListView(0, v44) - 8);
  v12 = (*(v11 + 80) + 240) & ~*(v11 + 80);
  *(&v23 + 1) = v8;
  *(&v22 + 1) = v6;
  *&v23 = v7;
  *(&v21 + 1) = v4;
  *&v22 = v5;
  *(&v20 + 1) = v2;
  *&v21 = v3;
  *(&v19 + 1) = v25;
  *&v20 = v24;
  *(&v18 + 1) = v27;
  *&v19 = v26;
  *(&v17 + 1) = v29;
  *&v18 = v28;
  *(&v16 + 1) = v31;
  *&v17 = v30;
  *(&v15 + 1) = v33;
  *&v16 = v32;
  *(&v14 + 1) = v35;
  *&v15 = v34;
  *&v14 = v36;
  return sub_1E6899D54(v1 + v12, *(v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), v42, v41, v40, v39, v38, v37, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v10, v9, a1);
}

uint64_t sub_1E689B2B4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1E689B2EC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 240);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t sub_1E689B350(void (*a1)(char *), uint64_t a2)
{
  v4 = v2;
  v33 = a1;
  v34 = a2;
  v38 = sub_1E68B17E0();
  v5 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v6);
  v36 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1E68B17D0();
  v8 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v9);
  v31 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E68B17F0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097D10, &qword_1E68B8938);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v29 - v19;
  (*(v12 + 16))(v15, v4, v11, v18);
  v21 = MEMORY[0x1E69687C8];
  sub_1E689C474(&qword_1EE2EDEB0, MEMORY[0x1E69687C8], MEMORY[0x1E69687D8]);
  sub_1E68B32C0();
  sub_1E689C474(&qword_1EE2EDEA8, v21, MEMORY[0x1E69687E0]);
  v35 = (v5 + 8);
  v29 = (v8 + 8);
  v30 = (v8 + 16);
  while (1)
  {
    v22 = v36;
    sub_1E68B3690();
    sub_1E689C474(&qword_1EE2EDEB8, MEMORY[0x1E69687B0], MEMORY[0x1E69687C0]);
    v23 = v38;
    v24 = sub_1E68B3190();
    (*v35)(v22, v23);
    if (v24)
    {
      break;
    }

    v25 = sub_1E68B36F0();
    v26 = v31;
    v27 = v32;
    (*v30)(v31);
    v25(v37, 0);
    sub_1E68B36A0();
    v33(v26);
    if (v3)
    {
      (*v29)(v26, v27);
      return sub_1E6744A10(v20, &qword_1ED097D10, &qword_1E68B8938);
    }

    (*v29)(v26, v27);
  }

  return sub_1E6744A10(v20, &qword_1ED097D10, &qword_1E68B8938);
}

uint64_t AttributedString.textView()()
{
  v1 = sub_1E68B17F0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E68B2150();
  v13[0] = sub_1E68B26C0();
  v13[1] = v6;
  v14 = v7;
  v15 = v8;
  sub_1E68B1800();
  v11 = v13;
  v12 = v0;
  sub_1E689B350(sub_1E67611A0, v10);
  (*(v2 + 8))(v5, v1);
  return v13[0];
}

uint64_t sub_1E689B8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v151 = a3;
  v157 = a2;
  v4 = sub_1E68B18D0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v150 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097DC8, &qword_1E68B8DD0);
  MEMORY[0x1EEE9AC00](v149, v7);
  v148 = &v143 - v8;
  v9 = sub_1E68B1820();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v147 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097D08, &qword_1E68B8930);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v152 = &v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v153 = &v143 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v146 = &v143 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v143 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v143 - v28;
  swift_getKeyPath();
  v30 = sub_1E67934E4();
  v160 = a1;
  sub_1E68B17B0();

  swift_getKeyPath();
  v31 = sub_1E6793538();
  sub_1E68B1900();

  v32 = *(v13 + 8);
  v32(v29, v12);
  v33 = v162;
  v158 = v32;
  v159 = v13 + 8;
  v155 = v31;
  v156 = v30;
  v154 = v12;
  if (!v162)
  {
    goto LABEL_11;
  }

  v34 = v165;
  v35 = v166;
  v37 = v163;
  v36 = v164;
  v38 = v161;

  v145 = v38;
  v39 = v38;
  v40 = v33;
  v41 = v37;
  v32 = v158;
  sub_1E679358C(v39, v33, v41, v36, v34, v35);
  swift_getKeyPath();
  sub_1E68B17B0();

  swift_getKeyPath();
  sub_1E68B1900();

  v32(v25, v12);
  v42 = v162;
  if (!v162)
  {

LABEL_11:
    v48 = v157;
    goto LABEL_12;
  }

  v44 = v165;
  v43 = v166;
  v46 = v163;
  v45 = v164;
  v47 = v161;

  sub_1E679358C(v47, v42, v46, v45, v44, v43);
  v48 = v157;
  if (v45)
  {
    sub_1E689C4BC();
    v49 = sub_1E689C508(v46, v45);
    if (v49)
    {
      v50 = v49;
      v51 = *v48;
      v52 = *(v48 + 8);
      v53 = *(v48 + 16);
      v54 = *(v48 + 24);

      v152 = v54;

      v153 = v51;
      v151 = v52;
      LODWORD(v150) = v53;
      sub_1E673F26C(v51, v52, v53);
      sub_1E68B2BB0();
      v55 = sub_1E68B26F0();
      v57 = v56;
      v59 = v58;
      v149 = v50;
      v161 = sub_1E68B2B70();
      v147 = sub_1E68B2660();
      v144 = v60;
      v62 = v61;
      v148 = v63;
      sub_1E673F0D4(v55, v57, v59 & 1);

      swift_getKeyPath();
      v64 = v146;
      sub_1E68B17B0();

      swift_getKeyPath();
      v65 = v154;
      sub_1E68B1900();

      v158(v64, v65);
      v66 = v162;
      if (v162 && (v68 = v165, v67 = v166, v70 = v163, v69 = v164, v71 = v161, , sub_1E679358C(v71, v66, v70, v69, v68, v67), v67))
      {

        v40 = v67;
      }

      else
      {
        v68 = v145;
      }

      v161 = v68;
      v162 = v40;
      sub_1E67612A8();
      v126 = v147;
      v127 = v62;
      v128 = v144;
      v129 = sub_1E68B2670();
      v131 = v130;
      v133 = v132;
      v155 = v134;
      sub_1E673F0D4(v126, v128, v127 & 1);

      v135 = v153;
      v136 = v151;
      LOBYTE(v128) = v150;
      v137 = sub_1E68B2680();
      v158 = v138;
      v159 = v137;
      LODWORD(v156) = v139;
      v160 = v140;

      sub_1E673F0D4(v129, v131, v133 & 1);

      sub_1E673F0D4(v135, v136, v128);

      v109 = *v48;
      v110 = *(v48 + 8);
      v111 = *(v48 + 16);
      v141 = v158;
      *v48 = v159;
      *(v48 + 8) = v141;
      v125 = v156;
      goto LABEL_20;
    }
  }

  v32 = v158;
LABEL_12:
  swift_getKeyPath();
  v72 = v153;
  sub_1E68B17B0();

  swift_getKeyPath();
  v73 = v154;
  sub_1E68B1900();

  v32(v72, v73);
  v74 = v162;
  if (!v162)
  {
    v114 = *v48;
    v113 = *(v48 + 8);
    v115 = *(v48 + 16);
    v159 = *(v48 + 24);
    sub_1E673F26C(v114, v113, v115);

    v116 = v148;
    sub_1E68B17C0();
    sub_1E6793FCC();
    sub_1E68B1850();
    sub_1E6744A10(v116, &qword_1ED097DC8, &qword_1E68B8DD0);
    sub_1E68B1860();
    v117 = sub_1E68B26D0();
    v119 = v118;
    LOBYTE(v116) = v120;
    v158 = sub_1E68B2680();
    v156 = v121;
    LODWORD(v155) = v122;
    v160 = v123;
    sub_1E673F0D4(v117, v119, v116 & 1);

    sub_1E673F0D4(v114, v113, v115);

    v109 = *v48;
    v110 = *(v48 + 8);
    v111 = *(v48 + 16);
    v124 = v156;
    *v48 = v158;
    *(v48 + 8) = v124;
    v125 = v155;
LABEL_20:
    *(v48 + 16) = v125 & 1;
    *(v48 + 24) = v160;
    goto LABEL_21;
  }

  v75 = v165;
  v76 = v166;
  v78 = v163;
  v77 = v164;
  v79 = v161;

  sub_1E679358C(v79, v74, v78, v77, v75, v76);
  v81 = *v48;
  v80 = *(v48 + 8);
  v82 = *(v48 + 16);
  v83 = *(v48 + 24);

  v153 = v83;

  v149 = v81;
  v151 = v80;
  LODWORD(v150) = v82;
  sub_1E673F26C(v81, v80, v82);
  sub_1E68B2BB0();
  v148 = sub_1E68B26F0();
  v147 = v84;
  v86 = v85;
  v146 = v87;
  swift_getKeyPath();
  v88 = v152;
  sub_1E68B17B0();

  swift_getKeyPath();
  sub_1E68B1900();

  v158(v88, v73);
  v89 = v162;
  if (v162)
  {
    v91 = v165;
    v90 = v166;
    v92 = v163;
    v93 = v164;
    v94 = v161;

    sub_1E679358C(v94, v89, v92, v93, v91, v90);
    if (v90)
    {

      v79 = v91;
      v74 = v90;
    }
  }

  v161 = v79;
  v162 = v74;
  sub_1E67612A8();
  v95 = v148;
  v96 = v147;
  v97 = sub_1E68B2670();
  v99 = v98;
  v101 = v100;
  sub_1E673F0D4(v95, v96, v86 & 1);

  v102 = v149;
  v103 = v151;
  LOBYTE(v95) = v150;
  v104 = sub_1E68B2680();
  v158 = v105;
  v159 = v104;
  LOBYTE(v96) = v106;
  v160 = v107;
  sub_1E673F0D4(v97, v99, v101 & 1);

  sub_1E673F0D4(v102, v103, v95);

  v108 = v157;
  v109 = *v157;
  v110 = *(v157 + 8);
  v111 = *(v157 + 16);
  v112 = v158;
  *v157 = v159;
  *(v108 + 8) = v112;
  *(v108 + 16) = v96 & 1;
  *(v108 + 24) = v160;
LABEL_21:
  sub_1E673F0D4(v109, v110, v111);
}

uint64_t sub_1E689C474(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E689C4BC()
{
  result = qword_1ED09A010;
  if (!qword_1ED09A010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED09A010);
  }

  return result;
}

id sub_1E689C508(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (sub_1E68B3200() != 6)
  {
    goto LABEL_25;
  }

  v4 = sub_1E68B3210();
  v5 = sub_1E68B3210();
  v9 = sub_1E68B32B0();
  if (v5 >> 14 < v4 >> 14)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = sub_1E68B32B0();
  v34 = v16;
  v35 = v13;
  v17 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v17 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5 >> 14 > 4 * v17)
  {
    goto LABEL_22;
  }

  v18 = v14;
  v19 = v15;
  v20 = sub_1E68B32B0();
  v32 = v22;
  v33 = v21;
  v24 = v23;

  if (!((v9 ^ v10) >> 14))
  {
LABEL_23:

LABEL_24:

LABEL_25:

    return 0;
  }

  v25 = sub_1E689D1B8(v9, v10, v11, v12, 16);
  if ((v25 & 0x10000000000) != 0)
  {
    v25 = sub_1E689C7BC(v9, v10, v11, v12, 16);
  }

  v26 = v25;

  if ((v26 & 0x100000000) != 0 || !((v35 ^ v18) >> 14))
  {
    goto LABEL_24;
  }

  v27 = sub_1E689D1B8(v35, v18, v34, v19, 16);
  if ((v27 & 0x10000000000) != 0)
  {
    v27 = sub_1E689C7BC(v35, v18, v34, v19, 16);
  }

  v28 = v27;

  if ((v28 & 0x100000000) != 0 || !((v20 ^ v33) >> 14))
  {
    goto LABEL_25;
  }

  v29 = sub_1E689D1B8(v20, v33, v32, v24, 16);
  if ((v29 & 0x10000000000) != 0)
  {
    v29 = sub_1E689C7BC(v20, v33, v32, v24, 16);
  }

  v30 = v29;

  if ((v30 & 0x100000000) == 0)
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRed:v26 / 255.0 green:v28 / 255.0 blue:v30 / 255.0 alpha:1.0];
  }

  return 0;
}

unsigned __int8 *sub_1E689C7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_1E689D280();

  result = sub_1E68B32A0();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1E689CD44(result, v7);
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1E68B38A0();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_127;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if (v31 != v31)
              {
                goto LABEL_126;
              }

              v32 = v29 + v30;
              v23 = __OFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_126;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_127;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if (v39 != v39)
            {
              goto LABEL_126;
            }

            v40 = v37 + v38;
            v23 = __OFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if (v21 != v21)
            {
              goto LABEL_126;
            }

            v22 = v18 + v19;
            v23 = __OFSUB__(v21, v22);
            v15 = v21 - v22;
            if (v23)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_127;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if (v69 != v69)
          {
            goto LABEL_126;
          }

          v70 = v67 + v68;
          v23 = __OFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_126;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_127;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if (v52 != v52)
          {
            goto LABEL_126;
          }

          v53 = v50 + v51;
          v23 = __OFSUB__(v52, v53);
          v45 = v52 - v53;
          if (v23)
          {
            goto LABEL_126;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_127;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if (v61 != v61)
        {
          goto LABEL_126;
        }

        v62 = v59 + v60;
        v23 = __OFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_126;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_125:
      v17 = 0;
      v20 = v45;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1E689CD44(uint64_t a1, unint64_t a2)
{
  v2 = sub_1E68B32B0();
  v6 = sub_1E689CDC4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1E689CDC4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1E68B3770();
    if (!v9 || (v10 = v9, v11 = sub_1E683B8B8(v9, 0), v12 = sub_1E689CF1C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1E68B31E0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1E68B31E0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1E68B38A0();
LABEL_4:

  return sub_1E68B31E0();
}

unint64_t sub_1E689CF1C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1E689D13C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1E68B3270();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1E68B38A0();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1E689D13C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1E68B3240();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1E689D13C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1E68B3280();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1E6951AA0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1E689D1B8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_1E68B38A0();
  }

  result = sub_1E689D2D4(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

unint64_t sub_1E689D280()
{
  result = qword_1ED09A018;
  if (!qword_1ED09A018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED09A018);
  }

  return result;
}

uint64_t sub_1E689D2D4(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1E689D13C(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1E68B3260();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1E689D13C(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1E689D13C(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_1E68B3260();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if (v48 != v48)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__OFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if (v55 != v55)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__OFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if (v39 != v39)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (__OFSUB__(v39, v40))
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_1E689D740()
{
  sub_1E68B22C0();
  sub_1E68AA8A0(&qword_1EE2EA608, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  return sub_1E68B3C00();
}

uint64_t sub_1E689D7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, uint64_t a25)
{
  v31 = swift_allocObject();
  *(v31 + 16) = a3;
  *(v31 + 24) = a4;
  *(v31 + 32) = a5;
  *(v31 + 40) = a6;
  *(v31 + 48) = a7;
  *(v31 + 56) = a8;
  *(v31 + 64) = a9;
  *(v31 + 72) = a10;
  *(v31 + 80) = a11;
  *(v31 + 88) = a12;
  *(v31 + 104) = a13;
  *(v31 + 120) = a14;
  *(v31 + 136) = a15;
  *(v31 + 152) = a16;
  *(v31 + 168) = a17;
  *(v31 + 184) = a18;
  *(v31 + 200) = a19;
  *(v31 + 216) = a20;
  *(v31 + 232) = a21;
  *(v31 + 248) = a22;
  *(v31 + 264) = a23;
  *(v31 + 280) = a24;
  *(v31 + 296) = a25;
  *(v31 + 304) = a1;
  *(v31 + 312) = a2;
  v36[0] = sub_1E68AB7C0;
  v36[1] = v31;
  sub_1E68B3750();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098208, &qword_1E68BB878);
  FunctionTypeMetadata3 = swift_getFunctionTypeMetadata3();
  sub_1E672890C(v36, FunctionTypeMetadata3, &v37);
  return v37;
}

uint64_t (*sub_1E689D98C(_OWORD *a1))(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = swift_allocObject();
  v6 = a1[2];
  *(v5 + 16) = a1[1];
  *(v5 + 32) = v6;
  v7 = a1[4];
  *(v5 + 48) = a1[3];
  *(v5 + 64) = v7;
  v8 = a1[6];
  *(v5 + 80) = a1[5];
  *(v5 + 96) = v8;
  v9 = a1[8];
  *(v5 + 112) = a1[7];
  *(v5 + 128) = v9;
  v10 = a1[10];
  *(v5 + 144) = a1[9];
  *(v5 + 160) = v10;
  v11 = a1[12];
  *(v5 + 176) = a1[11];
  *(v5 + 192) = v11;
  v12 = a1[14];
  *(v5 + 208) = a1[13];
  *(v5 + 224) = v12;
  v13 = a1[16];
  *(v5 + 240) = a1[15];
  *(v5 + 256) = v13;
  v14 = a1[18];
  *(v5 + 272) = a1[17];
  *(v5 + 288) = v14;
  *(v5 + 304) = v4;
  *(v5 + 312) = v3;

  return sub_1E68AA074;
}

uint64_t sub_1E689DA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, uint64_t a24, uint64_t a25)
{
  v31 = swift_allocObject();
  *(v31 + 16) = a3;
  *(v31 + 24) = a4;
  *(v31 + 32) = a5;
  *(v31 + 40) = a6;
  *(v31 + 48) = a7;
  *(v31 + 56) = a8;
  *(v31 + 64) = a9;
  *(v31 + 80) = a10;
  *(v31 + 88) = a11;
  *(v31 + 96) = a12;
  *(v31 + 112) = a13;
  *(v31 + 128) = a14;
  *(v31 + 144) = a15;
  *(v31 + 160) = a16;
  *(v31 + 176) = a17;
  *(v31 + 192) = a18;
  *(v31 + 208) = a19;
  *(v31 + 224) = a20;
  *(v31 + 240) = a21;
  *(v31 + 256) = a22;
  *(v31 + 272) = a23;
  *(v31 + 288) = a24;
  *(v31 + 296) = a25;
  *(v31 + 304) = a1;
  *(v31 + 312) = a2;
  v36[0] = sub_1E68AB798;
  v36[1] = v31;
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(v36, FunctionTypeMetadata1, &v37);
  return v37;
}

uint64_t (*sub_1E689DBB8(uint64_t a1))()
{
  v3 = (v1 + *(a1 + 348));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  v7 = *(a1 + 32);
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 32) = v7;
  v8 = *(a1 + 64);
  *(v6 + 48) = *(a1 + 48);
  *(v6 + 64) = v8;
  v9 = *(a1 + 96);
  *(v6 + 80) = *(a1 + 80);
  *(v6 + 96) = v9;
  v10 = *(a1 + 128);
  *(v6 + 112) = *(a1 + 112);
  *(v6 + 128) = v10;
  v11 = *(a1 + 160);
  *(v6 + 144) = *(a1 + 144);
  *(v6 + 160) = v11;
  v12 = *(a1 + 192);
  *(v6 + 176) = *(a1 + 176);
  *(v6 + 192) = v12;
  v13 = *(a1 + 224);
  *(v6 + 208) = *(a1 + 208);
  *(v6 + 224) = v13;
  v14 = *(a1 + 256);
  *(v6 + 240) = *(a1 + 240);
  *(v6 + 256) = v14;
  v15 = *(a1 + 288);
  *(v6 + 272) = *(a1 + 272);
  *(v6 + 288) = v15;
  *(v6 + 304) = v5;
  *(v6 + 312) = v4;

  return sub_1E68AA0B8;
}

double sub_1E689DC74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0984A8, &unk_1E68C6980);
  sub_1E68B2BD0();
  return v1;
}

uint64_t CanvasContainerView.init(descriptors:layout:artworkViewBuilder:artworkLeadingOverlayViewBuilder:artworkTrailingOverlayViewBuilder:contextMenuViewModifierBuilder:viewDescriptorBuilder:actionButtonViewBuilder:sectionHeaderSubtitleViewBuilder:onItemAppearedAtIndexPath:onItemDisappearedAtIndexPath:onItemSelectedAtItemIdentifier:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int128 a30, uint64_t a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36, __int128 a37, __int128 a38, __int128 a39, __int128 a40, __int128 a41, __int128 a42, __int128 a43, __int128 a44, uint64_t a45)
{
  v79 = a25;
  v80 = a26;
  v81 = a27;
  v82 = a28;
  v83 = a29;
  v84 = a30;
  v85 = a31;
  v86 = a32;
  v87 = a33;
  v88 = a34;
  v89 = a35;
  v90 = a36;
  v91 = a37;
  v92 = a38;
  v93 = a39;
  v94 = a40;
  v95 = a41;
  v96 = a42;
  v97 = a43;
  v98 = a44;
  v99 = a45;
  v72 = type metadata accessor for CanvasContainerView(0, &v79);
  v47 = a9 + v72[88];
  type metadata accessor for CGSize(0);
  v100 = 0;
  v101 = 0;
  sub_1E68B2BC0();
  v48 = v80;
  *v47 = v79;
  *(v47 + 16) = v48;
  *a9 = a1;
  v49 = v72[84];
  *&v79 = a35;
  *(&v79 + 1) = *(&a34 + 1);
  v80 = *(&a44 + 1);
  v81 = a44;
  v73 = type metadata accessor for CanvasLayout(0, &v79);
  v75 = *(v73 - 8);
  (*(v75 + 16))(a9 + v49, a2, v73);
  v100 = a3;
  v101 = a4;
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v100, FunctionTypeMetadata1, &v79);
  *(a9 + 24) = v79;
  v100 = a5;
  v101 = a6;
  v51 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v100, v51, &v79);
  *(a9 + 40) = v79;
  v100 = a7;
  v101 = a8;
  v52 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v100, v52, &v79);
  *(a9 + 56) = v79;
  v100 = a10;
  v101 = a11;
  v53 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v100, v53, &v79);
  *(a9 + 72) = v79;
  v100 = a12;
  v101 = a13;
  sub_1E68B19A0();
  *&v79 = a35;
  *(&v79 + 1) = *(&a34 + 1);
  v80 = *(&a44 + 1);
  v81 = a44;
  type metadata accessor for CanvasLayout(255, &v79);
  FunctionTypeMetadata3 = swift_getFunctionTypeMetadata3();
  sub_1E672890C(&v100, FunctionTypeMetadata3, &v79);
  *(a9 + 88) = v79;

  *(a9 + 8) = sub_1E689D7C0(a14, a15, a25, *(&a25 + 1), a26, a27, a28, a29, a30, *(&a30 + 1), a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45);
  *(a9 + 16) = v55;
  v100 = a16;
  v101 = a17;
  v56 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v100, v56, &v79);
  *(a9 + 104) = v79;
  v57 = (a9 + v72[85]);
  v58 = swift_allocObject();
  *(v58 + 16) = a18;
  *(v58 + 24) = a19;
  *v57 = sub_1E68A90F0;
  v57[1] = v58;
  v59 = (a9 + v72[86]);
  v60 = swift_allocObject();
  *(v60 + 16) = a20;
  *(v60 + 24) = a21;
  *v59 = sub_1E68AB7FC;
  v59[1] = v60;
  v61 = (a9 + v72[87]);
  *&v68[184] = a44;
  *&v68[168] = a43;
  *&v68[152] = a42;
  *&v68[136] = a41;
  *&v68[120] = a40;
  *&v68[104] = a39;
  *&v68[88] = a38;
  *&v68[72] = a37;
  *&v68[56] = a36;
  *&v68[40] = a35;
  *&v68[24] = a34;
  *v68 = *(&a32 + 1);
  *&v68[8] = a33;
  v62 = sub_1E689DA40(a22, a23, a25, *(&a25 + 1), a26, a27, a28, a29, a30, a31, a32, *v68, *&v68[16], *&v68[32], *&v68[48], *&v68[64], *&v68[80], *&v68[96], *&v68[112], *&v68[128], *&v68[144], *&v68[160], *&v68[176], *(&a44 + 1), a45);
  v64 = v63;

  (*(v75 + 8))(a2, v73);
  *v61 = v62;
  v61[1] = v64;
  v65 = v72[89];
  v66 = sub_1E68B1950();
  return (*(*(v66 - 8) + 32))(a9 + v65, a24, v66);
}

uint64_t sub_1E689E500@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  v39 = *(a1 + 136);
  v40 = *(a1 + 288);
  v42 = v39;
  *v43 = v40;
  v38 = type metadata accessor for CanvasSectionLayout(0, &v42);
  v37 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v4);
  v6 = &v35 - v5;
  v7 = *(a1 + 56);
  v8 = *(a1 + 120);
  v9 = *(a1 + 104);
  v10 = *(a1 + 192);
  v11 = *(a1 + 272);
  v12 = *(a1 + 256);
  v42 = *(a1 + 16);
  *v43 = v7;
  *&v43[8] = *(a1 + 88);
  v44 = v8;
  v36 = v39;
  v45 = v39;
  v46 = v9;
  v47 = *(&v39 + 1);
  v48 = *(a1 + 152);
  v49 = v10;
  v13 = *(a1 + 240);
  v50 = *(a1 + 224);
  v51 = v13;
  v52 = v11;
  *&v39 = v40;
  v53 = v40;
  v54 = v12;
  v55 = *(&v40 + 1);
  v14 = type metadata accessor for CanvasSectionDescriptor(255, &v42);
  v15 = sub_1E68B3750();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v35 - v18;
  v20 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v35 - v23;
  *&v40 = v2;
  *&v42 = *v2;
  sub_1E68B33B0();
  swift_getWitnessTable();
  sub_1E68B36C0();
  if ((*(v20 + 48))(v19, 1, v14) == 1)
  {
    (*(v16 + 8))(v19, v15);
LABEL_8:
    v33 = 1;
    v32 = v41;
    return (*(v20 + 56))(v32, v33, 1, v14);
  }

  v25 = *(v20 + 32);
  v25(v24, v19, v14);
  v26 = v37;
  v27 = v38;
  (*(v37 + 16))(v6, &v24[*(v14 + 180)], v38);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v20 + 8))(v24, v14);
    (*(v26 + 8))(v6, v27);
    goto LABEL_8;
  }

  v38 = v40 + *(a1 + 336);
  v28 = *(a1 + 128);
  v29 = *(a1 + 280);
  *&v42 = v36;
  *(&v42 + 1) = v28;
  *v43 = v39;
  *&v43[8] = v29;
  type metadata accessor for CanvasLayout(0, &v42);
  v30 = sub_1E689DC74();
  if (((*(v29 + 56))(v28, v29, v30) & 1) == 0)
  {
    (*(v20 + 8))(v24, v14);
    goto LABEL_8;
  }

  v31 = v41;
  v25(v41, v24, v14);
  v32 = v31;
  v33 = 0;
  return (*(v20 + 56))(v32, v33, 1, v14);
}

uint64_t sub_1E689E988@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v301 = a1;
  v298 = a3;
  v310 = *(a2 - 1);
  v311 = a2;
  MEMORY[0x1EEE9AC00](a1, a2);
  v297 = &v263 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v296 = (&v263 - v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v293 = &v263 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v290 = &v263 - v13;
  v282 = v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v287 = &v263 - v17;
  v331 = *(v18 + 72);
  v295 = sub_1E68B2220();
  v19 = *(a2 + 2);
  v340 = a2[3];
  v21 = a2[5];
  v335 = a2[4];
  v20 = v335;
  v22 = a2[7];
  v334 = a2[6];
  v337 = v22;
  v23 = a2[11];
  v328 = a2[10];
  v24 = v328;
  v342 = v23;
  v336 = a2[12];
  v341 = a2[15];
  v333 = a2[16];
  v25 = a2[18];
  v318 = a2[17];
  v339 = v25;
  v26 = a2[19];
  v304 = a2[20];
  v305 = v26;
  v27 = a2[24];
  v28 = a2[28];
  v308 = a2[29];
  v309 = v28;
  v30 = a2[30];
  v29 = a2[31];
  v306 = v27;
  v307 = v30;
  v31 = a2[37];
  v313 = v29;
  v314 = v31;
  v372 = v19;
  v32 = v19;
  v323 = v19;
  v373 = v340;
  v374 = v22;
  v375 = v23;
  v376 = v336;
  v377 = v25;
  v378 = v26;
  v379 = v304;
  v380 = v27;
  v381 = v28;
  v382 = v308;
  v383 = v30;
  v384 = v29;
  v385 = v31;
  v33 = type metadata accessor for CanvasItemDescriptor(255, &v372);
  v35 = a2[21];
  v34 = a2[22];
  v330 = a2[23];
  v36 = a2[26];
  v325 = a2[27];
  v37 = v325;
  v326 = v34;
  v332 = v36;
  v312 = a2[36];
  v38 = v312;
  v39 = a2[35];
  v338 = a2[34];
  v329 = v39;
  v302 = v33;
  WitnessTable = swift_getWitnessTable();
  v372 = v32;
  v373 = v24;
  v40 = v340;
  v374 = v340;
  v375 = v20;
  v321 = v21;
  v376 = v21;
  v41 = v334;
  v377 = v334;
  v378 = v337;
  v42 = v331;
  v379 = v331;
  v380 = v342;
  v381 = v336;
  v382 = v318;
  v383 = v341;
  v384 = v333;
  v385 = v339;
  v386 = v33;
  v387 = v37;
  v388 = v35;
  v43 = v35;
  v327 = v35;
  v44 = v326;
  v389 = v326;
  v390 = v330;
  v45 = v332;
  v391 = v332;
  v392 = v38;
  v393 = v338;
  v394 = v329;
  v395 = WitnessTable;
  v300 = type metadata accessor for CarouselView(255, &v372);
  v46 = a2[8];
  v47 = a2[14];
  v322 = a2[13];
  v324 = v47;
  v317 = a2[25];
  v48 = a2[33];
  v319 = a2[32];
  v320 = v46;
  v315 = v48;
  v49 = v323;
  v372 = v323;
  v373 = v328;
  v374 = v40;
  v375 = v335;
  v376 = v21;
  v377 = v41;
  v50 = v337;
  v378 = v337;
  v379 = v46;
  v380 = v42;
  v381 = v342;
  v51 = v336;
  v382 = v336;
  v383 = v322;
  v384 = v47;
  v385 = v341;
  v52 = v333;
  v386 = v333;
  v387 = v339;
  v53 = v302;
  v388 = v302;
  v54 = v325;
  v389 = v325;
  v390 = v43;
  v391 = v44;
  v55 = v330;
  v392 = v330;
  v393 = v317;
  v394 = v45;
  v395 = v319;
  v396 = v48;
  v397 = v338;
  v56 = v329;
  v398 = v329;
  v57 = WitnessTable;
  v399 = WitnessTable;
  v299 = type metadata accessor for HorizontalGridView(255, &v372);
  v372 = v49;
  v58 = v328;
  v373 = v328;
  v374 = v340;
  v375 = v335;
  v376 = v321;
  v377 = v334;
  v378 = v50;
  v379 = v320;
  v380 = v331;
  v59 = v342;
  v381 = v342;
  v382 = v51;
  v383 = v322;
  v384 = v324;
  v60 = v341;
  v385 = v341;
  v386 = v52;
  v387 = v339;
  v388 = v53;
  v389 = v54;
  v61 = v326;
  v390 = v327;
  v391 = v326;
  v392 = v55;
  v393 = v317;
  v394 = v332;
  v395 = v319;
  v62 = v315;
  v396 = v315;
  v397 = v338;
  v398 = v56;
  v399 = v57;
  v292 = type metadata accessor for VerticalGridView(255, &v372);
  v294 = sub_1E68B2220();
  v291 = sub_1E68B2220();
  v64 = v322;
  v63 = v323;
  v372 = v323;
  v373 = v58;
  v374 = v340;
  v375 = v335;
  v376 = v321;
  v377 = v334;
  v65 = v337;
  v378 = v337;
  v379 = v320;
  v380 = v331;
  v381 = v59;
  v66 = v336;
  v382 = v336;
  v383 = v322;
  v384 = v324;
  v385 = v60;
  v386 = v333;
  v67 = v339;
  v387 = v339;
  v388 = v302;
  v389 = v325;
  v390 = v327;
  v391 = v61;
  v392 = v330;
  v68 = v317;
  v393 = v317;
  v394 = v332;
  v69 = v319;
  v395 = v319;
  v396 = v62;
  v70 = v338;
  v397 = v338;
  v398 = v329;
  v399 = WitnessTable;
  v289 = type metadata accessor for ListView(255, &v372);
  v372 = v63;
  v373 = v328;
  v374 = v340;
  v375 = v335;
  v376 = v321;
  v377 = v334;
  v378 = v65;
  v379 = v320;
  v380 = v331;
  v381 = v342;
  v382 = v66;
  v383 = v64;
  v384 = v324;
  v385 = v341;
  v386 = v333;
  v387 = v67;
  v388 = v302;
  v389 = v325;
  v390 = v327;
  v391 = v326;
  v392 = v330;
  v393 = v68;
  v71 = v332;
  v394 = v332;
  v395 = v69;
  v396 = v315;
  v397 = v70;
  v398 = v329;
  v399 = WitnessTable;
  type metadata accessor for OrthogonalView(255, &v372);
  sub_1E68B2220();
  v302 = sub_1E68B2220();
  WitnessTable = sub_1E68B2220();
  v72 = sub_1E68B2220();
  v280 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v73);
  v279 = &v263 - v74;
  v370 = v71;
  v371 = MEMORY[0x1E6981E60];
  v295 = swift_getWitnessTable();
  v75 = swift_getWitnessTable();
  v76 = swift_getWitnessTable();
  v77 = swift_getWitnessTable();
  v368 = v76;
  v369 = v77;
  v78 = swift_getWitnessTable();
  v366 = v75;
  v367 = v78;
  v79 = swift_getWitnessTable();
  v80 = swift_getWitnessTable();
  v81 = swift_getWitnessTable();
  v364 = v80;
  v365 = v81;
  v82 = swift_getWitnessTable();
  v362 = v79;
  v363 = v82;
  v360 = swift_getWitnessTable();
  v361 = v71;
  v83 = swift_getWitnessTable();
  v358 = v295;
  v359 = v83;
  v84 = swift_getWitnessTable();
  v372 = *&v72;
  v373 = v84;
  swift_getOpaqueTypeMetadata2();
  v85 = sub_1E68B2220();
  v275 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v86);
  v272 = &v263 - v87;
  v281 = v72;
  v372 = *&v72;
  v373 = v84;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v273 = v84;
  v357 = v84;
  v88 = swift_getWitnessTable();
  WitnessTable = v85;
  v372 = *&v85;
  v295 = v88;
  v373 = v88;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v274 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v90);
  v271 = &v263 - v91;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0983B8, &unk_1E68C68A0);
  v276 = OpaqueTypeMetadata2;
  v92 = sub_1E68B1E40();
  v288 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v93);
  v278 = &v263 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v95, v96);
  v277 = &v263 - v97;
  v372 = v323;
  v373 = v340;
  v374 = v337;
  v375 = v342;
  v376 = v336;
  v377 = v341;
  v378 = v318;
  v379 = v322;
  v380 = v339;
  v381 = v305;
  v382 = v304;
  v383 = v306;
  v384 = v309;
  v385 = v308;
  v386 = v307;
  v387 = v313;
  v388 = v338;
  v389 = v312;
  v390 = v319;
  v391 = v314;
  v98 = type metadata accessor for CanvasSectionDescriptor(255, &v372);
  v99 = sub_1E68B3750();
  v100 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99, v101);
  v103 = &v263 - v102;
  v104 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v105, v106);
  v302 = &v263 - v107;
  v294 = v92;
  v292 = sub_1E68B3750();
  v286 = *(v292 - 8);
  MEMORY[0x1EEE9AC00](v292, v108);
  v291 = &v263 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v110, v111);
  v289 = &v263 - v112;
  v113 = v311;
  v114 = v316;
  sub_1E689E500(v311, v103);
  if ((*(v104 + 48))(v103, 1, v98) == 1)
  {
    (*(v100 + 8))(v103, v99);
    v115 = v291;
    (*(v288 + 56))(v291, 1, 1, v294);
    v372 = *&WitnessTable;
    v116 = v295;
    v373 = v295;
    v117 = swift_getOpaqueTypeConformance2();
    v118 = sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8, &unk_1E68C68A0, MEMORY[0x1E6980A18]);
    v354 = v117;
    v355 = v118;
    swift_getWitnessTable();
  }

  else
  {
    v269 = v104;
    v270 = v98;
    (*(v104 + 32))(v302, v103, v98);
    v268 = *(v113 + 84);
    v119 = v310;
    v120 = v310 + 16;
    v284 = *(v310 + 16);
    v284(v287, v114, v113);
    v285 = v120;
    v121 = (*(v119 + 80) + 304) & ~*(v119 + 80);
    v283 = *(v119 + 80);
    v267 = v121 + v282;
    v122 = v121;
    v300 = v121;
    v123 = (v121 + v282 + 7) & 0xFFFFFFFFFFFFFFF8;
    v124 = swift_allocObject();
    v125 = v340;
    v124[2] = v323;
    *(v124 + 3) = v125;
    v127 = v320;
    v126 = v321;
    *(v124 + 4) = v335;
    *(v124 + 5) = v126;
    v128 = v126;
    v129 = v337;
    *(v124 + 6) = v334;
    *(v124 + 7) = v129;
    v130 = v331;
    *(v124 + 8) = v127;
    *(v124 + 9) = v130;
    v131 = v342;
    *(v124 + 10) = v328;
    *(v124 + 11) = v131;
    v132 = v322;
    *(v124 + 12) = v336;
    *(v124 + 13) = v132;
    v133 = v341;
    *(v124 + 14) = v324;
    *(v124 + 15) = v133;
    v134 = v318;
    *(v124 + 16) = v333;
    *(v124 + 17) = v134;
    v135 = v304;
    v136 = v305;
    *(v124 + 18) = v339;
    *(v124 + 19) = v136;
    *(v124 + 20) = v135;
    v137 = v326;
    *(v124 + 21) = v327;
    *(v124 + 22) = v137;
    v138 = v306;
    *(v124 + 23) = v330;
    *(v124 + 24) = v138;
    v139 = v332;
    *(v124 + 25) = v317;
    *(v124 + 26) = v139;
    v140 = v308;
    v141 = v309;
    *(v124 + 27) = v325;
    *(v124 + 28) = v141;
    *(v124 + 29) = v140;
    v142 = v313;
    *(v124 + 30) = v307;
    *(v124 + 31) = v142;
    v143 = v315;
    *(v124 + 32) = v319;
    *(v124 + 33) = v143;
    v144 = v329;
    *(v124 + 34) = v338;
    *(v124 + 35) = v144;
    v145 = v314;
    *(v124 + 36) = v312;
    *(v124 + 37) = v145;
    v299 = *(v119 + 32);
    v310 = v119 + 32;
    v146 = v124 + v122;
    v147 = v311;
    v299(v146, v287, v311);
    v282 = v123;
    *(v124 + v123) = v301;
    v148 = v147;
    v149 = v284;
    v284(v290, v316, v148);
    v150 = swift_allocObject();
    v151 = v340;
    v150[2] = v323;
    *(v150 + 3) = v151;
    *(v150 + 4) = v335;
    *(v150 + 5) = v128;
    v152 = v337;
    *(v150 + 6) = v334;
    *(v150 + 7) = v152;
    *(v150 + 8) = v127;
    *(v150 + 9) = v130;
    v153 = v342;
    *(v150 + 10) = v328;
    *(v150 + 11) = v153;
    v154 = v322;
    *(v150 + 12) = v336;
    *(v150 + 13) = v154;
    v155 = v341;
    *(v150 + 14) = v324;
    *(v150 + 15) = v155;
    v156 = v318;
    *(v150 + 16) = v333;
    *(v150 + 17) = v156;
    v157 = v304;
    v158 = v305;
    *(v150 + 18) = v339;
    *(v150 + 19) = v158;
    v160 = v326;
    v159 = v327;
    *(v150 + 20) = v157;
    *(v150 + 21) = v159;
    v161 = v330;
    *(v150 + 22) = v160;
    *(v150 + 23) = v161;
    v162 = v306;
    v163 = v317;
    *(v150 + 24) = v306;
    *(v150 + 25) = v163;
    v164 = v325;
    *(v150 + 26) = v332;
    *(v150 + 27) = v164;
    v165 = v308;
    *(v150 + 28) = v309;
    *(v150 + 29) = v165;
    v166 = v313;
    *(v150 + 30) = v307;
    *(v150 + 31) = v166;
    *(v150 + 32) = v319;
    *(v150 + 33) = v143;
    v167 = v329;
    *(v150 + 34) = v338;
    *(v150 + 35) = v167;
    v168 = v311;
    v169 = v314;
    *(v150 + 36) = v312;
    *(v150 + 37) = v169;
    v299(v150 + v300, v290, v168);
    *(v150 + v282) = v301;
    v149(v293, v316, v168);
    v170 = swift_allocObject();
    v171 = v340;
    v170[2] = v323;
    *(v170 + 3) = v171;
    v172 = v321;
    v173 = v322;
    *(v170 + 4) = v335;
    *(v170 + 5) = v172;
    v174 = v337;
    *(v170 + 6) = v334;
    *(v170 + 7) = v174;
    v175 = v331;
    *(v170 + 8) = v320;
    *(v170 + 9) = v175;
    v176 = v342;
    *(v170 + 10) = v328;
    *(v170 + 11) = v176;
    *(v170 + 12) = v336;
    *(v170 + 13) = v173;
    v177 = v341;
    *(v170 + 14) = v324;
    *(v170 + 15) = v177;
    v178 = v318;
    *(v170 + 16) = v333;
    *(v170 + 17) = v178;
    *(v170 + 18) = v339;
    *(v170 + 19) = v158;
    v179 = v326;
    v180 = v327;
    *(v170 + 20) = v157;
    *(v170 + 21) = v180;
    v181 = v330;
    *(v170 + 22) = v179;
    *(v170 + 23) = v181;
    v182 = v317;
    *(v170 + 24) = v162;
    *(v170 + 25) = v182;
    v183 = v325;
    *(v170 + 26) = v332;
    *(v170 + 27) = v183;
    v184 = v309;
    *(v170 + 28) = v309;
    *(v170 + 29) = v165;
    v185 = v307;
    v186 = v313;
    *(v170 + 30) = v307;
    *(v170 + 31) = v186;
    v187 = v315;
    *(v170 + 32) = v319;
    *(v170 + 33) = v187;
    v188 = v329;
    *(v170 + 34) = v338;
    *(v170 + 35) = v188;
    v189 = v311;
    v190 = v314;
    *(v170 + 36) = v312;
    *(v170 + 37) = v190;
    v299(v170 + v300, v293, v189);
    v191 = v316[3];
    v290 = v316[4];
    v192 = v316[6];
    v266 = v316[5];
    v267 = v191;
    v287 = v192;
    v193 = v316[8];
    v265 = v316[7];
    v293 = v193;
    (v284)(v296);
    v194 = v282;
    v195 = swift_allocObject();
    v196 = v340;
    v195[2] = v323;
    *(v195 + 3) = v196;
    v197 = v321;
    *(v195 + 4) = v335;
    *(v195 + 5) = v197;
    v198 = v337;
    *(v195 + 6) = v334;
    *(v195 + 7) = v198;
    v199 = v331;
    *(v195 + 8) = v320;
    *(v195 + 9) = v199;
    v200 = v342;
    *(v195 + 10) = v328;
    *(v195 + 11) = v200;
    *(v195 + 12) = v336;
    *(v195 + 13) = v173;
    v201 = v341;
    *(v195 + 14) = v324;
    *(v195 + 15) = v201;
    v202 = v318;
    *(v195 + 16) = v333;
    *(v195 + 17) = v202;
    v203 = v339;
    v205 = v304;
    v204 = v305;
    *(v195 + 18) = v339;
    *(v195 + 19) = v204;
    v206 = v326;
    v207 = v327;
    *(v195 + 20) = v205;
    *(v195 + 21) = v207;
    *(v195 + 22) = v206;
    *(v195 + 23) = v181;
    v208 = v317;
    *(v195 + 24) = v306;
    *(v195 + 25) = v208;
    v209 = v325;
    *(v195 + 26) = v332;
    *(v195 + 27) = v209;
    v210 = v308;
    *(v195 + 28) = v184;
    *(v195 + 29) = v210;
    v211 = v313;
    *(v195 + 30) = v185;
    *(v195 + 31) = v211;
    v212 = v315;
    *(v195 + 32) = v319;
    *(v195 + 33) = v212;
    v213 = v329;
    *(v195 + 34) = v338;
    *(v195 + 35) = v213;
    v214 = v311;
    v215 = v314;
    *(v195 + 36) = v312;
    *(v195 + 37) = v215;
    v299(v195 + v300, v296, v214);
    *(v195 + v194) = v301;
    v216 = v316[10];
    v264 = v316[9];
    v296 = v216;
    (v284)(v297);
    v217 = swift_allocObject();
    v218 = v304;
    *(v217 + 19) = v305;
    *(v217 + 20) = v218;
    *(v217 + 24) = v306;
    v219 = v308;
    *(v217 + 28) = v309;
    *(v217 + 29) = v219;
    v220 = v313;
    *(v217 + 30) = v307;
    *(v217 + 31) = v220;
    *(v217 + 32) = v319;
    *(v217 + 34) = v338;
    v221 = v314;
    *(v217 + 36) = v312;
    *(v217 + 37) = v221;
    *(v217 + 18) = v203;
    v222 = v340;
    v217[2] = v323;
    *(v217 + 3) = v222;
    v223 = v321;
    *(v217 + 4) = v335;
    *(v217 + 5) = v223;
    v224 = v337;
    *(v217 + 6) = v334;
    *(v217 + 7) = v224;
    v225 = v331;
    *(v217 + 8) = v320;
    *(v217 + 9) = v225;
    v226 = v342;
    *(v217 + 10) = v328;
    *(v217 + 11) = v226;
    v227 = v322;
    *(v217 + 12) = v336;
    *(v217 + 13) = v227;
    v228 = v341;
    *(v217 + 14) = v324;
    *(v217 + 15) = v228;
    v229 = v318;
    *(v217 + 16) = v333;
    *(v217 + 17) = v229;
    v230 = v326;
    *(v217 + 21) = v327;
    *(v217 + 22) = v230;
    *(v217 + 23) = v330;
    v231 = v332;
    *(v217 + 25) = v317;
    *(v217 + 26) = v231;
    *(v217 + 27) = v325;
    v232 = v315;
    *(v217 + 33) = v315;
    *(v217 + 35) = v213;
    v233 = v214;
    v299(v217 + v300, v297, v214);
    *(v217 + v282) = v301;
    v234 = v316[14];
    v319 = v316[13];
    v314 = v316 + *(v233 + 89);

    v235 = v296;

    v236 = v234;
    v313 = v234;

    v237 = v270;
    v338 = swift_getWitnessTable();
    v262 = v232;
    v261 = v236;
    v238 = v279;
    v239 = v302;
    sub_1E67EB0B4(v316 + v268, sub_1E68AB290, v124, sub_1E68AB2A8, v150, sub_1E68AB524, v170, v267, v279, v290, v266, v287, v265, v293, sub_1E68AB528, v195, v264, v235, sub_1E68AB794, v217, v319, v261, v314, v237, v333, v335, v321, v334, v328, v320, v331, v324, v338, v329, v327, v326, v330, v325, v317, v332, v262);
    v240 = WitnessTable;

    v241 = v270;
    v242 = v272;
    v243 = v281;
    sub_1E6814ED8(v239, 0, v281, v272, v341, v318, v322, v339, v270, v273, v338);
    (*(v280 + 8))(v238, v243);
    v244 = v271;
    v116 = v295;
    sub_1E68B2700();
    (*(v275 + 8))(v242, v240);
    swift_getKeyPath();
    v372 = sub_1E689DC74();
    v373 = v245;
    v352 = v240;
    v353 = v116;
    v246 = swift_getOpaqueTypeConformance2();
    v247 = v278;
    v248 = v276;
    sub_1E68B27B0();

    (*(v274 + 8))(v244, v248);
    (*(v269 + 8))(v302, v241);
    v249 = sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8, &unk_1E68C68A0, MEMORY[0x1E6980A18]);
    v343 = v246;
    v344 = v249;
    v250 = v294;
    swift_getWitnessTable();
    v251 = v277;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v252 = v288;
    v253 = *(v288 + 8);
    v253(v247, v250);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v253(v251, v250);
    v115 = v291;
    (*(v252 + 32))(v291, v247, v250);
    (*(v252 + 56))(v115, 0, 1, v250);
  }

  v254 = v289;
  sub_1E67FDFA4(v115, v289);
  v255 = v286;
  v256 = *(v286 + 8);
  v257 = v292;
  v256(v115, v292);
  (*(v255 + 16))(v115, v254, v257);
  v373 = v115;
  v352 = MEMORY[0x1E6981E70];
  v353 = v257;
  v350 = MEMORY[0x1E6981E60];
  v348 = WitnessTable;
  v349 = v116;
  v258 = swift_getOpaqueTypeConformance2();
  v259 = sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8, &unk_1E68C68A0, MEMORY[0x1E6980A18]);
  v346 = v258;
  v347 = v259;
  v345 = swift_getWitnessTable();
  v351 = swift_getWitnessTable();
  sub_1E6848F14(&v372, 2uLL, &v352);
  v256(v254, v257);
  return (v256)(v115, v257);
}

uint64_t CanvasContainerView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v164 = a2;
  v200 = a1[9];
  v163 = sub_1E68B2220();
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v193 = a1[5];
  v194 = v5;
  v6 = a1[6];
  v191 = a1[7];
  v192 = v6;
  v7 = a1[10];
  v205 = a1[11];
  v196 = a1[12];
  v197 = v7;
  v8 = a1[15];
  v181 = a1[16];
  v9 = a1[18];
  v169 = a1[17];
  v198 = v8;
  v199 = v9;
  v10 = a1[19];
  v170 = a1[20];
  v171 = v10;
  v12 = a1[28];
  v11 = a1[29];
  v172 = a1[24];
  v173 = v11;
  v13 = a1[30];
  v167 = a1[31];
  v168 = v13;
  v14 = a1[37];
  v174 = v12;
  v175 = v14;
  v236 = v4;
  v180 = v4;
  v237 = v3;
  v201 = v3;
  v238 = v191;
  v239 = v205;
  v240 = v196;
  v241 = v9;
  v242 = v10;
  v243 = v170;
  v244 = v172;
  v245 = v12;
  v246 = v11;
  v247 = v13;
  v248 = v167;
  v249 = v14;
  v15 = type metadata accessor for CanvasItemDescriptor(255, &v236);
  v16 = a1[21];
  v195 = a1[22];
  v202 = a1[23];
  v203 = v16;
  v17 = a1[27];
  v204 = a1[26];
  v18 = a1[35];
  v178 = a1[36];
  v179 = v15;
  v190 = a1[34];
  v188 = v17;
  v189 = v18;
  WitnessTable = swift_getWitnessTable();
  v236 = v4;
  v237 = v7;
  v238 = v3;
  v239 = v194;
  v240 = v193;
  v241 = v192;
  v242 = v191;
  v243 = v200;
  v244 = v205;
  v245 = v196;
  v246 = v169;
  v247 = v198;
  v248 = v181;
  v249 = v199;
  v250 = v15;
  v251 = v17;
  v252 = v203;
  v253 = v195;
  v254 = v202;
  v255 = v204;
  v256 = v178;
  v257 = v190;
  v258 = v18;
  v259 = WitnessTable;
  v166 = type metadata accessor for CarouselView(255, &v236);
  v161 = a1;
  v19 = a1[13];
  v20 = a1[14];
  v182 = a1[8];
  v183 = v20;
  v21 = a1[25];
  v184 = v19;
  v185 = v21;
  v22 = a1[32];
  v186 = a1[33];
  v187 = v22;
  v236 = v4;
  v237 = v7;
  v238 = v3;
  v239 = v194;
  v240 = v193;
  v241 = v192;
  v242 = v191;
  v243 = v182;
  v244 = v200;
  v245 = v205;
  v246 = v196;
  v247 = v19;
  v248 = v20;
  v249 = v198;
  v250 = v181;
  v251 = v199;
  v252 = v15;
  v253 = v17;
  v254 = v203;
  v255 = v195;
  v256 = v202;
  v257 = v21;
  v258 = v204;
  v259 = v22;
  v260 = v186;
  v261 = v190;
  v262 = v18;
  v263 = WitnessTable;
  type metadata accessor for HorizontalGridView(255, &v236);
  v236 = v4;
  v237 = v7;
  v238 = v3;
  v239 = v194;
  v240 = v193;
  v241 = v192;
  v242 = v191;
  v243 = v182;
  v244 = v200;
  v245 = v205;
  v246 = v196;
  v247 = v184;
  v248 = v183;
  v249 = v198;
  v250 = v181;
  v251 = v199;
  v252 = v15;
  v253 = v17;
  v254 = v203;
  v255 = v195;
  v256 = v202;
  v257 = v185;
  v258 = v204;
  v259 = v187;
  v260 = v186;
  v261 = v190;
  v262 = v18;
  v263 = WitnessTable;
  v160 = type metadata accessor for VerticalGridView(255, &v236);
  v162 = sub_1E68B2220();
  v159 = sub_1E68B2220();
  v236 = v4;
  v237 = v7;
  v238 = v3;
  v239 = v194;
  v240 = v193;
  v241 = v192;
  v242 = v191;
  v243 = v182;
  v244 = v200;
  v245 = v205;
  v246 = v196;
  v247 = v184;
  v248 = v183;
  v249 = v198;
  v250 = v181;
  v251 = v199;
  v252 = v15;
  v253 = v17;
  v254 = v203;
  v255 = v195;
  v256 = v202;
  v257 = v185;
  v258 = v204;
  v259 = v187;
  v260 = v186;
  v261 = v190;
  v262 = v18;
  v263 = WitnessTable;
  v158 = type metadata accessor for ListView(255, &v236);
  v236 = v4;
  v237 = v7;
  v238 = v3;
  v239 = v194;
  v240 = v193;
  v241 = v192;
  v242 = v191;
  v243 = v182;
  v244 = v200;
  v245 = v205;
  v246 = v196;
  v247 = v184;
  v248 = v183;
  v249 = v198;
  v250 = v181;
  v251 = v199;
  v252 = v15;
  v253 = v17;
  v254 = v203;
  v255 = v195;
  v256 = v202;
  v257 = v185;
  v258 = v204;
  v259 = v187;
  v260 = v186;
  v261 = v190;
  v262 = v18;
  v263 = WitnessTable;
  type metadata accessor for OrthogonalView(255, &v236);
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  v23 = sub_1E68B2220();
  v234 = v204;
  v235 = MEMORY[0x1E6981E60];
  v24 = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  v232 = swift_getWitnessTable();
  v233 = swift_getWitnessTable();
  v230 = v25;
  v231 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v228 = swift_getWitnessTable();
  v229 = swift_getWitnessTable();
  v226 = v26;
  v227 = swift_getWitnessTable();
  v224 = swift_getWitnessTable();
  v225 = v204;
  v222 = v24;
  v223 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v236 = v23;
  v237 = v27;
  swift_getOpaqueTypeMetadata2();
  v28 = sub_1E68B2220();
  v236 = v23;
  v237 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v221 = v27;
  v165 = swift_getWitnessTable();
  v236 = v28;
  v237 = v165;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0983B8, &unk_1E68C68A0);
  v29 = sub_1E68B1E40();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  v179 = sub_1E68B2F00();
  v236 = v4;
  v237 = v201;
  v238 = v191;
  v239 = v205;
  v240 = v196;
  v241 = v198;
  v242 = v169;
  v243 = v184;
  v244 = v199;
  v245 = v171;
  v246 = v170;
  v247 = v172;
  v248 = v174;
  v249 = v173;
  v250 = v168;
  v251 = v167;
  v252 = v190;
  v253 = v178;
  v254 = v187;
  v255 = v175;
  type metadata accessor for CanvasSectionDescriptor(255, &v236);
  swift_getTupleTypeMetadata2();
  WitnessTable = sub_1E68B33B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995E8, &qword_1E68C1938);
  v30 = sub_1E68B2220();
  v166 = swift_getWitnessTable();
  v236 = WitnessTable;
  v237 = MEMORY[0x1E69E6158];
  v238 = v30;
  v239 = v166;
  v240 = MEMORY[0x1E69E6168];
  sub_1E68B2D40();
  v31 = sub_1E68AA77C(&qword_1EE2EA7B8, &qword_1ED0995E8, &qword_1E68C1938);
  v236 = v28;
  v237 = v165;
  v218 = swift_getOpaqueTypeConformance2();
  v219 = sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8, &unk_1E68C68A0, MEMORY[0x1E6980A18]);
  v32 = swift_getWitnessTable();
  v216 = v31;
  v217 = v32;
  v33 = v169;
  v215 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B1B70();
  swift_getTupleTypeMetadata2();
  v34 = sub_1E68B2F00();
  v155[1] = swift_getWitnessTable();
  v155[2] = v34;
  v35 = sub_1E68B2CE0();
  v156 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v36);
  v160 = v155 - v37;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED09A020, &qword_1E68C68B0);
  v179 = v35;
  v38 = sub_1E68B1E40();
  v159 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v39);
  v158 = v155 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v157 = v155 - v43;
  v44 = sub_1E68B22C0();
  MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v236 = WitnessTable;
  v237 = MEMORY[0x1E69E6158];
  v238 = v29;
  v239 = v166;
  v240 = MEMORY[0x1E69E6168];
  sub_1E68B2D40();
  v214 = v32;
  swift_getWitnessTable();
  v46 = sub_1E68B1B70();
  v155[0] = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v46);
  v48 = v155 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = v155 - v51;
  v162 = v53;
  WitnessTable = v38;
  v54 = sub_1E68B2220();
  v165 = *(v54 - 8);
  v166 = v54;
  MEMORY[0x1EEE9AC00](v54, v55);
  v163 = v155 - v56;
  v57 = v33;
  v236 = v33;
  v58 = v181;
  v237 = v181;
  v238 = v178;
  v59 = v189;
  v239 = v189;
  type metadata accessor for CanvasLayout(0, &v236);
  if ((*(v59 + 40))(v58, v59))
  {
    v160 = sub_1E68B21D0();
    v161 = v155;
    MEMORY[0x1EEE9AC00](v160, v60);
    v61 = &v155[-40];
    v62 = v201;
    v61[2] = v180;
    v61[3] = v62;
    v63 = v193;
    v61[4] = v194;
    v61[5] = v63;
    v64 = v191;
    v61[6] = v192;
    v61[7] = v64;
    v65 = v200;
    v155[-32] = v182;
    v155[-31] = v65;
    v66 = v205;
    v155[-30] = v197;
    v155[-29] = v66;
    v67 = v183;
    v68 = v184;
    v155[-28] = v196;
    v155[-27] = v68;
    v155[-26] = v67;
    v69 = v199;
    v155[-25] = v198;
    v155[-24] = v58;
    v155[-23] = v57;
    v155[-22] = v69;
    v70 = v170;
    v155[-21] = v171;
    v155[-20] = v70;
    v71 = v195;
    v155[-19] = v203;
    v155[-18] = v71;
    v72 = v172;
    v155[-17] = v202;
    v155[-16] = v72;
    v73 = v204;
    v155[-15] = v185;
    v155[-14] = v73;
    v74 = v173;
    v75 = v174;
    v155[-13] = v188;
    v155[-12] = v75;
    v155[-11] = v74;
    v76 = v167;
    v155[-10] = v168;
    v155[-9] = v76;
    v77 = v186;
    v155[-8] = v187;
    v155[-7] = v77;
    v78 = v189;
    v155[-6] = v190;
    v155[-5] = v78;
    v80 = v175;
    v79 = v176;
    v155[-4] = v178;
    v155[-3] = v80;
    v155[-2] = v79;
    sub_1E689D740();
    sub_1E68B1B60();
    v81 = v162;
    v82 = swift_getWitnessTable();
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v83 = *(v155[0] + 8);
    v83(v48, v81);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v84 = swift_getWitnessTable();
    v85 = sub_1E673F530(&qword_1EE2EA640, &qword_1ED09A020, &qword_1E68C68B0, MEMORY[0x1E697F940]);
    v206 = v84;
    v207 = v85;
    v86 = WitnessTable;
    v87 = swift_getWitnessTable();
    v88 = v163;
    sub_1E6744CC0(v48, v81, v86, v82, v87);
    v83(v48, v81);
    v83(v52, v81);
  }

  else
  {
    v89 = sub_1E68B2E60();
    MEMORY[0x1EEE9AC00](v89, v90);
    v91 = &v155[-40];
    v92 = v200;
    v155[-32] = v182;
    v155[-31] = v92;
    v93 = v205;
    v155[-30] = v197;
    v155[-29] = v93;
    v94 = v183;
    v95 = v184;
    v155[-28] = v196;
    v155[-27] = v95;
    v155[-26] = v94;
    v96 = v199;
    v155[-25] = v198;
    v155[-24] = v58;
    v155[-23] = v57;
    v155[-22] = v96;
    v97 = v170;
    v155[-21] = v171;
    v155[-20] = v97;
    v98 = v195;
    v155[-19] = v203;
    v155[-18] = v98;
    v99 = v172;
    v155[-17] = v202;
    v155[-16] = v99;
    v100 = v204;
    v155[-15] = v185;
    v155[-14] = v100;
    v101 = v173;
    v102 = v174;
    v155[-13] = v188;
    v155[-12] = v102;
    v104 = v167;
    v103 = v168;
    v155[-11] = v101;
    v155[-10] = v103;
    v106 = v186;
    v105 = v187;
    v155[-9] = v104;
    v155[-8] = v105;
    v107 = v189;
    v108 = v190;
    v155[-7] = v106;
    v155[-6] = v108;
    v155[-5] = v107;
    v110 = v175;
    v109 = v176;
    v155[-4] = v178;
    v155[-3] = v110;
    v155[-2] = v109;
    v111 = v180;
    v112 = v201;
    v91[2] = v180;
    v91[3] = v112;
    v114 = v193;
    v113 = v194;
    v91[4] = v194;
    v91[5] = v114;
    v116 = v191;
    v115 = v192;
    v91[6] = v192;
    v91[7] = v116;
    v117 = sub_1E68B2CD0();
    v161 = v155;
    MEMORY[0x1EEE9AC00](v117, v118);
    v119 = &v155[-40];
    v119[2] = v111;
    v119[3] = v112;
    v119[4] = v113;
    v119[5] = v114;
    v119[6] = v115;
    v119[7] = v116;
    v120 = v200;
    v155[-32] = v182;
    v155[-31] = v120;
    v121 = v205;
    v155[-30] = v197;
    v155[-29] = v121;
    v122 = v183;
    v123 = v184;
    v155[-28] = v196;
    v155[-27] = v123;
    v155[-26] = v122;
    v124 = v181;
    v155[-25] = v198;
    v155[-24] = v124;
    v125 = v199;
    v155[-23] = v169;
    v155[-22] = v125;
    v126 = v170;
    v155[-21] = v171;
    v155[-20] = v126;
    v127 = v195;
    v155[-19] = v203;
    v155[-18] = v127;
    v128 = v172;
    v155[-17] = v202;
    v155[-16] = v128;
    v129 = v204;
    v155[-15] = v185;
    v155[-14] = v129;
    v130 = v173;
    v131 = v174;
    v155[-13] = v188;
    v155[-12] = v131;
    v155[-11] = v130;
    v155[-10] = v103;
    v133 = v186;
    v132 = v187;
    v155[-9] = v104;
    v155[-8] = v132;
    v134 = v189;
    v135 = v190;
    v155[-7] = v133;
    v155[-6] = v135;
    v155[-5] = v134;
    v137 = v175;
    v136 = v176;
    v155[-4] = v178;
    v155[-3] = v137;
    v155[-2] = v136;
    sub_1E68B2E80();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A028, &qword_1E68C68B8);
    v138 = v179;
    v139 = swift_getWitnessTable();
    sub_1E673F530(&qword_1ED09A030, &qword_1ED09A028, &qword_1E68C68B8, MEMORY[0x1E697E378]);
    v140 = v158;
    v141 = v160;
    sub_1E68B2740();
    (*(v156 + 8))(v141, v138);
    v142 = sub_1E673F530(&qword_1EE2EA640, &qword_1ED09A020, &qword_1E68C68B0, MEMORY[0x1E697F940]);
    v212 = v139;
    v213 = v142;
    v143 = WitnessTable;
    v144 = swift_getWitnessTable();
    v145 = v157;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v146 = *(v159 + 8);
    v146(v140, v143);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v147 = v162;
    v148 = swift_getWitnessTable();
    v88 = v163;
    sub_1E6744DB8(v140, v147, v143, v148, v144);
    v146(v140, v143);
    v146(v145, v143);
  }

  v149 = swift_getWitnessTable();
  v150 = swift_getWitnessTable();
  v151 = sub_1E673F530(&qword_1EE2EA640, &qword_1ED09A020, &qword_1E68C68B0, MEMORY[0x1E697F940]);
  v210 = v150;
  v211 = v151;
  v152 = swift_getWitnessTable();
  v208 = v149;
  v209 = v152;
  v153 = v166;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (*(v165 + 8))(v88, v153);
}

uint64_t sub_1E68A1974@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v156 = a8;
  v176 = a7;
  v166 = a5;
  v167 = a6;
  v153 = a4;
  v170 = a3;
  v172 = a2;
  v137 = a1;
  v138 = a9;
  v150 = a31;
  v146 = a29;
  v155 = a28;
  v159 = a27;
  v157 = a26;
  v144 = a25;
  v165 = a24;
  v164 = a23;
  v163 = a22;
  v143 = a21;
  v142 = a20;
  v168 = a17;
  v149 = a15;
  v177 = a13;
  v171 = a12;
  v162 = a11;
  v169 = a10;
  v197 = a2;
  v198 = a3;
  v199 = a4;
  v200 = a5;
  v201 = a6;
  v202 = a7;
  v203 = a8;
  v204 = a10;
  v205 = a11;
  v206 = a12;
  v207 = a13;
  v208 = a14;
  v154 = a14;
  v209 = a15;
  v210 = a16;
  v160 = a16;
  v211 = a17;
  v212 = a18;
  v213 = a19;
  v174 = a19;
  v214 = a20;
  v215 = a21;
  v216 = a22;
  v217 = a23;
  v218 = a24;
  v219 = a25;
  v220 = a26;
  v221 = a27;
  v222 = a28;
  v223 = a29;
  v224 = a30;
  v145 = a32;
  v225 = a31;
  v226 = a32;
  v161 = a33;
  v158 = a34;
  v227 = a33;
  v228 = a34;
  v175 = a36;
  v229 = a35;
  v173 = a35;
  v230 = a36;
  v147 = a38;
  v148 = a37;
  v231 = a37;
  v232 = a38;
  v135 = type metadata accessor for CanvasContainerView(0, &v197);
  v133 = *(v135 - 8);
  v134 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v135, v38);
  v132 = v128 - v39;
  v40 = v172;
  v197 = v172;
  v198 = v170;
  v199 = v176;
  v200 = a12;
  v201 = a13;
  v202 = a16;
  v141 = a18;
  v203 = a18;
  v204 = a14;
  v205 = a19;
  v206 = a20;
  v207 = a21;
  v208 = a25;
  v209 = a29;
  v131 = a30;
  v210 = a30;
  v211 = a31;
  v212 = a32;
  v213 = a35;
  v214 = a37;
  v215 = a33;
  v216 = a38;
  v136 = type metadata accessor for CanvasSectionDescriptor(255, &v197);
  swift_getTupleTypeMetadata2();
  v130 = sub_1E68B33B0();
  v129 = sub_1E68B2220();
  v197 = v40;
  v41 = v170;
  v42 = v171;
  v198 = v170;
  v199 = v176;
  v200 = v171;
  v201 = v177;
  v202 = v174;
  v203 = a20;
  v204 = a21;
  v205 = a25;
  v206 = a29;
  v207 = a30;
  v208 = v150;
  v209 = a32;
  v210 = a38;
  v151 = type metadata accessor for CanvasItemDescriptor(255, &v197);
  WitnessTable = swift_getWitnessTable();
  v197 = v172;
  v43 = v162;
  v198 = v162;
  v199 = v41;
  v44 = v153;
  v200 = v153;
  v46 = v166;
  v45 = v167;
  v201 = v166;
  v202 = v167;
  v47 = v176;
  v48 = v177;
  v203 = v176;
  v49 = v169;
  v204 = v169;
  v205 = v42;
  v206 = v177;
  v207 = v141;
  v208 = v160;
  v50 = v168;
  v209 = v168;
  v210 = v174;
  v211 = v151;
  v51 = v155;
  v212 = v155;
  v213 = v163;
  v214 = v164;
  v215 = v165;
  v216 = v159;
  v217 = v148;
  v218 = v173;
  v219 = v175;
  v220 = WitnessTable;
  v140 = type metadata accessor for CarouselView(255, &v197);
  v197 = v172;
  v198 = v43;
  v199 = v170;
  v200 = v44;
  v201 = v46;
  v202 = v45;
  v203 = v47;
  v52 = v156;
  v204 = v156;
  v205 = v49;
  v206 = v171;
  v207 = v48;
  v208 = v154;
  v53 = v149;
  v209 = v149;
  v54 = v159;
  v210 = v160;
  v211 = v50;
  v55 = v174;
  v212 = v174;
  v213 = v151;
  v214 = v51;
  v57 = v163;
  v56 = v164;
  v215 = v163;
  v216 = v164;
  v58 = v165;
  v217 = v165;
  v60 = v157;
  v59 = v158;
  v218 = v157;
  v219 = v159;
  v220 = v161;
  v221 = v158;
  v222 = v173;
  v223 = v175;
  v224 = WitnessTable;
  v139 = type metadata accessor for HorizontalGridView(255, &v197);
  v197 = v172;
  v198 = v162;
  v199 = v170;
  v200 = v153;
  v201 = v166;
  v202 = v167;
  v203 = v176;
  v204 = v52;
  v205 = v169;
  v206 = v171;
  v207 = v177;
  v208 = v154;
  v209 = v53;
  v210 = v160;
  v211 = v168;
  v212 = v55;
  v61 = v151;
  v213 = v151;
  v214 = v155;
  v215 = v57;
  v216 = v56;
  v217 = v58;
  v218 = v60;
  v219 = v54;
  v220 = v161;
  v221 = v59;
  v222 = v173;
  v223 = v175;
  v224 = WitnessTable;
  v128[3] = type metadata accessor for VerticalGridView(255, &v197);
  v128[4] = sub_1E68B2220();
  v128[2] = sub_1E68B2220();
  v63 = v171;
  v62 = v172;
  v197 = v172;
  v198 = v162;
  v64 = v170;
  v199 = v170;
  v65 = v153;
  v66 = v154;
  v200 = v153;
  v201 = v166;
  v202 = v167;
  v203 = v176;
  v204 = v156;
  v205 = v169;
  v206 = v171;
  v207 = v177;
  v208 = v154;
  v67 = v149;
  v209 = v149;
  v69 = v160;
  v68 = v161;
  v210 = v160;
  v211 = v168;
  v212 = v174;
  v213 = v61;
  v70 = v155;
  v214 = v155;
  v215 = v163;
  v216 = v164;
  v217 = v165;
  v218 = v157;
  v219 = v159;
  v220 = v161;
  v221 = v158;
  v222 = v173;
  v223 = v175;
  v224 = WitnessTable;
  v128[1] = type metadata accessor for ListView(255, &v197);
  v197 = v62;
  v198 = v162;
  v199 = v64;
  v200 = v65;
  v201 = v166;
  v202 = v167;
  v203 = v176;
  v204 = v156;
  v205 = v169;
  v206 = v63;
  v207 = v177;
  v208 = v66;
  v209 = v67;
  v210 = v69;
  v211 = v168;
  v212 = v174;
  v213 = v151;
  v214 = v70;
  v215 = v163;
  v216 = v164;
  v217 = v165;
  v218 = v157;
  v71 = v159;
  v219 = v159;
  v220 = v68;
  v221 = v158;
  v222 = v173;
  v223 = v175;
  v224 = WitnessTable;
  type metadata accessor for OrthogonalView(255, &v197);
  sub_1E68B2220();
  v151 = sub_1E68B2220();
  WitnessTable = sub_1E68B2220();
  v72 = sub_1E68B2220();
  v195 = v71;
  v73 = v71;
  v196 = MEMORY[0x1E6981E60];
  v129 = swift_getWitnessTable();
  v74 = swift_getWitnessTable();
  v75 = swift_getWitnessTable();
  v76 = swift_getWitnessTable();
  v193 = v75;
  v194 = v76;
  v77 = swift_getWitnessTable();
  v191 = v74;
  v192 = v77;
  v78 = swift_getWitnessTable();
  v79 = swift_getWitnessTable();
  v80 = swift_getWitnessTable();
  v189 = v79;
  v190 = v80;
  v81 = swift_getWitnessTable();
  v187 = v78;
  v188 = v81;
  v185 = swift_getWitnessTable();
  v186 = v73;
  v82 = swift_getWitnessTable();
  v183 = v129;
  v184 = v82;
  v83 = swift_getWitnessTable();
  v197 = v72;
  v198 = v83;
  swift_getOpaqueTypeMetadata2();
  v84 = sub_1E68B2220();
  v197 = v72;
  v198 = v83;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v182 = v83;
  WitnessTable = v84;
  v151 = swift_getWitnessTable();
  v197 = v84;
  v198 = v151;
  v140 = MEMORY[0x1E699DCA0];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0983B8, &unk_1E68C68A0);
  v85 = sub_1E68B1E40();
  v139 = v85;
  v86 = v130;
  v87 = swift_getWitnessTable();
  v197 = v86;
  v198 = MEMORY[0x1E69E6158];
  v199 = v85;
  v200 = v87;
  v201 = MEMORY[0x1E69E6168];
  v88 = sub_1E68B2D40();
  v130 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v89);
  v91 = v128 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = MEMORY[0x1EEE9AC00](v92, v93);
  v96 = v128 - v95;
  v97 = v132;
  v98 = v133;
  v99 = v135;
  (*(v133 + 16))(v132, v94);
  v100 = (*(v98 + 80) + 304) & ~*(v98 + 80);
  v101 = swift_allocObject();
  v102 = v170;
  *(v101 + 2) = v172;
  *(v101 + 3) = v102;
  v103 = v166;
  v104 = v167;
  *(v101 + 4) = v153;
  *(v101 + 5) = v103;
  v105 = v176;
  *(v101 + 6) = v104;
  *(v101 + 7) = v105;
  v106 = v169;
  *(v101 + 8) = v156;
  *(v101 + 9) = v106;
  v107 = v171;
  *(v101 + 10) = v162;
  *(v101 + 11) = v107;
  v108 = v154;
  *(v101 + 12) = v177;
  *(v101 + 13) = v108;
  v109 = v160;
  *(v101 + 14) = v149;
  *(v101 + 15) = v109;
  v110 = v141;
  *(v101 + 16) = v168;
  *(v101 + 17) = v110;
  v111 = v142;
  v112 = v143;
  *(v101 + 18) = v174;
  *(v101 + 19) = v111;
  v113 = v163;
  v114 = v164;
  *(v101 + 20) = v112;
  *(v101 + 21) = v113;
  v115 = v165;
  *(v101 + 22) = v114;
  *(v101 + 23) = v115;
  v116 = v157;
  *(v101 + 24) = v144;
  *(v101 + 25) = v116;
  v117 = v155;
  *(v101 + 26) = v159;
  *(v101 + 27) = v117;
  v118 = v131;
  *(v101 + 28) = v146;
  *(v101 + 29) = v118;
  v119 = v145;
  *(v101 + 30) = v150;
  *(v101 + 31) = v119;
  v120 = v158;
  *(v101 + 32) = v161;
  *(v101 + 33) = v120;
  v121 = v175;
  *(v101 + 34) = v173;
  *(v101 + 35) = v121;
  v122 = v147;
  *(v101 + 36) = v148;
  *(v101 + 37) = v122;
  (*(v98 + 32))(&v101[v100], v97, v99);

  v197 = WitnessTable;
  v198 = v151;
  v123 = swift_getOpaqueTypeConformance2();
  v124 = sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8, &unk_1E68C68A0, MEMORY[0x1E6980A18]);
  v179 = v123;
  v180 = v124;
  v125 = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B2D20();
  v178 = v125;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v126 = *(v130 + 8);
  v126(v91, v88);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v126)(v96, v88);
}

uint64_t sub_1E68A273C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, void *a3@<X2>, double a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void (*a12)(void, void), void (*a13)(void, void), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, void *a39, uint64_t a40)
{
  v312 = a8;
  v321 = a7;
  v324 = a6;
  v326 = a5;
  v304 = a3;
  v274 = a2;
  v275 = a9;
  v289 = a1;
  v294 = a31;
  v306 = a30;
  v314 = a29;
  v313 = a28;
  v297 = a27;
  v322 = a26;
  v323 = a25;
  v309 = a24;
  v299 = a23;
  v292 = a22;
  v328 = a21;
  v300 = a20;
  v307 = a19;
  v317 = a18;
  v310 = a17;
  v316 = a16;
  v320 = a15;
  v315 = a14;
  v319 = a13;
  v311 = a11;
  v327 = a10;
  v349 = a4;
  v350 = a5;
  v351 = a6;
  v352 = a7;
  v353 = a8;
  v354 = a10;
  v355 = a11;
  v356 = a12;
  v357 = a13;
  v358 = a14;
  v359 = a15;
  v360 = a16;
  v361 = a17;
  v362 = a18;
  v363 = a19;
  v364 = a20;
  v365 = a21;
  v366 = a22;
  v367 = a23;
  v368 = a24;
  v369 = a25;
  v370 = a26;
  v371 = a27;
  v372 = a28;
  v373 = a29;
  v374 = a30;
  v298 = a32;
  v375 = a31;
  v376 = a32;
  v377 = a33;
  v293 = a33;
  v378 = a34;
  v291 = a34;
  v305 = a35;
  v302 = a36;
  v379 = a35;
  v380 = a36;
  v303 = a37;
  v318 = a38;
  v381 = a37;
  v382 = a38;
  v301 = a39;
  v383 = a39;
  v384 = a40;
  v290 = a40;
  v41 = type metadata accessor for CanvasContainerView(0, &v349);
  v295 = *(v41 - 8);
  v296 = v41;
  v284 = *(v295 + 64);
  MEMORY[0x1EEE9AC00](v41, v42);
  v282 = &v254 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v281 = (&v254 - v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  v279 = &v254 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v278 = &v254 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v276 = &v254 - v55;
  v308 = a12;
  v283 = sub_1E68B2220();
  v325 = a4;
  v349 = a4;
  v56 = v326;
  v350 = v326;
  v57 = v327;
  v351 = v327;
  v58 = v315;
  v352 = v315;
  v59 = v320;
  v353 = v320;
  v354 = v328;
  v355 = v292;
  v356 = v299;
  v357 = v297;
  v358 = v294;
  v359 = v298;
  v360 = a33;
  v361 = a34;
  v362 = a40;
  v60 = type metadata accessor for CanvasItemDescriptor(255, &v349);
  v287 = v60;
  WitnessTable = swift_getWitnessTable();
  v349 = a4;
  v350 = v319;
  v351 = v56;
  v61 = v324;
  v352 = v324;
  v62 = v321;
  v353 = v321;
  v63 = v312;
  v354 = v312;
  v355 = v57;
  v356 = a12;
  v357 = v58;
  v64 = v59;
  v358 = v59;
  v359 = v300;
  v65 = v317;
  v360 = v317;
  v361 = v307;
  v66 = v328;
  v362 = v328;
  v363 = v60;
  v364 = v306;
  v67 = v309;
  v365 = v309;
  v366 = v323;
  v367 = v322;
  v368 = v314;
  v369 = v301;
  v370 = v303;
  v371 = v318;
  v372 = WitnessTable;
  v286 = type metadata accessor for CarouselView(255, &v349);
  v349 = v325;
  v350 = v319;
  v351 = v326;
  v352 = v61;
  v353 = v62;
  v354 = v63;
  v355 = v57;
  v356 = v311;
  v68 = v307;
  v357 = v308;
  v358 = v58;
  v359 = v64;
  v69 = v316;
  v360 = v316;
  v361 = v310;
  v362 = v65;
  v363 = v307;
  v364 = v66;
  v365 = v287;
  v71 = v305;
  v70 = v306;
  v366 = v306;
  v367 = v67;
  v72 = v323;
  v368 = v323;
  v73 = v322;
  v369 = v322;
  v75 = v313;
  v74 = v314;
  v370 = v313;
  v371 = v314;
  v372 = v305;
  v76 = v303;
  v373 = v302;
  v374 = v303;
  v375 = v318;
  v376 = WitnessTable;
  v285 = type metadata accessor for HorizontalGridView(255, &v349);
  v349 = v325;
  v350 = v319;
  v351 = v326;
  v352 = v324;
  v353 = v321;
  v354 = v312;
  v355 = v327;
  v356 = v311;
  v357 = v308;
  v358 = v315;
  v359 = v320;
  v360 = v69;
  v361 = v310;
  v362 = v317;
  v363 = v68;
  v364 = v328;
  v365 = v287;
  v366 = v70;
  v367 = v309;
  v368 = v72;
  v369 = v73;
  v370 = v75;
  v371 = v74;
  v372 = v71;
  v77 = v302;
  v373 = v302;
  v374 = v76;
  v375 = v318;
  v376 = WitnessTable;
  v271 = type metadata accessor for VerticalGridView(255, &v349);
  v272 = sub_1E68B2220();
  v270 = sub_1E68B2220();
  v78 = v325;
  v349 = v325;
  v79 = v319;
  v350 = v319;
  v351 = v326;
  v352 = v324;
  v353 = v321;
  v81 = v311;
  v80 = v312;
  v354 = v312;
  v355 = v327;
  v356 = v311;
  v83 = v308;
  v82 = v309;
  v357 = v308;
  v358 = v315;
  v359 = v320;
  v360 = v316;
  v84 = v310;
  v361 = v310;
  v362 = v317;
  v363 = v307;
  v364 = v328;
  v365 = v287;
  v366 = v306;
  v367 = v309;
  v368 = v323;
  v369 = v322;
  v370 = v313;
  v371 = v314;
  v372 = v305;
  v373 = v77;
  v374 = v76;
  v85 = v318;
  v375 = v318;
  v376 = WitnessTable;
  v269 = type metadata accessor for ListView(255, &v349);
  v349 = v78;
  v350 = v79;
  v351 = v326;
  v352 = v324;
  v353 = v321;
  v354 = v80;
  v355 = v327;
  v356 = v81;
  v357 = v83;
  v358 = v315;
  v359 = v320;
  v360 = v316;
  v361 = v84;
  v362 = v317;
  v363 = v307;
  v364 = v328;
  v365 = v287;
  v366 = v306;
  v367 = v82;
  v368 = v323;
  v369 = v322;
  v86 = v314;
  v370 = v313;
  v371 = v314;
  v372 = v305;
  v373 = v302;
  v374 = v76;
  v375 = v85;
  v376 = WitnessTable;
  type metadata accessor for OrthogonalView(255, &v349);
  sub_1E68B2220();
  sub_1E68B2220();
  WitnessTable = sub_1E68B2220();
  v277 = sub_1E68B2220();
  v273 = *(v277 - 8);
  MEMORY[0x1EEE9AC00](v277, v87);
  v280 = &v254 - v88;
  v347 = v86;
  v348 = MEMORY[0x1E6981E60];
  v287 = swift_getWitnessTable();
  v89 = swift_getWitnessTable();
  v90 = swift_getWitnessTable();
  v91 = swift_getWitnessTable();
  v345 = v90;
  v346 = v91;
  v92 = swift_getWitnessTable();
  v343 = v89;
  v344 = v92;
  v93 = swift_getWitnessTable();
  v94 = swift_getWitnessTable();
  v95 = swift_getWitnessTable();
  v341 = v94;
  v342 = v95;
  v96 = swift_getWitnessTable();
  v339 = v93;
  v340 = v96;
  v337 = swift_getWitnessTable();
  v97 = v314;
  v338 = v314;
  v98 = swift_getWitnessTable();
  v335 = v287;
  v336 = v98;
  v99 = v277;
  v100 = swift_getWitnessTable();
  v349 = *&v99;
  v350 = v100;
  v101 = v100;
  swift_getOpaqueTypeMetadata2();
  *&v102 = COERCE_DOUBLE(sub_1E68B2220());
  v265 = v102;
  v272 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v103);
  v266 = &v254 - v104;
  v349 = *&v99;
  v262 = v101;
  v350 = v101;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v334 = v101;
  v263 = swift_getWitnessTable();
  v349 = *&v102;
  v350 = v263;
  v268 = MEMORY[0x1E699DCA0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v269 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v105);
  v260 = &v254 - v106;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0983B8, &unk_1E68C68A0);
  v107 = sub_1E68B1E40();
  v108 = *(v107 - 8);
  v270 = v107;
  v271 = v108;
  MEMORY[0x1EEE9AC00](v107, v109);
  v261 = &v254 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = MEMORY[0x1EEE9AC00](v111, v112);
  v267 = &v254 - v114;
  v115 = v295;
  v259 = *(v296 + 336);
  v283 = *(v295 + 16);
  WitnessTable = v295 + 16;
  v116 = v296;
  v283(v276, v304, v113);
  v117 = (*(v115 + 80) + 304) & ~*(v115 + 80);
  v287 = *(v115 + 80);
  v258 = v117 + v284;
  v118 = v117;
  v284 = (v117 + v284 + 7) & 0xFFFFFFFFFFFFFFF8;
  v285 = v117;
  v119 = swift_allocObject();
  v120 = v326;
  v119[2] = v325;
  *(v119 + 3) = v120;
  v121 = v321;
  *(v119 + 4) = v324;
  *(v119 + 5) = v121;
  v122 = v327;
  *(v119 + 6) = v312;
  *(v119 + 7) = v122;
  v123 = v308;
  *(v119 + 8) = v311;
  *(v119 + 9) = v123;
  v124 = v315;
  *(v119 + 10) = v319;
  *(v119 + 11) = v124;
  v125 = v316;
  *(v119 + 12) = v320;
  *(v119 + 13) = v125;
  v126 = v317;
  *(v119 + 14) = v310;
  *(v119 + 15) = v126;
  v128 = v299;
  v127 = v300;
  *(v119 + 16) = v307;
  *(v119 + 17) = v127;
  v129 = v292;
  *(v119 + 18) = v328;
  *(v119 + 19) = v129;
  v130 = v309;
  *(v119 + 20) = v128;
  *(v119 + 21) = v130;
  v131 = v322;
  *(v119 + 22) = v323;
  *(v119 + 23) = v131;
  v132 = v313;
  *(v119 + 24) = v297;
  *(v119 + 25) = v132;
  v133 = v306;
  *(v119 + 26) = v97;
  *(v119 + 27) = v133;
  v134 = v294;
  v135 = v298;
  *(v119 + 28) = v294;
  *(v119 + 29) = v135;
  v136 = v291;
  *(v119 + 30) = v293;
  *(v119 + 31) = v136;
  v138 = v302;
  v137 = v303;
  *(v119 + 32) = v305;
  *(v119 + 33) = v138;
  *(v119 + 34) = v137;
  v139 = v301;
  *(v119 + 35) = v318;
  *(v119 + 36) = v139;
  *(v119 + 37) = v290;
  v140 = *(v115 + 32);
  v295 = v115 + 32;
  v286 = v140;
  v141 = v119 + v118;
  v142 = v116;
  v140(v141, v276, v116);
  v143 = v289;
  v144 = v283;
  *(v119 + v284) = v289;
  v144(v278, v304, v142);
  v145 = swift_allocObject();
  v145[2] = v325;
  *(v145 + 3) = v120;
  v146 = v321;
  *(v145 + 4) = v324;
  *(v145 + 5) = v146;
  v147 = v327;
  *(v145 + 6) = v312;
  *(v145 + 7) = v147;
  v148 = v308;
  *(v145 + 8) = v311;
  *(v145 + 9) = v148;
  *(v145 + 10) = v319;
  *(v145 + 11) = v124;
  v149 = v316;
  *(v145 + 12) = v320;
  *(v145 + 13) = v149;
  v150 = v317;
  *(v145 + 14) = v310;
  *(v145 + 15) = v150;
  v151 = v300;
  *(v145 + 16) = v307;
  *(v145 + 17) = v151;
  *(v145 + 18) = v328;
  *(v145 + 19) = v129;
  v152 = v309;
  *(v145 + 20) = v128;
  *(v145 + 21) = v152;
  v153 = v322;
  *(v145 + 22) = v323;
  *(v145 + 23) = v153;
  v154 = v297;
  v155 = v313;
  v156 = v314;
  *(v145 + 24) = v297;
  *(v145 + 25) = v155;
  v157 = v306;
  *(v145 + 26) = v156;
  *(v145 + 27) = v157;
  *(v145 + 28) = v134;
  v158 = v298;
  v159 = v293;
  *(v145 + 29) = v298;
  *(v145 + 30) = v159;
  v160 = v290;
  v161 = v305;
  *(v145 + 31) = v291;
  *(v145 + 32) = v161;
  v163 = v302;
  v162 = v303;
  *(v145 + 33) = v302;
  *(v145 + 34) = v162;
  v164 = v301;
  *(v145 + 35) = v318;
  *(v145 + 36) = v164;
  *(v145 + 37) = v160;
  v165 = v296;
  v286(v145 + v285, v278, v296);
  *(v145 + v284) = v143;
  v166 = v283;
  (v283)(v279, v304, v165);
  v167 = swift_allocObject();
  v168 = v326;
  v167[2] = v325;
  *(v167 + 3) = v168;
  v169 = v321;
  *(v167 + 4) = v324;
  *(v167 + 5) = v169;
  v170 = v327;
  *(v167 + 6) = v312;
  *(v167 + 7) = v170;
  v171 = v308;
  *(v167 + 8) = v311;
  *(v167 + 9) = v171;
  v172 = v315;
  *(v167 + 10) = v319;
  *(v167 + 11) = v172;
  v173 = v316;
  *(v167 + 12) = v320;
  *(v167 + 13) = v173;
  v174 = v317;
  *(v167 + 14) = v310;
  *(v167 + 15) = v174;
  *(v167 + 16) = v307;
  *(v167 + 17) = v151;
  v175 = v292;
  *(v167 + 18) = v328;
  *(v167 + 19) = v175;
  v176 = v309;
  *(v167 + 20) = v299;
  *(v167 + 21) = v176;
  v177 = v322;
  *(v167 + 22) = v323;
  *(v167 + 23) = v177;
  v179 = v313;
  v178 = v314;
  *(v167 + 24) = v154;
  *(v167 + 25) = v179;
  v180 = v306;
  *(v167 + 26) = v178;
  *(v167 + 27) = v180;
  v181 = v293;
  *(v167 + 28) = v294;
  *(v167 + 29) = v158;
  v182 = v291;
  *(v167 + 30) = v181;
  *(v167 + 31) = v182;
  *(v167 + 32) = v305;
  *(v167 + 33) = v163;
  v183 = v318;
  *(v167 + 34) = v303;
  *(v167 + 35) = v183;
  *(v167 + 36) = v301;
  *(v167 + 37) = v160;
  v286(v167 + v285, v279, v296);
  v184 = v304[3];
  v185 = v304[4];
  v186 = v304[6];
  v257 = v304[5];
  v258 = v184;
  v278 = v186;
  v279 = v185;
  v187 = v304[8];
  v256 = v304[7];
  v276 = v187;
  v166(v281);
  v188 = v284;
  v189 = swift_allocObject();
  v190 = v326;
  v189[2] = v325;
  *(v189 + 3) = v190;
  v191 = v321;
  *(v189 + 4) = v324;
  *(v189 + 5) = v191;
  v192 = v327;
  *(v189 + 6) = v312;
  *(v189 + 7) = v192;
  v194 = v307;
  v193 = v308;
  *(v189 + 8) = v311;
  *(v189 + 9) = v193;
  v195 = v315;
  *(v189 + 10) = v319;
  *(v189 + 11) = v195;
  v196 = v316;
  v197 = v317;
  *(v189 + 12) = v320;
  *(v189 + 13) = v196;
  *(v189 + 14) = v310;
  *(v189 + 15) = v197;
  v198 = v300;
  *(v189 + 16) = v194;
  *(v189 + 17) = v198;
  v199 = v292;
  *(v189 + 18) = v328;
  *(v189 + 19) = v199;
  v200 = v309;
  *(v189 + 20) = v299;
  *(v189 + 21) = v200;
  v201 = v322;
  *(v189 + 22) = v323;
  *(v189 + 23) = v201;
  v203 = v313;
  v202 = v314;
  *(v189 + 24) = v297;
  *(v189 + 25) = v203;
  *(v189 + 26) = v202;
  *(v189 + 27) = v180;
  v204 = v298;
  *(v189 + 28) = v294;
  *(v189 + 29) = v204;
  *(v189 + 30) = v293;
  *(v189 + 31) = v182;
  v205 = v302;
  v206 = v303;
  *(v189 + 32) = v305;
  *(v189 + 33) = v205;
  v207 = v318;
  *(v189 + 34) = v206;
  *(v189 + 35) = v207;
  v208 = v301;
  v209 = v290;
  *(v189 + 36) = v301;
  *(v189 + 37) = v209;
  v286(v189 + v285, v281, v296);
  *(v189 + v188) = v289;
  v210 = v304[10];
  v255 = v304[9];
  v281 = v210;
  (v283)(v282);
  v211 = swift_allocObject();
  v212 = v326;
  v211[2] = v325;
  *(v211 + 3) = v212;
  v213 = v321;
  *(v211 + 4) = v324;
  *(v211 + 5) = v213;
  v214 = v327;
  *(v211 + 6) = v312;
  *(v211 + 7) = v214;
  v215 = v308;
  *(v211 + 8) = v311;
  *(v211 + 9) = v215;
  v217 = v315;
  v216 = v316;
  *(v211 + 10) = v319;
  *(v211 + 11) = v217;
  v218 = v320;
  *(v211 + 12) = v320;
  *(v211 + 13) = v216;
  *(v211 + 14) = v310;
  *(v211 + 15) = v197;
  v219 = v300;
  *(v211 + 16) = v194;
  *(v211 + 17) = v219;
  v220 = v292;
  *(v211 + 18) = v328;
  *(v211 + 19) = v220;
  v221 = v309;
  *(v211 + 20) = v299;
  *(v211 + 21) = v221;
  v222 = v322;
  *(v211 + 22) = v323;
  *(v211 + 23) = v222;
  v223 = v313;
  v224 = v314;
  *(v211 + 24) = v297;
  *(v211 + 25) = v223;
  v225 = v306;
  *(v211 + 26) = v224;
  *(v211 + 27) = v225;
  v226 = v298;
  *(v211 + 28) = v294;
  *(v211 + 29) = v226;
  v227 = v291;
  *(v211 + 30) = v293;
  *(v211 + 31) = v227;
  v228 = v302;
  v229 = v303;
  *(v211 + 32) = v305;
  *(v211 + 33) = v228;
  v230 = v318;
  *(v211 + 34) = v229;
  *(v211 + 35) = v230;
  v231 = v290;
  *(v211 + 36) = v208;
  *(v211 + 37) = v231;
  v232 = v296;
  v286(v211 + v285, v282, v296);
  *(v211 + v284) = v289;
  v233 = v304[14];
  v295 = v304[13];
  WitnessTable = v304 + *(v232 + 356);

  v234 = v281;

  v287 = v233;

  v349 = v325;
  v350 = v326;
  v351 = v327;
  v352 = v315;
  v353 = v218;
  v354 = v317;
  v355 = v219;
  v356 = v316;
  v357 = v328;
  v358 = v292;
  v359 = v299;
  v360 = v297;
  v361 = v294;
  v362 = v298;
  v363 = v293;
  v364 = v291;
  v365 = v303;
  v366 = v301;
  v367 = v305;
  v368 = v290;
  v235 = type metadata accessor for CanvasSectionDescriptor(0, &v349);
  v303 = v235;
  v305 = swift_getWitnessTable();
  v253 = v234;
  v236 = v274;
  sub_1E67EB0B4(v304 + v259, sub_1E68AB808, v119, sub_1E68AB80C, v145, sub_1E68AB810, v167, v258, v280, v279, v257, v278, v256, v276, sub_1E68AB800, v189, v255, v253, sub_1E68AB804, v211, v295, v233, WitnessTable, v235, v307, v324, v321, v312, v319, v311, v308, v310, v305, v318, v309, v323, v322, v306, v313, v314, v302);

  v237 = v266;
  v238 = v236;
  v239 = v277;
  v240 = v280;
  sub_1E6814ED8(v238, v289, v277, v266, v317, v300, v316, v328, v303, v262, v305);
  (*(v273 + 8))(v240, v239);
  v241 = v260;
  v242 = v265;
  v243 = v263;
  sub_1E68B2700();
  (*(v272 + 8))(v237, v242);
  swift_getKeyPath();
  v349 = sub_1E689DC74();
  v350 = v244;
  v331 = v242;
  v332 = v243;
  v245 = swift_getOpaqueTypeConformance2();
  v246 = v261;
  v247 = OpaqueTypeMetadata2;
  sub_1E68B27B0();

  (*(v269 + 8))(v241, v247);
  v248 = sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8, &unk_1E68C68A0, MEMORY[0x1E6980A18]);
  v329 = v245;
  v330 = v248;
  v249 = v270;
  swift_getWitnessTable();
  v250 = v267;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v251 = *(v271 + 8);
  v251(v246, v249);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v251)(v250, v249);
}

uint64_t sub_1E68A3E5C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12, char *a13, char *a14, uint64_t a15, char *a16, uint64_t a17, char *a18, char *a19, char *a20, char *a21, uint64_t a22, char *a23, char *a24, char *a25, char *a26, char *a27, char *a28, char *a29, char *a30, char *a31, char *a32, char *a33, char *a34, uint64_t a35, char *a36, char *a37, char *a38)
{
  v140 = a8;
  v175 = a7;
  v157 = a6;
  v153 = a4;
  v154 = a5;
  v171 = a2;
  v172 = a3;
  v134 = a1;
  v136 = a9;
  v159 = a26;
  v161 = a27;
  v165 = a23;
  v169 = a22;
  v155 = a11;
  v170 = a10;
  v144 = a38;
  v173 = a36;
  v151 = a37;
  v160 = a34;
  v174 = a35;
  v167 = a33;
  v143 = a32;
  v142 = a31;
  v141 = a30;
  v156 = a28;
  v152 = a29;
  v166 = a24;
  v148 = a25;
  v146 = a21;
  v145 = a20;
  v150 = a15;
  v158 = a14;
  v147 = a18;
  v162 = a17;
  v164 = a16;
  v176 = a12;
  v38 = sub_1E68B22C0();
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v135 = &v125 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = v171;
  v218 = v172;
  v219 = v175;
  v220 = a12;
  v221 = a13;
  v222 = a16;
  v223 = a18;
  v224 = a14;
  v225 = a19;
  v163 = a19;
  v226 = a20;
  v227 = a21;
  v228 = a25;
  v229 = a29;
  v230 = a30;
  v231 = a31;
  v232 = a32;
  v233 = a35;
  v234 = a37;
  v235 = a33;
  v236 = a38;
  type metadata accessor for CanvasSectionDescriptor(255, &v217);
  swift_getTupleTypeMetadata2();
  v133 = sub_1E68B33B0();
  v132 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995E8, &qword_1E68C1938);
  v131 = sub_1E68B2220();
  v42 = v171;
  v41 = v172;
  v217 = v171;
  v218 = v172;
  v43 = v175;
  v219 = v175;
  v220 = v176;
  v168 = a13;
  v221 = a13;
  v222 = a19;
  v223 = v145;
  v224 = v146;
  v225 = v148;
  v226 = v152;
  v227 = v141;
  v228 = a31;
  v229 = a32;
  v230 = a38;
  v44 = type metadata accessor for CanvasItemDescriptor(255, &v217);
  v149 = v44;
  WitnessTable = swift_getWitnessTable();
  v217 = v42;
  v46 = v154;
  v45 = v155;
  v218 = v155;
  v219 = v41;
  v47 = v153;
  v220 = v153;
  v221 = v154;
  v48 = v156;
  v49 = v157;
  v222 = v157;
  v223 = v43;
  v50 = v169;
  v51 = v170;
  v224 = v170;
  v225 = v176;
  v226 = a13;
  v227 = v147;
  v52 = v165;
  v228 = v164;
  v229 = v162;
  v230 = v163;
  v231 = v44;
  v232 = v156;
  v233 = v169;
  v234 = v165;
  v235 = v166;
  v53 = v161;
  v236 = v161;
  v237 = v151;
  v238 = v174;
  v239 = v173;
  v240 = WitnessTable;
  v138 = type metadata accessor for CarouselView(255, &v217);
  v217 = v171;
  v218 = v45;
  v219 = v172;
  v220 = v47;
  v221 = v46;
  v222 = v49;
  v223 = v175;
  v54 = v140;
  v224 = v140;
  v225 = v51;
  v226 = v176;
  v227 = v168;
  v55 = v158;
  v228 = v158;
  v56 = v150;
  v229 = v150;
  v230 = v164;
  v231 = v162;
  v232 = v163;
  v233 = v149;
  v234 = v48;
  v235 = v50;
  v236 = v52;
  v58 = v166;
  v57 = v167;
  v237 = v166;
  v59 = v159;
  v60 = v160;
  v238 = v159;
  v239 = v53;
  v240 = v167;
  v241 = v160;
  v61 = v174;
  v242 = v174;
  v243 = v173;
  v62 = WitnessTable;
  v244 = WitnessTable;
  v137 = type metadata accessor for HorizontalGridView(255, &v217);
  v217 = v171;
  v218 = v155;
  v219 = v172;
  v220 = v153;
  v221 = v154;
  v222 = v157;
  v223 = v175;
  v224 = v54;
  v225 = v170;
  v226 = v176;
  v227 = v168;
  v228 = v55;
  v229 = v56;
  v63 = v164;
  v230 = v164;
  v231 = v162;
  v232 = v163;
  v233 = v149;
  v234 = v156;
  v235 = v169;
  v236 = v165;
  v237 = v58;
  v238 = v59;
  v239 = v161;
  v240 = v57;
  v241 = v60;
  v242 = v61;
  v243 = v173;
  v244 = v62;
  v129 = type metadata accessor for VerticalGridView(255, &v217);
  v130 = sub_1E68B2220();
  v127 = sub_1E68B2220();
  v64 = v172;
  v217 = v171;
  v65 = v154;
  v66 = v155;
  v218 = v155;
  v219 = v172;
  v67 = v153;
  v220 = v153;
  v221 = v154;
  v222 = v157;
  v223 = v175;
  v68 = v140;
  v224 = v140;
  v225 = v170;
  v226 = v176;
  v227 = v168;
  v228 = v158;
  v69 = v150;
  v229 = v150;
  v230 = v63;
  v70 = v162;
  v71 = v163;
  v231 = v162;
  v232 = v163;
  v233 = v149;
  v72 = v156;
  v234 = v156;
  v235 = v169;
  v236 = v165;
  v237 = v166;
  v238 = v159;
  v239 = v161;
  v240 = v167;
  v241 = v160;
  v242 = v174;
  v243 = v173;
  v244 = WitnessTable;
  v126 = type metadata accessor for ListView(255, &v217);
  v217 = v171;
  v218 = v66;
  v219 = v64;
  v220 = v67;
  v221 = v65;
  v222 = v157;
  v223 = v175;
  v224 = v68;
  v225 = v170;
  v226 = v176;
  v227 = v168;
  v228 = v158;
  v229 = v69;
  v230 = v164;
  v231 = v70;
  v232 = v71;
  v233 = v149;
  v234 = v72;
  v235 = v169;
  v236 = v165;
  v237 = v166;
  v238 = v159;
  v73 = v161;
  v239 = v161;
  v240 = v167;
  v241 = v160;
  v242 = v174;
  v243 = v173;
  v244 = WitnessTable;
  type metadata accessor for OrthogonalView(255, &v217);
  v128 = sub_1E68B2220();
  WitnessTable = sub_1E68B2220();
  v149 = sub_1E68B2220();
  v74 = sub_1E68B2220();
  v272 = v73;
  v273 = MEMORY[0x1E6981E60];
  v75 = v73;
  v131 = swift_getWitnessTable();
  v76 = swift_getWitnessTable();
  v77 = swift_getWitnessTable();
  v78 = swift_getWitnessTable();
  v270 = v77;
  v271 = v78;
  v79 = swift_getWitnessTable();
  v268 = v76;
  v269 = v79;
  v80 = swift_getWitnessTable();
  v81 = swift_getWitnessTable();
  v82 = swift_getWitnessTable();
  v266 = v81;
  v267 = v82;
  v83 = swift_getWitnessTable();
  v264 = v80;
  v265 = v83;
  v262 = swift_getWitnessTable();
  v263 = v75;
  v84 = swift_getWitnessTable();
  v260 = v131;
  v261 = v84;
  v85 = swift_getWitnessTable();
  v217 = v74;
  v218 = v85;
  swift_getOpaqueTypeMetadata2();
  v86 = sub_1E68B2220();
  v217 = v74;
  v218 = v85;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v259 = v85;
  v87 = swift_getWitnessTable();
  v217 = v86;
  v218 = v87;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0983B8, &unk_1E68C68A0);
  sub_1E68B1E40();
  v88 = sub_1E68B2220();
  v89 = v133;
  v90 = swift_getWitnessTable();
  v217 = v89;
  v218 = MEMORY[0x1E69E6158];
  v219 = v88;
  v220 = v90;
  v221 = MEMORY[0x1E69E6168];
  v91 = sub_1E68B2D40();
  v92 = sub_1E68AA77C(&qword_1EE2EA7B8, &qword_1ED0995E8, &qword_1E68C1938);
  v217 = v86;
  v218 = v87;
  v93 = swift_getOpaqueTypeConformance2();
  v94 = sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8, &unk_1E68C68A0, MEMORY[0x1E6980A18]);
  v256 = v93;
  v257 = v94;
  v95 = swift_getWitnessTable();
  v254 = v92;
  v255 = v95;
  v253 = swift_getWitnessTable();
  v132 = v91;
  v131 = swift_getWitnessTable();
  v96 = sub_1E68B1B70();
  v97 = *(v96 - 8);
  v137 = v96;
  v138 = v97;
  MEMORY[0x1EEE9AC00](v96, v98);
  v130 = &v125 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v100, v101);
  v133 = &v125 - v102;
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  v103 = sub_1E68B2F00();
  v149 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103, v104);
  v106 = &v125 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v107, v108);
  WitnessTable = &v125 - v109;
  v110 = v171;
  v217 = v171;
  v218 = v172;
  v219 = v153;
  v220 = v154;
  v111 = v157;
  v221 = v157;
  v222 = v175;
  v112 = v140;
  v223 = v140;
  v224 = v170;
  v225 = v155;
  v226 = v176;
  v227 = v168;
  v228 = v158;
  v229 = v150;
  v230 = v164;
  v231 = v162;
  v232 = v147;
  v233 = v163;
  v234 = v145;
  v235 = v146;
  v236 = v169;
  v237 = v165;
  v238 = v166;
  v239 = v148;
  v240 = v159;
  v241 = v161;
  v242 = v156;
  v243 = v152;
  v113 = v141;
  v244 = v141;
  v245 = v142;
  v246 = v143;
  v247 = v167;
  v248 = v160;
  v249 = v174;
  v250 = v173;
  v251 = v151;
  v252 = v144;
  v114 = type metadata accessor for CanvasContainerView(0, &v217);
  v115 = v134;
  sub_1E689E988(0, v114, v106);
  v126 = v103;
  v127 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v128 = *(v149 + 8);
  v129 = v149 + 8;
  v128(v106, v103);
  sub_1E68B21D0();
  v177 = v110;
  v178 = v172;
  v179 = v153;
  v180 = v154;
  v181 = v111;
  v182 = v175;
  v183 = v112;
  v184 = v170;
  v185 = v155;
  v186 = v176;
  v187 = v168;
  v188 = v158;
  v189 = v150;
  v190 = v164;
  v191 = v162;
  v192 = v147;
  v193 = v163;
  v194 = v145;
  v195 = v146;
  v196 = v169;
  v197 = v165;
  v198 = v166;
  v199 = v148;
  v200 = v159;
  v201 = v161;
  v202 = v156;
  v203 = v152;
  v204 = v113;
  v205 = v142;
  v206 = v143;
  v207 = v167;
  v208 = v160;
  v209 = v174;
  v210 = v173;
  v211 = v151;
  v212 = v144;
  v213 = v115;
  sub_1E689D740();
  v116 = v130;
  sub_1E68B1B60();
  v117 = v137;
  v118 = swift_getWitnessTable();
  v119 = v133;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v120 = v138;
  v121 = *(v138 + 8);
  v121(v116, v117);
  v122 = v126;
  (*(v149 + 16))(v106, WitnessTable, v126);
  v217 = v106;
  (*(v120 + 16))(v116, v119, v117);
  v218 = v116;
  v216[0] = v122;
  v216[1] = v117;
  v214 = v127;
  v215 = v118;
  sub_1E6848F14(&v217, 2uLL, v216);
  v121(v119, v117);
  v123 = v128;
  v128(WitnessTable, v122);
  v121(v116, v117);
  return v123(v106, v122);
}

uint64_t sub_1E68A4E44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v161 = a8;
  v176 = a7;
  v171 = a5;
  v172 = a6;
  v170 = a4;
  v165 = a3;
  v178 = a2;
  v142 = a1;
  v143 = a9;
  v153 = a31;
  v154 = a29;
  v159 = a28;
  v164 = a27;
  v157 = a26;
  v160 = a24;
  v169 = a23;
  v168 = a22;
  v152 = a21;
  v151 = a20;
  v150 = a18;
  v173 = a17;
  v156 = a15;
  v166 = a14;
  v181 = a13;
  v177 = a12;
  v167 = a11;
  v175 = a10;
  v203 = a2;
  v204 = a3;
  v205 = a4;
  v206 = a5;
  v207 = a6;
  v208 = a7;
  v209 = a8;
  v210 = a10;
  v211 = a11;
  v212 = a12;
  v213 = a13;
  v214 = a14;
  v215 = a15;
  v216 = a16;
  v162 = a16;
  v217 = a17;
  v218 = a18;
  v219 = a19;
  v180 = a19;
  v220 = a20;
  v221 = a21;
  v222 = a22;
  v223 = a23;
  v224 = a24;
  v225 = a25;
  v226 = a26;
  v227 = a27;
  v228 = a28;
  v229 = a29;
  v230 = a30;
  v146 = a32;
  v231 = a31;
  v232 = a32;
  v163 = a34;
  v233 = a33;
  v158 = a33;
  v234 = a34;
  v174 = a36;
  v235 = a35;
  v179 = a35;
  v236 = a36;
  v147 = a38;
  v148 = a37;
  v237 = a37;
  v238 = a38;
  v140 = type metadata accessor for CanvasContainerView(0, &v203);
  v138 = *(v140 - 8);
  v139 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v140, v38);
  v137 = v131 - v39;
  v203 = v178;
  v40 = v165;
  v204 = v165;
  v205 = v176;
  v206 = a12;
  v207 = a13;
  v208 = a16;
  v209 = a18;
  v210 = a14;
  v211 = a19;
  v212 = a20;
  v213 = a21;
  v135 = a25;
  v136 = a30;
  v214 = a25;
  v215 = a29;
  v216 = a30;
  v217 = a31;
  v218 = a32;
  v219 = a35;
  v220 = a37;
  v221 = a33;
  v222 = a38;
  v141 = type metadata accessor for CanvasSectionDescriptor(255, &v203);
  swift_getTupleTypeMetadata2();
  v134 = sub_1E68B33B0();
  v133 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995E8, &qword_1E68C1938);
  v41 = v175;
  v132 = sub_1E68B2220();
  v42 = v178;
  v203 = v178;
  v204 = v40;
  v43 = v40;
  v44 = v176;
  v45 = v177;
  v205 = v176;
  v206 = v177;
  v207 = v181;
  v208 = v180;
  v209 = v151;
  v210 = v152;
  v211 = a25;
  v212 = v154;
  v213 = a30;
  v214 = v153;
  v215 = a32;
  v216 = a38;
  v46 = type metadata accessor for CanvasItemDescriptor(255, &v203);
  v155 = v46;
  WitnessTable = swift_getWitnessTable();
  v203 = v42;
  v47 = v167;
  v204 = v167;
  v205 = v43;
  v49 = v170;
  v48 = v171;
  v206 = v170;
  v207 = v171;
  v50 = v172;
  v208 = v172;
  v209 = v44;
  v210 = v41;
  v211 = v45;
  v51 = v181;
  v212 = v181;
  v213 = v150;
  v52 = v162;
  v214 = v162;
  v54 = v173;
  v53 = v174;
  v215 = v173;
  v216 = v180;
  v217 = v46;
  v55 = v159;
  v218 = v159;
  v219 = v168;
  v220 = v169;
  v221 = v160;
  v222 = v164;
  v223 = v148;
  v224 = v179;
  v225 = v174;
  v226 = WitnessTable;
  v145 = type metadata accessor for CarouselView(255, &v203);
  v203 = v178;
  v204 = v47;
  v205 = v165;
  v206 = v49;
  v207 = v48;
  v208 = v50;
  v209 = v176;
  v56 = v161;
  v210 = v161;
  v211 = v175;
  v212 = v177;
  v213 = v51;
  v214 = v166;
  v215 = v156;
  v216 = v52;
  v217 = v54;
  v57 = v180;
  v218 = v180;
  v219 = v155;
  v220 = v55;
  v59 = v168;
  v58 = v169;
  v221 = v168;
  v222 = v169;
  v60 = v160;
  v223 = v160;
  v224 = v157;
  v61 = v163;
  v62 = v164;
  v225 = v164;
  v226 = v158;
  v227 = v163;
  v228 = v179;
  v229 = v53;
  v63 = WitnessTable;
  v230 = WitnessTable;
  v144 = type metadata accessor for HorizontalGridView(255, &v203);
  v203 = v178;
  v204 = v167;
  v205 = v165;
  v206 = v170;
  v207 = v171;
  v208 = v172;
  v209 = v176;
  v210 = v56;
  v211 = v175;
  v212 = v177;
  v213 = v181;
  v214 = v166;
  v215 = v156;
  v216 = v52;
  v217 = v173;
  v218 = v57;
  v219 = v155;
  v220 = v159;
  v221 = v59;
  v222 = v58;
  v223 = v60;
  v64 = v60;
  v224 = v157;
  v225 = v62;
  v226 = v158;
  v227 = v61;
  v228 = v179;
  v229 = v174;
  v230 = v63;
  v131[2] = type metadata accessor for VerticalGridView(255, &v203);
  v131[3] = sub_1E68B2220();
  v131[1] = sub_1E68B2220();
  v66 = v177;
  v65 = v178;
  v203 = v178;
  v67 = v166;
  v204 = v167;
  v68 = v165;
  v205 = v165;
  v206 = v170;
  v207 = v171;
  v208 = v172;
  v69 = v176;
  v209 = v176;
  v210 = v161;
  v211 = v175;
  v212 = v177;
  v213 = v181;
  v214 = v166;
  v70 = v156;
  v215 = v156;
  v216 = v162;
  v217 = v173;
  v218 = v180;
  v219 = v155;
  v71 = v158;
  v72 = v159;
  v220 = v159;
  v221 = v168;
  v222 = v169;
  v223 = v64;
  v73 = v157;
  v224 = v157;
  v225 = v164;
  v226 = v158;
  v227 = v163;
  v228 = v179;
  v229 = v174;
  v230 = WitnessTable;
  v131[0] = type metadata accessor for ListView(255, &v203);
  v203 = v65;
  v204 = v167;
  v205 = v68;
  v206 = v170;
  v207 = v171;
  v208 = v172;
  v209 = v69;
  v210 = v161;
  v211 = v175;
  v212 = v66;
  v213 = v181;
  v214 = v67;
  v215 = v70;
  v216 = v162;
  v217 = v173;
  v218 = v180;
  v219 = v155;
  v220 = v72;
  v221 = v168;
  v222 = v169;
  v223 = v160;
  v224 = v73;
  v74 = v164;
  v225 = v164;
  v226 = v71;
  v227 = v163;
  v228 = v179;
  v229 = v174;
  v230 = WitnessTable;
  type metadata accessor for OrthogonalView(255, &v203);
  sub_1E68B2220();
  WitnessTable = sub_1E68B2220();
  v155 = sub_1E68B2220();
  v75 = sub_1E68B2220();
  v201 = v74;
  v202 = MEMORY[0x1E6981E60];
  v132 = swift_getWitnessTable();
  v76 = swift_getWitnessTable();
  v77 = swift_getWitnessTable();
  v78 = swift_getWitnessTable();
  v199 = v77;
  v200 = v78;
  v79 = swift_getWitnessTable();
  v197 = v76;
  v198 = v79;
  v80 = swift_getWitnessTable();
  v81 = swift_getWitnessTable();
  v82 = swift_getWitnessTable();
  v195 = v81;
  v196 = v82;
  v83 = swift_getWitnessTable();
  v193 = v80;
  v194 = v83;
  v191 = swift_getWitnessTable();
  v192 = v74;
  v84 = swift_getWitnessTable();
  v189 = v132;
  v190 = v84;
  v85 = swift_getWitnessTable();
  v203 = v75;
  v204 = v85;
  swift_getOpaqueTypeMetadata2();
  v86 = sub_1E68B2220();
  v203 = v75;
  v204 = v85;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v188 = v85;
  WitnessTable = v86;
  v144 = swift_getWitnessTable();
  v203 = v86;
  v204 = v144;
  v132 = MEMORY[0x1E699DCA0];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0983B8, &unk_1E68C68A0);
  v145 = sub_1E68B1E40();
  v87 = sub_1E68B2220();
  v133 = v87;
  v88 = v134;
  v89 = swift_getWitnessTable();
  v203 = v88;
  v204 = MEMORY[0x1E69E6158];
  v205 = v87;
  v206 = v89;
  v207 = MEMORY[0x1E69E6168];
  v90 = sub_1E68B2D40();
  v155 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v91);
  v93 = v131 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = MEMORY[0x1EEE9AC00](v94, v95);
  v98 = v131 - v97;
  v134 = *v142;
  v100 = v137;
  v99 = v138;
  v101 = v140;
  (*(v138 + 16))(v137, v96);
  v102 = (*(v99 + 80) + 304) & ~*(v99 + 80);
  v103 = swift_allocObject();
  v104 = v165;
  *(v103 + 2) = v178;
  *(v103 + 3) = v104;
  v105 = v171;
  *(v103 + 4) = v170;
  *(v103 + 5) = v105;
  v106 = v176;
  *(v103 + 6) = v172;
  *(v103 + 7) = v106;
  v107 = v175;
  *(v103 + 8) = v161;
  *(v103 + 9) = v107;
  v108 = v177;
  *(v103 + 10) = v167;
  *(v103 + 11) = v108;
  v109 = v166;
  *(v103 + 12) = v181;
  *(v103 + 13) = v109;
  v110 = v162;
  *(v103 + 14) = v156;
  *(v103 + 15) = v110;
  v111 = v150;
  *(v103 + 16) = v173;
  *(v103 + 17) = v111;
  v112 = v151;
  v113 = v152;
  *(v103 + 18) = v180;
  *(v103 + 19) = v112;
  v114 = v168;
  v115 = v169;
  *(v103 + 20) = v113;
  *(v103 + 21) = v114;
  v116 = v160;
  *(v103 + 22) = v115;
  *(v103 + 23) = v116;
  v117 = v157;
  *(v103 + 24) = v135;
  *(v103 + 25) = v117;
  v118 = v159;
  *(v103 + 26) = v164;
  *(v103 + 27) = v118;
  v119 = v136;
  *(v103 + 28) = v154;
  *(v103 + 29) = v119;
  v120 = v146;
  *(v103 + 30) = v153;
  *(v103 + 31) = v120;
  v121 = v163;
  *(v103 + 32) = v158;
  *(v103 + 33) = v121;
  v122 = v174;
  *(v103 + 34) = v179;
  *(v103 + 35) = v122;
  v123 = v147;
  *(v103 + 36) = v148;
  *(v103 + 37) = v123;
  (*(v99 + 32))(&v103[v102], v100, v101);
  v124 = sub_1E68AA77C(&qword_1EE2EA7B8, &qword_1ED0995E8, &qword_1E68C1938);

  v203 = WitnessTable;
  v204 = v144;
  v125 = swift_getOpaqueTypeConformance2();
  v126 = sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8, &unk_1E68C68A0, MEMORY[0x1E6980A18]);
  v185 = v125;
  v186 = v126;
  v127 = swift_getWitnessTable();
  v183 = v124;
  v184 = v127;
  v128 = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B2D20();
  v182 = v128;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v129 = *(v155 + 8);
  v129(v93, v90);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v129)(v98, v90);
}

uint64_t sub_1E68A5C70@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, void *a3@<X2>, double a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, void (*a11)(void, void), void (*a12)(void, void), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void (*a18)(void, void), void *a19, void *a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v365 = a8;
  v355 = a6;
  v356 = a7;
  v374 = a4;
  v341 = a3;
  v329 = a2;
  v335 = a1;
  v320 = a9;
  v354 = a29;
  v364 = a28;
  v353 = a27;
  v345 = a26;
  v363 = a25;
  v362 = a24;
  v372 = a23;
  v344 = a22;
  v343 = a21;
  v358 = a20;
  v350 = *&a19;
  v369 = a18;
  v371 = a17;
  v352 = a16;
  v366 = a15;
  v373 = a14;
  v361 = a12;
  v360 = a11;
  v351 = *(&a10 + 1);
  v370 = a10;
  v401 = a4;
  v402 = *&a5;
  v403 = a6;
  v404 = a7;
  v405 = a8;
  v406 = a10;
  v407 = a11;
  v408 = a12;
  v409 = a13;
  v359 = a13;
  v410 = a14;
  v411 = a15;
  v412 = a16;
  v413 = a17;
  v414 = a18;
  v415 = a19;
  v416 = a20;
  v417 = a21;
  v418 = a22;
  v419 = a23;
  v420 = a24;
  v421 = a25;
  v422 = a26;
  v423 = a27;
  v424 = a28;
  v425 = a29;
  v342 = a31;
  v426 = a30;
  v340 = a30;
  v427 = a31;
  v428 = a32;
  v337 = a32;
  v429 = a33;
  v339 = a33;
  v346 = a34;
  v349 = a35;
  v430 = a34;
  v431 = a35;
  v357 = a36;
  v368 = a37;
  v432 = a36;
  v433 = a37;
  v348 = a38;
  v434 = a38;
  v435 = a39;
  v336 = a39;
  v347 = type metadata accessor for CanvasContainerView(0, &v401);
  v338 = *(v347 - 8);
  MEMORY[0x1EEE9AC00](v347, v40);
  v311 = &v294 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v328 = (&v294 - v44);
  MEMORY[0x1EEE9AC00](v45, v46);
  v327 = &v294 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v307 = &v294 - v50;
  v296 = v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v301 = &v294 - v54;
  v55 = v360;
  v330 = sub_1E68B2220();
  v56 = v374;
  v401 = v374;
  v57 = a5;
  v367 = a5;
  v402 = *&a5;
  v58 = v370;
  v403 = v370;
  v404 = a13;
  v59 = v373;
  v405 = v373;
  *&v406 = v358;
  *(&v406 + 1) = v343;
  v407 = v344;
  v408 = v345;
  v409 = a30;
  v410 = v342;
  v411 = a32;
  v412 = a33;
  v413 = a39;
  v60 = type metadata accessor for CanvasItemDescriptor(255, &v401);
  v334 = v60;
  WitnessTable = swift_getWitnessTable();
  v401 = v56;
  v61 = v361;
  v402 = *&v361;
  v403 = v57;
  v63 = v355;
  v62 = v356;
  v404 = v355;
  v405 = v356;
  v64 = v365;
  *&v406 = v365;
  *(&v406 + 1) = v58;
  v407 = v55;
  v65 = v359;
  v408 = v359;
  v409 = v59;
  v410 = *&v350;
  v411 = v371;
  v66 = v369;
  v412 = v369;
  v413 = v358;
  v414 = v60;
  v67 = v354;
  v415 = v354;
  v416 = v372;
  v417 = v362;
  v418 = v363;
  v68 = v364;
  v419 = v364;
  v420 = v348;
  v421 = v357;
  v422 = v368;
  v423 = WitnessTable;
  v333 = type metadata accessor for CarouselView(255, &v401);
  v401 = v374;
  v402 = *&v61;
  v403 = v367;
  v404 = v63;
  v405 = v62;
  *&v406 = v64;
  *(&v406 + 1) = v58;
  v70 = v351;
  v69 = v352;
  v407 = v351;
  v71 = v360;
  v408 = v360;
  v409 = v65;
  v410 = v373;
  v72 = v366;
  v411 = v366;
  v412 = v352;
  v413 = v371;
  v414 = v66;
  v415 = v358;
  v416 = v334;
  v417 = v67;
  v418 = v372;
  v419 = v362;
  v420 = v363;
  v421 = v353;
  v422 = v68;
  v73 = v346;
  v423 = v346;
  v74 = v349;
  v424 = v349;
  v425 = v357;
  v75 = v368;
  v426 = v368;
  v76 = WitnessTable;
  v427 = WitnessTable;
  v332 = type metadata accessor for HorizontalGridView(255, &v401);
  v401 = v374;
  v402 = *&v361;
  v403 = v367;
  v404 = v355;
  v405 = v356;
  *&v406 = v365;
  *(&v406 + 1) = v370;
  v407 = v70;
  v408 = v71;
  v409 = v359;
  v410 = v373;
  v411 = v72;
  v412 = v69;
  v77 = v371;
  v413 = v371;
  v414 = v369;
  v415 = v358;
  v78 = v334;
  v416 = v334;
  v417 = v67;
  v418 = v372;
  v79 = v362;
  v419 = v362;
  v420 = v363;
  v80 = v353;
  v421 = v353;
  v422 = v364;
  v423 = v73;
  v424 = v74;
  v425 = v357;
  v426 = v75;
  v427 = v76;
  v325 = type metadata accessor for VerticalGridView(255, &v401);
  v326 = sub_1E68B2220();
  v324 = sub_1E68B2220();
  v401 = v374;
  v402 = *&v361;
  v403 = v367;
  v81 = v355;
  v404 = v355;
  v405 = v356;
  *&v406 = v365;
  *(&v406 + 1) = v370;
  v407 = v351;
  v408 = v360;
  v82 = v359;
  v409 = v359;
  v83 = v373;
  v410 = v373;
  v411 = v366;
  v412 = v352;
  v413 = v77;
  v414 = v369;
  v85 = v357;
  v84 = v358;
  v415 = v358;
  v416 = v78;
  v417 = v354;
  v418 = v372;
  v419 = v79;
  v86 = v363;
  v420 = v363;
  v421 = v80;
  v87 = v364;
  v422 = v364;
  v88 = v346;
  v423 = v346;
  v424 = v349;
  v425 = v357;
  v426 = v368;
  v89 = WitnessTable;
  v427 = WitnessTable;
  v323 = type metadata accessor for ListView(255, &v401);
  v401 = v374;
  v402 = *&v361;
  v403 = v367;
  v404 = v81;
  v405 = v356;
  *&v406 = v365;
  *(&v406 + 1) = v370;
  v407 = v351;
  v408 = v360;
  v409 = v82;
  v410 = v83;
  v411 = v366;
  v412 = v352;
  v413 = v371;
  v414 = v369;
  v415 = v84;
  v416 = v334;
  v417 = v354;
  v418 = v372;
  v419 = v362;
  v420 = v86;
  v421 = v353;
  v422 = v87;
  v423 = v88;
  v424 = v349;
  v425 = v85;
  v426 = v368;
  v427 = v89;
  type metadata accessor for OrthogonalView(255, &v401);
  sub_1E68B2220();
  WitnessTable = sub_1E68B2220();
  v334 = sub_1E68B2220();
  *&v90 = COERCE_DOUBLE(sub_1E68B2220());
  v309 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v91);
  v308 = &v294 - v92;
  v399 = v87;
  v400 = MEMORY[0x1E6981E60];
  v330 = swift_getWitnessTable();
  v93 = swift_getWitnessTable();
  v94 = swift_getWitnessTable();
  v95 = swift_getWitnessTable();
  v397 = v94;
  v398 = v95;
  v96 = swift_getWitnessTable();
  v395 = v93;
  v396 = v96;
  v97 = swift_getWitnessTable();
  v98 = swift_getWitnessTable();
  v99 = swift_getWitnessTable();
  v393 = v98;
  v394 = v99;
  v100 = swift_getWitnessTable();
  v391 = v97;
  v392 = v100;
  v389 = swift_getWitnessTable();
  v390 = v364;
  v101 = swift_getWitnessTable();
  v387 = v330;
  v388 = v101;
  v102 = swift_getWitnessTable();
  v401 = *&v90;
  v402 = *&v102;
  swift_getOpaqueTypeMetadata2();
  *&v103 = COERCE_DOUBLE(sub_1E68B2220());
  v302 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103, v104);
  v298 = &v294 - v105;
  v310 = v90;
  v401 = *&v90;
  v402 = *&v102;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v299 = v102;
  v386 = v102;
  v318 = swift_getWitnessTable();
  v319 = v103;
  v401 = *&v103;
  v402 = *&v318;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v300 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v107);
  v297 = &v294 - v108;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0983B8, &unk_1E68C68A0);
  v303 = OpaqueTypeMetadata2;
  v109 = sub_1E68B1E40();
  v306 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v110);
  v305 = &v294 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v112, v113);
  v304 = &v294 - v114;
  v115 = *&v350;
  v401 = v350;
  v116 = v358;
  v402 = *&v358;
  v117 = v348;
  v403 = v348;
  v118 = v336;
  v404 = v336;
  v119 = type metadata accessor for CanvasSectionLayout(0, &v401);
  v120 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119, v121);
  v123 = &v294 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v124, v125);
  v127 = &v294 - v126;
  v312 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995E8, &qword_1E68C1938);
  v315 = v109;
  v128 = sub_1E68B2220();
  v316 = *(v128 - 8);
  v317 = v128;
  MEMORY[0x1EEE9AC00](v128, v129);
  v313 = &v294 - v130;
  v401 = v374;
  v402 = *&v367;
  v403 = v370;
  v404 = v359;
  v405 = v373;
  *&v406 = v371;
  *(&v406 + 1) = v115;
  v407 = v366;
  v408 = v116;
  v409 = v343;
  v410 = v344;
  v411 = v345;
  v412 = v340;
  v413 = v342;
  v414 = v337;
  v415 = v339;
  v416 = v357;
  v417 = v117;
  v418 = v346;
  v419 = v118;
  v326 = type metadata accessor for CanvasSectionDescriptor(0, &v401);
  v131 = *(v326 + 180);
  v314 = v120;
  v132 = *(v120 + 16);
  v132(v127, v329 + v131, v119);
  v321 = v127;
  v322 = v119;
  if (swift_getEnumCaseMultiPayload() || (v132(v123, v321, v322), v401 = v350, v133 = v369, v402 = *&v369, v403 = v348, v134 = v368, v404 = v368, type metadata accessor for CanvasLayout(0, &v401), v135 = sub_1E689DC74(), ((*(v134 + 56))(v133, v134, v135) & 1) == 0))
  {
    v295 = *(v347 + 336);
    v145 = v338;
    v146 = v338 + 16;
    v323 = *(v338 + 16);
    v147 = v301;
    v148 = v341;
    (v323)(v301, v341);
    v149 = v145;
    v150 = (*(v145 + 80) + 304) & ~*(v145 + 80);
    WitnessTable = *(v145 + 80);
    v332 = v150 + v296;
    v151 = v150;
    v330 = v150;
    v152 = v359;
    v333 = (v150 + v296 + 7) & 0xFFFFFFFFFFFFFFF8;
    v153 = swift_allocObject();
    v154 = v367;
    v153[2] = v374;
    *(v153 + 3) = v154;
    v155 = v356;
    *(v153 + 4) = v355;
    *(v153 + 5) = v155;
    v156 = v155;
    v157 = v370;
    *(v153 + 6) = v365;
    *(v153 + 7) = v157;
    v158 = v360;
    *(v153 + 8) = v351;
    *(v153 + 9) = v158;
    *(v153 + 10) = v361;
    *(v153 + 11) = v152;
    v159 = v366;
    *(v153 + 12) = v373;
    *(v153 + 13) = v159;
    v160 = v371;
    *(v153 + 14) = v352;
    *(v153 + 15) = v160;
    v161 = *&v350;
    *(v153 + 16) = v369;
    *(v153 + 17) = v161;
    v162 = v343;
    v163 = v344;
    *(v153 + 18) = v358;
    *(v153 + 19) = v162;
    v164 = v372;
    *(v153 + 20) = v163;
    *(v153 + 21) = v164;
    v165 = v363;
    *(v153 + 22) = v362;
    *(v153 + 23) = v165;
    v166 = v353;
    *(v153 + 24) = v345;
    *(v153 + 25) = v166;
    v167 = v354;
    *(v153 + 26) = v364;
    *(v153 + 27) = v167;
    v168 = v342;
    *(v153 + 28) = v340;
    *(v153 + 29) = v168;
    v169 = v339;
    *(v153 + 30) = v337;
    *(v153 + 31) = v169;
    v170 = v349;
    *(v153 + 32) = v346;
    *(v153 + 33) = v170;
    v171 = v368;
    *(v153 + 34) = v357;
    *(v153 + 35) = v171;
    v172 = v336;
    *(v153 + 36) = v348;
    *(v153 + 37) = v172;
    v334 = *(v149 + 32);
    v338 = v149 + 32;
    v173 = v153 + v151;
    v174 = v347;
    v334(v173, v147, v347);
    *(v153 + v333) = v335;
    v175 = v307;
    v176 = v174;
    v177 = v323;
    v324 = v146;
    (v323)(v307, v148, v176);
    v178 = swift_allocObject();
    v179 = v154;
    v180 = v178;
    v178[2] = v374;
    *(v178 + 3) = v179;
    *(v178 + 4) = v355;
    *(v178 + 5) = v156;
    v181 = v370;
    *(v178 + 6) = v365;
    *(v178 + 7) = v181;
    v182 = v360;
    *(v178 + 8) = v351;
    *(v178 + 9) = v182;
    v183 = v359;
    *(v178 + 10) = v361;
    *(v178 + 11) = v183;
    v184 = v366;
    *(v178 + 12) = v373;
    *(v178 + 13) = v184;
    v185 = v371;
    *(v178 + 14) = v352;
    *(v178 + 15) = v185;
    v186 = *&v350;
    *(v178 + 16) = v369;
    *(v178 + 17) = v186;
    v187 = v358;
    v188 = v343;
    v189 = v344;
    *(v178 + 18) = v358;
    *(v178 + 19) = v188;
    v190 = v372;
    *(v178 + 20) = v189;
    *(v178 + 21) = v190;
    v191 = v363;
    *(v178 + 22) = v362;
    *(v178 + 23) = v191;
    v192 = v353;
    *(v178 + 24) = v345;
    *(v178 + 25) = v192;
    v193 = v354;
    *(v178 + 26) = v364;
    *(v178 + 27) = v193;
    v194 = v342;
    *(v178 + 28) = v340;
    *(v178 + 29) = v194;
    v195 = v337;
    v196 = v339;
    *(v178 + 30) = v337;
    *(v178 + 31) = v196;
    v197 = v349;
    *(v178 + 32) = v346;
    *(v178 + 33) = v197;
    v198 = v368;
    *(v178 + 34) = v357;
    *(v178 + 35) = v198;
    v199 = v336;
    *(v178 + 36) = v348;
    *(v178 + 37) = v199;
    v200 = v175;
    v201 = v347;
    v334(v178 + v330, v200, v347);
    *(v180 + v333) = v335;
    (v177)(v327, v148, v201);
    v202 = swift_allocObject();
    v203 = v367;
    v202[2] = v374;
    *(v202 + 3) = v203;
    v204 = v356;
    *(v202 + 4) = v355;
    *(v202 + 5) = v204;
    v205 = v370;
    *(v202 + 6) = v365;
    *(v202 + 7) = v205;
    v206 = v360;
    *(v202 + 8) = v351;
    *(v202 + 9) = v206;
    v207 = v359;
    *(v202 + 10) = v361;
    *(v202 + 11) = v207;
    v208 = v366;
    *(v202 + 12) = v373;
    *(v202 + 13) = v208;
    v209 = v371;
    *(v202 + 14) = v352;
    *(v202 + 15) = v209;
    v210 = *&v350;
    *(v202 + 16) = v369;
    *(v202 + 17) = v210;
    v211 = v343;
    v212 = v344;
    *(v202 + 18) = v187;
    *(v202 + 19) = v211;
    v213 = v372;
    *(v202 + 20) = v212;
    *(v202 + 21) = v213;
    v214 = v363;
    *(v202 + 22) = v362;
    *(v202 + 23) = v214;
    v215 = v353;
    *(v202 + 24) = v345;
    *(v202 + 25) = v215;
    v216 = v354;
    *(v202 + 26) = v364;
    *(v202 + 27) = v216;
    v217 = v342;
    *(v202 + 28) = v340;
    *(v202 + 29) = v217;
    v218 = v339;
    *(v202 + 30) = v195;
    *(v202 + 31) = v218;
    v220 = v346;
    v219 = v347;
    v221 = v349;
    *(v202 + 32) = v346;
    *(v202 + 33) = v221;
    v222 = v368;
    *(v202 + 34) = v357;
    *(v202 + 35) = v222;
    v223 = v336;
    *(v202 + 36) = v348;
    *(v202 + 37) = v223;
    v224 = v330;
    v334(v202 + v330, v327, v219);
    v225 = v341[4];
    v307 = v341[3];
    v327 = v225;
    v226 = v341[6];
    v301 = v341[5];
    v325 = v226;
    v227 = v341[8];
    v296 = v341[7];
    v332 = v227;
    v177(v328);
    v228 = v333;
    v229 = swift_allocObject();
    v230 = v367;
    v229[2] = v374;
    *(v229 + 3) = v230;
    v231 = v356;
    *(v229 + 4) = v355;
    *(v229 + 5) = v231;
    v232 = v370;
    *(v229 + 6) = v365;
    *(v229 + 7) = v232;
    v233 = v360;
    *(v229 + 8) = v351;
    *(v229 + 9) = v233;
    v234 = v359;
    *(v229 + 10) = v361;
    *(v229 + 11) = v234;
    v235 = v366;
    *(v229 + 12) = v373;
    *(v229 + 13) = v235;
    v236 = v371;
    *(v229 + 14) = v352;
    *(v229 + 15) = v236;
    v237 = *&v350;
    *(v229 + 16) = v369;
    *(v229 + 17) = v237;
    v238 = v343;
    v239 = v344;
    *(v229 + 18) = v187;
    *(v229 + 19) = v238;
    v240 = v372;
    *(v229 + 20) = v239;
    *(v229 + 21) = v240;
    v241 = v363;
    *(v229 + 22) = v362;
    *(v229 + 23) = v241;
    v242 = v353;
    *(v229 + 24) = v345;
    *(v229 + 25) = v242;
    v243 = v354;
    *(v229 + 26) = v364;
    *(v229 + 27) = v243;
    v244 = v342;
    *(v229 + 28) = v340;
    *(v229 + 29) = v244;
    v245 = v339;
    *(v229 + 30) = v337;
    *(v229 + 31) = v245;
    v246 = v349;
    *(v229 + 32) = v220;
    *(v229 + 33) = v246;
    v247 = v357;
    v248 = v368;
    *(v229 + 34) = v357;
    *(v229 + 35) = v248;
    *(v229 + 36) = v348;
    *(v229 + 37) = v223;
    v334(v229 + v224, v328, v347);
    *(v229 + v228) = v335;
    v249 = v341[10];
    v294 = v341[9];
    v328 = v249;
    v250 = v311;
    v323(v311);
    v251 = swift_allocObject();
    v252 = v344;
    *(v251 + 19) = v343;
    *(v251 + 20) = v252;
    *(v251 + 24) = v345;
    v253 = v342;
    *(v251 + 28) = v340;
    *(v251 + 29) = v253;
    v254 = v339;
    *(v251 + 30) = v337;
    *(v251 + 31) = v254;
    *(v251 + 32) = v346;
    *(v251 + 34) = v247;
    v255 = v336;
    *(v251 + 36) = v348;
    *(v251 + 37) = v255;
    *(v251 + 18) = v187;
    v256 = v367;
    v251[2] = v374;
    *(v251 + 3) = v256;
    v257 = v356;
    *(v251 + 4) = v355;
    *(v251 + 5) = v257;
    v258 = v370;
    *(v251 + 6) = v365;
    *(v251 + 7) = v258;
    v259 = v360;
    *(v251 + 8) = v351;
    *(v251 + 9) = v259;
    v260 = v359;
    *(v251 + 10) = v361;
    *(v251 + 11) = v260;
    v261 = v366;
    *(v251 + 12) = v373;
    *(v251 + 13) = v261;
    v262 = v371;
    *(v251 + 14) = v352;
    *(v251 + 15) = v262;
    v264 = v349;
    v263 = *&v350;
    *(v251 + 16) = v369;
    *(v251 + 17) = v263;
    v265 = v362;
    *(v251 + 21) = v372;
    *(v251 + 22) = v265;
    *(v251 + 23) = v363;
    v266 = v364;
    *(v251 + 25) = v353;
    *(v251 + 26) = v266;
    *(v251 + 27) = v354;
    *(v251 + 33) = v264;
    *(v251 + 35) = v368;
    v267 = v347;
    v334(v251 + v330, v250, v347);
    *(v251 + v333) = v335;
    v268 = v341[14];
    v348 = v341[13];
    v346 = v341 + *(v267 + 356);

    v269 = v328;

    v345 = v268;

    v270 = v326;
    v357 = swift_getWitnessTable();
    v293 = v270;
    v292 = v268;
    v271 = v308;
    v272 = v329;
    sub_1E67EB0B4(v341 + v295, sub_1E68AB808, v153, sub_1E68AB80C, v180, sub_1E68AB810, v202, v307, v308, v327, v301, v325, v296, v332, sub_1E68AB800, v229, v294, v269, sub_1E68AB804, v251, v348, v292, v346, v293, v369, v355, v356, v365, v361, v351, v360, v352, v357, v368, v372, v362, v363, v354, v353, v364, v264);

    v273 = v298;
    v274 = v310;
    sub_1E6814ED8(v272, v335, v310, v298, v371, *&v350, v366, v358, v326, v299, v357);
    (*(v309 + 8))(v271, v274);
    v275 = v297;
    v139 = v318;
    v138 = *&v319;
    sub_1E68B2700();
    (*(v302 + 8))(v273, COERCE_DOUBLE(*&v138));
    swift_getKeyPath();
    v401 = sub_1E689DC74();
    v402 = *&v276;
    v436 = v138;
    v437 = v139;
    v277 = swift_getOpaqueTypeConformance2();
    v278 = v305;
    v279 = v303;
    sub_1E68B27B0();

    (*(v300 + 8))(v275, v279);
    v280 = sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8, &unk_1E68C68A0, MEMORY[0x1E6980A18]);
    v383 = v277;
    v384 = v280;
    v281 = v315;
    v282 = swift_getWitnessTable();
    v283 = v304;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v284 = *(v306 + 8);
    v284(v278, v281);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v285 = sub_1E68AA77C(&qword_1EE2EA7B8, &qword_1ED0995E8, &qword_1E68C1938);
    v144 = v313;
    sub_1E6744DB8(v278, v312, v281, v285, v282);
    v284(v278, v281);
    v284(v283, v281);
  }

  else
  {
    *&v136 = COERCE_DOUBLE(sub_1E68B2B20());
    sub_1E689DC74();
    sub_1E68B2E80();
    sub_1E68B1C50();
    v401 = *&v136;
    v402 = v436;
    LOBYTE(v403) = v437;
    v404 = v438;
    LOBYTE(v405) = v439;
    v406 = v440;
    v137 = sub_1E68AA77C(&qword_1EE2EA7B8, &qword_1ED0995E8, &qword_1E68C1938);
    v139 = v318;
    v138 = *&v319;
    v377 = v319;
    v378 = v318;
    v140 = swift_getOpaqueTypeConformance2();
    v141 = sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8, &unk_1E68C68A0, MEMORY[0x1E6980A18]);
    v375 = v140;
    v376 = v141;
    v142 = v315;
    v143 = swift_getWitnessTable();
    v144 = v313;
    sub_1E6744CC0(&v401, v312, v142, v137, v143);
  }

  (*(v314 + 8))(v321, v322);
  v286 = sub_1E68AA77C(&qword_1EE2EA7B8, &qword_1ED0995E8, &qword_1E68C1938);
  v401 = v138;
  v402 = *&v139;
  v287 = swift_getOpaqueTypeConformance2();
  v288 = sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8, &unk_1E68C68A0, MEMORY[0x1E6980A18]);
  v381 = v287;
  v382 = v288;
  v289 = swift_getWitnessTable();
  v379 = v286;
  v380 = v289;
  v290 = v317;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (*(v316 + 8))(v144, v290);
}

uint64_t sub_1E68A78E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, uint64_t a24)
{
  v43 = a1;
  v44 = a3;
  v42 = a2;
  v41 = a24;
  v40[14] = a23;
  v40[13] = a22;
  v40[12] = a21;
  v40[11] = a20;
  v40[10] = a19;
  v40[9] = a18;
  v40[8] = a17;
  v40[7] = a16;
  v40[6] = a15;
  v40[5] = a14;
  v40[4] = a13;
  v40[3] = a12;
  v40[2] = a11;
  v40[1] = a10;
  v40[0] = a9;
  v29 = sub_1E68B19A0();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v40 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45[0] = a4;
  v45[1] = a5;
  v45[2] = a6;
  v45[3] = a7;
  v45[4] = a8;
  v46 = a9;
  v47 = a10;
  v48 = a11;
  v49 = a12;
  v50 = a13;
  v51 = a14;
  v52 = a15;
  v53 = a16;
  v54 = a17;
  v55 = a18;
  v56 = a19;
  v57 = a20;
  v58 = a21;
  v59 = a22;
  v60 = a23;
  v61 = a24;
  v34 = type metadata accessor for CanvasContainerView(0, v45);
  v35 = v42 + *(v34 + 340);
  v37 = *v35;
  v36 = *(v35 + 8);
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = v36;

  MEMORY[0x1E69501B0](v43, v44);
  v37(v33);

  return (*(v30 + 8))(v33, v29);
}

uint64_t sub_1E68A7B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, uint64_t a24)
{
  v43 = a1;
  v44 = a3;
  v42 = a2;
  v41 = a24;
  v40[14] = a23;
  v40[13] = a22;
  v40[12] = a21;
  v40[11] = a20;
  v40[10] = a19;
  v40[9] = a18;
  v40[8] = a17;
  v40[7] = a16;
  v40[6] = a15;
  v40[5] = a14;
  v40[4] = a13;
  v40[3] = a12;
  v40[2] = a11;
  v40[1] = a10;
  v40[0] = a9;
  v29 = sub_1E68B19A0();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v40 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45[0] = a4;
  v45[1] = a5;
  v45[2] = a6;
  v45[3] = a7;
  v45[4] = a8;
  v46 = a9;
  v47 = a10;
  v48 = a11;
  v49 = a12;
  v50 = a13;
  v51 = a14;
  v52 = a15;
  v53 = a16;
  v54 = a17;
  v55 = a18;
  v56 = a19;
  v57 = a20;
  v58 = a21;
  v59 = a22;
  v60 = a23;
  v61 = a24;
  v34 = type metadata accessor for CanvasContainerView(0, v45);
  v35 = v42 + *(v34 + 344);
  v37 = *v35;
  v36 = *(v35 + 8);
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = v36;

  MEMORY[0x1E69501B0](v43, v44);
  v37(v33);

  return (*(v30 + 8))(v33, v29);
}

uint64_t sub_1E68A7DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, uint64_t a23, uint64_t a24)
{
  v28[0] = a3;
  v28[1] = a4;
  v28[2] = a5;
  v28[3] = a6;
  v28[4] = a7;
  v28[5] = a8;
  v29 = a9;
  v30 = a10;
  v31 = a11;
  v32 = a12;
  v33 = a13;
  v34 = a14;
  v35 = a15;
  v36 = a16;
  v37 = a17;
  v38 = a18;
  v39 = a19;
  v40 = a20;
  v41 = a21;
  v42 = a22;
  v43 = a23;
  v44 = a24;
  v25 = type metadata accessor for CanvasContainerView(0, v28);
  sub_1E689DBB8(v25);
  (*(v26 + 304))(a1);
}

uint64_t sub_1E68A7E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v65 = a4;
  v66 = a1;
  v67 = a5;
  v30 = *(a11 - 8);
  MEMORY[0x1EEE9AC00](a26, a10);
  v32 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  v37 = &v64 - v36;
  v68 = v38;
  v69 = v39;
  v70 = v40;
  v71 = v41;
  v72 = v42;
  v73 = v43;
  v74 = a11;
  v75 = v44;
  v76 = v45;
  v77 = v46;
  v78 = v47;
  *(v48 + 136) = v49;
  *(v48 + 152) = v50;
  *(v48 + 168) = v51;
  v79 = v52;
  v80 = v53;
  v81 = a28;
  v82 = v55;
  v83 = v54;
  v84 = v56;
  v85 = v35;
  v86 = v58;
  v87 = v57;
  v59 = type metadata accessor for CanvasContainerView(0, &v68);
  sub_1E689D98C(v59);
  v61 = *(v60 + 304);
  v68 = a2;
  LOBYTE(v69) = a3 & 1;
  v88 = v65;
  v61(v66, &v68, &v88);

  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v62 = *(v30 + 8);
  v62(v32, a11);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v62)(v37, a11);
}

uint64_t sub_1E68A8058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, uint64_t a29)
{
  v63 = a8;
  v61 = a7;
  v59 = a6;
  v67 = a2;
  v68 = a5;
  v66 = a4;
  v69 = a1;
  v70 = a3;
  v71 = a9;
  v64 = a29;
  v62 = a28;
  v60 = a27;
  v58 = a26;
  v57 = a25;
  v56 = a24;
  v55 = a22;
  v54 = a21;
  v53 = a20;
  v52 = a19;
  v51 = a18;
  v50 = a17;
  v49 = a16;
  v48 = a15;
  v47 = a14;
  v46 = a12;
  v45 = a10;
  v65 = sub_1E68B19A0();
  v29 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v30);
  v32 = &v45 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a13 - 8);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v45 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v45 - v40;
  v72[0] = v59;
  v72[1] = v61;
  v72[2] = v63;
  v73 = v45;
  v74 = a11;
  v75 = v46;
  v76 = a13;
  v77 = v47;
  v78 = v48;
  v79 = v49;
  v80 = v50;
  v81 = v51;
  v82 = v52;
  v83 = v53;
  v84 = v54;
  v85 = v55;
  v87 = v56;
  v88 = v57;
  v89 = v58;
  v90 = v60;
  v91 = v62;
  v86 = a23;
  v92 = v64;
  type metadata accessor for CanvasContainerView(0, v72);
  v42 = *(v66 + 88);

  MEMORY[0x1E69501B0](v67, v68);
  v42(v69, v32, v70);

  (*(v29 + 8))(v32, v65);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v43 = *(v33 + 8);
  v43(v37, a13);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v43)(v41, a13);
}

uint64_t sub_1E68A83B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v99 = a8;
  v97 = a7;
  v95 = a6;
  v93 = a5;
  v91 = a4;
  v89 = a3;
  v87 = a2;
  v102 = a1;
  v103 = a9;
  v104 = a31;
  v101 = a30;
  v100 = a29;
  v98 = a28;
  v96 = a27;
  v94 = a26;
  v92 = a25;
  v90 = a24;
  v88 = a23;
  v86 = a22;
  v85 = a21;
  v84 = a20;
  v83 = a19;
  v82 = a18;
  v81 = a17;
  v80 = a16;
  v79 = a15;
  v78 = a14;
  v77 = a13;
  v76 = a12;
  v75 = a11;
  v74 = a10;
  v105[0] = a2;
  v105[1] = a3;
  v105[2] = a4;
  v105[3] = a5;
  v105[4] = a6;
  v105[5] = a7;
  v105[6] = a8;
  v105[7] = a10;
  v105[8] = a11;
  v105[9] = a12;
  v105[10] = a13;
  v105[11] = a14;
  v105[12] = a15;
  v105[13] = a16;
  v105[14] = a17;
  v105[15] = a18;
  v105[16] = a19;
  v105[17] = a20;
  v105[18] = a21;
  v105[19] = a22;
  v105[20] = a23;
  v105[21] = a24;
  v105[22] = a25;
  v105[23] = a26;
  v105[24] = a27;
  v105[25] = a28;
  v105[26] = a29;
  v105[27] = a30;
  v73 = a32;
  v105[28] = a31;
  v105[29] = a32;
  v71 = a33;
  v72 = a34;
  v105[30] = a33;
  v105[31] = a34;
  v105[32] = a35;
  v105[33] = a36;
  v105[34] = a37;
  v105[35] = a38;
  v38 = type metadata accessor for CanvasContainerView(0, v105);
  v39 = *(v38 - 8);
  v41 = MEMORY[0x1EEE9AC00](v38, v40);
  v43 = &v70 - v42;
  (*(v39 + 16))(&v70 - v42, v102, v38, v41);
  v44 = (*(v39 + 80) + 304) & ~*(v39 + 80);
  v45 = swift_allocObject();
  v46 = v89;
  *(v45 + 2) = v87;
  *(v45 + 3) = v46;
  v47 = v93;
  *(v45 + 4) = v91;
  *(v45 + 5) = v47;
  v48 = v97;
  *(v45 + 6) = v95;
  *(v45 + 7) = v48;
  v49 = v74;
  v50 = v75;
  *(v45 + 8) = v99;
  *(v45 + 9) = v49;
  v51 = v76;
  v52 = v77;
  *(v45 + 10) = v50;
  *(v45 + 11) = v51;
  v53 = v78;
  v54 = v79;
  *(v45 + 12) = v52;
  *(v45 + 13) = v53;
  v55 = v80;
  v56 = v81;
  *(v45 + 14) = v54;
  *(v45 + 15) = v55;
  v57 = v82;
  v58 = v83;
  *(v45 + 16) = v56;
  *(v45 + 17) = v57;
  v59 = v84;
  v60 = v85;
  *(v45 + 18) = v58;
  *(v45 + 19) = v59;
  v61 = v86;
  *(v45 + 20) = v60;
  *(v45 + 21) = v61;
  v62 = v90;
  *(v45 + 22) = v88;
  *(v45 + 23) = v62;
  v63 = v94;
  *(v45 + 24) = v92;
  *(v45 + 25) = v63;
  v64 = v98;
  *(v45 + 26) = v96;
  *(v45 + 27) = v64;
  v65 = v101;
  *(v45 + 28) = v100;
  *(v45 + 29) = v65;
  v66 = v73;
  *(v45 + 30) = v104;
  *(v45 + 31) = v66;
  v67 = v72;
  *(v45 + 32) = v71;
  *(v45 + 33) = v67;
  *(v45 + 34) = a35;
  *(v45 + 35) = a36;
  *(v45 + 36) = a37;
  *(v45 + 37) = a38;
  result = (*(v39 + 32))(&v45[v44], v43, v38);
  v69 = v103;
  *v103 = sub_1E68AA0E0;
  v69[1] = v45;
  return result;
}

uint64_t sub_1E68A86E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)()@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v150 = a8;
  v147 = a6;
  v148 = a7;
  v122 = a9;
  v123 = a5;
  v160 = a4;
  v134 = a3;
  v135 = a1;
  v136 = a2;
  v159 = a39;
  v158 = a38;
  v157 = a37;
  v156 = a36;
  v155 = a35;
  v154 = a34;
  v124 = a33;
  v162 = a32;
  v153 = a31;
  v152 = a30;
  v151 = a29;
  v149 = a28;
  v137 = a27;
  v161 = a26;
  v139 = a25;
  v138 = a24;
  v146 = a23;
  v145 = a22;
  v144 = a21;
  v143 = a20;
  v142 = a19;
  v141 = a18;
  v140 = a17;
  v133 = a16;
  v132 = a15;
  v131 = a14;
  v130 = a13;
  v129 = a12;
  v128 = a11;
  v127 = a10;
  v40 = sub_1E68B2240();
  v120 = *(v40 - 8);
  v121 = v40;
  MEMORY[0x1EEE9AC00](v40, v41);
  v119 = &v112 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1E68B1C90();
  v43 = *(v126 - 8);
  v115 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v126, v44);
  v125 = &v112 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = a3;
  v167 = v160;
  v46 = v123;
  v168 = v123;
  v169 = v147;
  v170 = v148;
  v171 = v150;
  v172 = a10;
  v173 = a11;
  v174 = a12;
  v175 = a13;
  v176 = a14;
  v177 = a15;
  v178 = a16;
  v179 = v140;
  v180 = v141;
  v181 = v142;
  v182 = v143;
  v183 = v144;
  v184 = v145;
  v185 = v146;
  v186 = v138;
  v187 = v139;
  v188 = v161;
  v189 = v137;
  v190 = v149;
  v191 = v151;
  v192 = v152;
  v193 = v153;
  v194 = v162;
  v47 = v124;
  v195 = v124;
  v196 = v154;
  v197 = v155;
  v198 = v156;
  v199 = v157;
  v200 = v158;
  v201 = v159;
  v48 = type metadata accessor for CanvasContainerView(0, &v166);
  v113 = v48;
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48, v51);
  v53 = &v112 - v52;
  v114 = sub_1E68B2B20();
  v118 = *(v49 + 16);
  v118(v53, v136, v48);
  (*(v43 + 16))(v125, v135, v126);
  v54 = *(v49 + 80);
  v55 = ((v54 + 304) & ~v54) + v50;
  v56 = (v54 + 304) & ~v54;
  v116 = v54 | 7;
  v117 = v55;
  v57 = (v55 + *(v43 + 80)) & ~*(v43 + 80);
  v58 = swift_allocObject();
  v59 = v160;
  *(v58 + 2) = v134;
  *(v58 + 3) = v59;
  v60 = v147;
  v61 = v148;
  *(v58 + 4) = v46;
  *(v58 + 5) = v60;
  v62 = v150;
  *(v58 + 6) = v61;
  *(v58 + 7) = v62;
  v63 = v128;
  *(v58 + 8) = v127;
  *(v58 + 9) = v63;
  v64 = v130;
  *(v58 + 10) = v129;
  *(v58 + 11) = v64;
  v65 = v132;
  *(v58 + 12) = v131;
  *(v58 + 13) = v65;
  v66 = v140;
  v67 = v141;
  *(v58 + 14) = v133;
  *(v58 + 15) = v66;
  v68 = v142;
  v69 = v143;
  *(v58 + 16) = v67;
  *(v58 + 17) = v68;
  v70 = v144;
  v71 = v145;
  *(v58 + 18) = v69;
  *(v58 + 19) = v70;
  v72 = v146;
  *(v58 + 20) = v71;
  *(v58 + 21) = v72;
  v73 = v139;
  *(v58 + 22) = v138;
  *(v58 + 23) = v73;
  v74 = v137;
  *(v58 + 24) = v161;
  *(v58 + 25) = v74;
  v75 = v151;
  v76 = v152;
  *(v58 + 26) = v149;
  *(v58 + 27) = v75;
  v77 = v153;
  *(v58 + 28) = v76;
  *(v58 + 29) = v77;
  *(v58 + 30) = v162;
  *(v58 + 31) = v47;
  v78 = v155;
  *(v58 + 32) = v154;
  *(v58 + 33) = v78;
  v79 = v157;
  *(v58 + 34) = v156;
  *(v58 + 35) = v79;
  v80 = v159;
  *(v58 + 36) = v158;
  *(v58 + 37) = v80;
  v115 = *(v49 + 32);
  v81 = v53;
  v82 = v53;
  v83 = v113;
  v115(&v58[v56], v81, v113);
  (*(v43 + 32))(&v58[v57], v125, v126);
  v166 = v114;
  v167 = sub_1E68AA2EC;
  v168 = v58;
  v169 = 0;
  v170 = 0;
  v84 = v119;
  sub_1E68B2370();
  sub_1E68B1C80();
  (*(v120 + 8))(v84, v121);
  v85 = v202;
  v86 = v203;
  if (v204)
  {
    v85 = 0;
    v86 = 0;
  }

  v163 = v85;
  v164 = v86;
  v165 = v204 & 1;
  v118(v82, v136, v83);
  v87 = swift_allocObject();
  v88 = v160;
  *(v87 + 2) = v134;
  *(v87 + 3) = v88;
  v89 = v147;
  v90 = v148;
  *(v87 + 4) = v123;
  *(v87 + 5) = v89;
  v91 = v150;
  *(v87 + 6) = v90;
  *(v87 + 7) = v91;
  v92 = v128;
  *(v87 + 8) = v127;
  *(v87 + 9) = v92;
  v93 = v130;
  *(v87 + 10) = v129;
  *(v87 + 11) = v93;
  v94 = v132;
  *(v87 + 12) = v131;
  *(v87 + 13) = v94;
  v95 = v140;
  v96 = v141;
  *(v87 + 14) = v133;
  *(v87 + 15) = v95;
  v97 = v142;
  v98 = v143;
  *(v87 + 16) = v96;
  *(v87 + 17) = v97;
  v99 = v144;
  v100 = v145;
  *(v87 + 18) = v98;
  *(v87 + 19) = v99;
  v101 = v146;
  *(v87 + 20) = v100;
  *(v87 + 21) = v101;
  v102 = v139;
  *(v87 + 22) = v138;
  *(v87 + 23) = v102;
  v103 = v137;
  *(v87 + 24) = v161;
  *(v87 + 25) = v103;
  v104 = v151;
  v105 = v152;
  *(v87 + 26) = v149;
  *(v87 + 27) = v104;
  v106 = v153;
  *(v87 + 28) = v105;
  *(v87 + 29) = v106;
  v107 = v124;
  *(v87 + 30) = v162;
  *(v87 + 31) = v107;
  v108 = v155;
  *(v87 + 32) = v154;
  *(v87 + 33) = v108;
  v109 = v157;
  *(v87 + 34) = v156;
  *(v87 + 35) = v109;
  v110 = v159;
  *(v87 + 36) = v158;
  *(v87 + 37) = v110;
  v115(&v87[v56], v82, v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096ED0, &qword_1E68B49E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A040, &unk_1E68C6990);
  sub_1E68AA77C(&qword_1ED096ED8, &qword_1ED096ED0, &qword_1E68B49E8);
  sub_1E68AA7EC();
  sub_1E68B2AB0();
}

uint64_t sub_1E68A8DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, uint64_t a23, uint64_t a24)
{
  v50 = a8;
  v55 = a1;
  v54 = a24;
  v53 = a23;
  v52 = a22;
  v51 = a21;
  v49 = a20;
  v48 = a19;
  v47 = a18;
  v46 = a17;
  v45 = a16;
  v44 = a15;
  v43 = a14;
  v42 = a13;
  v41 = a12;
  v40 = a11;
  v39 = a10;
  v38 = a9;
  v29 = sub_1E68B2240();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = &v38 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E68B2370();
  sub_1E68B1C80();
  (*(v30 + 8))(v33, v29);
  if (v75)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v73;
  }

  if (v75)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v74;
  }

  v56[0] = a3;
  v56[1] = a4;
  v56[2] = a5;
  v56[3] = a6;
  v56[4] = a7;
  v56[5] = v50;
  v57 = v38;
  v58 = v39;
  v59 = v40;
  v60 = v41;
  v61 = v42;
  v62 = v43;
  v63 = v44;
  v64 = v45;
  v65 = v46;
  v66 = v47;
  v67 = v48;
  v68 = v49;
  v69 = v51;
  v70 = v52;
  v71 = v53;
  v72 = v54;
  v36 = type metadata accessor for CanvasContainerView(0, v56);
  return sub_1E689DCD4(v36, v34, v35);
}

uint64_t sub_1E68A9014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, uint64_t a24)
{
  if (*(a2 + 16))
  {
    v24 = 0.0;
  }

  else
  {
    v24 = *a2;
  }

  if (*(a2 + 16))
  {
    v25 = 0.0;
  }

  else
  {
    v25 = *(a2 + 8);
  }

  v28[0] = a4;
  v28[1] = a5;
  v28[2] = a6;
  v28[3] = a7;
  v28[4] = a8;
  v29 = a9;
  v30 = a10;
  v31 = a11;
  v32 = a12;
  v33 = a13;
  v34 = a14;
  v35 = a15;
  v36 = a16;
  v37 = a17;
  v38 = a18;
  v39 = a19;
  v40 = a20;
  v41 = a21;
  v42 = a22;
  v43 = a23;
  v44 = a24;
  v26 = type metadata accessor for CanvasContainerView(0, v28);
  return sub_1E689DCD4(v26, v24, v25);
}

uint64_t sub_1E68A9130@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v5 = *(v1 + 264);
  v6 = *(v1 + 280);
  v3 = *(v1 + 232);
  v4 = *(v1 + 248);
  return sub_1E68A83B8(*(v1 + 304), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), a1, *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120), *(v1 + 128), *(v1 + 136), *(v1 + 144), *(v1 + 152), *(v1 + 160), *(v1 + 168), *(v1 + 176), *(v1 + 184), *(v1 + 192), *(v1 + 200), *(v1 + 208), *(v1 + 216), *(v1 + 224), v3, *(&v3 + 1), v4, *(&v4 + 1), v5, *(&v5 + 1), v6, *(&v6 + 1), *(v1 + 296));
}

void sub_1E68A9278(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 56);
  v4 = *(a1 + 120);
  v5 = *(a1 + 136);
  v6 = *(a1 + 104);
  v7 = *(a1 + 160);
  v8 = *(a1 + 192);
  v9 = *(a1 + 272);
  v10 = *(a1 + 256);
  v12 = *(a1 + 288);
  v11 = *(a1 + 296);
  v68 = *(a1 + 16);
  v69 = v2;
  v70 = v3;
  v71 = *(a1 + 88);
  v72 = v4;
  v73 = v5;
  v74 = v6;
  v75 = *(a1 + 144);
  v76 = v7;
  v77 = v8;
  v13 = *(a1 + 240);
  v78 = *(a1 + 224);
  v79 = v13;
  v80 = v9;
  v81 = v12;
  v82 = v10;
  v83 = v11;
  type metadata accessor for CanvasSectionDescriptor(255, &v68);
  v14 = sub_1E68B33B0();
  if (v15 <= 0x3F)
  {
    v84 = 0;
    v68 = v14;
    sub_1E68B3750();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098208, &qword_1E68BB878);
    FunctionTypeMetadata3 = swift_getFunctionTypeMetadata3();
    v19 = type metadata accessor for AssumeEquatable(319, FunctionTypeMetadata3, v17, v18);
    if (v20 <= 0x3F)
    {
      v85 = 0;
      v69 = v19;
      FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
      v24 = type metadata accessor for AssumeEquatable(319, FunctionTypeMetadata1, v22, v23);
      if (v25 <= 0x3F)
      {
        v86 = 0;
        v70 = v24;
        v26 = swift_getFunctionTypeMetadata1();
        v29 = type metadata accessor for AssumeEquatable(319, v26, v27, v28);
        if (v30 <= 0x3F)
        {
          v87 = 0;
          *&v71 = v29;
          v31 = swift_getFunctionTypeMetadata1();
          v34 = type metadata accessor for AssumeEquatable(319, v31, v32, v33);
          if (v35 <= 0x3F)
          {
            v88 = 0;
            *(&v71 + 1) = v34;
            v36 = swift_getFunctionTypeMetadata1();
            v39 = type metadata accessor for AssumeEquatable(319, v36, v37, v38);
            if (v40 <= 0x3F)
            {
              v89 = 0;
              v72 = v39;
              sub_1E68B19A0();
              v41 = *(a1 + 128);
              v42 = *(a1 + 280);
              v67[0] = v5;
              v67[1] = v41;
              v67[2] = v12;
              v67[3] = v42;
              v43 = type metadata accessor for CanvasLayout(255, v67);
              v45 = v44;
              v46 = swift_getFunctionTypeMetadata3();
              v49 = type metadata accessor for AssumeEquatable(319, v46, v47, v48);
              if (v50 <= 0x3F)
              {
                v90 = 0;
                v73 = v49;
                v51 = swift_getFunctionTypeMetadata1();
                v54 = type metadata accessor for AssumeEquatable(319, v51, v52, v53);
                if (v55 <= 0x3F)
                {
                  v91 = 0;
                  v74 = v54;
                  if (v45 <= 0x3F)
                  {
                    v92 = 0;
                    *&v75 = v43;
                    sub_1E68A9D60(319);
                    if (v57 <= 0x3F)
                    {
                      v93 = 0;
                      *(&v75 + 1) = v56;
                      v76 = v56;
                      v58 = swift_getFunctionTypeMetadata1();
                      v61 = type metadata accessor for AssumeEquatable(319, v58, v59, v60);
                      if (v62 <= 0x3F)
                      {
                        v94 = 0;
                        v77 = v61;
                        sub_1E68A9DC4(319);
                        if (v64 <= 0x3F)
                        {
                          v95 = 0;
                          *&v78 = v63;
                          v65 = sub_1E68B1950();
                          if (v66 <= 0x3F)
                          {
                            v96 = 0;
                            *(&v78 + 1) = v65;
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
        }
      }
    }
  }
}

uint64_t sub_1E68A95DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 128);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v7 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = sub_1E68B1950();
  v11 = *(v10 - 8);
  v12 = *(v6 + 80);
  v13 = *(v11 + 80);
  if (*(v11 + 84) <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v12 | 7;
  v16 = ((v12 + 96) & ~v12) + *(v6 + 64) + 7;
  v17 = v13 + 24;
  if (a2 <= v14)
  {
    goto LABEL_34;
  }

  v18 = ((v17 + ((((((((v16 + ((v12 + 120) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + *(*(v10 - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v14 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v22 < 2)
    {
LABEL_34:
      if (v14 == 0x7FFFFFFF)
      {
        v26 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v26) = -1;
        }

        return (v26 + 1);
      }

      else
      {
        v27 = (((((((((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v15 + 16) & ~v15;
        if (v8 == v14)
        {
          v28 = *(v6 + 48);

          return v28((v12 + ((((((v27 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12, v7, v5);
        }

        else
        {
          v29 = *(v11 + 48);

          return v29((v17 + ((((((((v16 + v27) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13);
        }
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_34;
  }

LABEL_21:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v24 = v18;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v14 + (v25 | v23) + 1;
}

void sub_1E68A9954(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 128);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  if (v9 >= 0)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(sub_1E68B1950() - 8);
  v13 = v12;
  if (*(v12 + 84) <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(v8 + 80);
  v16 = ((v15 + 96) & ~v15) + *(v8 + 64) + 7;
  v17 = *(v12 + 80);
  v18 = ((v17 + 24 + ((((((((v16 + ((v15 + 120) & ~(v15 | 7))) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + *(v12 + 64);
  if (a3 <= v14)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v14 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v14 < a2)
  {
    v20 = ~v14 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v18)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_57:
              if (v19 == 2)
              {
                *&a1[v18] = v21;
              }

              else
              {
                *&a1[v18] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v19)
    {
      a1[v18] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v18] = 0;
  }

  else if (v19)
  {
    a1[v18] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v14 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v25 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v25 = (a2 - 1);
    }

    *a1 = v25;
  }

  else
  {
    v26 = (((((((((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + (v15 | 7) + 16) & ~(v15 | 7);
    if (v10 == v14)
    {
      v27 = *(v29 + 56);

      v27((v15 + ((((((v26 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15, a2, v9, v7);
    }

    else
    {
      v28 = *(v13 + 56);

      v28((v17 + 24 + ((((((((v16 + v26) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v17, a2);
    }
  }
}

void sub_1E68A9D60(uint64_t a1)
{
  if (!qword_1EE2EBE80[0])
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED09A038, qword_1E68C6940);
    v5 = type metadata accessor for AssumeEquatable(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_1EE2EBE80);
    }
  }
}

void sub_1E68A9DC4(uint64_t a1)
{
  if (!qword_1EE2EA548)
  {
    type metadata accessor for CGSize(255);
    v1 = sub_1E68B2C00();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2EA548);
    }
  }
}

uint64_t sub_1E68A9E34(uint64_t a1, uint64_t (*a2)(uint64_t, char *, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v40 = *(v2 + 3);
  v38 = *(v2 + 5);
  v39 = *(v2 + 4);
  v36 = *(v2 + 7);
  v37 = *(v2 + 6);
  v34 = *(v2 + 9);
  v35 = *(v2 + 8);
  v32 = *(v2 + 11);
  v33 = *(v2 + 10);
  v30 = *(v2 + 13);
  v31 = *(v2 + 12);
  v28 = *(v2 + 15);
  v29 = *(v2 + 14);
  v26 = *(v2 + 17);
  v27 = *(v2 + 16);
  v24 = *(v2 + 19);
  v25 = *(v2 + 18);
  v22 = *(v2 + 21);
  v23 = *(v2 + 20);
  v20 = *(v2 + 23);
  v21 = *(v2 + 22);
  v18 = *(v2 + 25);
  v19 = *(v2 + 24);
  v16 = *(v2 + 27);
  v17 = *(v2 + 26);
  v3 = *(v2 + 29);
  v15 = *(v2 + 28);
  v44[0] = *(v2 + 2);
  v41 = v44[0];
  v44[1] = v40;
  v44[2] = v39;
  v44[3] = v38;
  v44[4] = v37;
  v44[5] = v36;
  v44[6] = v35;
  v44[7] = v34;
  v44[8] = v33;
  v44[9] = v32;
  v44[10] = v31;
  v44[11] = v30;
  v44[12] = v29;
  v44[13] = v28;
  v44[14] = v27;
  v44[15] = v26;
  v44[16] = v25;
  v44[17] = v24;
  v44[18] = v23;
  v44[19] = v22;
  v44[20] = v21;
  v44[21] = v20;
  v44[22] = v19;
  v44[23] = v18;
  v44[24] = v17;
  v44[25] = v16;
  v44[26] = v15;
  v44[27] = v3;
  v5 = *(v2 + 31);
  v45 = *(v2 + 30);
  v4 = v45;
  v46 = v5;
  v7 = *(v2 + 33);
  v47 = *(v2 + 32);
  v6 = v47;
  v48 = v7;
  v9 = *(v2 + 35);
  v49 = *(v2 + 34);
  v8 = v49;
  v50 = v9;
  v11 = *(v2 + 37);
  v51 = *(v2 + 36);
  v10 = v51;
  v52 = v11;
  v12 = *(type metadata accessor for CanvasContainerView(0, v44) - 8);
  v13 = (*(v12 + 80) + 304) & ~*(v12 + 80);
  return a2(a1, &v2[v13], *&v2[(*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8], v41, v40, v39, v38, v37, v36, v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1E68AA074(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = *(v4 + 304);
  v7 = a4;
  v8 = a2;
  v9 = a3 & 1;
  return v5(a1, &v8, &v7);
}

uint64_t sub_1E68AA0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = v2[3];
  v37 = v2[5];
  v38 = v2[4];
  v35 = v2[7];
  v36 = v2[6];
  v33 = v2[9];
  v34 = v2[8];
  v31 = v2[11];
  v32 = v2[10];
  v29 = v2[13];
  v30 = v2[12];
  v27 = v2[15];
  v28 = v2[14];
  v25 = v2[17];
  v26 = v2[16];
  v23 = v2[19];
  v24 = v2[18];
  v21 = v2[21];
  v22 = v2[20];
  v19 = v2[23];
  v20 = v2[22];
  v17 = v2[25];
  v18 = v2[24];
  v15 = v2[27];
  v16 = v2[26];
  v3 = v2[29];
  v14 = v2[28];
  v43[0] = v2[2];
  v40 = v43[0];
  v43[1] = v39;
  v43[2] = v38;
  v43[3] = v37;
  v43[4] = v36;
  v43[5] = v35;
  v43[6] = v34;
  v43[7] = v33;
  v43[8] = v32;
  v43[9] = v31;
  v43[10] = v30;
  v43[11] = v29;
  v43[12] = v28;
  v43[13] = v27;
  v43[14] = v26;
  v43[15] = v25;
  v43[16] = v24;
  v43[17] = v23;
  v43[18] = v22;
  v43[19] = v21;
  v43[20] = v20;
  v43[21] = v19;
  v43[22] = v18;
  v43[23] = v17;
  v43[24] = v16;
  v43[25] = v15;
  v43[26] = v14;
  v43[27] = v3;
  v5 = v2[31];
  v44 = v2[30];
  v4 = v44;
  v45 = v5;
  v7 = v2[33];
  v46 = v2[32];
  v6 = v46;
  v47 = v7;
  v9 = v2[35];
  v48 = v2[34];
  v8 = v48;
  v49 = v9;
  v11 = v2[37];
  v50 = v2[36];
  v10 = v50;
  v51 = v11;
  v12 = *(type metadata accessor for CanvasContainerView(0, v43) - 8);
  return sub_1E68A86E4(a1, v2 + ((*(v12 + 80) + 304) & ~*(v12 + 80)), v40, v39, v38, v37, v36, v35, a2, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1E68AA2EC()
{
  v52 = v0[4];
  v53 = v0[3];
  v50 = v0[6];
  v51 = v0[5];
  v48 = v0[8];
  v49 = v0[7];
  v46 = v0[10];
  v47 = v0[9];
  v44 = v0[12];
  v45 = v0[11];
  v42 = v0[14];
  v43 = v0[13];
  v40 = v0[16];
  v41 = v0[15];
  v38 = v0[18];
  v39 = v0[17];
  v36 = v0[20];
  v37 = v0[19];
  v34 = v0[22];
  v35 = v0[21];
  v32 = v0[24];
  v33 = v0[23];
  v30 = v0[26];
  v31 = v0[25];
  v28 = v0[28];
  v29 = v0[27];
  v26 = v0[30];
  v27 = v0[29];
  v54 = v0[31];
  v56[0] = v0[2];
  v55 = v56[0];
  v56[1] = v53;
  v56[2] = v52;
  v56[3] = v51;
  v56[4] = v50;
  v56[5] = v49;
  v56[6] = v48;
  v56[7] = v47;
  v56[8] = v46;
  v56[9] = v45;
  v56[10] = v44;
  v56[11] = v43;
  v56[12] = v42;
  v56[13] = v41;
  v56[14] = v40;
  v56[15] = v39;
  v56[16] = v38;
  v56[17] = v37;
  v56[18] = v36;
  v56[19] = v35;
  v56[20] = v34;
  v56[21] = v33;
  v56[22] = v32;
  v56[23] = v31;
  v56[24] = v30;
  v56[25] = v29;
  v56[26] = v28;
  v56[27] = v27;
  v56[28] = v26;
  v56[29] = v54;
  v2 = v0[33];
  v57 = v0[32];
  v1 = v57;
  v58 = v2;
  v4 = v0[35];
  v59 = v0[34];
  v3 = v59;
  v60 = v4;
  v6 = v0[37];
  v61 = v0[36];
  v5 = v61;
  v62 = v6;
  v7 = *(type metadata accessor for CanvasContainerView(0, v56) - 8);
  v8 = (*(v7 + 80) + 304) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1E68B1C90() - 8);
  *&v25 = v3;
  *(&v25 + 1) = v4;
  *&v24 = v1;
  *(&v24 + 1) = v2;
  *&v23 = v26;
  *(&v23 + 1) = v54;
  *&v22 = v28;
  *(&v22 + 1) = v27;
  *&v21 = v30;
  *(&v21 + 1) = v29;
  *&v20 = v32;
  *(&v20 + 1) = v31;
  *&v19 = v34;
  *(&v19 + 1) = v33;
  *&v18 = v36;
  *(&v18 + 1) = v35;
  *&v17 = v38;
  *(&v17 + 1) = v37;
  *&v16 = v40;
  *(&v16 + 1) = v39;
  *&v15 = v42;
  *(&v15 + 1) = v41;
  *&v14 = v44;
  *(&v14 + 1) = v43;
  *&v13 = v46;
  *(&v13 + 1) = v45;
  *&v12 = v48;
  *(&v12 + 1) = v47;
  return sub_1E68A8DF8(v0 + v8, v0 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), v55, v53, v52, v51, v50, v49, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v5, v6);
}

uint64_t sub_1E68AA56C(uint64_t a1, uint64_t a2)
{
  v54 = v2[3];
  v52 = v2[5];
  v53 = v2[4];
  v50 = v2[7];
  v51 = v2[6];
  v48 = v2[9];
  v49 = v2[8];
  v46 = v2[11];
  v47 = v2[10];
  v44 = v2[13];
  v45 = v2[12];
  v42 = v2[15];
  v43 = v2[14];
  v40 = v2[17];
  v41 = v2[16];
  v38 = v2[19];
  v39 = v2[18];
  v36 = v2[21];
  v37 = v2[20];
  v34 = v2[23];
  v35 = v2[22];
  v32 = v2[25];
  v33 = v2[24];
  v30 = v2[27];
  v31 = v2[26];
  v3 = v2[29];
  v29 = v2[28];
  v58[0] = v2[2];
  v55 = v58[0];
  v58[1] = v54;
  v58[2] = v53;
  v58[3] = v52;
  v58[4] = v51;
  v58[5] = v50;
  v58[6] = v49;
  v58[7] = v48;
  v58[8] = v47;
  v58[9] = v46;
  v58[10] = v45;
  v58[11] = v44;
  v58[12] = v43;
  v58[13] = v42;
  v58[14] = v41;
  v58[15] = v40;
  v58[16] = v39;
  v58[17] = v38;
  v58[18] = v37;
  v58[19] = v36;
  v58[20] = v35;
  v58[21] = v34;
  v58[22] = v33;
  v58[23] = v32;
  v58[24] = v31;
  v58[25] = v30;
  v58[26] = v29;
  v58[27] = v3;
  v5 = v2[31];
  v59 = v2[30];
  v4 = v59;
  v60 = v5;
  v7 = v2[33];
  v61 = v2[32];
  v6 = v61;
  v62 = v7;
  v9 = v2[35];
  v63 = v2[34];
  v8 = v63;
  v64 = v9;
  v11 = v2[37];
  v65 = v2[36];
  v10 = v65;
  v66 = v11;
  v12 = *(type metadata accessor for CanvasContainerView(0, v58) - 8);
  *(&v28 + 1) = v10;
  *(&v27 + 1) = v8;
  *&v28 = v9;
  *(&v26 + 1) = v6;
  *&v27 = v7;
  *(&v25 + 1) = v4;
  *&v26 = v5;
  *(&v24 + 1) = v29;
  *&v25 = v3;
  *(&v23 + 1) = v31;
  *&v24 = v30;
  *&v23 = v32;
  *&v22 = v34;
  *(&v22 + 1) = v33;
  *&v21 = v36;
  *(&v21 + 1) = v35;
  *&v20 = v38;
  *(&v20 + 1) = v37;
  *&v19 = v40;
  *(&v19 + 1) = v39;
  *&v18 = v42;
  *(&v18 + 1) = v41;
  *&v17 = v44;
  *(&v17 + 1) = v43;
  *&v16 = v46;
  *(&v16 + 1) = v45;
  *&v15 = v48;
  *(&v15 + 1) = v47;
  *&v14 = v50;
  *(&v14 + 1) = v49;
  return sub_1E68A9014(a1, a2, v2 + ((*(v12 + 80) + 304) & ~*(v12 + 80)), v55, v54, v53, v52, v51, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v11);
}

uint64_t sub_1E68AA77C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1E68AA7EC()
{
  result = qword_1ED09A048;
  if (!qword_1ED09A048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED09A040, &unk_1E68C6990);
    sub_1E68AA8A0(&qword_1EE2EA440, type metadata accessor for CGSize, MEMORY[0x1E695EF98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED09A048);
  }

  return result;
}

uint64_t sub_1E68AA8A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E68AA900(uint64_t (*a1)(void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void))
{
  v5 = *(v1 + 264);
  v6 = *(v1 + 280);
  v3 = *(v1 + 232);
  v4 = *(v1 + 248);
  return a1(*(v1 + 304), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120), *(v1 + 128), *(v1 + 136), *(v1 + 144), *(v1 + 152), *(v1 + 160), *(v1 + 168), *(v1 + 176), *(v1 + 184), *(v1 + 192), *(v1 + 200), *(v1 + 208), *(v1 + 216), *(v1 + 224), v3, *(&v3 + 1), v4, *(&v4 + 1), v5, *(&v5 + 1), v6, *(&v6 + 1), *(v1 + 296));
}

uint64_t sub_1E68AA9BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v40 = *(v3 + 3);
  v38 = *(v3 + 5);
  v39 = *(v3 + 4);
  v36 = *(v3 + 7);
  v37 = *(v3 + 6);
  v34 = *(v3 + 9);
  v35 = *(v3 + 8);
  v32 = *(v3 + 11);
  v33 = *(v3 + 10);
  v30 = *(v3 + 13);
  v31 = *(v3 + 12);
  v28 = *(v3 + 15);
  v29 = *(v3 + 14);
  v26 = *(v3 + 17);
  v27 = *(v3 + 16);
  v24 = *(v3 + 19);
  v25 = *(v3 + 18);
  v22 = *(v3 + 21);
  v23 = *(v3 + 20);
  v20 = *(v3 + 23);
  v21 = *(v3 + 22);
  v18 = *(v3 + 25);
  v19 = *(v3 + 24);
  v16 = *(v3 + 27);
  v17 = *(v3 + 26);
  v45[0] = *(v3 + 2);
  v41 = v45[0];
  v45[1] = v40;
  v45[2] = v39;
  v45[3] = v38;
  v45[4] = v37;
  v45[5] = v36;
  v45[6] = v35;
  v45[7] = v34;
  v45[8] = v33;
  v45[9] = v32;
  v45[10] = v31;
  v45[11] = v30;
  v45[12] = v29;
  v45[13] = v28;
  v45[14] = v27;
  v45[15] = v26;
  v45[16] = v25;
  v45[17] = v24;
  v45[18] = v23;
  v45[19] = v22;
  v45[20] = v21;
  v45[21] = v20;
  v45[22] = v19;
  v45[23] = v18;
  v45[24] = v17;
  v45[25] = v16;
  v4 = *(v3 + 29);
  v46 = *(v3 + 28);
  v15 = v46;
  v47 = v4;
  v6 = *(v3 + 31);
  v48 = *(v3 + 30);
  v5 = v48;
  v49 = v6;
  v8 = *(v3 + 33);
  v50 = *(v3 + 32);
  v7 = v50;
  v51 = v8;
  v10 = *(v3 + 35);
  v52 = *(v3 + 34);
  v9 = v52;
  v53 = v10;
  v12 = *(v3 + 37);
  v54 = *(v3 + 36);
  v11 = v54;
  v55 = v12;
  v13 = *(type metadata accessor for CanvasContainerView(0, v45) - 8);
  return a3(a1, a2, &v3[(*(v13 + 80) + 304) & ~*(v13 + 80)], v41, v40, v39, v38, v37, v36, v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v4, v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1E68AABDC(uint64_t a1)
{
  v51 = v1[4];
  v52 = v1[3];
  v49 = v1[6];
  v50 = v1[5];
  v47 = v1[8];
  v48 = v1[7];
  v45 = v1[10];
  v46 = v1[9];
  v43 = v1[12];
  v44 = v1[11];
  v41 = v1[14];
  v42 = v1[13];
  v39 = v1[16];
  v40 = v1[15];
  v37 = v1[18];
  v38 = v1[17];
  v35 = v1[20];
  v36 = v1[19];
  v33 = v1[22];
  v34 = v1[21];
  v31 = v1[24];
  v32 = v1[23];
  v29 = v1[26];
  v30 = v1[25];
  v2 = v1[29];
  v27 = v1[28];
  v28 = v1[27];
  v55[0] = v1[2];
  v53 = v55[0];
  v55[1] = v52;
  v55[2] = v51;
  v55[3] = v50;
  v55[4] = v49;
  v55[5] = v48;
  v55[6] = v47;
  v55[7] = v46;
  v55[8] = v45;
  v55[9] = v44;
  v55[10] = v43;
  v55[11] = v42;
  v55[12] = v41;
  v55[13] = v40;
  v55[14] = v39;
  v55[15] = v38;
  v55[16] = v37;
  v55[17] = v36;
  v55[18] = v35;
  v55[19] = v34;
  v55[20] = v33;
  v55[21] = v32;
  v55[22] = v31;
  v55[23] = v30;
  v55[24] = v29;
  v55[25] = v28;
  v55[26] = v27;
  v55[27] = v2;
  v4 = v1[31];
  v56 = v1[30];
  v3 = v56;
  v57 = v4;
  v6 = v1[33];
  v58 = v1[32];
  v5 = v58;
  v59 = v6;
  v8 = v1[35];
  v60 = v1[34];
  v7 = v60;
  v61 = v8;
  v9 = v1[37];
  v62 = v1[36];
  v10 = v62;
  v63 = v9;
  v11 = *(type metadata accessor for CanvasContainerView(0, v55) - 8);
  *&v26 = v7;
  *(&v26 + 1) = v8;
  *&v25 = v5;
  *(&v25 + 1) = v6;
  *&v24 = v3;
  *(&v24 + 1) = v4;
  *&v23 = v27;
  *(&v23 + 1) = v2;
  *&v22 = v29;
  *(&v22 + 1) = v28;
  *(&v21 + 1) = v30;
  *(&v20 + 1) = v32;
  *&v21 = v31;
  *(&v19 + 1) = v34;
  *&v20 = v33;
  *(&v18 + 1) = v36;
  *&v19 = v35;
  *(&v17 + 1) = v38;
  *&v18 = v37;
  *(&v16 + 1) = v40;
  *&v17 = v39;
  *(&v15 + 1) = v42;
  *&v16 = v41;
  *(&v14 + 1) = v44;
  *&v15 = v43;
  *(&v13 + 1) = v46;
  *&v14 = v45;
  *&v13 = v47;
  return sub_1E68A7DAC(a1, v1 + ((*(v11 + 80) + 304) & ~*(v11 + 80)), v53, v52, v51, v50, v49, v48, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v10, v9);
}

uint64_t sub_1E68AADE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v36 = v4[3];
  v34 = v4[5];
  v35 = v4[4];
  v32 = v4[7];
  v33 = v4[6];
  v30 = v4[9];
  v31 = v4[8];
  v28 = v4[11];
  v29 = v4[10];
  v26 = v4[13];
  v27 = v4[12];
  v24 = v4[15];
  v25 = v4[14];
  v22 = v4[17];
  v23 = v4[16];
  v20 = v4[19];
  v21 = v4[18];
  v18 = v4[21];
  v19 = v4[20];
  v16 = v4[23];
  v17 = v4[22];
  v14 = v4[25];
  v15 = v4[24];
  v12 = v4[27];
  v13 = v4[26];
  v41[0] = v4[2];
  v41[1] = v36;
  v41[2] = v35;
  v41[3] = v34;
  v41[4] = v33;
  v41[5] = v32;
  v41[6] = v31;
  v41[7] = v30;
  v41[8] = v29;
  v41[9] = v28;
  v41[10] = v27;
  v41[11] = v26;
  v41[12] = v25;
  v41[13] = v24;
  v41[14] = v23;
  v41[15] = v22;
  v41[16] = v21;
  v41[17] = v20;
  v41[18] = v19;
  v41[19] = v18;
  v41[20] = v17;
  v41[21] = v16;
  v41[22] = v15;
  v41[23] = v14;
  v41[24] = v13;
  v41[25] = v12;
  v5 = v4[29];
  v41[26] = v4[28];
  v41[27] = v5;
  v6 = v4[31];
  v41[28] = v4[30];
  v41[29] = v6;
  v7 = v4[33];
  v41[30] = v4[32];
  v41[31] = v7;
  v8 = v4[35];
  v41[32] = v4[34];
  v41[33] = v8;
  v9 = v4[37];
  v41[34] = v4[36];
  v41[35] = v9;
  v10 = *(type metadata accessor for CanvasContainerView(0, v41) - 8);
  return sub_1E68A7E58(a1, a2, a3 & 1, *(v4 + ((*(v10 + 64) + ((*(v10 + 80) + 304) & ~*(v10 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8)), a4, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v13, v12);
}

uint64_t sub_1E68AB040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = v4[3];
  v53 = v4[5];
  v54 = v4[4];
  v51 = v4[7];
  v52 = v4[6];
  v49 = v4[9];
  v50 = v4[8];
  v47 = v4[11];
  v48 = v4[10];
  v45 = v4[13];
  v46 = v4[12];
  v43 = v4[15];
  v44 = v4[14];
  v41 = v4[17];
  v42 = v4[16];
  v39 = v4[19];
  v40 = v4[18];
  v37 = v4[21];
  v38 = v4[20];
  v35 = v4[23];
  v36 = v4[22];
  v33 = v4[25];
  v34 = v4[24];
  v31 = v4[27];
  v32 = v4[26];
  v61[0] = v4[2];
  v56 = v61[0];
  v61[1] = v55;
  v61[2] = v54;
  v61[3] = v53;
  v61[4] = v52;
  v61[5] = v51;
  v61[6] = v50;
  v61[7] = v49;
  v61[8] = v48;
  v61[9] = v47;
  v61[10] = v46;
  v61[11] = v45;
  v61[12] = v44;
  v61[13] = v43;
  v61[14] = v42;
  v61[15] = v41;
  v61[16] = v40;
  v61[17] = v39;
  v61[18] = v38;
  v61[19] = v37;
  v61[20] = v36;
  v61[21] = v35;
  v61[22] = v34;
  v61[23] = v33;
  v61[24] = v32;
  v61[25] = v31;
  v5 = v4[29];
  v62 = v4[28];
  v30 = v62;
  v63 = v5;
  v7 = v4[31];
  v64 = v4[30];
  v6 = v64;
  v65 = v7;
  v9 = v4[33];
  v66 = v4[32];
  v8 = v66;
  v67 = v9;
  v11 = v4[35];
  v68 = v4[34];
  v10 = v68;
  v69 = v11;
  v13 = v4[37];
  v70 = v4[36];
  v12 = v70;
  v71 = v13;
  v14 = *(type metadata accessor for CanvasContainerView(0, v61) - 8);
  v15 = (*(v14 + 80) + 304) & ~*(v14 + 80);
  *(&v29 + 1) = v12;
  *(&v28 + 1) = v10;
  *&v29 = v11;
  *(&v27 + 1) = v8;
  *&v28 = v9;
  *(&v26 + 1) = v6;
  *&v27 = v7;
  *(&v25 + 1) = v30;
  *&v26 = v5;
  *&v25 = v31;
  *(&v24 + 1) = v35;
  *(&v23 + 1) = v37;
  *&v24 = v36;
  *(&v22 + 1) = v39;
  *&v23 = v38;
  *(&v21 + 1) = v41;
  *&v22 = v40;
  *(&v20 + 1) = v43;
  *&v21 = v42;
  *(&v19 + 1) = v45;
  *&v20 = v44;
  *(&v18 + 1) = v47;
  *&v19 = v46;
  *&v18 = v48;
  *&v17 = v53;
  *(&v17 + 1) = v52;
  return sub_1E68A8058(a1, a2, a3, v4 + v15, *(v4 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8)), v56, v55, v54, a4, v17, v51, v50, v49, v18, v19, v20, v21, v22, v23, v24, v34, v33, v32, v25, v26, v27, v28, v29, v13);
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 280);
  v3 = *(v0 + 32);
  v15 = *(v0 + 16);
  v16 = v3;
  v4 = *(v0 + 64);
  v17 = *(v0 + 48);
  v18 = v4;
  v5 = *(v0 + 96);
  v19 = *(v0 + 80);
  v20 = v5;
  v21 = *(v0 + 112);
  v22 = v1;
  v23 = *(v0 + 136);
  v14 = v23;
  v24 = *(v0 + 152);
  v25 = *(v0 + 168);
  v26 = *(v0 + 184);
  v27 = *(v0 + 200);
  v28 = *(v0 + 216);
  v29 = *(v0 + 232);
  v30 = *(v0 + 248);
  v31 = *(v0 + 264);
  v32 = v2;
  v33 = *(v0 + 288);
  v13 = v33;
  v6 = (type metadata accessor for CanvasContainerView(0, &v15) - 8);
  v7 = v0 + ((*(*v6 + 80) + 304) & ~*(*v6 + 80));

  v8 = v7 + v6[86];

  *&v15 = v14;
  *(&v15 + 1) = v1;
  *&v16 = v13;
  *(&v16 + 1) = v2;
  v9 = type metadata accessor for CanvasLayout(0, &v15);
  (*(*(v1 - 8) + 8))(v8 + *(v9 + 72), v1);

  v10 = v6[91];
  v11 = sub_1E68B1950();
  (*(*(v11 - 8) + 8))(v7 + v10, v11);
  return swift_deallocObject();
}

uint64_t objectdestroy_12Tm()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 280);
  v3 = *(v0 + 32);
  v15 = *(v0 + 16);
  v16 = v3;
  v4 = *(v0 + 64);
  v17 = *(v0 + 48);
  v18 = v4;
  v5 = *(v0 + 96);
  v19 = *(v0 + 80);
  v20 = v5;
  v21 = *(v0 + 112);
  v22 = v1;
  v23 = *(v0 + 136);
  v14 = v23;
  v24 = *(v0 + 152);
  v25 = *(v0 + 168);
  v26 = *(v0 + 184);
  v27 = *(v0 + 200);
  v28 = *(v0 + 216);
  v29 = *(v0 + 232);
  v30 = *(v0 + 248);
  v31 = *(v0 + 264);
  v32 = v2;
  v33 = *(v0 + 288);
  v13 = v33;
  v6 = (type metadata accessor for CanvasContainerView(0, &v15) - 8);
  v7 = v0 + ((*(*v6 + 80) + 304) & ~*(*v6 + 80));

  v8 = v7 + v6[86];

  *&v15 = v14;
  *(&v15 + 1) = v1;
  *&v16 = v13;
  *(&v16 + 1) = v2;
  v9 = type metadata accessor for CanvasLayout(0, &v15);
  (*(*(v1 - 8) + 8))(v8 + *(v9 + 72), v1);

  v10 = v6[91];
  v11 = sub_1E68B1950();
  (*(*(v11 - 8) + 8))(v7 + v10, v11);
  return swift_deallocObject();
}

uint64_t sub_1E68AB82C(uint64_t a1)
{
  v2 = sub_1E68ABDA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68AB868(uint64_t a1)
{
  v2 = sub_1E68ABDA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E68AB8A4()
{
  if (*v0)
  {
    return 0x7265746E6563;
  }

  else
  {
    return 0x676E696461656CLL;
  }
}

uint64_t sub_1E68AB8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E696461656CLL && a2 == 0xE700000000000000;
  if (v6 || (sub_1E68B3B00() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265746E6563 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E68B3B00();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E68AB9B4(uint64_t a1)
{
  v2 = sub_1E68ABD54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68AB9F0(uint64_t a1)
{
  v2 = sub_1E68ABD54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E68ABA2C(uint64_t a1)
{
  v2 = sub_1E68ABDFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68ABA68(uint64_t a1)
{
  v2 = sub_1E68ABDFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VerticalStackHorizontalAlignment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A050, &qword_1E68C69A0);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v21 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A058, &qword_1E68C69A8);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A060, &qword_1E68C69B0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v19 - v13;
  v15 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68ABD54();
  sub_1E68B3BD0();
  v16 = (v11 + 8);
  if (v15)
  {
    v25 = 1;
    sub_1E68ABDA8();
    v17 = v21;
    sub_1E68B3A30();
    (*(v22 + 8))(v17, v23);
  }

  else
  {
    v24 = 0;
    sub_1E68ABDFC();
    sub_1E68B3A30();
    (*(v19 + 8))(v9, v20);
  }

  return (*v16)(v14, v10);
}

unint64_t sub_1E68ABD54()
{
  result = qword_1EE2EAB70;
  if (!qword_1EE2EAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EAB70);
  }

  return result;
}

unint64_t sub_1E68ABDA8()
{
  result = qword_1ED09A068;
  if (!qword_1ED09A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED09A068);
  }

  return result;
}

unint64_t sub_1E68ABDFC()
{
  result = qword_1EE2EAB48;
  if (!qword_1EE2EAB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EAB48);
  }

  return result;
}

uint64_t VerticalStackHorizontalAlignment.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A070, &qword_1E68C69B8);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A078, &qword_1E68C69C0);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A080, &unk_1E68C69C8);
  v33 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v27 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68ABD54();
  v15 = v34;
  sub_1E68B3BC0();
  if (v15)
  {
    v16 = a1;
  }

  else
  {
    v28 = v7;
    v34 = a1;
    v17 = v31;
    v18 = v32;
    v19 = sub_1E68B3A10();
    v20 = (2 * *(v19 + 16)) | 1;
    v35 = v19;
    v36 = v19 + 32;
    v37 = 0;
    v38 = v20;
    v21 = sub_1E676F5C8();
    if (v21 == 2 || v37 != v38 >> 1)
    {
      v23 = sub_1E68B3870();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050, &qword_1E68B4D20);
      *v25 = &type metadata for VerticalStackHorizontalAlignment;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v33 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = v21;
      if (v21)
      {
        v40 = 1;
        sub_1E68ABDA8();
        sub_1E68B3970();
        v22 = v33;
        (*(v30 + 8))(v6, v17);
      }

      else
      {
        v40 = 0;
        sub_1E68ABDFC();
        sub_1E68B3970();
        v22 = v33;
        (*(v29 + 8))(v10, v28);
      }

      (*(v22 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v18 = v39 & 1;
    }

    v16 = v34;
  }

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t VerticalStackHorizontalAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v1);
  return sub_1E68B3BB0();
}

unint64_t sub_1E68AC3B4()
{
  result = qword_1ED09A088;
  if (!qword_1ED09A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED09A088);
  }

  return result;
}

unint64_t sub_1E68AC44C()
{
  result = qword_1ED09A090[0];
  if (!qword_1ED09A090[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED09A090);
  }

  return result;
}

unint64_t sub_1E68AC4A4()
{
  result = qword_1EE2EAB38;
  if (!qword_1EE2EAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EAB38);
  }

  return result;
}

unint64_t sub_1E68AC4FC()
{
  result = qword_1EE2EAB40;
  if (!qword_1EE2EAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EAB40);
  }

  return result;
}

unint64_t sub_1E68AC554()
{
  result = qword_1EE2EAB50;
  if (!qword_1EE2EAB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EAB50);
  }

  return result;
}

unint64_t sub_1E68AC5AC()
{
  result = qword_1EE2EAB58;
  if (!qword_1EE2EAB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EAB58);
  }

  return result;
}

unint64_t sub_1E68AC604()
{
  result = qword_1EE2EAB60;
  if (!qword_1EE2EAB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EAB60);
  }

  return result;
}

unint64_t sub_1E68AC65C()
{
  result = qword_1EE2EAB68;
  if (!qword_1EE2EAB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EAB68);
  }

  return result;
}

uint64_t static CanvasHorizontalGridLayout.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a1;
  v49 = a2;
  v46 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v44 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v45 = v43 - v7;
  v43[1] = v8;
  v10 = type metadata accessor for CanvasHorizontalGridLayout(0, v9, v8, v8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v43 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = *(TupleTypeMetadata2 - 8);
  v22 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v21);
  v24 = v43 - v23;
  v26 = (v43 + *(v25 + 48) - v23);
  v47 = v11;
  v27 = *(v11 + 16);
  v27(v43 - v23, v48, v10, v22);
  (v27)(v26, v49, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (v27)(v14, v24, v10);
    v28 = *(swift_getTupleTypeMetadata2() + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v49 = *v14;
      v29 = *v26;
      v30 = v46;
      v31 = *(v46 + 32);
      v32 = v14 + v28;
      v33 = v45;
      v31(v45, v32, a3);
      v34 = v26 + v28;
      v35 = v44;
      v31(v44, v34, a3);
      if (v49 == v29)
      {
        v36 = sub_1E68B3190();
        v37 = *(v30 + 8);
        v37(v35, a3);
        v37(v33, a3);
LABEL_17:
        v20 = v47;
        TupleTypeMetadata2 = v10;
        goto LABEL_18;
      }

      v41 = *(v30 + 8);
      v41(v35, a3);
      v41(v33, a3);
LABEL_16:
      v36 = 0;
      goto LABEL_17;
    }

    (*(v46 + 8))(v14 + v28, a3);
  }

  else
  {
    (v27)(v18, v24, v10);
    v38 = *(v18 + 1);
    v39 = *(v18 + 2);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (*v18 == *v26)
      {
        v36 = v39 == v26[2] && v38 == *(v26 + 1);
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  v36 = 0;
LABEL_18:
  (*(v20 + 8))(v24, TupleTypeMetadata2);
  return v36 & 1;
}

uint64_t CanvasHorizontalGridLayout.rowCount.getter(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1EEE9AC00](a1, v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *(v6 + 1);
  }

  v8 = *v6;
  v9 = *(a1 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(v9 - 8) + 8))(&v6[*(TupleTypeMetadata2 + 48)], v9);
  return v8;
}

uint64_t sub_1E68ACC14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F74737563 && a2 == 0xE600000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x46797469736E6564 && a2 == 0xED0000726F746361)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E68ACCE4(char a1)
{
  if (a1)
  {
    return 0x46797469736E6564;
  }

  else
  {
    return 0x6D6F74737563;
  }
}

uint64_t sub_1E68ACD24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F436E6D756C6F63 && a2 == 0xEB00000000746E75;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F43776F72 && a2 == 0xE800000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E6963617073 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E68ACE40(char a1)
{
  if (!a1)
  {
    return 0x6F436E6D756C6F63;
  }

  if (a1 == 1)
  {
    return 0x746E756F43776F72;
  }

  return 0x676E6963617073;
}

uint64_t sub_1E68ACEA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F43776F72 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x46797469736E6564 && a2 == 0xED0000726F746361)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E68ACF74(char a1)
{
  if (a1)
  {
    return 0x46797469736E6564;
  }

  else
  {
    return 0x746E756F43776F72;
  }
}

uint64_t sub_1E68ACFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E68ACC14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E68AD010(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E68AD064(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E68AD0C4(uint64_t a1)
{
  sub_1E68B3B70();
  sub_1E6739CF4(v3, *v1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E68AD118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E68ACD24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E68AD148(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E68AD19C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E68AD1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void))
{
  sub_1E68B3B70();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_1E68B3BB0();
}

uint64_t sub_1E68AD258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E68ACEA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E68AD288(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E68AD2DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CanvasHorizontalGridLayout.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = type metadata accessor for CanvasHorizontalGridLayout.DensityFactorCodingKeys(255, v6, v7, a4);
  WitnessTable = swift_getWitnessTable();
  v47 = v8;
  v9 = sub_1E68B3AC0();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v48 = v42 - v11;
  v54 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v57 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CanvasHorizontalGridLayout.CustomCodingKeys(255, v6, v7, v15);
  v42[1] = swift_getWitnessTable();
  v42[2] = v16;
  v17 = sub_1E68B3AC0();
  v44 = *(v17 - 8);
  v45 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v43 = v42 - v19;
  v20 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v6;
  v42[0] = v7;
  type metadata accessor for CanvasHorizontalGridLayout.CodingKeys(255, v6, v7, v25);
  swift_getWitnessTable();
  v52 = sub_1E68B3AC0();
  v56 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v26);
  v28 = v42 - v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68B3BD0();
  (*(v20 + 16))(v24, v53, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = v51;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(v54 + 32))(v57, &v24[*(TupleTypeMetadata2 + 48)], v29);
    v65[0] = 1;
    v31 = v48;
    v32 = v52;
    sub_1E68B3A30();
    v64 = 0;
    v33 = v50;
    v34 = v55;
    sub_1E68B3AA0();
    if (v34)
    {
      (*(v49 + 8))(v31, v33);
      (*(v54 + 8))(v57, v29);
    }

    else
    {
      v40 = v54;
      v63 = 1;
      sub_1E68B3AB0();
      (*(v49 + 8))(v31, v33);
      (*(v40 + 8))(v57, v29);
    }

    return (*(v56 + 8))(v28, v32);
  }

  else
  {
    v35 = *(v24 + 2);
    v62 = 0;
    v36 = v43;
    v37 = v52;
    sub_1E68B3A30();
    v61 = 0;
    v38 = v45;
    v39 = v55;
    sub_1E68B3AA0();
    if (!v39)
    {
      v60 = 1;
      sub_1E68B3AA0();
      v59 = v35;
      v58 = 2;
      sub_1E67621E8();
      sub_1E68B3AB0();
    }

    (*(v44 + 8))(v36, v38);
    return (*(v56 + 8))(v28, v37);
  }
}

uint64_t CanvasHorizontalGridLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a5;
  v8 = type metadata accessor for CanvasHorizontalGridLayout.DensityFactorCodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v74 = v8;
  v69 = sub_1E68B3A20();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v9);
  v76 = &v61 - v10;
  v12 = type metadata accessor for CanvasHorizontalGridLayout.CustomCodingKeys(255, a2, a3, v11);
  v71 = swift_getWitnessTable();
  v72 = v12;
  v67 = sub_1E68B3A20();
  v70 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v13);
  v75 = &v61 - v14;
  type metadata accessor for CanvasHorizontalGridLayout.CodingKeys(255, a2, a3, v15);
  swift_getWitnessTable();
  v78 = sub_1E68B3A20();
  v80 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v16);
  v18 = &v61 - v17;
  v79 = a2;
  v66 = a3;
  v20 = type metadata accessor for CanvasHorizontalGridLayout(0, a2, a3, v19);
  v64 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v61 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v61 - v30;
  v32 = a1[3];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  v77 = v18;
  v33 = v81;
  sub_1E68B3BC0();
  if (!v33)
  {
    v81 = v23;
    v62 = v27;
    v63 = v31;
    v34 = v77;
    v35 = v78;
    *&v83 = sub_1E68B3A10();
    sub_1E68B33B0();
    swift_getWitnessTable();
    *&v85 = sub_1E68B37A0();
    *(&v85 + 1) = v36;
    *&v86 = v37;
    *(&v86 + 1) = v38;
    sub_1E68B3790();
    swift_getWitnessTable();
    sub_1E68B36B0();
    v39 = v83;
    if (v83 == 2 || (v61 = v85, v83 = v85, v84 = v86, (sub_1E68B36E0() & 1) == 0))
    {
      v45 = sub_1E68B3870();
      swift_allocError();
      v47 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050, &qword_1E68B4D20);
      *v47 = v20;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
      swift_willThrow();
      (*(v80 + 8))(v34, v35);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v39)
      {
        LOBYTE(v83) = 1;
        v40 = v76;
        sub_1E68B3970();
        LOBYTE(v83) = 0;
        v41 = v69;
        v42 = sub_1E68B39F0();
        v43 = v80;
        v75 = v42;
        swift_getTupleTypeMetadata2();
        v44 = v81;
        *v81 = v75;
        LOBYTE(v83) = 1;
        sub_1E68B3A00();
        (*(v68 + 8))(v40, v41);
        (*(v43 + 8))(v34, v35);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v55 = *(v64 + 32);
        v56 = v63;
        v55(v63, v44, v20);
      }

      else
      {
        LOBYTE(v83) = 0;
        v48 = v75;
        sub_1E68B3970();
        v49 = v34;
        LOBYTE(v83) = 0;
        v50 = v67;
        v51 = sub_1E68B39F0();
        v52 = v80;
        v53 = v51;
        LOBYTE(v83) = 1;
        v57 = v48;
        v58 = sub_1E68B39F0();
        v87 = 2;
        sub_1E6762A60();
        sub_1E68B3A00();
        (*(v70 + 8))(v57, v50);
        (*(v52 + 8))(v49, v35);
        swift_unknownObjectRelease();
        v59 = v83;
        v60 = v62;
        *v62 = v53;
        v60[1] = v58;
        v60[2] = v59;
        swift_storeEnumTagMultiPayload();
        v55 = *(v64 + 32);
        v56 = v63;
        v55(v63, v60, v20);
      }

      v55(v65, v56, v20);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v82);
}

uint64_t CanvasHorizontalGridLayout.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v13, a2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v15 = *v11;
  if (EnumCaseMultiPayload == 1)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(v4 + 32))(v6, &v11[*(TupleTypeMetadata2 + 48)], v3);
    MEMORY[0x1E69523D0](1);
    MEMORY[0x1E69523D0](v15);
    sub_1E68B3140();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v18 = *(v11 + 1);
    v19 = *(v11 + 2);
    MEMORY[0x1E69523D0](0);
    MEMORY[0x1E69523D0](v15);
    MEMORY[0x1E69523D0](v18);
    v20 = 0.0;
    if (v19 != 0.0)
    {
      v20 = v19;
    }

    return MEMORY[0x1E69523F0](*&v20);
  }
}

uint64_t CanvasHorizontalGridLayout.hashValue.getter(uint64_t a1)
{
  sub_1E68B3B70();
  CanvasHorizontalGridLayout.hash(into:)(v3, a1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E68AE50C(uint64_t a1, uint64_t a2)
{
  sub_1E68B3B70();
  CanvasHorizontalGridLayout.hash(into:)(v4, a2);
  return sub_1E68B3BB0();
}

uint64_t sub_1E68AE578(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = 24;
  if (((*(*(*(a3 + 16) - 8) + 80) + 8) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64) > 0x18)
  {
    v3 = ((*(*(*(a3 + 16) - 8) + 80) + 8) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1E68AE6CC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 80) + 8) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x18)
  {
    v5 = 24;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1E68AE9D4(uint64_t a1)
{
  v2 = sub_1E68AEF40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68AEA10(uint64_t a1)
{
  v2 = sub_1E68AEF40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E68AEA4C()
{
  if (*v0)
  {
    return 1920298082;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1E68AEA70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E68B3B00() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1920298082 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E68B3B00();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E68AEB4C(uint64_t a1)
{
  v2 = sub_1E68AEEEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68AEB88(uint64_t a1)
{
  v2 = sub_1E68AEEEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E68AEBC4(uint64_t a1)
{
  v2 = sub_1E68AEF94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68AEC00(uint64_t a1)
{
  v2 = sub_1E68AEF94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Overlay.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A218, &qword_1E68C7200);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v21 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A220, &qword_1E68C7208);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A228, &qword_1E68C7210);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v19 - v13;
  v15 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68AEEEC();
  sub_1E68B3BD0();
  v16 = (v11 + 8);
  if (v15)
  {
    v25 = 1;
    sub_1E68AEF40();
    v17 = v21;
    sub_1E68B3A30();
    (*(v22 + 8))(v17, v23);
  }

  else
  {
    v24 = 0;
    sub_1E68AEF94();
    sub_1E68B3A30();
    (*(v19 + 8))(v9, v20);
  }

  return (*v16)(v14, v10);
}

unint64_t sub_1E68AEEEC()
{
  result = qword_1EE2EA9F8;
  if (!qword_1EE2EA9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA9F8);
  }

  return result;
}

unint64_t sub_1E68AEF40()
{
  result = qword_1EE2EA9E0;
  if (!qword_1EE2EA9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA9E0);
  }

  return result;
}

unint64_t sub_1E68AEF94()
{
  result = qword_1ED09A230;
  if (!qword_1ED09A230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED09A230);
  }

  return result;
}

uint64_t Overlay.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A238, &qword_1E68C7218);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A240, &qword_1E68C7220);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A248, &qword_1E68C7228);
  v33 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v27 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68AEEEC();
  v15 = v34;
  sub_1E68B3BC0();
  if (v15)
  {
    v16 = a1;
  }

  else
  {
    v28 = v7;
    v34 = a1;
    v17 = v31;
    v18 = v32;
    v19 = sub_1E68B3A10();
    v20 = (2 * *(v19 + 16)) | 1;
    v35 = v19;
    v36 = v19 + 32;
    v37 = 0;
    v38 = v20;
    v21 = sub_1E676F5C8();
    if (v21 == 2 || v37 != v38 >> 1)
    {
      v23 = sub_1E68B3870();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050, &qword_1E68B4D20);
      *v25 = &type metadata for Overlay;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v33 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = v21;
      if (v21)
      {
        v40 = 1;
        sub_1E68AEF40();
        sub_1E68B3970();
        v22 = v33;
        (*(v30 + 8))(v6, v17);
      }

      else
      {
        v40 = 0;
        sub_1E68AEF94();
        sub_1E68B3970();
        v22 = v33;
        (*(v29 + 8))(v10, v28);
      }

      (*(v22 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v18 = v39 & 1;
    }

    v16 = v34;
  }

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t Overlay.hashValue.getter()
{
  v1 = *v0;
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v1);
  return sub_1E68B3BB0();
}

unint64_t sub_1E68AF54C()
{
  result = qword_1ED09A250;
  if (!qword_1ED09A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED09A250);
  }

  return result;
}

unint64_t sub_1E68AF5E4()
{
  result = qword_1ED09A258;
  if (!qword_1ED09A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED09A258);
  }

  return result;
}

unint64_t sub_1E68AF63C()
{
  result = qword_1EE2EA9C0;
  if (!qword_1EE2EA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA9C0);
  }

  return result;
}

unint64_t sub_1E68AF694()
{
  result = qword_1EE2EA9C8;
  if (!qword_1EE2EA9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA9C8);
  }

  return result;
}

unint64_t sub_1E68AF6EC()
{
  result = qword_1EE2EA9D0;
  if (!qword_1EE2EA9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA9D0);
  }

  return result;
}

unint64_t sub_1E68AF744()
{
  result = qword_1EE2EA9D8;
  if (!qword_1EE2EA9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA9D8);
  }

  return result;
}

unint64_t sub_1E68AF79C()
{
  result = qword_1EE2EA9E8;
  if (!qword_1EE2EA9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA9E8);
  }

  return result;
}

unint64_t sub_1E68AF7F4()
{
  result = qword_1EE2EA9F0;
  if (!qword_1EE2EA9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA9F0);
  }

  return result;
}

uint64_t sub_1E68AF848@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, double *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v100 = a6;
  v92 = a4;
  v91 = a3;
  v96 = a2;
  v95 = a1;
  v107 = a9;
  v16 = sub_1E68B3750();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v94 = &v85 - v18;
  v19 = sub_1E68B3750();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v87 = &v85 - v21;
  v86 = sub_1E68B17F0();
  v22 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v23);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = a8;
  v111 = a8;
  v98 = a10;
  v112 = a10;
  v99 = a11;
  v113 = a11;
  v97 = a12;
  v114 = a12;
  v26 = type metadata accessor for CanvasSectionHeaderView(0, &v111);
  v89 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v88 = &v85 - v28;
  sub_1E68B2390();
  v102 = v26;
  v29 = sub_1E68B1E40();
  v93 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v30);
  v85 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v90 = &v85 - v34;
  v108 = a7;
  v35 = *(a7 + 24);
  v36 = sub_1E68B3750();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v38);
  v40 = &v85 - v39;
  v104 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8, &unk_1E68BB7C0);
  v106 = sub_1E68B2220();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v41);
  v103 = &v85 - v42;
  v43 = *a5;
  v44 = a5[1];
  v45 = a5[2];
  v46 = a5[3];
  v47 = v12;
  if ((sub_1E68B1790() & 1) == 0)
  {
    goto LABEL_5;
  }

  (*(v37 + 16))(v40, v12 + *(v108 + 52), v36);
  if ((*(*(v35 - 8) + 48))(v40, 1, v35) != 1)
  {
    (*(v37 + 8))(v40, v36);
LABEL_5:
    sub_1E68B2150();
    v111 = sub_1E68B26C0();
    v112 = v53;
    LOBYTE(v113) = v54;
    v114 = v55;
    v56 = sub_1E68B1800();
    MEMORY[0x1EEE9AC00](v56, v57);
    v84[2] = &v111;
    v84[3] = v12;
    sub_1E689B350(sub_1E67611A0, v84);
    (*(v22 + 8))(v25, v86);
    v58 = v111;
    v59 = v112;
    v60 = v113;
    v61 = v114;
    v62 = v108;
    v63 = v87;
    v64 = v98;
    sub_1E6748AE4(v91, v47 + *(v108 + 52), v98, v35, v87);
    v65 = *(v62 + 16);
    v66 = v47 + *(v62 + 56);
    v67 = v94;
    v68 = v101;
    sub_1E6748AE4(v95, v66, v101, v65, v94);
    v84[0] = v64;
    v69 = v88;
    sub_1E6844258(v100, v58, v59, v60, v61, v63, v67, v68, v88, 5.0, v84[0], v99, v97);
    v70 = v102;
    WitnessTable = swift_getWitnessTable();
    v72 = v85;
    sub_1E6883E9C(v70, WitnessTable, v45, v44, v43, v46);
    (*(v89 + 8))(v69, v70);
    v73 = sub_1E68B0284();
    v129 = WitnessTable;
    v130 = v73;
    v74 = swift_getWitnessTable();
    v75 = v90;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v76 = *(v93 + 8);
    v76(v72, v29);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v77 = sub_1E673F2EC();
    v52 = v103;
    sub_1E6744DB8(v72, v104, v29, v77, v74);
    v76(v72, v29);
    v76(v75, v29);
    goto LABEL_6;
  }

  (*(v37 + 8))(v40, v36);
  sub_1E68B2E80();
  sub_1E68B1C50();
  v124 = 1;
  v122 = v132;
  v120 = v134;
  v111 = 0;
  LOBYTE(v112) = 1;
  *(&v112 + 1) = *v123;
  HIDWORD(v112) = *&v123[3];
  v113 = v131;
  LOBYTE(v114) = v132;
  *(&v114 + 1) = *v121;
  HIDWORD(v114) = *&v121[3];
  v115 = v133;
  v116 = v134;
  *&v117[3] = *&v119[3];
  *v117 = *v119;
  v118 = v135;
  v48 = sub_1E673F2EC();
  v49 = swift_getWitnessTable();
  v50 = sub_1E68B0284();
  v109 = v49;
  v110 = v50;
  v51 = swift_getWitnessTable();
  v52 = v103;
  sub_1E6744CC0(&v111, v104, v29, v48, v51);
LABEL_6:
  v78 = sub_1E673F2EC();
  v79 = swift_getWitnessTable();
  v80 = sub_1E68B0284();
  v127 = v79;
  v128 = v80;
  v81 = swift_getWitnessTable();
  v125 = v78;
  v126 = v81;
  v82 = v106;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (*(v105 + 8))(v52, v82);
}

unint64_t sub_1E68B0284()
{
  result = qword_1EE2EA5E8;
  if (!qword_1EE2EA5E8)
  {
    sub_1E68B2390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA5E8);
  }

  return result;
}

uint64_t sub_1E68B02DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v20[0] = a6;
  v20[1] = a7;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E68B1BC0();
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  (*(v13 + 16))(v15, v7, a3, v18);
  sub_1E68B1BD0();
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = a5;
  v20[7] = v20[0];
  v20[8] = a1;
  v20[9] = a2;
  swift_getWitnessTable();
  return sub_1E68B1D30();
}

uint64_t View.containerAspectRatio(_:contentMode:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<D0>, double a5@<D1>, uint64_t a6@<X8>)
{
  v12 = a1 & 1;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  *(v13 + 48) = v12;
  v15[2] = a2;
  v15[3] = a3;
  v16 = v6;
  sub_1E68B165C(sub_1E68B0618, v15, a6);
}

uint64_t sub_1E68B053C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_1E68B0624(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED09A260, &qword_1E68C7570);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContainerAspectRatioLayout(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ContainerAspectRatioLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1E68B070C(uint64_t result, char a2, uint64_t a3, char a4, char a5, double a6, double a7)
{
  if (a2)
  {
    if (a4)
    {
      return result;
    }

    v7 = a6 / a7 * *&a3;
LABEL_9:
    *&result = v7;
    return result;
  }

  if ((a4 & 1) == 0)
  {
    v8 = a6 / a7;
    if (*&result / *&a3 < v8 != (a5 & 1))
    {
      v7 = v8 * *&a3;
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t sub_1E68B0798(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, double a11, uint64_t a12, int a13)
{
  LODWORD(v53) = a13;
  v51 = a5;
  v54 = sub_1E68B1CD0();
  v50 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v23);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1E68B1D80();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097658, &qword_1E68B6B10);
  v32 = v31 - 8;
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v50 - v34;
  LOBYTE(v55[0]) = a2 & 1;
  v56 = a4 & 1;
  v36 = sub_1E68B070C(a1, a2 & 1, a3, a4 & 1, v53 & 1, a10, a11);
  v52 = v37;
  v53 = v36;
  v39 = v38;
  v41 = v40;
  (*(v27 + 16))(v30, v51, v26);
  sub_1E6776634(&qword_1EE2EA860, MEMORY[0x1E697E3D0]);
  sub_1E68B32C0();
  v42 = *(v32 + 44);
  sub_1E6776634(&qword_1EE2EA858, MEMORY[0x1E697E3D8]);
  sub_1E68B3690();
  if (*&v35[v42] != v55[0])
  {
    v43 = v41;
    v44 = (v50 + 16);
    v45 = (v50 + 8);
    v46 = v39 & 1;
    LODWORD(v51) = v43 & 1;
    do
    {
      v47 = sub_1E68B36F0();
      v48 = v54;
      (*v44)(v25);
      v47(v55, 0);
      sub_1E68B36A0();
      v57.origin.x = a6;
      v57.origin.y = a7;
      v57.size.width = a8;
      v57.size.height = a9;
      CGRectGetMidX(v57);
      v58.origin.x = a6;
      v58.origin.y = a7;
      v58.size.width = a8;
      v58.size.height = a9;
      CGRectGetMidY(v58);
      sub_1E68B2F50();
      LOBYTE(v55[0]) = v46;
      v56 = v51;
      sub_1E68B1CC0();
      (*v45)(v25, v48);
      sub_1E68B3690();
    }

    while (*&v35[v42] != v55[0]);
  }

  return sub_1E68B0D10(v35);
}

void (*sub_1E68B0C2C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1E68B1AF0();
  return sub_1E67768A4;
}

unint64_t sub_1E68B0CBC()
{
  result = qword_1ED09A278;
  if (!qword_1ED09A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED09A278);
  }

  return result;
}

uint64_t sub_1E68B0D10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097658, &qword_1E68B6B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E68B0D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v16 - v11;
  v13(v10);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v14 = *(v5 + 8);
  v14(v7, a4);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v14)(v12, a4);
}

char *sub_1E68B0EAC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E68B0FB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E68B0ECC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E68B10BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E68B0EEC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E68B11C0(a1, a2, a3, *v3, &qword_1ED09A298, &qword_1E68C7690, MEMORY[0x1E697E168]);
  *v3 = result;
  return result;
}

void *sub_1E68B0F30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E68B11C0(a1, a2, a3, *v3, &qword_1ED097870, &qword_1E68B8910, type metadata accessor for TextContent.Component);
  *v3 = result;
  return result;
}

void *sub_1E68B0F74(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E68B11C0(a1, a2, a3, *v3, &qword_1ED09A290, &qword_1E68C7688, MEMORY[0x1E697D750]);
  *v3 = result;
  return result;
}

char *sub_1E68B0FB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097DD8, &unk_1E68B8DE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1E68B10BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED09A280, &qword_1E68C7680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1E68B11C0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1E68B139C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v35 = a1;
  *&v36.f64[0] = a3;
  v34 = sub_1E68B1CD0();
  v6 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E68B1D80();
  sub_1E6776634(&qword_1EE2EA858, MEMORY[0x1E697E3D8]);
  v11 = sub_1E68B3670();
  v13 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v14 = v11;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1E68B0ECC(0, v11 & ~(v11 >> 63), 0);
    v13 = v39;
    result = sub_1E68B3660();
    if (v14 < 0)
    {
      __break(1u);
      return result;
    }

    v32 = (v6 + 8);
    v33 = (v6 + 16);
    v31 = a4 & 1;
    do
    {
      v16 = sub_1E68B36F0();
      v17 = v10;
      v18 = v34;
      (*v33)(v9);
      v16(v38, 0);
      v38[0] = a2 & 1;
      v37 = v31;
      sub_1E68B1CB0();
      v20 = v19;
      v22 = v21;
      (*v32)(v9, v18);
      v39 = v13;
      v24 = *(v13 + 16);
      v23 = *(v13 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1E68B0ECC((v23 > 1), v24 + 1, 1);
        v13 = v39;
      }

      *(v13 + 16) = v24 + 1;
      v25 = v13 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
      sub_1E68B36A0();
      --v14;
      v10 = v17;
    }

    while (v14);
  }

  v26 = *(v13 + 16);
  if (v26)
  {
    v27 = (v13 + 32);
    v28 = 0uLL;
    do
    {
      v29 = *v27++;
      v28 = vbslq_s8(vcgeq_f64(v29, v28), v29, v28);
      --v26;
    }

    while (v26);
    v36 = v28;
  }

  else
  {
    v12.f64[0] = 0.0;
    v36 = v12;
  }
}

uint64_t sub_1E68B165C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = sub_1E68B16DC();
  return sub_1E68B02DC(a1, a2, &type metadata for ContainerAspectRatioLayout, v8, v10, v9, a4);
}

unint64_t sub_1E68B16DC()
{
  result = qword_1ED09A288;
  if (!qword_1ED09A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED09A288);
  }

  return result;
}