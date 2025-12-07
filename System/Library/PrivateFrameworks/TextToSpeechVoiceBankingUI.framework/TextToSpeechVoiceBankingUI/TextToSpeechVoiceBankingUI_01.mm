uint64_t sub_26EE21BE0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v3);
  (*(v5 + 16))(&v7 - v4);
  sub_26EF3AC9C();
  MEMORY[0x274382CF0]();
  swift_setAtWritableKeyPath();
  return sub_26EF3AC3C();
}

uint64_t objectdestroy_17Tm()
{
  v1 = *(v0 + 32);
  v2 = (sub_26EF3AC9C() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(*v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(*(v1 - 8) + 8))(v0 + v4 + v2[10], v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_26EE21E50(uint64_t a1)
{
  v3 = *(sub_26EF3AC9C() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26EE21BE0(a1, v1 + v4, v5);
}

uint64_t Binding.to<A, B>(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v28 = a3;
  v5 = *a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v6 + 16);
  v25(v8, v3, a2);
  v9 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v23 = v9;
  v10 = (v7 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  v12 = (v5 + *MEMORY[0x277D84308]);
  v13 = v12[1];
  *(v11 + 4) = v13;
  v24 = *v12;
  *(v11 + 5) = v24;
  v14 = *(v6 + 32);
  v22 = a2;
  v14(&v11[v9], v8, a2);
  v15 = v26;
  v16 = v27;
  *&v11[v10] = v27;
  v25(v8, v15, a2);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  v18 = v23;
  v19 = v24;
  *(v17 + 4) = v13;
  *(v17 + 5) = v19;
  v14(&v17[v18], v8, v22);
  *&v17[v10] = v16;
  sub_26EF3B5CC();
  swift_retain_n();
  return sub_26EF3AC7C();
}

{
  v25 = a1;
  v27 = a3;
  v5 = *a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v6 + 16);
  v23(v8, v3, a2);
  v9 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v21 = v9;
  v10 = (v7 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  v12 = (v5 + *MEMORY[0x277D84308]);
  v26 = v12[1];
  v22 = *(v26 + 16);
  *(v11 + 4) = v22;
  v13 = *v12;
  *(v11 + 5) = *v12;
  v14 = *(v6 + 32);
  v20 = a2;
  v14(&v11[v9], v8, a2);
  v15 = v24;
  v16 = v25;
  *&v11[v10] = v25;
  v23(v8, v15, a2);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  v18 = v21;
  *(v17 + 4) = v22;
  *(v17 + 5) = v13;
  v14(&v17[v18], v8, v20);
  *&v17[v10] = v16;
  swift_retain_n();
  return sub_26EF3AC7C();
}

uint64_t sub_26EE2212C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + *MEMORY[0x277D84308]);
  v5 = sub_26EF3B5CC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v7);
  v12 = &v16 - v11;
  v13 = sub_26EF3AC9C();
  MEMORY[0x274382CF0](v13);
  if ((*(v10 + 48))(v9, 1, v4) == 1)
  {
    (*(v6 + 8))(v9, v5);
    v14 = 1;
  }

  else
  {
    (*(v10 + 32))(v12, v9, v4);
    swift_getAtKeyPath();
    (*(v10 + 8))(v12, v4);
    v14 = 0;
  }

  return (*(*(*(v3 + *MEMORY[0x277D84308] + 8) - 8) + 56))(a2, v14, 1);
}

uint64_t sub_26EE22398(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = a2;
  v30 = a1;
  v26[1] = a3;
  v3 = (*a3 + *MEMORY[0x277D84308]);
  v4 = *v3;
  v5 = sub_26EF3B5CC();
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - v9;
  v11 = v3[1];
  v12 = sub_26EF3B5CC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v26 - v15;
  v17 = *(v11 - 8);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v26 - v21;
  (*(v13 + 16))(v16, v30, v12);
  if ((*(v17 + 48))(v16, 1, v11) == 1)
  {
    return (*(v13 + 8))(v16, v12);
  }

  (*(v17 + 32))(v22, v16, v11);
  v24 = v28;
  sub_26EF3AC9C();
  MEMORY[0x274382CF0]();
  if ((*(*(v4 - 8) + 48))(v10, 1, v4))
  {
    v25 = v27;
    (*(v27 + 16))(v8, v10, v24);
    sub_26EF3AC3C();
    (*(v17 + 8))(v22, v11);
    return (*(v25 + 8))(v10, v24);
  }

  else
  {
    (*(v17 + 16))(v20, v22, v11);
    swift_setAtWritableKeyPath();
    sub_26EF3AC3C();
    return (*(v17 + 8))(v22, v11);
  }
}

uint64_t sub_26EE22998@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + *MEMORY[0x277D84308]);
  v5 = sub_26EF3B5CC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v7);
  v12 = &v15 - v11;
  v13 = sub_26EF3AC9C();
  MEMORY[0x274382CF0](v13);
  if ((*(v10 + 48))(v9, 1, v4) == 1)
  {
    (*(v6 + 8))(v9, v5);
    return (*(*(*(*(v3 + *MEMORY[0x277D84308] + 8) + 16) - 8) + 56))(a2, 1, 1);
  }

  else
  {
    (*(v10 + 32))(v12, v9, v4);
    swift_getAtKeyPath();
    return (*(v10 + 8))(v12, v4);
  }
}

uint64_t sub_26EE22C00(uint64_t (*a1)(unint64_t, uint64_t))
{
  sub_26EF3B5CC();
  v2 = *(sub_26EF3AC9C() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_26EE22CC0(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = a1;
  v3 = *(*a3 + *MEMORY[0x277D84308] + 8);
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v16 - v4;
  v7 = *v6;
  v8 = sub_26EF3B5CC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v16 - v13;
  sub_26EF3AC9C();
  MEMORY[0x274382CF0]();
  if ((*(*(v7 - 8) + 48))(v14, 1, v7))
  {
    (*(v9 + 16))(v12, v14, v8);
    sub_26EF3AC3C();
    return (*(v9 + 8))(v14, v8);
  }

  else
  {
    (*(v16 + 16))(v5, v17, v3);
    swift_setAtWritableKeyPath();
    return sub_26EF3AC3C();
  }
}

uint64_t Binding.to<A>(_:defaultValue:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_26EF3AC9C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  Binding.to<A>(_:)(a1, a3, &v13 - v10);
  Binding.unwrapped<A>(_:)(a2, v8, a4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t Binding.to<A, B>(_:withInitializer:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a2;
  v23 = a5;
  v8 = *a1;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v13, v12);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = (v8 + *MEMORY[0x277D84308]);
  *(v16 + 16) = *v17;
  *(v16 + 24) = v17[1];
  (*(v9 + 32))(v16 + v14, v11, a4);
  v18 = (v16 + v15);
  *v18 = v22;
  v18[1] = a3;
  *(v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v19 = sub_26EF3B5CC();
  swift_retain_n();

  Binding.mapped<A>(_:set:)(sub_26EE234D0, a1, sub_26EE23A44, v16, a4, v19, v23);
}

uint64_t sub_26EE23274@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(*a2 + *MEMORY[0x277D84308]);
  v7 = sub_26EF3B5CC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  v12 = *(v6 - 8);
  MEMORY[0x28223BE20](v9);
  v14 = &v17 - v13;
  (*(v8 + 16))(v11, a1, v7);
  if ((*(v12 + 48))(v11, 1, v6) == 1)
  {
    (*(v8 + 8))(v11, v7);
    v15 = 1;
  }

  else
  {
    (*(v12 + 32))(v14, v11, v6);
    swift_getAtKeyPath();
    (*(v12 + 8))(v14, v6);
    v15 = 0;
  }

  return (*(*(*(v5 + *MEMORY[0x277D84308] + 8) - 8) + 56))(a3, v15, 1);
}

uint64_t sub_26EE234D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a4;
  v31 = a3;
  v32 = a5;
  v33 = a2;
  v35 = a6;
  v7 = (*a5 + *MEMORY[0x277D84308]);
  v8 = *v7;
  v34 = sub_26EF3B5CC();
  v29 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v10 = &v28 - v9;
  v11 = v7[1];
  v12 = sub_26EF3B5CC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v17 = *(v11 - 8);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  (*(v13 + 16))(v16, a1, v12);
  if ((*(v17 + 48))(v16, 1, v11) == 1)
  {
    (*(v13 + 8))(v16, v12);
    return (*(*(v8 - 8) + 56))(v35, 1, 1, v8);
  }

  else
  {
    v24 = v35;
    (*(v17 + 32))(v22, v16, v11);
    v25 = v34;
    v26 = sub_26EF3AC9C();
    MEMORY[0x274382CF0](v26);
    v27 = *(v8 - 8);
    if ((*(v27 + 48))(v10, 1, v8) == 1)
    {
      (*(v29 + 8))(v10, v25);
      v31(v22);
      return (*(v17 + 8))(v22, v11);
    }

    else
    {
      (*(v27 + 32))(v24, v10, v8);
      (*(v17 + 16))(v20, v22, v11);
      swift_setAtWritableKeyPath();
      (*(v17 + 8))(v22, v11);
      return (*(v27 + 56))(v24, 0, 1, v8);
    }
  }
}

uint64_t sub_26EE238E4()
{
  v1 = *(v0 + 16);
  sub_26EF3B5CC();
  v2 = (sub_26EF3AC9C() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*v2 + 64);

  v6 = v2[10];
  v7 = *(v1 - 8);
  if (!(*(v7 + 48))(v0 + v4 + v6, 1, v1))
  {
    (*(v7 + 8))(v0 + v4 + v6, v1);
  }

  return MEMORY[0x2821FE8E8](v0, ((((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_26EE23A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26EF3B5CC();
  v5 = *(sub_26EF3AC9C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v2 + v7;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v2 + v8);

  return sub_26EE234D8(a1, v2 + v6, v10, v11, v12, a2);
}

uint64_t Binding.to<A, B>(_:defaultValue:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v40 = a1;
  v41 = a3;
  v4 = *a1;
  v36 = v3;
  v37 = v4;
  v5 = *(*(v4 + *MEMORY[0x277D84308] + 8) + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v31 - v9;
  v34 = &v31 - v9;
  v42 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v8);
  v38 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  v35 = *(v12 + 16);
  v35(&v31 - v15, v3);
  v17 = v5;
  (*(v6 + 16))(v10, v39, v5);
  v18 = *(v12 + 80);
  v19 = (v18 + 48) & ~v18;
  v39 = v19 + v13;
  v32 = v19;
  v33 = v18 | 7;
  v20 = (v19 + v13 + *(v6 + 80)) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = v17;
  v37 = *(v37 + *MEMORY[0x277D84308]);
  *(v21 + 5) = v37;
  v22 = *(v12 + 32);
  v23 = v16;
  v24 = v42;
  v22(&v21[v19], v23, v42);
  (*(v6 + 32))(&v21[v20], v34, v17);
  v25 = v40;
  *&v21[(v7 + v20 + 7) & 0xFFFFFFFFFFFFFFF8] = v40;
  v26 = v38;
  (v35)(v38, v36, v24);
  v27 = (v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  v29 = v37;
  *(v28 + 4) = v17;
  *(v28 + 5) = v29;
  v22(&v28[v32], v26, v42);
  *&v28[v27] = v25;
  swift_retain_n();
  return sub_26EF3AC7C();
}

uint64_t sub_26EE23E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a2;
  v26 = a4;
  v4 = *(*a3 + *MEMORY[0x277D84308] + 8);
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v23 - v5;
  v8 = *v7;
  v9 = sub_26EF3B5CC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v14 = *(v8 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v23 - v15;
  v17 = sub_26EF3AC9C();
  MEMORY[0x274382CF0](v17);
  if ((*(v14 + 48))(v13, 1, v8) == 1)
  {
    (*(v10 + 8))(v13, v9);
    return (*(*(*(v4 + 16) - 8) + 16))(v26, v25);
  }

  else
  {
    v19 = v26;
    (*(v14 + 32))(v16, v13, v8);
    swift_getAtKeyPath();
    (*(v14 + 8))(v16, v8);
    v20 = *(v4 + 16);
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    if (v22(v6, 1, v20) == 1)
    {
      (*(v21 + 16))(v19, v25, v20);
      result = v22(v6, 1, v20);
      if (result != 1)
      {
        return (*(v24 + 8))(v6, v4);
      }
    }

    else
    {
      return (*(v21 + 32))(v19, v6, v20);
    }
  }

  return result;
}

uint64_t sub_26EE241C4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_26EF3B5CC();
  v3 = (sub_26EF3AC9C() - 8);
  v4 = *(*v3 + 80);
  v14 = *(*v3 + 64);
  v15 = v1;
  v5 = (v4 + 48) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  swift_unknownObjectRelease();

  v9 = v3[10];
  v10 = *(v2 - 8);
  if (!(*(v10 + 48))(v0 + v5 + v9, 1, v2))
  {
    (*(v10 + 8))(v0 + v5 + v9, v2);
  }

  v11 = (v5 + v14 + v7) & ~v7;
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v6 + 8))(v0 + v11, v15);

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v4 | v7 | 7);
}

uint64_t sub_26EE2439C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  sub_26EF3B5CC();
  v4 = *(sub_26EF3AC9C() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v3 - 8);
  v7 = (v5 + *(v4 + 64) + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26EE23E50(v1 + v5, v1 + v7, v8, a1);
}

uint64_t sub_26EE244A0(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = a1;
  v3 = *a3;
  v25 = a3;
  v23 = *(v3 + *MEMORY[0x277D84308] + 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v22 - v4;
  v7 = *v6;
  v8 = sub_26EF3B5CC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v22 - v14;
  v16 = *(v7 - 8);
  MEMORY[0x28223BE20](v13);
  v18 = &v22 - v17;
  sub_26EF3AC9C();
  MEMORY[0x274382CF0]();
  if ((*(v16 + 48))(v15, 1, v7) == 1)
  {
    return (*(v9 + 8))(v15, v8);
  }

  (*(v16 + 32))(v18, v15, v7);
  v20 = *(v23 + 16);
  v21 = *(v20 - 8);
  (*(v21 + 16))(v5, v24, v20);
  (*(v21 + 56))(v5, 0, 1, v20);
  swift_setAtWritableKeyPath();
  (*(v16 + 16))(v12, v18, v7);
  (*(v16 + 56))(v12, 0, 1, v7);
  sub_26EF3AC3C();
  return (*(v16 + 8))(v18, v7);
}

uint64_t objectdestroy_23Tm()
{
  v1 = *(v0 + 40);
  sub_26EF3B5CC();
  v2 = (sub_26EF3AC9C() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(*v2 + 64);
  swift_unknownObjectRelease();

  v6 = v2[10];
  v7 = *(v1 - 8);
  if (!(*(v7 + 48))(v0 + v4 + v6, 1, v1))
  {
    (*(v7 + 8))(v0 + v4 + v6, v1);
  }

  return MEMORY[0x2821FE8E8](v0, ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_26EE24938(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  sub_26EF3B5CC();
  v4 = *(sub_26EF3AC9C() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v6);
}

uint64_t sub_26EE24A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  sub_26EF3AAEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E40, &qword_26EF44670);
  result = sub_26EF3AAEC();
  if (__OFADD__(a6, 3))
  {
    __break(1u);
  }

  else
  {
    *a9 = a1;
    *(a9 + 8) = a2;
    *(a9 + 16) = a3;
    *(a9 + 24) = a4;
    *(a9 + 32) = a5 & 1;
    *(a9 + 40) = a6 + 3;
    *(a9 + 48) = a7;
    *(a9 + 56) = a8;
    *(a9 + 64) = a10;
    *(a9 + 72) = a11;
    *(a9 + 80) = v21;
    *(a9 + 88) = v22;
    *(a9 + 96) = v21;
    *(a9 + 104) = v22;
    *(a9 + 112) = v23;
  }

  return result;
}

double sub_26EE24B20@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v50 = sub_26EF3A08C();
  MEMORY[0x28223BE20](v50);
  v52 = sub_26EF3971C();
  v53 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E48, &unk_26EF3D5B0);
  v56 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v6 = &v49 - v5;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E50, &qword_26EF43DE0);
  v59 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v8 = &v49 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E58, &qword_26EF3D5C0);
  v57 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v10 = &v49 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E60, &qword_26EF3D5C8);
  v62 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v51 = &v49 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E68, &qword_26EF3D5D0);
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v60 = &v49 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E70, &qword_26EF3D5D8);
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v49 - v13;
  sub_26EF3A37C();
  v69 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E78, &qword_26EF3D5E0);
  sub_26EE154C8(&qword_2806C6E80, &qword_2806C6E78, &qword_26EF3D5E0, MEMORY[0x277CE1138]);
  sub_26EF3969C();
  sub_26EF3A24C();
  sub_26EF396FC();
  v14 = swift_allocObject();
  v15 = *(v2 + 80);
  *(v14 + 80) = *(v2 + 64);
  *(v14 + 96) = v15;
  *(v14 + 112) = *(v2 + 96);
  *(v14 + 128) = *(v2 + 112);
  v16 = *(v2 + 16);
  *(v14 + 16) = *v2;
  *(v14 + 32) = v16;
  v17 = *(v2 + 48);
  *(v14 + 48) = *(v2 + 32);
  *(v14 + 64) = v17;
  sub_26EE25C0C(v2, v73);
  sub_26EE27D38(&qword_2806C6E88, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
  sub_26EE27D38(&qword_2806C6E90, MEMORY[0x277CDD708], MEMORY[0x277CDD710]);
  v18 = v52;
  sub_26EF3AD1C();

  (*(v53 + 8))(v4, v18);
  v19 = swift_allocObject();
  v20 = *(v2 + 80);
  *(v19 + 80) = *(v2 + 64);
  *(v19 + 96) = v20;
  *(v19 + 112) = *(v2 + 96);
  *(v19 + 128) = *(v2 + 112);
  v21 = *(v2 + 16);
  *(v19 + 16) = *v2;
  *(v19 + 32) = v21;
  v22 = *(v2 + 48);
  *(v19 + 48) = *(v2 + 32);
  *(v19 + 64) = v22;
  sub_26EE25C0C(v2, v73);
  sub_26EE154C8(&qword_2806C6E98, &qword_2806C6E48, &unk_26EF3D5B0, MEMORY[0x277CDFB18]);
  v23 = v55;
  sub_26EF3AD0C();

  (*(v56 + 8))(v6, v23);
  sub_26EF3974C();
  v24 = sub_26EE154C8(&qword_2806C6EA0, &qword_2806C6E58, &qword_26EF3D5C0, MEMORY[0x277CDD6E0]);
  v25 = sub_26EE154C8(&qword_2806C6EA8, &qword_2806C6E50, &qword_26EF43DE0, MEMORY[0x277CDF728]);
  v26 = v51;
  v27 = v54;
  v28 = v58;
  sub_26EF3A8DC();
  (*(v59 + 8))(v8, v28);
  (*(v57 + 8))(v10, v27);
  *v73 = *(v2 + 8);
  *&v73[9] = *(v2 + 17);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E38, &unk_26EF3D5A0);
  MEMORY[0x274382CF0](&v70, v29);
  v30 = swift_allocObject();
  v31 = *(v2 + 80);
  *(v30 + 80) = *(v2 + 64);
  *(v30 + 96) = v31;
  *(v30 + 112) = *(v2 + 96);
  *(v30 + 128) = *(v2 + 112);
  v32 = *(v2 + 16);
  *(v30 + 16) = *v2;
  *(v30 + 32) = v32;
  v33 = *(v2 + 48);
  *(v30 + 48) = *(v2 + 32);
  *(v30 + 64) = v33;
  sub_26EE25C0C(v2, v73);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E40, &qword_26EF44670);
  *v73 = v27;
  *&v73[8] = v28;
  *&v73[16] = v24;
  *&v73[24] = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = sub_26EE25D44();
  v37 = v60;
  v38 = v61;
  sub_26EF3A8FC();

  (*(v62 + 8))(v26, v38);
  v70 = *(v2 + 96);
  v71 = *(v2 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6EB8, &qword_26EF3D5E8);
  sub_26EF3AB1C();
  v70 = *v73;
  v71 = *&v73[16];
  v72 = v73[24];
  sub_26EF3AF2C();
  *v73 = v38;
  *&v73[8] = v34;
  *&v73[16] = OpaqueTypeConformance2;
  *&v73[24] = v36;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = MEMORY[0x277D83B88];
  v41 = MEMORY[0x277D83B98];
  v42 = v63;
  v43 = v64;
  sub_26EF3A71C();

  (*(v65 + 8))(v37, v43);
  *v73 = v43;
  *&v73[8] = v40;
  *&v73[16] = v39;
  *&v73[24] = v41;
  swift_getOpaqueTypeConformance2();
  v44 = v68;
  v45 = v66;
  sub_26EF3A70C();
  (*(v67 + 8))(v42, v45);
  sub_26EF3AE4C();
  sub_26EF3984C();
  v46 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6EC0, qword_26EF3D5F0) + 36));
  v47 = *&v73[16];
  *v46 = *v73;
  v46[1] = v47;
  result = *&v74;
  v46[2] = v74;
  return result;
}

uint64_t sub_26EE25614@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  *a2 = sub_26EF39E4C();
  *(a2 + 8) = 0x4039000000000000;
  *(a2 + 16) = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F90, &unk_26EF3D838);
  if (__OFADD__(*v4, 3))
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = *v4 + 6;
  if (__OFADD__(*v4 + 3, 3))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v16 = v6;
    swift_getKeyPath();
    v7 = swift_allocObject();
    v8 = *(v4 + 48);
    v10 = *v4;
    v9 = *(v4 + 16);
    *(v7 + 48) = *(v4 + 32);
    *(v7 + 64) = v8;
    *(v7 + 16) = v10;
    *(v7 + 32) = v9;
    v12 = *(v4 + 80);
    v11 = *(v4 + 96);
    v13 = *(v4 + 64);
    *(v7 + 128) = *(v4 + 112);
    *(v7 + 96) = v12;
    *(v7 + 112) = v11;
    *(v7 + 80) = v13;
    sub_26EE25C0C(v4, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F98, &qword_26EF3D860);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6FA0, &qword_26EF3D868);
    sub_26EE275F0();
    sub_26EE276D0();
    return sub_26EF3ACEC();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_26EE25780@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6FF8, &qword_26EF3D888);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7000, &unk_26EF3D890);
  result = MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = *a2 + 3;
  if (__OFADD__(*a2, 3))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (__OFADD__(v14, 3))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*a2 + 6 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = *a1;
  if (*a1 < 3 || v15 >= v14)
  {
    sub_26EF3AE4C();
    sub_26EF3984C();
    v17 = BYTE8(v35);
    v18 = v36;
    v19 = v37;
    *v13 = v35;
    v13[8] = v17;
    *(v13 + 2) = v18;
    v13[24] = v19;
    *(v13 + 2) = v38;
    *(v13 + 6) = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6FD8, &qword_26EF3D878);
    v20 = sub_26EE2780C();
    v23 = sub_26EE2799C(v20, v21, v22);
    v39 = &type metadata for SymbolView;
    v40 = v23;
    swift_getOpaqueTypeConformance2();
    sub_26EF3A06C();
LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v35 = *(a2 + 96);
  v36 = *(a2 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6EB8, &qword_26EF3D5E8);
  result = sub_26EF3AAFC();
  if (v40)
  {
    v16 = 1;
LABEL_12:
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6FC8, &qword_26EF3D870);
    return (*(*(v34 - 8) + 56))(a3, v16, 1, v34);
  }

  if (!__OFSUB__(v14, 1))
  {
    v24 = v39;
    v25 = *(a2 + 40);
    v39 = 0x4042800000000000;
    v40 = v15;
    v41 = v24;
    v42 = v25;
    v43 = v14 - 1;
    v26 = swift_allocObject();
    *(v26 + 16) = v15;
    *(v26 + 24) = v24;
    v27 = *(a2 + 80);
    *(v26 + 96) = *(a2 + 64);
    *(v26 + 112) = v27;
    *(v26 + 128) = *(a2 + 96);
    *(v26 + 144) = *(a2 + 112);
    v28 = *(a2 + 16);
    *(v26 + 32) = *a2;
    *(v26 + 48) = v28;
    v29 = *(a2 + 48);
    *(v26 + 64) = *(a2 + 32);
    *(v26 + 80) = v29;
    v30 = sub_26EE25C0C(a2, &v35);
    v33 = sub_26EE2799C(v30, v31, v32);
    sub_26EF3A6CC();

    (*(v7 + 16))(v13, v9, v6);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6FD8, &qword_26EF3D878);
    sub_26EE2780C();
    *&v35 = &type metadata for SymbolView;
    *(&v35 + 1) = v33;
    swift_getOpaqueTypeConformance2();
    sub_26EF3A06C();
    (*(v7 + 8))(v9, v6);
    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_26EE25BAC()
{
  sub_26EF3970C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F88, &qword_26EF3D830);
  return sub_26EF3AB0C();
}

uint64_t sub_26EE25C44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F88, &qword_26EF3D830);
  v1 = sub_26EF3AAFC();
  v2.n128_f64[0] = v5;
  v3 = 48;
  if (v5 < 0.0)
  {
    v3 = 64;
  }

  return (*(v0 + 16 + v3))(v1, v2);
}

uint64_t sub_26EE25CC4(uint64_t a1, uint64_t a2)
{
  sub_26EF3AEAC();
  sub_26EF3992C();
}

unint64_t sub_26EE25D44()
{
  result = qword_2806C6EB0;
  if (!qword_2806C6EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6E40, &qword_26EF44670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6EB0);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_26EE25E5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_26EE25EA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26EE25F14()
{
  result = qword_2806C6EC8;
  if (!qword_2806C6EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6EC0, qword_26EF3D5F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6E70, &qword_26EF3D5D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6E68, &qword_26EF3D5D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6E60, &qword_26EF3D5C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6E40, &qword_26EF44670);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6E58, &qword_26EF3D5C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6E50, &qword_26EF43DE0);
    sub_26EE154C8(&qword_2806C6EA0, &qword_2806C6E58, &qword_26EF3D5C0, MEMORY[0x277CDD6E0]);
    sub_26EE154C8(&qword_2806C6EA8, &qword_2806C6E50, &qword_26EF43DE0, MEMORY[0x277CDF728]);
    swift_getOpaqueTypeConformance2();
    sub_26EE25D44();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6EC8);
  }

  return result;
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

uint64_t sub_26EE26178(uint64_t a1, int a2)
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

uint64_t sub_26EE26198(uint64_t result, int a2, int a3)
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

uint64_t sub_26EE261F8@<X0>(uint64_t a1@<X8>)
{
  v98 = a1;
  v97 = sub_26EF39F4C();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v92 = &v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26EF3AF6C();
  v108 = *(v3 - 8);
  v109 = v3;
  MEMORY[0x28223BE20](v3);
  v104 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_26EF3AF4C();
  v107 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v102 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6ED0, &qword_26EF3D720);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v87 - v7;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6ED8, &qword_26EF3D728);
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v10 = &v87 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6EE0, &qword_26EF3D730);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v101 = &v87 - v13;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6EE8, &qword_26EF3D738);
  MEMORY[0x28223BE20](v110);
  v111 = &v87 - v14;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6EF0, &qword_26EF3D740);
  MEMORY[0x28223BE20](v100);
  v112 = &v87 - v15;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6EF8, &qword_26EF3D748);
  MEMORY[0x28223BE20](v99);
  v115 = &v87 - v16;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F00, &qword_26EF3D750);
  v17 = MEMORY[0x28223BE20](v90);
  v113 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v89 = &v87 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v91 = &v87 - v22;
  MEMORY[0x28223BE20](v21);
  v94 = &v87 - v23;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F08, &qword_26EF3D758);
  MEMORY[0x28223BE20](v93);
  v95 = &v87 - v24;
  v25 = *(v1 + 8);
  v26 = *(v1 + 24);
  v27 = sub_26EF3AA8C();
  v114 = v1;
  v28 = sub_26EF3A45C();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
  v29 = sub_26EF3A4AC();
  sub_26EE26FE8(v8);
  KeyPath = swift_getKeyPath();
  *&v118 = v27;
  *(&v118 + 1) = KeyPath;
  *&v119 = v29;
  sub_26EF3A49C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F10, &unk_26EF3D790);
  sub_26EE27194();
  v31 = v25;
  sub_26EF3A64C();

  v32 = v101;

  v33 = v102;
  sub_26EF3AF3C();
  v34 = v104;
  sub_26EF3AF5C();
  v35 = (v32 + *(v12 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F30, &qword_26EF3D7A0);
  sub_26EE27D38(&qword_2806C6F38, MEMORY[0x277CE1598], MEMORY[0x277CE1590]);
  v36 = v106;
  sub_26EF39BCC();
  (*(v108 + 8))(v34, v109);
  (*(v107 + 8))(v33, v36);
  *v35 = swift_getKeyPath();
  (*(v103 + 32))(v32, v10, v105);
  if (v25 == v26)
  {
    v37 = objc_opt_self();
    v38 = &selRef_systemBlueColor;
    v40 = v113;
    v39 = v114;
    v41 = v111;
    v42 = v112;
  }

  else
  {
    v42 = v112;
    v40 = v113;
    v41 = v111;
    if (v25 >= v26)
    {
      v39 = v114;
      v43 = *(v114 + 16);
      if (v25 == v43)
      {
        v37 = objc_opt_self();
        v38 = &selRef_systemBlueColor;
      }

      else
      {
        v37 = objc_opt_self();
        v38 = &selRef_systemGrayColor;
        if (v25 < v43)
        {
          v38 = &selRef_systemGreenColor;
        }
      }
    }

    else
    {
      v37 = objc_opt_self();
      v38 = &selRef_systemGreenColor;
      v39 = v114;
    }
  }

  v44 = [v37 *v38];
  v45 = sub_26EF3AA5C();
  result = sub_26EE14D98(v32, v41, &qword_2806C6EE0, &qword_26EF3D730);
  *(v41 + *(v110 + 36)) = v45;
  v47 = *(v39 + 16);
  v48 = v47 - v25;
  if (__OFSUB__(v47, v31))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v48 < 0)
  {
    v49 = v31 - v47;
    if (!__OFSUB__(0, v48))
    {
      goto LABEL_14;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v49 = v47 - v31;
  if (!v48)
  {
    v50 = 1.0;
    goto LABEL_17;
  }

LABEL_14:
  if (v49 == 1)
  {
    v50 = 0.675;
  }

  else
  {
    v50 = 0.375;
  }

LABEL_17:
  sub_26EF3AF2C();
  v52 = v51;
  v54 = v53;
  result = sub_26EE14D98(v41, v42, &qword_2806C6EE8, &qword_26EF3D738);
  v55 = v42 + *(v100 + 36);
  *v55 = v50;
  *(v55 + 8) = v50;
  *(v55 + 16) = v52;
  *(v55 + 24) = v54;
  if (v48 < 0 && __OFSUB__(0, v48))
  {
    goto LABEL_38;
  }

  CGSizeMake();
  sub_26EF3AE4C();
  sub_26EF3984C();
  v56 = v115;
  result = sub_26EE14D98(v42, v115, &qword_2806C6EF0, &qword_26EF3D740);
  v57 = (v56 + *(v99 + 36));
  v58 = v119;
  *v57 = v118;
  v57[1] = v58;
  v57[2] = v120;
  v59 = *(v39 + 32);
  if ((v31 != v59 || v26 != v59 || v47 != v59) && v48 < 0 && __OFSUB__(0, v48))
  {
    goto LABEL_39;
  }

  sub_26EE278C4(&qword_2806C6F40, &qword_2806C6EF8, &qword_26EF3D748, sub_26EE2724C);
  v60 = v115;
  sub_26EF3A7BC();
  result = sub_26EE14578(v60, &qword_2806C6EF8, &qword_26EF3D748);
  v88 = v31;
  v87 = v26;
  if (v31 == v26 && v31 == v59 && v47 == v31)
  {
    goto LABEL_27;
  }

  if ((v48 & 0x8000000000000000) == 0 || (v70 = __OFSUB__(0, v48), v48 = v31 - v47, !v70))
  {
    if (v48 != 1)
    {
      countAndFlagsBits = 0;
      v69 = 0xE000000000000000;
      goto LABEL_35;
    }

    if (v31 < v47)
    {
      v71 = sub_26EE17094();
      v66 = 0xD000000000000012;
      v64 = 0x800000026EF45370;
      v65 = v71 & 1;
      goto LABEL_28;
    }

LABEL_27:
    v63 = sub_26EE17094();
    v64 = 0xEE00455341524850;
    v65 = v63 & 1;
    v66 = 0x5F5458454E5F4256;
LABEL_28:
    v68 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(*&v66, v65, 0);
    object = v68._object;
    countAndFlagsBits = v68._countAndFlagsBits;
    v69 = v68._object;
LABEL_35:
    v72 = v89;
    v116 = countAndFlagsBits;
    v117 = v69;
    sub_26EE12538(countAndFlagsBits, object, v62);
    sub_26EF39A5C();

    sub_26EE14578(v40, &qword_2806C6F00, &qword_26EF3D750);
    v73 = v92;
    sub_26EF39F3C();
    v74 = v91;
    sub_26EF39A8C();
    v75 = *(v96 + 8);
    v76 = v97;
    v75(v73, v97);
    sub_26EE14578(v72, &qword_2806C6F00, &qword_26EF3D750);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6AB0, &unk_26EF3D7E0);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_26EF3D070;
    sub_26EF39F2C();
    sub_26EF39EDC();
    v116 = v77;
    sub_26EE27D38(&qword_2806C6AB8, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6AC0, qword_26EF3D0B0);
    sub_26EE154C8(&qword_2806C6AC8, &qword_2806C6AC0, qword_26EF3D0B0, MEMORY[0x277D83970]);
    sub_26EF3B68C();
    v78 = v94;
    sub_26EF39A9C();
    v75(v73, v76);
    sub_26EE14578(v74, &qword_2806C6F00, &qword_26EF3D750);
    v79 = v87 < v88;
    v80 = swift_getKeyPath();
    v81 = swift_allocObject();
    *(v81 + 16) = v79;
    v82 = v95;
    sub_26EE14D98(v78, v95, &qword_2806C6F00, &qword_26EF3D750);
    v83 = (v82 + *(v93 + 36));
    *v83 = v80;
    v83[1] = sub_26EE274EC;
    v83[2] = v81;
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F78, &qword_26EF3D820);
    v85 = v98;
    v86 = (v98 + *(v84 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F80, &qword_26EF3D828);
    sub_26EF39BBC();
    *v86 = 0;
    return sub_26EE14D98(v82, v85, &qword_2806C6F08, &qword_26EF3D758);
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_26EE26FE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6ED0, &qword_26EF3D720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EE27074(uint64_t a1)
{
  v2 = sub_26EF39BDC();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_26EF39CEC();
}

uint64_t sub_26EE2713C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26EF39D1C();
  *a1 = result;
  return result;
}

unint64_t sub_26EE27194()
{
  result = qword_2806C6F18;
  if (!qword_2806C6F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6F10, &unk_26EF3D790);
    sub_26EE154C8(&qword_2806C6F20, &qword_2806C6F28, &qword_26EF42670, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6F18);
  }

  return result;
}

unint64_t sub_26EE2724C()
{
  result = qword_2806C6F48;
  if (!qword_2806C6F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6EF0, &qword_26EF3D740);
    sub_26EE272D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6F48);
  }

  return result;
}

unint64_t sub_26EE272D8()
{
  result = qword_2806C6F50;
  if (!qword_2806C6F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6EE8, &qword_26EF3D738);
    sub_26EE27390();
    sub_26EE154C8(&qword_2806C6F68, &qword_2806C6F70, &qword_26EF3FF20, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6F50);
  }

  return result;
}

unint64_t sub_26EE27390()
{
  result = qword_2806C6F58;
  if (!qword_2806C6F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6EE0, &qword_26EF3D730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6F10, &unk_26EF3D790);
    sub_26EE27194();
    swift_getOpaqueTypeConformance2();
    sub_26EE154C8(&qword_2806C6F60, &qword_2806C6F30, &qword_26EF3D7A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6F58);
  }

  return result;
}

uint64_t sub_26EE27484@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26EF39D8C();
  *a1 = result & 1;
  return result;
}

void sub_26EE27504()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    if (__OFADD__(*(v0 + 16), 3))
    {
      __break(1u);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6EB8, &qword_26EF3D5E8);
      sub_26EF3AB0C();
    }
  }
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

unint64_t sub_26EE275F0()
{
  result = qword_2806C6FA8;
  if (!qword_2806C6FA8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6F98, &qword_26EF3D860);
    sub_26EE2767C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6FA8);
  }

  return result;
}

unint64_t sub_26EE2767C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C6FB0;
  if (!qword_2806C6FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6FB0);
  }

  return result;
}

unint64_t sub_26EE276D0()
{
  result = qword_2806C6FB8;
  if (!qword_2806C6FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6FA0, &qword_26EF3D868);
    sub_26EE27754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6FB8);
  }

  return result;
}

unint64_t sub_26EE27754()
{
  result = qword_2806C6FC0;
  if (!qword_2806C6FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6FC8, &qword_26EF3D870);
    v1 = sub_26EE2780C();
    sub_26EE2799C(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6FC0);
  }

  return result;
}

unint64_t sub_26EE2780C()
{
  result = qword_2806C6FD0;
  if (!qword_2806C6FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6FD8, &qword_26EF3D878);
    sub_26EE278C4(&qword_2806C6FE0, &qword_2806C6FE8, &qword_26EF3D880, sub_26EE27948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6FD0);
  }

  return result;
}

uint64_t sub_26EE278C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_26EE27948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C6FF0;
  if (!qword_2806C6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C6FF0);
  }

  return result;
}

unint64_t sub_26EE2799C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806CACC0;
  if (!qword_2806CACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CACC0);
  }

  return result;
}

uint64_t sub_26EE279F0()
{

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_26EE27A50()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0 + 4;
  if (v1 < v2)
  {
    v4 = 6;
    return (v3[v4])();
  }

  if (v2 < v1)
  {
    goto LABEL_4;
  }

  if (__OFADD__(*v3, 3))
  {
    __break(1u);
    return result;
  }

  if (*v3 + 2 == v1 && v1 == v2 && v0[9] == v1)
  {
LABEL_4:
    v4 = 8;
    return (v3[v4])();
  }

  return result;
}

unint64_t sub_26EE27AE0()
{
  result = qword_2806C7008;
  if (!qword_2806C7008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6F78, &qword_26EF3D820);
    sub_26EE27B98();
    sub_26EE154C8(&qword_2806C7030, &qword_2806C6F80, &qword_26EF3D828, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7008);
  }

  return result;
}

unint64_t sub_26EE27B98()
{
  result = qword_2806C7010;
  if (!qword_2806C7010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6F08, &qword_26EF3D758);
    sub_26EE27C50();
    sub_26EE154C8(&qword_2806C7020, &qword_2806C7028, &unk_26EF3F090, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7010);
  }

  return result;
}

unint64_t sub_26EE27C50()
{
  result = qword_2806C7018;
  if (!qword_2806C7018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6F00, &qword_26EF3D750);
    sub_26EE278C4(&qword_2806C6F40, &qword_2806C6EF8, &qword_26EF3D748, sub_26EE2724C);
    sub_26EE27D38(&qword_2806C6AD8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7018);
  }

  return result;
}

uint64_t sub_26EE27D38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26EE27E58(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_26EF3883C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_26EF3882C();
}

uint64_t sub_26EE27EF4(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_26EF3883C();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_26EE27F6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_26EF3883C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

Swift::String __swiftcall TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(Swift::String _, Swift::Bool specializeForCurrentDeviceType, Swift::String_optional localeID)
{
  object = localeID.value._object;
  v5 = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  Type = AXDeviceGetType();
  v38 = specializeForCurrentDeviceType;
  if (Type == 3)
  {
    v39 = countAndFlagsBits;
    v40 = v5;

    v8 = 0x444150495FLL;
    v9 = 0xE500000000000000;
  }

  else
  {
    v39 = countAndFlagsBits;
    v40 = v5;
    if (Type == 1)
    {

      v8 = 0x454E4F4850495FLL;
      v9 = 0xE700000000000000;
    }

    else
    {

      v8 = 1128353119;
      v9 = 0xE400000000000000;
    }
  }

  MEMORY[0x274383240](v8, v9);
  if (!object)
  {
    v21 = sub_26EF3B0BC();
    v17 = [objc_opt_self() bundleWithIdentifier_];

    if (v17)
    {
      v18 = sub_26EF37CFC();
      v20 = v22;
      goto LABEL_12;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = sub_26EF3B0BC();
  v11 = sub_26EF3B0BC();
  v12 = sub_26EF3B0BC();
  v13 = [objc_opt_self() bundleWithIdentifier_];

  if (!v13)
  {
    __break(1u);
    goto LABEL_24;
  }

  v16 = sub_26EF3B0BC();
  v17 = AXNSLocalizedStringForLocale();

  if (!v17)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = sub_26EF3B0FC();
  v20 = v19;
LABEL_12:

  if (!v38 && (v18 == v39 && v20 == v40 || (sub_26EF3B82C() & 1) != 0))
  {
    if (!object)
    {
      v32 = sub_26EF3B0BC();
      v33 = [objc_opt_self() bundleWithIdentifier_];

      if (v33)
      {

        v34 = sub_26EF37CFC();
        v36 = v35;

        v14 = v34;
        v15 = v36;
        goto LABEL_29;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v23 = sub_26EF3B0BC();
    v24 = sub_26EF3B0BC();
    v25 = sub_26EF3B0BC();
    v26 = [objc_opt_self() bundleWithIdentifier_];

    if (v26)
    {
      v27 = sub_26EF3B0BC();
      v28 = AXNSLocalizedStringForLocale();

      if (v28)
      {

        v29 = sub_26EF3B0FC();
        v31 = v30;

        v14 = v29;
        v15 = v31;
        goto LABEL_29;
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v14 = v18;
  v15 = v20;
LABEL_29:
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

Swift::String __swiftcall TTSCSUILocString(_:specializeForCurrentDeviceType:)(Swift::String _, Swift::Bool specializeForCurrentDeviceType)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  Type = AXDeviceGetType();
  if (Type == 3)
  {
    v23 = countAndFlagsBits;
    v24 = object;

    v6 = 0x444150495FLL;
    v7 = 0xE500000000000000;
  }

  else
  {
    v23 = countAndFlagsBits;
    v24 = object;
    if (Type == 1)
    {

      v6 = 0x454E4F4850495FLL;
      v7 = 0xE700000000000000;
    }

    else
    {

      v6 = 1128353119;
      v7 = 0xE400000000000000;
    }
  }

  MEMORY[0x274383240](v6, v7);
  v8 = sub_26EF3B0BC();
  v9 = objc_opt_self();
  v10 = [v9 bundleWithIdentifier_];

  if (!v10)
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = sub_26EF37CFC();
  v15 = v14;

  if (!specializeForCurrentDeviceType)
  {
    if (v13 == v23 && v15 == v24)
    {
    }

    else
    {
      v16 = sub_26EF3B82C();

      if ((v16 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v17 = sub_26EF3B0BC();
    v18 = [v9 bundleWithIdentifier_];

    if (v18)
    {
      v19 = sub_26EF37CFC();
      v21 = v20;

      v11 = v19;
      v12 = v21;
      goto LABEL_18;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_9:
  v11 = v13;
  v12 = v15;
LABEL_18:
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t sub_26EE286F8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = sub_26EF3A4FC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v16[-v11];
  v17 = v4;
  v18 = v5;
  v19 = v2;
  sub_26EF3A4EC();
  swift_getWitnessTable();
  v13 = *(v7 + 16);
  v13(v12, v10, v6);
  v14 = *(v7 + 8);
  v14(v10, v6);
  v13(a2, v12, v6);
  return (v14)(v12, v6);
}

uint64_t sub_26EE2888C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v8(v7);
  (v8)(a3, v7, a2);
  return (*(v5 + 8))(v7, a2);
}

unint64_t sub_26EE28990()
{
  result = qword_2806C7040;
  if (!qword_2806C7040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7038, qword_26EF3D8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7040);
  }

  return result;
}

uint64_t sub_26EE28A78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7038, qword_26EF3D8A0);
  v0 = sub_26EE28990();
  sub_26EE12538(v0, v1, v2);
  return sub_26EF3A75C();
}

uint64_t sub_26EE28B04(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26EE28B74(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_26EE28CB4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_26EE28EE4(void *a1)
{
  sub_26EF3A4FC();

  return swift_getWitnessTable();
}

uint64_t sub_26EE28F2C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7038, qword_26EF3D8A0);
  v0 = sub_26EE28990();
  sub_26EE12538(v0, v1, v2);
  return swift_getOpaqueTypeConformance2();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t VoicePickerGroup.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VoicePickerGroup.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t VoicePickerGroup.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VoicePickerGroup(0) + 24);
  v4 = sub_26EF37FEC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for VoicePickerGroup(uint64_t a1)
{
  result = qword_2806CB210;
  if (!qword_2806CB210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VoicePickerGroup.locale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VoicePickerGroup(0) + 24);
  v4 = sub_26EF37FEC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VoicePickerGroup.id.getter()
{
  type metadata accessor for VoicePickerGroup(0);
  v2 = sub_26EF37EFC();
  MEMORY[0x274383240](95, 0xE100000000000000);
  MEMORY[0x274383240](*v0, v0[1]);
  return v2;
}

uint64_t VoicePickerGroup.priority.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for VoicePickerGroup(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t VoicePickerGroup.topLevelPosition.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VoicePickerGroup(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t VoicePickerGroup.topLevelPosition.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for VoicePickerGroup(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t VoicePickerGroup.hash(into:)(uint64_t a1)
{
  sub_26EF3B16C();
  sub_26EF3B89C();
  v2 = type metadata accessor for VoicePickerGroup(0);
  sub_26EF37FEC();
  sub_26EE29928(&qword_2806C7048, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  sub_26EF3B05C();
  v3 = (v1 + *(v2 + 28));
  if (*(v3 + 8) == 1)
  {
    sub_26EF3B89C();
  }

  else
  {
    v4 = *v3;
    sub_26EF3B89C();
    MEMORY[0x274383950](v4);
  }

  v5 = *(v1 + *(v2 + 32));
  if (v5 == 2)
  {
    return sub_26EF3B89C();
  }

  sub_26EF3B89C();
  return MEMORY[0x274383950](v5 & 1);
}

uint64_t VoicePickerGroup.hashValue.getter()
{
  sub_26EF3B87C();
  VoicePickerGroup.hash(into:)(v1);
  return sub_26EF3B8CC();
}

uint64_t sub_26EE295F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v12 = *a7;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  v13 = type metadata accessor for VoicePickerGroup(0);
  v14 = v13[6];
  v15 = sub_26EF37FEC();
  result = (*(*(v15 - 8) + 32))(a8 + v14, a4, v15);
  v17 = a8 + v13[7];
  *v17 = a5;
  *(v17 + 8) = a6 & 1;
  *(a8 + v13[8]) = v12;
  return result;
}

uint64_t sub_26EE296AC@<X0>(uint64_t *a1@<X8>)
{
  v5 = sub_26EF37EFC();
  v6 = v3;
  MEMORY[0x274383240](95, 0xE100000000000000);
  result = MEMORY[0x274383240](*v1, v1[1]);
  *a1 = v5;
  a1[1] = v6;
  return result;
}

uint64_t sub_26EE29714()
{
  sub_26EF3B87C();
  VoicePickerGroup.hash(into:)(v1);
  return sub_26EF3B8CC();
}

uint64_t sub_26EE29758(uint64_t a1)
{
  sub_26EF3B87C();
  VoicePickerGroup.hash(into:)(v2);
  return sub_26EF3B8CC();
}

uint64_t _s26TextToSpeechVoiceBankingUI0D11PickerGroupV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_26EF3B82C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = type metadata accessor for VoicePickerGroup(0);
  if ((MEMORY[0x274380060](a1 + v5[6], a2 + v5[6]) & 1) == 0)
  {
    return 0;
  }

  v6 = v5[7];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 8);
  if ((v8 & 1) == 0)
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }

LABEL_14:
    v11 = v5[8];
    v12 = *(a1 + v11);
    v13 = *(a2 + v11);
    if (v12 == 2)
    {
      if (v13 != 2)
      {
        return 0;
      }
    }

    else if (v13 == 2 || ((v13 ^ v12) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (v10)
  {
    goto LABEL_14;
  }

  return 0;
}

unint64_t sub_26EE2988C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C7050;
  if (!qword_2806C7050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7050);
  }

  return result;
}

uint64_t sub_26EE29928(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26EE29974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C7060;
  if (!qword_2806C7060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7060);
  }

  return result;
}

uint64_t sub_26EE299DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26EF37FEC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26EE29A9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_26EF37FEC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26EE29B40(uint64_t a1)
{
  sub_26EF37FEC();
  if (v1 <= 0x3F)
  {
    sub_26EE29C14(319, &qword_2806C7068, MEMORY[0x277D83B88]);
    if (v2 <= 0x3F)
    {
      sub_26EE29C14(319, &qword_2806C7070, &type metadata for VoicePickerGroup.TopLevelPosition);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26EE29C14(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_26EF3B5CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for _InternalSection(uint64_t a1)
{
  result = qword_2806CB2A0;
  if (!qword_2806CB2A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EE29E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C70C8, &qword_26EF3DC80);
  MEMORY[0x28223BE20](v45);
  v43 = &v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C70D0, &qword_26EF3DC88);
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v46 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v44 = &v38 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C70D8, &qword_26EF3DC90);
  MEMORY[0x28223BE20](v42);
  v9 = &v38 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C70E0, &qword_26EF3DC98);
  MEMORY[0x28223BE20](v39);
  v11 = &v38 - v10;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C70E8, &qword_26EF3DCA0);
  MEMORY[0x28223BE20](v40);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v38 - v15;
  v17 = sub_26EF38DBC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C70F0, &qword_26EF3DCA8);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v41 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v38 - v24;
  v26 = type metadata accessor for _InternalSection(0);
  sub_26EE13B88(a1 + *(v26 + 28), v16, &qword_2806C7088, &unk_26EF3E330);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_26EE14578(v16, &qword_2806C7088, &unk_26EF3E330);
LABEL_6:
    sub_26EE2A99C(v9);
    sub_26EE13B88(v9, v11, &qword_2806C70D8, &qword_26EF3DC90);
    swift_storeEnumTagMultiPayload();
    sub_26EE2E174();
    sub_26EE2E228();
    sub_26EF3A06C();
    sub_26EE14578(v9, &qword_2806C70D8, &qword_26EF3DC90);
    goto LABEL_7;
  }

  (*(v18 + 32))(v20, v16, v17);
  if ((sub_26EF38CFC() & 1) == 0)
  {
    (*(v18 + 8))(v20, v17);
    goto LABEL_6;
  }

  sub_26EE2A4E4(v13);
  sub_26EE13B88(v13, v11, &qword_2806C70E8, &qword_26EF3DCA0);
  swift_storeEnumTagMultiPayload();
  sub_26EE2E174();
  sub_26EE2E228();
  sub_26EF3A06C();
  sub_26EE14578(v13, &qword_2806C70E8, &qword_26EF3DCA0);
  (*(v18 + 8))(v20, v17);
LABEL_7:
  v38 = v25;
  sub_26EF39EAC();
  sub_26EE2B33C(a1, v43);
  sub_26EE2E318();
  v27 = v44;
  sub_26EF3999C();
  v28 = v25;
  v29 = v41;
  sub_26EE13B88(v28, v41, &qword_2806C70F0, &qword_26EF3DCA8);
  v31 = v46;
  v30 = v47;
  v32 = *(v47 + 16);
  v33 = v48;
  v32(v46, v27, v48);
  v34 = v49;
  sub_26EE13B88(v29, v49, &qword_2806C70F0, &qword_26EF3DCA8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7130, &qword_26EF3DCB8);
  v32((v34 + *(v35 + 48)), v31, v33);
  v36 = *(v30 + 8);
  v36(v27, v33);
  sub_26EE14578(v38, &qword_2806C70F0, &qword_26EF3DCA8);
  v36(v31, v33);
  return sub_26EE14578(v29, &qword_2806C70F0, &qword_26EF3DCA8);
}

uint64_t sub_26EE2A4E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = type metadata accessor for _InternalSection(0);
  v4 = v3 - 8;
  v45 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v47 = v5;
  v48 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7138, &unk_26EF3DCC0);
  MEMORY[0x28223BE20](v6 - 8);
  v46 = v42 - v7;
  v8 = sub_26EF3873C();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  v44 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v42 - v11;
  v13 = sub_26EF38DBC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v42 - v18;
  v20 = *(v4 + 36);
  v21 = v2;
  sub_26EE13B88(v2 + v20, v12, &qword_2806C7088, &unk_26EF3E330);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_26EE14578(v12, &qword_2806C7088, &unk_26EF3E330);
    v22 = 1;
    v24 = v50;
    v23 = v51;
    v25 = v49;
  }

  else
  {
    v43 = *(v14 + 32);
    v43(v19, v12, v13);
    v26 = sub_26EE17094();
    v27._object = 0x800000026EF45420;
    v28 = v26 & 1;
    v27._countAndFlagsBits = 0xD000000000000012;
    v29 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v27, v28, 0);
    v42[1] = v29._object;
    v42[2] = v29._countAndFlagsBits;
    v30 = v46;
    sub_26EF395FC();
    v31 = sub_26EF3961C();
    (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
    v32 = v48;
    sub_26EE2E44C(v21, v48);
    (*(v14 + 16))(v17, v19, v13);
    v33 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v34 = (v47 + *(v14 + 80) + v33) & ~*(v14 + 80);
    v35 = swift_allocObject();
    sub_26EE2E6C4(v32, v35 + v33);
    v43((v35 + v34), v17, v13);
    v36 = v44;
    sub_26EF3874C();
    (*(v14 + 8))(v19, v13);
    v37 = v49;
    v38 = v51;
    v39 = v36;
    v40 = v50;
    (*(v49 + 32))(v51, v39, v50);
    v22 = 0;
    v23 = v38;
    v24 = v40;
    v25 = v37;
  }

  return (*(v25 + 56))(v23, v22, 1, v24);
}

uint64_t sub_26EE2A99C@<X0>(uint64_t a1@<X8>)
{
  v93 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7118, &qword_26EF3DCB0);
  v90 = *(v2 - 8);
  v91 = v2;
  MEMORY[0x28223BE20](v2);
  v85 = v66 - v3;
  v4 = type metadata accessor for _InternalSection(0);
  v5 = v4 - 8;
  v77 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v78 = v6;
  v79 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7138, &unk_26EF3DCC0);
  MEMORY[0x28223BE20](v7 - 8);
  v87 = v66 - v8;
  v81 = sub_26EF3873C();
  v84 = *(v81 - 8);
  v9 = MEMORY[0x28223BE20](v81);
  v83 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v82 = v66 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v89 = v66 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v80 = v66 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v88 = v66 - v18;
  MEMORY[0x28223BE20](v17);
  v92 = v66 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v66 - v21;
  v23 = sub_26EF38AAC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v27 = v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = v66 - v28;
  v30 = *(v5 + 32);
  v31 = v1;
  sub_26EE13B88(v1 + v30, v22, &qword_2806C7080, &unk_26EF3DBF0);
  v32 = v24;
  v33 = v23;
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_26EE14578(v22, &qword_2806C7080, &unk_26EF3DBF0);
    v34 = 1;
  }

  else
  {
    v35 = *(v24 + 32);
    v70 = v29;
    v35(v29, v22, v23);
    v73 = v24 + 32;
    v72 = v35;
    countAndFlagsBits = "VB_CANCEL_TRAINING";
    v76 = sub_26EF3961C();
    v36 = *(v76 - 8);
    v75 = *(v36 + 56);
    v68 = v36 + 56;
    v75(v87, 1, 1, v76);
    v71 = v31;
    v37 = v79;
    sub_26EE2E44C(v31, v79);
    v69 = v32;
    v74 = *(v32 + 16);
    v86 = v23;
    v74(v27, v29, v23);
    v38 = *(v77 + 80);
    v39 = *(v32 + 80);
    v40 = (v38 + 16) & ~v38;
    v41 = (v78 + v39 + v40) & ~v39;
    v77 = v40;
    v78 = v38 | v39;
    v42 = swift_allocObject();
    sub_26EE2E6C4(v37, v42 + v40);
    v35((v42 + v41), v27, v33);
    v43 = v87;
    sub_26EF3874C();
    v44 = sub_26EE17094();
    v45._countAndFlagsBits = 0xD00000000000001FLL;
    v45._object = 0x800000026EF45460;
    v46 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v45, v44 & 1, 0);
    countAndFlagsBits = v46._countAndFlagsBits;
    v66[1] = v46._object;
    v75(v43, 1, 1, v76);
    sub_26EE2E44C(v71, v37);
    v47 = v70;
    v48 = v86;
    v74(v27, v70, v86);
    v49 = swift_allocObject();
    sub_26EE2E6C4(v37, v49 + v77);
    v72(v49 + v41, v27, v48);
    sub_26EF3874C();
    v50 = sub_26EE17094();
    v51._countAndFlagsBits = 0xD00000000000001ALL;
    v51._object = 0x800000026EF45480;
    countAndFlagsBits = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v51, v50 & 1, 0)._object;
    v75(v43, 1, 1, v76);
    sub_26EE2E44C(v71, v37);
    v52 = v86;
    v74(v27, v47, v86);
    v53 = swift_allocObject();
    sub_26EE2E6C4(v37, v53 + v77);
    v72(v53 + v41, v27, v52);
    v54 = v80;
    sub_26EF3874C();
    v55 = v84;
    v56 = *(v84 + 16);
    v57 = v89;
    v58 = v81;
    v56(v89, v92, v81);
    v59 = v82;
    v60 = v88;
    v56(v82, v88, v58);
    v61 = v83;
    v56(v83, v54, v58);
    v62 = v85;
    v56(v85, v57, v58);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7150, &qword_26EF3DD08);
    v56((v62 + *(v63 + 48)), v59, v58);
    v56((v62 + *(v63 + 64)), v61, v58);
    v64 = *(v55 + 8);
    v64(v54, v58);
    v64(v60, v58);
    v64(v92, v58);
    (*(v69 + 8))(v70, v86);
    v64(v61, v58);
    v64(v59, v58);
    v64(v89, v58);
    sub_26EE14D98(v62, v93, &qword_2806C7118, &qword_26EF3DCB0);
    v34 = 0;
  }

  return (*(v90 + 56))(v93, v34, 1, v91);
}

uint64_t sub_26EE2B33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_26EF39DDC();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26EF37EDC();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0);
  MEMORY[0x28223BE20](v34);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7148, &qword_26EF3DD00);
  v10 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v33 = &v30 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_26EF38AAC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for _InternalSection(0);
  sub_26EE13B88(a1 + *(v19 + 24), v14, &qword_2806C7080, &unk_26EF3DBF0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_26EE14578(v14, &qword_2806C7080, &unk_26EF3DBF0);
    v20 = 1;
    v22 = v35;
    v21 = v36;
  }

  else
  {
    v23 = (*(v16 + 32))(v18, v14, v15);
    MEMORY[0x274380B50](v23);
    sub_26EE03958(v7, v9);
    v24 = *a1;
    if (*(a1 + 8) == 1)
    {
      v25 = v24;
    }

    else
    {

      sub_26EF3B46C();
      v26 = sub_26EF3A36C();
      sub_26EF3880C();

      v27 = v30;
      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v24, 0);
      (*(v31 + 8))(v27, v32);
      v25 = v37;
    }

    type metadata accessor for VoiceBankingSession(0);
    sub_26EE2EE40(&qword_2806C7128, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView, &unk_26EF3C8E0);
    sub_26EE2EE40(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
    v28 = v33;
    sub_26EF3A67C();

    sub_26EE2EE88(v9);
    (*(v16 + 8))(v18, v15);
    v22 = v35;
    v21 = v36;
    (*(v10 + 32))(v36, v28, v35);
    v20 = 0;
  }

  return (*(v10 + 56))(v21, v20, 1, v22);
}

uint64_t sub_26EE2B82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_26EF38A2C();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = sub_26EF3883C();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v8 = sub_26EF37EDC();
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  v9 = sub_26EF39DDC();
  v5[15] = v9;
  v5[16] = *(v9 - 8);
  v5[17] = swift_task_alloc();
  sub_26EF3B2DC();
  v5[18] = sub_26EF3B2CC();
  v11 = sub_26EF3B29C();
  v5[19] = v11;
  v5[20] = v10;

  return MEMORY[0x2822009F8](sub_26EE2BA40, v11, v10);
}

uint64_t sub_26EE2BA40()
{
  v1 = v0[3];
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v3 = v2;
  }

  else
  {
    v5 = v0[16];
    v4 = v0[17];
    v6 = v0[15];

    sub_26EF3B46C();
    v7 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    (*(v5 + 8))(v4, v6);
    v3 = v0[2];
  }

  v0[21] = v3;
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[12];
  MEMORY[0x274380E30]();
  v11 = sub_26EF37E8C();
  v13 = v12;
  v0[22] = v12;
  (*(v9 + 8))(v8, v10);
  v14 = swift_task_alloc();
  v0[23] = v14;
  *v14 = v0;
  v14[1] = sub_26EE2BBE0;

  return VoiceBankingSession.cancelTrainingTask(taskID:)(v11, v13);
}

uint64_t sub_26EE2BBE0()
{
  v2 = *v1;
  v2[24] = v0;

  v3 = v2[21];
  if (v0)
  {

    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_26EE2C114;
  }

  else
  {

    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_26EE2BD44;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EE2BD44()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_26EE27DAC();
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_26EF3881C();
  v6 = sub_26EF3B43C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26EE01000, v5, v6, "VoiceManagementView: training task cancelled. Will refresh voices and models", v7, 2u);
    MEMORY[0x2743842A0](v7, -1, -1);
  }

  v8 = v0[11];
  v9 = v0[8];
  v10 = v0[9];
  v11 = v0[3];

  (*(v10 + 8))(v8, v9);
  v12 = *(v11 + 16);
  v0[25] = v12;
  if (v12)
  {

    v13 = swift_task_alloc();
    v0[26] = v13;
    *v13 = v0;
    v13[1] = sub_26EE2BF34;

    return sub_26EEA69C4();
  }

  else
  {
    type metadata accessor for VoiceRefreshViewModel(0);
    sub_26EE2EE40(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel, &unk_26EF41418);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EE2BF34()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_26EE2C078, v3, v2);
}

uint64_t sub_26EE2C078()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26EE2C114()
{
  v1 = v0[24];

  sub_26EF3934C();
  v2 = v1;
  v3 = sub_26EF3881C();
  v4 = sub_26EF3B45C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[24];
  if (v5)
  {
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    (*(v8 + 104))(v7, *MEMORY[0x277D704D8], v9);
    sub_26EF38A4C();
    sub_26EE2EE40(&unk_2806C9CD0, MEMORY[0x277D70518], MEMORY[0x277D70520]);
    swift_allocError();
    sub_26EF389BC();
    (*(v8 + 8))(v7, v9);
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&dword_26EE01000, v3, v4, "%@", v10, 0xCu);
    sub_26EE14578(v11, &qword_2806C7140, &unk_26EF3E420);
    MEMORY[0x2743842A0](v11, -1, -1);
    MEMORY[0x2743842A0](v10, -1, -1);
  }

  else
  {
  }

  (*(v0[9] + 8))(v0[10], v0[8]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_26EE2C388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26EE13B88(a3, v25 - v10, &unk_2806C9C80, &qword_26EF3E400);
  v12 = sub_26EF3B30C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26EE14578(v11, &unk_2806C9C80, &qword_26EF3E400);
  }

  else
  {
    sub_26EF3B2FC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_26EF3B29C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_26EF3B12C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_26EE14578(a3, &unk_2806C9C80, &qword_26EF3E400);

      return v23;
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

  sub_26EE14578(a3, &unk_2806C9C80, &qword_26EF3E400);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_26EE2C688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20);
  v5[5] = swift_task_alloc();
  v6 = sub_26EF39DDC();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  sub_26EF3B2DC();
  v5[9] = sub_26EF3B2CC();
  v8 = sub_26EF3B29C();
  v5[10] = v8;
  v5[11] = v7;

  return MEMORY[0x2822009F8](sub_26EE2C7B4, v8, v7);
}

uint64_t sub_26EE2C7B4()
{
  v1 = v0[3];
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v3 = v2;
  }

  else
  {
    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[6];

    sub_26EF3B46C();
    v7 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    (*(v5 + 8))(v4, v6);
    v3 = v0[2];
  }

  v0[12] = v3;
  v8 = v0[5];
  MEMORY[0x274380B50]();
  v9 = sub_26EF37EDC();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_26EE2C964;
  v11 = v0[5];

  return VoiceBankingSession.trainWithMode(mode:voiceID:skipValidation:)(0, v11, 1);
}

uint64_t sub_26EE2C964()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 40);

  sub_26EE14578(v3, &qword_2806C9CB0, &qword_26EF3DD20);
  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_26EE2CAD0, v5, v4);
}

uint64_t sub_26EE2CAD0()
{
  v1 = *(v0[3] + 16);
  v0[14] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[15] = v2;
    *v2 = v0;
    v2[1] = sub_26EE2CBF0;

    return sub_26EEA69C4();
  }

  else
  {
    type metadata accessor for VoiceRefreshViewModel(0);
    sub_26EE2EE40(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel, &unk_26EF41418);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EE2CBF0()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_26EE2F874, v3, v2);
}

uint64_t sub_26EE2CD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20);
  v5[5] = swift_task_alloc();
  v6 = sub_26EF39DDC();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  sub_26EF3B2DC();
  v5[9] = sub_26EF3B2CC();
  v8 = sub_26EF3B29C();
  v5[10] = v8;
  v5[11] = v7;

  return MEMORY[0x2822009F8](sub_26EE2CE60, v8, v7);
}

uint64_t sub_26EE2CE60()
{
  v1 = v0[3];
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v3 = v2;
  }

  else
  {
    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[6];

    sub_26EF3B46C();
    v7 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    (*(v5 + 8))(v4, v6);
    v3 = v0[2];
  }

  v0[12] = v3;
  v8 = v0[5];
  MEMORY[0x274380B50]();
  v9 = sub_26EF37EDC();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_26EE2D010;
  v11 = v0[5];

  return VoiceBankingSession.trainWithMode(mode:voiceID:skipValidation:)(1, v11, 1);
}

uint64_t sub_26EE2D010()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 40);

  sub_26EE14578(v3, &qword_2806C9CB0, &qword_26EF3DD20);
  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_26EE2D17C, v5, v4);
}

uint64_t sub_26EE2D17C()
{
  v1 = *(v0[3] + 16);
  v0[14] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[15] = v2;
    *v2 = v0;
    v2[1] = sub_26EE2D29C;

    return sub_26EEA69C4();
  }

  else
  {
    type metadata accessor for VoiceRefreshViewModel(0);
    sub_26EE2EE40(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel, &unk_26EF41418);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EE2D29C()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_26EE2D3E0, v3, v2);
}

uint64_t sub_26EE2D3E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26EE2D454(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v26 = a5;
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = type metadata accessor for _InternalSection(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v25 - v16;
  v18 = sub_26EF3B30C();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_26EE2E44C(a1, v14);
  (*(v8 + 16))(v10, a2, v7);
  sub_26EF3B2DC();
  v19 = sub_26EF3B2CC();
  v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v21 = (v13 + *(v8 + 80) + v20) & ~*(v8 + 80);
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v19;
  *(v22 + 24) = v23;
  sub_26EE2E6C4(v14, v22 + v20);
  (*(v8 + 32))(v22 + v21, v10, v7);
  sub_26EE2C388(0, 0, v17, v26, v22);
}

uint64_t sub_26EE2D6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20);
  v5[5] = swift_task_alloc();
  v6 = sub_26EF39DDC();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  sub_26EF3B2DC();
  v5[9] = sub_26EF3B2CC();
  v8 = sub_26EF3B29C();
  v5[10] = v8;
  v5[11] = v7;

  return MEMORY[0x2822009F8](sub_26EE2D80C, v8, v7);
}

uint64_t sub_26EE2D80C()
{
  v1 = v0[3];
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v3 = v2;
  }

  else
  {
    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[6];

    sub_26EF3B46C();
    v7 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    (*(v5 + 8))(v4, v6);
    v3 = v0[2];
  }

  v0[12] = v3;
  v8 = v0[5];
  MEMORY[0x274380B50]();
  v9 = sub_26EF37EDC();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_26EE2C964;
  v11 = v0[5];

  return VoiceBankingSession.trainWithMode(mode:voiceID:skipValidation:)(2, v11, 1);
}

uint64_t sub_26EE2D9BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for VoiceBankingSession(0);
  sub_26EE2EE40(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
  *a3 = sub_26EF3973C();
  *(a3 + 8) = v6 & 1;
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EE2EE40(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel, &unk_26EF41418);
  *(a3 + 16) = sub_26EF39C1C();
  *(a3 + 24) = v7;
  v8 = type metadata accessor for _InternalSection(0);
  sub_26EE14D98(a1, a3 + *(v8 + 24), &qword_2806C7080, &unk_26EF3DBF0);
  return sub_26EE14D98(a2, a3 + *(v8 + 28), &qword_2806C7088, &unk_26EF3E330);
}

uint64_t sub_26EE2DB00()
{
  sub_26EF39EAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7090, qword_26EF3DC00);
  sub_26EE2E2C4(&qword_2806C7098, &qword_2806C7090, qword_26EF3DC00);
  return sub_26EF3AD2C();
}

uint64_t sub_26EE2DBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_26EE2DD48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_26EE2DE84(uint64_t a1)
{
  sub_26EE2E05C(319, &qword_2806C66B0, type metadata accessor for VoiceBankingSession, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_26EE2DFC8(319);
    if (v2 <= 0x3F)
    {
      sub_26EE2E05C(319, &qword_2806C70A8, MEMORY[0x277D70530], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_26EE2E05C(319, &qword_2806C70B0, MEMORY[0x277D705D8], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26EE2DFC8(uint64_t a1)
{
  if (!qword_2806C70A0)
  {
    type metadata accessor for VoiceRefreshViewModel(255);
    sub_26EE2EE40(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel, &unk_26EF41418);
    v1 = sub_26EF39C2C();
    if (!v2)
    {
      atomic_store(v1, &qword_2806C70A0);
    }
  }
}

void sub_26EE2E05C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26EE2E0C4()
{
  result = qword_2806C70B8;
  if (!qword_2806C70B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C70C0, &qword_26EF3DC78);
    sub_26EE2E2C4(&qword_2806C7098, &qword_2806C7090, qword_26EF3DC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C70B8);
  }

  return result;
}

unint64_t sub_26EE2E174()
{
  result = qword_2806C70F8;
  if (!qword_2806C70F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C70E8, &qword_26EF3DCA0);
    sub_26EE2EE40(&qword_2806C7100, MEMORY[0x277CE7690], MEMORY[0x277CE7688]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C70F8);
  }

  return result;
}

unint64_t sub_26EE2E228()
{
  result = qword_2806C7108;
  if (!qword_2806C7108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C70D8, &qword_26EF3DC90);
    sub_26EE2E2C4(&qword_2806C7110, &qword_2806C7118, &qword_26EF3DCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7108);
  }

  return result;
}

uint64_t sub_26EE2E2C4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_26EE2E318()
{
  result = qword_2806C7120;
  if (!qword_2806C7120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C70C8, &qword_26EF3DC80);
    type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(255);
    type metadata accessor for VoiceBankingSession(255);
    sub_26EE2EE40(&qword_2806C7128, type metadata accessor for VBInternal_VoiceRecordingsAnalysisView, &unk_26EF3C8E0);
    sub_26EE2EE40(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7120);
  }

  return result;
}

uint64_t sub_26EE2E44C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _InternalSection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE2E4B0()
{
  v1 = type metadata accessor for _InternalSection(0);
  v2 = *(*(v1 - 8) + 80);
  v17 = *(*(v1 - 8) + 64);
  v3 = sub_26EF38DBC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v16 = *(v4 + 64);
  v6 = v0 + ((v2 + 16) & ~v2);
  sub_26EE05C9C(*v6, *(v6 + 8));

  v7 = *(v1 + 24);
  v8 = sub_26EF38AAC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v6 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  v10 = *(v1 + 28);
  v11 = (*(v4 + 48))(v6 + v10, 1, v3);
  v12 = *(v4 + 8);
  if (!v11)
  {
    v12(v6 + v10, v3);
  }

  v13 = v2 | v5;
  v14 = (((v2 + 16) & ~v2) + v17 + v5) & ~v5;
  v12(v0 + v14, v3);

  return MEMORY[0x2821FE8E8](v0, v14 + v16, v13 | 7);
}

uint64_t sub_26EE2E6C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _InternalSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE2E760()
{
  v1 = type metadata accessor for _InternalSection(0);
  v2 = *(*(v1 - 8) + 80);
  v17 = *(*(v1 - 8) + 64);
  v3 = sub_26EF38DBC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v16 = *(v4 + 64);
  swift_unknownObjectRelease();
  v6 = v0 + ((v2 + 32) & ~v2);
  sub_26EE05C9C(*v6, *(v6 + 8));

  v7 = *(v1 + 24);
  v8 = sub_26EF38AAC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v6 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  v10 = *(v1 + 28);
  v11 = (*(v4 + 48))(v6 + v10, 1, v3);
  v12 = *(v4 + 8);
  if (!v11)
  {
    v12(v6 + v10, v3);
  }

  v13 = v2 | v5;
  v14 = (((v2 + 32) & ~v2) + v17 + v5) & ~v5;
  v12(v0 + v14, v3);

  return MEMORY[0x2821FE8E8](v0, v14 + v16, v13 | 7);
}

uint64_t sub_26EE2E97C()
{
  v2 = *(type metadata accessor for _InternalSection(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_26EF38DBC() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_26EE15538;

  return sub_26EE2B82C(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_26EE2EAA8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26EE2EBA0;

  return v6(a1);
}

uint64_t sub_26EE2EBA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26EE2EC98()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26EE2ECD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26EE15538;

  return sub_26EE2EAA8(a1, v4);
}

uint64_t sub_26EE2ED88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26EE05D7C;

  return sub_26EE2EAA8(a1, v4);
}

uint64_t sub_26EE2EE40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26EE2EE88(uint64_t a1)
{
  v2 = type metadata accessor for VBInternal_VoiceRecordingsAnalysisView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EE2EF20(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for _InternalSection(0) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(a1(0) - 8);
  return sub_26EE2D454(v4 + v10, v4 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80)), a2, a3, a4);
}

uint64_t objectdestroy_22Tm()
{
  v1 = type metadata accessor for _InternalSection(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v16 = *(*(v1 - 8) + 64);
  v4 = sub_26EF38AAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v15 = *(v5 + 64);
  v7 = v0 + v3;
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));

  v8 = *(v1 + 24);
  if (!(*(v5 + 48))(v0 + v3 + v8, 1, v4))
  {
    (*(v5 + 8))(v7 + v8, v4);
  }

  v9 = *(v1 + 28);
  v10 = sub_26EF38DBC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v7 + v9, 1, v10))
  {
    (*(v11 + 8))(v7 + v9, v10);
  }

  v12 = v2 | v6;
  v13 = (v3 + v16 + v6) & ~v6;
  (*(v5 + 8))(v0 + v13, v4);

  return MEMORY[0x2821FE8E8](v0, v13 + v15, v12 | 7);
}

uint64_t sub_26EE2F2B4()
{
  v2 = *(type metadata accessor for _InternalSection(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_26EF38AAC() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_26EE15538;

  return sub_26EE2D6E0(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_26EE2F3E0()
{
  v2 = *(type metadata accessor for _InternalSection(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_26EF38AAC() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_26EE05D7C;

  return sub_26EE2CD34(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t objectdestroy_31Tm()
{
  v1 = type metadata accessor for _InternalSection(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v16 = *(*(v1 - 8) + 64);
  v4 = sub_26EF38AAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v15 = *(v5 + 64);
  swift_unknownObjectRelease();
  v7 = v0 + v3;
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));

  v8 = *(v1 + 24);
  if (!(*(v5 + 48))(v0 + v3 + v8, 1, v4))
  {
    (*(v5 + 8))(v7 + v8, v4);
  }

  v9 = *(v1 + 28);
  v10 = sub_26EF38DBC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v7 + v9, 1, v10))
  {
    (*(v11 + 8))(v7 + v9, v10);
  }

  v12 = v2 | v6;
  v13 = (v3 + v16 + v6) & ~v6;
  (*(v5 + 8))(v0 + v13, v4);

  return MEMORY[0x2821FE8E8](v0, v13 + v15, v12 | 7);
}

uint64_t sub_26EE2F744()
{
  v2 = *(type metadata accessor for _InternalSection(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_26EF38AAC() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_26EE15538;

  return sub_26EE2C688(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t TTSAudioEffectControl.body.getter@<X0>(uint64_t a1@<X8>)
{
  v147 = a1;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7160, &qword_26EF3DD58);
  v109 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v108 = &v107 - v2;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7168, &qword_26EF3DD60);
  MEMORY[0x28223BE20](v114);
  v115 = &v107 - v3;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7170, &qword_26EF3DD68);
  MEMORY[0x28223BE20](v142);
  v116 = &v107 - v4;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7178, &qword_26EF3DD70);
  v111 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v110 = &v107 - v5;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7180, &qword_26EF3DD78);
  v113 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v112 = &v107 - v6;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7188, &qword_26EF3DD80);
  MEMORY[0x28223BE20](v126);
  v127 = &v107 - v7;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7190, &qword_26EF3DD88);
  v124 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v123 = &v107 - v8;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7198, &qword_26EF3DD90);
  MEMORY[0x28223BE20](v137);
  v131 = &v107 - v9;
  v125 = type metadata accessor for TTSAudioEffectControl(0);
  v143 = *(v125 - 8);
  v10 = v143[8];
  MEMORY[0x28223BE20](v125);
  v11 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C71A0, &qword_26EF3DD98);
  v130 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v148 = &v107 - v12;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C71A8, &qword_26EF3DDA0);
  MEMORY[0x28223BE20](v145);
  v146 = &v107 - v13;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C71B0, &qword_26EF3DDA8);
  MEMORY[0x28223BE20](v138);
  v140 = &v107 - v14;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C71B8, &qword_26EF3DDB0);
  MEMORY[0x28223BE20](v132);
  v134.n128_u64[0] = &v107 - v15;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C71C0, &qword_26EF3DDB8);
  MEMORY[0x28223BE20](v139);
  v135 = &v107 - v16;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C71C8, &qword_26EF3DDC0);
  MEMORY[0x28223BE20](v144);
  v141 = &v107 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C71D0, &qword_26EF3DDC8);
  v119 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v107 - v19;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C71D8, &qword_26EF3DDD0);
  MEMORY[0x28223BE20](v120);
  v133.n128_u64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C71E0, &qword_26EF3DDD8);
  v122 = *(v133.n128_u64[0] - 8);
  MEMORY[0x28223BE20](v133.n128_u64[0]);
  v121 = &v107 - v21;
  v22 = sub_26EF3812C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v25, v1, v22);
  v26 = (*(v23 + 88))(v25, v22);
  if (v26 != *MEMORY[0x277D70120])
  {
    v148 = v10;
    v40 = v143;
    if (v26 == *MEMORY[0x277D70118])
    {
      v41 = (*(v23 + 96))(v25, v22);
      v143 = &v107;
      v148 = *v25;
      v42 = *(v148 + 2);
      v43 = *(v148 + 3);
      v44 = MEMORY[0x28223BE20](v41);
      MEMORY[0x28223BE20](v44);
      v105 = v45;
      v106 = v1;
      sub_26EE31590();
      sub_26EF3A4EC();
      v149 = v42;
      v150 = v43;
      v46 = sub_26EE154C8(&qword_2806C7268, &qword_2806C71D0, &qword_26EF3DDC8, MEMORY[0x277CDE580]);
      v49 = sub_26EE12538(v46, v47, v48);
      v50 = MEMORY[0x277D837D0];
      sub_26EF3A75C();
      (*(v119 + 8))(v20, v18);
      v149 = v18;
      v150 = v50;
      v151 = v46;
      v152 = v49;
      swift_getOpaqueTypeConformance2();
      v51 = v121;
      sub_26EF3998C();
      v52 = v122;
      v53 = v133.n128_u64[0];
      (*(v122 + 16))(v134.n128_u64[0], v51, v133.n128_u64[0]);
      swift_storeEnumTagMultiPayload();
      sub_26EE154C8(&qword_2806C71F8, &qword_2806C71E0, &qword_26EF3DDD8, MEMORY[0x277CDD938]);
      sub_26EE314C4();
      v54 = v135;
      sub_26EF3A06C();
      sub_26EE13B88(v54, v140, &qword_2806C71C0, &qword_26EF3DDB8);
      swift_storeEnumTagMultiPayload();
      sub_26EE3140C();
      sub_26EE316C8();
      v55 = v141;
      sub_26EF3A06C();
      sub_26EE14578(v54, &qword_2806C71C0, &qword_26EF3DDB8);
      sub_26EE13B88(v55, v146, &qword_2806C71C8, &qword_26EF3DDC0);
      swift_storeEnumTagMultiPayload();
      sub_26EE31380();
      sub_26EF3A06C();
      sub_26EE14578(v55, &qword_2806C71C8, &qword_26EF3DDC0);
      (*(v52 + 8))(v51, v53);
    }

    if (v26 == *MEMORY[0x277D70130])
    {
      (*(v23 + 96))(v25, v22);
      v57 = *v25;
      v59 = *(*v25 + 16);
      v58 = *(v57 + 3);
      v136 = *(v57 + 4);
      v137 = v57;
      v135 = *(v57 + 5);
      v107 = v1;
      sub_26EE35C44(v1, v11, type metadata accessor for TTSAudioEffectControl);
      sub_26EF3B2DC();
      swift_bridgeObjectRetain_n();
      v60 = sub_26EF3B2CC();
      v61 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v62 = &v148[v61 + 7] & 0xFFFFFFFFFFFFFFF8;
      v63 = swift_allocObject();
      v64 = MEMORY[0x277D85700];
      *(v63 + 16) = v60;
      *(v63 + 24) = v64;
      sub_26EE36D50(v11, v63 + v61, type metadata accessor for TTSAudioEffectControl);
      v65 = (v63 + v62);
      *v65 = v59;
      v65[1] = v58;
      sub_26EE35C44(v107, v11, type metadata accessor for TTSAudioEffectControl);
      v66 = sub_26EF3B2CC();
      v67 = swift_allocObject();
      *(v67 + 16) = v66;
      *(v67 + 24) = MEMORY[0x277D85700];
      sub_26EE36D50(v11, v67 + v61, type metadata accessor for TTSAudioEffectControl);
      v68 = (v67 + v62);
      *v68 = v59;
      v68[1] = v58;
      v69 = sub_26EF3AC7C();
      v148 = v149;
      MEMORY[0x28223BE20](v69);
      v105 = v136;
      v106 = v135;

      v70 = v110;
      sub_26EF3ABCC();
      v71 = v111;
      v72 = v117;
      (*(v111 + 16))(v115, v70, v117);
      swift_storeEnumTagMultiPayload();
      sub_26EE154C8(&qword_2806C7230, &qword_2806C7178, &qword_26EF3DD70, MEMORY[0x277CDF068]);
      sub_26EE31780();
      v73 = v116;
      sub_26EF3A06C();
      sub_26EE13B88(v73, v140, &qword_2806C7170, &qword_26EF3DD68);
      swift_storeEnumTagMultiPayload();
      sub_26EE3140C();
      sub_26EE316C8();
      v74 = v141;
      sub_26EF3A06C();
      sub_26EE14578(v73, &qword_2806C7170, &qword_26EF3DD68);
      sub_26EE13B88(v74, v146, &qword_2806C71C8, &qword_26EF3DDC0);
      swift_storeEnumTagMultiPayload();
      sub_26EE31380();
      sub_26EF3A06C();

      sub_26EE14578(v74, &qword_2806C71C8, &qword_26EF3DDC0);
      (*(v71 + 8))(v70, v72);
    }

    else
    {
      if (v26 != *MEMORY[0x277D70128])
      {
        swift_storeEnumTagMultiPayload();
        sub_26EE31380();
        sub_26EF3A06C();
        return (*(v23 + 8))(v25, v22);
      }

      v77 = (*(v23 + 96))(v25, v22);
      v137 = *v25;
      v79 = *(v137 + 16);
      v78 = *(v137 + 24);
      v80 = *(v137 + 40);
      v132 = *(v137 + 32);
      v131 = v80;
      v77.n128_u32[0] = *(v137 + 48);
      v133 = v77;
      v77.n128_u64[0] = *(v137 + 52);
      v134 = v77;
      v81 = *(v137 + 64);
      v135 = *(v137 + 72);
      v136 = v81;
      sub_26EE35C44(v1, v11, type metadata accessor for TTSAudioEffectControl);
      sub_26EF3B2DC();
      v107 = v1;
      swift_bridgeObjectRetain_n();
      v82 = v11;
      v83 = sub_26EF3B2CC();
      v84 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v85 = &v148[v84 + 7] & 0xFFFFFFFFFFFFFFF8;
      v86 = swift_allocObject();
      v87 = MEMORY[0x277D85700];
      *(v86 + 16) = v83;
      *(v86 + 24) = v87;
      sub_26EE36D50(v82, v86 + v84, type metadata accessor for TTSAudioEffectControl);
      v88 = (v86 + v85);
      *v88 = v79;
      v88[1] = v78;
      sub_26EE35C44(v107, v82, type metadata accessor for TTSAudioEffectControl);
      v89 = sub_26EF3B2CC();
      v90 = swift_allocObject();
      *(v90 + 16) = v89;
      *(v90 + 24) = MEMORY[0x277D85700];
      sub_26EE36D50(v82, v90 + v84, type metadata accessor for TTSAudioEffectControl);
      v91 = (v90 + v85);
      *v91 = v79;
      v91[1] = v78;
      sub_26EF3AC7C();
      v92 = v149;
      v148 = v150;
      v149 = v132;
      v150 = v131;
      v93 = MEMORY[0x28223BE20](v131);
      DWORD1(v94) = v133.n128_u32[0];
      *(&v94 + 1) = v134.n128_u64[0];
      *(&v107 - 8) = v92;
      *(&v107 - 7) = v95;
      *(&v107 - 3) = v94;
      *(&v107 - 4) = v96;
      *(&v107 - 3) = v93;
      v105 = v136;
      v106 = v135;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7248, &unk_26EF3DDE0);
      v97 = sub_26EE154C8(&qword_2806C7240, &qword_2806C7248, &unk_26EF3DDE0, MEMORY[0x277CE1138]);
      sub_26EE12538(v97, v98, v99);
      v100 = v108;
      sub_26EF3AD3C();
      v101 = v109;
      v102 = v118;
      (*(v109 + 16))(v115, v100, v118);
      swift_storeEnumTagMultiPayload();
      sub_26EE154C8(&qword_2806C7230, &qword_2806C7178, &qword_26EF3DD70, MEMORY[0x277CDF068]);
      sub_26EE31780();
      v103 = v116;
      sub_26EF3A06C();
      sub_26EE13B88(v103, v140, &qword_2806C7170, &qword_26EF3DD68);
      swift_storeEnumTagMultiPayload();
      sub_26EE3140C();
      sub_26EE316C8();
      v104 = v141;
      sub_26EF3A06C();
      sub_26EE14578(v103, &qword_2806C7170, &qword_26EF3DD68);
      sub_26EE13B88(v104, v146, &qword_2806C71C8, &qword_26EF3DDC0);
      swift_storeEnumTagMultiPayload();
      sub_26EE31380();
      sub_26EF3A06C();

      sub_26EE14578(v104, &qword_2806C71C8, &qword_26EF3DDC0);
      (*(v101 + 8))(v100, v102);
    }
  }

  (*(v23 + 96))(v25, v22);
  v28 = *(*v25 + 16);
  v27 = *(*v25 + 24);
  v149 = *(*v25 + 32);
  swift_getKeyPath();
  sub_26EE35C44(v1, &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTSAudioEffectControl);
  v29 = (*(v143 + 80) + 16) & ~*(v143 + 80);
  v30 = swift_allocObject();
  sub_26EE36D50(&v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for TTSAudioEffectControl);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7250, &qword_26EF3DE08);
  sub_26EE154C8(&qword_2806C7258, &qword_2806C7250, &qword_26EF3DE08, MEMORY[0x277D83980]);
  sub_26EE32850(&qword_2806C7260, MEMORY[0x277D70138], MEMORY[0x277D70140]);
  v105 = sub_26EE32850(&qword_2806C7218, type metadata accessor for TTSAudioEffectControl, &protocol conformance descriptor for TTSAudioEffectControl);
  v31 = sub_26EF3ACEC();
  if (v27)
  {
    v149 = v28;
    v150 = v27;
    MEMORY[0x28223BE20](v31);
    v105 = v148;
    v32 = sub_26EE31590();
    sub_26EE12538(v32, v33, v34);
    v35 = v123;
    v36 = v136;
    sub_26EF3AD3C();
    v37 = v124;
    v38 = v128;
    (*(v124 + 16))(v127, v35, v128);
  }

  else
  {
    MEMORY[0x28223BE20](v31);
    v105 = v148;
    sub_26EE31590();
    v35 = v112;
    v36 = v136;
    sub_26EF3AD6C();
    v37 = v113;
    v38 = v129;
    (*(v113 + 16))(v127, v35, v129);
  }

  swift_storeEnumTagMultiPayload();
  sub_26EE31644(&qword_2806C7208, &qword_2806C7190, &qword_26EF3DD88, MEMORY[0x277CE0BC8]);
  sub_26EE31644(&qword_2806C7220, &qword_2806C7180, &qword_26EF3DD78, MEMORY[0x277CE1410]);
  v39 = v131;
  sub_26EF3A06C();
  (*(v37 + 8))(v35, v38);
  sub_26EE13B88(v39, v134.n128_i64[0], &qword_2806C7198, &qword_26EF3DD90);
  swift_storeEnumTagMultiPayload();
  sub_26EE154C8(&qword_2806C71F8, &qword_2806C71E0, &qword_26EF3DDD8, MEMORY[0x277CDD938]);
  sub_26EE314C4();
  v75 = v135;
  sub_26EF3A06C();
  sub_26EE13B88(v75, v140, &qword_2806C71C0, &qword_26EF3DDB8);
  swift_storeEnumTagMultiPayload();
  sub_26EE3140C();
  sub_26EE316C8();
  v76 = v141;
  sub_26EF3A06C();
  sub_26EE14578(v75, &qword_2806C71C0, &qword_26EF3DDB8);
  sub_26EE13B88(v76, v146, &qword_2806C71C8, &qword_26EF3DDC0);
  swift_storeEnumTagMultiPayload();
  sub_26EE31380();
  sub_26EF3A06C();
  sub_26EE14578(v76, &qword_2806C71C8, &qword_26EF3DDC0);
  sub_26EE14578(v39, &qword_2806C7198, &qword_26EF3DD90);
  (*(v130 + 8))(v148, v36);
}

unint64_t sub_26EE31380()
{
  result = qword_2806C71E8;
  if (!qword_2806C71E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C71C8, &qword_26EF3DDC0);
    sub_26EE3140C();
    sub_26EE316C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C71E8);
  }

  return result;
}

unint64_t sub_26EE3140C()
{
  result = qword_2806C71F0;
  if (!qword_2806C71F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C71C0, &qword_26EF3DDB8);
    sub_26EE154C8(&qword_2806C71F8, &qword_2806C71E0, &qword_26EF3DDD8, MEMORY[0x277CDD938]);
    sub_26EE314C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C71F0);
  }

  return result;
}

unint64_t sub_26EE314C4()
{
  result = qword_2806C7200;
  if (!qword_2806C7200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7198, &qword_26EF3DD90);
    sub_26EE31644(&qword_2806C7208, &qword_2806C7190, &qword_26EF3DD88, MEMORY[0x277CE0BC8]);
    sub_26EE31644(&qword_2806C7220, &qword_2806C7180, &qword_26EF3DD78, MEMORY[0x277CE1410]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7200);
  }

  return result;
}

unint64_t sub_26EE31590()
{
  result = qword_2806C7210;
  if (!qword_2806C7210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C71A0, &qword_26EF3DD98);
    sub_26EE32850(&qword_2806C7218, type metadata accessor for TTSAudioEffectControl, &protocol conformance descriptor for TTSAudioEffectControl);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7210);
  }

  return result;
}

uint64_t sub_26EE31644(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_26EE31590();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26EE316C8()
{
  result = qword_2806C7228;
  if (!qword_2806C7228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7170, &qword_26EF3DD68);
    sub_26EE154C8(&qword_2806C7230, &qword_2806C7178, &qword_26EF3DD70, MEMORY[0x277CDF068]);
    sub_26EE31780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7228);
  }

  return result;
}

unint64_t sub_26EE31780()
{
  result = qword_2806C7238;
  if (!qword_2806C7238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7160, &qword_26EF3DD58);
    sub_26EE154C8(&qword_2806C7240, &qword_2806C7248, &unk_26EF3DDE0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7238);
  }

  return result;
}

uint64_t sub_26EE31844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSAudioEffectControl(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v10[1] = a1;
  swift_getKeyPath();
  sub_26EE35C44(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTSAudioEffectControl);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_26EE36D50(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for TTSAudioEffectControl);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7250, &qword_26EF3DE08);
  sub_26EE154C8(&qword_2806C7258, &qword_2806C7250, &qword_26EF3DE08, MEMORY[0x277D83980]);
  sub_26EE32850(&qword_2806C7260, MEMORY[0x277D70138], MEMORY[0x277D70140]);
  sub_26EE32850(&qword_2806C7218, type metadata accessor for TTSAudioEffectControl, &protocol conformance descriptor for TTSAudioEffectControl);
  return sub_26EF3ACEC();
}

uint64_t sub_26EE31A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((a1 & 0x100000000) != 0)
  {
    v10 = sub_26EE1FCF4(a2, a3);
    v12 = v11;

    if (v12)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_26EE3A0C0();
        v14 = v16;
      }

      result = sub_26EE39DB4(v10, v14);
      *v4 = v14;
    }
  }

  else
  {
    v7 = *&a1;
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_26EE39F64(a2, a3, v8, v7);

    *v3 = v15;
  }

  return result;
}

uint64_t sub_26EE31B68@<X0>(_DWORD *a1@<X8>)
{
  v3 = type metadata accessor for TTSAudioEffectControl(0);
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v5 = v1 + v4;
  v6 = (v1 + ((*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = v5 + *(v3 + 20);
  v18[1] = *v9;
  v19 = *(v9 + 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7158, &qword_26EF3DD50);
  MEMORY[0x274382CF0](v18, v10);
  v11 = v18[0];
  if (*(v18[0] + 16) && (v12 = sub_26EE1FCF4(v7, v8), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 4 * v12);
  }

  else
  {

    v16 = *(v5 + *(v3 + 24));
    v14 = 0;
    if (*(v16 + 16))
    {
      result = sub_26EE1FCF4(v7, v8);
      if (v17)
      {
        v14 = *(*(v16 + 56) + 4 * result);
      }
    }
  }

  *a1 = v14;
  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = *(type metadata accessor for TTSAudioEffectControl(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = sub_26EF3812C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_26EE31DE4(float *a1)
{
  v3 = *(type metadata accessor for TTSAudioEffectControl(0) - 8);
  v4 = (v1 + ((*(v3 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7158, &qword_26EF3DD50);
  MEMORY[0x274382CF0](&v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_26EE39F64(v5, v6, isUniquelyReferenced_nonNull_native, v7);
  sub_26EF3AC3C();
}

uint64_t sub_26EE31F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>, float a6@<S0>, unsigned int a7@<S1>, unsigned int a8@<S2>, float a9@<S3>)
{
  v60 = a4;
  v59 = a3;
  v16 = sub_26EF39E9C();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C74E0, &qword_26EF3E2B0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  result = sub_26EF39E4C();
  *a5 = result;
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  if (*&a7 > *&a8)
  {
    __break(1u);
  }

  else
  {
    v62 = v21;
    v57 = v17;
    v25 = MEMORY[0x28223BE20](result);
    v68 = a1;
    v69 = a2;
    *&v70 = a6;
    *&v63 = __PAIR64__(a8, a7);
    *(v26 + 80) = a9;
    sub_26EE3B878(v25, v27, v28);

    v29 = MEMORY[0x277D83A90];
    v61 = v23;
    sub_26EF3ABBC();
    v30 = v60;
    if (v60)
    {
      sub_26EF39E8C();
      sub_26EF39E7C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_26EF3C6B0;
      v68 = a1;
      v69 = a2;
      *&v70 = a6;
      v32 = MEMORY[0x277D83B08];
      *(v31 + 56) = v29;
      *(v31 + 64) = v32;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7508, &qword_26EF3E2D8);
      MEMORY[0x274382CF0](v33);
      sub_26EF3B10C();
      sub_26EF39E6C();

      sub_26EF39E7C();
      sub_26EF39E6C();
      sub_26EF39E7C();
      sub_26EF39EBC();
      v58 = sub_26EF3A5CC();
      v56 = v34;
      v36 = v35;
      v55 = v37;
      sub_26EF3AE4C();
      sub_26EF3984C();
      LOBYTE(v68) = v36 & 1;
      v38 = v78;
      v54 = v79;
      v39 = v80;
      v30 = v81;
      v60 = v82;
      v59 = v83;
      v40 = v36 & 1;
    }

    else
    {
      v58 = 0;
      v56 = 0;
      v55 = 0;
      v38 = 0;
      v54 = 0;
      v39 = 0;
      v60 = 0;
      v59 = 0;
      v40 = 0;
    }

    v53 = v40;
    v41 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C74F0, &qword_26EF3E2B8) + 44));
    v42 = *(v18 + 16);
    v43 = v62;
    v44 = v57;
    v42(v62, v61, v57);
    v42(v41, v43, v44);
    v45 = &v41[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C74F8, &qword_26EF3E2C0) + 48)];
    v46 = v58;
    *&v63 = v58;
    v47 = v56;
    *(&v63 + 1) = v56;
    *&v64 = v40;
    v48 = v55;
    *(&v64 + 1) = v55;
    *&v65 = v38;
    v49 = v54;
    *(&v65 + 1) = v54;
    *&v66 = v39;
    *(&v66 + 1) = v30;
    *&v67 = v60;
    *(&v67 + 1) = v59;
    v50 = v64;
    *v45 = v63;
    *(v45 + 1) = v50;
    v51 = v66;
    *(v45 + 2) = v65;
    *(v45 + 3) = v51;
    *(v45 + 4) = v67;
    sub_26EE13B88(&v63, &v68, &qword_2806C7500, &unk_26EF3E2C8);
    v52 = *(v18 + 8);
    v52(v61, v44);
    v68 = v46;
    v69 = v47;
    v70 = v53;
    v71 = v48;
    v72 = v38;
    v73 = v49;
    v74 = v39;
    v75 = v30;
    v76 = v60;
    v77 = v59;
    sub_26EE14578(&v68, &qword_2806C7500, &unk_26EF3E2C8);
    return (v52)(v62, v44);
  }

  return result;
}

uint64_t sub_26EE32584@<X0>(BOOL *a1@<X8>)
{
  v3 = type metadata accessor for TTSAudioEffectControl(0);
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v5 = v1 + v4;
  v6 = (v1 + ((*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = v5 + *(v3 + 20);
  v18[1] = *v9;
  v19 = *(v9 + 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7158, &qword_26EF3DD50);
  MEMORY[0x274382CF0](v18, v10);
  v11 = v18[0];
  if (*(v18[0] + 16) && (v12 = sub_26EE1FCF4(v7, v8), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 4 * v12);
  }

  else
  {

    v16 = *(v5 + *(v3 + 24));
    v14 = 0.0;
    if (*(v16 + 16))
    {
      result = sub_26EE1FCF4(v7, v8);
      if (v17)
      {
        v14 = *(*(v16 + 56) + 4 * result);
      }
    }
  }

  *a1 = v14 != 0.0;
  return result;
}

uint64_t sub_26EE326E0(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for TTSAudioEffectControl(0) - 8);
  v4 = (v1 + ((*(v3 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7158, &qword_26EF3DD50);
  MEMORY[0x274382CF0](&v10);
  v8 = 1065353216;
  if (!v7)
  {
    v8 = 0;
  }

  sub_26EE31A78(v8, v5, v6);
  sub_26EF3AC3C();
}

uint64_t sub_26EE32850(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26EE3289C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C71A0, &qword_26EF3DD98);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

uint64_t TTSAudioEffectConfigurationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7278, &qword_26EF3DE18);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v24 - v3;
  v5 = sub_26EF3864C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26EF3814C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7280, &qword_26EF3DE20);
  MEMORY[0x28223BE20](v13);
  v15 = v24 - v14;
  sub_26EE32C3C(v1, v24 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7270, &qword_26EF3DE10);
  MEMORY[0x274382CF0](v16);
  sub_26EF385EC();
  (*(v6 + 8))(v8, v5);
  result = (*(v10 + 48))(v4, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v12, v4, v9);
    v18 = sub_26EF3811C();
    v20 = v19;
    (*(v10 + 8))(v12, v9);
    v24[2] = v18;
    v24[3] = v20;
    v21 = sub_26EE33CAC();
    sub_26EE12538(v21, v22, v23);
    sub_26EF3A75C();

    return sub_26EE14578(v15, &qword_2806C7280, &qword_26EF3DE20);
  }

  return result;
}

uint64_t sub_26EE32C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C74B0, &qword_26EF3E218);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v132 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v130 = &v112 - v6;
  v7 = type metadata accessor for TTSAudioEffectConfigurationView(0);
  v124 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v125 = v8;
  v126 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C71A0, &qword_26EF3DD98);
  v128 = *(v129 - 8);
  v9 = MEMORY[0x28223BE20](v129);
  v127 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v148 = &v112 - v11;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C74B8, &qword_26EF3E220);
  v120 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v119 = &v112 - v12;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C74C0, &qword_26EF3E228);
  MEMORY[0x28223BE20](v134);
  v137 = &v112 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7270, &qword_26EF3DE10);
  MEMORY[0x28223BE20](v14);
  v113 = &v112 - v15;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7178, &qword_26EF3DD70);
  v115 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v114 = &v112 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7278, &qword_26EF3DE18);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v118 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v136 = &v112 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v112 - v22;
  v24 = sub_26EF3864C();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v117 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v116 = &v112 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v123 = &v112 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v133 = &v112 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v112 - v34;
  v36 = sub_26EF3814C();
  v37 = *(v36 - 8);
  v38 = MEMORY[0x28223BE20](v36);
  v122 = &v112 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v41 = &v112 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C74C8, &qword_26EF3E230);
  v43 = MEMORY[0x28223BE20](v42 - 8);
  v147 = &v112 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v149 = v14;
  v150 = &v112 - v45;
  v46 = v14;
  v47 = a1;
  MEMORY[0x274382CF0](v46);
  sub_26EF385EC();
  v48 = *(v25 + 8);
  v140 = v25 + 8;
  v141 = v24;
  v138 = v48;
  v48(v35, v24);
  v145 = v37[6];
  v146 = v37 + 6;
  result = v145(v23, 1, v36);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v121 = v37[4];
    v121(v41, v23, v36);
    v50 = sub_26EF380DC();
    v52 = v51;
    v53 = v37[1];
    v144 = v36;
    v142 = v53;
    v54 = (v53)(v41, v36);
    v143 = v37 + 1;
    if (v52)
    {
      v55 = MEMORY[0x28223BE20](v54);
      v151 = v50;
      v152 = v52;
      sub_26EE12538(v55, v56, v57);
      v151 = sub_26EF3A5DC();
      v152 = v58;
      v153 = v59 & 1;
      v154 = v60;
      sub_26EE154C8(&qword_2806C7230, &qword_2806C7178, &qword_26EF3DD70, MEMORY[0x277CDF068]);
      v61 = v119;
      sub_26EF3AD7C();
      v62 = v120;
      v63 = v139;
      (*(v120 + 16))(v137, v61, v139);
      swift_storeEnumTagMultiPayload();
      sub_26EE3B2E4();
      sub_26EF3A06C();
      (*(v62 + 8))(v61, v63);
      v64 = v149;
    }

    else
    {
      v65 = sub_26EE17094() & 1;
      v66._countAndFlagsBits = 0x44454C42414E45;
      v66._object = 0xE700000000000000;
      v155 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v66, v65, v50);
      v67 = v113;
      v68 = v149;
      sub_26EF3AC5C();
      swift_getKeyPath();
      sub_26EF3AC4C();

      v69 = sub_26EE14578(v67, &qword_2806C7270, &qword_26EF3DE10);
      sub_26EE12538(v69, v70, v71);
      v72 = v114;
      sub_26EF3ABEC();
      v73 = v115;
      v74 = v135;
      (*(v115 + 16))(v137, v72, v135);
      swift_storeEnumTagMultiPayload();
      sub_26EE3B2E4();
      sub_26EE154C8(&qword_2806C7230, &qword_2806C7178, &qword_26EF3DD70, MEMORY[0x277CDF068]);
      sub_26EF3A06C();
      (*(v73 + 8))(v72, v74);
      v64 = v68;
    }

    v75 = v133;
    MEMORY[0x274382CF0](v64);
    v76 = v136;
    sub_26EF385EC();
    v77 = v141;
    v78 = v138;
    v138(v75, v141);
    v79 = v144;
    result = v145(v76, 1, v144);
    if (result != 1)
    {
      v80 = v122;
      v81 = (v121)(v122, v76, v79);
      v82 = MEMORY[0x274380200](v81);
      v142(v80, v79);
      v151 = v82;
      swift_getKeyPath();
      v83 = v47;
      v84 = v126;
      sub_26EE35C44(v83, v126, type metadata accessor for TTSAudioEffectConfigurationView);
      v85 = (*(v124 + 80) + 16) & ~*(v124 + 80);
      v86 = swift_allocObject();
      sub_26EE36D50(v84, v86 + v85, type metadata accessor for TTSAudioEffectConfigurationView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7250, &qword_26EF3DE08);
      type metadata accessor for TTSAudioEffectControl(0);
      sub_26EE154C8(&qword_2806C7258, &qword_2806C7250, &qword_26EF3DE08, MEMORY[0x277D83980]);
      sub_26EE32850(&qword_2806C7260, MEMORY[0x277D70138], MEMORY[0x277D70140]);
      sub_26EE32850(&qword_2806C7218, type metadata accessor for TTSAudioEffectControl, &protocol conformance descriptor for TTSAudioEffectControl);
      sub_26EF3ACEC();
      v87 = v123;
      v88 = v149;
      MEMORY[0x274382CF0](v149);
      v89 = sub_26EF385CC();
      v78(v87, v77);
      v90 = *(v89 + 16);

      if (v90)
      {
        v91 = v116;
        MEMORY[0x274382CF0](v88);
        v92 = sub_26EF385CC();
        v78(v91, v77);
        v93 = v117;
        MEMORY[0x274382CF0](v88);
        v94 = v118;
        sub_26EF385EC();
        v78(v93, v77);
        v95 = v144;
        if (v145(v94, 1, v144) == 1)
        {
          sub_26EE14578(v94, &qword_2806C7278, &qword_26EF3DE18);

LABEL_11:
          MEMORY[0x28223BE20](v96);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
          sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080, MEMORY[0x277CDF028]);
          v100 = v130;
          sub_26EF3AD6C();
          v99 = 0;
          goto LABEL_12;
        }

        v97 = sub_26EF380EC();
        v142(v94, v95);
        v98 = sub_26EE396D8(v92, v97);

        if ((v98 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v99 = 1;
      v100 = v130;
LABEL_12:
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6748, &qword_26EF3CBB8);
      (*(*(v101 - 8) + 56))(v100, v99, 1, v101);
      v102 = v147;
      sub_26EE13B88(v150, v147, &qword_2806C74C8, &qword_26EF3E230);
      v103 = v128;
      v104 = *(v128 + 16);
      v105 = v127;
      v106 = v148;
      v107 = v129;
      v104(v127, v148, v129);
      v108 = v132;
      sub_26EE13B88(v100, v132, &qword_2806C74B0, &qword_26EF3E218);
      v109 = v131;
      sub_26EE13B88(v102, v131, &qword_2806C74C8, &qword_26EF3E230);
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C74D8, &unk_26EF3E270);
      v104((v109 + *(v110 + 48)), v105, v107);
      sub_26EE13B88(v108, v109 + *(v110 + 64), &qword_2806C74B0, &qword_26EF3E218);
      sub_26EE14578(v100, &qword_2806C74B0, &qword_26EF3E218);
      v111 = *(v103 + 8);
      v111(v106, v107);
      sub_26EE14578(v150, &qword_2806C74C8, &qword_26EF3E230);
      sub_26EE14578(v108, &qword_2806C74B0, &qword_26EF3E218);
      v111(v105, v107);
      return sub_26EE14578(v147, &qword_2806C74C8, &qword_26EF3E230);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26EE33CAC()
{
  result = qword_2806C7288;
  if (!qword_2806C7288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7280, &qword_26EF3DE20);
    sub_26EE154C8(&qword_2806C7290, &qword_2806C7298, &qword_26EF3DE28, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7288);
  }

  return result;
}

uint64_t sub_26EE33D5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7270, &qword_26EF3DE10);
  MEMORY[0x28223BE20](v0);
  v2 = &v9 - v1;
  v3 = sub_26EE17094() & 1;
  v4._countAndFlagsBits = 0x44454C42414E45;
  v4._object = 0xE700000000000000;
  v10 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v4, v3, 0);
  sub_26EF3AC5C();
  swift_getKeyPath();
  sub_26EF3AC4C();

  v5 = sub_26EE14578(v2, &qword_2806C7270, &qword_26EF3DE10);
  sub_26EE12538(v5, v6, v7);
  return sub_26EF3ABEC();
}

uint64_t sub_26EE33EA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26EF3862C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26EE33EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7278, &qword_26EF3DE18);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = &v27 - v4;
  v33 = sub_26EF3864C();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_26EF3814C();
  v7 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7270, &qword_26EF3DE10);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = sub_26EF3812C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 16);
  v28 = v18;
  v17(v16, a1);
  sub_26EF3AC5C();
  swift_getKeyPath();
  sub_26EF3AC4C();
  v19 = v30;

  sub_26EE14578(v12, &qword_2806C7270, &qword_26EF3DE10);
  v20 = v34;
  v27 = v35;
  v21 = v10;
  v22 = v32;
  MEMORY[0x274382CF0](v21);
  sub_26EF385EC();
  (*(v31 + 8))(v6, v33);
  result = (*(v7 + 48))(v22, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v9, v22, v19);
    v24 = sub_26EF380EC();
    (*(v7 + 8))(v9, v19);
    v25 = v29;
    (*(v14 + 32))(v29, v16, v28);
    result = type metadata accessor for TTSAudioEffectControl(0);
    v26 = v25 + *(result + 20);
    *v26 = v20;
    *(v26 + 8) = v27;
    *(v25 + *(result + 24)) = v24;
  }

  return result;
}

uint64_t sub_26EE342C0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_26EF385CC();
  *a2 = result;
  return result;
}

uint64_t sub_26EE34318(uint64_t a1)
{
  v2 = type metadata accessor for TTSAudioEffectConfigurationView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7138, &unk_26EF3DCC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  sub_26EF395FC();
  v8 = sub_26EF3961C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_26EE35C44(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTSAudioEffectConfigurationView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_26EE36D50(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for TTSAudioEffectConfigurationView);
  return sub_26EF3AB3C();
}

uint64_t sub_26EE34500()
{
  v0 = sub_26EF3864C();
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7270, &qword_26EF3DE10);
  MEMORY[0x274382CF0]();
  v1 = sub_26EF385BC();
  v3 = v2;

  *v3 = MEMORY[0x277D84F98];
  v1(v5, 0);
  return sub_26EF3AC3C();
}

uint64_t TTSAudioEffectBuilder.init(configurations:mode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v5 = *a4;
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = v5;
  return result;
}

uint64_t TTSAudioEffectBuilder.body.getter@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = type metadata accessor for OpenEndedEffectsView(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72A8, &qword_26EF3DE38);
  MEMORY[0x28223BE20](v33);
  v6 = &v30 - v5;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72B0, &qword_26EF3DE40);
  MEMORY[0x28223BE20](v34);
  v9 = &v30 - v8;
  v10 = *v1;
  v11 = v1[1];
  v13 = v1[2];
  v12 = v1[3];
  if (v12)
  {
    v31 = v7;
    sub_26EF3B2DC();

    swift_bridgeObjectRetain_n();
    v14 = sub_26EF3B2CC();
    v15 = swift_allocObject();
    *&v32 = v2;
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v12;
    v15[5] = v10;
    v15[6] = v11;
    v15[7] = v13;
    v15[8] = v12;

    v17 = sub_26EF3B2CC();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = v16;
    v18[4] = v10;
    v18[5] = v11;
    v18[6] = v13;
    v18[7] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72D8, &qword_26EF3DE88);
    sub_26EF3AC7C();
    v19 = v38;
    v20 = v39;
    v21 = v40;
    KeyPath = swift_getKeyPath();

    sub_26EE357B8(v19, v20, v21, KeyPath, sub_26EE3578C, 0);
    v23 = v31;
    v24 = v34;
    (*(v31 + 16))(v6, v9, v34);
    swift_storeEnumTagMultiPayload();
    sub_26EE35CAC();
    sub_26EE32850(&qword_2806C72D0, type metadata accessor for OpenEndedEffectsView, &protocol conformance descriptor for OpenEndedEffectsView);
    sub_26EF3A06C();

    return (*(v23 + 8))(v9, v24);
  }

  else
  {
    v38 = *v1;
    v39 = v11;
    v40 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72A0, &qword_26EF3DE30);
    sub_26EF3AC5C();
    v26 = v36;
    v32 = v37;
    *v4 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B30, &qword_26EF3D210);
    swift_storeEnumTagMultiPayload();
    v27 = v4 + *(v2 + 20);
    *v27 = v26;
    *(v27 + 8) = v32;
    v28 = v4 + *(v2 + 24);
    LOBYTE(v36) = 0;
    sub_26EF3AAEC();
    v29 = v39;
    *v28 = v38;
    *(v28 + 1) = v29;
    sub_26EE35C44(v4, v6, type metadata accessor for OpenEndedEffectsView);
    swift_storeEnumTagMultiPayload();
    sub_26EE35CAC();
    sub_26EE32850(&qword_2806C72D0, type metadata accessor for OpenEndedEffectsView, &protocol conformance descriptor for OpenEndedEffectsView);
    sub_26EF3A06C();
    return sub_26EE35D5C(v4);
  }
}

uint64_t sub_26EE34B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v67 = a4;
  v68 = a2;
  v8 = sub_26EF37EDC();
  MEMORY[0x28223BE20](v8 - 8);
  v57 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_26EF3814C();
  v10 = *(v56 - 8);
  v11 = MEMORY[0x28223BE20](v56);
  v55 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v54 = &v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7498, &qword_26EF3E208);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v50 - v15;
  v17 = sub_26EF3818C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_26EF3864C();
  result = MEMORY[0x28223BE20](v21);
  v74 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a1 + 16);
  v26 = MEMORY[0x277D84F90];
  if (v25)
  {
    v50 = a5;
    v76 = MEMORY[0x277D84F90];
    v27 = v10;
    v28 = result;
    v69 = v23;
    sub_26EE3A228(0, v25, 0);
    v73 = 0;
    v30 = *(v18 + 16);
    v29 = v18 + 16;
    v63 = v30;
    v26 = v76;
    v31 = a1 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
    v70 = (v69 + 32);
    v71 = (v69 + 48);
    v51 = (v27 + 8);
    v32 = *(v29 + 56);
    v61 = (v29 - 8);
    v62 = v32;
    v64 = v20;
    v65 = v29;
    v53 = a3;
    v66 = v17;
    v52 = v28;
    do
    {
      v72 = v26;
      v63(v20, v31, v17);
      v75[1] = v68;
      v75[2] = a3;
      v75[3] = v67;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72A0, &qword_26EF3DE30);
      v34 = MEMORY[0x274382CF0](v75, v33);
      v35 = v75[0];
      MEMORY[0x28223BE20](v34);
      *(&v50 - 2) = v20;
      v36 = v16;
      v37 = v16;
      v38 = v73;
      sub_26EE3554C(sub_26EE3B2B4, v35, v36);
      v73 = v38;
      v16 = v37;

      v39 = *v71;
      if ((*v71)(v37, 1, v28) == 1)
      {
        v60 = sub_26EF3817C();
        v59 = v40;
        v41 = v54;
        sub_26EF3815C();
        v58 = sub_26EF380EC();
        v42 = *v51;
        v43 = v41;
        v44 = v56;
        (*v51)(v43, v56);
        v45 = v55;
        sub_26EF3815C();
        sub_26EF380FC();
        v46 = v44;
        v16 = v37;
        v42(v45, v46);
        sub_26EF37ECC();
        a3 = v53;
        v28 = v52;
        sub_26EF385FC();
        if (v39(v37, 1, v28) != 1)
        {
          sub_26EE14578(v37, &qword_2806C7498, &qword_26EF3E208);
        }
      }

      else
      {
        (*v70)(v74, v37, v28);
      }

      v20 = v64;
      v17 = v66;
      (*v61)(v64, v66);
      v26 = v72;
      v76 = v72;
      v48 = *(v72 + 16);
      v47 = *(v72 + 24);
      v49 = v69;
      if (v48 >= v47 >> 1)
      {
        sub_26EE3A228((v47 > 1), v48 + 1, 1);
        v49 = v69;
        v26 = v76;
      }

      *(v26 + 16) = v48 + 1;
      result = (*(v49 + 32))(v26 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v48, v74, v28);
      v31 += v62;
      --v25;
    }

    while (v25);
    a5 = v50;
  }

  *a5 = v26;
  return result;
}

uint64_t sub_26EE35120()
{
  v0 = sub_26EF3814C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v22 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C74A0, &qword_26EF3E210);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7278, &qword_26EF3DE18);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v23 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  sub_26EF385EC();
  sub_26EF3815C();
  (*(v1 + 56))(v12, 0, 1, v0);
  v15 = *(v4 + 56);
  sub_26EE13B88(v14, v6, &qword_2806C7278, &qword_26EF3DE18);
  sub_26EE13B88(v12, &v6[v15], &qword_2806C7278, &qword_26EF3DE18);
  v16 = *(v1 + 48);
  if (v16(v6, 1, v0) != 1)
  {
    sub_26EE13B88(v6, v23, &qword_2806C7278, &qword_26EF3DE18);
    if (v16(&v6[v15], 1, v0) != 1)
    {
      v18 = v22;
      (*(v1 + 32))(v22, &v6[v15], v0);
      sub_26EE32850(&qword_2806C74A8, MEMORY[0x277D70148], MEMORY[0x277D70150]);
      v19 = v23;
      v17 = sub_26EF3B0AC();
      v20 = *(v1 + 8);
      v20(v18, v0);
      sub_26EE14578(v12, &qword_2806C7278, &qword_26EF3DE18);
      sub_26EE14578(v14, &qword_2806C7278, &qword_26EF3DE18);
      v20(v19, v0);
      sub_26EE14578(v6, &qword_2806C7278, &qword_26EF3DE18);
      return v17 & 1;
    }

    sub_26EE14578(v12, &qword_2806C7278, &qword_26EF3DE18);
    sub_26EE14578(v14, &qword_2806C7278, &qword_26EF3DE18);
    (*(v1 + 8))(v23, v0);
    goto LABEL_6;
  }

  sub_26EE14578(v12, &qword_2806C7278, &qword_26EF3DE18);
  sub_26EE14578(v14, &qword_2806C7278, &qword_26EF3DE18);
  if (v16(&v6[v15], 1, v0) != 1)
  {
LABEL_6:
    sub_26EE14578(v6, &qword_2806C74A0, &qword_26EF3E210);
    v17 = 0;
    return v17 & 1;
  }

  sub_26EE14578(v6, &qword_2806C7278, &qword_26EF3DE18);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_26EE3554C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = sub_26EF3864C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v20 = v7;
    v21 = a3;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v22 = v12;
    v13 = (v11 - 8);
    v14 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    while (1)
    {
      v22(v9, v14, v6);
      v16 = v23(v9);
      if (v3)
      {
        return (*v13)(v9, v6);
      }

      if (v16)
      {
        break;
      }

      (*v13)(v9, v6);
      v14 += v15;
      if (!--v10)
      {
        v17 = 1;
        v7 = v20;
        a3 = v21;
        return (*(v7 + 56))(a3, v17, 1, v6);
      }
    }

    v7 = v20;
    a3 = v21;
    (*(v20 + 32))(v21, v9, v6);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a3, v17, 1, v6);
}

uint64_t sub_26EE35720@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26EF3860C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26EE357B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72A0, &qword_26EF3DE30);
  MEMORY[0x274382CF0](v18, v12);
  v13 = *(v18[0] + 16);

  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v18[0] = 0;
  v18[1] = v13;
  v18[2] = sub_26EE3B054;
  v18[3] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72C8, &qword_26EF3DE80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72D8, &qword_26EF3DE88);
  sub_26EE154C8(&qword_2806C72C0, &qword_2806C72C8, &qword_26EF3DE80, MEMORY[0x277CDD938]);
  sub_26EE154C8(&qword_2806C7428, &qword_2806C72D8, &qword_26EF3DE88, MEMORY[0x277D83960]);
  sub_26EE154C8(&qword_2806C7430, &qword_2806C72D8, &qword_26EF3DE88, MEMORY[0x277D83980]);
  swift_getKeyPath();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a5;
  v15[6] = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_26EE3B0DC;
  *(v16 + 24) = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7488, &unk_26EF3E1F8);
  sub_26EE3B140();
  return sub_26EF3ACEC();
}

uint64_t sub_26EE35A44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26EF39DDC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B30, &qword_26EF3D210);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_26EE13B88(v2, &v14 - v9, &qword_2806C6B30, &qword_26EF3D210);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26EF396DC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_26EF3B46C();
    v13 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_26EE35C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_26EE35CAC()
{
  result = qword_2806C72B8;
  if (!qword_2806C72B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C72B0, &qword_26EF3DE40);
    sub_26EE154C8(&qword_2806C72C0, &qword_2806C72C8, &qword_26EF3DE80, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C72B8);
  }

  return result;
}

uint64_t sub_26EE35D5C(uint64_t a1)
{
  v2 = type metadata accessor for OpenEndedEffectsView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EE35DB8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_26EE35E24()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26EE35E7C(void *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72A0, &qword_26EF3DE30);
  return sub_26EF3AC3C();
}

uint64_t OpenEndedEffectsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v16[1] = a1;
  v3 = type metadata accessor for OpenEndedEffectsView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E8, &qword_26EF3DEC0);
  MEMORY[0x28223BE20](v7);
  v9 = v16 - v8;
  v16[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72F0, &qword_26EF3DEC8);
  sub_26EE154C8(&qword_2806C72F8, &qword_2806C72F0, &qword_26EF3DEC8, MEMORY[0x277CE14C0]);
  sub_26EF3A50C();
  v10 = v2 + *(v4 + 32);
  v11 = *v10;
  v12 = *(v10 + 8);
  v17 = v11;
  v18 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB1C();
  sub_26EE35C44(v2, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OpenEndedEffectsView);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_26EE36D50(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for OpenEndedEffectsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7300, &qword_26EF3DED0);
  sub_26EE36FFC();
  sub_26EE154C8(&qword_2806C7320, &qword_2806C7300, &qword_26EF3DED0, MEMORY[0x277CDDA18]);
  sub_26EF3A8BC();

  return sub_26EE14578(v9, &qword_2806C72E8, &qword_26EF3DEC0);
}

uint64_t sub_26EE361C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v43 = &v38 - v6;
  v7 = type metadata accessor for OpenEndedEffectsView(0);
  v8 = v7 - 8;
  v41 = *(v7 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7418, &qword_26EF3E1B0);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v42 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - v14;
  v16 = (a1 + *(v8 + 28));
  v50 = *v16;
  v51 = *(v16 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72A0, &qword_26EF3DE30);
  sub_26EF3AC5C();
  v50 = v48;
  v51 = v49;
  sub_26EF37EDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72C8, &qword_26EF3DE80);
  sub_26EE3A9E8();
  sub_26EE154C8(&qword_2806C72C0, &qword_2806C72C8, &qword_26EF3DE80, MEMORY[0x277CDD938]);
  sub_26EE3AAD4();
  sub_26EF3ACFC();
  v17 = v40;
  sub_26EE35C44(v40, &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OpenEndedEffectsView);
  v18 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v19 = swift_allocObject();
  sub_26EE36D50(&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for OpenEndedEffectsView);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_26EE3AB88;
  *(v20 + 24) = v19;
  v21 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7448, &qword_26EF3E1B8) + 36)];
  *v21 = sub_26EE3AD34;
  *(v21 + 1) = v20;
  sub_26EE35C44(v17, &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OpenEndedEffectsView);
  v22 = swift_allocObject();
  sub_26EE36D50(&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v18, type metadata accessor for OpenEndedEffectsView);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26EE3AD60;
  *(v23 + 24) = v22;
  v24 = *(v11 + 44);
  v39 = v15;
  v25 = &v15[v24];
  *v25 = sub_26EE3AEFC;
  v25[1] = v23;
  sub_26EE35C44(v17, &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OpenEndedEffectsView);
  v26 = swift_allocObject();
  sub_26EE36D50(&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v18, type metadata accessor for OpenEndedEffectsView);
  v27 = v43;
  sub_26EF3AB4C();
  v28 = v15;
  v29 = v42;
  sub_26EE13B88(v28, v42, &qword_2806C7418, &qword_26EF3E1B0);
  v31 = v44;
  v30 = v45;
  v32 = *(v45 + 16);
  v33 = v46;
  v32(v44, v27, v46);
  v34 = v47;
  sub_26EE13B88(v29, v47, &qword_2806C7418, &qword_26EF3E1B0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7450, &qword_26EF3E1C0);
  v32((v34 + *(v35 + 48)), v31, v33);
  v36 = *(v30 + 8);
  v36(v27, v33);
  sub_26EE14578(v39, &qword_2806C7418, &qword_26EF3E1B0);
  v36(v31, v33);
  return sub_26EE14578(v29, &qword_2806C7418, &qword_26EF3E1B0);
}

uint64_t sub_26EE36774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7460, &qword_26EF3E1C8);
  MEMORY[0x28223BE20](v3);
  type metadata accessor for TTSAudioEffectConfigurationView(0);
  sub_26EE32850(&qword_2806C7468, type metadata accessor for TTSAudioEffectConfigurationView, &protocol conformance descriptor for TTSAudioEffectConfigurationView);
  sub_26EF3A4EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7470, &qword_26EF3E1D0);
  sub_26EE154C8(&qword_2806C7478, &qword_2806C7470, &qword_26EF3E1D0, MEMORY[0x277CE1138]);
  sub_26EE154C8(&qword_2806C7480, &qword_2806C7460, &qword_26EF3E1C8, MEMORY[0x277CDE580]);
  return sub_26EF3998C();
}

uint64_t sub_26EE3691C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26EF3864C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7278, &qword_26EF3DE18);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7270, &qword_26EF3DE10);
  v42 = a1;
  MEMORY[0x274382CF0]();
  sub_26EF385EC();
  v17 = *(v5 + 8);
  v43 = v4;
  v40 = v17;
  v17(v10, v4);
  v18 = sub_26EF3814C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v16, 1, v18) == 1)
  {
    sub_26EE14578(v16, &qword_2806C7278, &qword_26EF3DE18);
    v21 = 0;
  }

  else
  {
    v39 = a2;
    sub_26EF3810C();
    v23 = v22;
    (*(v19 + 8))(v16, v18);
    if (v23)
    {
      v21 = sub_26EF3AA8C();
    }

    else
    {
      v21 = 0;
    }

    a2 = v39;
  }

  MEMORY[0x274382CF0](v41);
  sub_26EF385EC();
  v40(v8, v43);
  if (v20(v14, 1, v18) == 1)
  {
    v24 = sub_26EE14578(v14, &qword_2806C7278, &qword_26EF3DE18);
    v27 = 0;
    v28 = 0xE000000000000000;
  }

  else
  {
    v27 = sub_26EF3811C();
    v28 = v29;
    v24 = (*(v19 + 8))(v14, v18);
  }

  v44 = v27;
  v45 = v28;
  sub_26EE12538(v24, v25, v26);
  v30 = sub_26EF3A5DC();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v34 &= 1u;
  sub_26EE13B20(v30, v32, v34);

  *a2 = v21;
  *(a2 + 8) = v30;
  *(a2 + 16) = v32;
  *(a2 + 24) = v34;
  *(a2 + 32) = v36;
  sub_26EE12ABC(v30, v32, v34);
}

uint64_t sub_26EE36CCC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26EE17094() & 1;
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  v8 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v7, v6, 0);
  sub_26EE12538(v8._countAndFlagsBits, v8._object, v9);
  result = sub_26EF3A5DC();
  *a3 = result;
  *(a3 + 8) = v11;
  *(a3 + 16) = v12 & 1;
  *(a3 + 24) = v13;
  return result;
}

uint64_t sub_26EE36D50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26EE36DB8()
{
  type metadata accessor for OpenEndedEffectsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7378, &qword_26EF3E128);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7380, &unk_26EF3E130);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7388, &unk_26EF3FAE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7390, &qword_26EF3E140);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7398, &qword_26EF3E148);
  v0 = sub_26EE154C8(&qword_2806C73A0, &qword_2806C7398, &qword_26EF3E148, MEMORY[0x277CDE5A0]);
  sub_26EE12538(v0, v1, v2);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C73A8, &qword_26EF3E150);
  sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_26EF39ADC();
}

unint64_t sub_26EE36FFC()
{
  result = qword_2806C7308;
  if (!qword_2806C7308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C72E8, &qword_26EF3DEC0);
    sub_26EE154C8(&qword_2806C7310, &qword_2806C7318, &qword_26EF3DED8, MEMORY[0x277CDE5A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7308);
  }

  return result;
}

uint64_t sub_26EE3711C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v38 = a2;
  v3 = sub_26EF39E2C();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7398, &qword_26EF3E148);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7390, &qword_26EF3E140);
  v33 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7380, &unk_26EF3E130);
  v14 = *(v13 - 8);
  v36 = v13;
  v37 = v14;
  MEMORY[0x28223BE20](v13);
  v31 = &v31 - v15;
  v40 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C73B8, &qword_26EF3E158);
  sub_26EE3917C();
  sub_26EF3A50C();
  v16 = sub_26EE17094() & 1;
  v17._countAndFlagsBits = 0x454646455F444441;
  v17._object = 0xEA00000000005443;
  v41 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v17, v16, 0);
  v18 = sub_26EE154C8(&qword_2806C73A0, &qword_2806C7398, &qword_26EF3E148, MEMORY[0x277CDE5A0]);
  v21 = sub_26EE12538(v18, v19, v20);
  v22 = MEMORY[0x277D837D0];
  sub_26EF3A75C();

  (*(v7 + 8))(v9, v6);
  v24 = v34;
  v23 = v35;
  (*(v34 + 104))(v5, *MEMORY[0x277CDDDC0], v35);
  v41._countAndFlagsBits = v6;
  v41._object = v22;
  v42 = v18;
  v43 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v31;
  sub_26EF3A87C();
  (*(v24 + 8))(v5, v23);
  (*(v33 + 8))(v12, v10);
  v39 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7388, &unk_26EF3FAE0);
  v41._countAndFlagsBits = v10;
  v41._object = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C73A8, &qword_26EF3E150);
  v28 = sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150, MEMORY[0x277CDD7A8]);
  v41._countAndFlagsBits = v27;
  v41._object = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v36;
  sub_26EF3A8EC();
  return (*(v37 + 8))(v26, v29);
}

uint64_t sub_26EE37614(uint64_t a1)
{
  v2 = type metadata accessor for OpenEndedEffectsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = sub_26EF3816C();
  swift_getKeyPath();
  sub_26EE35C44(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OpenEndedEffectsView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_26EE36D50(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for OpenEndedEffectsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C73D8, &qword_26EF3E188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C73D0, &unk_26EF3E160);
  sub_26EE154C8(&qword_2806C73E0, &qword_2806C73D8, &qword_26EF3E188, MEMORY[0x277D83980]);
  sub_26EE32850(&qword_2806C73E8, MEMORY[0x277D70160], MEMORY[0x277D70168]);
  sub_26EE154C8(&qword_2806C73C8, &qword_2806C73D0, &unk_26EF3E160, MEMORY[0x277CDF028]);
  return sub_26EF3ACEC();
}

uint64_t sub_26EE3784C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[1] = a3;
  v5 = sub_26EF3818C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OpenEndedEffectsView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EE35C44(a2, v12, type metadata accessor for OpenEndedEffectsView);
  (*(v6 + 16))(v8, a1, v5);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + *(v6 + 80) + v13) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_26EE36D50(v12, v15 + v13, type metadata accessor for OpenEndedEffectsView);
  (*(v6 + 32))(v15 + v14, v8, v5);
  v17[4] = a1;
  v17[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C73F0, &qword_26EF3E190);
  sub_26EE154C8(&qword_2806C73F8, &qword_2806C73F0, &qword_26EF3E190, MEMORY[0x277CE1138]);
  return sub_26EF3AB4C();
}

uint64_t sub_26EE37AB8(uint64_t a1)
{
  v2 = sub_26EF37EDC();
  MEMORY[0x28223BE20](v2 - 8);
  v20 = sub_26EF3864C();
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EF3817C();
  v6 = MEMORY[0x277D84F90];
  sub_26EE3A7E8(MEMORY[0x277D84F90]);
  sub_26EE3A8EC(v6);
  sub_26EF37ECC();
  sub_26EF385FC();
  v7 = type metadata accessor for OpenEndedEffectsView(0);
  v8 = *(v7 + 20);
  v21 = a1;
  v9 = (a1 + v8);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v26 = *v9;
  v27 = v11;
  v28 = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72A0, &qword_26EF3DE30);
  MEMORY[0x274382CF0](&v29);
  v13 = v29;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_26EE3A420(0, v13[2] + 1, 1, v13);
  }

  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = sub_26EE3A420((v14 > 1), v15 + 1, 1, v13);
  }

  v13[2] = v15 + 1;
  (*(v3 + 32))(v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, v5, v20);
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v22 = v13;
  sub_26EF3AC3C();

  v16 = v21 + *(v7 + 24);
  v17 = *v16;
  v18 = *(v16 + 8);
  LOBYTE(v26) = v17;
  v27 = v18;
  LOBYTE(v23) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  return sub_26EF3AB0C();
}

uint64_t sub_26EE37D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v53 = a3;
  v54 = a2;
  v4 = sub_26EF396DC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v49 - v9;
  v11 = sub_26EF3814C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v49 - v16;
  v51 = a1;
  sub_26EF3815C();
  sub_26EF3810C();
  v19 = v18;
  v49 = *(v12 + 8);
  v49(v17, v11);
  if (v19)
  {
    v55 = sub_26EF3AA8C();
    sub_26EE35A44(v10);
    v20 = *(v5 + 104);
    v50 = *MEMORY[0x277CDF3C0];
    v20(v8);
    v21 = sub_26EF396CC();
    v22 = *(v5 + 8);
    v22(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v23 = sub_26EF3A9EC();
    }

    else
    {
      v23 = sub_26EF3A9BC();
    }

    v24 = v23;

    v52 = v24;
  }

  else
  {
    v55 = 0;
    v52 = 0;
    v50 = *MEMORY[0x277CDF3C0];
  }

  sub_26EF3815C();
  v25 = sub_26EF3811C();
  v27 = v26;
  v28 = (v49)(v15, v11);
  v56 = v25;
  v57 = v27;
  sub_26EE12538(v28, v29, v30);
  v31 = sub_26EF3A5DC();
  v33 = v32;
  v35 = v34;
  sub_26EE35A44(v10);
  (*(v5 + 104))(v8, v50, v4);
  LOBYTE(v27) = sub_26EF396CC();
  v36 = *(v5 + 8);
  v36(v8, v4);
  v36(v10, v4);
  if (v27)
  {
    v37 = sub_26EF3A9EC();
  }

  else
  {
    v37 = sub_26EF3A9BC();
  }

  v56 = v37;
  v38 = sub_26EF3A58C();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_26EE12ABC(v31, v33, v35 & 1);

  v45 = v55;
  v46 = v52;
  sub_26EE187A8(v55, v52);
  sub_26EE13B20(v38, v40, v42 & 1);

  sub_26EE187E8(v45, v46);
  v47 = v53;
  *v53 = v45;
  v47[1] = v46;
  v47[2] = v38;
  v47[3] = v40;
  *(v47 + 32) = v42 & 1;
  v47[5] = v44;
  sub_26EE12ABC(v38, v40, v42 & 1);

  return sub_26EE187E8(v45, v46);
}

uint64_t sub_26EE381B8(uint64_t a1)
{
  v2 = sub_26EF3A13C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C73A8, &qword_26EF3E150);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_26EF3A0FC();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080, MEMORY[0x277CDF028]);
  sub_26EF397CC();
  v7 = sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150, MEMORY[0x277CDD7A8]);
  MEMORY[0x274382230](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26EE383A4(uint64_t a1)
{
  v2 = type metadata accessor for OpenEndedEffectsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_26EE17094() & 1;
  v6._countAndFlagsBits = 0x4C45434E4143;
  v6._object = 0xE600000000000000;
  v13 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v6, v5, 0);
  sub_26EE35C44(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OpenEndedEffectsView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v9 = sub_26EE36D50(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for OpenEndedEffectsView);
  sub_26EE12538(v9, v10, v11);
  return sub_26EF3AB7C();
}

uint64_t sub_26EE38520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26EF3812C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26EE385F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26EF3812C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_26EE386B0(uint64_t a1)
{
  sub_26EF3812C();
  if (v1 <= 0x3F)
  {
    sub_26EE38E3C(319, &qword_2806C7328, &qword_2806C7330, &qword_26EF3E048);
    if (v2 <= 0x3F)
    {
      sub_26EE38764();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26EE38764()
{
  if (!qword_2806C7338)
  {
    v0 = sub_26EF3B03C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C7338);
    }
  }
}

uint64_t sub_26EE387D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7270, &qword_26EF3DE10);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26EE38864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7270, &qword_26EF3DE10);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_26EE38900(uint64_t a1)
{
  sub_26EE38DD8(319, &qword_2806C7340, MEMORY[0x277CE6790], MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26EE389A8(uint64_t a1, int a2)
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

uint64_t sub_26EE389F0(uint64_t result, int a2, int a3)
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

uint64_t sub_26EE38A4C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26EE38A9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26EE38AF0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_26EE38B08(void *result, int a2)
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

uint64_t sub_26EE38B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6BD0, qword_26EF3D350);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26EE38C2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6BD0, qword_26EF3D350);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_26EE38CF4(uint64_t a1)
{
  sub_26EE38DD8(319, &qword_2806C6BD8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_26EE38E3C(319, &qword_2806C7348, &qword_2806C72D8, &qword_26EF3DE88);
    if (v2 <= 0x3F)
    {
      sub_26EE38E90();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26EE38DD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26EE38E3C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_26EF3AC9C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26EE38E90()
{
  if (!qword_2806C7350)
  {
    v0 = sub_26EF3AB2C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C7350);
    }
  }
}

unint64_t sub_26EE38EE4()
{
  result = qword_2806C7358;
  if (!qword_2806C7358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7360, &qword_26EF3E118);
    sub_26EE31380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7358);
  }

  return result;
}

uint64_t sub_26EE38F70()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7280, &qword_26EF3DE20);
  v0 = sub_26EE33CAC();
  sub_26EE12538(v0, v1, v2);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_26EE38FEC()
{
  result = qword_2806C7368;
  if (!qword_2806C7368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7370, &qword_26EF3E120);
    sub_26EE35CAC();
    sub_26EE32850(&qword_2806C72D0, type metadata accessor for OpenEndedEffectsView, &protocol conformance descriptor for OpenEndedEffectsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7368);
  }

  return result;
}

uint64_t sub_26EE390A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C72E8, &qword_26EF3DEC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7300, &qword_26EF3DED0);
  sub_26EE36FFC();
  sub_26EE154C8(&qword_2806C7320, &qword_2806C7300, &qword_26EF3DED0, MEMORY[0x277CDDA18]);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_26EE3917C()
{
  result = qword_2806C73C0;
  if (!qword_2806C73C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C73B8, &qword_26EF3E158);
    sub_26EE154C8(&qword_2806C73C8, &qword_2806C73D0, &unk_26EF3E160, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C73C0);
  }

  return result;
}

uint64_t objectdestroy_25Tm()
{
  v1 = *(type metadata accessor for OpenEndedEffectsView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B30, &qword_26EF3D210);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26EF396DC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE393BC()
{
  v1 = *(type metadata accessor for OpenEndedEffectsView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_26EF3818C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B30, &qword_26EF3D210);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26EF396DC();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  else
  {
  }

  v10 = (v3 + v4 + v7) & ~v7;

  (*(v6 + 8))(v0 + v10, v5);

  return MEMORY[0x2821FE8E8](v0, v10 + v8, v2 | v7 | 7);
}

uint64_t sub_26EE3958C()
{
  v1 = *(type metadata accessor for OpenEndedEffectsView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_26EF3818C();

  return sub_26EE37AB8(v0 + v2);
}

__n128 sub_26EE39658@<Q0>(uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = sub_26EF39E4C();
  v15 = 1;
  sub_26EE37D84(v5, v4, v12);
  v7 = v13;
  v8 = v14;
  result = v12[0];
  v10 = v12[1];
  v11 = v15;
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 24) = result;
  *(a2 + 40) = v10;
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  return result;
}

uint64_t sub_26EE396D8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 4 * v12);

    v17 = sub_26EE1FCF4(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 4 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_26EE39814(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_26EF3864C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = a2;
  v15[2] = a3;
  v15[3] = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72A0, &qword_26EF3DE30);
  result = MEMORY[0x274382CF0](v15, v13);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v15[0] + 16) > a1)
  {
    (*(v10 + 16))(v12, v15[0] + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a1, v9);

    swift_getAtKeyPath();
    (*(v10 + 8))(v12, v9);
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_26EE3998C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7270, &qword_26EF3DE10);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - v13;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a4;
  v15[5] = a5;
  v15[6] = a6;
  v15[7] = a1;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a4;
  v16[5] = a5;
  v16[6] = a6;
  v16[7] = a1;
  sub_26EF3864C();
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_26EF3AC7C();
  a7(v14);
  return sub_26EE14578(v14, &qword_2806C7270, &qword_26EF3DE10);
}

uint64_t sub_26EE39B10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7410, &qword_26EF3EDC0);
  v33 = v4;
  result = sub_26EF3B7BC();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_26EF3B87C();
      sub_26EF3B16C();
      result = sub_26EF3B8CC();
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
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_26EE39DB4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26EF3B6AC() + 1) & ~v5;
    do
    {
      sub_26EF3B87C();

      sub_26EF3B16C();
      v9 = sub_26EF3B8CC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 4 * v3);
        v16 = (v14 + 4 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_26EE39F64(uint64_t a1, uint64_t a2, char a3, float a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_26EE1FCF4(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_26EE39B10(v16, a3 & 1);
      result = sub_26EE1FCF4(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_26EF3B86C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_26EE3A0C0();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 4 * result) = a4;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 4 * result) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void *sub_26EE3A0C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7410, &qword_26EF3EDC0);
  v2 = *v0;
  v3 = sub_26EF3B7AC();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
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

void *sub_26EE3A228(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26EE3A248(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26EE3A248(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7400, &qword_26EF3E198);
  v10 = *(sub_26EF3864C() - 8);
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
  v15 = *(sub_26EF3864C() - 8);
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

void *sub_26EE3A420(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7400, &qword_26EF3E198);
  v10 = *(sub_26EF3864C() - 8);
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
  v15 = *(sub_26EF3864C() - 8);
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

void *sub_26EE3A5F8@<X0>(uint64_t a1@<X2>, unint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v9[1] = *a1;
  v10 = *(a1 + 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72A0, &qword_26EF3DE30);
  result = MEMORY[0x274382CF0](v9, v5);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = v9[0];
    if (v4 < *(v9[0] + 16))
    {
      v8 = sub_26EF3864C();
      (*(*(v8 - 8) + 16))(a3, v7 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * v4, v8);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26EE3A6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = *a5;
  v10[1] = *a4;
  v11 = *(a4 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72A0, &qword_26EF3DE30);
  MEMORY[0x274382CF0](v10);
  v7 = v10[0];
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_26EE3A7D4(v7);
  v7 = result;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v6 < v7[2])
  {
    v9 = sub_26EF3864C();
    (*(*(v9 - 8) + 24))(v7 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)) + *(*(v9 - 8) + 72) * v6, a1, v9);
    v10[0] = v7;
    return sub_26EF3AC3C();
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_26EE3A7E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7410, &qword_26EF3EDC0);
    v3 = sub_26EF3B7CC();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_26EE1FCF4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_26EE3A8EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7408, &unk_26EF3E1A0);
    v3 = sub_26EF3B7CC();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_26EE1FCF4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_26EE3A9E8()
{
  result = qword_2806C7420;
  if (!qword_2806C7420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C72A0, &qword_26EF3DE30);
    sub_26EE154C8(&qword_2806C7428, &qword_2806C72D8, &qword_26EF3DE88, MEMORY[0x277D83960]);
    sub_26EE154C8(&qword_2806C7430, &qword_2806C72D8, &qword_26EF3DE88, MEMORY[0x277D83980]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7420);
  }

  return result;
}

unint64_t sub_26EE3AAD4()
{
  result = qword_2806C7438;
  if (!qword_2806C7438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7270, &qword_26EF3DE10);
    sub_26EE32850(&qword_2806C7440, MEMORY[0x277CE6790], MEMORY[0x277CE6798]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7438);
  }

  return result;
}

uint64_t sub_26EE3AB88(uint64_t a1, uint64_t a2)
{
  type metadata accessor for OpenEndedEffectsView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72A0, &qword_26EF3DE30);
  MEMORY[0x274382CF0](&v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72D8, &qword_26EF3DE88);
  sub_26EE154C8(&qword_2806C7428, &qword_2806C72D8, &qword_26EF3DE88, MEMORY[0x277D83960]);
  sub_26EF3B09C();
  sub_26EF3AC3C();
}

uint64_t sub_26EE3ACFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26EE3AD60(uint64_t a1)
{
  type metadata accessor for OpenEndedEffectsView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72A0, &qword_26EF3DE30);
  MEMORY[0x274382CF0](&v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72D8, &qword_26EF3DE88);
  sub_26EE154C8(&qword_2806C7428, &qword_2806C72D8, &qword_26EF3DE88, MEMORY[0x277D83960]);
  sub_26EE154C8(&qword_2806C7458, &qword_2806C72D8, &qword_26EF3DE88, MEMORY[0x277D83990]);
  sub_26EF3B3BC();
  sub_26EF3AC3C();
}

uint64_t sub_26EE3AF2C(char a1)
{
  type metadata accessor for OpenEndedEffectsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  return sub_26EF3AB0C();
}

uint64_t sub_26EE3B004()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *sub_26EE3B054@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_26EE39814(*a1, v2[2], v2[3], v2[4], v2[5]);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_26EE3B08C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26EE3B0F8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = a1[1];
  v6[1] = a1[2];
  v7 = v3;
  v6[0] = v4;
  return v2(&v7, v6);
}

unint64_t sub_26EE3B140()
{
  result = qword_2806C7490;
  if (!qword_2806C7490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7488, &unk_26EF3E1F8);
    sub_26EE275F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7490);
  }

  return result;
}

uint64_t objectdestroy_101Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

__n128 sub_26EE3B238@<Q0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = sub_26EF39E4C();
  sub_26EE3691C(v4, &v10);
  v6 = v11;
  v7 = v12;
  v8 = v13;
  result = v10;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 56) = v8;
  return result;
}

unint64_t sub_26EE3B2E4()
{
  result = qword_2806C74D0;
  if (!qword_2806C74D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C74B8, &qword_26EF3E220);
    sub_26EE154C8(&qword_2806C7230, &qword_2806C7178, &qword_26EF3DD70, MEMORY[0x277CDF068]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C74D0);
  }

  return result;
}

uint64_t sub_26EE3B3D8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t objectdestroy_109Tm()
{
  v1 = *(type metadata accessor for TTSAudioEffectConfigurationView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7270, &qword_26EF3DE10) + 32);
  v6 = sub_26EF3864C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE3B580()
{
  type metadata accessor for TTSAudioEffectConfigurationView(0);

  return sub_26EE34500();
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(type metadata accessor for TTSAudioEffectControl(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_26EF3812C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE3B6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (type metadata accessor for TTSAudioEffectControl(0) - 8);
  v6 = v2 + ((*(*v5 + 80) + 16) & ~*(*v5 + 80));
  v7 = sub_26EF3812C();
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7158, &qword_26EF3DD50);
  sub_26EF3AC5C();
  v8 = *(v6 + v5[8]);
  v9 = a2 + v5[7];
  *v9 = v11;
  *(v9 + 8) = v12;
  *(a2 + v5[8]) = v8;
}

uint64_t sub_26EE3B80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_26EE12538(a1, a2, a3);

  result = sub_26EF3A5DC();
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7 & 1;
  *(a4 + 24) = v8;
  return result;
}

unint64_t sub_26EE3B878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2806C74E8;
  if (!qword_2806C74E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C74E8);
  }

  return result;
}

uint64_t type metadata accessor for DeleteVoiceButton(uint64_t a1)
{
  result = qword_2806CB5B0;
  if (!qword_2806CB5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EE3B984@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = type metadata accessor for DeleteVoiceButton(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7138, &unk_26EF3DCC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v47 - v11;
  v13 = sub_26EF3873C();
  v52 = *(v13 - 8);
  v53 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7518, &qword_26EF3E340);
  MEMORY[0x28223BE20](v55);
  v54 = &v47 - v16;
  sub_26EE13B88(v2 + *(v4 + 40), v12, &qword_2806C7088, &unk_26EF3E330);
  v17 = sub_26EF38DBC();
  LODWORD(v4) = (*(*(v17 - 8) + 48))(v12, 1, v17);
  sub_26EE14578(v12, &qword_2806C7088, &unk_26EF3E330);
  v18 = sub_26EE17094();
  if (v4 == 1)
  {
    v19 = 0xEF4543494F565F45;
    v20 = v18 & 1;
    v21 = 0x54454C45445F4256;
  }

  else
  {
    v19 = 0x800000026EF454A0;
    v20 = v18 & 1;
    v21 = 0xD000000000000010;
  }

  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(*&v21, v20, 0);
  sub_26EF395FC();
  v22 = sub_26EF3961C();
  (*(*(v22 - 8) + 56))(v9, 0, 1, v22);
  sub_26EE3BF90(v2, &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v5 + 80);
  v24 = v2;
  v51 = v2;
  v25 = (v23 + 16) & ~v23;
  v26 = swift_allocObject();
  sub_26EE3C248(&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  sub_26EF3874C();
  IsPad = AXDeviceIsPad();
  v49 = IsPad;
  v50 = &v47;
  MEMORY[0x28223BE20](IsPad);
  *(&v47 - 2) = v24;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7520, &qword_26EF3E348);
  v29 = sub_26EE40CBC(&qword_2806C7100, MEMORY[0x277CE7690], MEMORY[0x277CE7688]);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7528, &unk_26EF3E350);
  v48 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7530, &qword_26EF43ED0);
  v34 = sub_26EE12538(v31, v32, v33);
  v35 = sub_26EE3C520();
  v36 = sub_26EE3C584();
  v37 = v53;
  v57 = v53;
  v58 = MEMORY[0x277D837D0];
  v59 = v30;
  v60 = v31;
  v61 = v29;
  v62 = v34;
  v63 = v35;
  v64 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v54;
  sub_26EE82FB8(v49, sub_26EE3C350, (&v47 - 4), v37, v28, v29, OpaqueTypeConformance2, v54);
  (*(v52 + 8))(v15, v37);
  v40 = AXDeviceIsPad();
  v41 = v40;
  v53 = &v47;
  MEMORY[0x28223BE20](v40);
  *(&v47 - 2) = v51;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7548, &qword_26EF3E360);
  v43 = sub_26EE3D2D8();
  v44 = v55;
  v57 = v55;
  v58 = MEMORY[0x277D837D0];
  v59 = v48;
  v60 = v31;
  v61 = v43;
  v62 = v34;
  v63 = v35;
  v64 = v36;
  v45 = swift_getOpaqueTypeConformance2();
  sub_26EE82FB8(v41 ^ 1u, sub_26EE3D124, (&v47 - 4), v44, v42, v43, v45, v56);
  return sub_26EE3D430(v39);
}

uint64_t sub_26EE3BF90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeleteVoiceButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE3BFF4()
{
  v1 = type metadata accessor for DeleteVoiceButton(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_26EE05C9C(*(v0 + v4), *(v0 + v4 + 8));
  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_26EF3988C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  v9 = sub_26EF38AAC();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v5 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = v1[8];
  v12 = sub_26EF38DBC();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v5 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_26EE3C248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeleteVoiceButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE3C2AC()
{
  type metadata accessor for DeleteVoiceButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  return sub_26EF3AB0C();
}

uint64_t sub_26EE3C350()
{
  v0 = sub_26EE17094();
  v1._object = 0x800000026EF454E0;
  v2 = v0 & 1;
  v1._countAndFlagsBits = 0xD000000000000011;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v1, v2, 0);
  type metadata accessor for DeleteVoiceButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB1C();
  sub_26EF3873C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7528, &unk_26EF3E350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7530, &qword_26EF43ED0);
  v3 = sub_26EE40CBC(&qword_2806C7100, MEMORY[0x277CE7690], MEMORY[0x277CE7688]);
  sub_26EE12538(v3, v4, v5);
  sub_26EE3C520();
  sub_26EE3C584();
  sub_26EF3A89C();
}

unint64_t sub_26EE3C520()
{
  result = qword_2806C7538;
  if (!qword_2806C7538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7528, &unk_26EF3E350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7538);
  }

  return result;
}

unint64_t sub_26EE3C584()
{
  result = qword_2806C7540;
  if (!qword_2806C7540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7530, &qword_26EF43ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7540);
  }

  return result;
}

uint64_t sub_26EE3C600@<X0>(char *a1@<X8>)
{
  v109 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  MEMORY[0x28223BE20](v1 - 8);
  v112 = &v89 - v2;
  v3 = sub_26EF38AAC();
  v4 = *(v3 - 8);
  v110 = v3;
  v111 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v97 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v6;
  MEMORY[0x28223BE20](v5);
  v98 = &v89 - v7;
  v8 = type metadata accessor for DeleteVoiceButton(0);
  v103 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v104 = v9;
  v105 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v89 - v11;
  v100 = sub_26EF38DBC();
  v13 = *(v100 - 8);
  v14 = MEMORY[0x28223BE20](v100);
  v95 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v15;
  MEMORY[0x28223BE20](v14);
  v101 = &v89 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7558, &unk_26EF3E368);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v108 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v107 = &v89 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v114 = &v89 - v23;
  MEMORY[0x28223BE20](v22);
  v117 = &v89 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7138, &unk_26EF3DCC0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v89 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v115 = &v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v89 - v32;
  v34 = sub_26EE17094() & 1;
  v35._countAndFlagsBits = 0x45434E41435F4256;
  v35._object = 0xE90000000000004CLL;
  v118 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v35, v34, 0);
  sub_26EF3960C();
  v36 = sub_26EF3961C();
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  v39 = v37 + 56;
  v40 = v38(v27, 0, 1, v36);
  v43 = sub_26EE12538(v40, v41, v42);
  v113 = v33;
  v99 = v43;
  sub_26EF3AB5C();
  v102 = v8;
  sub_26EE13B88(v116 + *(v8 + 32), v12, &qword_2806C7088, &unk_26EF3E330);
  v44 = v100;
  v45 = (*(v13 + 48))(v12, 1);
  v106 = v29;
  v94 = v36;
  v92 = v38;
  v91 = v39;
  if (v45 == 1)
  {
    sub_26EE14578(v12, &qword_2806C7088, &unk_26EF3E330);
    v46 = 1;
  }

  else
  {
    v90 = *(v13 + 32);
    v47 = v101;
    v90();
    v48 = sub_26EE17094();
    v49._object = 0xEF4543494F565F45;
    v50 = v48 & 1;
    v49._countAndFlagsBits = 0x54454C45445F4256;
    v118 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v49, v50, 0);
    sub_26EF395FC();
    v38(v27, 0, 1, v36);
    v51 = v105;
    sub_26EE3BF90(v116, v105);
    v52 = v95;
    v53 = v47;
    v54 = v44;
    (*(v13 + 16))(v95, v53, v44);
    v55 = (*(v103 + 80) + 16) & ~*(v103 + 80);
    v56 = v51;
    v57 = (v104 + *(v13 + 80) + v55) & ~*(v13 + 80);
    v58 = swift_allocObject();
    sub_26EE3C248(v56, v58 + v55);
    v59 = v117;
    (v90)(v58 + v57, v52, v54);
    v29 = v106;
    v60 = v115;
    sub_26EF3AB5C();
    (*(v13 + 8))(v101, v54);
    (*(v29 + 32))(v59, v60, v28);
    v46 = 0;
  }

  v61 = v27;
  v62 = *(v29 + 56);
  v62(v117, v46, 1, v28);
  v63 = v112;
  sub_26EE13B88(v116 + *(v102 + 7), v112, &qword_2806C7080, &unk_26EF3DBF0);
  if ((*(v111 + 48))(v63, 1, v110) == 1)
  {
    sub_26EE14578(v112, &qword_2806C7080, &unk_26EF3DBF0);
    v64 = 1;
    v66 = v114;
    v65 = v115;
  }

  else
  {
    v67 = v111;
    v102 = v62;
    v101 = *(v111 + 32);
    v68 = v98;
    v69 = v110;
    (v101)(v98, v112, v110);
    v112 = v28;
    v70 = sub_26EE17094();
    v71._object = 0x800000026EF454C0;
    v72 = v70 & 1;
    v71._countAndFlagsBits = 0xD00000000000001ELL;
    v118 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v71, v72, 0);
    sub_26EF395FC();
    v92(v61, 0, 1, v94);
    v73 = v105;
    sub_26EE3BF90(v116, v105);
    v74 = v97;
    (*(v67 + 16))(v97, v68, v69);
    v75 = *(v103 + 80);
    v116 = v61;
    v76 = (v75 + 16) & ~v75;
    v77 = (v104 + *(v67 + 80) + v76) & ~*(v67 + 80);
    v78 = swift_allocObject();
    sub_26EE3C248(v73, v78 + v76);
    (v101)(v78 + v77, v74, v69);
    v62 = v102;
    v65 = v115;
    v28 = v112;
    sub_26EF3AB5C();
    v79 = v68;
    v29 = v106;
    (*(v67 + 8))(v79, v69);
    v66 = v114;
    (*(v29 + 32))(v114, v65, v28);
    v64 = 0;
  }

  v62(v66, v64, 1, v28);
  v80 = *(v29 + 16);
  v80(v65, v113, v28);
  v81 = v107;
  sub_26EE13B88(v117, v107, &qword_2806C7558, &unk_26EF3E368);
  v82 = v66;
  v83 = v108;
  sub_26EE13B88(v82, v108, &qword_2806C7558, &unk_26EF3E368);
  v84 = v29;
  v85 = v109;
  v80(v109, v65, v28);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7560, &qword_26EF3E378);
  sub_26EE13B88(v81, &v85[*(v86 + 48)], &qword_2806C7558, &unk_26EF3E368);
  sub_26EE13B88(v83, &v85[*(v86 + 64)], &qword_2806C7558, &unk_26EF3E368);
  sub_26EE14578(v114, &qword_2806C7558, &unk_26EF3E368);
  sub_26EE14578(v117, &qword_2806C7558, &unk_26EF3E368);
  v87 = *(v84 + 8);
  v87(v113, v28);
  sub_26EE14578(v83, &qword_2806C7558, &unk_26EF3E368);
  sub_26EE14578(v81, &qword_2806C7558, &unk_26EF3E368);
  return (v87)(v115, v28);
}

uint64_t sub_26EE3D124()
{
  v0 = sub_26EE17094();
  v1._object = 0x800000026EF454E0;
  v2 = v0 & 1;
  v1._countAndFlagsBits = 0xD000000000000011;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v1, v2, 0);
  type metadata accessor for DeleteVoiceButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7518, &qword_26EF3E340);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7528, &unk_26EF3E350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7530, &qword_26EF43ED0);
  v3 = sub_26EE3D2D8();
  sub_26EE12538(v3, v4, v5);
  sub_26EE3C520();
  sub_26EE3C584();
  sub_26EF3A79C();
}

unint64_t sub_26EE3D2D8()
{
  result = qword_2806C7550;
  if (!qword_2806C7550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7518, &qword_26EF3E340);
    sub_26EF3873C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7528, &unk_26EF3E350);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7530, &qword_26EF43ED0);
    v1 = sub_26EE40CBC(&qword_2806C7100, MEMORY[0x277CE7690], MEMORY[0x277CE7688]);
    sub_26EE12538(v1, v2, v3);
    sub_26EE3C520();
    sub_26EE3C584();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7550);
  }

  return result;
}

uint64_t sub_26EE3D430(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7518, &qword_26EF3E340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26EE3D498(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = sub_26EF386AC();
  v4 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - v8;
  v10 = sub_26EF38AAC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DeleteVoiceButton(0);
  sub_26EE13B88(a1 + *(v14 + 28), v9, &qword_2806C7080, &unk_26EF3DBF0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_26EE14578(v9, &qword_2806C7080, &unk_26EF3DBF0);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
LABEL_17:
    *a2 = v15;
    a2[1] = v16;
    a2[2] = v17;
    a2[3] = v18;
    return;
  }

  v42 = v10;
  v43 = a2;
  v41 = v11;
  v19 = *(v11 + 32);
  v46 = v13;
  v19(v13, v9, v10);
  sub_26EF3B40C();
  v20 = MEMORY[0x2743834C0]();
  v21 = *MEMORY[0x277CE7910];
  swift_beginAccess();
  v22 = *&v20[v21];

  v23 = sub_26EF3B3DC();
  v47 = v23;
  v24 = *(v23 + 16);
  v25 = v44;
  if (!v24)
  {
LABEL_13:

    (*(v41 + 8))(v46, v42);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
LABEL_16:
    a2 = v43;
    goto LABEL_17;
  }

  v26 = 0;
  v45 = v47 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v27 = (v4 + 8);
  while (v26 < *(v47 + 16))
  {
    (*(v4 + 16))(v6, v45 + *(v4 + 72) * v26, v25);
    v28 = sub_26EF3869C();
    v30 = v29;
    v31 = sub_26EF38A6C();
    if (v30)
    {
      if (v28 == v31 && v30 == v32)
      {

        (*v27)(v6, v44);
LABEL_15:

        v34 = sub_26EE17094();
        v35._object = 0x800000026EF45500;
        v36 = v34 & 1;
        v35._countAndFlagsBits = 0xD000000000000011;
        v48 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v35, v36, 0);
        sub_26EE12538(v48._countAndFlagsBits, v48._object, v37);
        v15 = sub_26EF3A5DC();
        v16 = v38;
        v18 = v39;
        v17 = v40 & 1;
        (*(v41 + 8))(v46, v42);
        goto LABEL_16;
      }

      v33 = sub_26EF3B82C();

      v25 = v44;
      (*v27)(v6, v44);
      if (v33)
      {
        goto LABEL_15;
      }
    }

    else
    {
      (*v27)(v6, v25);
    }

    if (v24 == ++v26)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_26EE3D918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_26EF38A2C();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = sub_26EF3883C();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v8 = sub_26EF37EDC();
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();
  v9 = sub_26EF39DDC();
  v5[14] = v9;
  v5[15] = *(v9 - 8);
  v5[16] = swift_task_alloc();
  sub_26EF3B2DC();
  v5[17] = sub_26EF3B2CC();
  v11 = sub_26EF3B29C();
  v5[18] = v11;
  v5[19] = v10;

  return MEMORY[0x2822009F8](sub_26EE3DB20, v11, v10);
}

uint64_t sub_26EE3DB20()
{
  v1 = v0[3];
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v3 = v2;
  }

  else
  {
    v5 = v0[15];
    v4 = v0[16];
    v6 = v0[14];

    sub_26EF3B46C();
    v7 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    (*(v5 + 8))(v4, v6);
    v3 = v0[2];
  }

  v0[20] = v3;
  MEMORY[0x274380E60]();
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_26EE3DC8C;
  v9 = v0[13];

  return VoiceBankingSession.deleteModel(modelID:)(v9);
}

uint64_t sub_26EE3DC8C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  *(*v1 + 176) = v0;

  (*(v5 + 8))(v4, v6);

  v7 = *(v2 + 152);
  v8 = *(v2 + 144);
  if (v0)
  {
    v9 = sub_26EE3DEFC;
  }

  else
  {
    v9 = sub_26EE3DE44;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_26EE3DE44()
{
  v1 = *(v0 + 24);

  sub_26EE3E168();
  v2 = type metadata accessor for DeleteVoiceButton(0);
  (*(v1 + *(v2 + 36)))();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26EE3DEFC()
{
  v1 = v0[22];

  sub_26EF3934C();
  v2 = v1;
  v3 = sub_26EF3881C();
  v4 = sub_26EF3B45C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[22];
  if (v5)
  {
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    (*(v8 + 104))(v7, *MEMORY[0x277D704D8], v9);
    sub_26EF38A4C();
    sub_26EE40CBC(&unk_2806C9CD0, MEMORY[0x277D70518], MEMORY[0x277D70520]);
    swift_allocError();
    sub_26EF389BC();
    (*(v8 + 8))(v7, v9);
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&dword_26EE01000, v3, v4, "%@", v10, 0xCu);
    sub_26EE14578(v11, &qword_2806C7140, &unk_26EF3E420);
    MEMORY[0x2743842A0](v11, -1, -1);
    MEMORY[0x2743842A0](v10, -1, -1);
  }

  else
  {
  }

  (*(v0[9] + 8))(v0[10], v0[8]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_26EE3E168()
{
  v1 = sub_26EF386AC();
  v60 = *(v1 - 8);
  v61 = v1;
  MEMORY[0x28223BE20](v1);
  v59 = &v49[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_26EF37EDC();
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v49[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = sub_26EF3883C();
  v58 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v7 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v49[-v9];
  v11 = sub_26EF38AAC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v49[-v16];
  v18 = type metadata accessor for DeleteVoiceButton(0);
  sub_26EE13B88(v0 + *(v18 + 28), v10, &qword_2806C7080, &unk_26EF3DBF0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_26EE14578(v10, &qword_2806C7080, &unk_26EF3DBF0);
  }

  (*(v12 + 32))(v17, v10, v11);
  v20 = sub_26EF3B40C();
  v21 = MEMORY[0x2743834C0]();
  v22 = *MEMORY[0x277CE7910];
  swift_beginAccess();
  v23 = *&v21[v22];

  v24 = sub_26EF3B3DC();
  MEMORY[0x28223BE20](v25);
  *&v49[-16] = v17;
  v55 = sub_26EE3F6A4(sub_26EE40C18, &v49[-32], v24);
  LOBYTE(v23) = v26;

  if (v23)
  {
    return (*(v12 + 8))(v17, v11);
  }

  v54 = v20;
  v27 = sub_26EE27DAC();
  v28 = v58;
  v29 = v62;
  (*(v58 + 16))(v7, v27, v62);
  (*(v12 + 16))(v15, v17, v11);
  v30 = sub_26EF3881C();
  v31 = sub_26EF3B47C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v51 = v32;
    v53 = swift_slowAlloc();
    v63[0] = v53;
    *v32 = 136315138;
    v52 = v30;
    MEMORY[0x274380B50]();
    sub_26EE40CBC(&qword_2806C7590, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v50 = v31;
    v33 = v57;
    v34 = sub_26EF3B7FC();
    v36 = v35;
    (*(v56 + 8))(v5, v33);
    v37 = *(v12 + 8);
    v37(v15, v11);
    v38 = sub_26EE40670(v34, v36, v63);

    v39 = v51;
    *(v51 + 1) = v38;
    v40 = v52;
    v41 = v39;
    _os_log_impl(&dword_26EE01000, v52, v50, "Found live speech preferred voice with ID %s. Removing preference.", v39, 0xCu);
    v42 = v53;
    __swift_destroy_boxed_opaque_existential_1(v53);
    MEMORY[0x2743842A0](v42, -1, -1);
    MEMORY[0x2743842A0](v41, -1, -1);

    v43 = (*(v28 + 8))(v7, v62);
  }

  else
  {

    v37 = *(v12 + 8);
    v37(v15, v11);
    v43 = (*(v28 + 8))(v7, v29);
  }

  v44 = MEMORY[0x2743834C0](v43);
  v45 = *MEMORY[0x277CE7910];
  swift_beginAccess();
  v46 = *&v44[v45];

  v47 = sub_26EF3B3CC();
  v48 = v59;
  sub_26EE3F790(v55, v59);
  (*(v60 + 8))(v48, v61);
  v47(v63, 0);

  return (v37)(v17, v11);
}

uint64_t sub_26EE3E810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v26 = a5;
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = type metadata accessor for DeleteVoiceButton(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v25 - v16;
  v18 = sub_26EF3B30C();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_26EE3BF90(a1, v14);
  (*(v8 + 16))(v10, a2, v7);
  sub_26EF3B2DC();
  v19 = sub_26EF3B2CC();
  v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v21 = (v13 + *(v8 + 80) + v20) & ~*(v8 + 80);
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v19;
  *(v22 + 24) = v23;
  sub_26EE3C248(v14, v22 + v20);
  (*(v8 + 32))(v22 + v21, v10, v7);
  sub_26EE2C388(0, 0, v17, v26, v22);
}

uint64_t sub_26EE3EA9C()
{
  v1 = type metadata accessor for DeleteVoiceButton(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  v3 = sub_26EF38AAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v17 = *(v4 + 64);
  v6 = v0 + ((v2 + 16) & ~v2);
  sub_26EE05C9C(*v6, *(v6 + 8));
  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_26EF3988C();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = v1[7];
  if (!(*(v4 + 48))(v6 + v9, 1, v3))
  {
    (*(v4 + 8))(v6 + v9, v3);
  }

  v10 = v1[8];
  v11 = sub_26EF38DBC();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v6 + v10, 1, v11))
  {
    (*(v12 + 8))(v6 + v10, v11);
  }

  v13 = v2 | v5;
  v14 = (((v2 + 16) & ~v2) + v16 + v5) & ~v5;

  (*(v4 + 8))(v0 + v14, v3);

  return MEMORY[0x2821FE8E8](v0, v14 + v17, v13 | 7);
}

uint64_t sub_26EE3EDA0()
{
  v1 = type metadata accessor for DeleteVoiceButton(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  v3 = sub_26EF38DBC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v17 = *(v4 + 64);
  v6 = v0 + ((v2 + 16) & ~v2);
  sub_26EE05C9C(*v6, *(v6 + 8));
  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_26EF3988C();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = v1[7];
  v10 = sub_26EF38AAC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v6 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = v1[8];
  if (!(*(v4 + 48))(v6 + v12, 1, v3))
  {
    (*(v4 + 8))(v6 + v12, v3);
  }

  v13 = v2 | v5;
  v14 = (((v2 + 16) & ~v2) + v16 + v5) & ~v5;

  (*(v4 + 8))(v0 + v14, v3);

  return MEMORY[0x2821FE8E8](v0, v14 + v17, v13 | 7);
}

uint64_t sub_26EE3F088(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for DeleteVoiceButton(0) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(a1(0) - 8);
  return sub_26EE3E810(v4 + v10, v4 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80)), a2, a3, a4);
}

uint64_t sub_26EE3F178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_26EF38A2C();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = sub_26EF3883C();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v8 = sub_26EF37EDC();
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();
  v9 = sub_26EF39DDC();
  v5[14] = v9;
  v5[15] = *(v9 - 8);
  v5[16] = swift_task_alloc();
  sub_26EF3B2DC();
  v5[17] = sub_26EF3B2CC();
  v11 = sub_26EF3B29C();
  v5[18] = v11;
  v5[19] = v10;

  return MEMORY[0x2822009F8](sub_26EE3F380, v11, v10);
}

uint64_t sub_26EE3F380()
{
  v1 = v0[3];
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v3 = v2;
  }

  else
  {
    v5 = v0[15];
    v4 = v0[16];
    v6 = v0[14];

    sub_26EF3B46C();
    v7 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    (*(v5 + 8))(v4, v6);
    v3 = v0[2];
  }

  v0[20] = v3;
  MEMORY[0x274380B50]();
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_26EE3F4EC;
  v9 = v0[13];

  return VoiceBankingSession.deleteVoice(voiceID:)(v9);
}

uint64_t sub_26EE3F4EC()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  *(*v1 + 176) = v0;

  (*(v5 + 8))(v4, v6);

  v7 = *(v2 + 152);
  v8 = *(v2 + 144);
  if (v0)
  {
    v9 = sub_26EE411B4;
  }

  else
  {
    v9 = sub_26EE411A8;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_26EE3F6A4(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_26EF386AC() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_26EE3F790@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26EE40D60(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = sub_26EF386AC();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26EE3F898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for VoiceBankingSession(0);
  sub_26EE40CBC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession, &protocol conformance descriptor for VoiceBankingSession);
  *a5 = sub_26EF3973C();
  *(a5 + 8) = v10 & 1;
  v11 = type metadata accessor for DeleteVoiceButton(0);
  v12 = v11[5];
  *(a5 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  swift_storeEnumTagMultiPayload();
  v13 = a5 + v11[6];
  sub_26EF3AAEC();
  *v13 = v16;
  *(v13 + 8) = v17;
  sub_26EE14D98(a1, a5 + v11[7], &qword_2806C7080, &unk_26EF3DBF0);
  result = sub_26EE14D98(a2, a5 + v11[8], &qword_2806C7088, &unk_26EF3E330);
  v15 = (a5 + v11[9]);
  *v15 = a3;
  v15[1] = a4;
  return result;
}

uint64_t sub_26EE3FA38(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7568, &unk_26EF3E3D0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_7;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[8];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[9]);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_26EE3FBC0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7568, &unk_26EF3E3D0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[7];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[9]) = (a2 - 1);
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[8];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

void sub_26EE3FD30(uint64_t a1)
{
  sub_26EE3FED4(319, &qword_2806C66B0, type metadata accessor for VoiceBankingSession, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_26EE3FED4(319, &qword_2806C7570, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_26EE38E90();
      if (v3 <= 0x3F)
      {
        sub_26EE3FED4(319, &qword_2806C70A8, MEMORY[0x277D70530], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_26EE3FED4(319, &qword_2806C70B0, MEMORY[0x277D705D8], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_26EE3FF38();
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

void sub_26EE3FED4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26EE3FF38()
{
  result = qword_2806C7578;
  if (!qword_2806C7578)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2806C7578);
  }

  return result;
}

unint64_t sub_26EE3FF8C()
{
  result = qword_2806C7580;
  if (!qword_2806C7580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7588, &qword_26EF3E3F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7518, &qword_26EF3E340);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7528, &unk_26EF3E350);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7530, &qword_26EF43ED0);
    v1 = sub_26EE3D2D8();
    sub_26EE12538(v1, v2, v3);
    sub_26EE3C520();
    sub_26EE3C584();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C7580);
  }

  return result;
}

uint64_t sub_26EE400C0()
{
  v1 = type metadata accessor for DeleteVoiceButton(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  v3 = sub_26EF38DBC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v17 = *(v4 + 64);
  swift_unknownObjectRelease();
  v6 = v0 + ((v2 + 32) & ~v2);
  sub_26EE05C9C(*v6, *(v6 + 8));
  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_26EF3988C();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = v1[7];
  v10 = sub_26EF38AAC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v6 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = v1[8];
  if (!(*(v4 + 48))(v6 + v12, 1, v3))
  {
    (*(v4 + 8))(v6 + v12, v3);
  }

  v13 = v2 | v5;
  v14 = (((v2 + 32) & ~v2) + v16 + v5) & ~v5;

  (*(v4 + 8))(v0 + v14, v3);

  return MEMORY[0x2821FE8E8](v0, v14 + v17, v13 | 7);
}

uint64_t sub_26EE4036C()
{
  v2 = *(type metadata accessor for DeleteVoiceButton(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_26EF38DBC() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_26EE05D7C;

  return sub_26EE3D918(v7, v8, v9, v0 + v3, v0 + v6);
}

void *sub_26EE40498(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7598, &qword_26EF3E430);
  v10 = *(sub_26EF386AC() - 8);
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
  v15 = *(sub_26EF386AC() - 8);
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

unint64_t sub_26EE40670(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26EE4073C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_26EE40D04(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26EE4073C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26EE40848(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_26EF3B73C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_26EE40848(uint64_t a1, unint64_t a2)
{
  v3 = sub_26EE40894(a1, a2);
  sub_26EE409C4(&unk_287EFD750);
  return v3;
}

void *sub_26EE40894(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26EE40AB0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26EF3B73C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26EF3B18C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26EE40AB0(v10, 0);
        result = sub_26EF3B6FC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26EE409C4(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26EE40B24(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}