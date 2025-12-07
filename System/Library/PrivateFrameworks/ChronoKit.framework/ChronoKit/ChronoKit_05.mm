uint64_t sub_1BF404DA8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_1BF404EAC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BF4E9204())
  {
    v8 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1BFB59570](v8, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v9;
      sub_1BF402F44(&v14, a2, a3, a4);

      if (!v4)
      {
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_1BF404FB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v57 = a5;
  v9 = sub_1BF4E7334();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D68, &qword_1BF4EDD18);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v46 - v14);
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v50 = a1;
  v51 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v52 = v17;
  v53 = 0;
  v54 = v20 & v18;
  v55 = a2;
  v56 = a3;
  v48 = v10;
  v49 = (v10 + 32);

  v46 = a3;

  for (i = v15; ; v15 = i)
  {
    sub_1BF4049A4(v15);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87B0, &qword_1BF4EDD20);
    if ((*(*(v21 - 8) + 48))(v15, 1, v21) == 1)
    {
      goto LABEL_17;
    }

    v22 = *(v21 + 48);
    v23 = *v15;
    v24 = v15[1];
    v25 = *v49;
    v26 = v15 + v22;
    v27 = v12;
    v28 = v9;
    v29 = (*v49)(v12, v26, v9);
    v30 = *v57;
    v32 = sub_1BF3CD5D0(v23, v24, v29);
    v33 = v30[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      break;
    }

    v36 = v31;
    if (v30[3] >= v35)
    {
      if (a4)
      {
        if (v31)
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_1BF4A2AB4();
        if (v36)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      sub_1BF49E664(v35, a4 & 1);
      v38 = sub_1BF3CD5D0(v23, v24, v37);
      if ((v36 & 1) != (v39 & 1))
      {
        goto LABEL_20;
      }

      v32 = v38;
      if (v36)
      {
LABEL_16:
        sub_1BF4E9464();
        __break(1u);
LABEL_17:
        sub_1BF39A9CC(v50);

        return;
      }
    }

    v40 = *v57;
    *(*v57 + 8 * (v32 >> 6) + 64) |= 1 << v32;
    v41 = (v40[6] + 16 * v32);
    *v41 = v23;
    v41[1] = v24;
    v42 = v40[7] + *(v48 + 72) * v32;
    v12 = v27;
    v9 = v28;
    v25(v42, v27, v28);
    v43 = v40[2];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
      goto LABEL_19;
    }

    v40[2] = v45;
    a4 = 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  sub_1BF4E9794();
  __break(1u);
}

uint64_t sub_1BF405354(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t PowerlogWidgetViewIdentity.init(widget:identifier:inStack:location:suggestionIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a5;
  v9 = *(a5 + 8);
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 40) = a4;
  *(a8 + 48) = v8;
  *(a8 + 56) = v9;
  *(a8 + 16) = a3;
  *(a8 + 24) = a6;
  *(a8 + 32) = a7;
  return result;
}

uint64_t PowerlogWidgetLocation.logValue.getter()
{
  if (*(v0 + 8) == 1)
  {
    return qword_1BF4EE160[*v0];
  }

  else
  {
    return 3;
  }
}

unint64_t PowerlogWidgetLocation.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1 <= 3)
    {
      v7 = 0x6E776F6E6B6E75;
      if (v1 == 2)
      {
        v8 = 0xD000000000000012;
      }

      else
      {
        v8 = 0x657263536B636F6CLL;
      }

      if (v1)
      {
        v7 = 0x6569567961646F74;
      }

      if (v1 <= 1)
      {
        return v7;
      }

      else
      {
        return v8;
      }
    }

    else
    {
      v2 = 1769105779;
      v3 = 0x436C6F72746E6F63;
      if (v1 != 7)
      {
        v3 = 0xD000000000000011;
      }

      if (v1 != 6)
      {
        v2 = v3;
      }

      v4 = 0x746E6569626D61;
      if (v1 != 4)
      {
        v4 = 0x75426E6F69746361;
      }

      if (v1 <= 5)
      {
        return v4;
      }

      else
      {
        return v2;
      }
    }
  }

  else
  {
    sub_1BF4E92E4();

    strcpy(v9, "homescreenPage");
    HIBYTE(v9[1]) = -18;
    v6 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v6);

    return v9[0];
  }
}

uint64_t PowerlogWidgetLocation.hash(into:)()
{
  v1 = *v0;
  if (v0[1])
  {
    v1 = qword_1BF4EE160[v1];
  }

  else
  {
    MEMORY[0x1BFB59A70](3);
  }

  return MEMORY[0x1BFB59A70](v1);
}

BOOL static PowerlogWidgetLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    v2 = qword_1BF4EE160[v2];
    if (!*(a2 + 8))
    {
      v3 = 3;
      return v2 == v3;
    }
  }

  else
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    v2 = 3;
  }

  v4 = 7;
  v5 = 8;
  if (v3 != 7)
  {
    v5 = 9;
  }

  if (v3 != 6)
  {
    v4 = v5;
  }

  v6 = 5;
  if (v3 != 4)
  {
    v6 = 6;
  }

  if (v3 <= 5)
  {
    v4 = v6;
  }

  v7 = v3 <= 3;
  if (v3 >= 3)
  {
    v3 = 4;
  }

  if (!v7)
  {
    v3 = v4;
  }

  return v2 == v3;
}

uint64_t PowerlogWidgetLocation.hashValue.getter(double a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1BF4E9804();
  if (v3)
  {
    v2 = qword_1BF4EE160[v2];
  }

  else
  {
    MEMORY[0x1BFB59A70](3);
  }

  MEMORY[0x1BFB59A70](v2);
  return sub_1BF4E9844();
}

uint64_t sub_1BF405724(double a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1BF4E9804();
  if (v3)
  {
    v2 = qword_1BF4EE160[v2];
  }

  else
  {
    MEMORY[0x1BFB59A70](3);
  }

  MEMORY[0x1BFB59A70](v2);
  return sub_1BF4E9844();
}

uint64_t sub_1BF405790()
{
  v1 = *v0;
  if (v0[1])
  {
    v1 = qword_1BF4EE160[v1];
  }

  else
  {
    MEMORY[0x1BFB59A70](3);
  }

  return MEMORY[0x1BFB59A70](v1);
}

uint64_t sub_1BF4057E0(uint64_t a1, double a2)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  sub_1BF4E9804();
  if (v4)
  {
    v3 = qword_1BF4EE160[v3];
  }

  else
  {
    MEMORY[0x1BFB59A70](3);
  }

  MEMORY[0x1BFB59A70](v3);
  return sub_1BF4E9844();
}

BOOL sub_1BF405848(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    v2 = qword_1BF4EE160[v2];
    if (!*(a2 + 8))
    {
      v3 = 3;
      return v2 == v3;
    }
  }

  else
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    v2 = 3;
  }

  v4 = 7;
  v5 = 8;
  if (v3 != 7)
  {
    v5 = 9;
  }

  if (v3 != 6)
  {
    v4 = v5;
  }

  v6 = 5;
  if (v3 != 4)
  {
    v6 = 6;
  }

  if (v3 <= 5)
  {
    v4 = v6;
  }

  v7 = v3 <= 3;
  if (v3 >= 3)
  {
    v3 = 4;
  }

  if (!v7)
  {
    v3 = v4;
  }

  return v2 == v3;
}

uint64_t PowerlogControlViewIdentity.identifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void PowerlogControlViewIdentity.location.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t PowerlogControlViewIdentity.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](0xD000000000000024, 0x80000001BF4F9D10);
  v4 = [v2 description];
  v5 = sub_1BF4E8914();
  v7 = v6;

  MEMORY[0x1BFB58C90](v5, v7);

  MEMORY[0x1BFB58C90](0x6669746E65646920, 0xEB000000003D7265);
  MEMORY[0x1BFB58C90](v1, v3);
  MEMORY[0x1BFB58C90](0x6F697461636F6C20, 0xEA00000000003D6ELL);
  v8 = PowerlogWidgetLocation.description.getter();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return 0;
}

uint64_t PowerlogControlViewIdentity.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  if (v3)
  {
    v2 = qword_1BF4EE160[v2];
  }

  else
  {
    MEMORY[0x1BFB59A70](3);
  }

  MEMORY[0x1BFB59A70](v2);
  return sub_1BF4E9824();
}

uint64_t PowerlogControlViewIdentity.hashValue.getter(double a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  if (v3)
  {
    v2 = qword_1BF4EE160[v2];
  }

  else
  {
    MEMORY[0x1BFB59A70](3);
  }

  MEMORY[0x1BFB59A70](v2);
  sub_1BF4E9824();
  return sub_1BF4E9844();
}

uint64_t sub_1BF405BC4()
{
  v1 = *(v0 + 8);

  return v1;
}

void sub_1BF405BF4(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t sub_1BF405C0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 33);
  *&v6[72] = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  sub_1BF4E9804();
  PowerlogControlViewIdentity.hash(into:)(v6);
  return sub_1BF4E9844();
}

uint64_t sub_1BF405C74(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 33);
  *&v7[72] = *v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  sub_1BF4E9804();
  PowerlogControlViewIdentity.hash(into:)(v7);
  return sub_1BF4E9844();
}

uint64_t PowerlogWidgetViewIdentity.identifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t PowerlogWidgetViewIdentity.suggestionIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void PowerlogWidgetViewIdentity.location.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t PowerlogWidgetViewIdentity.init(widget:identifier:inStack:location:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  v7 = *(a5 + 8);
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  *(a6 + 16) = a3;
  *(a6 + 40) = a4;
  *(a6 + 48) = v6;
  *(a6 + 56) = v7;
  return result;
}

uint64_t PowerlogWidgetViewIdentity.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);

  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](0xD000000000000023, 0x80000001BF4F9D40);
  v7 = [v2 description];
  v8 = sub_1BF4E8914();
  v10 = v9;

  MEMORY[0x1BFB58C90](v8, v10);

  MEMORY[0x1BFB58C90](0x6669746E65646920, 0xEB000000003D7265);
  MEMORY[0x1BFB58C90](v1, v3);
  MEMORY[0x1BFB58C90](0xD000000000000016, 0x80000001BF4F9D70);
  if (v5)
  {
    v11 = v4;
  }

  else
  {
    v11 = 7104878;
  }

  if (!v5)
  {
    v5 = 0xE300000000000000;
  }

  MEMORY[0x1BFB58C90](v11, v5);

  MEMORY[0x1BFB58C90](0x6B636174536E6920, 0xE90000000000003DLL);
  if (v6)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v6)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x1BFB58C90](v12, v13);

  MEMORY[0x1BFB58C90](0x6F697461636F6C20, 0xEA00000000003D6ELL);
  v14 = PowerlogWidgetLocation.description.getter();
  MEMORY[0x1BFB58C90](v14);

  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return 0;
}

uint64_t PowerlogWidgetViewIdentity.hashValue.getter(double a1)
{
  sub_1BF4E9804();
  PowerlogWidgetViewIdentity.hash(into:)(v2);
  return sub_1BF4E9844();
}

void sub_1BF405FEC(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t sub_1BF406004(double a1)
{
  sub_1BF4E9804();
  PowerlogWidgetViewIdentity.hash(into:)(v2);
  return sub_1BF4E9844();
}

double sub_1BF406078(uint64_t a1, void (*a2)(double), uint64_t a3, uint64_t a4, double a5)
{
  sub_1BF3AB664(a1, a2, a3, a4);
  a2(a5);

  return result;
}

double sub_1BF4060FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  sub_1BF3AB664(a2, a2, a3, a4);
  a3(a1);

  return result;
}

void sub_1BF40615C(char a1)
{
  v2 = v1;
  v4 = *(v1 + 72);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BF407D04;
  *(v6 + 24) = v5;
  v8[4] = sub_1BF3A2C88;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1BF3A2C38;
  v8[3] = &block_descriptor_68;
  v7 = _Block_copy(v8);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }
}

uint64_t sub_1BF4062B8(char a1, double a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1BF4E80E4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v3[9];
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6, v8);
  v12 = v11;
  LOBYTE(v11) = sub_1BF4E80F4();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v14 = swift_beginAccess();
    v27[2] = v3[7];
    MEMORY[0x1EEE9AC00](v14);
    v27[-2] = v3;
    LOBYTE(v27[-1]) = a1 & 1;
    MEMORY[0x1EEE9AC00](v15);
    v16 = *(v5 + 80);
    v17 = *(v5 + 96);
    *&v27[-6] = v16;
    *&v27[-4] = v17;
    v27[-2] = sub_1BF407B04;
    v27[-1] = v18;
    v20 = type metadata accessor for PowerlogViewEntry(255, v16, v17, v19);
    v21 = sub_1BF4E8834();

    WitnessTable = swift_getWitnessTable();
    v24 = sub_1BF3AF390(sub_1BF407B10, &v27[-8], v21, v20, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v23);

    v25 = v3[5];
    v26 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v25);
    (*(v26 + 48))(v24, v25, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF406568(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1BF406E8C(a1);
  sub_1BF406CDC(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D90, &unk_1BF4EE150);
  v7 = swift_dynamicCast();
  *(a2 + 112) = 0;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  if ((*(a2 + 129) & 1) == 0)
  {
    swift_beginAccess();
    sub_1BF47AD90(a1);
    swift_endAccess();
  }

  if (a4)
  {
    v8 = *(v10 + 129);
    *(v10 + 129) = 0;
    if (v8 == 1)
    {
      sub_1BF406E8C(v7);
      *(v10 + 120) = 0;
      *(v10 + 128) = 1;
    }
  }

  return v10;
}

uint64_t sub_1BF406668(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1BF406ED8(a1);
  sub_1BF406DB4(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D80, &qword_1BF4EE140);
  v7 = swift_dynamicCast();
  *(a2 + 88) = 0;
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  if ((*(a2 + 105) & 1) == 0)
  {
    swift_beginAccess();
    sub_1BF47AE40(a1, v8);
    swift_endAccess();
  }

  if (a4)
  {
    v9 = *(v11 + 105);
    *(v11 + 105) = 0;
    if (v9 == 1)
    {
      sub_1BF406ED8(v7);
      *(v11 + 96) = 0;
      *(v11 + 104) = 1;
    }
  }

  return v11;
}

uint64_t sub_1BF40676C(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = *a2;
  sub_1BF408B6C();
  sub_1BF408B98(0, v10);
  type metadata accessor for PowerlogViewEntry(0, *(v6 + 80), *(v6 + 88), v7);
  swift_dynamicCast();
  sub_1BF408B70();
  if ((*(a2 + *(*a2 + 120)) & 1) == 0)
  {
    swift_beginAccess();
    sub_1BF4E8834();
    sub_1BF4E8784();
    swift_endAccess();
  }

  if (a4)
  {
    sub_1BF3AB5E0(0);
  }

  return v9;
}

uint64_t BasePowerlogViewService.__deallocating_deinit()
{
  BasePowerlogViewService.deinit();

  return swift_deallocClassInstance();
}

void PowerlogControlsViewService.init(owner:)(char *a1)
{
  v10 = sub_1BF4E8F24();
  v2 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BF4E8ED4();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1BF4E8064();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = *a1;
  type metadata accessor for ControlsPowerlogProvider();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
  sub_1BF4E8044();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1BF3A10B4(&qword_1EDC9F148, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF3A2804();
  sub_1BF4E91A4();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8098], v10);
  *(v8 + 24) = sub_1BF4E8F64();
  sub_1BF406F24(v8, v11);
}

uint64_t _s9ChronoKit23BasePowerlogViewServiceCfd_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t _s9ChronoKit25PowerlogWidgetViewServiceCfD_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_1BF406CDC(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  v12[0] = *(v1 + 16);
  v12[1] = v3;
  v13[0] = *(v1 + 48);
  *(v13 + 9) = *(v1 + 57);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D90, &unk_1BF4EE150);
  v5 = swift_allocObject();
  *(v5 + 120) = 0;
  *(v5 + 128) = 1;
  v6 = *(v1 + 32);
  *(v5 + 16) = *(v1 + 16);
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v1 + 48);
  *(v5 + 57) = *(v1 + 57);
  v7 = *(v1 + 112);
  v8 = *(v1 + 96);
  *(v5 + 80) = *(v1 + 80);
  *(v5 + 96) = v8;
  *(v5 + 112) = v7;
  v9 = *(v1 + 129);
  *(v5 + 129) = v9;
  if (v9)
  {
    sub_1BF3EE1EC(v12, v11);
    BSContinuousMachTimeNow();
    *(v5 + 120) = v10;
    *(v5 + 128) = 0;
  }

  else
  {
    sub_1BF3EE1EC(v12, v11);
  }

  a1[3] = v4;
  *a1 = v5;
}

void sub_1BF406DB4(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 49);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D80, &qword_1BF4EE140);
  v10 = swift_allocObject();
  *(v10 + 96) = 0;
  *(v10 + 104) = 1;
  *(v10 + 16) = v3;
  *(v10 + 24) = v4;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  *(v10 + 48) = v7;
  *(v10 + 49) = v8;
  v11 = *(v1 + 88);
  *(v10 + 56) = *(v1 + 56);
  *(v10 + 72) = *(v1 + 72);
  *(v10 + 88) = v11;
  v12 = *(v1 + 105);
  *(v10 + 105) = v12;
  v13 = v3;

  if (v12)
  {
    BSContinuousMachTimeNow();
    *(v10 + 96) = v14;
    *(v10 + 104) = 0;
  }

  a1[3] = v9;
  *a1 = v10;
}

void sub_1BF406E8C(uint64_t a1)
{
  BSContinuousMachTimeNow();
  if ((*(v1 + 128) & 1) == 0)
  {
    *(v1 + 112) = *(v1 + 112) + v2 - *(v1 + 120);
  }

  v3 = *(v1 + 129);
  v4 = v2;
  if (!v3)
  {
    v4 = 0.0;
  }

  *(v1 + 120) = v4;
  *(v1 + 128) = v3 ^ 1;
}

void sub_1BF406ED8(uint64_t a1)
{
  BSContinuousMachTimeNow();
  if ((*(v1 + 104) & 1) == 0)
  {
    *(v1 + 88) = *(v1 + 88) + v2 - *(v1 + 96);
  }

  v3 = *(v1 + 105);
  v4 = v2;
  if (!v3)
  {
    v4 = 0.0;
  }

  *(v1 + 96) = v4;
  *(v1 + 104) = v3 ^ 1;
}

void sub_1BF406F24(uint64_t a1, void *a2)
{
  v12 = sub_1BF4E8F24();
  v4 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BF4E8ED4();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1BF4E8064();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v14[3] = type metadata accessor for ControlsPowerlogProvider();
  v14[4] = sub_1BF3A10B4(qword_1EDC99168, type metadata accessor for ControlsPowerlogProvider, &unk_1BF4F0B7C);
  v14[0] = a1;
  a2[7] = MEMORY[0x1E69E7CC8];
  a2[8] = 0;
  sub_1BF3901C0(0, &qword_1EDC9F140, 0x1E69E9610);
  sub_1BF4E8014();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BF3A10B4(&qword_1EDC9F148, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF3A2804();
  sub_1BF4E91A4();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8090], v12);
  v9 = sub_1BF4E8F64();
  a2[9] = v9;
  sub_1BF38E49C(v14, (a2 + 2));
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1BF407B98;
  *(v10 + 24) = a2;
  aBlock[4] = sub_1BF3A2C60;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF3A2C38;
  aBlock[3] = &block_descriptor_2;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v9, v11);
  _Block_release(v11);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }
}

uint64_t _s9ChronoKit27PowerlogControlViewIdentityV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *(a1 + 32);
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = *(a2 + 32);
  v18 = *(a2 + 33);
  v19 = *(a1 + 33);
  sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
  if ((sub_1BF4E90A4() & 1) == 0 || (v2 != v6 || v3 != v7) && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  if ((v5 & 1) == 0)
  {
    if ((v9 & 1) == 0)
    {
      v16 = v4 == v8;
      goto LABEL_25;
    }

    v10 = 3;
    goto LABEL_11;
  }

  v10 = qword_1BF4EE160[v4];
  if (v9)
  {
LABEL_11:
    v11 = 7;
    v13 = 8;
    if (v8 != 7)
    {
      v13 = 9;
    }

    if (v8 != 6)
    {
      v11 = v13;
    }

    v14 = 5;
    if (v8 != 4)
    {
      v14 = 6;
    }

    if (v8 <= 5)
    {
      v11 = v14;
    }

    v15 = 4;
    if (v8 < 3)
    {
      v15 = v8;
    }

    if (v8 <= 3)
    {
      v11 = v15;
    }

    goto LABEL_23;
  }

  v11 = 3;
LABEL_23:
  v16 = v10 == v11;
LABEL_25:
  v17 = v16;
  return v17 & (v19 ^ v18 ^ 1u);
}

unint64_t sub_1BF407434()
{
  result = qword_1EBDD8D78;
  if (!qword_1EBDD8D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8D78);
  }

  return result;
}

unint64_t sub_1BF407488(uint64_t a1)
{
  result = sub_1BF4074B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BF4074B0()
{
  result = qword_1EDC98000[0];
  if (!qword_1EDC98000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC98000);
  }

  return result;
}

unint64_t sub_1BF407508()
{
  result = qword_1EDC97FF8;
  if (!qword_1EDC97FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC97FF8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PowerlogWidgetLocation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PowerlogWidgetLocation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1BF4075C0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF4075DC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BF407648(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_1BF407690(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BF40784C(uint64_t a1, uint64_t (*a2)(_OWORD *, uint64_t), uint64_t a3)
{
  v45 = a3;
  v4 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v44 = MEMORY[0x1E69E7CC0];
    sub_1BF4E93A4();
    v6 = a1 + 64;
    result = sub_1BF4E91B4();
    if (result < 0 || (v7 = result, result >= 1 << *(a1 + 32)))
    {
LABEL_19:
      __break(1u);
      return v44;
    }

    else
    {
      v27 = *(a1 + 36);
      v26 = v4;
      v8 = 1;
      while (1)
      {
        v9 = v7 >> 6;
        if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
        {
          break;
        }

        v10 = *(a1 + 56);
        v11 = (*(a1 + 48) + (v7 << 6));
        v13 = v11[1];
        v12 = v11[2];
        v14 = *v11;
        *(v35 + 9) = *(v11 + 41);
        v34[1] = v13;
        v35[0] = v12;
        v34[0] = v14;
        v15 = v11[1];
        v31 = *v11;
        v32 = v15;
        *v33 = v11[2];
        *&v33[9] = *(v11 + 41);
        v16 = *(v10 + 8 * v7);
        memmove(&__dst, v11, 0x39uLL);
        v39[0] = v31;
        v39[1] = v32;
        v39[2] = *v33;
        v39[3] = *&v33[16];
        v40 = v16;
        swift_retain_n();
        sub_1BF3EE1EC(v34, v29);
        sub_1BF3EE1EC(&__dst, v29);
        sub_1BF407C9C(v39);
        *&v42[9] = *(v38 + 9);
        *v42 = v38[0];
        v29[2] = v38[0];
        v29[3] = *&v42[16];
        v41[0] = __dst;
        v41[1] = v37;
        v43 = v16;
        v30 = v16;
        v29[0] = __dst;
        v29[1] = v37;
        a2(v29, v16);
        sub_1BF407C9C(v41);
        sub_1BF4E9374();
        sub_1BF4E93B4();
        sub_1BF4E93C4();
        result = sub_1BF4E9384();
        v17 = 1 << *(a1 + 32);
        if (v7 >= v17)
        {
          goto LABEL_23;
        }

        v18 = *(v6 + 8 * v9);
        if ((v18 & (1 << v7)) == 0)
        {
          goto LABEL_24;
        }

        if (v27 != *(a1 + 36))
        {
          goto LABEL_25;
        }

        v19 = v18 & (-2 << (v7 & 0x3F));
        if (v19)
        {
          v7 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
          v20 = v26;
        }

        else
        {
          v21 = v9 << 6;
          v22 = v9 + 1;
          v20 = v26;
          v23 = (a1 + 72 + 8 * v9);
          while (v22 < (v17 + 63) >> 6)
          {
            v25 = *v23++;
            v24 = v25;
            v21 += 64;
            ++v22;
            if (v25)
            {
              v7 = __clz(__rbit64(v24)) + v21;
              goto LABEL_16;
            }
          }

          v7 = 1 << *(a1 + 32);
        }

LABEL_16:
        if (v8 == v20)
        {
          return v44;
        }

        if ((v7 & 0x8000000000000000) == 0)
        {
          ++v8;
          if (v7 < 1 << *(a1 + 32))
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BF407B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = v3[6];
  type metadata accessor for PowerlogViewEntry(255, v3[2], v3[4], a2);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v6(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
  *a3 = result;
  return result;
}

uint64_t sub_1BF407BD8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = *(a1 + 32);
  return sub_1BF406668(v7, a2, v3, v4);
}

uint64_t sub_1BF407C58(__int128 *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v8[0] = a1[2];
  *(v8 + 9) = *(a1 + 41);
  return sub_1BF406568(v7, a2, v3, v4);
}

uint64_t sub_1BF407C9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8D88, &qword_1BF4EE148);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF407D50(unint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v46 = MEMORY[0x1E69E7CC0];
    v32 = a2 >> 62;
    sub_1BF3A31DC(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_1BF4E6EC4();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_1BF4E6EE4();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_1BF4E6EC4();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_1BF4E6EE4();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B28, &unk_1BF4EC500);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1BF4EBEF0;
      *(v21 + 56) = MEMORY[0x1E69E7508];
      *(v21 + 64) = MEMORY[0x1E69E7558];
      *(v21 + 32) = v20;
      v22 = sub_1BF4E8924();
      v46 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_1BF3A31DC((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

uint64_t PublicToken.environmentName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PublicToken.token.getter()
{
  v1 = *(v0 + 16);
  sub_1BF3D8864(v1, *(v0 + 24));
  return v1;
}

uint64_t PublicToken.init(environmentName:token:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

unint64_t PublicToken.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BF407D50(v0[2], v0[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  sub_1BF3E4AF0();
  v3 = sub_1BF4E8894();
  v5 = v4;

  sub_1BF4E92E4();

  MEMORY[0x1BFB58C90](v1, v2);
  MEMORY[0x1BFB58C90](0x3A6E656B6F74203BLL, 0xE900000000000020);
  MEMORY[0x1BFB58C90](v3, v5);

  return 0xD000000000000011;
}

BOOL static PublicToken.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  return sub_1BF408374(v2, v3, v4, v5);
}

BOOL sub_1BF4082E8(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  return sub_1BF408374(v2, v3, v4, v5);
}

BOOL sub_1BF408374(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1BF3D8864(a3, a4);
          return sub_1BF4D9E34(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1BF4084F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1BF408540(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BF408590()
{
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](0xD000000000000020, 0x80000001BF4F9F40);
  sub_1BF4E8D14();
  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F9F70);
  v0 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v0);

  MEMORY[0x1BFB58C90](0x547265646E657220, 0xEC0000003D656D69);
  sub_1BF4E8D14();
  MEMORY[0x1BFB58C90](0xD000000000000012, 0x80000001BF4F9F90);
  v1 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v1);

  MEMORY[0x1BFB58C90](0x5474696D62757320, 0xEC0000003D656D69);
  sub_1BF4E8D14();
  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1BF408758()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1BFB59A90](*&v1);
  v2 = *(v0 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1BFB59A90](*&v2);
  MEMORY[0x1BFB59A70](*(v0 + 16));
  MEMORY[0x1BFB59A70](*(v0 + 24));
  v3 = *(v0 + 32);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return MEMORY[0x1BFB59A90](*&v3);
}

uint64_t sub_1BF4087D4(double a1)
{
  sub_1BF4E9804();
  sub_1BF408758();
  return sub_1BF4E9844();
}

uint64_t sub_1BF408818(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  sub_1BF408758();
  return sub_1BF4E9844();
}

double sub_1BF408898@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + *(*v1 + 104);
  result = *(v2 + 32);
  v4 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v4;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1BF4088C4(uint64_t a1)
{
  v2 = v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - v5;
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  sub_1BF4E92E4();
  v12 = v13;
  MEMORY[0x1BFB58C90](0xD00000000000001CLL, 0x80000001BF4F9FB0);
  (*(v4 + 16))(v6, v2 + *(*v2 + 96), v3);
  sub_1BF4E96E4();
  (*(v4 + 8))(v6, v3);
  MEMORY[0x1BFB58C90](0x7363697274656D20, 0xE90000000000003DLL);
  v7 = (v2 + *(*v2 + 104));
  v8 = *(v7 + 4);
  v9 = v7[1];
  v13 = *v7;
  v14 = v9;
  v15 = v8;
  v10 = sub_1BF408590();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return v12;
}

double sub_1BF408B70()
{
  v1 = v0 + *(*v0 + 104);
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  return result;
}

void sub_1BF408B98(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = v5[10];
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v20 - v8;
  v11 = type metadata accessor for PowerlogViewEntry(0, v6, v5[11], v10);
  (*(v7 + 16))(v9, &v3[v5[12]], v6);
  v12 = swift_allocObject();
  sub_1BF3B19C0(v9);
  v13 = *v3;
  v14 = &v3[*(*v3 + 104)];
  v15 = *(v14 + 4);
  v16 = v12 + *(*v12 + 104);
  v17 = *(v14 + 1);
  *v16 = *v14;
  *(v16 + 16) = v17;
  *(v16 + 32) = v15;
  v18 = *(*v12 + 120);
  v19 = *(v12 + v18);
  *(v12 + v18) = v3[*(v13 + 120)];
  sub_1BF3AB734(v19);
  a2[3] = v11;
  *a2 = v12;
}

uint64_t sub_1BF408D4C(uint64_t a1)
{

  sub_1BF408B98(v1, v4);

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2 = sub_1BF4E9714();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2;
}

uint64_t sub_1BF408DB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(v3 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = v13 - v7;
  (*(v5 + 16))(v13 - v7, &v2[*(v3 + 96)], v4, v6);
  sub_1BF4E8884();
  (*(v5 + 8))(v8, v4);
  v9 = &v2[*(*v2 + 104)];
  v10 = *(v9 + 4);
  v11 = *(v9 + 1);
  v13[0] = *v9;
  v13[1] = v11;
  v14 = v10;
  sub_1BF408758();
  return sub_1BF4E9824();
}

uint64_t sub_1BF408F34(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v13 = *(v6 + 16);
  v13(&v25 - v11, v14 + *(*v14 + 96), v5, v10);
  (v13)(v8, a2 + *(*a2 + 96), v5);
  v15 = sub_1BF4E88C4();
  v16 = *(v6 + 8);
  v16(v8, v5);
  v16(v12, v5);
  if ((v15 & 1) != 0 && ((v17 = a1 + *(*a1 + 104), v18 = a2 + *(*a2 + 104), *v17 == *v18) ? (v19 = *(v17 + 8) == *(v18 + 8)) : (v19 = 0), v19 ? (v20 = *(v17 + 16) == *(v18 + 16)) : (v20 = 0), v20 ? (v21 = *(v17 + 24) == *(v18 + 24)) : (v21 = 0), v21 ? (v22 = *(v17 + 32) == *(v18 + 32)) : (v22 = 0), v22))
  {
    v23 = *(a1 + *(*a1 + 120)) ^ *(a2 + *(*a2 + 120)) ^ 1;
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

double sub_1BF40919C(uint64_t a1, double a2, double a3)
{
  result = a2 - a3 + *(a1 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1BF409220()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4092CC(double a1)
{
  sub_1BF4E9804();
  sub_1BF408DB0(v2);
  return sub_1BF4E9844();
}

uint64_t sub_1BF40930C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF40932C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_1BF409374()
{
  result = qword_1EBDD8DF8;
  if (!qword_1EBDD8DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8DF8);
  }

  return result;
}

uint64_t sub_1BF409410(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  sub_1BF408DB0(v3);
  return sub_1BF4E9844();
}

uint64_t sub_1BF40949C(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 16);
  v4 = __OFADD__(v3, v2);
  v5 = v3 + v2;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(result + 16) = v5;
  }

  return result;
}

uint64_t sub_1BF4094B8(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 24);
  v4 = __OFADD__(v3, v2);
  v5 = v3 + v2;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(result + 24) = v5;
  }

  return result;
}

double sub_1BF4094D4(uint64_t a1)
{
  result = *(v1 + 16) + *(a1 + 8);
  *(a1 + 8) = result;
  return result;
}

double sub_1BF4094E8(double *a1)
{
  result = *(v1 + 16) + *a1;
  *a1 = result;
  return result;
}

uint64_t sub_1BF409508(uint64_t a1)
{
  v2 = sub_1BF4095C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF409544(uint64_t a1)
{
  v2 = sub_1BF4095C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1BF4095C4()
{
  result = qword_1EBDD8E08;
  if (!qword_1EBDD8E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E08);
  }

  return result;
}

uint64_t sub_1BF409730(uint64_t a1)
{
  v2 = sub_1BF40990C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF40976C(uint64_t a1)
{
  v2 = sub_1BF40990C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF4097EC(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1BF4E9864();
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1BF40990C()
{
  result = qword_1EBDD8E18;
  if (!qword_1EBDD8E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E18);
  }

  return result;
}

uint64_t sub_1BF4099A4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1BF4E9864();
  return (*(v10 + 8))(v12, v9);
}

uint64_t static ActivityAttributesType.mock()()
{
  sub_1BF409B0C();

  return sub_1BF4E7444();
}

unint64_t sub_1BF409B0C()
{
  result = qword_1EBDD8E20;
  if (!qword_1EBDD8E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E20);
  }

  return result;
}

double static ActivityKey.mock(activityID:extensionBundleIdentifier:containerBundleIdentifier:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v33 = a2;
  v31 = a1;
  v32 = sub_1BF4E7454();
  v8 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9290, &qword_1BF4EE4B0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v18 = MEMORY[0x1EEE9AC00](v17);
  (*(v20 + 16))(&v30 - v19, a3, v18);
  sub_1BF40A05C(a4, v13);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v13, 1, v21) == 1)
  {
    sub_1BF4E7694();
    if (v23(v13, 1, v21) != 1)
    {
      sub_1BF40A0CC(v13);
    }
  }

  else
  {
    (*(v22 + 32))(v16, v13, v21);
  }

  sub_1BF4E9034();
  (*(v22 + 56))(v16, 0, 1, v21);
  v24 = sub_1BF4E9014();
  sub_1BF409B0C();
  sub_1BF4E7444();
  if (v33)
  {
    v25 = v31;
  }

  else
  {
    v25 = 0x7974697669746361;
  }

  if (v33)
  {
    v26 = v33;
  }

  else
  {
    v26 = 0xEB00000000314449;
  }

  *a5 = v24;
  v27 = type metadata accessor for ActivityKey(0);
  (*(v8 + 32))(&a5[*(v27 + 20)], v10, v32);
  v28 = &a5[*(v27 + 24)];
  *v28 = v25;
  v28[1] = v26;

  return result;
}

id static ActivityKey.mock(activityID:extensionIdentity:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v18 = a3;
  v7 = sub_1BF4E7454();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF409B0C();
  sub_1BF4E7444();
  if (a2)
  {
    v11 = a1;
  }

  else
  {
    v11 = 0x7974697669746361;
  }

  if (a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0xEB00000000314449;
  }

  *a4 = v18;
  v13 = type metadata accessor for ActivityKey(0);
  (*(v8 + 32))(&a4[*(v13 + 20)], v10, v7);
  v14 = &a4[*(v13 + 24)];
  *v14 = v11;
  *(v14 + 1) = v12;

  v15 = v18;

  return v15;
}

uint64_t sub_1BF40A05C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9290, &qword_1BF4EE4B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF40A0CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9290, &qword_1BF4EE4B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BF40A138()
{
  result = qword_1EBDD8E28;
  if (!qword_1EBDD8E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E28);
  }

  return result;
}

unint64_t sub_1BF40A190()
{
  result = qword_1EBDD8E30;
  if (!qword_1EBDD8E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E30);
  }

  return result;
}

unint64_t sub_1BF40A1E8()
{
  result = qword_1EBDD8E38;
  if (!qword_1EBDD8E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E38);
  }

  return result;
}

unint64_t sub_1BF40A240()
{
  result = qword_1EBDD8E40;
  if (!qword_1EBDD8E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E40);
  }

  return result;
}

unint64_t sub_1BF40A298()
{
  result = qword_1EBDD8E48;
  if (!qword_1EBDD8E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E48);
  }

  return result;
}

unint64_t sub_1BF40A2F0()
{
  result = qword_1EBDD8E50;
  if (!qword_1EBDD8E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E50);
  }

  return result;
}

unint64_t sub_1BF40A388()
{
  result = qword_1EBDD8E58;
  if (!qword_1EBDD8E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E58);
  }

  return result;
}

unint64_t sub_1BF40A3E0()
{
  result = qword_1EBDD8E60;
  if (!qword_1EBDD8E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E60);
  }

  return result;
}

unint64_t sub_1BF40A438()
{
  result = qword_1EBDD8E68;
  if (!qword_1EBDD8E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E68);
  }

  return result;
}

unint64_t sub_1BF40A490()
{
  result = qword_1EBDD8E70;
  if (!qword_1EBDD8E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E70);
  }

  return result;
}

id WidgetEntryKey.extensionIdentity.getter()
{
  v1 = [*v0 extensionIdentity];

  return v1;
}

uint64_t WidgetEntryKey.hashValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF4E90B4();
  v8 = type metadata accessor for WidgetEntryKey(0);
  sub_1BF3988F8(v0 + *(v8 + 24), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1BF4E9824();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1BF4E9824();
    sub_1BF38C8FC(&unk_1EDC9F018, MEMORY[0x1E6994140]);
    sub_1BF4E8884();
    (*(v2 + 8))(v4, v1);
  }

  return sub_1BF4E9844();
}

uint64_t sub_1BF40A760(double a1)
{
  sub_1BF4E9804();
  WidgetEntryKey.hash(into:)(v2);
  return sub_1BF4E9844();
}

uint64_t sub_1BF40A7A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x7363697274656DLL;
  if (v2 != 1)
  {
    v4 = 1953722216;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746567646977;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x7363697274656DLL;
  if (*a2 != 1)
  {
    v8 = 1953722216;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746567646977;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BF4E9734();
  }

  return v11 & 1;
}

uint64_t sub_1BF40A894(double a1)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF40A92C(uint64_t a1)
{
  sub_1BF4E89F4();
}

uint64_t sub_1BF40A9B0(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

unint64_t sub_1BF40AA44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BF40B750(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1BF40AA74(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x7363697274656DLL;
  if (v2 != 1)
  {
    v5 = 1953722216;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746567646977;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1BF40AAC8()
{
  v1 = 0x7363697274656DLL;
  if (*v0 != 1)
  {
    v1 = 1953722216;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746567646977;
  }
}

unint64_t sub_1BF40AB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF40B750(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF40AB4C(uint64_t a1)
{
  v2 = sub_1BF40B5D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF40AB88(uint64_t a1)
{
  v2 = sub_1BF40B5D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void WidgetEntryKey.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E80, &qword_1BF4EE7A0);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v28 - v8;
  v10 = type metadata accessor for WidgetEntryKey(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1BF40B5D0();
  sub_1BF4E9854();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    return;
  }

  v33 = v10;
  v34 = v6;
  v35 = v12;
  v14 = v37;
  v41 = 0;
  sub_1BF3BCF88();
  sub_1BF4E95B4();
  v15 = v9;
  v16 = v39;
  v17 = v40;
  v18 = sub_1BF3901C0(0, &qword_1EDC96370, 0x1E696ACD0);
  sub_1BF3901C0(0, &qword_1EDC9F120, 0x1E6994370);
  v19 = sub_1BF4E8EB4();
  v20 = v14;
  v31 = v18;
  v32 = v16;
  if (v19)
  {
    v21 = v35;
    *v35 = v19;
    v41 = 1;
    sub_1BF4E95B4();
    v30 = v15;
    v23 = v39;
    v22 = v40;
    sub_1BF3901C0(0, &unk_1EDC9F150, 0x1E69943F0);
    v24 = sub_1BF4E8EB4();
    v29 = v22;
    v31 = v23;
    if (v24)
    {
      v28[1] = v24;
      v21[1] = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
      LOBYTE(v39) = 2;
      sub_1BF38C8FC(&qword_1EDC9D548, MEMORY[0x1E6994158]);
      v25 = v21;
      v26 = v34;
      v27 = v30;
      sub_1BF4E9554();
      (*(v20 + 8))(v27, v7);
      sub_1BF3B03C0(v31, v29);
      sub_1BF3B03C0(v32, v17);
      sub_1BF3C0870(v26, v25 + *(v33 + 24));
      sub_1BF3A3470(v25, v36);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      sub_1BF393884(v25);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void WidgetEntryKey.encode(to:)(void *a1)
{
  v3 = v1;
  v51 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = &v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E90, &qword_1BF4EE7A8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF40B5D0();
  sub_1BF4E9864();
  v13 = objc_opt_self();
  v14 = *v3;
  v49 = 0;
  v15 = [v13 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v49];
  v16 = v49;
  if (!v15)
  {
    v21 = v16;
    sub_1BF4E6FF4();

    swift_willThrow();
LABEL_5:
    (*(v10 + 8))(v12, v9);
    return;
  }

  v47 = v10;
  v17 = v3;
  v18 = sub_1BF4E71C4();
  v20 = v19;

  v49 = v18;
  v50 = v20;
  v48 = 0;
  sub_1BF3B01D8();
  sub_1BF4E9674();
  if (v2)
  {
    (*(v47 + 8))(v12, v9);
    sub_1BF3B03C0(v18, v20);
    return;
  }

  v40 = v18;
  v41 = v9;
  v42 = v20;
  v22 = v17;
  v23 = v17[1];
  v49 = 0;
  v24 = [v13 archivedDataWithRootObject:v23 requiringSecureCoding:1 error:&v49];
  v25 = v49;
  if (!v24)
  {
    v30 = v25;
    sub_1BF4E6FF4();

    swift_willThrow();
    v31 = sub_1BF3B03C0(v40, v42);
    (*(v47 + 8))(v12, v41, v31);
    return;
  }

  v26 = sub_1BF4E71C4();
  v28 = v27;

  v49 = v26;
  v50 = v28;
  v48 = 1;
  v9 = v41;
  sub_1BF4E9674();
  v29 = v42;
  v10 = v47;
  v38 = v26;
  v39 = v28;
  v32 = type metadata accessor for WidgetEntryKey(0);
  v33 = v44;
  sub_1BF3988F8(v22 + *(v32 + 24), v44);
  v35 = v45;
  v34 = v46;
  if ((*(v45 + 48))(v33, 1, v46) != 1)
  {
    v36 = v43;
    (*(v35 + 32))(v43, v33, v34);
    LOBYTE(v49) = 2;
    sub_1BF38C8FC(&unk_1EDC9D558, MEMORY[0x1E6994138]);
    sub_1BF4E9674();
    sub_1BF3B03C0(v38, v39);
    v37 = sub_1BF3B03C0(v40, v29);
    (*(v35 + 8))(v36, v34, v37);
    goto LABEL_5;
  }

  (*(v10 + 8))(v12, v9);
  sub_1BF3B03C0(v38, v39);
  sub_1BF3B03C0(v40, v29);
  sub_1BF38C9B4(v33, &qword_1EBDD8E78, &unk_1BF4EE790);
}

unint64_t sub_1BF40B5D0()
{
  result = qword_1EBDD8E88;
  if (!qword_1EBDD8E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E88);
  }

  return result;
}

unint64_t sub_1BF40B64C()
{
  result = qword_1EBDD8E98;
  if (!qword_1EBDD8E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8E98);
  }

  return result;
}

unint64_t sub_1BF40B6A4()
{
  result = qword_1EBDD8EA0;
  if (!qword_1EBDD8EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8EA0);
  }

  return result;
}

unint64_t sub_1BF40B6FC()
{
  result = qword_1EBDD8EA8;
  if (!qword_1EBDD8EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8EA8);
  }

  return result;
}

unint64_t sub_1BF40B750(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BF4E9514();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BF40B79C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v82 = a5;
  v83 = a1;
  v75 = a4;
  v85 = a3;
  v8 = sub_1BF4E7514();
  v78 = *(v8 - 8);
  v79 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BF4E7414();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8ED0, &qword_1BF4EEB08);
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v73 = &v70 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EC8, &qword_1BF4EEA58);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v70 - v15;
  v17 = OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payload;
  v18 = sub_1BF4E73E4();
  v19 = *(*(v18 - 8) + 56);
  v19(v6 + v17, 1, 1, v18);
  v20 = OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription__payloadPublisher;
  v72 = v18;
  v19(v16, 1, 1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8ED8, &unk_1BF4EEB10);
  swift_allocObject();
  *(v6 + v20) = sub_1BF4E7C64();
  *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payloadSubscription) = 0;
  *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_descriptorSubscription) = 0;
  v21 = OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_lock;
  type metadata accessor for UnfairLock();
  v22 = swift_allocObject();
  v23 = swift_slowAlloc();
  *v23 = 0;
  *(v6 + v21) = v22;
  *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription__lock_contentAssertions) = MEMORY[0x1E69E7CC8];
  *(v22 + 16) = v23;
  v24 = OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_state;
  v25 = *MEMORY[0x1E6959C40];
  v26 = sub_1BF4E74A4();
  v27 = v6 + v24;
  v28 = v83;
  (*(*(v26 - 8) + 104))(v27, v25, v26);
  v86 = *(v6 + v20);
  sub_1BF38C8B4(&unk_1EDC9D3A0, &qword_1EBDD8ED8, &unk_1BF4EEB10, MEMORY[0x1E695BFB0]);
  *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payloadPublisher) = sub_1BF4E7C84();
  v29 = (v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier);
  *v29 = v28;
  v29[1] = a2;
  sub_1BF38E49C(v85, v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityCenter);
  v30 = qword_1EDC9D470;
  v84 = a2;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = sub_1BF4E7B54();
  v32 = __swift_project_value_buffer(v31, qword_1EDCA68B0);

  v81 = v32;
  v33 = sub_1BF4E7B34();
  v34 = sub_1BF4E8E84();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v86 = v36;
    *v35 = 136446210;
    v71 = v6;
    v37 = v28;
    v38 = *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier);
    v39 = *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier + 8);

    v40 = sub_1BF38D65C(v38, v39, &v86);
    v28 = v37;
    v6 = v71;

    *(v35 + 4) = v40;
    _os_log_impl(&dword_1BF389000, v33, v34, "Registering for payload...: %{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x1BFB5A5D0](v36, -1, -1);
    MEMORY[0x1BFB5A5D0](v35, -1, -1);
  }

  v41 = (v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityCenter);
  v42 = *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityCenter + 24);
  v43 = *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityCenter + 32);
  __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityCenter), v42);
  v44 = v80;
  (*(v11 + 104))(v80, *MEMORY[0x1E6959BB8], v10);
  v45 = (*(v43 + 40))(v28, v84, v44, v42, v43);
  (*(v11 + 8))(v44, v10);
  v86 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EE0, &qword_1BF4EEB20);
  sub_1BF38C8B4(&qword_1EDC9D418, &qword_1EBDD8EE0, &qword_1BF4EEB20, MEMORY[0x1E695BED8]);
  v46 = v73;
  sub_1BF4E7C94();

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v49 = v75;
  v48[2] = v47;
  v48[3] = v49;
  v48[4] = v82;
  swift_allocObject();
  swift_weakInit();
  sub_1BF38C8B4(&unk_1EDC9D448, &qword_1EBDD8ED0, &qword_1BF4EEB08, MEMORY[0x1E695BC80]);

  v50 = v76;
  v51 = sub_1BF4E7CC4();

  (*(v74 + 8))(v46, v50);
  *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payloadSubscription) = v51;

  v52 = v41[3];
  v53 = v41[4];
  __swift_project_boxed_opaque_existential_1(v41, v52);
  v54 = v77;
  sub_1BF4E7504();
  v56 = (*(v53 + 32))(v54, v52, v53);
  (*(v78 + 8))(v54, v79);
  v86 = v56;
  v57 = swift_allocObject();
  swift_weakInit();

  v58 = swift_allocObject();
  v60 = v83;
  v59 = v84;
  v58[2] = v57;
  v58[3] = v60;
  v58[4] = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EE8, &qword_1BF4EEB28);
  sub_1BF38C8B4(&qword_1EDC9D408, &qword_1EBDD8EE8, &qword_1BF4EEB28, MEMORY[0x1E695BED8]);
  v61 = sub_1BF4E7CC4();

  *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_descriptorSubscription) = v61;

  v62 = sub_1BF4E7B34();
  v63 = sub_1BF4E8E84();

  if (os_log_type_enabled(v62, v63))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v86 = v66;
    *v65 = 136446210;
    v67 = *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier);
    v68 = *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier + 8);

    v69 = sub_1BF38D65C(v67, v68, &v86);

    *(v65 + 4) = v69;
    _os_log_impl(&dword_1BF389000, v62, v63, "Subscribed to activity payloads for: %{public}s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    MEMORY[0x1BFB5A5D0](v66, -1, -1);
    MEMORY[0x1BFB5A5D0](v65, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v85);
  return v6;
}

uint64_t sub_1BF40C2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EDC9D470 != -1)
  {
    swift_once();
  }

  v4 = sub_1BF4E7B54();
  __swift_project_value_buffer(v4, qword_1EDCA68B0);
  sub_1BF38E49C(a1, v18);
  v5 = sub_1BF4E7B34();
  v6 = sub_1BF4E8E84();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    sub_1BF38E49C(v18, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EF8, &qword_1BF4EEB38);
    v9 = sub_1BF4E8994();
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v12 = sub_1BF38D65C(v9, v11, &v17);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1BF389000, v5, v6, "Received payload: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1BFB5A5D0](v8, -1, -1);
    MEMORY[0x1BFB5A5D0](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  sub_1BF38E49C(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EF8, &qword_1BF4EEB38);
  v13 = sub_1BF4E73E4();
  v14 = swift_dynamicCast();
  return (*(*(v13 - 8) + 56))(a2, v14 ^ 1u, 1, v13);
}

double sub_1BF40C514(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_1EDC9D470 != -1)
    {
      swift_once();
    }

    v7 = sub_1BF4E7B54();
    __swift_project_value_buffer(v7, qword_1EDCA68B0);

    v8 = sub_1BF4E7B34();
    v9 = sub_1BF4E8E84();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136446210;
      v12 = *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier);
      v13 = *(v6 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier + 8);

      v14 = sub_1BF38D65C(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1BF389000, v8, v9, "Activity ended: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1BFB5A5D0](v11, -1, -1);
      MEMORY[0x1BFB5A5D0](v10, -1, -1);
    }

    sub_1BF40DA40();
    a3(v15);
  }

  return result;
}

uint64_t sub_1BF40C6D4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EC8, &qword_1BF4EEA58);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v23 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    if (qword_1EDC9D470 != -1)
    {
      swift_once();
    }

    v8 = sub_1BF4E7B54();
    __swift_project_value_buffer(v8, qword_1EDCA68B0);

    v9 = sub_1BF4E7B34();
    v10 = sub_1BF4E8E84();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23[0] = v12;
      *v11 = 136446210;
      v13 = *(v7 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier);
      v14 = *(v7 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier + 8);

      v15 = sub_1BF38D65C(v13, v14, v23);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1BF389000, v9, v10, "Activity payload updated: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1BFB5A5D0](v12, -1, -1);
      MEMORY[0x1BFB5A5D0](v11, -1, -1);
    }

    v16 = *(v7 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_lock);
    v17 = *(v16 + 16);

    os_unfair_lock_lock(v17);
    v18 = sub_1BF4E73E4();
    v19 = *(v18 - 8);
    v20 = *(v19 + 16);
    v20(v5, a1, v18);
    v21 = *(v19 + 56);
    v21(v5, 0, 1, v18);
    v22 = OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payload;
    swift_beginAccess();
    sub_1BF40FF30(v5, v7 + v22);
    swift_endAccess();
    os_unfair_lock_unlock(*(v16 + 16));

    v20(v5, a1, v18);
    v21(v5, 0, 1, v18);

    sub_1BF4E7C54();

    return sub_1BF38C9B4(v5, &qword_1EBDD8EC8, &qword_1BF4EEA58);
  }

  return result;
}

void sub_1BF40CA10(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v72 = a4;
  v73 = a3;
  v6 = sub_1BF4E73E4();
  v68 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EC8, &qword_1BF4EEA58);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v62 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v58 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  v70 = sub_1BF4E7404();
  v64 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1BF4E7484();
  v18 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v58 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EF0, &qword_1BF4EEB30);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v66 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v65 = &v58 - v27;
  v28 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v67 = Strong;
    v58 = v8;
    v30 = *(v28 + 16);
    if (v30)
    {
      v59 = v20;
      v60 = v15;
      v61 = v6;
      v31 = 0;
      v69 = v18 + 16;
      v32 = (v64 + 8);
      v33 = v18;
      v34 = (v18 + 8);
      v35 = v71;
      while (v31 < *(v28 + 16))
      {
        (*(v33 + 16))(v23, v28 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v31, v35);
        sub_1BF4E7464();
        v36 = sub_1BF4E73F4();
        v38 = v37;
        (*v32)(v17, v70);
        if (v36 == v73 && v38 == v72)
        {

LABEL_12:
          v18 = v33;
          v42 = v65;
          v35 = v71;
          (*(v33 + 32))(v65, v23, v71);
          v40 = 0;
          v15 = v60;
          v6 = v61;
          v41 = v68;
          v20 = v59;
          goto LABEL_13;
        }

        v39 = sub_1BF4E9734();

        if (v39)
        {
          goto LABEL_12;
        }

        ++v31;
        v35 = v71;
        (*v34)(v23, v71);
        if (v30 == v31)
        {
          v40 = 1;
          v15 = v60;
          v6 = v61;
          v41 = v68;
          v18 = v33;
          v20 = v59;
          v42 = v65;
          goto LABEL_13;
        }
      }

      __break(1u);

      os_unfair_lock_unlock(*(v28 + 16));
      __break(1u);
    }

    else
    {
      v40 = 1;
      v35 = v71;
      v42 = v65;
      v41 = v68;
LABEL_13:
      (*(v18 + 56))(v42, v40, 1, v35);
      v43 = v66;
      sub_1BF38C94C(v42, v66, &qword_1EBDD8EF0, &qword_1BF4EEB30);
      v44 = v42;
      if ((*(v18 + 48))(v43, 1, v35) == 1)
      {
        sub_1BF38C9B4(v42, &qword_1EBDD8EF0, &qword_1BF4EEB30);

        sub_1BF38C9B4(v43, &qword_1EBDD8EF0, &qword_1BF4EEB30);
      }

      else
      {
        (*(v18 + 32))(v20, v43, v35);
        v74 = 0;
        v45 = *(v41 + 56);
        v45(v15, 1, 1, v6);
        v46 = v67;
        v47 = *(v67 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_lock);
        v48 = *(v47 + 16);

        os_unfair_lock_lock(v48);
        sub_1BF40D1BC(v46, v20, v15, &v74);
        os_unfair_lock_unlock(*(v47 + 16));

        if (v74)
        {
          v49 = v63;
          sub_1BF38C94C(v15, v63, &qword_1EBDD8EC8, &qword_1BF4EEA58);
          v50 = v68;
          if ((*(v68 + 48))(v49, 1, v6) == 1)
          {
            sub_1BF38C9B4(v44, &qword_1EBDD8EF0, &qword_1BF4EEB30);

            v51 = &qword_1EBDD8EC8;
            v52 = &qword_1BF4EEA58;
            v53 = v49;
          }

          else
          {
            v54 = v58;
            (*(v50 + 32))(v58, v49, v6);
            v55 = *(v50 + 16);
            v56 = v62;
            v55(v62, v54, v6);
            v45(v56, 0, 1, v6);

            sub_1BF4E7C54();

            sub_1BF38C9B4(v56, &qword_1EBDD8EC8, &qword_1BF4EEA58);
            (*(v68 + 8))(v54, v6);
            v51 = &qword_1EBDD8EF0;
            v52 = &qword_1BF4EEB30;
            v53 = v44;
          }

          sub_1BF38C9B4(v53, v51, v52);
        }

        else
        {
          sub_1BF38C9B4(v44, &qword_1EBDD8EF0, &qword_1BF4EEB30);
        }

        v57 = v71;
        sub_1BF38C9B4(v15, &qword_1EBDD8EC8, &qword_1BF4EEA58);
        (*(v18 + 8))(v20, v57);
      }
    }
  }
}

uint64_t sub_1BF40D1BC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v36 = a3;
  v37 = a4;
  v40 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EC8, &qword_1BF4EEA58);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v34 = &v33 - v6;
  v7 = sub_1BF4E74A4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v14 = OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_state;
  swift_beginAccess();
  v15 = *(v8 + 16);
  v38 = a1;
  v35 = v14;
  v15(v13, a1 + v14, v7);
  v16 = *(v8 + 104);
  v16(v10, *MEMORY[0x1E6959C40], v7);
  LOBYTE(a1) = sub_1BF4E7494();
  v17 = *(v8 + 8);
  v17(v10, v7);
  v17(v13, v7);
  if (a1 & 1) != 0 && (sub_1BF4E7474(), v16(v10, *MEMORY[0x1E6959C38], v7), v18 = sub_1BF4E7494(), v17(v10, v7), v17(v13, v7), (v18))
  {
    if (qword_1EDC9D470 != -1)
    {
      swift_once();
    }

    v19 = sub_1BF4E7B54();
    __swift_project_value_buffer(v19, qword_1EDCA68B0);
    v20 = v38;

    v21 = sub_1BF4E7B34();
    v22 = sub_1BF4E8E84();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v39[0] = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_1BF38D65C(*(v20 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier), *(v20 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier + 8), v39);
      _os_log_impl(&dword_1BF389000, v21, v22, "Activity became stale changed: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1BFB5A5D0](v24, -1, -1);
      MEMORY[0x1BFB5A5D0](v23, -1, -1);
    }

    v25 = OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payload;
    swift_beginAccess();
    v26 = v20 + v25;
    v27 = v34;
    sub_1BF38C94C(v26, v34, &qword_1EBDD8EC8, &qword_1BF4EEA58);
    sub_1BF40FF30(v27, v36);
    v28 = 1;
  }

  else
  {
    v29 = v36;
    sub_1BF38C9B4(v36, &qword_1EBDD8EC8, &qword_1BF4EEA58);
    v30 = sub_1BF4E73E4();
    (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
    v28 = 0;
    v20 = v38;
  }

  *v37 = v28;
  sub_1BF4E7474();
  v31 = v35;
  swift_beginAccess();
  (*(v8 + 40))(v20 + v31, v13, v7);
  return swift_endAccess();
}

uint64_t sub_1BF40D630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = v31 - v10;
  if (qword_1EDC9D470 != -1)
  {
    swift_once();
  }

  v12 = sub_1BF4E7B54();
  __swift_project_value_buffer(v12, qword_1EDCA68B0);
  sub_1BF38C94C(a1, v11, &qword_1EBDD87A8, &unk_1BF4EB2C0);
  v13 = sub_1BF4E7B34();
  v14 = sub_1BF4E8E84();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v34 = a2;
    v16 = v15;
    v33 = swift_slowAlloc();
    v36[0] = v33;
    *v16 = 136446210;
    sub_1BF38C94C(v11, v8, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    v37 = 91;
    v38 = 0xE100000000000000;
    v17 = [*v8 description];
    v32 = v14;
    v18 = v17;
    v19 = sub_1BF4E8914();
    v31[1] = v6;
    v20 = v19;
    v35 = v3;
    v22 = v21;

    MEMORY[0x1BFB58C90](v20, v22);

    MEMORY[0x1BFB58C90](58, 0xE100000000000000);
    v23 = type metadata accessor for ActivityKey(0);
    sub_1BF4E7454();
    sub_1BF3A10FC(&qword_1EDC9F098, MEMORY[0x1E6959BC8], MEMORY[0x1E6959BF0]);
    v24 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v24);

    MEMORY[0x1BFB58C90](58, 0xE100000000000000);
    MEMORY[0x1BFB58C90](*(v8 + *(v23 + 24)), *(v8 + *(v23 + 24) + 8));
    MEMORY[0x1BFB58C90](93, 0xE100000000000000);
    MEMORY[0x1BFB58C90](58, 0xE100000000000000);
    v25 = ActivityVariantKey.description.getter();
    MEMORY[0x1BFB58C90](v25);

    v26 = v37;
    v27 = v38;
    sub_1BF38C9B4(v8, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    sub_1BF38C9B4(v11, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    v28 = sub_1BF38D65C(v26, v27, v36);

    *(v16 + 4) = v28;
    _os_log_impl(&dword_1BF389000, v13, v32, "Adding assertion for variant: %{public}s", v16, 0xCu);
    v29 = v33;
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x1BFB5A5D0](v29, -1, -1);
    MEMORY[0x1BFB5A5D0](v16, -1, -1);
  }

  else
  {

    sub_1BF38C9B4(v11, &qword_1EBDD87A8, &unk_1BF4EB2C0);
  }

  sub_1BF38C94C(a1, v8, &qword_1EBDD87A8, &unk_1BF4EB2C0);
  sub_1BF38E49C(v39, &v37);
  swift_beginAccess();
  sub_1BF43A624(&v37, v8);
  return swift_endAccess();
}

void sub_1BF40DA40()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payloadSubscription))
  {

    sub_1BF4E7BD4();
  }

  if (*(v0 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_descriptorSubscription))
  {

    sub_1BF4E7BD4();
  }

  v2 = *(v0 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_lock);
  os_unfair_lock_lock(*(v2 + 16));
  sub_1BF40DB04(v1);
  v3 = *(v2 + 16);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_1BF40DB04(uint64_t a1)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F00, qword_1BF4EEB40);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v26 - v2;
  if (qword_1EDC9D470 != -1)
  {
LABEL_16:
    swift_once();
  }

  v3 = sub_1BF4E7B54();
  __swift_project_value_buffer(v3, qword_1EDCA68B0);

  v4 = sub_1BF4E7B34();
  v5 = sub_1BF4E8E84();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30[0] = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1BF38D65C(*(a1 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier), *(a1 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityIdentifier + 8), v30);
    _os_log_impl(&dword_1BF389000, v4, v5, "Invalidating activity subscription: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1BFB5A5D0](v7, -1, -1);
    MEMORY[0x1BFB5A5D0](v6, -1, -1);
  }

  v8 = OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription__lock_contentAssertions;
  swift_beginAccess();
  v9 = *(a1 + v8);
  v10 = *(v9 + 64);
  v27 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v31 = v9;
  swift_bridgeObjectRetain_n();
  v15 = 0;
  if (v13)
  {
    while (1)
    {
      v16 = v15;
LABEL_12:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v18 = v17 | (v16 << 6);
      a1 = v31;
      v19 = *(v31 + 48);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
      v21 = v28;
      sub_1BF38C94C(v19 + *(*(v20 - 8) + 72) * v18, v28, &qword_1EBDD87A8, &unk_1BF4EB2C0);
      v22 = (v21 + *(v29 + 48));
      sub_1BF38E49C(*(a1 + 56) + 40 * v18, v22);
      v23 = v22[3];
      v24 = v22[4];
      __swift_project_boxed_opaque_existential_1(v22, v23);
      (*(v24 + 8))(v23, v24);
      sub_1BF38C9B4(v21, &qword_1EBDD8F00, qword_1BF4EEB40);
      if (!v13)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = *(v27 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_12;
    }
  }
}

uint64_t sub_1BF40DE40()
{
  sub_1BF40DA40();
  sub_1BF38C9B4(v0 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payload, &qword_1EBDD8EC8, &qword_1BF4EEA58);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_activityCenter));

  v1 = OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_state;
  v2 = sub_1BF4E74A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1BF40DF48()
{
  sub_1BF40DE40();

  return swift_deallocClassInstance();
}

uint64_t ActivitySubscriber.__allocating_init(logger:activityCenter:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  ActivitySubscriber.init(logger:activityCenter:)(a1, a2);
  return v4;
}

uint64_t ActivitySubscriber.init(logger:activityCenter:)(uint64_t a1, void *a2)
{
  v27 = a2;
  v31 = a1;
  v5 = sub_1BF4E7FF4();
  v6 = *(v5 - 8);
  v36 = v5;
  v37 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v35 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1BF4E8F24();
  v29 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v28 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF4E8ED4();
  MEMORY[0x1EEE9AC00](v9);
  v26[2] = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BF4E8064();
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E69E7CC8];
  *(v2 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber__locked_subscriptions) = MEMORY[0x1E69E7CC8];
  *(v2 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber__locked_descriptors) = v14;
  v15 = OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_lock;
  type metadata accessor for UnfairLock();
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  *v17 = 0;
  *(v16 + 16) = v17;
  *(v2 + v15) = v16;
  *(v2 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_announcementSubscription) = 0;
  v18 = OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_logger;
  v30 = sub_1BF4E7B54();
  v19 = *(v30 - 8);
  (*(v19 + 16))(v2 + v18, a1, v30);
  sub_1BF38E49C(a2, v2 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_activityCenter);
  v26[1] = sub_1BF3DC720();
  sub_1BF4E8024();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BF3A10FC(&qword_1EDC9F148, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
  v20 = MEMORY[0x1E69E6328];
  sub_1BF38C8B4(&qword_1EDC9F178, &qword_1EBDD85C0, &qword_1BF4EC090, MEMORY[0x1E69E6328]);
  sub_1BF4E91A4();
  (*(v29 + 104))(v28, *MEMORY[0x1E69E8098], v32);
  v21 = sub_1BF4E8F64();
  aBlock[4] = sub_1BF40E99C;
  v40 = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF38E868;
  aBlock[3] = &block_descriptor_3;
  v22 = _Block_copy(aBlock);

  sub_1BF4E8014();
  v38 = MEMORY[0x1E69E7CC0];
  sub_1BF3A10FC(&qword_1EDC9F980, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
  sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890, v20);
  v24 = v35;
  v23 = v36;
  sub_1BF4E91A4();
  MEMORY[0x1BFB591B0](0, v13, v24, v22);
  _Block_release(v22);

  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  (*(v19 + 8))(v31, v30);
  (*(v37 + 8))(v24, v23);
  (*(v33 + 8))(v13, v34);

  return v2;
}

void sub_1BF40E584(uint64_t a1)
{
  v2 = sub_1BF4E7514();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_activityCenter + 24);
  v7 = *(a1 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_activityCenter + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_activityCenter), v6);
  sub_1BF4E7504();
  v8 = (*(v7 + 32))(v5, v6, v7);
  (*(v3 + 8))(v5, v2);
  v14[2] = v8;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EE8, &qword_1BF4EEB28);
  sub_1BF38C8B4(&qword_1EDC9D408, &qword_1EBDD8EE8, &qword_1BF4EEB28, MEMORY[0x1E695BED8]);
  v9 = sub_1BF4E7CC4();

  *(a1 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_announcementSubscription) = v9;

  if (qword_1EDC9D470 != -1)
  {
    swift_once();
  }

  v10 = sub_1BF4E7B54();
  __swift_project_value_buffer(v10, qword_1EDCA68B0);
  v11 = sub_1BF4E7B34();
  v12 = sub_1BF4E8E84();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1BF389000, v11, v12, "Subscribed to announcement feed", v13, 2u);
    MEMORY[0x1BFB5A5D0](v13, -1, -1);
  }
}

void ActivitySubscriber.deinit()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_announcementSubscription);
  if (v2)
  {

    sub_1BF4E7BD4();
  }

  v3 = OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber__locked_subscriptions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  for (i = 0; v7; i = v10)
  {
    v10 = i;
LABEL_10:
    v11 = *(*(v4 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));
    if (*(v11 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payloadSubscription))
    {

      sub_1BF4E7BD4();
    }

    else
    {
    }

    if (*(v11 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_descriptorSubscription))
    {

      sub_1BF4E7BD4();
    }

    v2 = *(v11 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_lock);
    os_unfair_lock_lock(*(v2 + 16));
    sub_1BF40DB04(v11);
    v7 &= v7 - 1;
    os_unfair_lock_unlock(*(v2 + 16));
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      v12 = OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_logger;
      v13 = sub_1BF4E7B54();
      (*(*(v13 - 8) + 8))(v1 + v12, v13);
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_activityCenter));

      return;
    }

    v7 = *(v4 + 64 + 8 * v10);
    ++i;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);

  os_unfair_lock_unlock(*(v2 + 16));
  __break(1u);
}

uint64_t ActivitySubscriber.__deallocating_deinit()
{
  ActivitySubscriber.deinit();

  return swift_deallocClassInstance();
}

void sub_1BF40EC54(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_lock);
  os_unfair_lock_lock(*(v5 + 16));
  sub_1BF40ECDC(a1, v2, a2);
  v6 = *(v5 + 16);

  os_unfair_lock_unlock(v6);
}

void sub_1BF40ECDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v49 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = v45 - v11;
  if (qword_1EDC9D470 != -1)
  {
    swift_once();
  }

  v13 = sub_1BF4E7B54();
  __swift_project_value_buffer(v13, qword_1EDCA68B0);
  v48 = a1;
  sub_1BF38C94C(a1, v12, &qword_1EBDD87A8, &unk_1BF4EB2C0);
  v14 = sub_1BF4E7B34();
  v15 = sub_1BF4E8E84();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v45[1] = v7;
    v17 = v16;
    v47 = swift_slowAlloc();
    v52[0] = v47;
    *v17 = 136446210;
    sub_1BF38C94C(v12, v9, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    v50 = 91;
    v51 = 0xE100000000000000;
    v18 = [*v9 description];
    v19 = sub_1BF4E8914();
    v46 = v15;
    v21 = v20;

    MEMORY[0x1BFB58C90](v19, v21);

    MEMORY[0x1BFB58C90](58, 0xE100000000000000);
    v22 = type metadata accessor for ActivityKey(0);
    sub_1BF4E7454();
    sub_1BF3A10FC(&qword_1EDC9F098, MEMORY[0x1E6959BC8], MEMORY[0x1E6959BF0]);
    v23 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v23);
    v4 = v3;

    MEMORY[0x1BFB58C90](58, 0xE100000000000000);
    MEMORY[0x1BFB58C90](*(v9 + *(v22 + 24)), *(v9 + *(v22 + 24) + 8));
    MEMORY[0x1BFB58C90](93, 0xE100000000000000);
    MEMORY[0x1BFB58C90](58, 0xE100000000000000);
    v24 = ActivityVariantKey.description.getter();
    MEMORY[0x1BFB58C90](v24);

    v25 = v50;
    v26 = v51;
    sub_1BF38C9B4(v9, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    sub_1BF38C9B4(v12, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    v27 = sub_1BF38D65C(v25, v26, v52);

    *(v17 + 4) = v27;
    _os_log_impl(&dword_1BF389000, v14, v46, "Subscribing to activity: %{public}s", v17, 0xCu);
    v28 = v47;
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x1BFB5A5D0](v28, -1, -1);
    MEMORY[0x1BFB5A5D0](v17, -1, -1);
  }

  else
  {

    sub_1BF38C9B4(v12, &qword_1EBDD87A8, &unk_1BF4EB2C0);
  }

  v29 = type metadata accessor for ActivityKey(0);
  v30 = v48;
  v31 = (v48 + *(v29 + 24));
  v33 = *v31;
  v32 = v31[1];
  v34 = OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber__locked_subscriptions;
  swift_beginAccess();
  v35 = *(a2 + v34);
  if (*(v35 + 16))
  {

    v37 = sub_1BF3CD5D0(v33, v32, v36);
    if (v38)
    {
      v39 = *(*(v35 + 56) + 8 * v37);

      goto LABEL_11;
    }
  }

  sub_1BF38E49C(a2 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_activityCenter, &v50);
  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v33;
  v41[4] = v32;
  type metadata accessor for ActivitySubscriber.ActivitySubscription(0);
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v39 = sub_1BF40B79C(v33, v32, &v50, sub_1BF40FEB4, v41);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = *(a2 + v34);
  *(a2 + v34) = 0x8000000000000000;
  sub_1BF3D6DBC(v39, v33, v32, isUniquelyReferenced_nonNull_native, v43);

  *(a2 + v34) = v53;
  swift_endAccess();
LABEL_11:
  v44 = *(v39 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_lock);
  os_unfair_lock_lock(*(v44 + 16));
  sub_1BF40D630(v30, v39, v49);
  if (v4)
  {

    os_unfair_lock_unlock(*(v44 + 16));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(*(v44 + 16));
  }
}

double sub_1BF40F270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_lock);
    v8 = *(v7 + 16);

    os_unfair_lock_lock(v8);
    swift_beginAccess();

    sub_1BF43A700(0, a2, a3, v9);
    swift_endAccess();
    os_unfair_lock_unlock(*(v7 + 16));
  }

  return result;
}

uint64_t sub_1BF40F34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v50 = a3;
  v7 = sub_1BF4E7514();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF4E7404();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v46 = (&v45 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EC0, &qword_1BF4EEA50);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - v19;
  v21 = *(v3 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_lock);
  os_unfair_lock_lock(*(v21 + 16));
  v22 = OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber__locked_descriptors;
  swift_beginAccess();
  v23 = *(v4 + v22);
  v24 = *(v23 + 16);
  v51 = a1;
  v52 = a2;
  if (v24)
  {

    v26 = sub_1BF3CD5D0(a1, a2, v25);
    if (v27)
    {
      (*(v10 + 16))(v20, *(v23 + 56) + *(v10 + 72) * v26, v9);
      v28 = 0;
    }

    else
    {
      v28 = 1;
    }
  }

  else
  {
    v28 = 1;
  }

  v29 = v28;
  v30 = *(v10 + 56);
  v30(v20, v29, 1, v9);
  os_unfair_lock_unlock(*(v21 + 16));
  sub_1BF38C94C(v20, v17, &qword_1EBDD8EC0, &qword_1BF4EEA50);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    v46 = v30;
    sub_1BF38C9B4(v17, &qword_1EBDD8EC0, &qword_1BF4EEA50);
    v31 = *(v4 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_activityCenter + 24);
    v32 = *(v4 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_activityCenter + 32);
    __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_activityCenter), v31);
    v33 = v47;
    sub_1BF4E7504();
    v37 = (*(v32 + 16))(v33, v31, v32);
    result = (*(v48 + 8))(v33, v49);
    v48 = *(v37 + 16);
    if (v48)
    {
      v39 = 0;
      v49 = v10 + 16;
      while (v39 < *(v37 + 16))
      {
        (*(v10 + 16))(v12, v37 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v39, v9);
        if (sub_1BF4E73F4() == v51 && v40 == v52)
        {

LABEL_21:
          sub_1BF38C9B4(v20, &qword_1EBDD8EC0, &qword_1BF4EEA50);

          v44 = v50;
          (*(v10 + 32))(v50, v12, v9);
          v42 = v44;
          v43 = 0;
          return v46(v42, v43, 1, v9);
        }

        v41 = sub_1BF4E9734();

        if (v41)
        {
          goto LABEL_21;
        }

        ++v39;
        result = (*(v10 + 8))(v12, v9);
        if (v48 == v39)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_17:
      sub_1BF38C9B4(v20, &qword_1EBDD8EC0, &qword_1BF4EEA50);

      v42 = v50;
      v43 = 1;
      return v46(v42, v43, 1, v9);
    }
  }

  else
  {
    sub_1BF38C9B4(v20, &qword_1EBDD8EC0, &qword_1BF4EEA50);
    v34 = *(v10 + 32);
    v35 = v46;
    v34(v46, v17, v9);
    v36 = v50;
    v34(v50, v35, v9);
    return (v30)(v36, 0, 1, v9);
  }

  return result;
}

uint64_t sub_1BF40F8C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_lock);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber__locked_descriptors;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v1 + 16);

  os_unfair_lock_unlock(v4);
  return v3;
}

void sub_1BF40F93C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_lock);
  os_unfair_lock_lock(*(v7 + 16));
  v8 = OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber__locked_subscriptions;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_5;
  }

  v11 = sub_1BF3CD5D0(a1, a2, v10);
  if ((v12 & 1) == 0)
  {

LABEL_5:
    v15 = sub_1BF4E73E4();
    (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
    goto LABEL_6;
  }

  v13 = *(*(v9 + 56) + 8 * v11);

  v14 = OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payload;
  swift_beginAccess();
  sub_1BF38C94C(v13 + v14, a3, &qword_1EBDD8EC8, &qword_1BF4EEA58);

LABEL_6:
  os_unfair_lock_unlock(*(v7 + 16));
}

uint64_t sub_1BF40FA80(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber_lock);
  os_unfair_lock_lock(*(v5 + 16));
  v6 = OBJC_IVAR____TtC9ChronoKit18ActivitySubscriber__locked_subscriptions;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (!*(v7 + 16))
  {
    goto LABEL_5;
  }

  v9 = sub_1BF3CD5D0(a1, a2, v8);
  if ((v10 & 1) == 0)
  {

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v11 = *(*(v7 + 56) + 8 * v9);

  v12 = *(v11 + OBJC_IVAR____TtCC9ChronoKit18ActivitySubscriberP33_8C3AD9B104C09CAB6FDDA07A581A3E2420ActivitySubscription_payloadPublisher);

LABEL_6:
  os_unfair_lock_unlock(*(v5 + 16));
  return v12;
}

uint64_t sub_1BF40FB8C(uint64_t a1)
{
  result = sub_1BF4E7B54();
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

void sub_1BF40FD54(uint64_t a1, double a2)
{
  sub_1BF40FE5C(319, a2);
  if (v2 <= 0x3F)
  {
    sub_1BF4E74A4();
    if (v3 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BF40FE5C(uint64_t a1, double a2)
{
  if (!qword_1EDC9D5D0)
  {
    sub_1BF4E73E4();
    v2 = sub_1BF4E90F4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDC9D5D0);
    }
  }
}

uint64_t objectdestroy_40Tm(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t sub_1BF40FF30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EC8, &qword_1BF4EEA58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF410180()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F08, &qword_1BF4EEBE8);
    sub_1BF38C8B4(&unk_1EDC9EF68, &qword_1EBDD8F08, &qword_1BF4EEBE8, MEMORY[0x1E695BF88]);
    v1 = sub_1BF4E7C84();
    *(v0 + 24) = v1;
  }

  return v1;
}

double sub_1BF410244(uint64_t a1)
{
  *(v1 + 24) = a1;

  return result;
}

double (*sub_1BF410254(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1BF410180();
  return sub_1BF41029C;
}

double sub_1BF41029C(uint64_t *a1)
{
  *(a1[1] + 24) = *a1;

  return result;
}

uint64_t sub_1BF4102C8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F10, &qword_1BF4EEBF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + 32);
  v7 = *(v6 + 16);

  os_unfair_lock_lock(v7);
  sub_1BF38C94C(a1, v5, &qword_1EBDD8F10, &qword_1BF4EEBF0);
  v8 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_content;
  swift_beginAccess();
  sub_1BF3A3A54(v5, v1 + v8, &qword_1EBDD8F10, &qword_1BF4EEBF0);
  swift_endAccess();
  os_unfair_lock_unlock(*(v6 + 16));

  sub_1BF4E7C14();
  return sub_1BF38C9B4(a1, &qword_1EBDD8F10, &qword_1BF4EEBF0);
}

void (*sub_1BF4103EC(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F10, &qword_1BF4EEBF0) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  v9 = *(v1 + 32);
  v10 = *(v9 + 16);

  os_unfair_lock_lock(v10);
  v11 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_content;
  swift_beginAccess();
  sub_1BF38C94C(v1 + v11, v8, &qword_1EBDD8F10, &qword_1BF4EEBF0);
  os_unfair_lock_unlock(*(v9 + 16));

  return sub_1BF410528;
}

void sub_1BF410528(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    sub_1BF38C94C(*(*a1 + 40), v3, &qword_1EBDD8F10, &qword_1BF4EEBF0);
    sub_1BF4102C8(v3);
    sub_1BF38C9B4(v4, &qword_1EBDD8F10, &qword_1BF4EEBF0);
  }

  else
  {
    sub_1BF4102C8(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_1BF4105D0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5);
  v7 = *(v3 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError);
  v6 = *(v3 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError + 8);
  v8 = *(v4 + 16);

  os_unfair_lock_unlock(v8);

  *a2 = v7;
  a2[1] = v6;
}

double sub_1BF41064C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = *(*a2 + 32);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  v7 = (v4 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError);
  *v7 = v3;
  v7[1] = v2;

  os_unfair_lock_unlock(*(v5 + 16));

  return result;
}

uint64_t sub_1BF4106D4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = *(v0 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError);
  v4 = *(v1 + 16);

  os_unfair_lock_unlock(v4);

  return v3;
}

double sub_1BF410744(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  v7 = (v2 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError);
  *v7 = a1;
  v7[1] = a2;

  os_unfair_lock_unlock(*(v5 + 16));

  return result;
}

double (*sub_1BF4107C4(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 32);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  v5 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError;
  a1[3] = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = *(v3 + 16);

  os_unfair_lock_unlock(v9);

  *a1 = v8;
  a1[1] = v7;
  return sub_1BF410860;
}

double sub_1BF410860(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(v4 + 32);
  v6 = *(v5 + 16);
  v7 = (v4 + a1[3]);
  if (a2)
  {

    os_unfair_lock_lock(v6);
    *v7 = v3;
    v7[1] = v2;

    os_unfair_lock_unlock(*(v5 + 16));
  }

  else
  {

    os_unfair_lock_lock(v6);
    *v7 = v3;
    v7[1] = v2;

    os_unfair_lock_unlock(*(v5 + 16));
  }

  return result;
}

double sub_1BF410914@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = *(*a1 + 32);
  v11 = *(v10 + 16);

  os_unfair_lock_lock(v11);
  v12 = *a2;
  swift_beginAccess();
  sub_1BF38C94C(v9 + v12, a5, a3, a4);
  os_unfair_lock_unlock(*(v10 + 16));

  return result;
}

uint64_t sub_1BF4109B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  sub_1BF38C94C(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

double sub_1BF410A80@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + 32);
  v10 = *(v9 + 16);

  os_unfair_lock_lock(v10);
  v11 = *a1;
  swift_beginAccess();
  sub_1BF38C94C(v4 + v11, a4, a2, a3);
  os_unfair_lock_unlock(*(v9 + 16));

  return result;
}

uint64_t sub_1BF410B20(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + 32);
  v7 = *(v6 + 16);

  os_unfair_lock_lock(v7);
  sub_1BF38C94C(a1, v5, &qword_1EBDD9B00, &qword_1BF4F1E50);
  v8 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadErrorDate;
  swift_beginAccess();
  sub_1BF3A3A54(v5, v1 + v8, &qword_1EBDD9B00, &qword_1BF4F1E50);
  swift_endAccess();
  os_unfair_lock_unlock(*(v6 + 16));

  return sub_1BF38C9B4(a1, &qword_1EBDD9B00, &qword_1BF4F1E50);
}

void (*sub_1BF410C38(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  v9 = *(v1 + 32);
  v10 = *(v9 + 16);

  os_unfair_lock_lock(v10);
  v11 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadErrorDate;
  swift_beginAccess();
  sub_1BF38C94C(v1 + v11, v8, &qword_1EBDD9B00, &qword_1BF4F1E50);
  os_unfair_lock_unlock(*(v9 + 16));

  return sub_1BF410D74;
}

void sub_1BF410D74(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    sub_1BF38C94C(*(*a1 + 40), v3, &qword_1EBDD9B00, &qword_1BF4F1E50);
    sub_1BF410B20(v3);
    sub_1BF38C9B4(v4, &qword_1EBDD9B00, &qword_1BF4F1E50);
  }

  else
  {
    sub_1BF410B20(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_1BF410E1C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5);
  LOBYTE(v5) = *(v3 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_isFailed);
  os_unfair_lock_unlock(*(v4 + 16));

  *a2 = v5;
}

uint64_t sub_1BF410E80()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = *(v0 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_isFailed);
  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

uint64_t sub_1BF410EDC(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F10, &qword_1BF4EEBF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + 32);
  v7 = *(v6 + 16);

  os_unfair_lock_lock(v7);
  *(v1 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_isFailed) = a1;
  os_unfair_lock_unlock(*(v6 + 16));

  v8 = *(v1 + 32);
  v9 = *(v8 + 16);

  os_unfair_lock_lock(v9);
  v10 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_content;
  swift_beginAccess();
  sub_1BF38C94C(v1 + v10, v5, &qword_1EBDD8F10, &qword_1BF4EEBF0);
  os_unfair_lock_unlock(*(v8 + 16));

  sub_1BF4E7C14();
  return sub_1BF38C9B4(v5, &qword_1EBDD8F10, &qword_1BF4EEBF0);
}

uint64_t (*sub_1BF41101C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + 32);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  v5 = *(v1 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_isFailed);
  os_unfair_lock_unlock(*(v3 + 16));

  *(a1 + 8) = v5;
  return sub_1BF41109C;
}

double sub_1BF4110C4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5);
  v6 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_protectionType;
  swift_beginAccess();
  v7 = sub_1BF4E8424();
  (*(*(v7 - 8) + 16))(a2, v3 + v6, v7);
  os_unfair_lock_unlock(*(v4 + 16));

  return result;
}

uint64_t sub_1BF411178(uint64_t a1)
{
  v2 = sub_1BF4E8424();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1BF4112F4(v5);
}

double sub_1BF411244@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  v5 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_protectionType;
  swift_beginAccess();
  v6 = sub_1BF4E8424();
  (*(*(v6 - 8) + 16))(a1, v1 + v5, v6);
  os_unfair_lock_unlock(*(v3 + 16));

  return result;
}

uint64_t sub_1BF4112F4(uint64_t a1)
{
  v3 = sub_1BF4E8424();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 32);
  v8 = *(v7 + 16);

  os_unfair_lock_lock(v8);
  (*(v4 + 16))(v6, a1, v3);
  v9 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_protectionType;
  swift_beginAccess();
  (*(v4 + 40))(v1 + v9, v6, v3);
  swift_endAccess();
  os_unfair_lock_unlock(*(v7 + 16));

  return (*(v4 + 8))(a1, v3);
}

void (*sub_1BF411450(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_1BF4E8424();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[5] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[7] = v10;
  v12 = *(v1 + 32);
  v13 = *(v12 + 16);

  os_unfair_lock_lock(v13);
  v14 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_protectionType;
  swift_beginAccess();
  v15 = *(v8 + 16);
  v5[8] = v15;
  v5[9] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v11, v1 + v14, v6);
  os_unfair_lock_unlock(*(v12 + 16));

  return sub_1BF4115D0;
}

void sub_1BF4115D0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), v5);
    sub_1BF4112F4(v4);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    sub_1BF4112F4(*(v2 + 56));
  }

  free(v3);
  free(v4);

  free(v2);
}

char *ActivityEntry.__allocating_init(id:content:protectionType:targetEnvironmentProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F08, &qword_1BF4EEBE8);
  swift_allocObject();
  *(v8 + 2) = sub_1BF4E7C34();
  *(v8 + 3) = 0;
  type metadata accessor for UnfairLock();
  v9 = swift_allocObject();
  v10 = swift_slowAlloc();
  *v10 = 0;
  *(v9 + 16) = v10;
  *(v8 + 4) = v9;
  v11 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_content;
  v12 = sub_1BF4E86B4();
  (*(*(v12 - 8) + 56))(&v8[v11], 1, 1, v12);
  v13 = &v8[OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadErrorDate;
  v15 = sub_1BF4E7334();
  (*(*(v15 - 8) + 56))(&v8[v14], 1, 1, v15);
  sub_1BF411AF0(a1, &v8[OBJC_IVAR____TtC9ChronoKit13ActivityEntry_id]);
  sub_1BF38E60C(a4, &v8[OBJC_IVAR____TtC9ChronoKit13ActivityEntry_targetEnvironmentProvider]);
  v16 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_protectionType;
  v17 = sub_1BF4E8424();
  (*(*(v17 - 8) + 32))(&v8[v16], a3, v17);
  v18 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_content;
  swift_beginAccess();
  sub_1BF411B60(a2, &v8[v18]);
  swift_endAccess();
  sub_1BF38C9B4(a2, &qword_1EBDD8F10, &qword_1BF4EEBF0);
  v8[OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_isFailed] = 0;
  return v8;
}

uint64_t ActivityEntry.init(id:content:protectionType:targetEnvironmentProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F08, &qword_1BF4EEBE8);
  swift_allocObject();
  *(v4 + 16) = sub_1BF4E7C34();
  *(v4 + 24) = 0;
  type metadata accessor for UnfairLock();
  v10 = swift_allocObject();
  v11 = swift_slowAlloc();
  *v11 = 0;
  *(v10 + 16) = v11;
  *(v5 + 32) = v10;
  v12 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_content;
  v13 = sub_1BF4E86B4();
  (*(*(v13 - 8) + 56))(v5 + v12, 1, 1, v13);
  v14 = (v5 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError);
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadErrorDate;
  v16 = sub_1BF4E7334();
  (*(*(v16 - 8) + 56))(v5 + v15, 1, 1, v16);
  sub_1BF411AF0(a1, v5 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry_id);
  sub_1BF38E60C(a4, v5 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry_targetEnvironmentProvider);
  v17 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_protectionType;
  v18 = sub_1BF4E8424();
  (*(*(v18 - 8) + 32))(v5 + v17, a3, v18);
  v19 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_content;
  swift_beginAccess();
  sub_1BF411B60(a2, v5 + v19);
  swift_endAccess();
  sub_1BF38C9B4(a2, &qword_1EBDD8F10, &qword_1BF4EEBF0);
  *(v5 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_isFailed) = 0;
  return v5;
}

uint64_t sub_1BF411AF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF411B60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F10, &qword_1BF4EEBF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF411BD0(double a1)
{
  v2 = v1;
  v3 = sub_1BF4E8164();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BF4E7F64();
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F10, &qword_1BF4EEBF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_1BF4E86B4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 32);
  v15 = *(v14 + 16);

  os_unfair_lock_lock(v15);
  v16 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_content;
  swift_beginAccess();
  sub_1BF38C94C(v2 + v16, v9, &qword_1EBDD8F10, &qword_1BF4EEBF0);
  os_unfair_lock_unlock(*(v14 + 16));

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BF38C9B4(v9, &qword_1EBDD8F10, &qword_1BF4EEBF0);
    v17 = 1;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v29 = MEMORY[0x1E69E7CC0];
    swift_getKeyPath();
    MEMORY[0x1BFB58DD0]();
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BF4E8BE4();
    }

    sub_1BF4E8C24();
    swift_getKeyPath();
    MEMORY[0x1BFB58DD0]();
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BF4E8BE4();
    }

    sub_1BF4E8C24();
    swift_getKeyPath();
    MEMORY[0x1BFB58DD0]();
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BF4E8BE4();
    }

    sub_1BF4E8C24();
    v18 = v29;
    v19 = *(v2 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry_targetEnvironmentProvider + 24);
    v20 = *(v2 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry_targetEnvironmentProvider + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry_targetEnvironmentProvider), v19);
    (*(v20 + 8))(v19, v20);
    v21 = v25;
    sub_1BF4E86A4();
    if (v18 >> 62)
    {
      sub_1BF4E9174();

      sub_1BF4E9474();
    }

    else
    {

      sub_1BF4E9754();
      sub_1BF4E9174();
    }

    v17 = sub_1BF4E8154();

    (*(v27 + 8))(v21, v28);
    (*(v24 + 8))(v6, v26);
    (*(v11 + 8))(v13, v10);
  }

  return v17 & 1;
}

uint64_t sub_1BF4120C4(uint64_t a1)
{
  v2 = sub_1BF4E8364();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1BF4E7ED4();
}

char *ActivityEntry.deinit()
{

  sub_1BF38C9B4(v0 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_content, &qword_1EBDD8F10, &qword_1BF4EEBF0);

  sub_1BF38C9B4(v0 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadErrorDate, &qword_1EBDD9B00, &qword_1BF4F1E50);
  v1 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_protectionType;
  v2 = sub_1BF4E8424();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BF38C9B4(v0 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry_id, &qword_1EBDD87A8, &unk_1BF4EB2C0);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry_targetEnvironmentProvider));
  return v0;
}

uint64_t ActivityEntry.__deallocating_deinit()
{
  ActivityEntry.deinit();

  return swift_deallocClassInstance();
}

uint64_t (*sub_1BF412320(uint64_t **a1))()
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
  v2[4] = sub_1BF4103EC(v2);
  return sub_1BF413050;
}

double sub_1BF4123B0@<D0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v9 = *v4;
  v10 = *(*v4 + 32);
  v11 = *(v10 + 16);

  os_unfair_lock_lock(v11);
  v12 = *a1;
  swift_beginAccess();
  sub_1BF38C94C(v9 + v12, a4, a2, a3);
  os_unfair_lock_unlock(*(v10 + 16));

  return result;
}

uint64_t (*sub_1BF412478(uint64_t **a1))()
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
  v2[4] = sub_1BF410C38(v2);
  return sub_1BF413050;
}

uint64_t sub_1BF4124EC()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(v2 + 16);

  os_unfair_lock_lock(v3);
  v4 = *(v1 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError);
  v5 = *(v2 + 16);

  os_unfair_lock_unlock(v5);

  return v4;
}

double sub_1BF412560(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(v6 + 16);

  os_unfair_lock_lock(v7);
  v8 = (v5 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_contentLoadError);
  *v8 = a1;
  v8[1] = a2;

  os_unfair_lock_unlock(*(v6 + 16));

  return result;
}

uint64_t (*sub_1BF4125E4(void *a1))()
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
  v2[4] = sub_1BF4107C4(v2);
  return sub_1BF412658;
}

double sub_1BF41265C@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5);
  v6 = OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_protectionType;
  swift_beginAccess();
  v7 = sub_1BF4E8424();
  (*(*(v7 - 8) + 16))(a1, v3 + v6, v7);
  os_unfair_lock_unlock(*(v4 + 16));

  return result;
}

uint64_t sub_1BF412710()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(v2 + 16);

  os_unfair_lock_lock(v3);
  v4 = *(v1 + OBJC_IVAR____TtC9ChronoKit13ActivityEntry__lock_isFailed);
  os_unfair_lock_unlock(*(v2 + 16));

  return v4;
}

uint64_t (*sub_1BF412794(uint64_t *a1))()
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
  *(v2 + 32) = sub_1BF41101C(v2);
  return sub_1BF413050;
}

void sub_1BF412808(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1BF4128DC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ActivityEntry(0);
  result = sub_1BF4E7C04();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for ActivityEntry(uint64_t a1)
{
  result = qword_1EDC9EB70;
  if (!qword_1EDC9EB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BF412970(uint64_t a1)
{
  sub_1BF412E5C(319, &qword_1EDC9D758, MEMORY[0x1E6985B08]);
  if (v1 <= 0x3F)
  {
    sub_1BF412E5C(319, &qword_1EDC9FFA8, MEMORY[0x1E6969530]);
    if (v2 <= 0x3F)
    {
      sub_1BF4E8424();
      if (v3 <= 0x3F)
      {
        sub_1BF412EB0(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1BF412E5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BF4E90F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BF412EB0(uint64_t a1)
{
  if (!qword_1EDC9E678)
  {
    v4[0] = type metadata accessor for ActivityKey(255);
    v4[1] = type metadata accessor for ActivityVariantKey(255);
    v4[2] = sub_1BF413008(&qword_1EDC9EF38, type metadata accessor for ActivityKey, &protocol conformance descriptor for ActivityKey);
    v4[3] = sub_1BF413008(&qword_1EDC9EF48, type metadata accessor for ActivityKey, &protocol conformance descriptor for ActivityKey);
    v4[4] = sub_1BF413008(&qword_1EDC9E560, type metadata accessor for ActivityVariantKey, &protocol conformance descriptor for ActivityVariantKey);
    v4[5] = sub_1BF413008(&qword_1EDC9E570, type metadata accessor for ActivityVariantKey, &protocol conformance descriptor for ActivityVariantKey);
    v2 = type metadata accessor for VariantIdentifier(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDC9E678);
    }
  }
}

uint64_t sub_1BF413008(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static ControlCacheKey.allControls(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BF4E7194();
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = type metadata accessor for ControlCacheKey(0);
  *(a2 + *(result + 20)) = 0;
  return result;
}

uint64_t ControlCacheKey.init(baseURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for ControlCacheKey(0) + 20);
  v5 = sub_1BF4E7194();
  result = (*(*(v5 - 8) + 32))(a2, a1, v5);
  *(a2 + v4) = 0;
  return result;
}

void *ControlCacheKey.control.getter()
{
  v1 = *(v0 + *(type metadata accessor for ControlCacheKey(0) + 20));
  v2 = v1;
  return v1;
}

uint64_t ControlCacheKey.init(baseURL:entryKey:)@<X0>(uint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for ControlCacheKey(0) + 20);
  v7 = sub_1BF4E7194();
  (*(*(v7 - 8) + 32))(a3, a1, v7);
  v8 = *a2;
  result = sub_1BF39ABC8(a2);
  *(a3 + v6) = v8;
  return result;
}

uint64_t ControlCacheKey.init(baseURL:control:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for ControlCacheKey(0) + 20);
  v7 = sub_1BF4E7194();
  result = (*(*(v7 - 8) + 32))(a3, a1, v7);
  *(a3 + v6) = a2;
  return result;
}

uint64_t ControlCacheKey.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for ControlCacheKey(0) + 20));
  if (!v1)
  {
    return sub_1BF4E7074();
  }

  v2 = v1;
  sub_1BF4E92E4();

  sub_1BF4E7194();
  sub_1BF4138FC(&qword_1EDC9F100, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v3 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0x6C6F72746E6F6320, 0xEA0000000000203ALL);
  v4 = [v2 description];
  v5 = sub_1BF4E8914();
  v7 = v6;

  MEMORY[0x1BFB58C90](v5, v7);

  return 0x3A4C525565736162;
}

void ControlCacheKey.hash(into:)(uint64_t a1, double a2)
{
  sub_1BF4E7194();
  sub_1BF4138FC(&qword_1EDC9D610, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1BF4E8884();
  v3 = *(v2 + *(type metadata accessor for ControlCacheKey(0) + 20));
  if (v3)
  {
    sub_1BF4E9824();
    v4 = v3;
    sub_1BF4E90B4();
  }

  else
  {
    sub_1BF4E9824();
  }
}

uint64_t ControlCacheKey.hashValue.getter(double a1)
{
  sub_1BF4E9804();
  sub_1BF4E7194();
  sub_1BF4138FC(&qword_1EDC9D610, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1BF4E8884();
  v2 = *(v1 + *(type metadata accessor for ControlCacheKey(0) + 20));
  sub_1BF4E9824();
  if (v2)
  {
    v3 = v2;
    sub_1BF4E90B4();
  }

  return sub_1BF4E9844();
}

uint64_t sub_1BF413594(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  sub_1BF4E7194();
  sub_1BF4138FC(&qword_1EDC9D610, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1BF4E8884();
  v4 = *(v2 + *(a1 + 20));
  sub_1BF4E9824();
  if (v4)
  {
    v5 = v4;
    sub_1BF4E90B4();
  }

  return sub_1BF4E9844();
}

void sub_1BF413664(uint64_t a1, uint64_t a2, double a3)
{
  sub_1BF4E7194();
  sub_1BF4138FC(&qword_1EDC9D610, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1BF4E8884();
  v5 = *(v3 + *(a2 + 20));
  if (v5)
  {
    sub_1BF4E9824();
    v6 = v5;
    sub_1BF4E90B4();
  }

  else
  {
    sub_1BF4E9824();
  }
}

uint64_t sub_1BF41374C(uint64_t a1, uint64_t a2, double a3)
{
  sub_1BF4E9804();
  sub_1BF4E7194();
  sub_1BF4138FC(&qword_1EDC9D610, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1BF4E8884();
  v5 = *(v3 + *(a2 + 20));
  sub_1BF4E9824();
  if (v5)
  {
    v6 = v5;
    sub_1BF4E90B4();
  }

  return sub_1BF4E9844();
}

uint64_t _s9ChronoKit15ControlCacheKeyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1BF4E7144())
  {
    v4 = *(type metadata accessor for ControlCacheKey(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);
    if (v5)
    {
      if (v6)
      {
        sub_1BF413A20();
        v7 = v6;
        v8 = v5;
        v9 = sub_1BF4E90A4();

        if (v9)
        {
          return 1;
        }
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1BF4138FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BF413944(uint64_t a1, double a2)
{
  sub_1BF4E7194();
  if (v2 <= 0x3F)
  {
    sub_1BF4139C8(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BF4139C8(uint64_t a1)
{
  if (!qword_1EDC9F130)
  {
    sub_1BF413A20();
    v1 = sub_1BF4E90F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC9F130);
    }
  }
}

unint64_t sub_1BF413A20()
{
  result = qword_1EDC9F138;
  if (!qword_1EDC9F138)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC9F138);
  }

  return result;
}

void sub_1BF413A6C()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](28);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (swift_weakLoadStrong())
  {
    v5 = sub_1BF3E4F48(v1, 0, 0xE000000000000000);
    if (v0)
    {
    }

    else
    {
      v6 = v5;

      sub_1BF41461C(v6);
    }
  }

  else
  {
    sub_1BF4E9464();
    __break(1u);
  }
}

uint64_t ChronoMetadataStore.PublicTokenStore.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void sub_1BF413CE4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v7 = *(Strong + 24);
  v8 = Strong;
  os_unfair_lock_lock(*(v7 + 16));
  v9 = *(v8 + 64);
  os_unfair_lock_unlock(*(v7 + 16));

  if (!v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  v35 = v4;
  v10 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](51);
  MEMORY[0x1BFB58C90](0x204543414C504552, 0xED0000204F544E49);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v12 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v12);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v13 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v13);

  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4FA310);

  v15 = sub_1BF3D8148(v2, v3, v14);
  v17 = v16;
  v18 = v5;
  v20 = v19;
  v21 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v21);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v15, v17, v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v15, v17, v20, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v23);

  v24 = sub_1BF3D88B8(v15, v17, v20);
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000, v24);
  sub_1BF3D8864(v35, v18);
  v26 = sub_1BF3D8134(v35, v18, v25);
  v28 = v27;
  v30 = v29;
  v31 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v31);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v26, v28, v30);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v26, v28, v30, 0x676E69646E696240, 0xE800000000000000, v32, v33);

  v34 = sub_1BF3D88B8(v26, v28, v30);
  MEMORY[0x1BFB58C90](3877130, 0xE300000000000000, v34);
  if (!swift_weakLoadStrong())
  {
LABEL_8:
    sub_1BF4E9464();
    __break(1u);
    return;
  }

  sub_1BF3E4F48(v10, 0, 0xE000000000000000);

  if (!v1)
  {
  }
}

void sub_1BF414140(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v6 = *(Strong + 24);
  v7 = Strong;
  os_unfair_lock_lock(*(v6 + 16));
  v8 = *(v7 + 64);
  os_unfair_lock_unlock(*(v6 + 16));

  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](24);
  MEMORY[0x1BFB58C90](0x46204554454C4544, 0xEC000000204D4F52);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0x2045524548570ALL, 0xE700000000000000);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);

  v13 = sub_1BF3D8148(a1, a2, v12);
  v15 = v14;
  v17 = v16;
  v18 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v18);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v13, v15, v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v13, v15, v17, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v20);

  v21 = sub_1BF3D88B8(v13, v15, v17);
  MEMORY[0x1BFB58C90](59, 0xE100000000000000, v21);
  if (!swift_weakLoadStrong())
  {
LABEL_8:
    sub_1BF4E9464();
    __break(1u);
    return;
  }

  sub_1BF3E4F48(v9, 0, 0xE000000000000000);

  if (!v2)
  {
  }
}

uint64_t sub_1BF414430()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](77);
  MEMORY[0x1BFB58C90](0x5420455441455243, 0xED000020454C4241);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FA3B0);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0xD000000000000021, 0x80000001BF4FA3D0);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](992545321, 0xE400000000000000);
  sub_1BF3E4F48(v1, 0, 0xE000000000000000);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BF41461C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  v31 = result + 32;
  v32 = *(result + 16);
  while (2)
  {
    if (v2 >= v1)
    {
      __break(1u);
    }

    else
    {
      v3 = v2 + 1;
      if (!__OFADD__(v2, 1))
      {
        v4 = *(v31 + 8 * v2);
        v33 = v2 + 1;

        v5 = sub_1BF4E92F4();
        v7 = v6;
        v8 = (v4 + 64);
        v9 = *(v4 + 16) + 1;
        do
        {
          if (!--v9)
          {
            goto LABEL_3;
          }

          v10 = *(v8 - 2);
          v11 = *(v8 - 1);
          v12 = *v8;
          if (*(v8 - 4) == v5 && *(v8 - 3) == v7)
          {
            break;
          }

          v8 += 40;
        }

        while ((sub_1BF4E9734() & 1) == 0);

        sub_1BF3D8840(v10, v11, v12);

        v14 = sub_1BF4244EC(v10, v11, v12);
        v16 = v15;
        sub_1BF3D88B8(v10, v11, v12);
        if (v16)
        {
          v17 = sub_1BF4E92F4();
          v19 = sub_1BF48063C(v17, v18, v4);
          v21 = v20;
          v23 = v22;
          v24 = ~v22;

          if (v24)
          {
            sub_1BF424370(v19, v21, v23, &v34);

            sub_1BF3DB1FC(v19, v21, v23);
            v25 = *(&v34 + 1);
            if (*(&v34 + 1) >> 60 != 15)
            {
              v26 = v34;
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_1BF43241C(0, *(v30 + 16) + 1, 1, v30);
                v30 = result;
              }

              v28 = *(v30 + 16);
              v27 = *(v30 + 24);
              if (v28 >= v27 >> 1)
              {
                result = sub_1BF43241C((v27 > 1), v28 + 1, 1, v30);
                v30 = result;
              }

              *(v30 + 16) = v28 + 1;
              v29 = (v30 + 32 * v28);
              v29[4] = v14;
              v29[5] = v16;
              v29[6] = v26;
              v29[7] = v25;
              v1 = v32;
              v2 = v33;
              if (v3 != v32)
              {
                continue;
              }

              return v30;
            }
          }

          else
          {
LABEL_3:
          }
        }

        v1 = v32;
        v2 = v33;
        if (v3 == v32)
        {
          return v30;
        }

        continue;
      }
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t RemoteWidgetExtensionSession.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_identifier;
  v4 = sub_1BF4E7394();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1BF414A5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RemoteWidgetExtensionSession.boostToForegroundPriority.getter()
{
  v1 = OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_boostToForegroundPriority;
  swift_beginAccess();
  return *(v0 + v1);
}

void RemoteWidgetExtensionSession.boostToForegroundPriority.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_boostToForegroundPriority;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1BF414C5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12[-v3];
  v5 = (v0 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession____lazy_storage___loggingIdentifier);
  if (*(v0 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession____lazy_storage___loggingIdentifier + 8))
  {
    v6 = *v5;
  }

  else
  {
    v7 = *(v0 + 16);
    v8 = *MEMORY[0x1E69941B8];
    swift_beginAccess();
    (*(v2 + 16))(v4, v7 + v8, v1);
    swift_beginAccess();

    v6 = sub_1BF4E81F4();
    v10 = v9;

    (*(v2 + 8))(v4, v1);
    *v5 = v6;
    v5[1] = v10;
  }

  return v6;
}

uint64_t RemoteWidgetExtensionSession.__allocating_init(identifier:extensionIdentity:dataProtectionLevel:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  RemoteWidgetExtensionSession.init(identifier:extensionIdentity:dataProtectionLevel:)(a1, a2, a3);
  return v6;
}

uint64_t RemoteWidgetExtensionSession.init(identifier:extensionIdentity:dataProtectionLevel:)(uint64_t a1, id a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_boostToForegroundPriority) = 0;
  v10 = OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_protectedDescriptors;
  sub_1BF4E8584();
  v11 = sub_1BF4E8534();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F20, &qword_1BF4EEED8);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = v11;
  *(v6 + v10) = v12;
  v13 = (v6 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession____lazy_storage___loggingIdentifier);
  *v13 = 0;
  v13[1] = 0;
  if ([a2 isRemote])
  {
    v14 = OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_identifier;
    v5 = sub_1BF4E7394();
    v4 = *(v5 - 8);
    (*(v4 + 16))(v6 + v14, a1, v5);
    *(v6 + 16) = a2;
    sub_1BF414A5C(a3, v6 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_dataProtectionLevel);
    v15 = qword_1EBDD8568;
    a2 = a2;
    if (v15 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = sub_1BF4E7B54();
  __swift_project_value_buffer(v16, qword_1EBDE1EC0);

  v17 = sub_1BF4E7B34();
  v18 = sub_1BF4E8E84();

  if (os_log_type_enabled(v17, v18))
  {
    v26 = a1;
    v19 = swift_slowAlloc();
    v25 = a3;
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136446210;
    v21 = sub_1BF414C5C();
    v23 = sub_1BF38D65C(v21, v22, &v27);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1BF389000, v17, v18, "%{public}s Session initialized", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1BFB5A5D0](v20, -1, -1);
    MEMORY[0x1BFB5A5D0](v19, -1, -1);

    sub_1BF38C9B4(v25, &qword_1EBDD8AF8, &qword_1BF4EC370);
    (*(v4 + 8))(v26, v5);
  }

  else
  {

    sub_1BF38C9B4(a3, &qword_1EBDD8AF8, &qword_1BF4EC370);
    (*(v4 + 8))(a1, v5);
  }

  return v6;
}

double RemoteWidgetExtensionSession.setDescriptors(_:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_protectedDescriptors);

  os_unfair_lock_lock((v3 + 24));
  sub_1BF41521C((v3 + 16), v1, a1);
  os_unfair_lock_unlock((v3 + 24));

  return result;
}

id sub_1BF41521C(id *a1, uint64_t a2, void *a3)
{
  if (qword_1EBDD8568 != -1)
  {
    swift_once();
  }

  v5 = sub_1BF4E7B54();
  __swift_project_value_buffer(v5, qword_1EBDE1EC0);

  v6 = a3;
  v7 = sub_1BF4E7B34();
  v8 = sub_1BF4E8E84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v9 = 136446466;
    v12 = sub_1BF414C5C();
    v14 = sub_1BF38D65C(v12, v13, &v17);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    *(v9 + 14) = v6;
    *v10 = v6;
    v15 = v6;
    _os_log_impl(&dword_1BF389000, v7, v8, "%{public}s Updating descriptors: %{public}@", v9, 0x16u);
    sub_1BF38C9B4(v10, &unk_1EBDD9260, &qword_1BF4EC380);
    MEMORY[0x1BFB5A5D0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1BFB5A5D0](v11, -1, -1);
    MEMORY[0x1BFB5A5D0](v9, -1, -1);
  }

  *a1 = v6;
  return v6;
}

uint64_t RemoteWidgetExtensionSession.deinit()
{
  v1 = OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_identifier;
  v2 = sub_1BF4E7394();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BF38C9B4(v0 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_dataProtectionLevel, &qword_1EBDD8AF8, &qword_1BF4EC370);

  return v0;
}

uint64_t RemoteWidgetExtensionSession.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_identifier;
  v2 = sub_1BF4E7394();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BF38C9B4(v0 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_dataProtectionLevel, &qword_1EBDD8AF8, &qword_1BF4EC370);

  return swift_deallocClassInstance();
}

uint64_t RemoteWidgetExtensionSession.getCurrentDescriptors(completion:)(void (*a1)(uint64_t, void))
{
  v3 = *(v1 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_protectedDescriptors);

  os_unfair_lock_lock(v3 + 6);
  sub_1BF4E8584();
  sub_1BF4E8554();
  sub_1BF4E8574();
  sub_1BF4E8564();
  v4 = sub_1BF4E8544();
  os_unfair_lock_unlock(v3 + 6);

  v5 = sub_1BF4E8554();

  a1(v5, 0);
}

void RemoteWidgetExtensionSession.getAllCurrentDescriptors(completion:)(void (*a1)(id, void))
{
  v3 = *(v1 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_protectedDescriptors);

  os_unfair_lock_lock(v3 + 6);
  sub_1BF4E8584();
  sub_1BF4E8554();
  sub_1BF4E8574();
  sub_1BF4E8564();
  v4 = sub_1BF4E8544();
  os_unfair_lock_unlock(v3 + 6);

  sub_1BF4E8554();
  sub_1BF4E8564();
  v5 = sub_1BF4E8534();
  a1(v5, 0);
}

double sub_1BF415834(uint64_t a1, int a2, void *aBlock, void (*a4)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  _Block_copy(v5);

  a4(v6, v5);
  _Block_release(v5);
  _Block_release(v5);

  return result;
}

Swift::Void __swiftcall RemoteWidgetExtensionSession.invalidate()()
{
  if (qword_1EBDD8568 != -1)
  {
    swift_once();
  }

  v0 = sub_1BF4E7B54();
  __swift_project_value_buffer(v0, qword_1EBDE1EC0);

  oslog = sub_1BF4E7B34();
  v1 = sub_1BF4E8E84();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136446210;
    v4 = sub_1BF414C5C();
    v6 = sub_1BF38D65C(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_1BF389000, oslog, v1, "%{public}s Session invalidated", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1BFB5A5D0](v3, -1, -1);
    MEMORY[0x1BFB5A5D0](v2, -1, -1);
  }
}

void sub_1BF415C54(int a1, int a2, int a3, int a4, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v5[2](v5, 0);

  _Block_release(v5);
}

void sub_1BF415D44(int a1, int a2, int a3, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v4[2](v4, 0);

  _Block_release(v4);
}

uint64_t type metadata accessor for RemoteWidgetExtensionSession(uint64_t a1)
{
  result = qword_1EDC97828;
  if (!qword_1EDC97828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BF415DE4(uint64_t a1)
{
  sub_1BF4E7394();
  if (v1 <= 0x3F)
  {
    sub_1BF415F08(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BF415F08(uint64_t a1)
{
  if (!qword_1EDC96458)
  {
    sub_1BF4E8424();
    v1 = sub_1BF4E90F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC96458);
    }
  }
}

void sub_1BF415F60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_protectedDescriptors);

  os_unfair_lock_lock(v3 + 6);
  sub_1BF4E8584();
  sub_1BF4E8554();
  sub_1BF4E8574();
  sub_1BF4E8564();
  v4 = sub_1BF4E8544();
  os_unfair_lock_unlock(v3 + 6);

  sub_1BF4E8554();

  sub_1BF3901C0(0, &unk_1EDC9D6D8, 0x1E6994388);
  v5 = sub_1BF4E8B84();
  (*(a2 + 16))(a2, v5, 0);
}

void sub_1BF416070(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_protectedDescriptors);

  os_unfair_lock_lock(v3 + 6);
  sub_1BF4E8584();
  sub_1BF4E8554();
  sub_1BF4E8574();
  sub_1BF4E8564();
  v4 = sub_1BF4E8544();
  os_unfair_lock_unlock(v3 + 6);

  sub_1BF4E8554();
  sub_1BF4E8564();
  v5 = sub_1BF4E8534();
  (*(a2 + 16))(a2, v5, 0);
}

uint64_t ExtensionManaging.extensions(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v4 = sub_1BF4E76B4();
  v5 = (*(a3 + 48))(v4);

  return v5;
}

void sub_1BF416408(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 24);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  v6 = sub_1BF4E7F64();
  (*(*(v6 - 8) + 16))(a1, v3 + v5, v6);
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t sub_1BF4164A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&unk_1EDC9FD80, &unk_1EBDD9110, &qword_1BF4EEFA0, MEMORY[0x1E695BF88]);
  return sub_1BF4E7C84();
}

uint64_t PlaceholderEnvironmentProviderAdapter.__allocating_init(sourceEnvironmentProvider:)(void *a1)
{
  v2 = swift_allocObject();
  sub_1BF38E49C(a1, v5);
  type metadata accessor for _PlaceholderEnvironmentProviderAdapter(0);
  v3 = swift_allocObject();
  sub_1BF4167B4(v5);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(v2 + 16) = v3;
  return v2;
}

uint64_t PlaceholderEnvironmentProviderAdapter.init(sourceEnvironmentProvider:)(void *a1)
{
  v2 = v1;
  sub_1BF38E49C(a1, v6);
  type metadata accessor for _PlaceholderEnvironmentProviderAdapter(0);
  v4 = swift_allocObject();
  sub_1BF4167B4(v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(v2 + 16) = v4;
  return v2;
}

uint64_t PlaceholderEnvironmentProviderAdapter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1BF41667C(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 16);
  v4 = *(v3 + 24);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  v6 = sub_1BF4E7F64();
  (*(*(v6 - 8) + 16))(a1, v3 + v5, v6);
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t sub_1BF416720()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&unk_1EDC9FD80, &unk_1EBDD9110, &qword_1BF4EEFA0, MEMORY[0x1E695BF88]);
  return sub_1BF4E7C84();
}

uint64_t sub_1BF4167B4(void *a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC9ChronoKit38_PlaceholderEnvironmentProviderAdapter__cancellable) = 0;
  sub_1BF38E49C(a1, v1 + OBJC_IVAR____TtC9ChronoKit38_PlaceholderEnvironmentProviderAdapter__sourceEnvironmentProvider);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  swift_allocObject();
  *(v1 + 16) = sub_1BF4E7C34();
  type metadata accessor for UnfairLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *v5 = 0;
  *(v4 + 16) = v5;
  *(v2 + 24) = v4;
  sub_1BF4E7F54();

  sub_1BF417108(v6);
  sub_1BF38E49C(v2 + OBJC_IVAR____TtC9ChronoKit38_PlaceholderEnvironmentProviderAdapter__sourceEnvironmentProvider, v13);
  v7 = v14;
  v8 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(v8 + 16))(v7, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1BF417530;
  *(v10 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F30, &unk_1BF4EF080);
  sub_1BF38C8B4(&qword_1EDC9EF90, &qword_1EBDD8F30, &unk_1BF4EF080, MEMORY[0x1E695BED8]);
  v11 = sub_1BF4E7D14();

  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  *(v2 + OBJC_IVAR____TtC9ChronoKit38_PlaceholderEnvironmentProviderAdapter__cancellable) = v11;

  return v2;
}

uint64_t sub_1BF4169DC(uint64_t a1, double a2)
{
  v2 = sub_1BF4E8164();
  v46 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v43 - v5;
  v6 = sub_1BF4E7D44();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = sub_1BF4E7F64();
  v47 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    v43 = v2;
    v48 = v13;
    v21 = (result + OBJC_IVAR____TtC9ChronoKit38_PlaceholderEnvironmentProviderAdapter__sourceEnvironmentProvider);
    v22 = v21[3];
    v23 = v21[4];
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (*(v23 + 8))(v22, v23);
    sub_1BF4E7D94();
    v24 = MEMORY[0x1E697EA58];
    sub_1BF417540(&unk_1EDC9F988, MEMORY[0x1E697EA58], MEMORY[0x1E697EA78]);
    sub_1BF4E9194();
    sub_1BF417540(&qword_1EDC9D390, v24, MEMORY[0x1E697EA60]);
    v25 = sub_1BF4E88C4();
    v26 = *(v7 + 8);
    v26(v9, v6);
    v26(v12, v6);
    if ((v25 & 1) == 0)
    {
      v49 = MEMORY[0x1E69E7CC0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F28, &qword_1BF4EF078);
      sub_1BF38C8B4(&qword_1EDC9F198, &qword_1EBDD8F28, &qword_1BF4EF078, MEMORY[0x1E69E6328]);
      sub_1BF4E91A4();
      sub_1BF4E7DA4();
    }

    v27 = v47;
    v28 = v48;
    v29 = *(v47 + 16);
    v29(v15, v18, v48);
    v30 = v44;
    sub_1BF4E8144();
    v31 = *(v20 + 24);
    v32 = *(v31 + 16);

    os_unfair_lock_lock(v32);
    v33 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
    swift_beginAccess();
    v29(v15, (v20 + v33), v28);
    os_unfair_lock_unlock(*(v31 + 16));

    v34 = v45;
    sub_1BF4E8144();
    sub_1BF417540(qword_1EDC964A0, MEMORY[0x1E6985700], MEMORY[0x1E6985718]);
    v35 = v43;
    LOBYTE(v33) = sub_1BF4E88C4();
    v36 = *(v46 + 8);
    v36(v34, v35);
    v36(v30, v35);
    v38 = v18;
    if (v33)
    {
      if (qword_1EDC9D4F0 != -1)
      {
        swift_once();
      }

      v39 = sub_1BF4E7B54();
      __swift_project_value_buffer(v39, qword_1EDCA6988);
      v40 = sub_1BF4E7B34();
      v41 = sub_1BF4E8E84();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_1BF389000, v40, v41, "Placeholder environment ignoring redaction reason change.", v42, 2u);
        MEMORY[0x1BFB5A5D0](v42, -1, -1);

        return (*(v27 + 8))(v38, v48);
      }
    }

    else
    {
      sub_1BF417108(v37);
    }

    return (*(v27 + 8))(v38, v48);
  }

  return result;
}

uint64_t sub_1BF416FC0()
{

  v1 = (v0 + OBJC_IVAR____TtC9ChronoKit38_PlaceholderEnvironmentProviderAdapter__sourceEnvironmentProvider);

  return __swift_destroy_boxed_opaque_existential_1Tm(v1);
}

uint64_t sub_1BF417000()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC9ChronoKit38_PlaceholderEnvironmentProviderAdapter__cancellable))
  {

    sub_1BF4E7BD4();
  }

  v2 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  v3 = sub_1BF4E7F64();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC9ChronoKit38_PlaceholderEnvironmentProviderAdapter__sourceEnvironmentProvider));

  return swift_deallocClassInstance();
}

double sub_1BF417108(double a1)
{
  v2 = sub_1BF4E7D44();
  MEMORY[0x1EEE9AC00](v2);
  v12 = sub_1BF4E7F64();
  v3 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 24);
  os_unfair_lock_lock(*(v11 + 16));
  v6 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  v7 = *(v1 + OBJC_IVAR____TtC9ChronoKit38_PlaceholderEnvironmentProviderAdapter__sourceEnvironmentProvider + 24);
  v8 = *(v1 + OBJC_IVAR____TtC9ChronoKit38_PlaceholderEnvironmentProviderAdapter__sourceEnvironmentProvider + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9ChronoKit38_PlaceholderEnvironmentProviderAdapter__sourceEnvironmentProvider), v7);
  (*(v8 + 8))(v7, v8);
  v13 = MEMORY[0x1E69E7CC0];
  sub_1BF417540(&unk_1EDC9F988, MEMORY[0x1E697EA58], MEMORY[0x1E697EA78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F28, &qword_1BF4EF078);
  sub_1BF38C8B4(&qword_1EDC9F198, &qword_1EBDD8F28, &qword_1BF4EF078, MEMORY[0x1E69E6328]);
  sub_1BF4E91A4();
  sub_1BF4E7DA4();
  swift_beginAccess();
  (*(v3 + 40))(v1 + v6, v5, v12);
  swift_endAccess();
  os_unfair_lock_unlock(*(v11 + 16));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0, MEMORY[0x1E695BF80]);
  sub_1BF4E7C74();

  return result;
}

uint64_t type metadata accessor for _PlaceholderEnvironmentProviderAdapter(uint64_t a1)
{
  result = qword_1EDC967C8;
  if (!qword_1EDC967C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF417514()
{
}

uint64_t sub_1BF417540(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BF417588(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10[-v3];
  v5 = sub_1BF4E7194();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BF3985D8(a1, v4);
  (*(v6 + 56))(v4, 0, 1, v5);
  (*(v6 + 32))(v8, v4, v5);
  LOBYTE(v4) = URL.hasRequiresReloadExtendedAttribute.getter();
  (*(v6 + 8))(v8, v5);
  return v4 & 1;
}

uint64_t URL.hasRemovedFromStoreExtendedAttribute.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F38, &qword_1BF4F7A30);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F40, &qword_1BF4EF090);
  sub_1BF38C8B4(&qword_1EDC9FD98, &qword_1EBDD8F40, &qword_1BF4EF090, MEMORY[0x1E6993F88]);
  sub_1BF4E7034();
  v7 = *(v6 - 8);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_1BF38C94C(v5, v2, &qword_1EBDD8F38, &qword_1BF4F7A30);
  if ((*(v7 + 48))(v2, 1, v6) == 1)
  {
    sub_1BF38C9B4(v5, &qword_1EBDD8F38, &qword_1BF4F7A30);
    sub_1BF38C9B4(v2, &qword_1EBDD8F38, &qword_1BF4F7A30);
    return 0;
  }

  else
  {
    sub_1BF4E7614();
    sub_1BF38C9B4(v5, &qword_1EBDD8F38, &qword_1BF4F7A30);
    v8 = v11;
    (*(v7 + 8))(v2, v6);
  }

  return v8;
}

uint64_t BaseCacheManager.init(identifier:cacheKeyProvider:cacheURLProvider:protectionLevelProvider:fileManager:forReading:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t a6, char a7)
{
  *(v7 + 160) = a7 ^ 1;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  sub_1BF38E610(a3, v7 + 40);
  sub_1BF38E610(a4, v7 + 80);
  sub_1BF38E610(a5, v7 + 120);
  *(v7 + 16) = a6;
  return v7;
}

uint64_t BaseCacheManager.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));
  return v0;
}

uint64_t sub_1BF417ADC(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 120));
  sub_1BF38E610(a1, v1 + 120);
  return swift_endAccess();
}

uint64_t sub_1BF417B8C(double a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v35[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1BF4E7194();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - v13;
  if (*(v5 + 160) != 1)
  {
    sub_1BF3F79D0();
    swift_allocError();
    *v23 = 1;
    return swift_willThrow();
  }

  v34 = v12;
  result = sub_1BF3985D8(a3, &v33 - v13);
  if (!v4)
  {
    sub_1BF4E7134();
    v16 = *(v5 + 16);
    v17 = sub_1BF4E7094();
    v35[0] = 0;
    v18 = [v16 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:v35];

    v19 = v35[0];
    if (v18)
    {
      v20 = *(v5 + 16);
      v21 = v19;
      sub_1BF4C6BFC(v22);

      v27 = *(v5 + 16);
      v28 = sub_1BF4E7094();
      v29 = sub_1BF4E7094();
      v35[0] = 0;
      v30 = [v27 moveItemAtURL:v28 toURL:v29 error:v35];

      if (v30)
      {
        v25 = *(v8 + 8);
        v31 = v35[0];
        goto LABEL_8;
      }

      v32 = v35[0];
      sub_1BF4E6FF4();
    }

    else
    {
      v24 = v35[0];
      sub_1BF4E6FF4();
    }

    swift_willThrow();
    v25 = *(v8 + 8);
LABEL_8:
    v26 = v34;
    v25(v10, v34);
    return (v25)(v14, v26);
  }

  return result;
}

uint64_t sub_1BF417E64(uint64_t a1, double a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1BF4E7194();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 160) == 1)
  {
    v10 = v7;
    result = sub_1BF3985D8(a1, v9);
    if (!v3)
    {
      v12 = *(v2 + 16);
      v13 = sub_1BF4E7094();
      v19[0] = 0;
      v14 = [v12 removeItemAtURL:v13 error:v19];

      if (v14)
      {
        v15 = *(v6 + 8);
        v16 = v19[0];
        return v15(v9, v10);
      }

      else
      {
        v18 = v19[0];
        sub_1BF4E6FF4();

        swift_willThrow();
        return (*(v6 + 8))(v9, v10);
      }
    }
  }

  else
  {
    sub_1BF3F79D0();
    swift_allocError();
    *v17 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BF418048(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v61 = *v2;
  v5 = v61;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F48, &qword_1BF4EFDA0);
  v64 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v50 - v7;
  v8 = sub_1BF4E7394();
  v65 = *(v8 - 8);
  v66 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v50 - v12;
  isa = v5[10].isa;
  v14 = *(isa - 1);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  v21 = sub_1BF4E7194();
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 160) == 1)
  {
    v58 = v10;
    v59 = v23;
    v60 = v22;
    v26 = v25;
    result = sub_1BF3985D8(a1, v25);
    if (!v3)
    {
      v56 = v26;
      v57 = v6;
      if (qword_1EDC9EFD8 != -1)
      {
        swift_once();
      }

      v28 = sub_1BF4E7B54();
      __swift_project_value_buffer(v28, qword_1EDCA6A48);
      v52 = *(v14 + 16);
      v52(v20, a1, isa);
      v29 = v65;
      v30 = v62;
      v54 = *(v65 + 16);
      v55 = v65 + 16;
      v54(v62, v67, v66);
      v31 = sub_1BF4E7B34();
      v53 = sub_1BF4E8E84();
      if (os_log_type_enabled(v31, v53))
      {
        v32 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v68 = v51;
        *v32 = 136446466;
        v52(v17, v20, isa);
        v33 = *(v14 + 8);
        v33(v20, isa);
        v61 = v31;
        v34 = sub_1BF4E96A4();
        v36 = v35;
        v33(v17, isa);
        v37 = sub_1BF38D65C(v34, v36, &v68);

        *(v32 + 4) = v37;
        *(v32 + 12) = 2082;
        sub_1BF41C66C(&unk_1EBDD92C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v38 = v66;
        v39 = sub_1BF4E96A4();
        v41 = v40;
        (*(v65 + 8))(v30, v38);
        v42 = sub_1BF38D65C(v39, v41, &v68);

        *(v32 + 14) = v42;
        v43 = v61;
        _os_log_impl(&dword_1BF389000, v61, v53, "%{public}s marking with version %{public}s", v32, 0x16u);
        v44 = v51;
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v44, -1, -1);
        MEMORY[0x1BFB5A5D0](v32, -1, -1);
      }

      else
      {
        (*(v14 + 8))(v20, isa);

        v38 = v66;
        (*(v29 + 8))(v30, v66);
      }

      v54(v58, v67, v38);
      v46 = MEMORY[0x1E69695A8];
      sub_1BF41C66C(&qword_1EBDD8958, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
      sub_1BF41C66C(&qword_1EDC9D5E0, v46, MEMORY[0x1E69695B0]);
      v47 = v63;
      sub_1BF4E7604();
      sub_1BF38C8B4(&qword_1EBDD8F50, &qword_1EBDD8F48, &qword_1BF4EFDA0, MEMORY[0x1E6993F80]);
      v49 = v56;
      v48 = v57;
      sub_1BF4E7044();
      (*(v64 + 8))(v47, v48);
      return (*(v59 + 8))(v49, v60);
    }
  }

  else
  {
    sub_1BF3F79D0();
    swift_allocError();
    *v45 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BF41873C(uint64_t a1)
{
  v40 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F40, &qword_1BF4EF090);
  v42 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v34 - v5;
  isa = v40[10].isa;
  v7 = *(isa - 1);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v14 = sub_1BF4E7194();
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 160) == 1)
  {
    v38 = v16;
    v39 = v15;
    result = sub_1BF3985D8(a1, v18);
    if (!v2)
    {
      v37 = v4;
      if (qword_1EDC9EFD8 != -1)
      {
        swift_once();
      }

      v20 = sub_1BF4E7B54();
      __swift_project_value_buffer(v20, qword_1EDCA6A48);
      v36 = *(v7 + 16);
      v36(v13, a1, isa);
      v21 = sub_1BF4E7B34();
      v22 = sub_1BF4E8E84();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v44 = v22;
        v24 = v23;
        v35 = swift_slowAlloc();
        v43 = v35;
        *v24 = 136446210;
        v36(v10, v13, isa);
        v25 = *(v7 + 8);
        v25(v13, isa);
        v40 = v21;
        v26 = sub_1BF4E96A4();
        v28 = v27;
        v25(v10, isa);
        v29 = sub_1BF38D65C(v26, v28, &v43);

        *(v24 + 4) = v29;
        v21 = v40;
        _os_log_impl(&dword_1BF389000, v40, v44, "%{public}s marked with having developer error", v24, 0xCu);
        v30 = v35;
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        MEMORY[0x1BFB5A5D0](v30, -1, -1);
        MEMORY[0x1BFB5A5D0](v24, -1, -1);
      }

      else
      {
        (*(v7 + 8))(v13, isa);
      }

      v45 = 1;
      v32 = v41;
      sub_1BF4E7604();
      sub_1BF38C8B4(&qword_1EDC9D5B8, &qword_1EBDD8F40, &qword_1BF4EF090, MEMORY[0x1E6993F80]);
      v33 = v37;
      sub_1BF4E7044();
      (*(v42 + 8))(v32, v33);
      return (*(v38 + 8))(v18, v39);
    }
  }

  else
  {
    sub_1BF3F79D0();
    swift_allocError();
    *v31 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BF418C40(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F40, &qword_1BF4EF090);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = sub_1BF4E7194();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF3985D8(a1, v10);
  if (!v1)
  {
    sub_1BF38C8B4(&qword_1EDC9FD98, &qword_1EBDD8F40, &qword_1BF4EF090, MEMORY[0x1E6993F88]);
    sub_1BF4E7034();
    sub_1BF4E7614();
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
    v11 = v14;
  }

  return v11 & 1;
}

uint64_t sub_1BF418E70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v17 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F48, &qword_1BF4EFDA0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = sub_1BF4E7194();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1BF3985D8(a1, v11);
  if (!v2)
  {
    v16 = v5;
    v13 = v17;
    sub_1BF38C8B4(&qword_1EBDD8F58, &qword_1EBDD8F48, &qword_1BF4EFDA0, MEMORY[0x1E6993F88]);
    sub_1BF4E7034();
    sub_1BF4E7614();
    (*(v16 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
    v14 = sub_1BF4E7394();
    return (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  return result;
}

void sub_1BF4190E8(uint64_t a1)
{
  v39 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F40, &qword_1BF4EF090);
  v42 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v33 - v4;
  v5 = *(v39 + 80);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v33 - v13;
  v15 = sub_1BF4E7194();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 160) == 1)
  {
    v38 = v3;
    sub_1BF3985D8(a1, v14);
    v37 = 0;
    (*(v16 + 56))(v14, 0, 1, v15);
    (*(v16 + 32))(v18, v14, v15);
    if (qword_1EDC9EFD8 != -1)
    {
      swift_once();
    }

    v19 = sub_1BF4E7B54();
    __swift_project_value_buffer(v19, qword_1EDCA6A48);
    v20 = v40;
    isa = v40[2].isa;
    (isa)(v11, a1, v5);
    v21 = sub_1BF4E7B34();
    v22 = sub_1BF4E8E84();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v35 = v22;
      v24 = v23;
      v34 = swift_slowAlloc();
      v43 = v34;
      *v24 = 136446210;
      (isa)(v8, v11, v5);
      v25 = v20[1].isa;
      v25(v11, v5);
      v40 = v21;
      v26 = sub_1BF4E96A4();
      v28 = v27;
      v25(v8, v5);
      v29 = sub_1BF38D65C(v26, v28, &v43);

      *(v24 + 4) = v29;
      v21 = v40;
      _os_log_impl(&dword_1BF389000, v40, v35, "%{public}s marked as removed from store", v24, 0xCu);
      v30 = v34;
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1BFB5A5D0](v30, -1, -1);
      MEMORY[0x1BFB5A5D0](v24, -1, -1);
    }

    else
    {
      (v20[1].isa)(v11, v5);
    }

    v31 = v41;
    LOBYTE(v43) = 1;
    sub_1BF4E7604();
    sub_1BF38C8B4(&qword_1EDC9D5B8, &qword_1EBDD8F40, &qword_1BF4EF090, MEMORY[0x1E6993F80]);
    v32 = v37;
    sub_1BF4E7044();
    if (v32)
    {
    }

    (*(v42 + 8))(v31, v38);
    (*(v16 + 8))(v18, v15);
  }
}

id sub_1BF419688(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v13[3] = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1BF4E7194();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF3985D8(a1, v8);
  v9 = *(v1 + 16);
  sub_1BF4E7164();
  v10 = sub_1BF4E88E4();

  v11 = [v9 fileExistsAtPath_];

  (*(v6 + 8))(v8, v5);
  return v11;
}

char *sub_1BF419ACC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BB8, &unk_1BF4ED400);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BC0, qword_1BF4ED410);
  v23 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = sub_1BF4E7194();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF3985D8(a1, v14);
  if (!v1)
  {
    v18 = v7;
    v19 = v12;
    v20 = v11;
    sub_1BF38C8B4(&qword_1EDC9F088, &qword_1EBDD8BC0, qword_1BF4ED410, MEMORY[0x1E6993F88]);
    v15 = v21;
    sub_1BF4E7034();
    v17 = v23;
    (*(v23 + 56))(v5, 0, 1, v15);
    (*(v17 + 32))(v10, v5, v15);
    sub_1BF4E7614();
    (*(v17 + 8))(v10, v15);
    (*(v19 + 8))(v14, v20);
    return v22;
  }

  return v10;
}

uint64_t sub_1BF419F18(id *a1, id *a2)
{
  v106[5] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for WidgetEntryKey(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v90 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v91 = &v90 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v92 = &v90 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BF0, &qword_1BF4ED508);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v98 = &v90 - v11;
  v12 = sub_1BF4E6D64();
  v13 = *(v12 - 8);
  v101 = v12;
  v102 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v103 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1BF4E8424();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v97 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BF4E7194();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v95 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v90 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v96 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v90 - v26;
  v28 = *(v17 + 56);
  v28(&v90 - v26, 1, 1, v16, v25);
  v29 = a1;
  v104 = a2;
  v30 = v99;
  sub_1BF3F4FF4(a1, v21);
  v100 = v27;
  if (v30)
  {
    v31 = v17;
    v32 = v16;
    v33 = a1;
    v38 = v101;
    v39 = v103;
    v40 = v104;
    v41 = v100;
    v42 = v102;
    if (*(v104 + 160) == 1)
    {
      v99 = v33;
      v43 = v100;
      v106[0] = v30;
      v44 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
      v45 = v98;
      v46 = swift_dynamicCast();
      v47 = v42[7];
      if (v46)
      {
        v47(v45, 0, 1, v38);
        (v42[4])(v39, v45, v38);
        if (sub_1BF41B748())
        {
          v41 = v43;
          if (qword_1EDC9D4C0 != -1)
          {
            swift_once();
          }

          v48 = sub_1BF4E7B54();
          __swift_project_value_buffer(v48, qword_1EDCA6940);
          v49 = v92;
          sub_1BF41C6B4(v99, v92, type metadata accessor for WidgetEntryKey);
          v50 = sub_1BF4E7B34();
          v51 = sub_1BF4E8E84();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v106[0] = v53;
            *v52 = 136446210;
            v104 = v30;
            v54 = v91;
            sub_1BF41C6B4(v49, v91, type metadata accessor for WidgetEntryKey);
            sub_1BF41C71C(v49, type metadata accessor for WidgetEntryKey);
            v55 = WidgetEntryKey.description.getter();
            v57 = v56;
            sub_1BF41C71C(v54, type metadata accessor for WidgetEntryKey);
            v58 = sub_1BF38D65C(v55, v57, v106);

            *(v52 + 4) = v58;
            _os_log_impl(&dword_1BF389000, v50, v51, "Not removing item for key %{public}s because of keybag", v52, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v53);
            MEMORY[0x1BFB5A5D0](v53, -1, -1);
            MEMORY[0x1BFB5A5D0](v52, -1, -1);

            (v102[1])(v103, v101);
          }

          else
          {
            sub_1BF41C71C(v49, type metadata accessor for WidgetEntryKey);

            (v102[1])(v103, v38);
          }

          goto LABEL_26;
        }

        (v42[1])(v39, v38);
      }

      else
      {
        v47(v45, 1, 1, v38);
        sub_1BF38C9B4(v45, &qword_1EBDD8BF0, &qword_1BF4ED508);
      }

      v41 = v43;
      v60 = v96;
      sub_1BF38C94C(v43, v96, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
      if ((*(v31 + 48))(v60, 1, v32) == 1)
      {
        sub_1BF38C9B4(v60, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
      }

      else
      {
        v61 = v40;
        v62 = v31;
        v63 = *(v31 + 32);
        v64 = v95;
        v63(v95, v60, v32);
        v65 = v61[2];
        v66 = sub_1BF4E7094();
        v106[0] = 0;
        v67 = [v65 removeItemAtURL:v66 error:v106];

        if (v67)
        {
          v104 = v62;
          v68 = qword_1EDC9EFD8;
          v69 = v106[0];
          if (v68 != -1)
          {
            swift_once();
          }

          v70 = sub_1BF4E7B54();
          __swift_project_value_buffer(v70, qword_1EDCA6A48);
          v71 = v90;
          sub_1BF41C6B4(v99, v90, type metadata accessor for WidgetEntryKey);
          v72 = v30;
          v73 = sub_1BF4E7B34();
          v74 = sub_1BF4E8E84();

          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            v103 = v32;
            v76 = v75;
            v101 = swift_slowAlloc();
            v102 = swift_slowAlloc();
            v106[0] = v102;
            *v76 = 136446466;
            v77 = v91;
            sub_1BF41C6B4(v71, v91, type metadata accessor for WidgetEntryKey);
            sub_1BF41C71C(v71, type metadata accessor for WidgetEntryKey);
            v78 = WidgetEntryKey.description.getter();
            v80 = v79;
            sub_1BF41C71C(v77, type metadata accessor for WidgetEntryKey);
            v81 = sub_1BF38D65C(v78, v80, v106);

            *(v76 + 4) = v81;
            *(v76 + 12) = 2114;
            v82 = v30;
            v83 = _swift_stdlib_bridgeErrorToNSError();
            *(v76 + 14) = v83;
            v84 = v101;
            *v101 = v83;
            _os_log_impl(&dword_1BF389000, v73, v74, "Removing item for key %{public}s because  %{public}@", v76, 0x16u);
            sub_1BF38C9B4(v84, &unk_1EBDD9260, &qword_1BF4EC380);
            MEMORY[0x1BFB5A5D0](v84, -1, -1);
            v85 = v102;
            __swift_destroy_boxed_opaque_existential_1Tm(v102);
            MEMORY[0x1BFB5A5D0](v85, -1, -1);
            MEMORY[0x1BFB5A5D0](v76, -1, -1);

            (v104[1])(v95, v103);
          }

          else
          {
            sub_1BF41C71C(v71, type metadata accessor for WidgetEntryKey);

            (v104[1])(v95, v32);
          }
        }

        else
        {
          v86 = v106[0];
          v87 = sub_1BF4E6FF4();

          swift_willThrow();
          (*(v62 + 8))(v64, v32);
        }
      }
    }

LABEL_26:
    swift_willThrow();
    sub_1BF38C9B4(v41, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    return v88 & 1;
  }

  sub_1BF38C9B4(v27, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
  (*(v17 + 16))(v27, v21, v16);
  (v28)(v27, 0, 1, v16);
  v34 = v104;
  swift_beginAccess();
  sub_1BF38E49C((v34 + 15), v106);
  v35 = v106[4];
  __swift_project_boxed_opaque_existential_1(v106, v106[3]);
  v99 = v29;
  v36 = [*v29 extensionIdentity];
  v37 = v97;
  v35[2]();

  __swift_destroy_boxed_opaque_existential_1Tm(v106);
  if (v104[20])
  {
    v59 = v104[2];
    sub_1BF3B36F0(v21, v59);
  }

  sub_1BF3F4084(&v105);
  (*(v93 + 8))(v37, v94);
  (*(v17 + 8))(v21, v16);
  sub_1BF38C9B4(v100, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v88 = v105;
  return v88 & 1;
}

uint64_t sub_1BF41AB54(id *a1, void *a2)
{
  v107[5] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for ControlEntryKey(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v92 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v93 = &v91 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v91 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BF0, &qword_1BF4ED508);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v102 = (&v91 - v11);
  v100 = sub_1BF4E6D64();
  v103 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v104 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BF4E8424();
  v95 = *(v13 - 8);
  v96 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v99 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BF4E7194();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v91 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v98 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v91 - v26;
  v28 = *(v16 + 56);
  v28(&v91 - v26, 1, 1, v15, v25);
  v101 = v21;
  v29 = v21;
  v30 = a1;
  v106 = a2;
  v31 = v105;
  sub_1BF3F5278(a1, v29);
  v97 = a1;
  if (v31)
  {
    v32 = v16;
    v33 = v15;
    v39 = v103;
    v38 = v104;
    v40 = v102;
    if (*(v106 + 160) == 1)
    {
      v41 = v106;
      v105 = v18;
      v107[0] = v31;
      v42 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
      v43 = v100;
      v44 = swift_dynamicCast();
      v45 = v39[7];
      if (v44)
      {
        v45(v40, 0, 1, v43);
        (v39[4])(v38, v40, v43);
        if (sub_1BF41B748())
        {
          v46 = v97;
          if (qword_1EDC9D4C0 != -1)
          {
            swift_once();
          }

          v47 = sub_1BF4E7B54();
          __swift_project_value_buffer(v47, qword_1EDCA6940);
          v48 = v94;
          sub_1BF41C6B4(v46, v94, type metadata accessor for ControlEntryKey);
          v49 = sub_1BF4E7B34();
          v50 = sub_1BF4E8E84();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v105 = swift_slowAlloc();
            v107[0] = v105;
            *v51 = 136446210;
            v106 = v31;
            v52 = v93;
            sub_1BF41C6B4(v48, v93, type metadata accessor for ControlEntryKey);
            sub_1BF41C71C(v48, type metadata accessor for ControlEntryKey);
            v53 = v39;
            v54 = ControlEntryKey.description.getter();
            v56 = v55;
            sub_1BF41C71C(v52, type metadata accessor for ControlEntryKey);
            v57 = sub_1BF38D65C(v54, v56, v107);

            *(v51 + 4) = v57;
            _os_log_impl(&dword_1BF389000, v49, v50, "Not removing item for key %{public}s because of keybag", v51, 0xCu);
            v58 = v105;
            __swift_destroy_boxed_opaque_existential_1Tm(v105);
            MEMORY[0x1BFB5A5D0](v58, -1, -1);
            MEMORY[0x1BFB5A5D0](v51, -1, -1);

            (v53[1])(v104, v100);
          }

          else
          {
            sub_1BF41C71C(v48, type metadata accessor for ControlEntryKey);

            (v39[1])(v104, v100);
          }

          goto LABEL_26;
        }

        v59 = v33;
        v64 = v43;
        v60 = v32;
        (v39[1])(v38, v64);
      }

      else
      {
        v45(v40, 1, 1, v43);
        sub_1BF38C9B4(v40, &qword_1EBDD8BF0, &qword_1BF4ED508);
        v59 = v33;
        v60 = v32;
      }

      v65 = v98;
      sub_1BF38C94C(v27, v98, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
      if ((*(v60 + 48))(v65, 1, v59) == 1)
      {
        sub_1BF38C9B4(v65, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
      }

      else
      {
        v66 = v105;
        (*(v60 + 32))(v105, v65, v59);
        v67 = v41[2];
        v68 = sub_1BF4E7094();
        v107[0] = 0;
        v69 = [v67 removeItemAtURL:v68 error:v107];

        if (v69)
        {
          v106 = v60;
          v70 = qword_1EDC9EFD8;
          v71 = v107[0];
          if (v70 != -1)
          {
            swift_once();
          }

          v72 = sub_1BF4E7B54();
          __swift_project_value_buffer(v72, qword_1EDCA6A48);
          v73 = v92;
          sub_1BF41C6B4(v97, v92, type metadata accessor for ControlEntryKey);
          v74 = v31;
          v75 = sub_1BF4E7B34();
          v76 = sub_1BF4E8E84();

          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v102 = swift_slowAlloc();
            v103 = swift_slowAlloc();
            v107[0] = v103;
            *v77 = 136446466;
            v78 = v93;
            sub_1BF41C6B4(v73, v93, type metadata accessor for ControlEntryKey);
            sub_1BF41C71C(v73, type metadata accessor for ControlEntryKey);
            v79 = ControlEntryKey.description.getter();
            v104 = v59;
            v80 = v79;
            v82 = v81;
            sub_1BF41C71C(v78, type metadata accessor for ControlEntryKey);
            v83 = sub_1BF38D65C(v80, v82, v107);

            *(v77 + 4) = v83;
            *(v77 + 12) = 2114;
            v84 = v31;
            v85 = _swift_stdlib_bridgeErrorToNSError();
            *(v77 + 14) = v85;
            v86 = v102;
            *v102 = v85;
            _os_log_impl(&dword_1BF389000, v75, v76, "Removing item for key %{public}s because  %{public}@", v77, 0x16u);
            sub_1BF38C9B4(v86, &unk_1EBDD9260, &qword_1BF4EC380);
            MEMORY[0x1BFB5A5D0](v86, -1, -1);
            v87 = v103;
            __swift_destroy_boxed_opaque_existential_1Tm(v103);
            MEMORY[0x1BFB5A5D0](v87, -1, -1);
            MEMORY[0x1BFB5A5D0](v77, -1, -1);

            (v106[1])(v105, v104);
          }

          else
          {
            sub_1BF41C71C(v73, type metadata accessor for ControlEntryKey);

            (v106[1])(v105, v59);
          }
        }

        else
        {
          v88 = v107[0];
          v89 = sub_1BF4E6FF4();

          swift_willThrow();
          (*(v60 + 8))(v66, v59);
        }
      }
    }

LABEL_26:
    swift_willThrow();
    v63 = v27;
    goto LABEL_27;
  }

  v105 = v18;
  sub_1BF38C9B4(v27, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
  (*(v16 + 16))(v27, v101, v15);
  (v28)(v27, 0, 1, v15);
  v34 = v106;
  swift_beginAccess();
  sub_1BF38E49C((v34 + 15), v107);
  v35 = v107[4];
  __swift_project_boxed_opaque_existential_1(v107, v107[3]);
  v36 = [*v30 extensionIdentity];
  v37 = v99;
  v35[2]();

  __swift_destroy_boxed_opaque_existential_1Tm(v107);
  v61 = v101;
  if (v106[20])
  {
    v62 = v106[2];
    sub_1BF3B36F0(v61, v62);
  }

  (*(v95 + 8))(v37, v96);
  (*(v16 + 8))(v61, v15);
  v63 = v27;
LABEL_27:
  sub_1BF38C9B4(v63, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
  return 1;
}

BOOL sub_1BF41B748()
{
  v0 = sub_1BF4E6D54();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  sub_1BF4E6D64();
  sub_1BF41C66C(&qword_1EDC9F110, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
  sub_1BF4E6FC4();
  sub_1BF4E6CF4();
  sub_1BF41C66C(&qword_1EDC9F118, MEMORY[0x1E6967E70], MEMORY[0x1E6967E88]);
  sub_1BF4E8B54();
  sub_1BF4E8B54();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  if (v10 == v9)
  {
    return 1;
  }

  sub_1BF4E6FC4();
  sub_1BF4E6D04();
  sub_1BF4E8B54();
  sub_1BF4E8B54();
  v7(v3, v0);
  v7(v6, v0);
  return v10 == v9;
}

uint64_t BaseCacheManager.__allocating_init(identifier:cacheKeyProvider:cacheURLProvider:protectionLevelProvider:fileManager:forReading:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t a6, char a7)
{
  v14 = swift_allocObject();
  BaseCacheManager.init(identifier:cacheKeyProvider:cacheURLProvider:protectionLevelProvider:fileManager:forReading:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t URL.hasRequiresReloadExtendedAttribute.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F38, &qword_1BF4F7A30);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F40, &qword_1BF4EF090);
  sub_1BF38C8B4(&qword_1EDC9FD98, &qword_1EBDD8F40, &qword_1BF4EF090, MEMORY[0x1E6993F88]);
  sub_1BF4E7034();
  v7 = *(v6 - 8);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_1BF38C94C(v5, v2, &qword_1EBDD8F38, &qword_1BF4F7A30);
  if ((*(v7 + 48))(v2, 1, v6) == 1)
  {
    sub_1BF38C9B4(v5, &qword_1EBDD8F38, &qword_1BF4F7A30);
    sub_1BF38C9B4(v2, &qword_1EBDD8F38, &qword_1BF4F7A30);
    return 0;
  }

  else
  {
    sub_1BF4E7614();
    sub_1BF38C9B4(v5, &qword_1EBDD8F38, &qword_1BF4F7A30);
    v8 = v11;
    (*(v7 + 8))(v2, v6);
  }

  return v8;
}

uint64_t BaseCacheManager.__deallocating_deinit()
{
  BaseCacheManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BF41BF44(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9ChronoKit20CacheManagementErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BF41C18C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF41C1E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1BF41C23C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1BF41C66C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BF41C6B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF41C71C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t WidgetExtensionInfo.version.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t WidgetExtensionInfo.version.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t WidgetExtensionInfo.localizedDisplayName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t WidgetExtensionInfo.localizedDisplayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t WidgetExtensionInfo.pluginUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo(0) + 28);
  v4 = sub_1BF4E7394();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetExtensionInfo.pluginUUID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo(0) + 28);
  v4 = sub_1BF4E7394();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExtensionInfo.lastModifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo(0) + 32);
  v4 = sub_1BF4E7334();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetExtensionInfo.lastModifiedDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo(0) + 32);
  v4 = sub_1BF4E7334();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExtensionInfo.isInternal.setter(char a1)
{
  result = type metadata accessor for WidgetExtensionInfo(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t WidgetExtensionInfo.bundleURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo(0) + 40);
  v4 = sub_1BF4E7194();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetExtensionInfo.bundleURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo(0) + 40);
  v4 = sub_1BF4E7194();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExtensionInfo.dataContainerURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo(0) + 44);
  v4 = sub_1BF4E7194();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetExtensionInfo.dataContainerURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo(0) + 44);
  v4 = sub_1BF4E7194();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExtensionInfo.systemDataContainerURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo(0) + 48);
  v4 = sub_1BF4E7194();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetExtensionInfo.systemDataContainerURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo(0) + 48);
  v4 = sub_1BF4E7194();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExtensionInfo.requestedDataProtection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WidgetExtensionInfo(0) + 52);

  return sub_1BF414A5C(v3, a1);
}

uint64_t WidgetExtensionInfo.requestedDataProtection.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WidgetExtensionInfo(0) + 52);

  return sub_1BF41D048(a1, v3);
}

uint64_t sub_1BF41D048(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t WidgetExtensionInfo.wantsLocation.setter(char a1)
{
  result = type metadata accessor for WidgetExtensionInfo(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t WidgetExtensionInfo.containerBundleURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo(0) + 60);
  v4 = sub_1BF4E7194();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetExtensionInfo.containerBundleURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo(0) + 60);
  v4 = sub_1BF4E7194();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExtensionInfo.effectiveContainerBundleIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetExtensionInfo(0) + 64));

  return v1;
}

uint64_t WidgetExtensionInfo.effectiveContainerBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for WidgetExtensionInfo(0) + 64));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t WidgetExtensionInfo.localizedContainerDisplayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetExtensionInfo(0) + 68));

  return v1;
}

uint64_t WidgetExtensionInfo.localizedContainerDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for WidgetExtensionInfo(0) + 68));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t WidgetExtensionInfo.containerBundleVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetExtensionInfo(0) + 72));

  return v1;
}

uint64_t WidgetExtensionInfo.containerBundleVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for WidgetExtensionInfo(0) + 72));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t WidgetExtensionInfo.sdkVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetExtensionInfo(0) + 76));

  return v1;
}

uint64_t WidgetExtensionInfo.sdkVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for WidgetExtensionInfo(0) + 76));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t WidgetExtensionInfo.platform.setter(uint64_t a1)
{
  result = type metadata accessor for WidgetExtensionInfo(0);
  *(v1 + *(result + 80)) = a1;
  return result;
}

uint64_t WidgetExtensionInfo.watchKitExtensionIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetExtensionInfo(0) + 84));

  return v1;
}

uint64_t WidgetExtensionInfo.watchKitExtensionIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for WidgetExtensionInfo(0) + 84));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t WidgetExtensionInfo.pushEnvironment.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetExtensionInfo(0) + 88));

  return v1;
}

uint64_t WidgetExtensionInfo.pushEnvironment.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for WidgetExtensionInfo(0) + 88));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t WidgetExtensionInfo.isDevelopmentExtension.setter(char a1)
{
  result = type metadata accessor for WidgetExtensionInfo(0);
  *(v1 + *(result + 92)) = a1;
  return result;
}

double WidgetExtensionInfo.availableLocalizations.getter()
{
  type metadata accessor for WidgetExtensionInfo(0);

  return result;
}

uint64_t WidgetExtensionInfo.availableLocalizations.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo(0) + 96);

  *(v1 + v3) = a1;
  return result;
}

uint64_t WidgetExtensionInfo.allowsMixedLocalizations.setter(char a1)
{
  result = type metadata accessor for WidgetExtensionInfo(0);
  *(v1 + *(result + 100)) = a1;
  return result;
}

uint64_t WidgetExtensionInfo.nominatedContainingBundleIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo(0) + 104);

  *(v1 + v3) = a1;
  return result;
}

void *WidgetExtensionInfo.entitlements.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetExtensionInfo(0) + 108));
  v2 = v1;
  return v1;
}

void WidgetExtensionInfo.entitlements.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo(0) + 108);

  *(v1 + v3) = a1;
}

uint64_t WidgetExtensionInfo.bundleStub.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = *v0;
  v5 = *(type metadata accessor for WidgetExtensionInfo(0) + 40);
  v6 = sub_1BF4E7194();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v3, v0 + v5, v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  v8 = v4;

  return sub_1BF4E82D4();
}

uint64_t WidgetExtensionInfo.init(id:version:localizedDisplayName:pluginUUID:lastModifiedDate:isInternal:bundleURL:dataContainerURL:systemDataContainerURL:requestedDataProtection:wantsLocation:containerBundleURL:effectiveContainerBundleIdentifier:localizedContainerDisplayName:containerBundleVersion:sdkVersion:platform:watchKitExtensionIdentifier:pushEnvironment:isDevelopmentExtension:availableLocalizations:allowsMixedLocalizations:nominatedContainingBundleIdentifiers:entitlements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33)
{
  v39 = type metadata accessor for WidgetExtensionInfo(0);
  v40 = v39[13];
  v41 = sub_1BF4E8424();
  (*(*(v41 - 8) + 56))(&a9[v40], 1, 1, v41);
  v42 = &a9[v39[17]];
  v43 = &a9[v39[21]];
  v58 = &a9[v39[22]];
  v59 = v39[27];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  v44 = v39[7];
  v45 = sub_1BF4E7394();
  (*(*(v45 - 8) + 32))(&a9[v44], a6, v45);
  v46 = v39[8];
  v47 = sub_1BF4E7334();
  (*(*(v47 - 8) + 32))(&a9[v46], a7, v47);
  a9[v39[9]] = a8;
  v48 = v39[10];
  v49 = sub_1BF4E7194();
  v50 = *(*(v49 - 8) + 32);
  v50(&a9[v48], a10, v49);
  v50(&a9[v39[11]], a11, v49);
  v50(&a9[v39[12]], a12, v49);
  sub_1BF41D048(a13, &a9[v40]);
  a9[v39[14]] = a14;
  result = (v50)(&a9[v39[15]], a15, v49);
  v52 = &a9[v39[16]];
  *v52 = a16;
  *(v52 + 1) = a17;
  *v42 = a18;
  *(v42 + 1) = a19;
  v53 = &a9[v39[18]];
  *v53 = a20;
  *(v53 + 1) = a21;
  v54 = &a9[v39[19]];
  *v54 = a22;
  *(v54 + 1) = a23;
  *&a9[v39[20]] = a24;
  *v43 = a25;
  *(v43 + 1) = a26;
  *v58 = a27;
  *(v58 + 1) = a28;
  a9[v39[23]] = a29;
  *&a9[v39[24]] = a30;
  a9[v39[25]] = a31;
  *&a9[v39[26]] = a32;
  *&a9[v59] = a33;
  return result;
}

uint64_t WidgetExtensionInfo.matches(_:)(void *a1)
{
  v2 = v1;
  sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
  if ((sub_1BF4E90A4() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 8) == a1[1] && *(v1 + 16) == a1[2];
  if (!v4 && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for WidgetExtensionInfo(0);
  if ((sub_1BF4E72D4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 32);
  v7 = a1[4];
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (!v7 || (*(v2 + 24) != a1[3] || v6 != v7) && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v8 = *(v5 + 68);
  v9 = (v2 + v8);
  v10 = *(v2 + v8 + 8);
  v11 = (a1 + v8);
  v12 = v11[1];
  result = (v10 | v12) == 0;
  if (v10)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    if (*v9 == *v11 && v10 == v12)
    {
      return 1;
    }

    else
    {

      return sub_1BF4E9734();
    }
  }

  return result;
}

uint64_t WidgetExtensionInfo.hash(into:)(uint64_t a1)
{
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  type metadata accessor for WidgetExtensionInfo(0);
  sub_1BF4E7334();
  sub_1BF422528(&qword_1EDC9F0D0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  return sub_1BF4E8884();
}

void WidgetExtensionInfo.hashRecordVersion(into:)()
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v64);
  v2 = &v50 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v50 - v4;
  v6 = sub_1BF4E8314();
  v63 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - v10;
  v12 = *v0;
  v65 = v0;
  *&v66 = v12;
  v13 = sub_1BF4E9034();
  v14 = sub_1BF422528(&qword_1EDC9D6D0, MEMORY[0x1E69941C0], MEMORY[0x1E69941C8]);
  v15 = v67;
  sub_1BF4E7AA4();
  if (v15)
  {
    return;
  }

  v56 = v12;
  v57 = v14;
  v58 = v13;
  v59 = v11;
  v60 = v8;
  v61 = v5;
  v62 = v6;
  v67 = v2;
  v16 = v65;
  v66 = *(v65 + 3);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F68, &unk_1BF4EF420);
  sub_1BF41EB50(&unk_1EDC96410, &qword_1EBDD8F68, &unk_1BF4EF420, MEMORY[0x1E69E7C70]);
  sub_1BF4E7AA4();
  v18 = type metadata accessor for WidgetExtensionInfo(0);
  LOBYTE(v66) = *(v16 + v18[9]);
  sub_1BF4E7AA4();
  v19 = v18[10];
  v20 = sub_1BF4E7194();
  v21 = sub_1BF422528(&qword_1EDC9D618, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1BF4E7AA4();
  sub_1BF4E7AA4();
  sub_1BF4E7AA4();
  v22 = v18[13];
  v54 = v21;
  v55 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  sub_1BF41EA9C();
  sub_1BF4E7AA4();
  LOBYTE(v66) = *(v16 + v18[14]);
  sub_1BF4E7AA4();
  sub_1BF4E7AA4();
  v23 = (v16 + v18[16]);
  v25 = *v23;
  v24 = v23[1];
  *&v66 = v25;
  *(&v66 + 1) = v24;
  sub_1BF4E7AA4();
  v26 = v16;
  v66 = *(v16 + v18[17]);
  sub_1BF4E7AA4();
  v27 = (v16 + v18[18]);
  v29 = *v27;
  v28 = v27[1];
  *&v66 = v29;
  *(&v66 + 1) = v28;
  sub_1BF4E7AA4();
  v30 = (v16 + v18[19]);
  v32 = *v30;
  v31 = v30[1];
  *&v66 = v32;
  *(&v66 + 1) = v31;
  sub_1BF4E7AA4();
  if (HIDWORD(*(v16 + v18[20])))
  {
    __break(1u);
LABEL_11:
    v46 = v61;
    v53(v61, v26 + v19, v20);
    v51(v46, 0, 1, v20);
    v47 = v50;

    v48 = v60;
    sub_1BF4E82D4();
    v49 = v67;
    sub_1BF4E82F4();
    v17(v48, v62);
    sub_1BF41EC38();
    sub_1BF4E7AA4();
    sub_1BF38C9B4(v49, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    return;
  }

  LODWORD(v66) = *(v16 + v18[20]);
  sub_1BF4E7AA4();
  v66 = *(v16 + v18[21]);
  sub_1BF4E7AA4();
  v66 = *(v16 + v18[22]);
  sub_1BF4E7AA4();
  LOBYTE(v66) = *(v16 + v18[23]);
  sub_1BF4E7AA4();
  *&v66 = *(v16 + v18[24]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  sub_1BF41EB50(&qword_1EDC963E8, &unk_1EBDD9BB0, &qword_1BF4EC140, MEMORY[0x1E69E6300]);
  sub_1BF4E7AA4();
  LOBYTE(v66) = *(v16 + v18[25]);
  sub_1BF4E7AA4();
  *&v66 = *(v16 + v18[26]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F70, &unk_1BF4EF430);
  sub_1BF41EBB0(&qword_1EDC96400, &qword_1EDC9D5B0, MEMORY[0x1E69940B8], MEMORY[0x1E69E6300]);
  sub_1BF4E7AA4();
  v55 = 0;
  v33 = *(v16 + v18[27]);
  if (!v33 || (sub_1BF3901C0(0, &unk_1EDC96320, 0x1E6994288), v34 = v33, v35 = v55, sub_1BF4E7AB4(), v34, (v55 = v35) == 0))
  {
    v36 = v16[1];
    v37 = v26[2];
    v38 = *(v20 - 8);
    v39 = *(v38 + 16);
    v40 = v61;
    v52 = v38 + 16;
    v53 = v39;
    v39(v61, v26 + v19, v20);
    v51 = *(v38 + 56);
    v51(v40, 0, 1, v20);
    v41 = v56;

    v42 = v59;
    v50 = v41;
    v56 = v36;
    v54 = v37;
    sub_1BF4E82D4();
    v43 = sub_1BF4E82E4();
    v44 = *(v63 + 8);
    v63 += 8;
    v17 = v44;
    v44(v42, v62);
    *&v66 = v43;
    v45 = v55;
    sub_1BF4E7AA4();

    if (!v45)
    {
      goto LABEL_11;
    }
  }
}

unint64_t sub_1BF41EA9C()
{
  result = qword_1EDC96450;
  if (!qword_1EDC96450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
    sub_1BF422528(&qword_1EDC96468, MEMORY[0x1E69859A8], MEMORY[0x1E69859B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC96450);
  }

  return result;
}

uint64_t sub_1BF41EB50(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1BF41EBB0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8F70, &unk_1BF4EF430);
    sub_1BF421E90(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BF41EC38()
{
  result = qword_1EDC9D608;
  if (!qword_1EDC9D608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
    sub_1BF422528(&qword_1EDC9D618, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9D608);
  }

  return result;
}

uint64_t WidgetExtensionInfo.hashValue.getter(double a1)
{
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  type metadata accessor for WidgetExtensionInfo(0);
  sub_1BF4E7334();
  sub_1BF422528(&qword_1EDC9F0D0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BF4E8884();
  return sub_1BF4E9844();
}

unint64_t sub_1BF41EDAC(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x55556E6967756C70;
      break;
    case 4:
    case 7:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6E7265746E497369;
      break;
    case 6:
      result = 0x5255656C646E7562;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0x636F4C73746E6177;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000022;
      break;
    case 13:
      result = 0xD000000000000023;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 0x69737265566B6473;
      break;
    case 16:
      result = 0x6D726F6674616C70;
      break;
    case 17:
      result = 0xD00000000000001BLL;
      break;
    case 18:
      result = 0x69766E4568737570;
      break;
    case 19:
      result = 0xD000000000000016;
      break;
    case 20:
      result = 0xD000000000000016;
      break;
    case 21:
      result = 0xD000000000000018;
      break;
    case 22:
      result = 0xD000000000000024;
      break;
    case 23:
      result = 0x6D656C7469746E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF41F070(double a1)
{
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  sub_1BF4E7334();
  sub_1BF422528(&qword_1EDC9F0D0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BF4E8884();
  return sub_1BF4E9844();
}

uint64_t sub_1BF41F128(uint64_t a1)
{
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  sub_1BF4E7334();
  sub_1BF422528(&qword_1EDC9F0D0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  return sub_1BF4E8884();
}

uint64_t sub_1BF41F1C4(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  sub_1BF4E7334();
  sub_1BF422528(&qword_1EDC9F0D0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BF4E8884();
  return sub_1BF4E9844();
}

id sub_1BF41F278@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_1BF41F288(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1BF41EDAC(*a1);
  v5 = v4;
  if (v3 == sub_1BF41EDAC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BF4E9734();
  }

  return v8 & 1;
}

uint64_t sub_1BF41F310(double a1)
{
  v2 = *v1;
  sub_1BF4E9804();
  sub_1BF41EDAC(v2);
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF41F374(uint64_t a1)
{
  sub_1BF41EDAC(*v1);
  sub_1BF4E89F4();
}

uint64_t sub_1BF41F3C8(uint64_t a1, double a2)
{
  v3 = *v2;
  sub_1BF4E9804();
  sub_1BF41EDAC(v3);
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

unint64_t sub_1BF41F428@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BF4224D4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1BF41F458@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1BF41EDAC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1BF41F48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF4224D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF41F4C0(uint64_t a1)
{
  v2 = sub_1BF421DC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF41F4FC(uint64_t a1)
{
  v2 = sub_1BF421DC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetExtensionInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v112 = &v105 - v4;
  v5 = sub_1BF4E7194();
  v120 = *(v5 - 8);
  v121 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v111 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v113 = &v105 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v114 = &v105 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v105 - v12;
  v118 = sub_1BF4E7334();
  v116 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v122 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1BF4E7394();
  v117 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v15 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F78, &qword_1BF4EF440);
  v123 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v105 - v17;
  v19 = type metadata accessor for WidgetExtensionInfo(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v22 + 52);
  v24 = sub_1BF4E8424();
  v25 = *(*(v24 - 8) + 56);
  v126 = v23;
  v25(v21 + v23, 1, 1, v24);
  v127 = v19;
  v128 = v21;
  v26 = *(v19 + 108);
  *(v21 + v26) = 0;
  v27 = a1[3];
  v125 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1BF421DC0();
  v28 = v124;
  sub_1BF4E9854();
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v125);

    sub_1BF38C9B4(v128 + v126, &qword_1EBDD8AF8, &qword_1BF4EC370);

    goto LABEL_4;
  }

  v29 = v15;
  v30 = v122;
  v109 = v24;
  v108 = v26;
  sub_1BF4E9034();
  v131 = 0;
  sub_1BF422528(&qword_1EDC9D6C8, MEMORY[0x1E69941C0], MEMORY[0x1E69941D0]);
  v31 = v18;
  sub_1BF4E95B4();
  v34 = v128;
  v33 = v129;
  *v128 = v129;
  LOBYTE(v129) = 1;
  v35 = sub_1BF4E9564();
  v36 = v123;
  v34[1] = v35;
  v34[2] = v37;
  LOBYTE(v129) = 2;
  v38 = sub_1BF4E9544();
  v105 = v33;
  v106 = 0;
  v34[3] = v38;
  v34[4] = v39;
  v107 = v39;
  LOBYTE(v129) = 3;
  sub_1BF422528(&qword_1EBDD8958, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v40 = v29;
  v41 = v119;
  sub_1BF4E95B4();
  v42 = v127;
  (*(v117 + 32))(v34 + v127[7], v40, v41);
  LOBYTE(v129) = 4;
  sub_1BF422528(&qword_1EDC9D5F0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v43 = v118;
  sub_1BF4E95B4();
  (*(v116 + 32))(v34 + v42[8], v30, v43);
  LOBYTE(v129) = 5;
  v44 = v42;
  *(v34 + v42[9]) = sub_1BF4E9574() & 1;
  LOBYTE(v129) = 6;
  v45 = sub_1BF422528(&qword_1EBDD8F80, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v46 = v115;
  v47 = v16;
  v48 = v121;
  sub_1BF4E95B4();
  v57 = v34 + v44[10];
  v58 = *(v120 + 32);
  v58(v57, v46, v48);
  LOBYTE(v129) = 7;
  v59 = v45;
  v60 = v114;
  sub_1BF4E95B4();
  v124 = 0;
  v58(v128 + v127[11], v60, v48);
  LOBYTE(v129) = 8;
  v61 = v113;
  v122 = v59;
  v62 = v124;
  sub_1BF4E95B4();
  v124 = v62;
  if (v62)
  {
    (*(v36 + 8))(v31, v47);
    LODWORD(v112) = 0;
    LODWORD(v114) = 0;
LABEL_28:
    v63 = v128;
    __swift_destroy_boxed_opaque_existential_1Tm(v125);

    v122 = 0;
    LODWORD(v123) = 0;
    LODWORD(v115) = 0;
    v64 = 0;
    LODWORD(v113) = 1;
    goto LABEL_12;
  }

  v65 = v106;
  v58(v128 + v127[12], v61, v48);
  LOBYTE(v129) = 9;
  sub_1BF422528(&qword_1EBDD8C08, MEMORY[0x1E69859A8], MEMORY[0x1E69859D0]);
  v66 = v47;
  v67 = v31;
  v68 = v124;
  sub_1BF4E9554();
  v124 = v68;
  if (v68 || (sub_1BF41D048(v112, v128 + v126), LOBYTE(v129) = 10, v69 = v124, v70 = sub_1BF4E9574(), (v124 = v69) != 0) || (*(v128 + v127[14]) = v70 & 1, LOBYTE(v129) = 11, v71 = v124, sub_1BF4E95B4(), (v124 = v71) != 0))
  {
    (*(v123 + 8))(v31, v47);
    LODWORD(v114) = 0;
    LODWORD(v112) = 1;
    goto LABEL_28;
  }

  v58(v128 + v127[15], v111, v121);
  LOBYTE(v129) = 12;
  if (sub_1BF4E95E4())
  {
    LOBYTE(v129) = 12;
    v72 = v124;
    v73 = sub_1BF4E9564();
    v124 = v72;
    if (v72)
    {
      (*(v123 + 8))(v31, v47);
      LODWORD(v112) = 1;
      LODWORD(v114) = 1;
      goto LABEL_28;
    }

    v79 = v73;
    v78 = v74;
  }

  else
  {
    v75 = *MEMORY[0x1E69941B0];
    v76 = v105;
    swift_beginAccess();
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
    if ((*(*(v77 - 8) + 48))(v76 + v75, 1, v77))
    {
      swift_endAccess();
      v78 = 0xE700000000000000;
      v79 = 0x6E776F6E6B6E55;
    }

    else
    {
      v79 = sub_1BF4E76B4();
      v78 = v80;
      swift_endAccess();
    }
  }

  v81 = (v128 + v127[16]);
  *v81 = v79;
  v81[1] = v78;
  LOBYTE(v129) = 13;
  v82 = v124;
  v83 = sub_1BF4E9544();
  v122 = v84;
  v53 = v82;
  if (v82)
  {
    (*(v123 + 8))(v67, v66);
    LODWORD(v115) = 0;
    LODWORD(v123) = 0;
    v122 = 0;
    LODWORD(v113) = 1;
    v64 = 1;
    __swift_destroy_boxed_opaque_existential_1Tm(v125);
    v49 = v128;

    if (v65)
    {

      LODWORD(v112) = 1;
      LODWORD(v114) = 1;
      LODWORD(v125) = 1;
      goto LABEL_7;
    }

    v124 = v82;
    LODWORD(v114) = 1;
    LODWORD(v112) = 1;
LABEL_12:
    LODWORD(v125) = v64;
    v49 = v128;

    v53 = v124;
LABEL_7:
    (*(v117 + 8))(v49 + v127[7], v119);
    if (v113)
    {
      (*(v116 + 8))(v49 + v127[8], v118);
    }

    v128 = 0;
    v124 = v53;
    v50 = v127;
    v51 = *(v120 + 8);
    v52 = v121;
    v51(v49 + v127[10], v121);
    v51(v49 + v50[11], v52);
    if (v112)
    {
      v54 = v121;
      v51(v49 + v50[12], v121);
      sub_1BF38C9B4(v49 + v126, &qword_1EBDD8AF8, &qword_1BF4EC370);
      if (v114)
      {
        v51(v49 + v50[15], v54);
        v55 = v123;
        if (v125)
        {
LABEL_23:

          if ((v115 & 1) == 0)
          {
LABEL_24:
            if (v55)
            {
LABEL_25:
            }

LABEL_4:
          }

LABEL_20:

          if (v55)
          {
            goto LABEL_25;
          }

          goto LABEL_4;
        }

LABEL_19:

        if (!v115)
        {
          goto LABEL_24;
        }

        goto LABEL_20;
      }

      v55 = v123;
    }

    else
    {
      v55 = v123;
      v56 = v114;
      sub_1BF38C9B4(v49 + v126, &qword_1EBDD8AF8, &qword_1BF4EC370);
      if (v56)
      {
        (*(v120 + 8))(v49 + v50[15], v121);
        if (v125)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }
    }

    if (v125)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v85 = (v128 + v127[17]);
  v86 = v122;
  *v85 = v83;
  v85[1] = v86;
  LOBYTE(v129) = 14;
  v87 = sub_1BF4E9564();
  v88 = (v128 + v127[18]);
  *v88 = v87;
  v88[1] = v89;
  LOBYTE(v129) = 15;
  if (sub_1BF4E95E4())
  {
    LOBYTE(v129) = 15;
    v90 = sub_1BF4E9564();
  }

  else
  {
    v90 = sub_1BF4E8914();
  }

  v92 = (v128 + v127[19]);
  *v92 = v90;
  v92[1] = v91;
  LOBYTE(v129) = 16;
  if (sub_1BF4E95E4())
  {
    LOBYTE(v129) = 16;
    v93 = sub_1BF4E95C4();
  }

  else
  {
    v93 = 0;
  }

  v95 = v127;
  v94 = v128;
  *(v128 + v127[20]) = v93;
  v96 = (v94 + v95[21]);
  LOBYTE(v129) = 17;
  if (sub_1BF4E95E4())
  {
    LOBYTE(v129) = 17;
    *v96 = sub_1BF4E9564();
    v96[1] = v97;
  }

  else
  {
    *v96 = 0;
    v96[1] = 0;
  }

  LOBYTE(v129) = 18;
  v98 = sub_1BF4E9544();
  v99 = (v128 + v127[22]);
  *v99 = v98;
  v99[1] = v100;
  LOBYTE(v129) = 19;
  *(v128 + v127[23]) = sub_1BF4E9574() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  v131 = 20;
  sub_1BF421E14();
  sub_1BF4E95B4();
  *(v128 + v127[24]) = v129;
  LOBYTE(v129) = 21;
  *(v128 + v127[25]) = sub_1BF4E9574() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F70, &unk_1BF4EF430);
  v131 = 22;
  sub_1BF41EBB0(&qword_1EBDD8F88, &qword_1EBDD8F90, MEMORY[0x1E69940D8], MEMORY[0x1E69E6330]);
  sub_1BF4E95B4();
  *(v128 + v127[26]) = v129;
  LOBYTE(v129) = 23;
  if (sub_1BF4E95E4())
  {
    v131 = 23;
    sub_1BF3BCF88();
    sub_1BF4E95B4();
    v102 = v129;
    v103 = v130;
    sub_1BF3901C0(0, &qword_1EDC96370, 0x1E696ACD0);
    sub_1BF3901C0(0, &unk_1EDC96320, 0x1E6994288);
    v104 = sub_1BF4E8EB4();
    (*(v123 + 8))(v67, v66);
    sub_1BF3B03C0(v102, v103);
    *(v128 + v108) = v104;
  }

  else
  {
    (*(v123 + 8))(v67, v66);
  }

  v101 = v128;
  sub_1BF38E804(v128, v110);
  __swift_destroy_boxed_opaque_existential_1Tm(v125);
  return sub_1BF38DB44(v101);
}

void WidgetExtensionInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v22 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F98, &qword_1BF4EF448);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF421DC0();
  sub_1BF4E9864();
  *&v21 = *v3;
  v20 = 0;
  sub_1BF4E9034();
  sub_1BF422528(&qword_1EDC9D6D0, MEMORY[0x1E69941C0], MEMORY[0x1E69941C8]);
  sub_1BF4E9674();
  if (v2)
  {
    goto LABEL_3;
  }

  LOBYTE(v21) = 1;
  sub_1BF4E9624();
  LOBYTE(v21) = 2;
  sub_1BF4E9604();
  v9 = type metadata accessor for WidgetExtensionInfo(0);
  LOBYTE(v21) = 3;
  sub_1BF4E7394();
  sub_1BF422528(&qword_1EDC9D5E0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1BF4E9674();
  LOBYTE(v21) = 4;
  sub_1BF4E7334();
  sub_1BF422528(&qword_1EDC9D5F8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1BF4E9674();
  LOBYTE(v21) = 5;
  sub_1BF4E9634();
  LOBYTE(v21) = 6;
  sub_1BF4E7194();
  sub_1BF422528(&qword_1EDC9D618, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1BF4E9674();
  LOBYTE(v21) = 7;
  sub_1BF4E9674();
  LOBYTE(v21) = 8;
  sub_1BF4E9674();
  v19 = v9[13];
  LOBYTE(v21) = 9;
  sub_1BF4E8424();
  sub_1BF422528(&qword_1EDC96468, MEMORY[0x1E69859A8], MEMORY[0x1E69859B0]);
  sub_1BF4E9614();
  LOBYTE(v21) = 10;
  sub_1BF4E9634();
  LOBYTE(v21) = 11;
  sub_1BF4E9674();
  LOBYTE(v21) = 12;
  sub_1BF4E9624();
  LOBYTE(v21) = 13;
  sub_1BF4E9604();
  LOBYTE(v21) = 14;
  sub_1BF4E9624();
  LOBYTE(v21) = 15;
  sub_1BF4E9624();
  if (!HIDWORD(*(v3 + v9[20])))
  {
    LOBYTE(v21) = 16;
    sub_1BF4E9684();
    v21 = *(v3 + v9[22]);
    v20 = 18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F68, &unk_1BF4EF420);
    sub_1BF41EB50(&unk_1EDC96410, &qword_1EBDD8F68, &unk_1BF4EF420, MEMORY[0x1E69E7C70]);
    sub_1BF4E9674();
    LOBYTE(v21) = 19;
    sub_1BF4E9634();
    *&v21 = *(v3 + v9[24]);
    v20 = 20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
    sub_1BF41EB50(&qword_1EDC963E8, &unk_1EBDD9BB0, &qword_1BF4EC140, MEMORY[0x1E69E6300]);
    sub_1BF4E9674();
    LOBYTE(v21) = 21;
    sub_1BF4E9634();
    *&v21 = *(v3 + v9[26]);
    v20 = 22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F70, &unk_1BF4EF430);
    sub_1BF41EBB0(&qword_1EDC96400, &qword_1EDC9D5B0, MEMORY[0x1E69940B8], MEMORY[0x1E69E6300]);
    sub_1BF4E9674();
    v10 = *(v3 + v9[27]);
    if (v10)
    {
      v11 = objc_opt_self();
      *&v21 = 0;
      v12 = v10;
      v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v21];
      v14 = v21;
      if (v13)
      {
        v15 = sub_1BF4E71C4();
        v17 = v16;

        *&v21 = v15;
        *(&v21 + 1) = v17;
        v20 = 23;
        sub_1BF3B01D8();
        sub_1BF4E9674();
        (*(v6 + 8))(v8, v5);

        sub_1BF3B03C0(v15, v17);
        return;
      }

      v18 = v14;
      sub_1BF4E6FF4();

      swift_willThrow();
    }

LABEL_3:
    (*(v6 + 8))(v8, v5);
    return;
  }

  __break(1u);
}

uint64_t WidgetExtensionInfo.description.getter()
{
  v1 = v0;
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](60, 0xE100000000000000);
  MEMORY[0x1BFB58C90](0xD000000000000013, 0x80000001BF4EF430);
  MEMORY[0x1BFB58C90](0x203A6469202D20, 0xE700000000000000);
  v2 = [*v0 description];
  v3 = sub_1BF4E8914();
  v5 = v4;

  MEMORY[0x1BFB58C90](v3, v5);

  MEMORY[0x1BFB58C90](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
  MEMORY[0x1BFB58C90](v1[1], v1[2]);
  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FABD0);
  v6 = type metadata accessor for WidgetExtensionInfo(0);
  MEMORY[0x1BFB58C90](*(v1 + v6[18]), *(v1 + v6[18] + 8));
  MEMORY[0x1BFB58C90](0x7265566B6473202CLL, 0xEE00203A6E6F6973);
  MEMORY[0x1BFB58C90](*(v1 + v6[19]), *(v1 + v6[19] + 8));
  MEMORY[0x1BFB58C90](0x6F6674616C70202CLL, 0xEC000000203A6D72);
  type metadata accessor for CHSPlatform(0);
  sub_1BF4E9404();
  MEMORY[0x1BFB58C90](0xD00000000000001ELL, 0x80000001BF4FABF0);
  MEMORY[0x1BFB58C90](*(v1 + v6[16]), *(v1 + v6[16] + 8));
  MEMORY[0x1BFB58C90](0xD000000000000013, 0x80000001BF4FAC10);
  if (qword_1EDC9F0F0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDC9F0F8;
  v8 = sub_1BF4E7254();
  v9 = [v7 stringFromDate_];

  v10 = sub_1BF4E8914();
  v12 = v11;

  MEMORY[0x1BFB58C90](v10, v12);

  MEMORY[0x1BFB58C90](0x7265746E49736920, 0xED0000203A6C616ELL);
  if (*(v1 + v6[9]))
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (*(v1 + v6[9]))
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x1BFB58C90](v13, v14);

  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return 0;
}

uint64_t _s9ChronoKit19WidgetExtensionInfoV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1BF4E8424();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B18, &qword_1BF4EF790);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
  if ((sub_1BF4E90A4() & 1) == 0 || (a1[1] != a2[1] || a1[2] != a2[2]) && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  v14 = a1[4];
  v15 = a2[4];
  if (v14)
  {
    if (!v15 || (a1[3] != a2[3] || v14 != v15) && (sub_1BF4E9734() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = type metadata accessor for WidgetExtensionInfo(0);
  if ((sub_1BF4E7364() & 1) == 0 || (sub_1BF4E72D4() & 1) == 0 || *(a1 + v16[9]) != *(a2 + v16[9]) || (sub_1BF4E7144() & 1) == 0 || (sub_1BF4E7144() & 1) == 0 || (sub_1BF4E7144() & 1) == 0)
  {
    return 0;
  }

  v17 = v16[13];
  v18 = *(v11 + 48);
  sub_1BF414A5C(a1 + v17, v13);
  v57 = v18;
  sub_1BF414A5C(a2 + v17, &v13[v18]);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) != 1)
  {
    sub_1BF414A5C(v13, v10);
    if (v19(&v13[v57], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v57], v4);
      sub_1BF422528(&qword_1EDC9FDE0, MEMORY[0x1E69859A8], MEMORY[0x1E69859C0]);
      v20 = sub_1BF4E88C4();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_1BF38C9B4(v13, &qword_1EBDD8AF8, &qword_1BF4EC370);
      if ((v20 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_25;
    }

    (*(v5 + 8))(v10, v4);
LABEL_23:
    sub_1BF38C9B4(v13, &qword_1EBDD8B18, &qword_1BF4EF790);
    return 0;
  }

  if (v19(&v13[v57], 1, v4) != 1)
  {
    goto LABEL_23;
  }

  sub_1BF38C9B4(v13, &qword_1EBDD8AF8, &qword_1BF4EC370);
LABEL_25:
  if (*(a1 + v16[14]) != *(a2 + v16[14]) || (sub_1BF4E7144() & 1) == 0)
  {
    return 0;
  }

  v22 = v16[16];
  v23 = *(a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  if ((v23 != *v25 || v24 != v25[1]) && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  v26 = v16[17];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30 || (*v27 != *v29 || v28 != v30) && (sub_1BF4E9734() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  v31 = v16[18];
  v32 = *(a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  if ((v32 != *v34 || v33 != v34[1]) && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  v35 = v16[19];
  v36 = *(a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  if ((v36 != *v38 || v37 != v38[1]) && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v16[20]) != *(a2 + v16[20]))
  {
    return 0;
  }

  v39 = v16[21];
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (a2 + v39);
  v43 = v42[1];
  if (v41)
  {
    if (!v43 || (*v40 != *v42 || v41 != v43) && (sub_1BF4E9734() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v43)
  {
    return 0;
  }

  v44 = v16[22];
  v45 = (a1 + v44);
  v46 = *(a1 + v44 + 8);
  v47 = (a2 + v44);
  v48 = v47[1];
  if (v46)
  {
    if (!v48 || (*v45 != *v47 || v46 != v48) && (sub_1BF4E9734() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v48)
  {
    return 0;
  }

  if (*(a1 + v16[23]) == *(a2 + v16[23]) && (sub_1BF4D1C7C(*(a1 + v16[24]), *(a2 + v16[24])) & 1) != 0 && *(a1 + v16[25]) == *(a2 + v16[25]) && (sub_1BF4D1D0C(*(a1 + v16[26]), *(a2 + v16[26])) & 1) != 0)
  {
    v49 = v16[27];
    v50 = *(a1 + v49);
    v51 = *(a2 + v49);
    if (v50)
    {
      if (v51)
      {
        sub_1BF3901C0(0, &unk_1EDC96320, 0x1E6994288);
        v52 = v51;
        v53 = v50;
        v54 = sub_1BF4E90A4();

        if (v54)
        {
          return 1;
        }
      }
    }

    else if (!v51)
    {
      return 1;
    }
  }

  return 0;
}