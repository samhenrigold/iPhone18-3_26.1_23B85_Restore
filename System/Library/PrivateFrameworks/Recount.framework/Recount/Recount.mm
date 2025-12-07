uint64_t CountingMode.Display.Color.hashValue.getter()
{
  v1 = *v0;
  sub_261A85C44();
  MEMORY[0x266716F60](v1);
  return sub_261A85C84();
}

uint64_t sub_261A3444C()
{
  v1 = *v0;
  sub_261A85C44();
  MEMORY[0x266716F60](v1);
  return sub_261A85C84();
}

uint64_t sub_261A344C0(uint64_t a1)
{
  v2 = *v1;
  sub_261A85C44();
  MEMORY[0x266716F60](v2);
  return sub_261A85C84();
}

uint64_t CountingMode.Display.NormalizedArea.Element.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_261A85554();
  sub_261A85554();
  MEMORY[0x266716F60](v2);
  return MEMORY[0x266716F60](v3);
}

uint64_t CountingMode.Display.NormalizedArea.Element.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_261A85C44();
  sub_261A85554();
  sub_261A85554();
  MEMORY[0x266716F60](v1);
  MEMORY[0x266716F60](v2);
  return sub_261A85C84();
}

uint64_t sub_261A3460C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_261A85C44();
  sub_261A85554();
  sub_261A85554();
  MEMORY[0x266716F60](v1);
  MEMORY[0x266716F60](v2);
  return sub_261A85C84();
}

uint64_t sub_261A34684(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_261A85554();
  sub_261A85554();
  MEMORY[0x266716F60](v2);
  return MEMORY[0x266716F60](v3);
}

uint64_t sub_261A346E4(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_261A85C44();
  sub_261A85554();
  sub_261A85554();
  MEMORY[0x266716F60](v2);
  MEMORY[0x266716F60](v3);
  return sub_261A85C84();
}

uint64_t static CountingMode.Display.NormalizedArea.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_261A3488C(*a1, *a2) & (v2 == v3);
}

uint64_t sub_261A347A0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_261A347FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_261A85BA4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_261A3488C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v6 = *v4;
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v9 = *(v3 - 2);
      v10 = *(v3 - 1);
      v11 = *v3;
      if (*(v7 + 32) == *(v9 + 32) && *(v7 + 40) == *(v9 + 40))
      {
        if (v8 != v10 || v6 != v11)
        {
          return 0;
        }
      }

      else
      {
        v13 = sub_261A85BA4();
        result = 0;
        if ((v13 & 1) == 0 || v8 != v10 || v6 != v11)
        {
          return result;
        }
      }

      v4 += 24;
      v3 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t CountingMode.Display.NormalizedArea.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_261A358AC(a1, *v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x266716F80](*&v3);
}

uint64_t CountingMode.Display.NormalizedArea.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_261A85C44();
  sub_261A358AC(v5, v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x266716F80](*&v3);
  return sub_261A85C84();
}

uint64_t sub_261A34A20(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_261A358AC(a1, *v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x266716F80](*&v3);
}

uint64_t sub_261A34A6C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_261A85C44();
  sub_261A358AC(v6, v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  MEMORY[0x266716F80](*&v4);
  return sub_261A85C84();
}

uint64_t sub_261A34AD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_261A3488C(*a1, *a2) & (v2 == v3);
}

uint64_t CountingMode.Display.Bar.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  sub_261A85554();
  sub_261A85554();
  MEMORY[0x266716F60](v2);
  MEMORY[0x266716F60](v3);
  if (v5 == 1)
  {
    return sub_261A85C64();
  }

  sub_261A85C64();
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return MEMORY[0x266716F80](v7);
}

uint64_t CountingMode.Display.Bar.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6[9] = *v0;
  v6[10] = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  sub_261A85C44();
  CountingMode.Display.Bar.hash(into:)(v6);
  return sub_261A85C84();
}

uint64_t sub_261A34C38()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6[9] = *v0;
  v6[10] = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  sub_261A85C44();
  CountingMode.Display.Bar.hash(into:)(v6);
  return sub_261A85C84();
}

uint64_t sub_261A34CA0(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7[9] = *v1;
  v7[10] = v2;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  sub_261A85C44();
  CountingMode.Display.Bar.hash(into:)(v7);
  return sub_261A85C84();
}

uint64_t CountingMode.Display.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  if (*(v1 + 32) < 0)
  {
    MEMORY[0x266716F60](1);
    return CountingMode.Display.Bar.hash(into:)(a1);
  }

  else
  {
    MEMORY[0x266716F60](0);
    sub_261A358AC(a1, v3);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    return MEMORY[0x266716F80](v5);
  }
}

uint64_t CountingMode.Display.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 32);
  sub_261A85C44();
  if (v3 < 0)
  {
    MEMORY[0x266716F60](1);
    CountingMode.Display.Bar.hash(into:)(v6);
  }

  else
  {
    MEMORY[0x266716F60](0);
    sub_261A358AC(v6, v1);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x266716F80](v4);
  }

  return sub_261A85C84();
}

uint64_t sub_261A34E58()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_261A85C44();
  CountingMode.Display.hash(into:)(v4);
  return sub_261A85C84();
}

uint64_t sub_261A34EB0(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_261A85C44();
  CountingMode.Display.hash(into:)(v5);
  return sub_261A85C84();
}

uint64_t sub_261A34F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7972616D697270 && a2 == 0xE700000000000000;
  if (v6 || (sub_261A85BA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6579570 && a2 == 0xE300000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    v8 = 1;
  }

  else if (a1 == 0x65676E61726FLL && a2 == 0xE600000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    v8 = 2;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    v8 = 3;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    v8 = 4;
  }

  else if (a1 == 0x776F6C6C6579 && a2 == 0xE600000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    v8 = 5;
  }

  else if (a1 == 0x656C70727570 && a2 == 0xE600000000000000)
  {

    v8 = 6;
  }

  else
  {
    v9 = sub_261A85BA4();

    if (v9)
    {
      v8 = 6;
    }

    else
    {
      v8 = 7;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t CountingMode.Display.Color.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A85CA4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v5 = sub_261A85BB4();
    v7 = v6;

    sub_261A34F04(v5, v7, v13);
    v8 = v13[0];
    if (LOBYTE(v13[0]) == 7)
    {
      v9 = sub_261A85904();
      swift_allocError();
      v11 = v10;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_261A85C94();
      v13[0] = 0;
      v13[1] = 0xE000000000000000;
      sub_261A858C4();

      strcpy(v13, "unknown color ");
      HIBYTE(v13[1]) = -18;
      MEMORY[0x2667168A0](v5, v7);

      sub_261A858F4();
      (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D84168], v9);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v14);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v14);
      *a2 = v8;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CountingMode.Display.Color.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A85CC4();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_261A85BC4();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_261A354D8(uint64_t a1, id *a2)
{
  result = sub_261A854A4();
  *a2 = 0;
  return result;
}

uint64_t sub_261A35550(uint64_t a1, id *a2)
{
  v3 = sub_261A854B4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_261A355D0@<X0>(uint64_t *a1@<X8>)
{
  sub_261A854C4();
  v2 = sub_261A85494();

  *a1 = v2;
  return result;
}

uint64_t sub_261A35614@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_261A85494();

  *a2 = v3;
  return result;
}

uint64_t sub_261A3565C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261A854C4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_261A35688(uint64_t a1)
{
  v2 = sub_261A36484(&qword_27FECADD8, a5X);
  v3 = sub_261A36484(&unk_27FECADE0, byte_261A86A38);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_261A35720()
{
  v0 = sub_261A854C4();
  v1 = MEMORY[0x266716930](v0);

  return v1;
}

uint64_t sub_261A3575C(uint64_t a1)
{
  sub_261A854C4();
  sub_261A85554();
}

uint64_t sub_261A357B0(uint64_t a1)
{
  sub_261A854C4();
  sub_261A85C44();
  sub_261A85554();
  v1 = sub_261A85C84();

  return v1;
}

uint64_t sub_261A35824(void *a1, uint64_t *a2)
{
  v2 = sub_261A854C4();
  v4 = v3;
  if (v2 == sub_261A854C4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_261A85BA4();
  }

  return v7 & 1;
}

uint64_t sub_261A358AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x266716F60](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v5 += 24;

      sub_261A85554();
      sub_261A85554();
      MEMORY[0x266716F60](v6);
      MEMORY[0x266716F60](v7);

      --v3;
    }

    while (v3);
  }

  return result;
}

BOOL _s7Recount12CountingModeC7DisplayO14NormalizedAreaV7ElementV2eeoiySbAI_AItFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = a2[1];
  v5 = *(a2 + 16);
  if (*(*a1 + 32) == *(*a2 + 32) && *(*a1 + 40) == *(*a2 + 40))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 == v5;
  }

  v7 = sub_261A85BA4();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v4)
  {
    return v3 == v5;
  }

  return result;
}

uint64_t _s7Recount12CountingModeC7DisplayO3BarV2eeoiySbAG_AGtFZ_0(double *a1, double *a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 16);
  v4 = a1[3];
  v5 = *(a1 + 32);
  v6 = *(a2 + 1);
  v7 = *(a2 + 16);
  v8 = a2[3];
  v9 = *(a2 + 32);
  if (*(*a1 + 32) == *(*a2 + 32) && *(*a1 + 40) == *(*a2 + 40))
  {
    result = 0;
    if (v2 != v6)
    {
      return result;
    }

LABEL_9:
    if (v3 != v7)
    {
      return result;
    }

    if (v5)
    {
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v4 == v8)
      {
        v13 = v9;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        return 0;
      }
    }

    return 1;
  }

  v11 = sub_261A85BA4();
  result = 0;
  if ((v11 & 1) != 0 && v2 == v6)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t _s7Recount12CountingModeC7DisplayO2eeoiySbAE_AEtFZ_0(uint64_t a1, double *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = a2[1];
  v10 = *(a2 + 2);
  v9 = *(a2 + 3);
  v11 = *(a2 + 32);
  if (v6 < 0)
  {
    if (v11 < 0)
    {
      v22[0] = *a1;
      v22[1] = v2;
      v23 = v5;
      v24 = v4;
      v25 = v6 & 1;
      v18[0] = v8;
      v18[1] = v7;
      v19 = v10;
      v20 = v9;
      v21 = v11 & 1;
      v13 = _s7Recount12CountingModeC7DisplayO3BarV2eeoiySbAG_AGtFZ_0(v22, v18);
      v14 = v9;
      v16 = v9;
      v12 = v13;
      sub_261A36380(*&v8, *&v7, v10, v14, v11);
      sub_261A36380(*&v3, *&v2, v5, v4, v6);
      sub_261A3638C(*&v3, *&v2, v5, v4, v6);
      sub_261A3638C(*&v8, *&v7, v10, v16, v11);
      return v12 & 1;
    }

    goto LABEL_5;
  }

  if (v11 < 0)
  {
LABEL_5:
    sub_261A36380(*a2, *(a2 + 1), v10, v9, v11);
    sub_261A36380(*&v3, *&v2, v5, v4, v6);
    sub_261A3638C(*&v3, *&v2, v5, v4, v6);
    sub_261A3638C(*&v8, *&v7, v10, v9, v11);
    v12 = 0;
    return v12 & 1;
  }

  v17 = sub_261A3488C(*a1, *a2);
  sub_261A36380(*&v8, *&v7, v10, v9, v11);
  sub_261A36380(*&v3, *&v2, v5, v4, v6);
  sub_261A3638C(*&v3, *&v2, v5, v4, v6);
  sub_261A3638C(*&v8, *&v7, v10, v9, v11);
  v12 = v17 & (v2 == v7);
  return v12 & 1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_261A35D70()
{
  result = qword_27FECAD90;
  if (!qword_27FECAD90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CountingMode.Display.Color, &type metadata for CountingMode.Display.Color, v0, v1);
    atomic_store(result, &qword_27FECAD90);
  }

  return result;
}

unint64_t sub_261A35DC8()
{
  result = qword_27FECAD98;
  if (!qword_27FECAD98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CountingMode.Display.NormalizedArea.Element, &type metadata for CountingMode.Display.NormalizedArea.Element, v0, v1);
    atomic_store(result, &qword_27FECAD98);
  }

  return result;
}

unint64_t sub_261A35E20()
{
  result = qword_27FECADA0;
  if (!qword_27FECADA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CountingMode.Display.NormalizedArea, &type metadata for CountingMode.Display.NormalizedArea, v0, v1);
    atomic_store(result, &qword_27FECADA0);
  }

  return result;
}

unint64_t sub_261A35E78()
{
  result = qword_27FECADA8;
  if (!qword_27FECADA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CountingMode.Display.Bar, &type metadata for CountingMode.Display.Bar, v0, v1);
    atomic_store(result, &qword_27FECADA8);
  }

  return result;
}

unint64_t sub_261A35ED0()
{
  result = qword_27FECADB0;
  if (!qword_27FECADB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CountingMode.Display, &type metadata for CountingMode.Display, v0, v1);
    atomic_store(result, &qword_27FECADB0);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_261A35F44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 3;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_261A35F94(uint64_t result, int a2, int a3)
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
      *(result + 33) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 8 * -a2;
      *(result + 24) = 0;
      *(result + 32) = 0;
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261A35FF4(uint64_t result, char a2)
{
  v2 = *(result + 32) & 1 | (a2 << 7);
  *(result + 16) &= 7uLL;
  *(result + 32) = v2;
  return result;
}

uint64_t _s7DisplayO5ColorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7DisplayO5ColorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_261A361A4(uint64_t *a1, int a2)
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

uint64_t sub_261A361EC(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_261A3624C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_261A36294(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261A362E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_261A3632C(uint64_t result, int a2, int a3)
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
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261A36380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_261A3638C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {
  }

  else
  {
  }
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_27FECADB8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FECADB8);
    }
  }
}

uint64_t sub_261A36484(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Recount15AwimboPMCEventsO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_261A36510()
{
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A365B0(uint64_t a1)
{
  sub_261A85554();
}

uint64_t sub_261A36634(uint64_t a1)
{
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

unint64_t sub_261A366D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_261A376E8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_261A36700(uint64_t *a1@<X8>)
{
  v2 = 0x702D6F626D697761;
  v3 = 0xE700000000000000;
  if (*v1 == 1)
  {
    v3 = 0xEA0000000000636DLL;
  }

  else
  {
    v2 = 0x65636172746170;
  }

  if (*v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x702D6F626D697761;
  }

  if (*v1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xEA0000000000696DLL;
  }

  *a1 = v4;
  a1[1] = v5;
}

uint64_t sub_261A36764(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEA0000000000636DLL;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0x65636172746170;
  if (v3 == 1)
  {
    v5 = 0x702D6F626D697761;
    v4 = 0xEA0000000000636DLL;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x702D6F626D697761;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEA0000000000696DLL;
  }

  v8 = 0x65636172746170;
  if (*a2 == 1)
  {
    v8 = 0x702D6F626D697761;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x702D6F626D697761;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0xEA0000000000696DLL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_261A85BA4();
  }

  return v11 & 1;
}

unint64_t sub_261A36844(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a1;
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      return 0xD000000000000011;
    }

    sub_261A858C4();
    if (v3)
    {
      if (v3 == 1)
      {
        v6 = 0xD000000000000020;
      }

      else
      {
        v6 = 0xD000000000000012;
      }

      if (v3 == 1)
      {
        v7 = "PA Trace (patrace)";
      }

      else
      {
        v7 = "incompatible modes: ";
      }
    }

    else
    {
      v7 = "ing (awimbo-pmc)";
      v6 = 0xD000000000000020;
    }

    MEMORY[0x2667168A0](v6, v7 | 0x8000000000000000);

    MEMORY[0x2667168A0](0xD000000000000021, 0x8000000261A8DF80);
    v11 = a2;
    v12 = a3;
  }

  else
  {
    sub_261A858C4();
    if (v3)
    {
      if (v3 == 1)
      {
        v8 = 0xD000000000000020;
      }

      else
      {
        v8 = 0xD000000000000012;
      }

      if (v3 == 1)
      {
        v9 = "PA Trace (patrace)";
      }

      else
      {
        v9 = "incompatible modes: ";
      }
    }

    else
    {
      v9 = "ing (awimbo-pmc)";
      v8 = 0xD000000000000020;
    }

    MEMORY[0x2667168A0](v8, v9 | 0x8000000000000000);

    v11 = 0xD000000000000014;
    v12 = 0x8000000261A8DFB0;
  }

  MEMORY[0x2667168A0](v11, v12);
  return 0;
}

uint64_t sub_261A36A28(uint64_t a1, uint64_t a2)
{
  if (a1 == 2)
  {
    return 0xD00000000000005ELL;
  }

  v5 = 0x746963696C706D69;
  sub_261A858C4();
  if (a1)
  {
    if (a1 == 1)
    {
      v6 = 0x65636172544150;
    }

    else
    {
      v7 = MEMORY[0x2667169D0](a1, MEMORY[0x277D837D0]);
      MEMORY[0x2667168A0](v7);

      MEMORY[0x2667168A0](41, 0xE100000000000000);

      v6 = 0x28206D6F74737563;
    }
  }

  else
  {

    v6 = 0x746963696C706D69;
  }

  MEMORY[0x2667168A0](0xD000000000000028, 0x8000000261A8DE20);
  if (a2)
  {
    if (a2 == 1)
    {
      v8 = 0xE700000000000000;
      v5 = 0x65636172544150;
    }

    else
    {
      v9 = MEMORY[0x2667169D0](a2, MEMORY[0x277D837D0]);
      MEMORY[0x2667168A0](v9);

      MEMORY[0x2667168A0](41, 0xE100000000000000);
      v5 = 0x28206D6F74737563;
      v8 = 0xE800000000000000;
    }
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  MEMORY[0x2667168A0](v5, v8);

  return v6;
}

BOOL sub_261A36C2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_261A37600(v5, v7);
}

unint64_t sub_261A36C78()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 32);
  if (v3 <= 1)
  {
    if (*(v0 + 32))
    {
      sub_261A858C4();

      v12[0] = v2;
      v12[1] = v1;
      v6 = 0x776F6E6B6E75203ALL;
      v7 = 0xEE0065646F6D206ELL;
    }

    else
    {
      sub_261A858C4();

      v12[0] = v2;
      v12[1] = v1;
      v7 = 0x8000000261A8DF60;
      v6 = 0xD000000000000010;
    }
  }

  else
  {
    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    if (v3 == 2)
    {
      sub_261A858C4();

      v12[0] = 0xD000000000000014;
      v12[1] = 0x8000000261A8DE70;
      v8 = sub_261A36844(v2, v1, v5);
      MEMORY[0x2667168A0](v8);

      MEMORY[0x2667168A0](0x206874697720, 0xE600000000000000);
      v9 = 0xD000000000000020;
      if (v4)
      {
        if (v4 == 1)
        {
          v10 = "PA Trace (patrace)";
        }

        else
        {
          v9 = 0xD000000000000012;
          v10 = "incompatible modes: ";
        }
      }

      else
      {
        v10 = "ing (awimbo-pmc)";
      }

      MEMORY[0x2667168A0](v9, v10 | 0x8000000000000000);

      return v12[0];
    }

    if (v3 != 3)
    {
      return 0xD00000000000004ELL;
    }

    sub_261A858C4();

    strcpy(v12, "cannot parse ");
    HIWORD(v12[1]) = -4864;
    MEMORY[0x2667168A0](v2, v1);
    MEMORY[0x2667168A0](0xD000000000000010, 0x8000000261A8DE50);
    v6 = v5;
    v7 = v4;
  }

  MEMORY[0x2667168A0](v6, v7);
  return v12[0];
}

uint64_t sub_261A36EF0(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_261A371C4(v5, v7) & 1;
}

uint64_t sub_261A36F3C(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!(a1 >> 62))
  {
    if (a4 >> 62)
    {
      return 0;
    }

    v16 = 0x702D6F626D697761;
    v17 = 0xEA0000000000696DLL;
    v18 = a1;
    if (a1)
    {
      if (a1 == 1)
      {
        v19 = 0x702D6F626D697761;
      }

      else
      {
        v19 = 0x65636172746170;
      }

      if (v18 == 1)
      {
        v20 = 0xEA0000000000636DLL;
      }

      else
      {
        v20 = 0xE700000000000000;
      }

      v21 = a4;
      if (!a4)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = 0x702D6F626D697761;
      v20 = 0xEA0000000000696DLL;
      v21 = a4;
      if (!a4)
      {
        goto LABEL_30;
      }
    }

    if (v21 == 1)
    {
      v17 = 0xEA0000000000636DLL;
    }

    else
    {
      v16 = 0x65636172746170;
      v17 = 0xE700000000000000;
    }

LABEL_30:
    if (v19 == v16 && v20 == v17)
    {

      return 1;
    }

    else
    {
      v24 = sub_261A85BA4();

      return v24 & 1;
    }
  }

  if (a1 >> 62 != 1)
  {
    return a4 >> 62 == 2 && a4 == 0x8000000000000000 && !(a6 | a5);
  }

  if (a4 >> 62 != 1)
  {
    return 0;
  }

  v6 = 0x702D6F626D697761;
  v7 = 0xEA0000000000696DLL;
  v8 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v9 = 0x702D6F626D697761;
    }

    else
    {
      v9 = 0x65636172746170;
    }

    if (v8 == 1)
    {
      v10 = 0xEA0000000000636DLL;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    v11 = a4;
    if (!a4)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v9 = 0x702D6F626D697761;
  v10 = 0xEA0000000000696DLL;
  v11 = a4;
  if (a4)
  {
LABEL_12:
    if (v11 == 1)
    {
      v7 = 0xEA0000000000636DLL;
    }

    else
    {
      v6 = 0x65636172746170;
      v7 = 0xE700000000000000;
    }
  }

LABEL_15:
  if (v9 == v6 && v10 == v7)
  {
  }

  else
  {
    v23 = sub_261A85BA4();

    result = 0;
    if ((v23 & 1) == 0)
    {
      return result;
    }
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  return sub_261A85BA4();
}

uint64_t sub_261A371C4(unint64_t *a1, int8x16_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 32);
  if (v6 <= 1)
  {
    if (*(a1 + 32))
    {
      if (a2[2].i8[0] != 1)
      {
        return 0;
      }
    }

    else if (a2[2].i8[0])
    {
      return 0;
    }

    if (v4 != a2->i64[0] || v5 != a2->i64[1])
    {
      goto LABEL_33;
    }

    return 1;
  }

  v8 = a1[2];
  v7 = a1[3];
  if (v6 != 2)
  {
    if (v6 == 3)
    {
      if (a2[2].i8[0] == 3)
      {
        if (v9 = a2[1].i64[0], v10 = a2[1].i64[1], v4 == a2->i64[0]) && v5 == a2->i64[1] || (sub_261A85BA4())
        {
          if (v8 != v9 || v7 != v10)
          {
LABEL_33:

            return sub_261A85BA4();
          }

          return 1;
        }
      }
    }

    else if (a2[2].i8[0] == 4)
    {
      v21 = vorrq_s8(*a2, a2[1]);
      if (!*&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)))
      {
        return 1;
      }
    }

    return 0;
  }

  if (a2[2].i8[0] != 2)
  {
    return 0;
  }

  v11 = a2->i64[0];
  v12 = a2[1].u8[8];
  if (v4 >> 62)
  {
    v13 = a2->i64[1];
    v14 = a2[1].i64[0];
    v15 = v11 >> 62;
    if (v4 >> 62 == 1)
    {
      if (v15 != 1)
      {
        return 0;
      }

      v16 = 0x702D6F626D697761;
      v17 = 0xEA0000000000696DLL;
      v18 = v4;
      if (v4)
      {
        if (v4 == 1)
        {
          v19 = 0x702D6F626D697761;
        }

        else
        {
          v19 = 0x65636172746170;
        }

        if (v18 == 1)
        {
          v20 = 0xEA0000000000636DLL;
        }

        else
        {
          v20 = 0xE700000000000000;
        }
      }

      else
      {
        v19 = 0x702D6F626D697761;
        v20 = 0xEA0000000000696DLL;
      }

      if (v11)
      {
        if (v11 == 1)
        {
          v17 = 0xEA0000000000636DLL;
        }

        else
        {
          v16 = 0x65636172746170;
          v17 = 0xE700000000000000;
        }
      }

      v29 = v5;
      if (v19 == v16 && v20 == v17)
      {
      }

      else
      {
        v30 = sub_261A85BA4();

        if ((v30 & 1) == 0)
        {
          return 0;
        }
      }

      if ((v29 != v13 || v8 != v14) && (sub_261A85BA4() & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v15 != 2)
      {
        return 0;
      }

      result = 0;
      if (v11 != 0x8000000000000000 || v14 | v13)
      {
        return result;
      }
    }
  }

  else
  {
    if (v11 >> 62)
    {
      return 0;
    }

    v24 = 0x702D6F626D697761;
    v25 = 0xEA0000000000696DLL;
    v26 = v4;
    if (v4)
    {
      if (v4 == 1)
      {
        v27 = 0x702D6F626D697761;
      }

      else
      {
        v27 = 0x65636172746170;
      }

      if (v26 == 1)
      {
        v28 = 0xEA0000000000636DLL;
      }

      else
      {
        v28 = 0xE700000000000000;
      }
    }

    else
    {
      v27 = 0x702D6F626D697761;
      v28 = 0xEA0000000000696DLL;
    }

    if (a2->i64[0])
    {
      if (a2->i64[0] == 1)
      {
        v25 = 0xEA0000000000636DLL;
      }

      else
      {
        v24 = 0x65636172746170;
        v25 = 0xE700000000000000;
      }
    }

    if (v27 == v24 && v28 == v25)
    {
    }

    else
    {
      v31 = sub_261A85BA4();

      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v32 = 0xEA0000000000636DLL;
  if (v7)
  {
    if (v7 == 1)
    {
      v33 = 0x702D6F626D697761;
    }

    else
    {
      v33 = 0x65636172746170;
    }

    if (v7 == 1)
    {
      v34 = 0xEA0000000000636DLL;
    }

    else
    {
      v34 = 0xE700000000000000;
    }
  }

  else
  {
    v33 = 0x702D6F626D697761;
    v34 = 0xEA0000000000696DLL;
  }

  v35 = 0x65636172746170;
  if (v12 == 1)
  {
    v35 = 0x702D6F626D697761;
  }

  else
  {
    v32 = 0xE700000000000000;
  }

  if (v12)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0x702D6F626D697761;
  }

  if (v12)
  {
    v37 = v32;
  }

  else
  {
    v37 = 0xEA0000000000696DLL;
  }

  if (v33 == v36 && v34 == v37)
  {

    return 1;
  }

  else
  {
    v38 = sub_261A85BA4();

    return v38 & 1;
  }
}

BOOL sub_261A37600(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a1 == 1)
  {
    if (v2 != 1)
    {
      return 0;
    }
  }

  else if (*a1)
  {
    if (v2 < 2)
    {
      return 0;
    }

    v3 = a1;
    v4 = a2;
    v5 = sub_261A347FC(*a1, *a2);
    a2 = v4;
    v6 = v5;
    a1 = v3;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v2)
  {
    return 0;
  }

  v7 = *(a2 + 24);
  if ((*(a1 + 24) & 1) == 0)
  {
    if (*(a2 + 24))
    {
      return 0;
    }

    v8 = a1;
    v9 = a2;
    v10 = sub_261A85D24();
    a2 = v9;
    v7 = v10;
    a1 = v8;
  }

  if (v7 & 1) == 0 || ((*(a1 + 25) ^ *(a2 + 25)))
  {
    return 0;
  }

  v12 = *(a1 + 32);
  v13 = *(a2 + 32);
  if (v12)
  {
    return v13 && (sub_261A347A0(v12, v13) & 1) != 0;
  }

  return !v13;
}

unint64_t sub_261A376E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_261A859E4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_261A37734@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  if (qword_27FECAD70 != -1)
  {
    swift_once();
  }

  v6 = sub_261A853D4();
  __swift_project_value_buffer(v6, qword_27FED7CC0);

  v7 = sub_261A853B4();
  v8 = sub_261A85734();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v141 = v10;
    *v9 = 136446210;
    v11 = sub_261A85464();
    v13 = a2;
    v14 = sub_261A3E9E8(v11, v12, &v141);

    *(v9 + 4) = v14;
    a2 = v13;
    _os_log_impl(&dword_261A33000, v7, v8, "parsing options %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x266717700](v10, -1, -1);
    v15 = v9;
    v3 = v2;
    MEMORY[0x266717700](v15, -1, -1);
  }

  v128 = 0;
  v132 = 0;
  v133 = 0;
  v16 = 0;
  v17 = 0;
  v129 = 0;
  v18 = 0;
  v19 = 0;
  v134 = 0;
  v20 = 0;
  v21 = *(a1 + 64);
  v136 = a1 + 64;
  v22 = 1;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v21;
  v126 = 0x8000000261A8DD40;
  v127 = 0x8000000261A8DD20;
  v124 = 0x8000000261A8DD80;
  v125 = 0x8000000261A8DD60;
  v26 = 0x8000000000000000;
  v135 = (v23 + 63) >> 6;
LABEL_8:
  v130 = v22;
  *&v131 = v18;
  *(&v131 + 1) = v19;
  while (1)
  {
    v143 = v26;
    if (!v25)
    {
      break;
    }

    v139 = v17;
    v140 = v16;
LABEL_17:
    v29 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v30 = (v20 << 10) | (16 * v29);
    v31 = (*(a1 + 48) + v30);
    v32 = *v31;
    v33 = (*(a1 + 56) + v30);
    v35 = *v33;
    v34 = v33[1];
    v36 = *v31 == 1701080941 && v31[1] == 0xE400000000000000;
    if (v36 || (v137 = v31[1], v138 = v32, (sub_261A85BA4() & 1) != 0))
    {

      v37 = sub_261A859E4();
      if (v37 >= 3)
      {
        sub_261A38A70(v134);

        sub_261A38A80(v143, v140, v139);
        sub_261A38A98();
        swift_allocError();
        *v104 = v35;
        *(v104 + 8) = v34;
        *(v104 + 16) = 0;
        *(v104 + 24) = 0;
        v99 = 1;
        goto LABEL_143;
      }

      v26 = v37;

      v16 = 0;
      v17 = 0;
      if ((v143 & 0x8000000000000000) == 0)
      {
        v38 = 0xEA0000000000696DLL;
        if (v143)
        {
          if (v143 == 1)
          {
            v39 = 0x702D6F626D697761;
          }

          else
          {
            v39 = 0x65636172746170;
          }

          if (v143 == 1)
          {
            v40 = 0xEA0000000000636DLL;
          }

          else
          {
            v40 = 0xE700000000000000;
          }

          v41 = v26;
          if (!v26)
          {
LABEL_36:
            if (v39 != 0x702D6F626D697761)
            {
              goto LABEL_9;
            }

            goto LABEL_39;
          }
        }

        else
        {
          v39 = 0x702D6F626D697761;
          v40 = 0xEA0000000000696DLL;
          v41 = v26;
          if (!v26)
          {
            goto LABEL_36;
          }
        }

        if (v41 == 2)
        {
          v38 = 0xE700000000000000;
          if (v39 != 0x65636172746170)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v38 = 0xEA0000000000636DLL;
          if (v39 != 0x702D6F626D697761)
          {
            goto LABEL_9;
          }
        }

LABEL_39:
        if (v40 == v38)
        {

          goto LABEL_10;
        }

LABEL_9:
        v27 = sub_261A85BA4();

        if ((v27 & 1) == 0)
        {
          sub_261A38A70(v134);

          sub_261A38A98();
          swift_allocError();
          v102 = v139;
          v103 = v140;
          *v104 = v143;
          *(v104 + 8) = v103;
          *(v104 + 16) = v102;
          *(v104 + 24) = v26;
          goto LABEL_142;
        }

LABEL_10:
        sub_261A38A80(v143, v140, v139);
        v16 = 0;
        v17 = 0;
      }
    }

    else
    {
      v42 = v138 == 0x702D6F626D697761 && v137 == 0xEF656C69662D696DLL;
      if (v42 || (sub_261A85BA4() & 1) != 0)
      {

        if ((v143 & 0x8000000000000000) == 0)
        {
          if (v143)
          {
            v68 = a2;
            v69 = sub_261A85BA4();

            if ((v69 & 1) == 0)
            {
              sub_261A38A70(v134);

              sub_261A38A98();
              swift_allocError();
              v105 = v139;
              v106 = v140;
              *v104 = v143;
              *(v104 + 8) = v106;
              *(v104 + 16) = v105;
              *(v104 + 24) = 0;
              goto LABEL_142;
            }
          }

          else
          {
            v68 = a2;
          }

          sub_261A38A80(v143, v140, v139);
          a2 = v68;
        }

        v26 = 0x4000000000000000;
        v128 = v35;
        v133 = v34;
        v19 = *(&v131 + 1);
        v18 = v131;
LABEL_87:
        v22 = v130;
        v17 = v137;
        v16 = v138;
        goto LABEL_8;
      }

      v43 = v138 == 0xD000000000000011 && v127 == v137;
      if (v43 || (v44 = sub_261A85BA4(), v45 = v138, (v44 & 1) != 0))
      {

        v46 = sub_261A38A70(v134);
        v141 = 58;
        v142 = 0xE100000000000000;
        MEMORY[0x28223BE20](v46);
        v118 = &v141;
        v47 = sub_261A7ADE8(0x7FFFFFFFFFFFFFFFLL, 1, sub_261A391E0, v117, v35, v34, &v119);
        v48 = *(v47 + 16);
        if (v48)
        {
          v122 = a2;
          v121 = v3;
          v123 = a1;
          v141 = MEMORY[0x277D84F90];
          sub_261A3EFB0(0, v48, 0);
          v49 = v141;
          v120 = v47;
          v50 = (v47 + 56);
          do
          {
            v52 = *(v50 - 3);
            v51 = *(v50 - 2);
            v53 = *(v50 - 1);
            v54 = *v50;

            v55 = MEMORY[0x266716840](v52, v51, v53, v54);
            v57 = v56;

            v141 = v49;
            v59 = *(v49 + 16);
            v58 = *(v49 + 24);
            if (v59 >= v58 >> 1)
            {
              sub_261A3EFB0((v58 > 1), v59 + 1, 1);
              v49 = v141;
            }

            *(v49 + 16) = v59 + 1;
            v60 = v49 + 16 * v59;
            *(v60 + 32) = v55;
            *(v60 + 40) = v57;
            v50 += 4;
            --v48;
          }

          while (v48);
          v134 = v49;

          a1 = v123;
          v3 = v121;
          a2 = v122;
        }

        else
        {

          v134 = MEMORY[0x277D84F90];
        }

        if ((v143 & 0x8000000000000000) == 0)
        {
          if (v143)
          {
            v16 = v140;
            if (v143 == 1)
            {

              goto LABEL_64;
            }
          }

          else
          {
            v16 = v140;
          }

          v61 = sub_261A85BA4();

          if ((v61 & 1) == 0)
          {
LABEL_146:

            sub_261A38A98();
            swift_allocError();
            *v104 = v143;
            *(v104 + 8) = v16;
            goto LABEL_147;
          }

LABEL_64:
          sub_261A38A80(v143, v16, v139);
        }

        v26 = 0x4000000000000001;
        goto LABEL_66;
      }

      if (v138 == 0xD000000000000010 && v126 == v137)
      {
        v70 = v126;
        goto LABEL_90;
      }

      if (sub_261A85BA4())
      {
        v70 = v137;
LABEL_90:
        if ((v143 & 0x8000000000000000) != 0)
        {

          goto LABEL_108;
        }

        if (v143 && v143 == 1)
        {

          goto LABEL_107;
        }

        v88 = sub_261A85BA4();

        if ((v88 & 1) == 0)
        {
          sub_261A38A70(v134);

          sub_261A38A98();
          swift_allocError();
          v112 = v140;
          *v104 = v143;
          *(v104 + 8) = v112;
LABEL_147:
          *(v104 + 16) = v139;
          *(v104 + 24) = 1;
LABEL_142:
          v99 = 2;
LABEL_143:
          *(v104 + 32) = v99;
          swift_willThrow();
        }

LABEL_107:
        sub_261A38A80(v143, v140, v139);
LABEL_108:
        v129 = 1;
        v26 = 0x4000000000000001;
        v17 = v70;
        v19 = *(&v131 + 1);
        v18 = v131;
        v22 = v130;
        v16 = v138;
        goto LABEL_8;
      }

      if ((v45 != 0xD000000000000013 || v125 != v137) && (sub_261A85BA4() & 1) == 0)
      {
        v122 = a2;
        v123 = a1;

        if (v138 == 0xD000000000000012 && v124 == v137 || (v71 = sub_261A85BA4(), (v71 & 1) != 0))
        {
          v141 = 58;
          v142 = 0xE100000000000000;
          MEMORY[0x28223BE20](v71);
          v118 = &v141;
          v72 = sub_261A7ADE8(0x7FFFFFFFFFFFFFFFLL, 1, sub_261A38AEC, v117, v35, v34, &v119);
          v121 = v3;
          v120 = v72;
          v119 = *(v72 + 16);
          if (v119)
          {
            v141 = MEMORY[0x277D84F90];
            result = sub_261A3EF90(0, v119, 0);
            v74 = 0;
            v132 = v141;
            v75 = (v120 + 56);
            while (v74 < *(v120 + 16))
            {
              v76 = *(v75 - 3);
              v77 = *(v75 - 2);
              v79 = *(v75 - 1);
              v78 = *v75;

              v80 = MEMORY[0x266716840](v76, v77, v79, v78);
              v82 = sub_261A41E1C(v80, v81);
              if (v83)
              {

                sub_261A38A80(v143, v140, v139);

                sub_261A38A70(v134);
                v108 = MEMORY[0x266716840](v76, v77, v79, v78);
                v110 = v109;
                sub_261A38A98();
                swift_allocError();
                *v111 = v108;
                *(v111 + 8) = v110;
                *(v111 + 16) = 0xD000000000000012;
                *(v111 + 24) = v124;
                *(v111 + 32) = 3;
                swift_willThrow();
              }

              v84 = v82;

              v85 = v132;
              v141 = v132;
              v87 = *(v132 + 16);
              v86 = *(v132 + 24);
              if (v87 >= v86 >> 1)
              {
                result = sub_261A3EF90((v86 > 1), v87 + 1, 1);
                v85 = v141;
              }

              ++v74;
              *(v85 + 16) = v87 + 1;
              v132 = v85;
              *(v85 + 8 * v87 + 32) = v84;
              v75 += 4;
              if (v119 == v74)
              {

                goto LABEL_110;
              }
            }

            __break(1u);
            return result;
          }

          v132 = MEMORY[0x277D84F90];
LABEL_110:
          if ((v143 & 0x8000000000000000) != 0)
          {
LABEL_116:
            v26 = 0x4000000000000001;
            a1 = v123;
            v3 = v121;
            a2 = v122;
            v19 = *(&v131 + 1);
            v18 = v131;
            goto LABEL_87;
          }

          if (v143 && v143 == 1)
          {

            goto LABEL_115;
          }

          v89 = sub_261A85BA4();

          if (v89)
          {
LABEL_115:
            sub_261A38A80(v143, v140, v139);
            goto LABEL_116;
          }

          sub_261A38A70(v134);

          sub_261A38A98();
          swift_allocError();
          v115 = v140;
          *v116 = v143;
          *(v116 + 8) = v115;
          *(v116 + 16) = v139;
          *(v116 + 24) = 1;
          *(v116 + 32) = 2;
        }

        else
        {
          sub_261A38A70(v134);

          sub_261A38A80(v143, v140, v139);

          sub_261A38A98();
          swift_allocError();
          v113 = v137;
          *v114 = v138;
          *(v114 + 8) = v113;
          *(v114 + 16) = 0;
          *(v114 + 24) = 0;
          *(v114 + 32) = 0;
        }

        swift_willThrow();
      }

      swift_bridgeObjectRetain_n();

      v62 = sub_261A41E1C(v35, v34);
      if (v63)
      {
        sub_261A38A70(v134);

        sub_261A38A80(v143, v140, v139);

        sub_261A38A98();
        swift_allocError();
        *v104 = v35;
        *(v104 + 8) = v34;
        *(v104 + 16) = 0xD00000000000001ALL;
        *(v104 + 24) = 0x8000000261A8DDA0;
        v99 = 3;
        goto LABEL_143;
      }

      v64 = v62;

      if ((v143 & 0x8000000000000000) == 0)
      {
        if (v143 == 1)
        {
          v65 = v140;

          v66 = v65;
        }

        else
        {
          v67 = sub_261A85BA4();

          v66 = v140;
          if ((v67 & 1) == 0)
          {
            v107 = v140;
            sub_261A38A70(v134);

            sub_261A38A98();
            swift_allocError();
            *v104 = v143;
            *(v104 + 8) = v107;
            goto LABEL_147;
          }
        }

        sub_261A38A80(v143, v66, v139);
      }

      v26 = 0x4000000000000001;
      v130 = 0;
      v131 = v64 * 0xE8D4A51000uLL;
LABEL_66:
      v17 = v137;
      v16 = v138;
    }
  }

  while (1)
  {
    v28 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_146;
    }

    if (v28 >= v135)
    {
      break;
    }

    v25 = *(v136 + 8 * v28);
    ++v20;
    if (v25)
    {
      v139 = v17;
      v140 = v16;
      v20 = v28;
      goto LABEL_17;
    }
  }

  v90 = v143;
  if (!(v143 >> 62))
  {
    goto LABEL_120;
  }

  if (v143 >> 62 != 1)
  {
    sub_261A38A70(v134);

    sub_261A38A98();
    swift_allocError();
    *v96 = 0u;
    *(v96 + 16) = 0u;
    *(v96 + 32) = 4;
    return swift_willThrow();
  }

  sub_261A38A80(v143, v16, v17);
  v90 = v143;
LABEL_120:
  if (v90)
  {
    if (v90 == 1)
    {

      v91 = v130;
      if (v130 & ~v129)
      {
        v93 = *(&v131 + 1);
        v92 = v132;
        v94 = v134;
        v95 = v131;
        if (v132)
        {
          goto LABEL_136;
        }

        if (v134)
        {
          v93 = 0;
          v91 = 0;
          v95 = 1000000000000000;
          goto LABEL_136;
        }

        sub_261A38B0C();
        swift_allocError();
        *v101 = xmmword_261A86B30;
        return swift_willThrow();
      }

      v93 = *(&v131 + 1);
      v92 = v132;
      v94 = v134;
      v95 = v131;
LABEL_136:
      v100 = 0x8000000000000000;
      if (v129)
      {
        v100 = 0x8000000000000100;
      }

      v97 = v100 & 0xFFFFFFFFFFFFFFFELL | v91 & 1;
    }

    else
    {

      result = sub_261A38A70(v134);
      v93 = *(&v131 + 1);
      v95 = v131;
      v92 = v132;
      if ((v130 & ~v129 & (v132 == 0)) != 0)
      {
        v95 = 1000000000000000;
        v93 = 0;
      }

      v98 = 0x8000000000000000;
      if (v129)
      {
        v98 = 0x8000000000000100;
      }

      v97 = v98 | !((v130 & ~v129) & (v132 == 0)) & v130;
      v94 = 1;
    }
  }

  else
  {
    sub_261A38A70(v134);

    v93 = 0;
    v97 = 0;
    v92 = 0;
    v94 = v128;
    v95 = v133;
  }

  *a2 = v94;
  a2[1] = v95;
  a2[2] = v93;
  a2[3] = v97;
  a2[4] = v92;
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

unint64_t sub_261A38A70(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_261A38A80(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >> 62 == 1)
  {
  }

  return result;
}

unint64_t sub_261A38A98()
{
  result = qword_27FECAEB0;
  if (!qword_27FECAEB0)
  {
    result = swift_getWitnessTable(byte_261A86F7C, &type metadata for ProviderOptions.UsageError, v0, v1);
    atomic_store(result, &qword_27FECAEB0);
  }

  return result;
}

unint64_t sub_261A38B0C()
{
  result = qword_27FECAEB8;
  if (!qword_27FECAEB8)
  {
    result = swift_getWitnessTable(aE_3, &type metadata for AwimboPMCOptions.UsageError, v0, v1);
    atomic_store(result, &qword_27FECAEB8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Recount16AwimboPMCOptionsV10UsageErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 2;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_261A38B84(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261A38BE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_261A38C38(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFD)
  {
    v2 = a2 - 2147483646;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 + 1;
  }

  *result = v2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_7Recount13ModeSelectionO(uint64_t a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 & 3 | (4 * *(a1 + 8))) + 2;
  }
}

uint64_t get_enum_tag_for_layout_string_7Recount15ProviderOptionsV10UsageErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

uint64_t sub_261A38CB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_261A38D00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_261A38D48(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_261A38D78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 24) >> 2) & 0xFFFFFF80 | (*(a1 + 24) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_261A38DD0(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(result + 32) = 0;
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

uint64_t getEnumTagSinglePayload for ModeName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ModeName(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_261A38FD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_261A39020(uint64_t result, int a2, int a3)
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
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = 4 * -a2;
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

void *sub_261A39078(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (a2 << 62);
  }

  else
  {
    result[1] = (a2 - 2) >> 2;
    result[2] = 0;
    *result = (a2 - 2) & 3 | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_261A390BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_261A39118(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_261A39188()
{
  result = qword_27FECAEC0;
  if (!qword_27FECAEC0)
  {
    result = swift_getWitnessTable(byte_261A870B8, &type metadata for ModeName, v0, v1);
    atomic_store(result, &qword_27FECAEC0);
  }

  return result;
}

uint64_t TraceProvider.__allocating_init(options:session:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TraceProvider.init(options:session:)(a1, a2);
  return v4;
}

uint64_t TraceProvider.init(options:session:)(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v4 = sub_261A85314();
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAEC8, &qword_261A8BFE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - v8;
  v10 = sub_261A85394();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261A37734(a1, v56);
  if (v2)
  {
    v15 = v67;
    type metadata accessor for TraceProvider();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v38 = v13;
    v39 = v6;
    v14 = v42;
    v40 = v56[1];
    if (((v59 | (v60 << 32)) & 0x8000000000000000) != 0)
    {
      v63[0] = v56[0];
      v63[1] = v40;
      v63[2] = v56[2];
      v64 = v57 & 1;
      v65 = v58 & 1;
      v66 = v61;
      sub_261A493DC(v63, v62);
      v15 = v67;
      v17 = type metadata accessor for AwimboPMC(0);
      swift_allocObject();
      sub_261A39A18(v62, &v51);
      v19 = sub_261A4450C(v62);
      *(&v46 + 1) = v17;
      *&v47 = &off_287430F98;
      sub_261A39A74(v62);
      *&v45 = v19;
      v20 = &v45;
    }

    else
    {
      Silicon.init()(&v51);
      v47 = v53;
      v48 = v54;
      v49 = v55;
      v45 = v51;
      v46 = v52;
      v44[2] = v53;
      v44[3] = v54;
      v44[4] = v55;
      v44[0] = v51;
      v44[1] = v52;
      sub_261A39B98(&v45, &v43);
      v37 = sub_261A4D704(v44);
      if (v40)
      {
        v36 = v11;
        (*(v11 + 56))(v9, 1, 1, v10);
        (*(v14 + 104))(v39, *MEMORY[0x277CC91D8], v4);

        v18 = v38;
        sub_261A85374();
        v24 = sub_261A853A4();
        v26 = v25;
        v27 = v48;
        v28 = v49;
        (*(v36 + 8))(v18, v10);
        v29 = type metadata accessor for AwimboPMI();
        swift_allocObject();

        v31 = sub_261A45C30(v30, v28, v27, v24, v26);

        sub_261A39B44(v56);
        v15 = v67;
      }

      else
      {
        v21 = v48;
        v22 = v49;
        v29 = type metadata accessor for AwimboPMI();
        swift_allocObject();
        v23 = sub_261A45C30(v37, v22, v21, 0, 0xF000000000000000);
        v15 = v67;
        v31 = v23;
      }

      sub_261A39BF4(&v45);
      type metadata accessor for AwimboPMI();
      v50[3] = v29;
      v50[4] = &off_287430F70;
      v50[0] = v31;
      v20 = v50;
    }

    sub_261A39AC8(v20, v15 + 16);
    v32 = v41;
    sub_261A39AE0(v15 + 16, &v51);
    v33 = *(&v52 + 1);
    v34 = v53;
    __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
    (*(v34 + 8))(v32, v33, v34);
    __swift_destroy_boxed_opaque_existential_1(&v51);
  }

  return v15;
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

uint64_t sub_261A39878()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_261A398D4()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_261A39930(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 32))(a1, v3, v4);
}

uint64_t TraceProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_261A39AC8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_261A39AE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_261A39C48()
{
  result = qword_27FECAED0;
  if (!qword_27FECAED0)
  {
    result = swift_getWitnessTable(byte_261A87C94, &type metadata for AwimboPMIError, v0, v1);
    atomic_store(result, &qword_27FECAED0);
  }

  return result;
}

uint64_t CountingMode.Violation.Severity.hashValue.getter()
{
  v1 = *v0;
  sub_261A85C44();
  MEMORY[0x266716F60](v1);
  return sub_261A85C84();
}

uint64_t CountingMode.Violation.description.getter()
{
  v1 = *v0;
  strcpy(v5, "Violation of ");
  HIWORD(v5[1]) = -4864;
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  MEMORY[0x2667168A0](v2, v3);

  return v5[0];
}

uint64_t CountingMode.Violation.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_261A85554();
  sub_261A85554();
  return MEMORY[0x266716F60](v2);
}

uint64_t CountingMode.Violation.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_261A85C44();
  sub_261A85554();
  sub_261A85554();
  MEMORY[0x266716F60](v1);
  return sub_261A85C84();
}

uint64_t sub_261A39F5C()
{
  v1 = *(v0 + 8);
  sub_261A85C44();
  sub_261A85554();
  sub_261A85554();
  MEMORY[0x266716F60](v1);
  return sub_261A85C84();
}

uint64_t sub_261A39FC8(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_261A85554();
  sub_261A85554();
  return MEMORY[0x266716F60](v2);
}

uint64_t sub_261A3A018(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_261A85C44();
  sub_261A85554();
  sub_261A85554();
  MEMORY[0x266716F60](v2);
  return sub_261A85C84();
}

uint64_t sub_261A3A080()
{
  v1 = *v0;
  strcpy(v5, "Violation of ");
  HIWORD(v5[1]) = -4864;
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  MEMORY[0x2667168A0](v2, v3);

  return v5[0];
}

BOOL _s7Recount12CountingModeC9ViolationV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[8];
  v4 = *a2;
  v5 = a2[8];
  v6 = *(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == v4[3];
  if (v6 || (sub_261A85BA4()) && (*(v2 + 104) == v4[13] ? (v7 = *(v2 + 112) == v4[14]) : (v7 = 0), v7 || (sub_261A85BA4()))
  {
    return v3 == v5;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_261A3A188()
{
  result = qword_27FECAED8;
  if (!qword_27FECAED8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CountingMode.Violation.Severity, &type metadata for CountingMode.Violation.Severity, v0, v1);
    atomic_store(result, &qword_27FECAED8);
  }

  return result;
}

unint64_t sub_261A3A1E0()
{
  result = qword_27FECAEE0;
  if (!qword_27FECAEE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CountingMode.Violation, &type metadata for CountingMode.Violation, v0, v1);
    atomic_store(result, &qword_27FECAEE0);
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

uint64_t sub_261A3A248(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_261A3A290(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_261A3A2F0(int a1, uint64_t a2, uint64_t a3)
{
  sub_261A858C4();

  MEMORY[0x2667168A0](a2, a3);
  MEMORY[0x2667168A0](0x3A64656C69616620, 0xE900000000000020);
  result = strerror(a1);
  if (result)
  {
    v7 = sub_261A855A4();
    MEMORY[0x2667168A0](v7);

    return 543387755;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_261A3A3BC(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  config_count = kpc_get_config_count();
  v9 = *(a2 + 16);
  if (v9 <= config_count)
  {
    v10 = config_count;
  }

  else
  {
    v10 = *(a2 + 16);
  }

  if (v9 >> 60)
  {
    __break(1u);
    goto LABEL_23;
  }

  v11 = swift_slowAlloc();
  v12 = v11;
  *(v4 + 24) = v11;
  *(v4 + 32) = v10;
  if (v10)
  {
    bzero(v11, 8 * v10);
  }

  if (*(a2 + 16))
  {
    memcpy(v12, (a2 + 32), 8 * v9);
  }

  if (!a3)
  {
    *(v4 + 56) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 72) = 1;
    *(v4 + 80) = 0;
    *(v4 + 88) = 0;
    return;
  }

  v13 = swift_slowAlloc();
  v14 = v13;
  if (v10)
  {
    bzero(v13, 8 * v10);
  }

  v15 = *(a3 + 16);
  if (v15)
  {
    if (v10 >= v15)
    {
      memcpy(v14, (a3 + 32), 8 * v15);
      v16 = 4 * v10;
      v17 = swift_slowAlloc();
LABEL_17:
      bzero(v17, v16);
      goto LABEL_18;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = 4 * v10;
  v17 = swift_slowAlloc();
  if (v10)
  {
    goto LABEL_17;
  }

LABEL_18:
  v18 = *(a4 + 16);
  if (!v18)
  {
LABEL_21:
    *(v4 + 40) = v14;
    *(v4 + 48) = v10;
    *(v4 + 56) = v17;
    *(v4 + 64) = v10;
    *(v4 + 72) = 0;
    *(v4 + 80) = a3;
    *(v4 + 88) = a4;
    return;
  }

  if (v10 >= v18)
  {
    memcpy(v17, (a4 + 32), 4 * v18);
    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
}

uint64_t sub_261A3A540()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    MEMORY[0x266717700](v1, -1, -1);
  }

  if ((*(v0 + 72) & 1) == 0)
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 56);
    if (v2)
    {
      MEMORY[0x266717700](v2, -1, -1);
    }

    if (v3)
    {
      MEMORY[0x266717700](v3, -1, -1);
    }
  }

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_261A3A5F4()
{
  v1 = 0xEA0000000000646FLL;
  result = kpc_set_config();
  if (result)
  {
    v1 = 0xEA00000000006769;
    v3 = 0x666E6F632D746573;
LABEL_3:
    v4 = MEMORY[0x2667166F0]();
    sub_261A3BDE0();
    swift_allocError();
    *v5 = v4;
    *(v5 + 8) = v3;
    *(v5 + 16) = v1;
    return swift_willThrow();
  }

  if ((*(v0 + 72) & 1) == 0)
  {
    if (kpc_set_period())
    {
      v3 = 0x697265702D746573;
      goto LABEL_3;
    }

    result = kpc_set_actionid();
    if (result)
    {
      v1 = 0xEC00000064696E6FLL;
      v3 = 0x697463612D746573;
      goto LABEL_3;
    }
  }

  return result;
}

char *sub_261A3A6F0()
{
  sub_261A858C4();
  MEMORY[0x2667168A0](0x2073657373616C63, 0xE800000000000000);
  v1 = sub_261A85B94();
  MEMORY[0x2667168A0](v1);

  MEMORY[0x2667168A0](0xD000000000000010, 0x8000000261A8E0E0);
  v2 = v0[4];
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v0[3];
    v44 = MEMORY[0x277D84F90];
    result = sub_261A3EFB0(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v3 = v44;
    do
    {
      v4 += 8;
      v6 = sub_261A85B94();
      v45 = v3;
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        v11 = v6;
        v12 = v7;
        sub_261A3EFB0((v8 > 1), v9 + 1, 1);
        v7 = v12;
        v6 = v11;
        v3 = v45;
      }

      *(v3 + 16) = v9 + 1;
      v10 = v3 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      --v2;
    }

    while (v2);
  }

  v13 = 1701736302;
  v14 = MEMORY[0x2667169D0](v3, MEMORY[0x277D837D0]);
  v16 = v15;

  MEMORY[0x2667168A0](v14, v16);

  MEMORY[0x2667168A0](0x646F69726570202CLL, 0xEB00000000203A73);
  v17 = v0[10];
  if (v17)
  {
    v18 = *(v17 + 16);
    if (v18)
    {
      v46 = MEMORY[0x277D84F90];
      sub_261A3EFB0(0, v18, 0);
      v19 = v46;
      v20 = v17 + 32;
      do
      {
        v20 += 8;
        v21 = sub_261A85B94();
        v47 = v19;
        v24 = *(v19 + 16);
        v23 = *(v19 + 24);
        if (v24 >= v23 >> 1)
        {
          v43 = v21;
          v26 = v22;
          sub_261A3EFB0((v23 > 1), v24 + 1, 1);
          v22 = v26;
          v21 = v43;
          v19 = v47;
        }

        *(v19 + 16) = v24 + 1;
        v25 = v19 + 16 * v24;
        *(v25 + 32) = v21;
        *(v25 + 40) = v22;
        --v18;
      }

      while (v18);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF58, &qword_261A87428);
    sub_261A3BF78(&qword_27FECAF60, &qword_27FECAF58, &qword_261A87428, MEMORY[0x277D83958]);
    v27 = sub_261A85474();
    v29 = v28;
  }

  else
  {
    v29 = 0xE400000000000000;
    v27 = 1701736302;
  }

  MEMORY[0x2667168A0](v27, v29);

  MEMORY[0x2667168A0](0x6E6F69746361202CLL, 0xEB00000000203A73);
  v30 = v0[11];
  if (v30)
  {
    v31 = *(v30 + 16);
    if (v31)
    {
      v48 = MEMORY[0x277D84F90];
      sub_261A3EFB0(0, v31, 0);
      v32 = v48;
      v33 = v30 + 32;
      do
      {
        v33 += 4;
        v34 = sub_261A85B94();
        v49 = v32;
        v37 = *(v32 + 16);
        v36 = *(v32 + 24);
        if (v37 >= v36 >> 1)
        {
          v39 = v34;
          v40 = v35;
          sub_261A3EFB0((v36 > 1), v37 + 1, 1);
          v35 = v40;
          v34 = v39;
          v32 = v49;
        }

        *(v32 + 16) = v37 + 1;
        v38 = v32 + 16 * v37;
        *(v38 + 32) = v34;
        *(v38 + 40) = v35;
        --v31;
      }

      while (v31);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF58, &qword_261A87428);
    sub_261A3BF78(&qword_27FECAF60, &qword_27FECAF58, &qword_261A87428, MEMORY[0x277D83958]);
    v13 = sub_261A85474();
    v42 = v41;
  }

  else
  {
    v42 = 0xE400000000000000;
  }

  MEMORY[0x2667168A0](v13, v42);

  return 0;
}

uint64_t sub_261A3ABC8(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = sub_261A85404();
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_261A85424();
  v32 = *(v13 - 8);
  v33 = v13;
  MEMORY[0x28223BE20](v13);
  v31 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_261A85764();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 72) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = a1;

  v19 = dispatch_semaphore_create(0);
  *(v5 + 40) = a2;
  *(v5 + 48) = a3;
  *(v5 + 56) = a4 & 1;
  v20 = *(v5 + 72);
  *(v5 + 64) = v19;
  *(v5 + 72) = 0;
  MEMORY[0x2667175A0](v20);
  if (a1 >> 62)
  {
    v21 = sub_261A85994();
  }

  else
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21 < 2)
  {
    *(v5 + 32) = 0;
  }

  else
  {
    v30 = sub_261A3BE7C();
    aBlock = MEMORY[0x277D84F90];
    sub_261A3BF30(&qword_27FECAF70, MEMORY[0x277D85278], MEMORY[0x277D85280]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF78, &qword_261A87430);
    sub_261A3BF78(&qword_27FECAF80, &qword_27FECAF78, &qword_261A87430, MEMORY[0x277D83970]);
    sub_261A85844();
    v22 = sub_261A85774();
    (*(v16 + 8))(v18, v15);
    *(v5 + 32) = v22;
    swift_getObjectType();
    v23 = swift_allocObject();
    *(v23 + 16) = v5;
    *(v23 + 24) = v22;
    v40 = sub_261A3BF08;
    v41 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v37 = 1107296256;
    v30 = &v38;
    v38 = sub_261A3B3AC;
    v39 = &block_descriptor;
    v24 = _Block_copy(&aBlock);
    swift_unknownObjectRetain_n();

    v25 = v31;
    sub_261A85414();
    sub_261A3B490();
    sub_261A85784();
    _Block_release(v24);
    v34 = *(v34 + 8);
    (v34)(v12, v35);
    v26 = v33;
    v32 = *(v32 + 8);
    (v32)(v25, v33);

    v40 = sub_261A3BF28;
    v41 = v5;
    aBlock = MEMORY[0x277D85DD0];
    v37 = 1107296256;
    v38 = sub_261A3B3AC;
    v39 = &block_descriptor_17;
    v27 = _Block_copy(&aBlock);

    sub_261A85414();
    sub_261A3B490();
    sub_261A85794();
    _Block_release(v27);
    swift_unknownObjectRelease();
    (v34)(v12, v35);
    (v32)(v25, v26);
  }

  return v5;
}

uint64_t sub_261A3B0DC(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16);
  if (v5 < 0)
  {
    goto LABEL_7;
  }

  v2 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    goto LABEL_8;
  }

  v3 = a1;
  *(a1 + 16) = v2;
  v4 = *(a1 + 24);
  if (v4 >> 62)
  {
    goto LABEL_9;
  }

  if (v2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:
    *(v3 + 16) = 0;
  }

  else
  {
    while ((*(v3 + 16) & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_7:
      __break(1u);
LABEL_8:
      __break(1u);
LABEL_9:
      if (v2 >= sub_261A85994())
      {
        goto LABEL_10;
      }
    }
  }

  kdebug_trace();
  if (kpc_set_counting())
  {
    v6 = MEMORY[0x2667166F0]();
    sub_261A3BDE0();
    v7 = swift_allocError();
    *v8 = v6;
    *(v8 + 8) = 0xD000000000000010;
    *(v8 + 16) = 0x8000000261A8E100;
    swift_willThrow();
    goto LABEL_24;
  }

  v9 = *(v3 + 16);
  if ((v4 & 0xC000000000000001) == 0)
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_34;
  }

  MEMORY[0x266716BE0](v9, v4);
LABEL_17:
  sub_261A3A5F4();

  v10 = *(v3 + 16);
  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x266716BE0](v10, v4);
    goto LABEL_22;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v10 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_22:
  if (kpc_set_counting())
  {
    v11 = MEMORY[0x2667166F0]();
    sub_261A3BDE0();
    v7 = swift_allocError();
    *v12 = v11;
    *(v12 + 8) = 0x6E756F632D746573;
    *(v12 + 16) = 0xEF6E6F20676E6974;
    swift_willThrow();

LABEL_24:
    v13 = *(v3 + 72);
    *(v3 + 72) = v7;
    v14 = v7;
    MEMORY[0x2667175A0](v13);
    swift_getObjectType();
    sub_261A857A4();

LABEL_37:
    JUMPOUT(0x2667175A0);
  }

  if ((*(v3 + 16) & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

  return kdebug_trace();
}

uint64_t sub_261A3B3AC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_261A3B3F0(uint64_t a1)
{
  if (kpc_set_counting())
  {
    v2 = MEMORY[0x2667166F0]();
    sub_261A3BDE0();
    v3 = swift_allocError();
    *v4 = v2;
    *(v4 + 8) = 0xD000000000000010;
    *(v4 + 16) = 0x8000000261A8E100;
    swift_willThrow();
    v5 = *(a1 + 72);
    *(a1 + 72) = v3;
    MEMORY[0x2667175A0](v5);
  }

  return sub_261A857D4();
}

uint64_t sub_261A3B490()
{
  sub_261A85404();
  sub_261A3BF30(&qword_27FECAF88, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF90, &qword_261A87438);
  sub_261A3BF78(&qword_27FECAF98, &qword_27FECAF90, &qword_261A87438, MEMORY[0x277D83970]);
  return sub_261A85844();
}

uint64_t sub_261A3B57C()
{
  result = kpc_force_all_ctrs_set();
  if (result)
  {
    v3 = MEMORY[0x2667166F0]();
    sub_261A3BDE0();
    swift_allocError();
    *v4 = v3;
    strcpy((v4 + 8), "force-counters");
    *(v4 + 23) = -18;
    return swift_willThrow();
  }

  v5 = *(v0 + 24);
  if ((v5 & 0xC000000000000001) != 0)
  {
    MEMORY[0x266716BE0](0, *(v0 + 24));
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  sub_261A3A5F4();

  if (v1)
  {
    return result;
  }

  if ((v5 & 0xC000000000000001) == 0)
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_11;
    }

LABEL_17:
    __break(1u);
    return result;
  }

  MEMORY[0x266716BE0](0, v5);
LABEL_11:
  if (kpc_set_counting())
  {
    v6 = MEMORY[0x2667166F0]();
    sub_261A3BDE0();
    swift_allocError();
    *v7 = v6;
    *(v7 + 8) = 0x6E756F632D746573;
    *(v7 + 16) = 0xEF6E6F20676E6974;
    swift_willThrow();
  }
}

uint64_t sub_261A3B704(char a1)
{
  v4 = sub_261A85454();
  v34 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v33 = v27 - v8;
  v9 = sub_261A853F4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v11);
  v16 = (v27 - v15);
  if ((a1 & 1) == 0)
  {
    v17 = *(v1 + 24);
    if ((v17 & 0xC000000000000001) != 0)
    {
      MEMORY[0x266716BE0](0);
    }

    else
    {
      if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_16;
      }
    }

    if (kpc_set_counting())
    {
      v18 = MEMORY[0x2667166F0]();
      sub_261A3BDE0();
      swift_allocError();
      *v19 = v18;
      *(v19 + 8) = 0x6E756F632D746573;
      *(v19 + 16) = 0xEF6E6F20676E6974;
      swift_willThrow();
    }
  }

  if ((*(v1 + 56) & 1) == 0)
  {
    v20 = *(v1 + 32);
    if (v20)
    {
      swift_unknownObjectRetain();
      result = sub_261A85CF4();
      v22 = 1000000000 * result;
      if ((result * 1000000000) >> 64 == (1000000000 * result) >> 63)
      {
        v31 = v2;
        v32 = v4;
        v23 = __OFADD__(v22, v21 / 1000000000);
        v24 = v22 + v21 / 1000000000;
        if (!v23)
        {
          *v16 = v24;
          v29 = *MEMORY[0x277D85168];
          v28 = *(v10 + 104);
          v28(v16);
          ObjectType = swift_getObjectType();
          sub_261A85434();
          v27[1] = v20;
          v25 = v33;
          sub_261A85444();
          v34 = *(v34 + 8);
          (v34)(v7, v32);
          *v13 = 0;
          (v28)(v13, v29, v9);
          MEMORY[0x266716AF0](v25, v16, v13, ObjectType);
          v26 = *(v10 + 8);
          v26(v13, v9);
          (v34)(v25, v32);
          sub_261A857B4();
          swift_unknownObjectRelease();
          return v26(v16, v9);
        }

LABEL_17:
        __break(1u);
        return result;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t sub_261A3BAC0()
{
  v1 = v0;
  sub_261A858C4();

  v2 = *(v0 + 24);
  if (v2 >> 62)
  {
    v3 = sub_261A85994();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v19 = MEMORY[0x277D84F90];
    result = sub_261A3EFB0(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = 0;
    v4 = v19;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x266716BE0](v6, v2);
      }

      else
      {
      }

      v7 = sub_261A3A6F0();
      v9 = v8;

      v11 = *(v19 + 16);
      v10 = *(v19 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_261A3EFB0((v10 > 1), v11 + 1, 1);
      }

      ++v6;
      *(v19 + 16) = v11 + 1;
      v12 = v19 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
    }

    while (v3 != v6);
    v1 = v0;
  }

  v13 = MEMORY[0x2667169D0](v4, MEMORY[0x277D837D0]);
  v15 = v14;

  MEMORY[0x2667168A0](v13, v15);

  MEMORY[0x2667168A0](0xD000000000000016, 0x8000000261A8E0C0);
  if (*(v1 + 56))
  {
    v16 = 0xE400000000000000;
    v17 = 1701736302;
  }

  else
  {
    v17 = sub_261A85CE4();
    v16 = v18;
  }

  MEMORY[0x2667168A0](v17, v16);

  return 0x2073746573;
}

uint64_t sub_261A3BCD0()
{

  swift_unknownObjectRelease();

  MEMORY[0x2667175A0](*(v0 + 72));

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_261A3BD44(uint64_t a1, int a2)
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

uint64_t sub_261A3BD8C(uint64_t result, int a2, int a3)
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

unint64_t sub_261A3BDE0()
{
  result = qword_27FECAF50;
  if (!qword_27FECAF50)
  {
    result = swift_getWitnessTable(byte_261A873E4, &type metadata for KPCError, v0, v1);
    atomic_store(result, &qword_27FECAF50);
  }

  return result;
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

unint64_t sub_261A3BE7C()
{
  result = qword_27FECAF68;
  if (!qword_27FECAF68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FECAF68);
  }

  return result;
}

uint64_t sub_261A3BEC8()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_261A3BF30(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_261A3BF78(unint64_t *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

char *sub_261A3BFC8(int a1, uint64_t a2, uint64_t a3)
{
  sub_261A858C4();

  MEMORY[0x2667168A0](a2, a3);
  MEMORY[0x2667168A0](0x3A64656C69616620, 0xE900000000000020);
  result = strerror(a1);
  if (result)
  {
    v7 = sub_261A855A4();
    MEMORY[0x2667168A0](v7);

    return 0x20667265706BLL;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_261A3C098()
{
  sub_261A858C4();

  v0 = sub_261A85B94();
  MEMORY[0x2667168A0](v0);

  MEMORY[0x2667168A0](0x6E6920736920736ELL, 0xED000064696C6176);
  return 0xD000000000000010;
}

unint64_t sub_261A3C15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (kperf_timer_action_set())
  {
    v3 = "timer-action-set";
LABEL_3:
    v4 = (v3 - 32) | 0x8000000000000000;
    v5 = MEMORY[0x2667166F0]();
    sub_261A3C3DC();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = 0xD000000000000010;
    *(v6 + 16) = v4;
    return swift_willThrow();
  }

  result = sub_261A85CF4();
  if (!is_mul_ok(result, 0xF4240uLL))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (((result | v8) & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = 1000000 * result + v8 / 0x3B9ACA00;
  if (__CFADD__(1000000 * result, v8 / 0x3B9ACA00))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (!kperf_ns_to_ticks())
  {
    sub_261A3C640();
    swift_allocError();
    *v10 = v9;
    return swift_willThrow();
  }

  result = kperf_timer_period_set();
  if (result)
  {
    v3 = "timer-period-set";
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_261A3C29C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = result + 32;
  while (v2)
  {
    v3 += 4;
    result = kperf_kdebug_filter_add_debugid();
    --v2;
    if (result)
    {
      v4 = MEMORY[0x2667166F0]();
      sub_261A3C3DC();
      swift_allocError();
      *v5 = v4;
      *(v5 + 8) = 0xD000000000000019;
      *(v5 + 16) = 0x8000000261A8E160;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_261A3C33C(uint64_t a1, uint64_t a2)
{
  if (kperf_kdebug_filter_set())
  {
    v2 = "kdebug-filter-set";
  }

  else
  {
    result = kperf_kdebug_action_set();
    if (!result)
    {
      return result;
    }

    v2 = "kdebug-action-set";
  }

  v4 = (v2 - 32) | 0x8000000000000000;
  v5 = MEMORY[0x2667166F0]();
  sub_261A3C3DC();
  swift_allocError();
  *v6 = v5;
  *(v6 + 8) = 0xD000000000000011;
  *(v6 + 16) = v4;
  return swift_willThrow();
}

unint64_t sub_261A3C3DC()
{
  result = qword_27FECAFA0;
  if (!qword_27FECAFA0)
  {
    result = swift_getWitnessTable(asc_261A8756C, &type metadata for KPerfError, v0, v1);
    atomic_store(result, &qword_27FECAFA0);
  }

  return result;
}

uint64_t sub_261A3C430()
{
  result = kperf_kdebug_filter_get();
  if (result || (result = kperf_kdebug_filter_create()) != 0)
  {
    v1 = result;
    if (kperf_kdebug_action_get())
    {
      v1 = MEMORY[0x2667166F0]();
      sub_261A3C3DC();
      swift_allocError();
      *v2 = v1;
      *(v2 + 8) = 0xD000000000000011;
      *(v2 + 16) = 0x8000000261A8E180;
      swift_willThrow();
    }

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_261A3C514(uint64_t a1)
{
  if (kperf_kdebug_filter_get_n_filters())
  {
    if (kperf_kdebug_filter_get_filter())
    {
      v2 = MEMORY[0x2667166F0]();
      sub_261A3C3DC();
      swift_allocError();
      *v3 = v2;
      *(v3 + 8) = 0x746C69662D746567;
      *(v3 + 16) = 0xEA00000000007265;
      swift_willThrow();
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

unint64_t sub_261A3C640()
{
  result = qword_27FECAFA8;
  if (!qword_27FECAFA8)
  {
    result = swift_getWitnessTable(aM_5, &type metadata for KPerfTimer.Err, v0, v1);
    atomic_store(result, &qword_27FECAFA8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for KPerfTimer(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for KPCSettings.ApplyOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t CountingMode.Remark.Severity.hashValue.getter()
{
  v1 = *v0;
  sub_261A85C44();
  MEMORY[0x266716F60](v1);
  return sub_261A85C84();
}

uint64_t CountingMode.Remark.description.getter()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  MEMORY[0x2667168A0](v1, v2);

  return 0x6F206B72616D6552;
}

uint64_t CountingMode.Remark.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_261A85554();
  sub_261A85554();
  return MEMORY[0x266716F60](v2);
}

uint64_t CountingMode.Remark.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_261A85C44();
  sub_261A85554();
  sub_261A85554();
  MEMORY[0x266716F60](v1);
  return sub_261A85C84();
}

uint64_t sub_261A3C908(uint64_t a1)
{
  sub_261A85C44();
  v2 = *(v1 + 8);
  sub_261A85554();
  sub_261A85554();
  MEMORY[0x266716F60](v2);
  return sub_261A85C84();
}

uint64_t sub_261A3C970()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  MEMORY[0x2667168A0](v1, v2);

  return 0x6F206B72616D6552;
}

unint64_t sub_261A3C9E8()
{
  result = qword_27FECAFB0;
  if (!qword_27FECAFB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CountingMode.Remark.Severity, &type metadata for CountingMode.Remark.Severity, v0, v1);
    atomic_store(result, &qword_27FECAFB0);
  }

  return result;
}

unint64_t sub_261A3CA40()
{
  result = qword_27FECAFB8;
  if (!qword_27FECAFB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CountingMode.Remark, &type metadata for CountingMode.Remark, v0, v1);
    atomic_store(result, &qword_27FECAFB8);
  }

  return result;
}

uint64_t sub_261A3CAF8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_261A853D4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_261A853C4();
}

uint64_t sub_261A3CB70()
{
  v0 = sub_261A853D4();
  __swift_allocate_value_buffer(v0, qword_27FED7CC0);
  __swift_project_value_buffer(v0, qword_27FED7CC0);
  return sub_261A853C4();
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

uint64_t ModeLine.displayName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ModeLine.synopsis.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ModeLine.documentation.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ModeLine.fromThresholdDisplayName.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t ModeLine.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_261A3CD64(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_261A67B00(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 5, 8 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_261A3CDEC@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_261A67B94(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 96 * a1);
    v9 = v8[5];
    v10 = v7 - 1;
    a2[2] = v8[4];
    a2[3] = v9;
    v11 = v8[7];
    a2[4] = v8[6];
    a2[5] = v11;
    v12 = v8[3];
    *a2 = v8[2];
    a2[1] = v12;
    result = memmove(v8 + 2, v8 + 8, 96 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_261A3CE94(__int128 *a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v38 = a6;
  v39 = a3;
  v41 = a5;
  LODWORD(v40) = a4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAFF0, &qword_261A87838);
  v15 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = &v38 - v10;
  v12 = *(a1 + 10);
  v43 = a2;
  *&v53[0] = sub_261A3D4D0(v12, a2);
  swift_getKeyPath();
  sub_261A85284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAFF8, &qword_261A87860);
  sub_261A3BF78(&qword_27FECB000, &qword_27FECAFF8, &qword_261A87860, MEMORY[0x277D83970]);
  sub_261A3BF78(&qword_27FECB008, &qword_27FECAFF0, &qword_261A87838, MEMORY[0x277CC8C98]);
  v13 = sub_261A85664();
  (*(v15 + 8))(v11, v18);
  v14 = v38;

  v42 = *(v13 + 16);
  LOBYTE(v15) = v42 == 0;
  v16 = *a1;
  v51 = a1[1];
  v52 = v16;
  v45 = v16;
  v46 = v51;
  v17 = a1[2];
  v49 = a1[3];
  v50 = v17;
  v47 = v17;
  v48 = v49;
  LOBYTE(v18) = *(*(a1 + 11) + 16) != 0;
  LOBYTE(v19) = v40 & 1;
  v40 = v7;
  v20 = *v7;
  sub_261A3DF5C(&v52, v53);
  sub_261A3DF5C(&v51, v53);
  sub_261A3DF5C(&v50, v53);
  sub_261A3DFB8(&v49, v53);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (v22 >= v21 >> 1)
    {
      v20 = sub_261A665CC((v21 > 1), v22 + 1, 1, v20);
    }

    *(v20 + 2) = v22 + 1;
    v23 = &v20[96 * v22];
    v24 = v45;
    v25 = v46;
    v26 = v48;
    *(v23 + 4) = v47;
    *(v23 + 5) = v26;
    *(v23 + 2) = v24;
    *(v23 + 3) = v25;
    v27 = v39;
    *(v23 + 12) = v39;
    v23[104] = v18;
    v23[105] = v15;
    v23[106] = v19;
    v28 = v55;
    *(v23 + 107) = v54;
    v23[111] = v28;
    *(v23 + 14) = v41;
    *(v23 + 15) = v14;
    *v40 = v20;
    if (!v42)
    {
    }

    v29 = 0;
    v41 = v13 + 32;
    v38 = v27 + 1;
    v30 = __OFADD__(v27, 1);
    LODWORD(v39) = v30;
    while (v29 < *(v13 + 16))
    {
      v15 = *(*v43 + 16);
      if (v15)
      {
        v20 = 0;
        v31 = (v41 + 32 * v29);
        v14 = *v31;
        v32 = v31[1];
        v18 = v31[2];
        v19 = v31[3];
        v33 = (*v43 + 40);
        while (1)
        {
          v34 = *(v33 - 1) == v14 && *v33 == v32;
          if (v34 || (sub_261A85BA4() & 1) != 0)
          {
            break;
          }

          ++v20;
          v33 += 12;
          if (v15 == v20)
          {
            goto LABEL_9;
          }
        }

        v35 = v20;
        v20 = v43;
        sub_261A3CDEC(v35, v44);
        v53[2] = v44[2];
        v53[3] = v44[3];
        v53[4] = v44[4];
        v53[5] = v44[5];
        v53[0] = v44[0];
        v53[1] = v44[1];
        if (v39)
        {
          goto LABEL_24;
        }

        v36 = v20;
        v20 = v40;
        sub_261A3CE94(v53, v36, v38, v29 == *(v13 + 16) - 1, v18, v19);

        sub_261A3DF08(v53);
      }

LABEL_9:
      if (++v29 == v42)
      {
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v20 = sub_261A665CC(0, *(v20 + 2) + 1, 1, v20);
  }
}

uint64_t ModeLine.hash(into:)(uint64_t a1)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[11];
  sub_261A85554();
  sub_261A85554();
  sub_261A85554();
  sub_261A85C64();
  if (v2)
  {
    sub_261A85554();
  }

  MEMORY[0x266716F60](v3);
  sub_261A85C64();
  sub_261A85C64();
  sub_261A85C64();
  if (!v4)
  {
    return sub_261A85C64();
  }

  sub_261A85C64();

  return sub_261A85554();
}

uint64_t ModeLine.hashValue.getter()
{
  sub_261A85C44();
  ModeLine.hash(into:)(v1);
  return sub_261A85C84();
}

uint64_t sub_261A3D444()
{
  sub_261A85C44();
  ModeLine.hash(into:)(v1);
  return sub_261A85C84();
}

uint64_t sub_261A3D488(uint64_t a1)
{
  sub_261A85C44();
  ModeLine.hash(into:)(v2);
  return sub_261A85C84();
}

uint64_t sub_261A3D4C4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_261A3D4D0(uint64_t result, uint64_t *a2)
{
  v3 = v2;
  v5 = 0;
  v6 = *(result + 16);
  v7 = result + 32;
  v8 = MEMORY[0x277D84F90];
LABEL_2:
  v9 = v7 + 80 * v5;
  while (1)
  {
    if (v6 == v5)
    {
      return v8;
    }

    if (v5 >= v6)
    {
      break;
    }

    v20 = *(v9 + 16);
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_15;
    }

    result = sub_261A4F87C(*a2);
    ++v5;
    v9 += 80;
    if (v11)
    {
      v19 = v7;
      v21 = v3;
      v12 = result;
      v13 = v11;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_261A666EC(0, v8[2] + 1, 1, v8);
        v8 = result;
      }

      v15 = v8[2];
      v14 = v8[3];
      if (v15 >= v14 >> 1)
      {
        result = sub_261A666EC((v14 > 1), v15 + 1, 1, v8);
        v16 = v13;
        v8 = result;
      }

      else
      {
        v16 = v13;
      }

      v17 = v12;
      v3 = v21;
      v8[2] = v15 + 1;
      v18 = &v8[4 * v15];
      v18[4] = v17;
      v18[5] = v16;
      v7 = v19;
      *(v18 + 3) = v20;
      v5 = v10;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t _s7Recount8ModeLineV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v19 = a1[6];
  v6 = a1[7];
  v27 = a1[8];
  v25 = *(a1 + 72);
  v21 = *(a1 + 74);
  v17 = a1[11];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 56);
  v18 = *(a2 + 48);
  v26 = *(a2 + 64);
  v23 = *(a1 + 73);
  v24 = *(a2 + 72);
  v22 = *(a2 + 73);
  v20 = *(a2 + 74);
  v14 = *(a2 + 80);
  v15 = a1[10];
  v16 = *(a2 + 88);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_261A85BA4() & 1) == 0 || (v2 != v7 || v3 != v8) && (sub_261A85BA4() & 1) == 0 || (v4 != v9 || v5 != v10) && (sub_261A85BA4() & 1) == 0)
  {
    return 0;
  }

  if (!v6)
  {
    result = 0;
    if (v11)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (!v11)
  {
    return 0;
  }

  if (v19 == v18 && v6 == v11)
  {
    result = 0;
  }

  else
  {
    v13 = sub_261A85BA4();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

LABEL_18:
  if (v27 == v26 && ((v25 ^ v24) & 1) == 0 && ((v23 ^ v22) & 1) == 0 && ((v21 ^ v20) & 1) == 0)
  {
    if (v17)
    {
      if (v16 && (v15 == v14 && v17 == v16 || (sub_261A85BA4() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v16)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_261A3D834()
{
  result = qword_27FECAFC0;
  if (!qword_27FECAFC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ModeLine, &type metadata for ModeLine, v0, v1);
    atomic_store(result, &qword_27FECAFC0);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_261A3D8B0(uint64_t a1, int a2)
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

uint64_t sub_261A3D8F8(uint64_t result, int a2, int a3)
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

uint64_t sub_261A3D960(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAFC8, "Z|");
  v47 = *(v4 - 8);
  v48 = v4;
  result = MEMORY[0x28223BE20](v4);
  v46 = &v42 - v6;
  v7 = *(a1 + 48);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v45 = a1;
    v10 = 0;
    v43 = v7;
    v11 = v7 + 32;
    v12 = MEMORY[0x277D84F90];
    v44 = v11;
    do
    {
      v49 = v12;
      v13 = (v11 + 96 * v10);
      v14 = v10;
      while (1)
      {
        if (v14 >= v8)
        {
          __break(1u);
LABEL_37:
          __break(1u);
          return result;
        }

        v15 = v13[1];
        v55 = *v13;
        v56 = v15;
        v16 = v13[2];
        v17 = v13[3];
        v18 = v13[5];
        v59 = v13[4];
        v60 = v18;
        v57 = v16;
        v58 = v17;
        v10 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_37;
        }

        v52[0] = v55;
        MEMORY[0x28223BE20](result);
        *(&v42 - 2) = v52;
        sub_261A3DEAC(&v55, v54);

        v19 = sub_261A779E4(sub_261A38AEC, (&v42 - 4), v50);

        if (v19)
        {
          break;
        }

        result = sub_261A3DF08(&v55);
        ++v14;
        v13 += 6;
        if (v10 == v8)
        {
          v12 = v49;
          goto LABEL_14;
        }
      }

      v12 = v49;
      result = swift_isUniquelyReferenced_nonNull_native();
      v53 = v12;
      if ((result & 1) == 0)
      {
        result = sub_261A3F310(0, *(v12 + 16) + 1, 1);
        v12 = v53;
      }

      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_261A3F310((v20 > 1), v21 + 1, 1);
        v12 = v53;
      }

      *(v12 + 16) = v21 + 1;
      v22 = (v12 + 96 * v21);
      v23 = v56;
      v22[2] = v55;
      v22[3] = v23;
      v24 = v57;
      v25 = v58;
      v26 = v60;
      v22[6] = v59;
      v22[7] = v26;
      v22[4] = v24;
      v22[5] = v25;
      v11 = v44;
    }

    while (v10 != v8);
LABEL_14:
    v53 = v12;
    v27 = *(v45 + 40);
    v9 = MEMORY[0x277D84F90];
    if (v27)
    {
      v3 = 0;
      v28 = *(v45 + 32);
      v29 = (v43 + 40);
      while (1)
      {
        v30 = *(v29 - 1) == v28 && v27 == *v29;
        if (v30 || (sub_261A85BA4() & 1) != 0)
        {
          goto LABEL_23;
        }

        ++v3;
        v29 += 12;
        if (v8 == v3)
        {
          goto LABEL_22;
        }
      }
    }

LABEL_25:
    if (!*(v12 + 16))
    {

      return MEMORY[0x277D84F90];
    }

    v31 = 0;
    goto LABEL_27;
  }

  v53 = MEMORY[0x277D84F90];
  v32 = *(a1 + 40);
  v12 = MEMORY[0x277D84F90];
  if (!v32)
  {
    goto LABEL_25;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  v31 = v3;
LABEL_27:
  sub_261A3CDEC(v31, &v55);
  v52[0] = v55;
  v52[1] = v56;
  v52[2] = v57;
  v52[3] = v58;
  v52[4] = v59;
  v52[5] = v60;
  v51 = v9;
  sub_261A3CE94(&v55, &v53, 0, 1, 0, 0);
  sub_261A3DF08(v52);
  swift_getKeyPath();
  v33 = v46;
  sub_261A85284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAFD0, &qword_261A89450);
  sub_261A3BF78(&qword_27FECAFD8, &qword_27FECAFD0, &qword_261A89450, MEMORY[0x277D83960]);
  sub_261A3BF78(&qword_27FECAFE0, &qword_27FECAFD0, &qword_261A89450, MEMORY[0x277D83980]);
  sub_261A3BF78(&qword_27FECAFE8, &qword_27FECAFC8, "Z|", MEMORY[0x277CC8C98]);
  v34 = v48;
  sub_261A85484();
  (*(v47 + 8))(v33, v34);
  v35 = v53;
  if (!*(v53 + 16))
  {
    goto LABEL_34;
  }

  while ((swift_isUniquelyReferenced_nonNull_native() & 1) != 0)
  {
    v36 = *(v35 + 2);
    if (!v36)
    {
      goto LABEL_33;
    }

LABEL_30:
    v37 = &v35[96 * v36];
    v38 = *(v37 - 4);
    v54[1] = *(v37 - 3);
    v39 = *(v37 - 2);
    v40 = *(v37 - 1);
    v41 = v37[1];
    v54[4] = *v37;
    v54[5] = v41;
    v54[2] = v39;
    v54[3] = v40;
    v54[0] = v38;
    *(v35 + 2) = v36 - 1;
    v53 = v35;
    sub_261A3CE94(v54, &v53, 0, 1, 0, 0);
    sub_261A3DF08(v54);
    v35 = v53;
    if (!*(v53 + 16))
    {
      goto LABEL_34;
    }
  }

  v35 = sub_261A67B94(v35);
  v36 = *(v35 + 2);
  if (v36)
  {
    goto LABEL_30;
  }

LABEL_33:
  __break(1u);
LABEL_34:

  return v51;
}

uint64_t sub_261A3DFB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB010, &unk_261A8D2B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void CountingMode.evaluate(sample:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  LOBYTE(v17) = v3;
  sub_261A705A8(&v17, v4);
  if (v1)
  {
    if (qword_27FECAD60 != -1)
    {
      swift_once();
    }

    v5 = sub_261A853D4();
    __swift_project_value_buffer(v5, qword_27FED7C90);

    v6 = v1;
    v7 = sub_261A853B4();
    v8 = sub_261A85744();

    MEMORY[0x2667175A0](v1);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136446466;
      v17 = v2;
      v18 = v3;
      v19 = v4;
      v11 = sub_261A7E834();
      v13 = sub_261A3E9E8(v11, v12, &v20);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      swift_getErrorValue();
      v14 = sub_261A85BF4();
      v16 = sub_261A3E9E8(v14, v15, &v20);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_261A33000, v7, v8, "failed to evaluate %{public}s %{public}s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266717700](v10, -1, -1);
      MEMORY[0x266717700](v9, -1, -1);
    }

    swift_willThrow();
  }
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CountingMode.remarks(metricValues:cpuKind:)(Swift::OpaquePointer metricValues, Recount::CPUKind cpuKind)
{
  v3 = cpuKind;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB018, &unk_261A87D10);
  v5 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v44 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB020, &qword_261A87880);
  v52 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB028, &unk_261A87D20);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v51 = &v44 - v11;
  LOBYTE(v58) = *v3;
  v12 = sub_261A70A30(metricValues._rawValue);
  v14 = v2;
  if (v2)
  {
    v48 = v10;
    v49 = v9;
    v50 = v12;
    v15 = *(metricValues._rawValue + 2);
    v16 = MEMORY[0x277D84F90];
    if (v15)
    {
      v45 = v8;
      v46 = v5;
      v47 = v2;
      v58 = MEMORY[0x277D84F90];
      sub_261A3EFB0(0, v15, 0);
      v16 = v58;
      v17 = (metricValues._rawValue + 32);
      v56 = xmmword_261A87870;
      do
      {
        v18 = *v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB030, &qword_261A88860);
        v19 = swift_allocObject();
        *(v19 + 16) = v56;
        *(v19 + 56) = MEMORY[0x277D839F8];
        *(v19 + 64) = MEMORY[0x277D83A80];
        *(v19 + 32) = v18;
        v20 = sub_261A854D4();
        v22 = v21;
        v58 = v16;
        v24 = *(v16 + 16);
        v23 = *(v16 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_261A3EFB0((v23 > 1), v24 + 1, 1);
          v16 = v58;
        }

        *(v16 + 16) = v24 + 1;
        v25 = v16 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v22;
        ++v17;
        --v15;
      }

      while (v15);
      v5 = v46;
      v14 = v47;
      v8 = v45;
    }

    if (qword_27FECAD60 != -1)
    {
      swift_once();
    }

    v26 = sub_261A853D4();
    __swift_project_value_buffer(v26, qword_27FED7C90);

    v27 = v14;
    v28 = sub_261A853B4();
    v29 = sub_261A85744();

    MEMORY[0x2667175A0](v14);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v45 = v30;
      *&v56 = swift_slowAlloc();
      v60[0] = v56;
      *v30 = 136446466;
      v57 = v16;
      v31 = v52;
      (*(v52 + 104))(v8, *MEMORY[0x277CC8AF0], v55);
      v32 = v53;
      v33 = v54;
      (*(v5 + 104))(v53, *MEMORY[0x277CC8B10], v54);
      v47 = v28;
      LODWORD(v46) = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF58, &qword_261A87428);
      v44 = sub_261A3BF78(&qword_27FECB038, &qword_27FECAF58, &qword_261A87428, MEMORY[0x277D83970]);
      v34 = v8;
      v35 = v51;
      sub_261A85154();
      (*(v5 + 8))(v32, v33);
      (*(v31 + 8))(v34, v55);
      sub_261A3BF78(&qword_27FECB040, &qword_27FECB028, &unk_261A87D20, MEMORY[0x277CC8B28]);
      v36 = v49;
      sub_261A85674();
      (*(v48 + 8))(v35, v36);

      v37 = sub_261A3E9E8(v58, v59, v60);

      v38 = v45;
      *(v45 + 4) = v37;
      *(v38 + 6) = 2082;
      swift_getErrorValue();
      v39 = sub_261A85BF4();
      v41 = sub_261A3E9E8(v39, v40, v60);

      *(v38 + 14) = v41;
      v42 = v47;
      _os_log_impl(&dword_261A33000, v47, v46, "failed to evaluate metric values %{public}s: %{public}s", v38, 0x16u);
      v43 = v56;
      swift_arrayDestroy();
      MEMORY[0x266717700](v43, -1, -1);
      MEMORY[0x266717700](v38, -1, -1);
    }

    else
    {
    }

    swift_willThrow();
    v12 = v50;
  }

  result.value._rawValue = v12;
  result.is_nil = v13;
  return result;
}

uint64_t sub_261A3E958(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {

    return a2();
  }

  return result;
}

unint64_t sub_261A3E9E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_261A3EAB4(v11, 0, 0, 1, a1, a2);
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
    sub_261A40FBC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_261A3EAB4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_261A3EBC0(a5, a6);
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
    result = sub_261A85914();
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

void *sub_261A3EBC0(uint64_t a1, unint64_t a2)
{
  v3 = sub_261A3EC0C(a1, a2);
  sub_261A3ED3C(&unk_28742F940);
  return v3;
}

void *sub_261A3EC0C(uint64_t a1, unint64_t a2)
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

  v6 = sub_261A3EE28(v5, 0);
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

  result = sub_261A85914();
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
        v10 = sub_261A855C4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_261A3EE28(v10, 0);
        result = sub_261A858A4();
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

uint64_t sub_261A3ED3C(uint64_t result)
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

  result = sub_261A3EE9C(result, v11, 1, v3);
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

void *sub_261A3EE28(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB138, &qword_261A879A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_261A3EE9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB138, &qword_261A879A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_261A3EF90(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A3F4E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_261A3EFB0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A3F5E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_261A3EFE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_261A3F02C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_261A3F080(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A3FA78(a1, a2, a3, *v3, &qword_27FECB158, &qword_261A879C0, &qword_27FECB160, &qword_261A879C8);
  *v3 = result;
  return result;
}

char *sub_261A3F0C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A3F6F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261A3F0E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A3F820(a1, a2, a3, *v3, &qword_27FECB168, &qword_261A879D0, &qword_27FECB170, &qword_261A879D8);
  *v3 = result;
  return result;
}

void *sub_261A3F120(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A3F820(a1, a2, a3, *v3, &qword_27FECB178, &qword_261A879E0, &qword_27FECB180, &qword_261A879E8);
  *v3 = result;
  return result;
}

char *sub_261A3F160(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A3F954(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261A3F180(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A40B7C(a1, a2, a3, *v3, &qword_27FECB080, &qword_261A87908, &qword_27FECB088, &unk_261A87D30);
  *v3 = result;
  return result;
}

void *sub_261A3F1C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A3FA78(a1, a2, a3, *v3, &qword_27FECB140, &qword_261A879A8, &qword_27FECB148, &qword_261A879B0);
  *v3 = result;
  return result;
}

char *sub_261A3F200(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A40198(a1, a2, a3, *v3, &qword_27FECB050, &qword_261A878E0);
  *v3 = result;
  return result;
}

void *sub_261A3F230(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A3FBAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261A3F250(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A3FD14(a1, a2, a3, *v3, &qword_27FECB0D0, &qword_261A87948, &qword_27FECB0D8, &qword_261A87950);
  *v3 = result;
  return result;
}

void *sub_261A3F290(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A3FD14(a1, a2, a3, *v3, &qword_27FECB0E0, &qword_261A87958, &qword_27FECB0E8, &qword_261A87960);
  *v3 = result;
  return result;
}

char *sub_261A3F2D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A3FE58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_261A3F2F0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A3FF74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_261A3F310(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A40078(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_261A3F330(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A40198(a1, a2, a3, *v3, &qword_27FECB128, &qword_261A87990);
  *v3 = result;
  return result;
}

char *sub_261A3F360(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A40294(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_261A3F380(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A403A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_261A3F3A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A40498(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_261A3F3C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A40598(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_261A3F3E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A4069C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261A3F400(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A407A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261A3F420(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A408F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261A3F440(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A40A38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261A3F460(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A40B7C(a1, a2, a3, *v3, &qword_27FECB0F8, &qword_261A87970, &qword_27FECB100, &qword_261A87978);
  *v3 = result;
  return result;
}

char *sub_261A3F4A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A40CC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261A3F4C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261A40DE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_261A3F4E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB130, &qword_261A87998);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_261A3F5E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB118, &qword_261A8D2D0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_261A3F6F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB150, &qword_261A879B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261A3F820(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 + 31;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 6);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[8 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, v14 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_261A3F954(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB188, &qword_261A879F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261A3FA78(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_261A3FBAC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB0C0, &qword_261A87938);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB0C8, &qword_261A87940);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261A3FD14(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 48);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[6 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 48 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_261A3FE58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB0F0, &qword_261A87968);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261A3FF74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB058, &qword_261A878E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_261A40078(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB110, &qword_261A87988);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261A40198(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

char *sub_261A40294(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB048, "@|");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_261A403A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB068, &qword_261A878F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_261A40498(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB070, &qword_261A878F8);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_261A40598(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB060, &unk_261A8D2C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_261A4069C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB078, &qword_261A87900);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261A407A8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB090, &qword_261A87910);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB098, &qword_261A87918);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261A408F0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB0A0, &qword_261A87920);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB0A8, &qword_261A87928);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261A40A38(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB0B0, &qword_261A87930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB0B8, &unk_261A8C900);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261A40B7C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_261A40CC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB108, &qword_261A87980);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261A40DE4(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB120, &qword_261A8D2E0);
  v10 = *(sub_261A85394() - 8);
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
  v15 = *(sub_261A85394() - 8);
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

uint64_t sub_261A40FBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_261A41018(uint64_t a1, unsigned __int8 a2)
{
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A4115C(uint64_t a1, unsigned __int8 a2)
{
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A41238(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE400000000000000;
  v5 = 1818846563;
  v6 = 0x646E756F72;
  if (a1 != 4)
  {
    v6 = 0x636E757274;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = 0xE500000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7889261;
  if (a1 != 1)
  {
    v8 = 0x726F6F6C66;
    v7 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 7235949;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE400000000000000;
      if (v9 != 1818846563)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE500000000000000;
      if (a2 == 4)
      {
        if (v9 != 0x646E756F72)
        {
          goto LABEL_34;
        }
      }

      else if (v9 != 0x636E757274)
      {
LABEL_34:
        v12 = sub_261A85BA4();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xE300000000000000;
      if (v9 != 7889261)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE500000000000000;
      if (v9 != 0x726F6F6C66)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v11 = 0xE300000000000000;
    if (v9 != 7235949)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t sub_261A413D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000010;
  v3 = "L1D_TLB_MISS_NONSPEC";
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = "FixedCounterPMIs";
      v5 = 0xD000000000000021;
    }

    else
    {
      v6 = "tersPeriodSeconds";
      v5 = 0xD000000000000016;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0xD00000000000001ALL;
    }

    if (v4)
    {
      v6 = "ConfiguredCounterGroupPMIs";
    }

    else
    {
      v6 = "L1D_TLB_MISS_NONSPEC";
    }
  }

  if (a2 > 1u)
  {
    v3 = "FixedCounterPMIs";
    v7 = 0xD000000000000021;
    v8 = "tersPeriodSeconds";
    v2 = 0xD000000000000016;
    v9 = a2 == 2;
  }

  else
  {
    v7 = 0xD00000000000001ALL;
    v8 = "ConfiguredCounterGroupPMIs";
    v9 = a2 == 0;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v2;
  }

  if (v9)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (v5 == v10 && (v6 | 0x8000000000000000) == (v11 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_261A85BA4();
  }

  return v12 & 1;
}

uint64_t sub_261A414FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000073656C70;
  v3 = 0x6D615372656D6954;
  v4 = a1;
  v5 = 0xD000000000000017;
  if (a1 == 5)
  {
    v5 = 0x6C706D6153494D50;
    v6 = 0xEA00000000007365;
  }

  else
  {
    v6 = 0x8000000261A8DC60;
  }

  v7 = 0x8000000261A8DC20;
  if (a1 == 3)
  {
    v8 = 0xD000000000000011;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (v4 != 3)
  {
    v7 = 0x8000000261A8DC40;
  }

  if (v4 <= 4)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 4)
  {
    v6 = v7;
  }

  v10 = 0x8000000261A8DC00;
  v11 = 0x65646F435F43504BLL;
  if (v4 == 1)
  {
    v11 = 0xD000000000000011;
  }

  else
  {
    v10 = 0xE900000000000073;
  }

  if (!v4)
  {
    v11 = 0x6D615372656D6954;
    v10 = 0xEC00000073656C70;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v11 = v9;
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        v2 = 0xE900000000000073;
        if (v11 != 0x65646F435F43504BLL)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v2 = 0x8000000261A8DC00;
      goto LABEL_29;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEA00000000007365;
        if (v11 != 0x6C706D6153494D50)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0x8000000261A8DC60;
        if (v11 != 0xD000000000000017)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_38;
    }

    if (a2 == 3)
    {
      v2 = 0x8000000261A8DC20;
LABEL_29:
      if (v11 != 0xD000000000000011)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v2 = 0x8000000261A8DC40;
    v3 = 0xD000000000000010;
  }

  if (v11 != v3)
  {
LABEL_41:
    v13 = sub_261A85BA4();
    goto LABEL_42;
  }

LABEL_38:
  if (v12 != v2)
  {
    goto LABEL_41;
  }

  v13 = 1;
LABEL_42:

  return v13 & 1;
}

uint64_t sub_261A416F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00737265746E75;
  v3 = 0x6F635F6465786966;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x73657361696C61;
    }

    else
    {
      v5 = 0x73746E657665;
    }

    if (v4 == 2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x635F6769666E6F63;
    }

    else
    {
      v5 = 0x6F635F6465786966;
    }

    if (v4)
    {
      v6 = 0xEF737265746E756FLL;
    }

    else
    {
      v6 = 0xEE00737265746E75;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x73657361696C61;
  if (a2 != 2)
  {
    v8 = 0x73746E657665;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = 0x635F6769666E6F63;
    v2 = 0xEF737265746E756FLL;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_261A85BA4();
  }

  return v11 & 1;
}

uint64_t sub_261A41854(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x63697274656DLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 1684957547;
    }

    if (v3 == 2)
    {
      v5 = 0x8000000261A8DCE0;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x726F6C6F63;
    }

    else
    {
      v4 = 0x63697274656DLL;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xD000000000000010;
  v8 = 0x8000000261A8DCE0;
  if (a2 != 2)
  {
    v7 = 1684957547;
    v8 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x726F6C6F63;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_261A85BA4();
  }

  return v11 & 1;
}

uint64_t sub_261A4197C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x73746E656D656C65;
    }

    else
    {
      v5 = 1684957547;
    }

    if (v2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x63697274656DLL;
    if (a1 != 3)
    {
      v4 = 0xD000000000000010;
      v3 = 0x8000000261A8DCE0;
    }

    if (a1 == 2)
    {
      v5 = 0x616E696D6F6E6564;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0xEB00000000726F74;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x73746E656D656C65;
    }

    else
    {
      v11 = 1684957547;
    }

    if (a2)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = 0xE400000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x63697274656DLL;
    v8 = 0x8000000261A8DCE0;
    if (a2 == 3)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v9 = 0x616E696D6F6E6564;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xEB00000000726F74;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_261A85BA4();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

unint64_t sub_261A41B08(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v42 = MEMORY[0x277D84F90];
  sub_261A3F1C0(0, v1, 0);
  v2 = v42;
  v4 = v3 + 64;
  v5 = sub_261A85854();
  v6 = *(v3 + 36);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB208, &qword_261A87D48);
  v37 = v3;
  v8 = 0;
  v33 = v3 + 72;
  v34 = v1;
  v35 = v6;
  v36 = v3 + 64;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v3 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_24;
    }

    if (v6 != *(v3 + 36))
    {
      goto LABEL_25;
    }

    v38 = v8;
    v11 = v2;
    v12 = (*(v3 + 48) + 16 * v5);
    v13 = v12[1];
    v14 = *(*(v3 + 56) + 8 * v5);
    v39 = *v12;
    v40 = v13;
    v41 = v14;
    v15 = sub_261A859C4();
    swift_bridgeObjectRetain_n();

    v17 = v39;
    v16 = v40;
    v18 = v41;

    result = sub_261A5BD84(v17, v16);
    if (v19)
    {
      goto LABEL_26;
    }

    v15[(result >> 6) + 8] |= 1 << result;
    v20 = (v15[6] + 16 * result);
    *v20 = v17;
    v20[1] = v16;
    *(v15[7] + 8 * result) = v18;
    v21 = v15[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_27;
    }

    v15[2] = v23;

    sub_261A497E4(&v39);

    v2 = v11;
    v42 = v11;
    v25 = *(v11 + 16);
    v24 = *(v11 + 24);
    if (v25 >= v24 >> 1)
    {
      result = sub_261A3F1C0((v24 > 1), v25 + 1, 1);
      v2 = v42;
    }

    *(v2 + 16) = v25 + 1;
    *(v2 + 8 * v25 + 32) = v15;
    v3 = v37;
    v9 = 1 << *(v37 + 32);
    if (v5 >= v9)
    {
      goto LABEL_28;
    }

    v4 = v36;
    v26 = *(v36 + 8 * v10);
    if ((v26 & (1 << v5)) == 0)
    {
      goto LABEL_29;
    }

    LODWORD(v6) = v35;
    if (v35 != *(v37 + 36))
    {
      goto LABEL_30;
    }

    v27 = v26 & (-2 << (v5 & 0x3F));
    if (v27)
    {
      v9 = __clz(__rbit64(v27)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v10 << 6;
      v29 = v10 + 1;
      v30 = (v33 + 8 * v10);
      while (v29 < (v9 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_261A4984C(v5, v35, 0);
          v9 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_261A4984C(v5, v35, 0);
    }

LABEL_4:
    v8 = v38 + 1;
    v5 = v9;
    if (v38 + 1 == v34)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}