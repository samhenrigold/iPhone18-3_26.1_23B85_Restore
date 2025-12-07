uint64_t sub_1A98D0520()
{
  v1 = *(v0 + 4);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_1A9977980();
  SFAirDrop.Progress.hash(into:)(v4);
  return sub_1A99779B0();
}

uint64_t sub_1A98D0578(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_1A9977980();
  SFAirDrop.Progress.hash(into:)(v5);
  return sub_1A99779B0();
}

BOOL _s7Sharing9SFAirDropO8ProgressO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  if (!(v5 >> 62))
  {
    if (v10 >> 62)
    {
      goto LABEL_34;
    }

    sub_1A97C2280(*a1, v2, v5);
    sub_1A97C2280(v8, v7, v10);
    if (v3 == v8)
    {
      if ((v5 & 1) == 0)
      {
        v18 = 0;
        if ((v10 & 1) != 0 || v2 != v7 || v4 != v9)
        {
          return v18;
        }

        return v6 == v11;
      }

      if ((v10 & (v4 == v9)) == 1)
      {
        return v6 == v11;
      }
    }

    return 0;
  }

  if (v5 >> 62 == 1)
  {
    if (v10 >> 62 == 1)
    {
      sub_1A98D1A54(*a2, a2[1], v10);
      sub_1A98D1A54(v3, v2, v5);
      v19 = sub_1A99054C0(v3, v8);
      sub_1A97C2280(v3, v2, v5);
      sub_1A97C2280(v8, v7, v10);
      return v19 & 1;
    }

    goto LABEL_34;
  }

  if (v5 == 0x8000000000000000 && (v4 | v2 | v3 | v6) == 0)
  {
    if (v10 >> 62 == 2 && v10 == 0x8000000000000000 && !(v11 | v9 | v8 | v7))
    {
      sub_1A97C2280(0, 0, 0x8000000000000000);
      sub_1A97C2280(0, 0, 0x8000000000000000);
      return 1;
    }

LABEL_34:
    sub_1A98D1A54(v8, v7, v10);
    sub_1A97C2280(v3, v2, v5);
    sub_1A97C2280(v8, v7, v10);
    return 0;
  }

  if (v10 >> 62 != 2 || v8 != 1 || v7 != 0 || v10 != 0x8000000000000000 || (v11 | v9) != 0)
  {
    goto LABEL_34;
  }

  v18 = 1;
  sub_1A97C2280(1, 0, 0x8000000000000000);
  sub_1A97C2280(1, 0, 0x8000000000000000);
  return v18;
}

unint64_t sub_1A98D0874()
{
  result = qword_1EB3B4D78;
  if (!qword_1EB3B4D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4D78);
  }

  return result;
}

unint64_t sub_1A98D08C8()
{
  result = qword_1EB3B4D80;
  if (!qword_1EB3B4D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4D80);
  }

  return result;
}

unint64_t sub_1A98D091C()
{
  result = qword_1EB3B4D88;
  if (!qword_1EB3B4D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4D88);
  }

  return result;
}

unint64_t sub_1A98D0970()
{
  result = qword_1EB3B4D90;
  if (!qword_1EB3B4D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4D90);
  }

  return result;
}

unint64_t sub_1A98D09C4()
{
  result = qword_1EB3B4DE0;
  if (!qword_1EB3B4DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4DE0);
  }

  return result;
}

unint64_t sub_1A98D0A18()
{
  result = qword_1EB3B4DE8;
  if (!qword_1EB3B4DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4DE8);
  }

  return result;
}

unint64_t sub_1A98D0A6C()
{
  result = qword_1EB3B4DF0;
  if (!qword_1EB3B4DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4DF0);
  }

  return result;
}

unint64_t sub_1A98D0AC0()
{
  result = qword_1EB3B4DF8;
  if (!qword_1EB3B4DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4DF8);
  }

  return result;
}

unint64_t sub_1A98D0B14()
{
  result = qword_1EB3B4E00;
  if (!qword_1EB3B4E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E00);
  }

  return result;
}

uint64_t sub_1A98D0B68(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B1908, &qword_1A99A3580);
    sub_1A98D0BF0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A98D0BF0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A9976020();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A98D0C38()
{
  result = qword_1EB3B4E30;
  if (!qword_1EB3B4E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E30);
  }

  return result;
}

unint64_t sub_1A98D0C90()
{
  result = qword_1EB3B4E38;
  if (!qword_1EB3B4E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E38);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_7Sharing9SFAirDropO8ProgressO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1A98D0D10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
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

uint64_t sub_1A98D0D60(uint64_t result, int a2, int a3)
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
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 2 * -a2;
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

uint64_t sub_1A98D0DC4(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = xmmword_1A99A3500;
    *(result + 24) = 0;
    *(result + 32) = 0;
  }

  return result;
}

unint64_t sub_1A98D0E9C()
{
  result = qword_1EB3B4E40;
  if (!qword_1EB3B4E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E40);
  }

  return result;
}

unint64_t sub_1A98D0EF4()
{
  result = qword_1EB3B4E48;
  if (!qword_1EB3B4E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E48);
  }

  return result;
}

unint64_t sub_1A98D0F4C()
{
  result = qword_1EB3B4E50;
  if (!qword_1EB3B4E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E50);
  }

  return result;
}

unint64_t sub_1A98D0FA4()
{
  result = qword_1EB3B4E58;
  if (!qword_1EB3B4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E58);
  }

  return result;
}

unint64_t sub_1A98D0FFC()
{
  result = qword_1EB3B4E60;
  if (!qword_1EB3B4E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E60);
  }

  return result;
}

unint64_t sub_1A98D1054()
{
  result = qword_1EB3B4E68;
  if (!qword_1EB3B4E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E68);
  }

  return result;
}

unint64_t sub_1A98D10AC()
{
  result = qword_1EB3B4E70;
  if (!qword_1EB3B4E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E70);
  }

  return result;
}

unint64_t sub_1A98D1104()
{
  result = qword_1EB3B4E78;
  if (!qword_1EB3B4E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E78);
  }

  return result;
}

unint64_t sub_1A98D115C()
{
  result = qword_1EB3B4E80;
  if (!qword_1EB3B4E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E80);
  }

  return result;
}

unint64_t sub_1A98D11B4()
{
  result = qword_1EB3B4E88;
  if (!qword_1EB3B4E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E88);
  }

  return result;
}

unint64_t sub_1A98D120C()
{
  result = qword_1EB3B4E90;
  if (!qword_1EB3B4E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E90);
  }

  return result;
}

unint64_t sub_1A98D1264()
{
  result = qword_1EB3B4E98;
  if (!qword_1EB3B4E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4E98);
  }

  return result;
}

unint64_t sub_1A98D12BC()
{
  result = qword_1EB3B4EA0;
  if (!qword_1EB3B4EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4EA0);
  }

  return result;
}

unint64_t sub_1A98D1314()
{
  result = qword_1EB3B4EA8;
  if (!qword_1EB3B4EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4EA8);
  }

  return result;
}

unint64_t sub_1A98D136C()
{
  result = qword_1EB3B4EB0;
  if (!qword_1EB3B4EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4EB0);
  }

  return result;
}

unint64_t sub_1A98D13C4()
{
  result = qword_1EB3B4EB8;
  if (!qword_1EB3B4EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4EB8);
  }

  return result;
}

unint64_t sub_1A98D141C()
{
  result = qword_1EB3B4EC0;
  if (!qword_1EB3B4EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4EC0);
  }

  return result;
}

unint64_t sub_1A98D1474()
{
  result = qword_1EB3B4EC8;
  if (!qword_1EB3B4EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4EC8);
  }

  return result;
}

unint64_t sub_1A98D14CC()
{
  result = qword_1EB3B4ED0;
  if (!qword_1EB3B4ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4ED0);
  }

  return result;
}

unint64_t sub_1A98D1524()
{
  result = qword_1EB3B4ED8;
  if (!qword_1EB3B4ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4ED8);
  }

  return result;
}

unint64_t sub_1A98D157C()
{
  result = qword_1EB3B4EE0;
  if (!qword_1EB3B4EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4EE0);
  }

  return result;
}

unint64_t sub_1A98D15D4()
{
  result = qword_1EB3B4EE8;
  if (!qword_1EB3B4EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4EE8);
  }

  return result;
}

uint64_t sub_1A98D1628(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617453746F6ELL && a2 == 0xEA00000000006465;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A99E3930 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A99E6D00 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A98D1754(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617453746F6ELL && a2 == 0xEA00000000006465;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A99E6D20 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xEC000000676E6972 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A98D18D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x706F4373656C6966 && a2 == 0xEB00000000646569;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7479426C61746F74 && a2 == 0xEA00000000007365 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x706F437365747962 && a2 == 0xEB00000000646569 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A99E6D40 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A98D1A54(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 == 1)
  {
  }

  return v3;
}

uint64_t AsyncCombineLatest2Sequence.Iterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98D1A88, 0, 0);
}

uint64_t sub_1A98D1A88()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1A97E0474;
  v2 = *(v0 + 16);

  return sub_1A98D1FF4(v2);
}

uint64_t combineLatest<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *(a4 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  (*(v13 + 16))(v16, a2, a4);
  return sub_1A98D1E04(v18, v16, a3, a4, a5, a6, a7);
}

uint64_t AsyncCombineLatest2Sequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(a1 + 24);
  v6 = sub_1A99770A0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - v8;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v15[0] = *(a1 + 16);
  v15[1] = v5;
  v15[2] = v5;
  v15[3] = v10;
  v15[4] = v11;
  v15[5] = v11;
  type metadata accessor for CombineLatestStorage(0, v15);
  v12 = *(a1 + 52);
  (*(*(v5 - 8) + 56))(v9, 1, 1, v5);
  v13 = sub_1A9861A48(v2, v2 + v12, v9);
  (*(v7 + 8))(v9, v6);
  return sub_1A98D1ECC(v13, a2);
}

uint64_t sub_1A98D1E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for AsyncCombineLatest2Sequence(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t sub_1A98D1ECC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*a1 + 104);
  v6[0] = *(*a1 + 80);
  v6[1] = v4;
  type metadata accessor for AsyncCombineLatest2Sequence.Iterator.InternalClass(0, v6);
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = result;
  return result;
}

uint64_t sub_1A98D1F48(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1A98D1F7C()
{

  sub_1A98596FC();

  return v0;
}

uint64_t sub_1A98D1FC0()
{
  sub_1A98D1F7C();

  return swift_deallocClassInstance();
}

uint64_t sub_1A98D1FF4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getAssociatedTypeWitness();
  v2[5] = swift_getAssociatedTypeWitness();
  v2[6] = sub_1A99770A0();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v2[7] = TupleTypeMetadata3;
  v4 = sub_1A99770A0();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = *(TupleTypeMetadata3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98D21F8, 0, 0);
}

uint64_t sub_1A98D21F8()
{
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1A98D2294;
  v2 = *(v0 + 80);

  return sub_1A9859938(v2);
}

uint64_t sub_1A98D2294()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1A98D2704;
  }

  else
  {
    v2 = sub_1A98D23A8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A98D23A8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];
  if ((*(v1 + 48))(v2, 1, v3) == 1)
  {
    v4 = v0[2];
    (*(v0[9] + 8))(v2, v0[8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(TupleTypeMetadata2 - 8) + 56))(v4, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v7 = v0[13];
    v6 = v0[14];
    v21 = v0[12];
    v8 = v0[5];
    v25 = v0[6];
    v9 = v0[4];
    v18 = v0[2];
    v19 = *(v1 + 32);
    v19(v6, v2, v3);
    v10 = swift_getTupleTypeMetadata2();
    v20 = *(v10 + 48);
    v22 = v7;
    (*(v1 + 16))(v7, v6, v3);
    v23 = *(v3 + 64);
    v24 = *(v3 + 48);
    v11 = *(v9 - 8);
    (*(v11 + 32))(v18, v7, v9);
    v19(v21, v6, v3);
    v12 = *(v3 + 64);
    v13 = v8;
    v14 = *(v8 - 8);
    (*(v14 + 32))(v18 + v20, v21 + *(v3 + 48), v13);
    (*(*(v10 - 8) + 56))(v18, 0, 1, v10);
    v15 = *(*(v25 - 8) + 8);
    v15(v21 + v12, v25);
    (*(v11 + 8))(v21, v9);
    v15(v22 + v23, v25);
    (*(v14 + 8))(v22 + v24, v13);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1A98D2704()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A98D2790(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A97B2638;

  return AsyncCombineLatest2Sequence.Iterator.next()(a1);
}

uint64_t sub_1A98D2828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[3] = AssociatedTypeWitness;
  v6[4] = *(AssociatedTypeWitness - 8);
  v6[5] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[6] = v13;
  *v13 = v6;
  v13[1] = sub_1A97FF5F8;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6);
}

uint64_t sub_1A98D297C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  AsyncCombineLatest2Sequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1A98D29DC(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1A98D2A9C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A98D2B28(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1A98D2D04(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_1A98D2FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static SFCodableCGImage.== infix(_:_:)(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      type metadata accessor for CGImage(0);
      sub_1A98D310C();
      v3 = v2;
      v4 = sub_1A9976320();

      if (v4)
      {
        return 1;
      }
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1A98D310C()
{
  result = qword_1EB3B3608;
  if (!qword_1EB3B3608)
  {
    type metadata accessor for CGImage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3608);
  }

  return result;
}

uint64_t sub_1A98D3164()
{
  sub_1A9977980();
  sub_1A99768D0();
  return sub_1A99779B0();
}

uint64_t sub_1A98D31E0(uint64_t a1)
{
  sub_1A9977980();
  sub_1A99768D0();
  return sub_1A99779B0();
}

uint64_t sub_1A98D3238@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1A9977510();

  *a2 = v3 != 0;
  return result;
}

void sub_1A98D328C(uint64_t a1@<X8>)
{
  strcpy(a1, "wrappedValue");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_1A98D32D0@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1A9977510();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1A98D3328(uint64_t a1)
{
  v2 = sub_1A98D369C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98D3364(uint64_t a1)
{
  v2 = sub_1A98D369C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id SFCodableCGImage.wrappedValue.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t SFCodableCGImage.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4EF0, &qword_1A99A4190);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98D369C();
  sub_1A9977A70();
  if (!v2)
  {
    sub_1A97B446C();
    sub_1A9977590();
    v9 = v17;
    if (v17 >> 60 == 15)
    {
      (*(v6 + 8))(v8, v5);
      *a2 = 0;
    }

    else
    {
      v18 = a2;
      v10 = v16;
      v11 = sub_1A9976060();
      TransferCGImageWithData = createTransferCGImageWithData(v11);

      if (TransferCGImageWithData)
      {
        v13 = TransferCGImageWithData;
        sub_1A97D8688(v10, v9);
        (*(v6 + 8))(v8, v5);

        *v18 = TransferCGImageWithData;
      }

      else
      {
        sub_1A97BCDE0();
        swift_allocError();
        *v15 = 0xD000000000000011;
        v15[1] = 0x80000001A99E6D60;
        v15[2] = 0xD00000000000004ELL;
        v15[3] = 0x80000001A99E6D80;
        v15[4] = 25;
        v15[10] = 0x2000000000000000;
        swift_willThrow();
        sub_1A97D8688(v10, v9);
        (*(v6 + 8))(v8, v5);
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_1A98D369C()
{
  result = qword_1EB3B4EF8;
  if (!qword_1EB3B4EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4EF8);
  }

  return result;
}

uint64_t SFCodableCGImage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F00, &qword_1A99A4198);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98D369C();
  v8 = v7;
  sub_1A9977AA0();
  if (v7)
  {
    TransferDataWithCGImage = createTransferDataWithCGImage(v8);
    if (TransferDataWithCGImage)
    {
      v10 = TransferDataWithCGImage;
      v11 = sub_1A9976070();
      v13 = v12;

      v16 = v11;
      v17 = v13;
      sub_1A97B4370();
      sub_1A99776E0();

      sub_1A97B43C4(v16, v17);
    }

    else
    {
      sub_1A97BCDE0();
      swift_allocError();
      *v14 = 0xD000000000000011;
      v14[1] = 0x80000001A99E6DD0;
      v14[2] = 0xD00000000000004ELL;
      v14[3] = 0x80000001A99E6D80;
      v14[4] = 35;
      v14[10] = 0x2000000000000000;
      swift_willThrow();
    }
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A98D3954(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      type metadata accessor for CGImage(0);
      sub_1A98D310C();
      v3 = v2;
      v4 = sub_1A9976320();

      if (v4)
      {
        return 1;
      }
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1A98D39F8()
{
  result = qword_1EB3B4F08;
  if (!qword_1EB3B4F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4F08);
  }

  return result;
}

unint64_t sub_1A98D3A50()
{
  result = qword_1EB3B4F10;
  if (!qword_1EB3B4F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4F10);
  }

  return result;
}

unint64_t sub_1A98D3AA8()
{
  result = qword_1EB3B4F18;
  if (!qword_1EB3B4F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4F18);
  }

  return result;
}

uint64_t notify_async_sequence(name:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1220, &qword_1A9991A28);
  MEMORY[0x1EEE9AC00](v4);
  *&v8[-v5] = 1;
  (*(v6 + 104))(&v8[-v5], *MEMORY[0x1E69E8640]);
  v9 = a1;
  v10 = a2;
  return sub_1A9976C90();
}

uint64_t sub_1A98D3C20()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3B4F20);
  v1 = __swift_project_value_buffer(v0, qword_1EB3B4F20);
  if (qword_1ED717D40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED717D48);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1A98D3CE8()
{
  v0 = sub_1A9976FB0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A9976FA0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A9976680();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1A97F1CA0();
  sub_1A9976670();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1A98118DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B26D8, &unk_1A9997EB0);
  sub_1A9811934();
  sub_1A99771F0();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8098], v0);
  result = sub_1A9976FE0();
  qword_1EB3B4F38 = result;
  return result;
}

void *sub_1A98D3EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  return sub_1A98D4A18(sub_1A98D4ADC, v4, a2, a3);
}

void *sub_1A98D3F44(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5[2] = a1;
  v5[3] = v2;
  v5[4] = v3;
  return sub_1A98D4A18(sub_1A98D4ADC, v5, v2, v3);
}

uint64_t sub_1A98D3F94(const char *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F40, &qword_1A99A4408);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v32 - v10;
  out_token = -1;
  if (qword_1EB3B0B58 != -1)
  {
    swift_once();
  }

  v12 = qword_1EB3B4F38;
  v13 = *(v9 + 16);
  v32[1] = a2;
  v13(v11, a2, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v11, v8);
  aBlock[4] = sub_1A98D4AFC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A966A1C8;
  aBlock[3] = &block_descriptor_9;
  v16 = _Block_copy(aBlock);

  v17 = notify_register_dispatch(a1, &out_token, v12, v16);
  _Block_release(v16);
  if (v17 || out_token == -1)
  {
    if (qword_1EB3B0B50 != -1)
    {
      swift_once();
    }

    v27 = sub_1A99764A0();
    __swift_project_value_buffer(v27, qword_1EB3B4F20);

    v28 = sub_1A9976480();
    v29 = sub_1A9976F70();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_1A97AF148(a3, a4, aBlock);
      *(v30 + 12) = 1024;
      *(v30 + 14) = v17;
      _os_log_impl(&dword_1A9662000, v28, v29, "Failed to register notifyd notification {name: %s, status: %u}", v30, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x1AC58D2C0](v31, -1, -1);
      MEMORY[0x1AC58D2C0](v30, -1, -1);
    }

    return sub_1A9976C50();
  }

  else
  {
    if (qword_1EB3B0B50 != -1)
    {
      swift_once();
    }

    v18 = sub_1A99764A0();
    __swift_project_value_buffer(v18, qword_1EB3B4F20);

    v19 = sub_1A9976480();
    v20 = sub_1A9976F90();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1A97AF148(a3, a4, aBlock);
      _os_log_impl(&dword_1A9662000, v19, v20, "Registered for notifyd notification {name: %s}", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x1AC58D2C0](v22, -1, -1);
      MEMORY[0x1AC58D2C0](v21, -1, -1);
    }

    v23 = out_token;
    type metadata accessor for State();
    v24 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v24 + 112) = v23;
    *(v24 + 116) = 0;
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = a3;
    v25[4] = a4;

    return sub_1A9976C20();
  }
}

uint64_t sub_1A98D4480(int a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F48, qword_1A99A4420);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  v7[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F40, &qword_1A99A4408);
  sub_1A9976C40();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A98D457C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5FC0, &qword_1A999A498);
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E6158];
  *(v10 + 16) = xmmword_1A9996D60;
  *(v10 + 56) = v11;
  *(v10 + 32) = 0x696D7265546E6FLL;
  *(v10 + 40) = 0xE700000000000000;
  sub_1A9977970();

  v12 = sub_1A9976C00();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a4;

  sub_1A97B4F40(0, 0, v9, &unk_1A99A4418, v13);
}

uint64_t sub_1A98D4714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A98D4738, a4, 0);
}

uint64_t sub_1A98D4738()
{
  v1 = *(v0 + 16);
  *(v0 + 40) = *(v1 + 112);
  *(v0 + 44) = *(v1 + 116);
  return MEMORY[0x1EEE6DFA0](sub_1A98D4768, 0, 0);
}

uint64_t sub_1A98D4768()
{
  v18 = v0;
  if ((*(v0 + 44) & 1) == 0)
  {
    if (*(v0 + 40) == -1)
    {
      if (qword_1EB3B0B50 != -1)
      {
        swift_once();
      }

      v8 = sub_1A99764A0();
      __swift_project_value_buffer(v8, qword_1EB3B4F20);

      v9 = sub_1A9976480();
      v10 = sub_1A9976F80();

      if (os_log_type_enabled(v9, v10))
      {
        v12 = *(v0 + 24);
        v11 = *(v0 + 32);
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v17 = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_1A97AF148(v12, v11, &v17);
        _os_log_impl(&dword_1A9662000, v9, v10, "Unexpected NOTIFY_TOKEN_INVALID for notifyd registartion {name: %s}", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        MEMORY[0x1AC58D2C0](v14, -1, -1);
        MEMORY[0x1AC58D2C0](v13, -1, -1);
      }
    }

    else
    {
      if (qword_1EB3B0B50 != -1)
      {
        swift_once();
      }

      v1 = sub_1A99764A0();
      __swift_project_value_buffer(v1, qword_1EB3B4F20);

      v2 = sub_1A9976480();
      v3 = sub_1A9976F90();

      if (os_log_type_enabled(v2, v3))
      {
        v5 = *(v0 + 24);
        v4 = *(v0 + 32);
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v17 = v7;
        *v6 = 136315138;
        *(v6 + 4) = sub_1A97AF148(v5, v4, &v17);
        _os_log_impl(&dword_1A9662000, v2, v3, "Cancelled notifyd registration {name: %s}", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v7);
        MEMORY[0x1AC58D2C0](v7, -1, -1);
        MEMORY[0x1AC58D2C0](v6, -1, -1);
      }

      notify_cancel(*(v0 + 40));
    }
  }

  v15 = *(v0 + 8);

  return v15();
}

void *sub_1A98D4A18(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    return sub_1A99772A0();
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v8[0] = a3;
    v8[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v6 = v8;
    return a1(v6);
  }

  if ((a3 & 0x1000000000000000) == 0)
  {
    return sub_1A99772A0();
  }

  v6 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return a1(v6);
}

uint64_t sub_1A98D4A88()
{
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1A98D4AFC(int a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F40, &qword_1A99A4408);

  return sub_1A98D4480(a1);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A98D4B9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A97B2638;

  return sub_1A98D4714(a1, v4, v5, v6, v7, v8);
}

char *sub_1A98D4C64(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1A986BFA4(*(a1 + 16), 0);
  v4 = *(sub_1A99763B0() - 8);
  v5 = sub_1A986C130(&v7, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, a1);
  sub_1A982B3C0(v7);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1A98D4D2C()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3ABCC0);
  v1 = __swift_project_value_buffer(v0, qword_1EB3ABCC0);
  if (qword_1EB3AC860 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB3AC868);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1A98D4DF4(uint64_t a1)
{
  sub_1A9977250();
  if (*(a1 + 16) && (v2 = sub_1A97BCF30(v8), (v3 & 1) != 0))
  {
    sub_1A97AF7EC(*(a1 + 56) + 32 * v2, v9);
    sub_1A97C108C(v8);
    sub_1A9812DE0(0, &unk_1ED717DE0, 0x1E696AEC0);
    if (swift_dynamicCast())
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1A97C108C(v8);
  }

  sub_1A9977250();
  if (*(a1 + 16) && (v4 = sub_1A97BCF30(v8), (v5 & 1) != 0))
  {
    sub_1A97AF7EC(*(a1 + 56) + 32 * v4, v9);
    sub_1A97C108C(v8);
    sub_1A9812DE0(0, &qword_1EB3AB620, 0x1E696AD98);
    if (swift_dynamicCast())
    {
LABEL_9:
      v6 = [0x6574616369646544 BOOLValue];

      return v6;
    }
  }

  else
  {
    sub_1A97C108C(v8);
  }

  return 0;
}

uint64_t sub_1A98D4F88(uint64_t a1)
{
  v7[0] = 0xD00000000000001ALL;
  v7[1] = 0x80000001A99E6F20;
  sub_1A9977250();
  if (*(a1 + 16) && (v2 = sub_1A97BCF30(v6), (v3 & 1) != 0))
  {
    sub_1A97AF7EC(*(a1 + 56) + 32 * v2, v7);
    sub_1A97C108C(v6);
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
    sub_1A97C108C(v6);
    return 0;
  }
}

uint64_t sub_1A98D505C(void *a1, void *a2)
{
  v4 = sub_1A9976230();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v58 - v9;
  if (([a1 onSystemVolume] & 1) == 0 && objc_msgSend(a2, sel_onSystemVolume))
  {
    if (qword_1EB3ABCB0 != -1)
    {
      swift_once();
    }

    v11 = sub_1A99764A0();
    __swift_project_value_buffer(v11, qword_1EB3ABCC0);
    swift_unknownObjectRetain();
    v12 = sub_1A9976480();
    v13 = sub_1A9976F60();
    if (!os_log_type_enabled(v12, v13))
    {
      swift_unknownObjectRelease();

      return 0;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v59[0] = v15;
    *v14 = 136315138;
    v16 = [a1 identifier];
    result = swift_unknownObjectRelease();
    if (v16)
    {
      v18 = sub_1A9976820();
      v20 = v19;

      v21 = sub_1A97AF148(v18, v20, v59);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_1A9662000, v12, v13, "ExtensionsCache: Removing extension %s because a system plugin has precedence", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x1AC58D2C0](v15, -1, -1);
      MEMORY[0x1AC58D2C0](v14, -1, -1);

      return 0;
    }

    goto LABEL_41;
  }

  if ([a1 onSystemVolume] && (objc_msgSend(a2, sel_onSystemVolume) & 1) == 0)
  {
    if (qword_1EB3ABCB0 != -1)
    {
      swift_once();
    }

    v39 = sub_1A99764A0();
    __swift_project_value_buffer(v39, qword_1EB3ABCC0);
    swift_unknownObjectRetain();
    v30 = sub_1A9976480();
    v40 = sub_1A9976F60();
    if (os_log_type_enabled(v30, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v59[0] = v42;
      *v41 = 136315138;
      v43 = [a2 identifier];
      result = swift_unknownObjectRelease();
      if (!v43)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v44 = sub_1A9976820();
      v46 = v45;

      v47 = sub_1A97AF148(v44, v46, v59);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_1A9662000, v30, v40, "ExtensionsCache: Removing extension %s because a system plugin has precedence", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x1AC58D2C0](v42, -1, -1);
      MEMORY[0x1AC58D2C0](v41, -1, -1);
LABEL_37:

      return 1;
    }

LABEL_25:
    swift_unknownObjectRelease();
    goto LABEL_37;
  }

  v59[1] = &unk_1F1DA42A0;
  v22 = swift_dynamicCastObjCProtocolConditional();
  if (!v22)
  {
    goto LABEL_28;
  }

  v23 = v22;
  v58[1] = &unk_1F1DA42A0;
  v24 = swift_dynamicCastObjCProtocolConditional();
  if (!v24)
  {
    goto LABEL_28;
  }

  v25 = v24;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  result = [v23 timestamp];
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v26 = result;
  sub_1A99761F0();

  result = [v25 timestamp];
  if (!result)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v27 = result;
  sub_1A99761F0();

  LOBYTE(v27) = sub_1A9976100();
  v28 = *(v5 + 8);
  v28(v8, v4);
  v28(v10, v4);
  if ((v27 & 1) == 0)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_28:
    if (qword_1EB3ABCB0 != -1)
    {
      swift_once();
    }

    v48 = sub_1A99764A0();
    __swift_project_value_buffer(v48, qword_1EB3ABCC0);
    swift_unknownObjectRetain();
    v49 = sub_1A9976480();
    v50 = sub_1A9976F60();
    if (!os_log_type_enabled(v49, v50))
    {
      swift_unknownObjectRelease();
      goto LABEL_34;
    }

    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v59[0] = v52;
    *v51 = 136315138;
    v53 = [a2 identifier];
    result = swift_unknownObjectRelease();
    if (v53)
    {
      v54 = sub_1A9976820();
      v56 = v55;

      v57 = sub_1A97AF148(v54, v56, v59);

      *(v51 + 4) = v57;
      _os_log_impl(&dword_1A9662000, v49, v50, "ExtensionsCache: Removing extension %s because another plugin has the same modification date", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      MEMORY[0x1AC58D2C0](v52, -1, -1);
      MEMORY[0x1AC58D2C0](v51, -1, -1);
LABEL_34:

      return 0;
    }

    __break(1u);
    goto LABEL_39;
  }

  if (qword_1EB3ABCB0 != -1)
  {
    swift_once();
  }

  v29 = sub_1A99764A0();
  __swift_project_value_buffer(v29, qword_1EB3ABCC0);
  swift_unknownObjectRetain();
  v30 = sub_1A9976480();
  v31 = sub_1A9976F60();
  if (!os_log_type_enabled(v30, v31))
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();
    goto LABEL_37;
  }

  v32 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  v59[0] = v33;
  *v32 = 136315138;
  v34 = [a2 identifier];
  result = swift_unknownObjectRelease();
  if (v34)
  {
    v35 = sub_1A9976820();
    v37 = v36;

    v38 = sub_1A97AF148(v35, v37, v59);

    *(v32 + 4) = v38;
    _os_log_impl(&dword_1A9662000, v30, v31, "ExtensionsCache: Removing extension %s because another plugin has a newer modification date", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    MEMORY[0x1AC58D2C0](v33, -1, -1);
    MEMORY[0x1AC58D2C0](v32, -1, -1);
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

LABEL_43:
  __break(1u);
  return result;
}

double sub_1A98D581C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1A97BCF30(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A9827D68();
      v9 = v11;
    }

    sub_1A97C108C(*(v9 + 48) + 40 * v7);
    sub_1A967C4DC((*(v9 + 56) + 32 * v7), a2);
    sub_1A98D61AC(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1A98D58C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1A97BCE34(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A98282FC();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_1A99762C0();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_1A99763B0();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_1A98D653C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_1A99763B0();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1A98D5A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_1A9976920();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_1A9976920();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_1A99777E0();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_1A9976920();
      v7 = v9;
    }

    while (v9);
  }

  sub_1A9976920();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

unint64_t sub_1A98D5BF0(int64_t a1, uint64_t a2)
{
  v4 = sub_1A9977460();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1A9977200();
    v14 = v12;
    v38 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = v16;
    do
    {
      v17 = v9;
      v18 = v39 * v11;
      v19 = v14;
      v20 = v15;
      v37(v8, *(a2 + 48) + v39 * v11, v4);
      v21 = sub_1A9976730();
      result = (*v36)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v38)
      {
        if (v22 >= v38 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v39 * a1;
          v26 = v25 + v18 + v39;
          v27 = v39 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v39 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v11);
          if (a1 != v11 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v38 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1A98D5EA4(int64_t a1, uint64_t a2)
{
  v40 = sub_1A99762C0();
  v4 = *(v40 - 8);
  result = MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_1A9977200();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1A97C10E0(&unk_1EB3ACFB0, MEMORY[0x1E69695B8]);
      v23 = sub_1A9976730();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_1A98D61AC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A9977200() + 1) & ~v5;
    do
    {
      sub_1A97C1030(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_1A9977230();
      result = sub_1A97C108C(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1A98D6350(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A9977200() + 1) & ~v5;
    while (1)
    {
      sub_1A9977980();

      sub_1A99768D0();
      v9 = sub_1A99779B0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_1A99762C0() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1A98D653C(int64_t a1, uint64_t a2)
{
  v4 = sub_1A99762C0();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_1A9977200();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_1A97C10E0(&unk_1EB3ACFB0, MEMORY[0x1E69695B8]);
      v22 = sub_1A9976730();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(sub_1A99763B0() - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1A98D686C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1A9977980();
  sub_1A98CABC8(v15, a2);
  v6 = sub_1A99779B0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {

      v11 = sub_1A98CA49C(v10, a2);

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v5 + 48) + 8 * v8);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15[0] = *v2;

    sub_1A98D6CFC(v13, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v15[0];
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_1A98D69AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F78, &qword_1A99A4480);
  v4 = sub_1A9977270();
  v5 = v4;
  if (*(v3 + 16))
  {
    v29 = v2;
    v6 = 0;
    v30 = (v3 + 56);
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v31 = v4 + 56;
    v32 = v10;
    v33 = v4;
    v34 = v3;
LABEL_7:
    if (v9)
    {
      v12 = __clz(__rbit64(v9));
      v35 = (v9 - 1) & v9;
LABEL_14:
      v16 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
      sub_1A9977980();
      v17 = v16 + 64;
      v18 = 1 << *(v16 + 32);
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v20 = v19 & *(v16 + 64);
      v21 = (v18 + 63) >> 6;
      v36 = v16;

      v22 = 0;
      v23 = 0;
      while (v20)
      {
        v37 = v22;
LABEL_25:
        v25 = *(*(v36 + 56) + 8 * (__clz(__rbit64(v20)) | (v23 << 6)));

        sub_1A99768D0();

        MEMORY[0x1AC58A630](*(v25 + 16));
        v26 = *(v25 + 16);
        if (v26)
        {
          v27 = v25 + 40;
          do
          {

            sub_1A99768D0();

            v27 += 16;
            --v26;
          }

          while (v26);
        }

        v20 &= v20 - 1;

        result = sub_1A99779B0();
        v22 = result ^ v37;
      }

      while (1)
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v24 >= v21)
        {

          MEMORY[0x1AC58A630](v22);
          sub_1A99779B0();
          v5 = v33;
          v11 = sub_1A9977210();
          *(v31 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
          *(*(v33 + 48) + 8 * v11) = v36;
          ++*(v33 + 16);
          v3 = v34;
          v9 = v35;
          v10 = v32;
          goto LABEL_7;
        }

        v20 = *(v17 + 8 * v24);
        ++v23;
        if (v20)
        {
          v37 = v22;
          v23 = v24;
          goto LABEL_25;
        }
      }

      __break(1u);
    }

    else
    {
      v13 = v6;
      result = v30;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {
          v28 = 1 << *(v3 + 32);
          if (v28 >= 64)
          {
            bzero(v30, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
          }

          else
          {
            *v30 = -1 << v28;
          }

          v2 = v29;
          *(v3 + 16) = 0;
          goto LABEL_33;
        }

        v15 = v30[v6];
        ++v13;
        if (v15)
        {
          v12 = __clz(__rbit64(v15));
          v35 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_33:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1A98D6CFC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A98D69AC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1A98D6E88();
      goto LABEL_12;
    }

    sub_1A98D6FD8(v6 + 1);
  }

  v8 = *v3;
  sub_1A9977980();
  sub_1A98CABC8(v18, v5);
  result = sub_1A99779B0();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F70, &qword_1A99A4478);

      v12 = sub_1A98CA49C(v11, v5);

      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v17;
  *(*v17 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A9977870();
  __break(1u);
  return result;
}

void *sub_1A98D6E88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F78, &qword_1A99A4480);
  v2 = *v0;
  v3 = sub_1A9977260();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

unint64_t sub_1A98D6FD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F78, &qword_1A99A4480);
  result = sub_1A9977270();
  v5 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v6 = 0;
    v27 = v3 + 56;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v28 = result + 56;
    v29 = v10;
    v30 = result;
    v31 = v3;
LABEL_7:
    if (v9)
    {
      v11 = __clz(__rbit64(v9));
      v32 = (v9 - 1) & v9;
LABEL_14:
      v14 = *(*(v3 + 48) + 8 * (v11 | (v6 << 6)));
      sub_1A9977980();
      v15 = v14 + 64;
      v16 = 1 << *(v14 + 32);
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v18 = v17 & *(v14 + 64);
      v19 = (v16 + 63) >> 6;
      v33 = v14;
      result = swift_bridgeObjectRetain_n();
      v20 = 0;
      v21 = 0;
      while (v18)
      {
        v34 = v20;
LABEL_25:
        v23 = *(*(v33 + 56) + 8 * (__clz(__rbit64(v18)) | (v21 << 6)));

        sub_1A99768D0();

        MEMORY[0x1AC58A630](*(v23 + 16));
        v24 = *(v23 + 16);
        if (v24)
        {
          v25 = v23 + 40;
          do
          {

            sub_1A99768D0();

            v25 += 16;
            --v24;
          }

          while (v24);
        }

        v18 &= v18 - 1;

        result = sub_1A99779B0();
        v20 = result ^ v34;
      }

      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v22 >= v19)
        {

          MEMORY[0x1AC58A630](v20);
          sub_1A99779B0();
          v5 = v30;
          result = sub_1A9977210();
          *(v28 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
          *(*(v30 + 48) + 8 * result) = v33;
          ++*(v30 + 16);
          v3 = v31;
          v9 = v32;
          v10 = v29;
          goto LABEL_7;
        }

        v18 = *(v15 + 8 * v22);
        ++v21;
        if (v18)
        {
          v34 = v20;
          v21 = v22;
          goto LABEL_25;
        }
      }

      __break(1u);
    }

    else
    {
      v12 = v6;
      while (1)
      {
        v6 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v26;
          goto LABEL_31;
        }

        v13 = *(v27 + 8 * v6);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v32 = (v13 - 1) & v13;
          goto LABEL_14;
        }
      }
    }

    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v5;
  }

  return result;
}

CFPropertyListRef sub_1A98D7300()
{
  v0 = *MEMORY[0x1E69C4AF0];
  v1 = *MEMORY[0x1E695E8B8];
  v2 = *MEMORY[0x1E695E8B0];
  CFPreferencesSynchronize(*MEMORY[0x1E69C4AF0], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  result = CFPreferencesCopyValue(*MEMORY[0x1E69C4AC0], v0, v1, v2);
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2B00, &unk_1A9998468);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A98D73C4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1A9976900();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1A99769D0();
}

uint64_t sub_1A98D7474(uint64_t a1)
{
  strcpy(v29, "extensionItems");
  HIBYTE(v29[1]) = -18;
  sub_1A9977250();
  if (!*(a1 + 16) || (v2 = sub_1A97BCF30(&v30), (v3 & 1) == 0))
  {
    sub_1A97C108C(&v30);
    return 0;
  }

  sub_1A97AF7EC(*(a1 + 56) + 32 * v2, &v32);
  sub_1A97C108C(&v30);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2B00, &unk_1A9998468);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return 0;
  }

  v6 = v29[0];
  if (*(v29[0] + 16) != 2)
  {

    return 0;
  }

  v7 = 0;
  v24 = 0x80000001A99E2760;
  v25 = 0x80000001A99E6EC0;
  v27 = -1;
  v28 = 0x80000001A99E27C0;
  v8 = -1;
  while (2)
  {
    v26 = v8;
LABEL_7:
    v8 = v7;
    while (1)
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        return result;
      }

      v9 = *(v6 + 32 + 8 * v8);
      strcpy(v29, "attachments");
      HIDWORD(v29[1]) = -352321536;

      sub_1A9977250();
      if (!*(v9 + 16) || (v10 = sub_1A97BCF30(&v30), (v11 & 1) == 0))
      {

        result = sub_1A97C108C(&v30);
        goto LABEL_9;
      }

      sub_1A97AF7EC(*(v9 + 56) + 32 * v10, &v32);
      sub_1A97C108C(&v30);

      result = swift_dynamicCast();
      if (result)
      {
        v12 = v4;
        if (*(v29[0] + 16) != 1)
        {

          goto LABEL_9;
        }

        v13 = *(v29[0] + 32);

        v29[0] = 0xD000000000000019;
        v29[1] = v28;
        sub_1A9977250();
        if (!*(v13 + 16) || (v14 = sub_1A97BCF30(&v30), (v15 & 1) == 0))
        {

          sub_1A97C108C(&v30);
          v32 = 0u;
          v33 = 0u;
LABEL_22:
          result = sub_1A97B06FC(&v32, &qword_1EB3B0BA0, &unk_1A99923D0);
          goto LABEL_9;
        }

        sub_1A97AF7EC(*(v13 + 56) + 32 * v14, &v32);
        sub_1A97C108C(&v30);

        if (!*(&v33 + 1))
        {
          goto LABEL_22;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
        result = swift_dynamicCast();
        if (result)
        {
          break;
        }
      }

LABEL_9:
      if (++v8 == 2)
      {
        goto LABEL_35;
      }
    }

    v16 = v30;
    v17 = v27;
    if (v27 < 0)
    {
      v30 = 0xD000000000000014;
      v31 = v25;
      MEMORY[0x1EEE9AC00](result);
      v22 = &v30;
      result = sub_1A9824824(sub_1A97B298C, v21, v16);
      v17 = v27;
      if (result)
      {
        v17 = v8;
      }
    }

    v27 = v17;
    if (v26 < 0)
    {
      v23 = &v23;
      v30 = 0xD000000000000018;
      v31 = v24;
      MEMORY[0x1EEE9AC00](result);
      v22 = &v30;
      v18 = sub_1A9824824(sub_1A97B2400, v21, v16);

      if ((v18 & 1) == 0)
      {
        v4 = v12;
        goto LABEL_31;
      }

      v7 = v8 + 1;
      v4 = v12;
      if (v8 != 1)
      {
        continue;
      }

      v26 = 1;
    }

    else
    {

LABEL_31:
      v7 = v8 + 1;
      if (v8 != 1)
      {
        goto LABEL_7;
      }
    }

    break;
  }

LABEL_35:

  return v27 > 0 && v26 > 0 && v27 != v26;
}

uint64_t sub_1A98D7934(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F70, &qword_1A99A4478);
  v4 = sub_1A98DE438();
  result = MEMORY[0x1AC589AC0](v2, v3, v4);
  v9 = result;
  if (v2)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;

      sub_1A98D686C(&v8, v7);

      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_1A98D79D0(uint64_t a1)
{
  v2 = sub_1A9976420();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v38, "extensionItems");
  HIBYTE(v38[1]) = -18;
  sub_1A9977250();
  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

  v6 = sub_1A97BCF30(v39);
  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1A97AF7EC(*(a1 + 56) + 32 * v6, v40);
  sub_1A97C108C(v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2B00, &unk_1A9998468);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v27 = 0;
    return v27 & 1;
  }

  if (*(v38[0] + 16) != 1)
  {
    goto LABEL_11;
  }

  v8 = *(v38[0] + 32);

  if (*(v8 + 16) != 1)
  {
    goto LABEL_11;
  }

  strcpy(v38, "attachments");
  HIDWORD(v38[1]) = -352321536;
  sub_1A9977250();
  if (!*(v8 + 16) || (v9 = sub_1A97BCF30(v39), (v10 & 1) == 0))
  {

LABEL_14:
    sub_1A97C108C(v39);
    goto LABEL_15;
  }

  sub_1A97AF7EC(*(v8 + 56) + 32 * v9, v40);
  sub_1A97C108C(v39);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F58, &qword_1A99A4470);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (*(v38[0] + 16) != 3)
  {
LABEL_11:

    goto LABEL_15;
  }

  v36 = sub_1A98D7934(v38[0]);

  v32 = 0x80000001A99E27C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B4F60, &qword_1A9998418);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9998180;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AE0, &qword_1A9998460);
  v11 = swift_initStackObject();
  v37 = xmmword_1A9996D60;
  *(v11 + 16) = xmmword_1A9996D60;
  *(v11 + 32) = 0xD000000000000019;
  *(v11 + 40) = 0x80000001A99E27C0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1210, &qword_1A99919F8);
  v12 = swift_allocObject();
  *(v12 + 16) = v37;
  sub_1A9976410();
  v13 = sub_1A99763D0();
  v15 = v14;
  v30 = *(v3 + 8);
  v30(v5, v2);
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  *(v11 + 48) = v12;
  v16 = sub_1A97BF200(v11);
  swift_setDeallocating();
  sub_1A97B06FC(v11 + 32, &qword_1EB3B2AA0, &qword_1A9998420);
  v17 = inited;
  v18 = inited;
  *(inited + 32) = v16;
  v35 = v18 + 32;
  v19 = swift_initStackObject();
  *(v19 + 16) = v37;
  *(v19 + 32) = 0xD000000000000019;
  *(v19 + 40) = v32;
  v20 = swift_allocObject();
  *(v20 + 16) = v37;
  sub_1A99763E0();
  v21 = sub_1A99763D0();
  v23 = v22;
  v30(v5, v2);
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  *(v19 + 48) = v20;
  v24 = sub_1A97BF200(v19);
  swift_setDeallocating();
  sub_1A97B06FC(v19 + 32, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v17 + 40) = v24;
  v25 = sub_1A97BF200(&unk_1F1D277C8);
  sub_1A97B06FC(&unk_1F1D277E8, &qword_1EB3B2AA0, &qword_1A9998420);
  *(v17 + 48) = v25;
  v26 = sub_1A98D7934(v17);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F70, &qword_1A99A4478);
  swift_arrayDestroy();
  v27 = sub_1A98BB99C(v26, v36);

  return v27 & 1;
}

uint64_t sub_1A98D7ECC(unint64_t a1, char **a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  sub_1A97AF7EC(a1, v35);
  sub_1A97AF7EC(v35, &v31);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1650, &qword_1A9992800);
  v7 = swift_dynamicCast();
  LOBYTE(v8) = v7;
  if (v7)
  {
    v27 = v6;
    v28 = v5;
    v29 = v7;
    v9 = *&v33[0];
    v34 = *&v33[0];
    v10 = 1 << *(*&v33[0] + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v5 = v11 & *(*&v33[0] + 64);
    v12 = (v10 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v8 = 0;
    v13 = &unk_1ED717DE0;
    while (1)
    {
      if (!v5)
      {
        while (1)
        {
          v14 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v14 >= v12)
          {
            __swift_destroy_boxed_opaque_existential_0Tm(v35);

            swift_bridgeObjectRelease_n();
            return 0;
          }

          v5 = *(v9 + 64 + 8 * v14);
          ++v8;
          if (v5)
          {
            v8 = v14;
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_32;
      }

LABEL_10:
      sub_1A97AF7EC(*(v9 + 56) + ((v8 << 11) | (32 * __clz(__rbit64(v5)))), &v31);
      sub_1A97AF7EC(&v31, v33);
      sub_1A9812DE0(0, &unk_1ED717DE0, 0x1E696AEC0);
      if (!swift_dynamicCast())
      {
        break;
      }

      v5 &= v5 - 1;
      v15 = [v30 intValue];

      __swift_destroy_boxed_opaque_existential_0Tm(&v31);
      if (v15)
      {

        goto LABEL_15;
      }
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v31);
LABEL_15:

    LOBYTE(v8) = v29;
    v5 = v28;
    if (!SFPlatformShouldExhibitEmbeddedBehavior())
    {
      goto LABEL_23;
    }

    sub_1A9977250();
    if (!*(v9 + 16) || (v16 = sub_1A97BCF30(&v31), (v17 & 1) == 0))
    {
      sub_1A97C108C(&v31);
      goto LABEL_23;
    }

    sub_1A97AF7EC(*(v9 + 56) + 32 * v16, v33);
    sub_1A97C108C(&v31);
    sub_1A9812DE0(0, &qword_1EB3AB620, 0x1E696AD98);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_23:

      goto LABEL_24;
    }

    v13 = 0xD000000000000031;
    if ([0xD000000000000031 integerValue] >= 1)
    {
      if (sub_1A98D79D0(a2))
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v35);

        return 1;
      }

      if (*(v9 + 16) == 1)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v35);

        return 0;
      }

      *&v33[0] = 0xD000000000000031;
      *(&v33[0] + 1) = 0x80000001A99E6EE0;
      sub_1A9977250();
      sub_1A98D581C(&v31, v33);
      sub_1A97C108C(&v31);
      sub_1A97B06FC(v33, &qword_1EB3B0BA0, &unk_1A99923D0);
      v26 = v34;
      v32 = v27;

      *&v31 = v26;
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      sub_1A967C4DC(&v31, v35);
      goto LABEL_23;
    }

LABEL_32:
  }

LABEL_24:
  v19 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(v5, *(v5 + 24));
  v20 = [v19 predicateForActivationRule_];
  swift_unknownObjectRelease();
  if (!v20)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    return 0;
  }

  if ((v8 & 1) == 0)
  {
    v21 = objc_opt_self();
    v22 = sub_1A99766E0();
    v23 = sub_1A99767E0();
    LOBYTE(v21) = [v21 isPredicateSafeToExecute:v20 withObject:v22 identifier:v23];

    if ((v21 & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v35);

      return 0;
    }
  }

  v24 = sub_1A99766E0();
  v25 = [v20 evaluateWithObject_];

  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  return v25;
}

uint64_t sub_1A98D83E8(char *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v110 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B4F80, &qword_1A99A4488);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v106 = &v97 - v9;
  v105 = sub_1A9976420();
  v10 = *(v105 - 8);
  v11 = MEMORY[0x1EEE9AC00](v105);
  v98 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v101 = &v97 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v100 = &v97 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v104 = &v97 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3AD0, &unk_1A99A4490);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v99 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v97 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v103 = &v97 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v102 = &v97 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v97 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v97 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v97 - v34;
  if (sub_1A98D5A60(63, 0xE100000000000000, a3, a4))
  {
    v97 = v10;
    v106 = v4;

    UTType.init(identifier:allowUndeclared:)(v35);
    if (sub_1A98D5A60(0x464E4F432D54553FLL, 0xED00003A534D524FLL, a3, a4))
    {

      v36 = sub_1A99768E0();
      v37 = sub_1A98D73C4(v36, a3, a4);
      v39 = v38;
      v41 = v40;
      v43 = v42;

      MEMORY[0x1AC589540](v37, v39, v41, v43);

      UTType.init(identifier:allowUndeclared:)(v33);
      sub_1A97C13A4(v35, v30, &qword_1EB3B3AD0, &unk_1A99A4490);
      v44 = v97;
      v45 = *(v97 + 48);
      v46 = v105;
      if (v45(v30, 1, v105) == 1)
      {
        sub_1A97B06FC(v33, &qword_1EB3B3AD0, &unk_1A99A4490);
        v47 = v35;
LABEL_18:
        sub_1A97B06FC(v47, &qword_1EB3B3AD0, &unk_1A99A4490);
        v80 = v30;
LABEL_29:
        sub_1A97B06FC(v80, &qword_1EB3B3AD0, &unk_1A99A4490);
        v77 = 0;
        return v77 & 1;
      }

      v110 = v35;
      v78 = *(v44 + 32);
      v79 = v104;
      v78(v104, v30, v46);
      v30 = v102;
      sub_1A97C13A4(v33, v102, &qword_1EB3B3AD0, &unk_1A99A4490);
      if (v45(v30, 1, v46) == 1)
      {
        (*(v44 + 8))(v79, v46);
        sub_1A97B06FC(v33, &qword_1EB3B3AD0, &unk_1A99A4490);
        v47 = v110;
        goto LABEL_18;
      }

      v89 = v30;
      v90 = v100;
      v78(v100, v89, v46);
      v77 = sub_1A9976400();
      v91 = *(v44 + 8);
      v91(v90, v46);
      v91(v79, v46);
      sub_1A97B06FC(v33, &qword_1EB3B3AD0, &unk_1A99A4490);
      v92 = v110;
LABEL_35:
      sub_1A97B06FC(v92, &qword_1EB3B3AD0, &unk_1A99A4490);
      return v77 & 1;
    }

    v110 = v35;
    if ((sub_1A98D5A60(0x3A53492D54553FLL, 0xE700000000000000, a3, a4) & 1) == 0)
    {
      if (qword_1EB3ABCB0 != -1)
      {
        swift_once();
      }

      v81 = sub_1A99764A0();
      __swift_project_value_buffer(v81, qword_1EB3ABCC0);

      v82 = sub_1A9976480();
      v83 = sub_1A9976F70();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v109[0] = v85;
        *v84 = 136315138;
        *(v84 + 4) = sub_1A97AF148(a3, a4, v109);
        _os_log_impl(&dword_1A9662000, v82, v83, "ExtensionsCache: Unrecognized match operator %s", v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v85);
        MEMORY[0x1AC58D2C0](v85, -1, -1);
        MEMORY[0x1AC58D2C0](v84, -1, -1);
      }

      v80 = v110;
      goto LABEL_29;
    }

    v52 = sub_1A99768E0();
    v53 = sub_1A98D73C4(v52, a3, a4);
    v55 = v54;
    v57 = v56;
    v59 = v58;

    MEMORY[0x1AC589540](v53, v55, v57, v59);

    v60 = v103;
    UTType.init(identifier:allowUndeclared:)(v103);
    v61 = v110;
    sub_1A97C13A4(v110, v23, &qword_1EB3B3AD0, &unk_1A99A4490);
    v62 = v97;
    v63 = *(v97 + 48);
    v64 = v105;
    if (v63(v23, 1, v105) == 1)
    {
      sub_1A97B06FC(v60, &qword_1EB3B3AD0, &unk_1A99A4490);
      v65 = v61;
    }

    else
    {
      v86 = *(v62 + 32);
      v87 = v101;
      v86(v101, v23, v64);
      v23 = v99;
      sub_1A97C13A4(v60, v99, &qword_1EB3B3AD0, &unk_1A99A4490);
      if (v63(v23, 1, v64) != 1)
      {
        v93 = v23;
        v94 = v98;
        v86(v98, v93, v64);
        v77 = sub_1A9976400();
        v95 = *(v62 + 8);
        v95(v94, v64);
        v95(v87, v64);
        sub_1A97B06FC(v60, &qword_1EB3B3AD0, &unk_1A99A4490);
        v92 = v110;
        goto LABEL_35;
      }

      (*(v62 + 8))(v87, v64);
      sub_1A97B06FC(v60, &qword_1EB3B3AD0, &unk_1A99A4490);
      v65 = v110;
    }

    sub_1A97B06FC(v65, &qword_1EB3B3AD0, &unk_1A99A4490);
    v80 = v23;
    goto LABEL_29;
  }

  v105 = a2;
  v48 = a3;
  if (sub_1A98D5A60(15932, 0xE200000000000000, a3, a4))
  {
    v49 = 0;
LABEL_7:
    v50 = 1;
    v51 = 2;
LABEL_13:

    goto LABEL_14;
  }

  if (sub_1A98D5A60(15676, 0xE200000000000000, a3, a4))
  {
    v50 = 1;
    v51 = 2;
    v49 = 1;
    goto LABEL_13;
  }

  if (sub_1A98D5A60(15678, 0xE200000000000000, a3, a4))
  {
    v49 = -1;
    goto LABEL_7;
  }

  if (sub_1A98D5A60(61, 0xE100000000000000, a3, a4))
  {
    v50 = 0;
    v49 = 0;
    v51 = 1;
    goto LABEL_13;
  }

  if (sub_1A98D5A60(60, 0xE100000000000000, a3, a4))
  {
    v50 = 0;
    v49 = -1;
    v51 = 1;
    goto LABEL_13;
  }

  v96 = sub_1A98D5A60(62, 0xE100000000000000, a3, a4);

  v50 = 0;
  if ((v96 & 1) == 0)
  {
    v49 = 0;
    goto LABEL_15;
  }

  v51 = 1;
  v49 = 1;
LABEL_14:
  v66 = sub_1A98D73C4(v51, a3, a4);
  v68 = v67;
  v70 = v69;
  v72 = v71;

  v48 = MEMORY[0x1AC589540](v66, v68, v70, v72);
  a4 = v73;

LABEL_15:
  v109[0] = v110;
  v109[1] = v105;
  v107 = v48;
  v108 = a4;
  v74 = sub_1A99762E0();
  v75 = v106;
  (*(*(v74 - 8) + 56))(v106, 1, 1, v74);
  sub_1A97F0528();
  v76 = sub_1A99771A0();
  sub_1A97B06FC(v75, &unk_1EB3B4F80, &qword_1A99A4488);

  v77 = v50 ^ (v76 == v49);
  return v77 & 1;
}

uint64_t sub_1A98D8EE4(char *a1, uint64_t a2, uint64_t a3)
{
  sub_1A97AF7EC(a3, v16);
  if (swift_dynamicCast())
  {
    LOBYTE(a2) = sub_1A98D83E8(a1, a2, v14, v15);

    return a2 & 1;
  }

  sub_1A97AF7EC(a3, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    LOBYTE(a2) = 0;
    return a2 & 1;
  }

  v8 = (v14 + 40);
  v9 = -*(v14 + 16);
  v10 = -1;
  while (1)
  {
    if (v9 + v10 == -1)
    {

      LOBYTE(a2) = 0;
      return a2 & 1;
    }

    if (++v10 >= *(v14 + 16))
    {
      break;
    }

    v11 = *(v8 - 1);
    v12 = *v8;

    v13 = sub_1A98D83E8(a1, a2, v11, v12);

    if (v3)
    {

      return a2 & 1;
    }

    v8 += 2;
    if (v13)
    {

      LOBYTE(a2) = 1;
      return a2 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A98D9094(char *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v114 = a4;
  v113 = a1;
  v6 = sub_1A9976020();
  v112 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A99762C0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = 0u;
  v123 = 0u;
  if (sub_1A98D5A60(0x4D454C5449544E45, 0xEC0000003A544E45, a2, a3))
  {

    v13 = sub_1A99768E0();
    v14 = sub_1A98D73C4(v13, a2, a3);
    v16 = v15;
    v18 = v17;
    v20 = v19;

    MEMORY[0x1AC589540](v14, v16, v18, v20);

    v21 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
    if (v21)
    {
      v22 = v21;
      v23 = sub_1A99767E0();

      v24 = SecTaskCopyValueForEntitlement(v22, v23, 0);

      v26 = v114;
      v25 = v115;
      if (v24)
      {
        ObjectType = swift_getObjectType();

        sub_1A97B06FC(&v122, &qword_1EB3B0BA0, &unk_1A99923D0);
      }

      else
      {
        sub_1A97B06FC(&v122, &qword_1EB3B0BA0, &unk_1A99923D0);

        ObjectType = 0;
      }
    }

    else
    {

      sub_1A97B06FC(&v122, &qword_1EB3B0BA0, &unk_1A99923D0);
      ObjectType = 0;
      v24 = 0;
      v26 = v114;
      v25 = v115;
    }

    *&v123 = 0;
    v122 = v24;
    *(&v123 + 1) = ObjectType;
    goto LABEL_40;
  }

  if (sub_1A98D5A60(3822412, 0xE300000000000000, a2, a3))
  {
    sub_1A97B06FC(&v122, &qword_1EB3B0BA0, &unk_1A99923D0);
    LOBYTE(v28) = 1;
    return v28 & 1;
  }

  if (sub_1A9976820() == a2 && v29 == a3)
  {

    goto LABEL_20;
  }

  v31 = sub_1A99777E0();

  if (v31)
  {
LABEL_20:
    v35 = v113;
    v36 = [v113 identifier];
    if (v36)
    {
      v37 = v36;
      v38 = sub_1A9976820();
      v40 = v39;

      v41 = MEMORY[0x1E69E6158];
    }

    else
    {
      v40 = 0;
      v38 = 0;
      v41 = 0;
    }

    v26 = v114;
    sub_1A97B06FC(&v122, &qword_1EB3B0BA0, &unk_1A99923D0);
    *&v122 = v38;
    *(&v122 + 1) = v40;
    *&v123 = 0;
    *(&v123 + 1) = v41;
    goto LABEL_26;
  }

  if (sub_1A9976820() == a2 && v32 == a3)
  {
  }

  else
  {
    v34 = sub_1A99777E0();

    if ((v34 & 1) == 0)
    {
      goto LABEL_87;
    }
  }

  v124 = &unk_1F1DA42A0;
  v76 = swift_dynamicCastObjCProtocolConditional();
  if (v76)
  {
    v77 = v76;
    v78 = v113;
    swift_unknownObjectRetain();
    result = [v77 uuid];
    if (!result)
    {
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    v79 = result;
    sub_1A9976290();

    v80 = _s7Sharing9SFAirDropO18TransferIdentifierV11stringValueSSvg_0();
    v82 = v81;
    swift_unknownObjectRelease();
    sub_1A97B06FC(&v122, &qword_1EB3B0BA0, &unk_1A99923D0);
    (*(v10 + 8))(v12, v9);
    *&v122 = v80;
    *(&v122 + 1) = v82;
    *(&v123 + 1) = MEMORY[0x1E69E6158];
    v26 = v114;
    v35 = v78;
    goto LABEL_26;
  }

LABEL_87:
  if (sub_1A9976820() == a2 && v83 == a3)
  {

    v35 = v113;
    v26 = v114;
LABEL_106:
    sub_1A9812DE0(0, &qword_1EB3AB620, 0x1E696AD98);
    [v35 userElection];
    v98 = sub_1A9977030();
    v99 = [v98 description];
    v100 = sub_1A9976820();
    v102 = v101;

    sub_1A97B06FC(&v122, &qword_1EB3B0BA0, &unk_1A99923D0);
    *&v122 = v100;
    *(&v122 + 1) = v102;
    *(&v123 + 1) = MEMORY[0x1E69E6158];
LABEL_26:
    sub_1A97C13A4(&v122, &v120, &qword_1EB3B0BA0, &unk_1A99923D0);
    v42 = *(&v121 + 1);
    sub_1A97B06FC(&v120, &qword_1EB3B0BA0, &unk_1A99923D0);
    if (!v42)
    {
      result = [v35 attributes];
      if (!result)
      {
LABEL_122:
        __break(1u);
        goto LABEL_123;
      }

      v44 = result;
      v45 = sub_1A9976700();

      *&v118 = a2;
      *(&v118 + 1) = a3;

      sub_1A9977250();
      if (*(v45 + 16) && (v46 = sub_1A97BCF30(&v120), (v47 & 1) != 0))
      {
        sub_1A97AF7EC(*(v45 + 56) + 32 * v46, &v118);
        sub_1A97C108C(&v120);
        sub_1A97B06FC(&v122, &qword_1EB3B0BA0, &unk_1A99923D0);
      }

      else
      {

        sub_1A97C108C(&v120);
        sub_1A97B06FC(&v122, &qword_1EB3B0BA0, &unk_1A99923D0);
        v118 = 0u;
        v119 = 0u;
      }

      v122 = v118;
      v123 = v119;
    }

    sub_1A97C13A4(&v122, &v120, &qword_1EB3B0BA0, &unk_1A99923D0);
    v48 = *(&v121 + 1);
    sub_1A97B06FC(&v120, &qword_1EB3B0BA0, &unk_1A99923D0);
    v25 = v115;
    if (!v48)
    {
      result = [v113 bundleInfoDictionary];
      if (!result)
      {
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      v49 = result;
      v50 = sub_1A9976700();

      *&v118 = a2;
      *(&v118 + 1) = a3;

      sub_1A9977250();
      if (*(v50 + 16) && (v51 = sub_1A97BCF30(&v120), (v52 & 1) != 0))
      {
        sub_1A97AF7EC(*(v50 + 56) + 32 * v51, &v118);
        sub_1A97C108C(&v120);
        sub_1A97B06FC(&v122, &qword_1EB3B0BA0, &unk_1A99923D0);
      }

      else
      {

        sub_1A97C108C(&v120);
        sub_1A97B06FC(&v122, &qword_1EB3B0BA0, &unk_1A99923D0);
        v118 = 0u;
        v119 = 0u;
      }

      v122 = v118;
      v123 = v119;
    }

LABEL_40:
    sub_1A97AF7EC(v26, &v120);
    sub_1A9812DE0(0, &qword_1EB3AB620, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v53 = v118;
      sub_1A9812DE0(0, &qword_1EB3B4F50, 0x1E69E58C0);
      v54 = sub_1A9977020();
      v55 = sub_1A9977040();

      if (v55)
      {
        sub_1A97C13A4(&v122, &v118, &qword_1EB3B0BA0, &unk_1A99923D0);
        if (*(&v119 + 1))
        {
          sub_1A967C4DC(&v118, &v120);
          sub_1A97AF7EC(&v120, &v118);
          if (swift_dynamicCast())
          {
            v56 = v116;
            v57 = sub_1A9977020();
            v58 = sub_1A9977040();

            __swift_destroy_boxed_opaque_existential_0Tm(&v120);
            sub_1A97B06FC(&v122, &qword_1EB3B0BA0, &unk_1A99923D0);
            if (v58)
            {
              goto LABEL_71;
            }

LABEL_78:
            LOBYTE(v28) = 1;
            return v28 & 1;
          }

LABEL_76:
          __swift_destroy_boxed_opaque_existential_0Tm(&v120);
LABEL_77:
          sub_1A97B06FC(&v122, &qword_1EB3B0BA0, &unk_1A99923D0);
          goto LABEL_78;
        }

        sub_1A97B06FC(&v122, &qword_1EB3B0BA0, &unk_1A99923D0);

        goto LABEL_69;
      }
    }

    sub_1A97AF7EC(v26, &v120);
    if (swift_dynamicCast())
    {
      v59 = v118;
      sub_1A9812DE0(0, &qword_1EB3B4F50, 0x1E69E58C0);
      v60 = sub_1A9977020();
      v61 = sub_1A9977040();

      if (v61)
      {
        sub_1A97C13A4(&v122, &v120, &qword_1EB3B0BA0, &unk_1A99923D0);
        if (*(&v121 + 1))
        {
          if (swift_dynamicCast())
          {
            v62 = v118;
            v63 = sub_1A9977020();
            v64 = sub_1A9977040();

            if (v64)
            {
              goto LABEL_77;
            }
          }

          else
          {
          }
        }

        else
        {

          sub_1A97B06FC(&v120, &qword_1EB3B0BA0, &unk_1A99923D0);
        }

        v120 = v122;
        v121 = v123;
        LOBYTE(v28) = *(&v123 + 1) == 0;
        sub_1A97B06FC(&v120, &qword_1EB3B0BA0, &unk_1A99923D0);
        return v28 & 1;
      }
    }

    sub_1A97C13A4(&v122, &v118, &qword_1EB3B0BA0, &unk_1A99923D0);
    if (!*(&v119 + 1))
    {
      sub_1A97B06FC(&v122, &qword_1EB3B0BA0, &unk_1A99923D0);
LABEL_69:
      v73 = &v118;
LABEL_70:
      sub_1A97B06FC(v73, &qword_1EB3B0BA0, &unk_1A99923D0);
LABEL_71:
      LOBYTE(v28) = 0;
      return v28 & 1;
    }

    sub_1A967C4DC(&v118, &v120);
    sub_1A97AF7EC(v26, &v118);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1650, &qword_1A9992800);
    if (swift_dynamicCast())
    {
      v65 = v116;
      result = [v113 identifier];
      if (result)
      {
        v66 = result;
        v28 = sub_1A9976820();
        v68 = v67;

        if (sub_1A98D7474(v65) & 1) != 0 && ((sub_1A98D7ECC(&v120, v65, v28, v68) & 1) != 0 || (sub_1A98DE538(0xD000000000000018, 0x80000001A99E2760, v65), v70 = sub_1A98D7ECC(&v120, v69, v28, v68), , (v70) || (sub_1A98DE538(0xD000000000000014, 0x80000001A99E6EC0, v65), v72 = sub_1A98D7ECC(&v120, v71, v28, v68), , (v72)))
        {
          LOBYTE(v28) = 1;
        }

        else
        {
          LOBYTE(v28) = sub_1A98D7ECC(&v120, v65, v28, v68);
        }

        goto LABEL_67;
      }

      goto LABEL_121;
    }

    sub_1A97AF7EC(&v120, &v118);
    if (swift_dynamicCast())
    {
      LOBYTE(v28) = sub_1A98D8EE4(v116, v117, v26);

LABEL_67:
      __swift_destroy_boxed_opaque_existential_0Tm(&v120);
      sub_1A97B06FC(&v122, &qword_1EB3B0BA0, &unk_1A99923D0);
      return v28 & 1;
    }

    sub_1A97AF7EC(&v120, &v118);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
    result = swift_dynamicCast();
    if (result)
    {
      v28 = v116;
      v111 = *(v116 + 2);
      if (v111)
      {
        v75 = 0;
        v112 = v116 + 32;
        v110 = v116;
        v109[1] = v74;
        while (v75 < *(v28 + 16))
        {
          v84 = &v112[16 * v75];
          v86 = *v84;
          v85 = *(v84 + 1);
          sub_1A97AF7EC(v26, &v118);

          if (swift_dynamicCast())
          {
            v87 = sub_1A98D83E8(v86, v85, v116, v117);
            if (v25)
            {
LABEL_112:

              goto LABEL_67;
            }

            v88 = v87;

            if (v88)
            {

              goto LABEL_76;
            }
          }

          else
          {
            sub_1A97AF7EC(v26, &v118);
            result = swift_dynamicCast();
            if (result)
            {
              v113 = v86;
              v115 = v85;
              v89 = v25;
              v90 = v116;
              v91 = (v116 + 40);
              v28 = -*(v116 + 2);
              v92 = -1;
              while (1)
              {
                if (v28 + v92 == -1)
                {

                  v25 = v89;
                  v26 = v114;
                  v28 = v110;
                  goto LABEL_91;
                }

                if (++v92 >= *(v90 + 2))
                {
                  break;
                }

                v93 = v89;
                v94 = *(v91 - 1);
                v95 = *v91;

                v96 = sub_1A98D83E8(v113, v115, v94, v95);

                v89 = v93;
                if (v93)
                {
                  goto LABEL_112;
                }

                v91 += 2;
                if (v96)
                {

                  goto LABEL_76;
                }
              }

              __break(1u);
              break;
            }
          }

LABEL_91:
          if (++v75 == v111)
          {
            goto LABEL_107;
          }
        }

        __break(1u);
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

LABEL_107:
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v120);
    v73 = &v122;
    goto LABEL_70;
  }

  v97 = sub_1A99777E0();

  v35 = v113;
  v26 = v114;
  if (v97)
  {
    goto LABEL_106;
  }

  if (sub_1A9976820() == a2 && v103 == a3)
  {
  }

  else
  {
    v104 = sub_1A99777E0();

    if ((v104 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  result = [v35 containingUrl];
  if (result)
  {
    v105 = result;
    sub_1A9975FE0();

    v106 = sub_1A9975FF0();
    v108 = v107;
    sub_1A97B06FC(&v122, &qword_1EB3B0BA0, &unk_1A99923D0);
    (*(v112 + 1))(v8, v6);
    *&v122 = v106;
    *(&v122 + 1) = v108;
    *(&v123 + 1) = MEMORY[0x1E69E6158];
    sub_1A97C13A4(&v122, &v120, &qword_1EB3B0BA0, &unk_1A99923D0);
    if (!*(&v121 + 1))
    {
      sub_1A97B06FC(&v122, &qword_1EB3B0BA0, &unk_1A99923D0);
      sub_1A97B06FC(&v120, &qword_1EB3B0BA0, &unk_1A99923D0);
      LOBYTE(v28) = 0;
      return v28 & 1;
    }

    sub_1A97B06FC(&v120, &qword_1EB3B0BA0, &unk_1A99923D0);
    v35 = v113;
    v26 = v114;
    goto LABEL_26;
  }

LABEL_125:
  __break(1u);
  return result;
}

char *sub_1A98DA210(void (**a1)(char *, uint64_t, uint64_t))
{
  v592 = a1;
  v562 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v542 = &v531 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v538 = &v531 - v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v552 = &v531 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v557 = (&v531 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4F90, &qword_1A99A44A0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v555 = &v531 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v544 = &v531 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B4F80, &qword_1A99A4488);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v549 = &v531 - v14;
  v15 = sub_1A99762C0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v537 = &v531 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v536 = &v531 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v535 = &v531 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v534 = &v531 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v558 = &v531 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v545 = &v531 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v543 = &v531 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v540 = &v531 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v539 = &v531 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v548 = &v531 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v590 = &v531 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v587 = &v531 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B4F98, &unk_1A99A44A8);
  v41 = MEMORY[0x1EEE9AC00](v40 - 8);
  v567 = &v531 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v566 = &v531 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v531 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v584 = (&v531 - v49);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v52 = &v531 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v54 = &v531 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A40, &qword_1A99983B0);
  v56 = MEMORY[0x1EEE9AC00](v55 - 8);
  v559 = &v531 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v560 = (&v531 - v58);
  v59 = sub_1A99763B0();
  v60 = *(v59 - 8);
  v61 = MEMORY[0x1EEE9AC00](v59);
  v551 = &v531 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x1EEE9AC00](v61);
  v565 = &v531 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v583 = &v531 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v589 = &v531 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v588 = &v531 - v70;
  MEMORY[0x1EEE9AC00](v69);
  v574 = &v531 - v71;
  v72 = MEMORY[0x1E69E7CC0];
  v73 = sub_1A97BF76C(MEMORY[0x1E69E7CC0]);
  v612 = v73;
  v553 = sub_1A97BF558(v72);
  v75 = v592[2];
  v594 = v15;
  v591 = v16;
  v593 = v59;
  v575 = v60;
  v576 = v47;
  if (v75)
  {
    v76 = 0;
    v78 = *(v60 + 16);
    v77 = v60 + 16;
    v580 = v78;
    *&v568 = v592 + ((*(v77 + 64) + 32) & ~*(v77 + 64));
    v579 = *(v77 + 56);
    v582 = v77 - 8;
    v569 = (v16 + 16);
    v550 = *MEMORY[0x1E695E480];
    v586 = (v16 + 32);
    v581 = v77;
    v585 = (v77 + 16);
    v564 = *MEMORY[0x1E69C4B18];
    v571 = (v16 + 8);
    v554 = (v16 + 56);
    v547 = (v16 + 48);
    v79 = &off_1E7892000;
    *&v74 = 136315138;
    v556 = v74;
    *&v74 = 136315394;
    v546 = v74;
    *&v74 = 136315650;
    v533 = v74;
    v80 = v584;
    v577 = v52;
    v578 = v54;
    v561 = v75;
    v81 = v75;
    while (1)
    {
      v572 = v76;
      (v580)(v574, v568 + v579 * v76, v59);
      v82 = sub_1A9976350();
      if (!v82 || (v83 = v82, v84 = [v82 _plugIn], v83, !v84))
      {
        (*v582)(v574, v59);
        goto LABEL_4;
      }

      if (([v84 v79[334]] & 1) == 0)
      {
        v85 = [v84 containingUrl];
        if (!v85)
        {
          v163 = sub_1A9976020();
          v164 = v560;
          (*(*(v163 - 8) + 56))(v560, 1, 1, v163);
          sub_1A97B06FC(v164, &unk_1EB3B2A40, &qword_1A99983B0);
          if (qword_1EB3ABCB0 != -1)
          {
            swift_once();
          }

          v165 = sub_1A99764A0();
          __swift_project_value_buffer(v165, qword_1EB3ABCC0);
          swift_unknownObjectRetain();
          v166 = sub_1A9976480();
          v167 = sub_1A9976F60();
          if (os_log_type_enabled(v166, v167))
          {
            v168 = swift_slowAlloc();
            v169 = swift_slowAlloc();
            *&v604 = v169;
            *v168 = v556;
            v170 = [v84 identifier];
            swift_unknownObjectRelease();
            if (!v170)
            {
              goto LABEL_318;
            }

LABEL_74:
            v174 = sub_1A9976820();
            v176 = v175;

            v177 = sub_1A97AF148(v174, v176, &v604);

            *(v168 + 4) = v177;
            _os_log_impl(&dword_1A9662000, v166, v167, "ExtensionsCache: Removing extension %s because it is a non-system plugin without a containing app", v168, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v169);
            MEMORY[0x1AC58D2C0](v169, -1, -1);
            MEMORY[0x1AC58D2C0](v168, -1, -1);
            swift_unknownObjectRelease();

            goto LABEL_82;
          }

LABEL_75:

          swift_unknownObjectRelease_n();
          (*v582)(v574, v59);
          goto LABEL_134;
        }

        v86 = v560;
        v87 = v85;
        sub_1A9975FE0();

        v88 = sub_1A9976020();
        (*(*(v88 - 8) + 56))(v86, 0, 1, v88);
        v89 = v86;
        v79 = &off_1E7892000;
        sub_1A97B06FC(v89, &unk_1EB3B2A40, &qword_1A99983B0);
      }

      if (([v84 v79[334]] & 1) == 0)
      {
        v90 = [v84 containingUrl];
        if (!v90)
        {
          v171 = sub_1A9976020();
          v172 = v559;
          (*(*(v171 - 8) + 56))(v559, 1, 1, v171);
          sub_1A97B06FC(v172, &unk_1EB3B2A40, &qword_1A99983B0);
          if (qword_1EB3ABCB0 != -1)
          {
            swift_once();
          }

          v173 = sub_1A99764A0();
          __swift_project_value_buffer(v173, qword_1EB3ABCC0);
          swift_unknownObjectRetain();
          v166 = sub_1A9976480();
          v167 = sub_1A9976F60();
          if (os_log_type_enabled(v166, v167))
          {
            v168 = swift_slowAlloc();
            v169 = swift_slowAlloc();
            *&v604 = v169;
            *v168 = v556;
            v170 = [v84 identifier];
            swift_unknownObjectRelease();
            if (!v170)
            {
              goto LABEL_319;
            }

            goto LABEL_74;
          }

          goto LABEL_75;
        }

        v91 = v559;
        v92 = v90;
        sub_1A9975FE0();

        v93 = sub_1A9976020();
        (*(*(v93 - 8) + 56))(v91, 0, 1, v93);
        sub_1A97B06FC(v91, &unk_1EB3B2A40, &qword_1A99983B0);
      }

      v94 = [v84 plugInDictionary];
      if (v94)
      {
        v95 = v94;
        v96 = sub_1A9976700();

        if (sub_1A98D4DF4(v96))
        {

          if (qword_1EB3ABCB0 != -1)
          {
            swift_once();
          }

          v97 = sub_1A99764A0();
          __swift_project_value_buffer(v97, qword_1EB3ABCC0);
          swift_unknownObjectRetain();
          v98 = sub_1A9976480();
          v99 = sub_1A9976F60();
          if (!os_log_type_enabled(v98, v99))
          {

            swift_unknownObjectRelease_n();
            (*v582)(v574, v59);
            v47 = v576;
            v80 = v584;
            goto LABEL_4;
          }

          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          *&v604 = v101;
          *v100 = v556;
          v102 = [v84 identifier];
          swift_unknownObjectRelease();
          if (!v102)
          {
            goto LABEL_317;
          }

          v103 = sub_1A9976820();
          v105 = v104;

          v106 = sub_1A97AF148(v103, v105, &v604);

          *(v100 + 4) = v106;
          _os_log_impl(&dword_1A9662000, v98, v99, "ExtensionsCache: Removing extension %s because it is a dedicated plug-in", v100, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v101);
          MEMORY[0x1AC58D2C0](v101, -1, -1);
          MEMORY[0x1AC58D2C0](v100, -1, -1);
          swift_unknownObjectRelease();

          v59 = v593;
          (*v582)(v574, v593);
          v47 = v576;
          v52 = v577;
          goto LABEL_131;
        }

        v573 = sub_1A98D4F88(v96);
        v108 = v107;

        if (v108)
        {
          v109 = SecTaskCreateFromSelf(v550);
          if (!v109 || (v110 = v109, v111 = sub_1A99767E0(), v112 = SecTaskCopyValueForEntitlement(v110, v111, 0), v111, v59 = v593, v110, v113 = v112, v79 = &off_1E7892000, !v113))
          {
            if (qword_1EB3ABCB0 != -1)
            {
              swift_once();
            }

            v241 = sub_1A99764A0();
            __swift_project_value_buffer(v241, qword_1EB3ABCC0);
            swift_unknownObjectRetain();

            v242 = sub_1A9976480();
            LODWORD(v570) = sub_1A9976F60();
            if (!os_log_type_enabled(v242, v570))
            {

              swift_unknownObjectRelease_n();
              swift_bridgeObjectRelease_n();
              (*v582)(v574, v59);
              v80 = v584;
              goto LABEL_4;
            }

            v563 = v242;
            v243 = swift_slowAlloc();
            v244 = swift_slowAlloc();
            *&v604 = v244;
            *v243 = v546;
            v245 = [v84 identifier];
            swift_unknownObjectRelease();

            if (!v245)
            {
              goto LABEL_323;
            }

            v246 = sub_1A9976820();
            v248 = v247;

            v249 = sub_1A97AF148(v246, v248, &v604);

            *(v243 + 4) = v249;
            *(v243 + 12) = 2080;
            v250 = sub_1A97AF148(v573, v108, &v604);

            *(v243 + 14) = v250;
            v251 = v563;
            _os_log_impl(&dword_1A9662000, v563, v570, "ExtensionsCache: Removing extension %s because it requires entitlement %s on the host", v243, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1AC58D2C0](v244, -1, -1);
            MEMORY[0x1AC58D2C0](v243, -1, -1);
            swift_unknownObjectRelease();

            v59 = v593;
            (*v582)(v574, v593);
            v47 = v576;
LABEL_131:
            v80 = v584;
            v54 = v578;
            v79 = &off_1E7892000;
            goto LABEL_4;
          }

          swift_unknownObjectRelease();
        }
      }

      v592 = v84;
      v114 = sub_1A98D7300();
      if (!v114)
      {
        v116 = v594;
        goto LABEL_85;
      }

      isa = v114[2].isa;
      v116 = v594;
      if (!isa)
      {
        goto LABEL_84;
      }

      v117 = 0;
      v118 = v114 + 4;
      v573 = v114;
      v563 = isa;
      v541 = v114 + 4;
      do
      {
        if (v117 >= v114[2].isa)
        {
          goto LABEL_310;
        }

        v119 = v118[v117].isa;
        v570 = (&v117->isa + 1);
        v120 = 1 << *(v119 + 32);
        if (v120 < 64)
        {
          v121 = ~(-1 << v120);
        }

        else
        {
          v121 = -1;
        }

        v122 = v121 & *(v119 + 8);
        v123 = (v120 + 63) >> 6;
        swift_bridgeObjectRetain_n();
        v124 = 0;
        while (1)
        {
          while (1)
          {
            while (1)
            {
              if (v122)
              {
                v125 = v124;
LABEL_43:
                v128 = __clz(__rbit64(v122));
                v122 &= v122 - 1;
                v129 = v128 | (v125 << 6);
                sub_1A97C1030(*(v119 + 6) + 40 * v129, &v596);
                sub_1A97AF7EC(*(v119 + 7) + 32 * v129, v595);
                v599 = v596;
                v600 = v597;
                *&v601 = v598;
                sub_1A967C4DC(v595, (&v601 + 8));
              }

              else
              {
                if (v123 <= v124 + 1)
                {
                  v126 = v124 + 1;
                }

                else
                {
                  v126 = v123;
                }

                v127 = v126 - 1;
                while (1)
                {
                  v125 = v124 + 1;
                  if (__OFADD__(v124, 1))
                  {
                    goto LABEL_307;
                  }

                  if (v125 >= v123)
                  {
                    break;
                  }

                  v122 = *(v119 + v125 + 8);
                  ++v124;
                  if (v122)
                  {
                    v124 = v125;
                    goto LABEL_43;
                  }
                }

                v122 = 0;
                v603 = 0;
                v602 = 0u;
                v600 = 0u;
                v601 = 0u;
                v124 = v127;
                v599 = 0u;
              }

              v606[0] = v601;
              v606[1] = v602;
              v607 = v603;
              v604 = v599;
              v605 = v600;
              if (!*(&v600 + 1))
              {

                if (qword_1EB3ABCB0 != -1)
                {
                  swift_once();
                }

                v178 = sub_1A99764A0();
                __swift_project_value_buffer(v178, qword_1EB3ABCC0);
                v179 = v592;
                swift_unknownObjectRetain();

                v180 = sub_1A9976480();
                v181 = sub_1A9976F60();
                v182 = os_log_type_enabled(v180, v181);
                v52 = v577;
                v54 = v578;
                if (v182)
                {
                  v573 = v180;
                  v183 = swift_slowAlloc();
                  v184 = swift_slowAlloc();
                  *&v604 = v184;
                  *v183 = v546;
                  v185 = [v179 identifier];
                  swift_unknownObjectRelease();

                  if (!v185)
                  {
                    goto LABEL_320;
                  }

                  v186 = sub_1A9976820();
                  v188 = v187;

                  v189 = sub_1A97AF148(v186, v188, &v604);

                  *(v183 + 4) = v189;
                  *(v183 + 12) = 2080;
                  v190 = sub_1A9976710();
                  v192 = v191;

                  v193 = sub_1A97AF148(v190, v192, &v604);

                  *(v183 + 14) = v193;
                  v194 = v573;
                  _os_log_impl(&dword_1A9662000, v573, v181, "ExtensionsCache: Removing extension %s because it matches global exclusion %s", v183, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x1AC58D2C0](v184, -1, -1);
                  MEMORY[0x1AC58D2C0](v183, -1, -1);
                  swift_unknownObjectRelease();

LABEL_82:
                  v59 = v593;
                  (*v582)(v574, v593);
                  v47 = v576;
                  v80 = v584;
                  v54 = v578;
                  v79 = &off_1E7892000;
                }

                else
                {

                  swift_unknownObjectRelease_n();
                  swift_bridgeObjectRelease_n();
                  (*v582)(v574, v59);
                  v47 = v576;
                  v80 = v584;
                }

LABEL_134:
                v81 = v561;
                goto LABEL_4;
              }

              sub_1A967C4DC((v606 + 8), &v596);
              v599 = v604;
              v600 = v605;
              *&v601 = *&v606[0];
              if (swift_dynamicCast())
              {
                break;
              }

              __swift_destroy_boxed_opaque_existential_0Tm(&v596);
            }

            v130 = v595[0];
            if (v130 == sub_1A9976820() && *(&v130 + 1) == v131)
            {

              goto LABEL_50;
            }

            v132 = sub_1A99777E0();

            if ((v132 & 1) == 0)
            {
              break;
            }

LABEL_50:
            __swift_destroy_boxed_opaque_existential_0Tm(&v596);

            v59 = v593;
            v79 = &off_1E7892000;
          }

          v133 = v562;
          v134 = sub_1A98D9094(v592, v130, *(&v130 + 1), &v596);
          v562 = v133;
          if (v133)
          {
            break;
          }

          v135 = v134;
          __swift_destroy_boxed_opaque_existential_0Tm(&v596);

          v59 = v593;
          if ((v135 & 1) == 0)
          {

            swift_bridgeObjectRelease_n();
            v162 = v562;
            v116 = v594;
            v52 = v577;
            v54 = v578;
            goto LABEL_62;
          }

          v79 = &off_1E7892000;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&v596);

        v59 = v593;
        if (qword_1EB3ABCB0 != -1)
        {
          swift_once();
        }

        v136 = sub_1A99764A0();
        __swift_project_value_buffer(v136, qword_1EB3ABCC0);
        v137 = v592;
        swift_unknownObjectRetain();

        v138 = v562;
        v139 = v562;
        v140 = sub_1A9976480();
        v141 = sub_1A9976F70();
        v142 = os_log_type_enabled(v140, v141);
        v116 = v594;
        v52 = v577;
        v54 = v578;
        if (v142)
        {
          v143 = v137;
          v144 = v141;
          v531 = v140;
          v145 = swift_slowAlloc();
          v146 = swift_slowAlloc();
          v532 = swift_slowAlloc();
          *&v604 = v532;
          *v145 = v533;
          v147 = [v143 identifier];
          if (!v147)
          {
            goto LABEL_326;
          }

          v148 = v147;
          v149 = v562;

          swift_unknownObjectRelease();

          v150 = sub_1A9976820();
          v152 = v151;

          v153 = sub_1A97AF148(v150, v152, &v604);

          *(v145 + 4) = v153;
          *(v145 + 12) = 2080;
          v154 = sub_1A9976710();
          v156 = v155;

          v157 = sub_1A97AF148(v154, v156, &v604);

          *(v145 + 14) = v157;
          *(v145 + 22) = 2112;
          v158 = v149;
          v159 = _swift_stdlib_bridgeErrorToNSError();
          *(v145 + 24) = v159;
          *v146 = v159;
          v160 = v531;
          _os_log_impl(&dword_1A9662000, v531, v144, "ExtensionsCache: Could not determine if extension %s matched global exclusion %s: %@", v145, 0x20u);
          sub_1A97B06FC(v146, &unk_1EB3B2A50, &unk_1A9999420);
          MEMORY[0x1AC58D2C0](v146, -1, -1);
          v161 = v532;
          swift_arrayDestroy();
          MEMORY[0x1AC58D2C0](v161, -1, -1);
          MEMORY[0x1AC58D2C0](v145, -1, -1);

          v162 = 0;
          v59 = v593;
          v54 = v578;
          v79 = &off_1E7892000;
          v116 = v594;
        }

        else
        {
          swift_bridgeObjectRelease_n();
          swift_unknownObjectRelease();

          v162 = 0;
LABEL_62:
          v79 = &off_1E7892000;
        }

        v562 = v162;
        v117 = v570;
        v114 = v573;
        v118 = v541;
      }

      while (v570 != v563);
LABEL_84:

LABEL_85:
      v195 = v612;
      v196 = *(v612 + 64);
      v573 = (v612 + 64);
      v197 = 1 << *(v612 + 32);
      if (v197 < 64)
      {
        v198 = ~(-1 << v197);
      }

      else
      {
        v198 = -1;
      }

      v199 = v198 & v196;
      v563 = ((v197 + 63) >> 6);
      swift_unknownObjectRetain();
      v570 = v195;

      v200 = 0;
      while (2)
      {
        if (v199)
        {
          v201 = v200;
          goto LABEL_101;
        }

        if (v563 <= v200 + 1)
        {
          v202 = (v200 + 1);
        }

        else
        {
          v202 = v563;
        }

        v203 = &v202[-1].isa + 7;
        do
        {
          v201 = v200 + 1;
          if (__OFADD__(v200, 1))
          {
            __break(1u);
LABEL_307:
            __break(1u);
LABEL_308:
            __break(1u);
            goto LABEL_309;
          }

          if (v201 >= v563)
          {
            v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FA8, &qword_1A99A44B8);
            (*(*(v227 - 8) + 56))(v52, 1, 1, v227);
            v199 = 0;
            v200 = v203;
            goto LABEL_102;
          }

          v199 = v573[v201].isa;
          ++v200;
        }

        while (!v199);
        v200 = v201;
LABEL_101:
        v204 = __clz(__rbit64(v199));
        v199 &= v199 - 1;
        v205 = v204 | (v201 << 6);
        v206 = v570;
        v207 = v591;
        v208 = v587;
        (*(v591 + 16))(v587, v570[6].isa + *(v591 + 72) * v205, v116);
        v209 = v588;
        (v580)(v588, v206[7].isa + v205 * v579, v59);
        v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FA8, &qword_1A99A44B8);
        v211 = *(v210 + 48);
        v212 = *(v207 + 32);
        v213 = v577;
        v212(v577, v208, v116);
        v214 = &v213[v211];
        v59 = v593;
        v215 = v209;
        v52 = v213;
        (*v585)(v214, v215, v593);
        (*(*(v210 - 8) + 56))(v213, 0, 1, v210);
        v54 = v578;
        v79 = &off_1E7892000;
LABEL_102:
        sub_1A97D8380(v52, v54, &unk_1EB3B4F98, &unk_1A99A44A8);
        v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FA8, &qword_1A99A44B8);
        if ((*(*(v216 - 8) + 48))(v54, 1, v216) == 1)
        {

          v47 = v576;
          v80 = v584;
          v81 = v561;
          goto LABEL_123;
        }

        v217 = *(v216 + 48);
        v116 = v594;
        (*v586)(v590, v54, v594);
        (*v585)(v589, &v54[v217], v59);
        swift_unknownObjectRetain();
        v218 = sub_1A9976350();
        if (!v218 || (v219 = v218, v220 = [v218 _plugIn], v219, !v220))
        {
          swift_unknownObjectRelease();
LABEL_90:
          (*v582)(v589, v59);
          (*v571)(v590, v116);
          continue;
        }

        break;
      }

      v221 = v592;
      v222 = [v592 identifier];
      if (v222)
      {
        v223 = v222;
        v224 = sub_1A9976820();
        v226 = v225;
      }

      else
      {
        v224 = 0;
        v226 = 0;
      }

      v228 = [v220 identifier];
      if (!v228)
      {
        if (!v226)
        {
          goto LABEL_141;
        }

LABEL_117:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_121:
        v116 = v594;
        v59 = v593;
        v52 = v577;
        v54 = v578;
        v79 = &off_1E7892000;
        goto LABEL_90;
      }

      v229 = v228;
      v230 = sub_1A9976820();
      v232 = v231;

      if (!v226)
      {
        if (!v232)
        {
          goto LABEL_141;
        }

LABEL_120:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_121;
      }

      if (!v232)
      {
        goto LABEL_117;
      }

      if (v224 == v230 && v226 == v232)
      {

        goto LABEL_141;
      }

      v233 = sub_1A99777E0();

      if ((v233 & 1) == 0)
      {
        goto LABEL_120;
      }

LABEL_141:
      v261 = [v221 version];
      if (!v261)
      {
        goto LABEL_322;
      }

      v262 = v261;
      v263 = sub_1A9976820();
      v265 = v264;

      *&v604 = v263;
      *(&v604 + 1) = v265;
      v573 = v220;
      v266 = [v220 version];
      v47 = v576;
      v80 = v584;
      v81 = v561;
      if (!v266)
      {
        goto LABEL_321;
      }

      v267 = v266;
      v268 = sub_1A9976820();
      v270 = v269;

      *&v599 = v268;
      *(&v599 + 1) = v270;
      v271 = sub_1A99762E0();
      v272 = v549;
      (*(*(v271 - 8) + 56))(v549, 1, 1, v271);
      sub_1A97F0528();
      v273 = sub_1A99771A0();
      sub_1A97B06FC(v272, &unk_1EB3B4F80, &qword_1A99A4488);

      if (v273)
      {
        v59 = v593;
        v52 = v577;
        v79 = &off_1E7892000;
        if (v273 == 1)
        {
          if (qword_1EB3ABCB0 != -1)
          {
            swift_once();
          }

          v274 = sub_1A99764A0();
          __swift_project_value_buffer(v274, qword_1EB3ABCC0);
          v275 = v573;
          swift_unknownObjectRetain();
          v276 = sub_1A9976480();
          v277 = sub_1A9976F60();
          if (os_log_type_enabled(v276, v277))
          {
            LODWORD(v541) = v277;
            v563 = v276;
            v278 = swift_slowAlloc();
            v279 = swift_slowAlloc();
            *&v604 = v279;
            *v278 = v556;
            v280 = [v275 identifier];
            swift_unknownObjectRelease();
            if (!v280)
            {
              goto LABEL_325;
            }

            v281 = sub_1A9976820();
            v283 = v282;

            v284 = sub_1A97AF148(v281, v283, &v604);

            *(v278 + 4) = v284;
            v285 = v541;
            v286 = v563;
            v287 = v563;
            v288 = "ExtensionsCache: Removing extension %s because another plugin has newer version";
            goto LABEL_156;
          }

LABEL_162:
          swift_unknownObjectRelease();

          goto LABEL_163;
        }

LABEL_157:
        swift_unknownObjectRelease();
        if (qword_1EB3ABCB0 != -1)
        {
          swift_once();
        }

        v298 = sub_1A99764A0();
        __swift_project_value_buffer(v298, qword_1EB3ABCC0);
        v299 = v573;
        swift_unknownObjectRetain();
        v300 = sub_1A9976480();
        v301 = sub_1A9976F60();
        if (os_log_type_enabled(v300, v301))
        {
          LODWORD(v563) = v301;
          v302 = v300;
          v303 = swift_slowAlloc();
          v304 = swift_slowAlloc();
          *&v604 = v304;
          *v303 = v556;
          v305 = [v299 identifier];
          swift_unknownObjectRelease();
          if (!v305)
          {
            goto LABEL_324;
          }

          v306 = sub_1A9976820();
          v308 = v307;

          v309 = sub_1A97AF148(v306, v308, &v604);

          *(v303 + 4) = v309;
          _os_log_impl(&dword_1A9662000, v302, v563, "ExtensionsCache: Removing extension %s because another plugin has precedence", v303, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v304);
          MEMORY[0x1AC58D2C0](v304, -1, -1);
          MEMORY[0x1AC58D2C0](v303, -1, -1);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          v310 = *v582;
          v59 = v593;
          (*v582)(v589, v593);
          (*v571)(v590, v594);
          v52 = v577;
          v54 = v578;
          v79 = &off_1E7892000;
        }

        else
        {
          swift_unknownObjectRelease_n();
          swift_unknownObjectRelease();

          v310 = *v582;
          (*v582)(v589, v59);
          (*v571)(v590, v594);
          v54 = v578;
        }

        v310(v574, v59);
        swift_unknownObjectRelease();
        v80 = v584;
        v235 = v557;
LABEL_166:
        (*v554)(v235, 1, 1, v594);
LABEL_167:
        sub_1A97B06FC(v235, &unk_1EB3B29B0, &qword_1A9990640);
        goto LABEL_4;
      }

      v289 = sub_1A98D505C(v592, v573);
      v59 = v593;
      v52 = v577;
      v79 = &off_1E7892000;
      if ((v289 & 1) == 0)
      {
        goto LABEL_157;
      }

      if (qword_1EB3ABCB0 != -1)
      {
        swift_once();
      }

      v290 = sub_1A99764A0();
      __swift_project_value_buffer(v290, qword_1EB3ABCC0);
      v291 = v573;
      swift_unknownObjectRetain();
      v276 = sub_1A9976480();
      v292 = sub_1A9976F60();
      if (!os_log_type_enabled(v276, v292))
      {
        goto LABEL_162;
      }

      LODWORD(v541) = v292;
      v563 = v276;
      v278 = swift_slowAlloc();
      v279 = swift_slowAlloc();
      *&v604 = v279;
      *v278 = v556;
      v293 = [v291 identifier];
      swift_unknownObjectRelease();
      if (!v293)
      {
        goto LABEL_327;
      }

      v294 = sub_1A9976820();
      v296 = v295;

      v297 = sub_1A97AF148(v294, v296, &v604);

      *(v278 + 4) = v297;
      v285 = v541;
      v286 = v563;
      v287 = v563;
      v288 = "ExtensionsCache: Removing extension %s because another plugin is ordered same but has precedence";
LABEL_156:
      _os_log_impl(&dword_1A9662000, v287, v285, v288, v278, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v279);
      MEMORY[0x1AC58D2C0](v279, -1, -1);
      MEMORY[0x1AC58D2C0](v278, -1, -1);

      v59 = v593;
      v52 = v577;
LABEL_163:
      v311 = v544;
      v312 = v590;
      sub_1A98D58C0(v590, v544);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      sub_1A97B06FC(v311, &qword_1EB3B4F90, &qword_1A99A44A0);
      (*v582)(v589, v59);
      (*v571)(v312, v594);
      v54 = v578;
      v79 = &off_1E7892000;
LABEL_123:
      v608 = &unk_1F1DA42A0;
      v234 = swift_dynamicCastObjCProtocolConditional();
      v235 = v557;
      if (!v234)
      {
        swift_unknownObjectRelease_n();
        (*v582)(v574, v59);
        goto LABEL_166;
      }

      v236 = [v234 uuid];
      if (v236)
      {
        v237 = v552;
        v238 = v236;
        sub_1A9976290();

        v239 = v237;
        v240 = 0;
      }

      else
      {
        v240 = 1;
        v239 = v552;
      }

      v252 = v594;
      (*v554)(v239, v240, 1, v594);
      v253 = v239;
      v235 = v557;
      sub_1A97D8380(v253, v557, &unk_1EB3B29B0, &qword_1A9990640);
      if ((*v547)(v235, 1, v252) == 1)
      {
        (*v582)(v574, v59);
        swift_unknownObjectRelease_n();
        v79 = &off_1E7892000;
        goto LABEL_167;
      }

      v254 = v548;
      (*v586)(v548, v235, v252);
      v255 = v588;
      v256 = v574;
      (v580)(v588, v574, v59);
      v257 = v612;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v604 = v257;
      v259 = v255;
      v80 = v584;
      sub_1A97E37AC(v259, v254, isUniquelyReferenced_nonNull_native);
      swift_unknownObjectRelease_n();
      v612 = v604;
      (*v571)(v254, v252);
      v260 = v256;
      v81 = v561;
      (*v582)(v260, v59);
      v79 = &off_1E7892000;
LABEL_4:
      v76 = (v572 + 1);
      if (v572 + 1 == v81)
      {
        v73 = v612;
        goto LABEL_170;
      }
    }
  }

  v80 = v584;
LABEL_170:
  v573 = sub_1A97BF98C(MEMORY[0x1E69E7CC0]);
  v313 = (v73 + 64);
  v314 = 1 << *(v73 + 32);
  v315 = -1;
  if (v314 < 64)
  {
    v315 = ~(-1 << v314);
  }

  v590 = v315 & *(v73 + 64);
  v581 = v591 + 16;
  v580 = (v575 + 16);
  v578 = (v314 + 63) >> 6;
  v579 = (v591 + 32);
  v592 = (v575 + 32);
  v577 = *MEMORY[0x1E69C4AD0];
  v586 = (v575 + 8);
  v316 = (v591 + 8);
  v572 = (v591 + 40);
  v574 = (v591 + 56);
  v582 = v73;

  v317 = 0;
  v589 = (v73 + 64);
  v318 = v316;
  v585 = v316;
LABEL_173:
  for (i = v578; ; i = v578)
  {
    v321 = v590;
    if (v590)
    {
      v322 = v317;
LABEL_187:
      v590 = (v321 - 1) & v321;
      v325 = __clz(__rbit64(v321)) | (v322 << 6);
      v326 = v582;
      v327 = v591;
      (*(v591 + 16))(v587, *(v582 + 48) + *(v591 + 72) * v325, v594);
      v328 = v575;
      v329 = v588;
      v330 = v593;
      (*(v575 + 16))(v588, *(v326 + 56) + *(v575 + 72) * v325, v593);
      v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FA8, &qword_1A99A44B8);
      v332 = *(v331 + 48);
      v333 = v330;
      v47 = v576;
      (*(v327 + 32))();
      v334 = v333;
      (*(v328 + 32))(&v47[v332], v329, v333);
      (*(*(v331 - 8) + 56))(v47, 0, 1, v331);
      v80 = v584;
      v318 = v585;
    }

    else
    {
      v323 = i <= v317 + 1 ? v317 + 1 : i;
      v324 = v323 - 1;
      while (1)
      {
        v322 = v317 + 1;
        if (__OFADD__(v317, 1))
        {
          goto LABEL_308;
        }

        if (v322 >= i)
        {
          break;
        }

        v321 = *&v313[8 * v322];
        ++v317;
        if (v321)
        {
          v317 = v322;
          goto LABEL_187;
        }
      }

      v334 = v59;
      v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FA8, &qword_1A99A44B8);
      (*(*(v349 - 8) + 56))(v47, 1, 1, v349);
      v590 = 0;
      v317 = v324;
    }

    v320 = v47;
    sub_1A97D8380(v47, v80, &unk_1EB3B4F98, &unk_1A99A44A8);
    v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FA8, &qword_1A99A44B8);
    v336 = *(v335 - 8);
    v337 = *(v336 + 48);
    if (v337(v80, 1, v335) == 1)
    {
      break;
    }

    (*v592)(v583, v80 + *(v335 + 48), v334);
    v338 = sub_1A9976350();
    v313 = v589;
    if (!v338)
    {
      goto LABEL_175;
    }

    v339 = v338;
    v340 = [v338 _plugIn];

    if (!v340)
    {
      goto LABEL_175;
    }

    v609 = &unk_1F1DA42A0;
    v341 = swift_dynamicCastObjCProtocolConditional();
    if (!v341)
    {
      swift_unknownObjectRelease();
      v320 = v576;
LABEL_175:
      (*v586)(v583, v334);
      v80 = v584;
      v47 = v320;
      v59 = v334;
      goto LABEL_176;
    }

    v342 = v341;
    v343 = [v341 entitlements];
    if (v343)
    {
      v344 = v343;
      v345 = sub_1A9976700();

      *&v595[0] = sub_1A9976820();
      *(&v595[0] + 1) = v346;
      sub_1A9977250();
      if (*(v345 + 16) && (v347 = sub_1A97BCF30(&v604), (v348 & 1) != 0))
      {
        sub_1A97AF7EC(*(v345 + 56) + 32 * v347, &v596);
        sub_1A97C108C(&v604);

        v59 = v593;
        if (*(&v597 + 1))
        {
          sub_1A967C4DC(&v596, &v599);
          sub_1A97AF7EC(&v599, &v604);
          if (swift_dynamicCast())
          {
            v351 = v596;
            v352 = [v342 uuid];
            if (v352)
            {
              v353 = v539;
              v354 = v352;
              sub_1A9976290();

              v355 = *v579;
              (*v579)(v540, v353, v594);
              v356 = v573;
              v357 = swift_isUniquelyReferenced_nonNull_native();
              *&v604 = v356;
              v358 = sub_1A97BCEB8(v351, *(&v351 + 1));
              v360 = v356[2].isa;
              v361 = (v359 & 1) == 0;
              v362 = __OFADD__(v360, v361);
              v363 = v360 + v361;
              if (v362)
              {
                goto LABEL_314;
              }

              v364 = v359;
              if (v356[3].isa >= v363)
              {
                if ((v357 & 1) == 0)
                {
                  v421 = v358;
                  sub_1A982807C();
                  v358 = v421;
                }

                v47 = v576;
              }

              else
              {
                sub_1A982616C(v363, v357);
                v358 = sub_1A97BCEB8(v351, *(&v351 + 1));
                if ((v364 & 1) != (v365 & 1))
                {
                  goto LABEL_332;
                }

                v47 = v576;
              }

              if (v364)
              {
                v416 = v358;

                v573 = v604;
                v417 = v586;
                v407 = v594;
                (*(v591 + 40))(*(v604 + 56) + *(v591 + 72) * v416, v540, v594);
                swift_unknownObjectRelease();
                __swift_destroy_boxed_opaque_existential_0Tm(&v599);
                v59 = v593;
                (*v417)(v583, v593);
                goto LABEL_249;
              }

              v418 = v604;
              *(v604 + 8 * (v358 >> 6) + 64) |= 1 << v358;
              *(v418[6].isa + v358) = v351;
              v355(v418[7].isa + *(v591 + 72) * v358, v540, v594);
              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_0Tm(&v599);
              v59 = v593;
              (*v586)(v583, v593);
              v419 = v418[2].isa;
              v362 = __OFADD__(v419, 1);
              v420 = (v419 + 1);
              if (v362)
              {
                goto LABEL_316;
              }

              v573 = v418;
              v418[2].isa = v420;
LABEL_246:
              v80 = v584;
              v407 = v594;
            }

            else
            {
              v408 = v573;
              v409 = sub_1A97BCEB8(v351, *(&v351 + 1));
              v411 = v410;

              if (v411)
              {
                v412 = swift_isUniquelyReferenced_nonNull_native();
                *&v604 = v408;
                v47 = v576;
                v413 = v408;
                if (!v412)
                {
                  sub_1A982807C();
                  v413 = v604;
                }

                v414 = v538;
                v407 = v594;
                (*(v591 + 32))(v538, v413[7].isa + *(v591 + 72) * v409, v594);
                v573 = v413;
                sub_1A98D6350(v409, v413);
                swift_unknownObjectRelease();
                __swift_destroy_boxed_opaque_existential_0Tm(&v599);
                v59 = v593;
                (*v586)(v583, v593);
                v415 = 0;
              }

              else
              {
                swift_unknownObjectRelease();
                __swift_destroy_boxed_opaque_existential_0Tm(&v599);
                v59 = v593;
                (*v586)(v583, v593);
                v415 = 1;
                v414 = v538;
                v47 = v576;
                v407 = v594;
              }

              (*v574)(v414, v415, 1, v407);
              sub_1A97B06FC(v414, &unk_1EB3B29B0, &qword_1A9990640);
LABEL_249:
              v80 = v584;
            }

            v318 = v585;
            (*v585)(v80, v407);
            goto LABEL_173;
          }

          sub_1A97AF7EC(&v599, &v604);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
          if ((swift_dynamicCast() & 1) == 0)
          {
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_0Tm(&v599);
            (*v586)(v583, v59);
            v47 = v576;
            goto LABEL_246;
          }

          v366 = v596;
          v569 = *(v596 + 16);
          if (!v569)
          {
LABEL_234:
            swift_unknownObjectRelease();

            __swift_destroy_boxed_opaque_existential_0Tm(&v599);
            (*v586)(v583, v59);
            v407 = v594;
            v47 = v576;
            goto LABEL_249;
          }

          v367 = 0;
          v368 = (v596 + 40);
          *&v568 = v596;
          while (2)
          {
            if (v367 >= *(v366 + 16))
            {
              goto LABEL_311;
            }

            v571 = v367;
            v372 = v368[-1].isa;
            v371 = v368->isa;

            v373 = [v342 uuid];
            if (v373)
            {
              v570 = v368;
              v374 = v543;
              v375 = v372;
              v376 = v371;
              v377 = v373;
              sub_1A9976290();

              v564 = *v579;
              v564(v545, v374, v594);
              v378 = v573;
              v379 = swift_isUniquelyReferenced_nonNull_native();
              *&v604 = v378;
              v380 = v375;
              v381 = v375;
              v382 = v376;
              v384 = sub_1A97BCEB8(v381, v376);
              v385 = v378[2].isa;
              v386 = (v383 & 1) == 0;
              v387 = v385 + v386;
              if (__OFADD__(v385, v386))
              {
                goto LABEL_312;
              }

              if (v378[3].isa >= v387)
              {
                v388 = v380;
                if (v379)
                {
                  v59 = v593;
                  if ((v383 & 1) == 0)
                  {
                    goto LABEL_227;
                  }
                }

                else
                {
                  v405 = v384;
                  v406 = v383;
                  sub_1A982807C();
                  v384 = v405;
                  v59 = v593;
                  if ((v406 & 1) == 0)
                  {
                    goto LABEL_227;
                  }
                }
              }

              else
              {
                LODWORD(v573) = v383;
                sub_1A982616C(v387, v379);
                v388 = v380;
                v389 = sub_1A97BCEB8(v380, v382);
                if ((v573 & 1) != (v390 & 1))
                {
                  goto LABEL_332;
                }

                v384 = v389;
                v59 = v593;
                if ((v573 & 1) == 0)
                {
LABEL_227:
                  v401 = v604;
                  *(v604 + 8 * (v384 >> 6) + 64) |= 1 << v384;
                  v402 = (v401[6].isa + 16 * v384);
                  *v402 = v388;
                  v402[1] = v382;
                  v564(v401[7].isa + *(v591 + 72) * v384, v545, v594);
                  v403 = v401[2].isa;
                  v362 = __OFADD__(v403, 1);
                  v404 = (v403 + 1);
                  if (v362)
                  {
                    goto LABEL_313;
                  }

                  v573 = v401;
                  v401[2].isa = v404;
LABEL_212:
                  v368 = v570;
                  v370 = v571;
LABEL_213:
                  v366 = v568;
                  v367 = (v370 + 1);
                  v368 += 2;
                  if (v569 == v367)
                  {
                    goto LABEL_234;
                  }

                  continue;
                }
              }

              v369 = v384;

              v573 = v604;
              (*(v591 + 40))(*(v604 + 56) + *(v591 + 72) * v369, v545, v594);
              goto LABEL_212;
            }

            break;
          }

          v391 = v371;
          v392 = v573;
          v393 = sub_1A97BCEB8(v372, v391);
          v395 = v394;

          if (v395)
          {
            v396 = swift_isUniquelyReferenced_nonNull_native();
            *&v604 = v392;
            v397 = v392;
            if (!v396)
            {
              sub_1A982807C();
              v397 = v604;
            }

            v398 = v542;
            v399 = v594;
            (*(v591 + 32))(v542, v397[7].isa + *(v591 + 72) * v393, v594);
            v573 = v397;
            sub_1A98D6350(v393, v397);
            v400 = 0;
            v59 = v593;
          }

          else
          {
            v400 = 1;
            v399 = v594;
            v59 = v593;
            v398 = v542;
          }

          v370 = v571;
          (*v574)(v398, v400, 1, v399);
          sub_1A97B06FC(v398, &unk_1EB3B29B0, &qword_1A9990640);
          goto LABEL_213;
        }
      }

      else
      {

        sub_1A97C108C(&v604);
        v596 = 0u;
        v597 = 0u;
        v59 = v593;
      }

      (*v586)(v583, v59);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v59 = v334;
      (*v586)(v583, v334);
      v596 = 0u;
      v597 = 0u;
    }

    sub_1A97B06FC(&v596, &qword_1EB3B0BA0, &unk_1A99923D0);
    v47 = v576;
    v80 = v584;
LABEL_176:
    (*v318)(v80, v594);
  }

  v584 = v337;
  v576 = (v336 + 48);
  v577 = v335;
  v422 = v582;

  if (!v573[2].isa)
  {
LABEL_305:

    v529 = sub_1A98D4C64(v528);

    return v529;
  }

  v423 = 1 << *(v422 + 32);
  v424 = -1;
  if (v423 < 64)
  {
    v424 = ~(-1 << v423);
  }

  v425 = v424 & *(v422 + 64);
  v426 = (v423 + 63) >> 6;
  v583 = (v336 + 56);
  v569 = (v575 + 48);
  v570 = (v575 + 56);

  v427 = 0;
  *&v428 = 136315650;
  v568 = v428;
  v429 = v565;
  v430 = v577;
  v431 = v589;
  v578 = v426;
  while (2)
  {
    if (v425)
    {
      v432 = v427;
LABEL_267:
      v590 = (v425 - 1) & v425;
      v435 = __clz(__rbit64(v425)) | (v432 << 6);
      v436 = v582;
      v437 = v591;
      v438 = v587;
      v439 = v594;
      (*(v591 + 16))(v587, *(v582 + 48) + *(v591 + 72) * v435, v594);
      v440 = *(v436 + 56);
      v441 = v575;
      v442 = v588;
      v443 = v593;
      (*(v575 + 16))(v588, v440 + *(v575 + 72) * v435, v593);
      v430 = v577;
      v444 = *(v577 + 12);
      v445 = *(v437 + 32);
      v446 = v567;
      v445(v567, v438, v439);
      (*(v441 + 32))(v446 + v444, v442, v443);
      v447 = 0;
      v429 = v565;
LABEL_268:
      (*v583)(v446, v447, 1, v430);
      v448 = v566;
      sub_1A97D8380(v446, v566, &unk_1EB3B4F98, &unk_1A99A44A8);
      if (v584(v448, 1, v430) == 1)
      {

        goto LABEL_305;
      }

      v449 = *(v430 + 12);
      v450 = *v585;
      (*v585)(v448, v594);
      v451 = v448 + v449;
      v452 = v593;
      (*v592)(v429, v451, v593);
      v453 = sub_1A9976350();
      if (v453)
      {
        v454 = v453;
        v455 = [v453 _plugIn];
        v431 = v589;
        if (!v455)
        {
          (*v586)(v429, v452);

          goto LABEL_256;
        }

        v456 = v455;
        v611 = &unk_1F1DA42A0;
        v457 = swift_dynamicCastObjCProtocolConditional();
        if (!v457)
        {

          swift_unknownObjectRelease();
          (*v586)(v429, v452);
          goto LABEL_256;
        }

        v574 = v456;
        v571 = v457;
        v458 = [v457 identifier];
        if (!v458)
        {
          goto LABEL_315;
        }

        v459 = v458;
        v460 = sub_1A9976820();
        v462 = v461;

        if (v573[2].isa)
        {
          v572 = v450;
          v463 = v573;
          v464 = sub_1A97BCEB8(v460, v462);
          v466 = v465;

          if (v466)
          {
            v467 = v463[7].isa + *(v591 + 72) * v464;
            v468 = v558;
            (*(v591 + 16))(v558, v467, v594);
            v469 = v582;
            v431 = v589;
            if (*(v582 + 16))
            {
              v470 = sub_1A97BCE34(v468);
              v471 = v593;
              if (v472)
              {
                v473 = *(v469 + 56) + *(v575 + 72) * v470;
                v474 = v555;
                (*(v575 + 16))(v555, v473, v593);
                v475 = 0;
              }

              else
              {
                v475 = 1;
                v474 = v555;
              }
            }

            else
            {
              v475 = 1;
              v474 = v555;
              v471 = v593;
            }

            v476 = v572;
            (v570->isa)(v474, v475, 1, v471);
            if (!(*v569)(v474, 1, v471))
            {
              v477 = v551;
              (*v580)(v551, v474, v471);
              sub_1A97B06FC(v474, &qword_1EB3B4F90, &qword_1A99A44A0);
              v478 = sub_1A9976350();
              v479 = v471;
              v480 = *v586;
              (*v586)(v477, v479);
              if (v478)
              {
                v481 = [v478 _plugIn];

                v482 = v572;
                if (v481)
                {
                  v483 = v480;
                  v610 = &unk_1F1DA42A0;
                  v484 = swift_dynamicCastObjCProtocolConditional();
                  v485 = v558;
                  v486 = v481;
                  v431 = v589;
                  v430 = v577;
                  if (!v484)
                  {
                    swift_unknownObjectRelease();

                    swift_unknownObjectRelease();
                    v572(v485, v594);
                    (v483)(v429, v593);
                    goto LABEL_256;
                  }

                  v563 = v486;
                  v564 = v484;
                  v487 = [v454 identifier];
                  if (!v487)
                  {
                    goto LABEL_328;
                  }

                  v488 = v487;
                  v561 = sub_1A9976820();
                  v490 = v489;

                  swift_unknownObjectRetain();
                  v491 = v553;
                  v492 = swift_isUniquelyReferenced_nonNull_native();
                  *&v604 = v491;
                  sub_1A97E3630(v564, v561, v490, v492);

                  v553 = v604;
                  v561 = v483;
                  if (qword_1EB3ABCB0 != -1)
                  {
                    swift_once();
                  }

                  v493 = sub_1A99764A0();
                  __swift_project_value_buffer(v493, qword_1EB3ABCC0);
                  swift_unknownObjectRetain();
                  swift_unknownObjectRetain();
                  v494 = v454;
                  v495 = sub_1A9976480();
                  v496 = sub_1A9976F60();
                  v497 = os_log_type_enabled(v495, v496);
                  v431 = v589;
                  if (!v497)
                  {
                    swift_unknownObjectRelease_n();
                    swift_unknownObjectRelease_n();

                    v572(v558, v594);
                    (v561)(v429, v593);
                    goto LABEL_256;
                  }

                  LODWORD(v556) = v496;
                  v557 = v495;
                  v559 = v494;
                  v498 = swift_slowAlloc();
                  v554 = swift_slowAlloc();
                  *&v604 = v554;
                  v560 = v498;
                  *v498 = v568;
                  v499 = [v564 uuid];
                  swift_unknownObjectRelease();
                  if (!v499)
                  {
                    goto LABEL_329;
                  }

                  v500 = v535;
                  sub_1A9976290();

                  v501 = v534;
                  v502 = v594;
                  v564 = *v579;
                  v564(v534, v500, v594);
                  v552 = sub_1A97C10E0(&qword_1EB3AC890, MEMORY[0x1E69695E0]);
                  v503 = sub_1A9977730();
                  v505 = v504;
                  v506 = v502;
                  v507 = v572;
                  v572(v501, v506);
                  v508 = sub_1A97AF148(v503, v505, &v604);

                  v509 = v560;
                  *(v560 + 4) = v508;
                  *(v509 + 6) = 2080;
                  v510 = [v571 uuid];
                  swift_unknownObjectRelease();
                  if (!v510)
                  {
                    goto LABEL_330;
                  }

                  v511 = v537;
                  sub_1A9976290();

                  v512 = v536;
                  v513 = v594;
                  v564(v536, v511, v594);
                  v514 = sub_1A9977730();
                  v516 = v515;
                  v507(v512, v513);
                  v517 = sub_1A97AF148(v514, v516, &v604);

                  v519 = v559;
                  v518 = v560;
                  *(v560 + 14) = v517;
                  *(v518 + 11) = 2080;
                  v520 = [v519 identifier];

                  if (!v520)
                  {
                    goto LABEL_331;
                  }

                  v521 = sub_1A9976820();
                  v523 = v522;

                  v524 = sub_1A97AF148(v521, v523, &v604);

                  v525 = v560;
                  v560[3] = v524;
                  v526 = v557;
                  _os_log_impl(&dword_1A9662000, v557, v556, "ExtensionsCache: Plugin %s supersedes %s for extension %s", v525, 0x20u);
                  v527 = v554;
                  swift_arrayDestroy();
                  MEMORY[0x1AC58D2C0](v527, -1, -1);
                  MEMORY[0x1AC58D2C0](v525, -1, -1);
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  v507(v558, v594);
                  (v561)(v429, v593);
                }

                else
                {
                  swift_unknownObjectRelease();

                  v482(v558, v594);
                  v480(v429, v593);
                }
              }

              else
              {
                swift_unknownObjectRelease();

                v572(v558, v594);
                v480(v429, v479);
              }

              v431 = v589;
              v430 = v577;
              goto LABEL_256;
            }

            swift_unknownObjectRelease();

            v476(v558, v594);
            (*v586)(v429, v471);
            sub_1A97B06FC(v474, &qword_1EB3B4F90, &qword_1A99A44A0);
LABEL_256:
            v426 = v578;
            v425 = v590;
            continue;
          }

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v431 = v589;

        (*v586)(v429, v593);
        goto LABEL_256;
      }

      (*v586)(v429, v452);
      v431 = v589;
      goto LABEL_256;
    }

    break;
  }

  if (v426 <= v427 + 1)
  {
    v433 = v427 + 1;
  }

  else
  {
    v433 = v426;
  }

  v434 = v433 - 1;
  while (1)
  {
    v432 = v427 + 1;
    if (__OFADD__(v427, 1))
    {
      break;
    }

    if (v432 >= v426)
    {
      v590 = 0;
      v447 = 1;
      v427 = v434;
      v446 = v567;
      goto LABEL_268;
    }

    v425 = *&v431[8 * v432];
    ++v427;
    if (v425)
    {
      v427 = v432;
      goto LABEL_267;
    }
  }

LABEL_309:
  __break(1u);
LABEL_310:
  __break(1u);
LABEL_311:
  __break(1u);
LABEL_312:
  __break(1u);
LABEL_313:
  __break(1u);
LABEL_314:
  __break(1u);
LABEL_315:
  __break(1u);
LABEL_316:
  __break(1u);
LABEL_317:
  __break(1u);
LABEL_318:
  __break(1u);
LABEL_319:
  __break(1u);
LABEL_320:

  __break(1u);
LABEL_321:
  __break(1u);
LABEL_322:
  __break(1u);
LABEL_323:
  __break(1u);
LABEL_324:
  __break(1u);
LABEL_325:
  __break(1u);
LABEL_326:

  swift_unknownObjectRelease();
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_327:
  __break(1u);
LABEL_328:
  __break(1u);
LABEL_329:
  swift_unknownObjectRelease();

  __break(1u);
LABEL_330:

  __break(1u);
LABEL_331:
  __break(1u);
LABEL_332:
  result = sub_1A9977880();
  __break(1u);
  return result;
}

void sub_1A98DE160(char *a1, uint64_t a2)
{
  if (!a2)
  {
    return;
  }

  v2 = a2;
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v32 = v2;
  while (v6)
  {
    v9 = v8;
LABEL_16:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v9 << 6);
    sub_1A97C1030(*(v2 + 48) + 40 * v13, v21);
    sub_1A97AF7EC(*(v2 + 56) + 32 * v13, v20);
    v23 = v21[0];
    v24 = v21[1];
    *&v25 = v22;
    sub_1A967C4DC(v20, (&v25 + 8));
LABEL_17:
    v30[0] = v25;
    v30[1] = v26;
    v31 = v27;
    v28 = v23;
    v29 = v24;
    if (!*(&v24 + 1))
    {
LABEL_28:

      return;
    }

    sub_1A967C4DC((v30 + 8), v21);
    v23 = v28;
    v24 = v29;
    *&v25 = *&v30[0];
    if (swift_dynamicCast())
    {
      v14 = v20[0];
      if (v14 == sub_1A9976820() && *(&v14 + 1) == v15)
      {

        goto LABEL_23;
      }

      v16 = sub_1A99777E0();

      if (v16)
      {
LABEL_23:
        __swift_destroy_boxed_opaque_existential_0Tm(v21);

        v2 = v32;
      }

      else
      {
        v17 = sub_1A98D9094(a1, v14, *(&v14 + 1), v21);
        __swift_destroy_boxed_opaque_existential_0Tm(v21);

        v2 = v32;
        if (v19 || (v17 & 1) == 0)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
    }
  }

  if (v7 <= v8 + 1)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10 - 1;
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      v6 = 0;
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      v8 = v11;
      v23 = 0u;
      v24 = 0u;
      goto LABEL_17;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_16;
    }
  }

  __break(1u);
}

unint64_t sub_1A98DE438()
{
  result = qword_1EB3AB778;
  if (!qword_1EB3AB778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B4F70, &qword_1A99A4478);
    sub_1A98DE4BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AB778);
  }

  return result;
}

unint64_t sub_1A98DE4BC()
{
  result = qword_1EB3AB6E0;
  if (!qword_1EB3AB6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B2AC0, &qword_1A9990580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AB6E0);
  }

  return result;
}

void sub_1A98DE538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a1;
  v44 = a2;
  strcpy(v45, "extensionItems");
  HIBYTE(v45[0]) = -18;
  sub_1A9977250();
  if (!*(a3 + 16) || (v4 = sub_1A97BCF30(v47), (v5 & 1) == 0))
  {
    sub_1A97C108C(v47);
    goto LABEL_32;
  }

  sub_1A97AF7EC(*(a3 + 56) + 32 * v4, v48);
  sub_1A97C108C(v47);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2B00, &unk_1A9998468);
  v7 = MEMORY[0x1E69E7CA0];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:

    return;
  }

  v8 = *&v45[0];
  v9 = *(*&v45[0] + 16);
  v35 = a3;

  if (!v9)
  {
    v36 = MEMORY[0x1E69E7CC0];
    goto LABEL_34;
  }

  v10 = 0;
  v11 = *&v45[0] + 32;
  v42 = 0x80000001A99E27C0;
  v36 = MEMORY[0x1E69E7CC0];
  v39 = v6;
  v38 = *&v45[0];
  v37 = v9;
  v40 = *&v45[0] + 32;
  while (v10 < *(v8 + 16))
  {
    v12 = *(v11 + 8 * v10++);
    strcpy(v45, "attachments");
    HIDWORD(v45[0]) = -352321536;

    sub_1A9977250();
    if (!*(v12 + 16) || (v13 = sub_1A97BCF30(v47), (v14 & 1) == 0))
    {

      sub_1A97C108C(v47);
      goto LABEL_7;
    }

    sub_1A97AF7EC(*(v12 + 56) + 32 * v13, v48);
    sub_1A97C108C(v47);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_7;
    }

    v41 = v10;
    v15 = *&v45[0];
    v16 = *(*&v45[0] + 16);
    if (!v16)
    {
LABEL_24:

      v6 = v39;
      v11 = v40;
      v8 = v38;
      v9 = v37;
      v10 = v41;
LABEL_7:
      if (v10 == v9)
      {
        goto LABEL_34;
      }

      continue;
    }

    v17 = 0;
    v18 = v42;
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        __break(1u);
        goto LABEL_36;
      }

      v19 = *(v15 + 8 * v17 + 32);
      *&v45[0] = 0xD000000000000019;
      *(&v45[0] + 1) = v18;

      sub_1A9977250();
      if (*(v19 + 16))
      {
        v20 = sub_1A97BCF30(v47);
        if (v21)
        {
          break;
        }
      }

      sub_1A97C108C(v47);
LABEL_15:
      if (v16 == ++v17)
      {
        goto LABEL_24;
      }
    }

    sub_1A97AF7EC(*(v19 + 56) + 32 * v20, v48);
    sub_1A97C108C(v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
    v22 = swift_dynamicCast();
    if ((v22 & 1) == 0)
    {

      goto LABEL_15;
    }

    v23 = v7;
    v24 = *&v45[0];
    v47[0] = v43;
    v47[1] = v44;
    MEMORY[0x1EEE9AC00](v22);
    v34[2] = v47;
    v25 = sub_1A9824824(sub_1A97B2400, v34, v24);

    if ((v25 & 1) == 0)
    {
      v7 = v23;
      v18 = v42;
      goto LABEL_15;
    }

    v26 = v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v26;
    v46 = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1A97BDC24(0, *(v26 + 16) + 1, 1);
      v28 = v46;
    }

    v6 = v39;
    v7 = v23;
    v8 = v38;
    v9 = v37;
    v10 = v41;
    v29 = v28;
    v31 = *(v28 + 16);
    v30 = *(v28 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_1A97BDC24((v30 > 1), v31 + 1, 1);
      v29 = v46;
    }

    *(v29 + 16) = v31 + 1;
    v36 = v29;
    *(v29 + 8 * v31 + 32) = v12;
    v11 = v40;
    if (v10 == v9)
    {
LABEL_34:

      strcpy(v48, "extensionItems");
      v48[15] = -18;
      sub_1A9977250();
      v49 = v6;
      *v48 = v36;
      sub_1A967C4DC(v48, v45);
      v32 = v35;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v46 = v32;
      sub_1A97E34E4(v45, v47, v33);
      sub_1A97C108C(v47);
      return;
    }
  }

LABEL_36:
  __break(1u);
}

uint64_t sub_1A98DEAB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FB0, &qword_1A99A44C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double SFAirDrop.Transfers.receiveTransfers.getter()
{
  type metadata accessor for SFAirDrop.Transfers(0);

  return result;
}

uint64_t type metadata accessor for SFAirDrop.Transfers(uint64_t a1)
{
  result = qword_1EB3AB798;
  if (!qword_1EB3AB798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double SFAirDrop.Transfers.sendTransfers.getter()
{
  type metadata accessor for SFAirDrop.Transfers(0);

  return result;
}

uint64_t SFAirDrop.Transfers.init(receiveTransfers:sendTransfers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SFAirDropClient.Identifier(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  result = type metadata accessor for SFAirDrop.Transfers(0);
  *(a3 + *(result + 20)) = a1;
  *(a3 + *(result + 24)) = a2;
  return result;
}

uint64_t static SFAirDrop.Transfers.stream<A, B>(receiveTransferSeq:sendTransfersSeq:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v23 = a5;
  v24 = a6;
  v25 = a1;
  v26 = a2;
  v27 = a7;
  v28[0] = a3;
  v28[1] = a4;
  v28[2] = a5;
  v28[3] = a6;
  v9 = type metadata accessor for AsyncCombineLatest2Sequence(0, v28);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for SFAirDrop.Transfers(255);
  swift_getWitnessTable();
  v13 = sub_1A9977410();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v22 - v18;
  combineLatest<A, B>(_:_:)(v25, v26, a3, a4, v23, v24, v11);
  sub_1A9976D40();
  (*(v14 + 16))(v17, v19, v13);
  WitnessTable = swift_getWitnessTable();
  SFNoThrowAsyncSequence.init<A>(_:)(v17, v12, v13, WitnessTable, v27);
  return (*(v14 + 8))(v19, v13);
}

uint64_t sub_1A98DEE88(uint64_t a1, _OWORD *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1A98DEEB0, 0, 0);
}

uint64_t sub_1A98DEEB0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = type metadata accessor for SFAirDropClient.Identifier(0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = type metadata accessor for SFAirDrop.Transfers(0);
  *(v3 + *(v5 + 20)) = v1;
  *(v3 + *(v5 + 24)) = v2;
  v7 = v0[1];

  return v7();
}

uint64_t SFAirDrop.Transfers.lastReceiveTransfer()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SFAirDropReceive.Transfer(0);
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v32 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v32 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - v13;
  v15 = *(v1 + *(type metadata accessor for SFAirDrop.Transfers(0) + 20));
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 64);
  if (v18)
  {
    v33 = a1;
    v19 = 0;
    v20 = __clz(__rbit64(v18));
    v21 = (v18 - 1) & v18;
    v22 = (v16 + 63) >> 6;
LABEL_9:
    v25 = *(v34 + 72);
    sub_1A98E0374(*(v15 + 56) + v25 * v20, v12, type metadata accessor for SFAirDropReceive.Transfer);
    sub_1A98DF718(v12, v14, type metadata accessor for SFAirDropReceive.Transfer);
    result = swift_bridgeObjectRetain_n();
    if (v21)
    {
      goto LABEL_12;
    }

LABEL_13:
    while (1)
    {
      v27 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v27 >= v22)
      {

        v29 = v33;
        sub_1A98DF718(v14, v33, type metadata accessor for SFAirDropReceive.Transfer);
        (*(v34 + 56))(v29, 0, 1, v35);
      }

      v21 = *(v15 + 64 + 8 * v27);
      ++v19;
      if (v21)
      {
        while (1)
        {
          v28 = __clz(__rbit64(v21));
          v21 &= v21 - 1;
          sub_1A98E0374(*(v15 + 56) + (v28 | (v27 << 6)) * v25, v6, type metadata accessor for SFAirDropReceive.Transfer);
          sub_1A98DF718(v6, v9, type metadata accessor for SFAirDropReceive.Transfer);
          if (sub_1A9976110())
          {
            sub_1A98E03DC(v14, type metadata accessor for SFAirDropReceive.Transfer);
            result = sub_1A98DF718(v9, v14, type metadata accessor for SFAirDropReceive.Transfer);
            v19 = v27;
            if (!v21)
            {
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_1A98E03DC(v9, type metadata accessor for SFAirDropReceive.Transfer);
            v19 = v27;
            if (!v21)
            {
              goto LABEL_13;
            }
          }

LABEL_12:
          v27 = v19;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v23 = 0;
    v22 = (v16 + 63) >> 6;
    while (v22 - 1 != v18)
    {
      v19 = v18 + 1;
      v24 = *(v15 + 72 + 8 * v18);
      v23 -= 64;
      ++v18;
      if (v24)
      {
        v33 = a1;
        v21 = (v24 - 1) & v24;
        v20 = __clz(__rbit64(v24)) - v23;
        goto LABEL_9;
      }
    }

    v30 = v35;
    v31 = *(v34 + 56);

    return v31(a1, 1, 1, v30);
  }

  return result;
}

uint64_t SFAirDrop.Transfers.lastSendTransfer()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SFAirDropSend.Transfer(0);
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v32 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v32 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - v13;
  v15 = *(v1 + *(type metadata accessor for SFAirDrop.Transfers(0) + 24));
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 64);
  if (v18)
  {
    v33 = a1;
    v19 = 0;
    v20 = __clz(__rbit64(v18));
    v21 = (v18 - 1) & v18;
    v22 = (v16 + 63) >> 6;
LABEL_9:
    v25 = *(v34 + 72);
    sub_1A98E0374(*(v15 + 56) + v25 * v20, v12, type metadata accessor for SFAirDropSend.Transfer);
    sub_1A98DF718(v12, v14, type metadata accessor for SFAirDropSend.Transfer);
    result = swift_bridgeObjectRetain_n();
    if (v21)
    {
      goto LABEL_12;
    }

LABEL_13:
    while (1)
    {
      v27 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v27 >= v22)
      {

        v29 = v33;
        sub_1A98DF718(v14, v33, type metadata accessor for SFAirDropSend.Transfer);
        (*(v34 + 56))(v29, 0, 1, v35);
      }

      v21 = *(v15 + 64 + 8 * v27);
      ++v19;
      if (v21)
      {
        while (1)
        {
          v28 = __clz(__rbit64(v21));
          v21 &= v21 - 1;
          sub_1A98E0374(*(v15 + 56) + (v28 | (v27 << 6)) * v25, v6, type metadata accessor for SFAirDropSend.Transfer);
          sub_1A98DF718(v6, v9, type metadata accessor for SFAirDropSend.Transfer);
          if (sub_1A9976110())
          {
            sub_1A98E03DC(v14, type metadata accessor for SFAirDropSend.Transfer);
            result = sub_1A98DF718(v9, v14, type metadata accessor for SFAirDropSend.Transfer);
            v19 = v27;
            if (!v21)
            {
              goto LABEL_13;
            }
          }

          else
          {
            result = sub_1A98E03DC(v9, type metadata accessor for SFAirDropSend.Transfer);
            v19 = v27;
            if (!v21)
            {
              goto LABEL_13;
            }
          }

LABEL_12:
          v27 = v19;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v23 = 0;
    v22 = (v16 + 63) >> 6;
    while (v22 - 1 != v18)
    {
      v19 = v18 + 1;
      v24 = *(v15 + 72 + 8 * v18);
      v23 -= 64;
      ++v18;
      if (v24)
      {
        v33 = a1;
        v21 = (v24 - 1) & v24;
        v20 = __clz(__rbit64(v24)) - v23;
        goto LABEL_9;
      }
    }

    v30 = v35;
    v31 = *(v34 + 56);

    return v31(a1, 1, 1, v30);
  }

  return result;
}

uint64_t sub_1A98DF718(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A98DF780()
{
  v1 = 0x6E617254646E6573;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1A98DF7F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A98E07CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A98DF81C(uint64_t a1)
{
  v2 = sub_1A98DFAD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98DF858(uint64_t a1)
{
  v2 = sub_1A98DFAD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.Transfers.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FB8, &qword_1A99A44D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98DFAD4();
  sub_1A9977AA0();
  LOBYTE(v12) = 0;
  type metadata accessor for SFAirDropClient.Identifier(0);
  sub_1A98E05C0(&qword_1EB3B1B08, type metadata accessor for SFAirDropClient.Identifier, &protocol conformance descriptor for SFAirDropClient.Identifier);
  sub_1A9977680();
  if (!v2)
  {
    v9 = type metadata accessor for SFAirDrop.Transfers(0);
    v12 = *(v3 + *(v9 + 20));
    HIBYTE(v11) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FC8, &qword_1A99A44D8);
    sub_1A98DFB28();
    sub_1A99776E0();
    v12 = *(v3 + *(v9 + 24));
    HIBYTE(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FE0, &qword_1A99A44E0);
    sub_1A98DFC14();
    sub_1A99776E0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1A98DFAD4()
{
  result = qword_1EB3B4FC0;
  if (!qword_1EB3B4FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4FC0);
  }

  return result;
}

unint64_t sub_1A98DFB28()
{
  result = qword_1EB3B4FD0;
  if (!qword_1EB3B4FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B4FC8, &qword_1A99A44D8);
    sub_1A98E05C0(&qword_1EB3B34F0, type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    sub_1A98E05C0(&qword_1EB3B4FD8, type metadata accessor for SFAirDropReceive.Transfer, &protocol conformance descriptor for SFAirDropReceive.Transfer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4FD0);
  }

  return result;
}

unint64_t sub_1A98DFC14()
{
  result = qword_1EB3B4FE8;
  if (!qword_1EB3B4FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B4FE0, &qword_1A99A44E0);
    sub_1A98E05C0(&qword_1EB3B34F0, type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    sub_1A98E05C0(&qword_1EB3B4FF0, type metadata accessor for SFAirDropSend.Transfer, &protocol conformance descriptor for SFAirDropSend.Transfer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4FE8);
  }

  return result;
}

uint64_t SFAirDrop.Transfers.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FB0, &qword_1A99A44C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FF8, &qword_1A99A44E8);
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for SFAirDrop.Transfers(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98DFAD4();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v18 = v10;
  v13 = v20;
  type metadata accessor for SFAirDropClient.Identifier(0);
  LOBYTE(v23) = 0;
  sub_1A98E05C0(&qword_1EB3B1B50, type metadata accessor for SFAirDropClient.Identifier, &protocol conformance descriptor for SFAirDropClient.Identifier);
  v14 = v21;
  sub_1A9977590();
  sub_1A98E00C4(v6, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FC8, &qword_1A99A44D8);
  v22 = 1;
  sub_1A98E0134();
  sub_1A99775F0();
  v15 = v18;
  *&v12[*(v18 + 20)] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FE0, &qword_1A99A44E0);
  v22 = 2;
  sub_1A98E0288();
  sub_1A99775F0();
  (*(v13 + 8))(v9, v14);
  *&v12[*(v15 + 24)] = v23;
  sub_1A98E0374(v12, v19, type metadata accessor for SFAirDrop.Transfers);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1A98E03DC(v12, type metadata accessor for SFAirDrop.Transfers);
}

uint64_t sub_1A98E00C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FB0, &qword_1A99A44C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A98E0134()
{
  result = qword_1EB3B5000;
  if (!qword_1EB3B5000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B4FC8, &qword_1A99A44D8);
    sub_1A98E05C0(&qword_1EB3B3540, type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    sub_1A98E05C0(&qword_1EB3B5008, type metadata accessor for SFAirDropReceive.Transfer, &protocol conformance descriptor for SFAirDropReceive.Transfer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5000);
  }

  return result;
}

uint64_t sub_1A98E0220(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4FB0, &qword_1A99A44C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A98E0288()
{
  result = qword_1EB3B5010;
  if (!qword_1EB3B5010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B4FE0, &qword_1A99A44E0);
    sub_1A98E05C0(&qword_1EB3B3540, type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    sub_1A98E05C0(&qword_1EB3B5018, type metadata accessor for SFAirDropSend.Transfer, &protocol conformance descriptor for SFAirDropSend.Transfer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5010);
  }

  return result;
}

uint64_t sub_1A98E0374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A98E03DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A98E0494(uint64_t a1)
{
  sub_1A98E0568(319);
  if (v1 <= 0x3F)
  {
    sub_1A98E0608(319, &qword_1EB3AB780, type metadata accessor for SFAirDropReceive.Transfer);
    if (v2 <= 0x3F)
    {
      sub_1A98E0608(319, &qword_1EB3AB788, type metadata accessor for SFAirDropSend.Transfer);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A98E0568(uint64_t a1)
{
  if (!qword_1EB3AC648)
  {
    type metadata accessor for SFAirDropClient.Identifier(255);
    v1 = sub_1A99770A0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB3AC648);
    }
  }
}

uint64_t sub_1A98E05C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A98E0608(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for SFAirDrop.TransferIdentifier(255);
    a3(255);
    sub_1A98E05C0(&qword_1EB3AB7C0, type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    v5 = sub_1A9976720();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A98E06C8()
{
  result = qword_1EB3B5020;
  if (!qword_1EB3B5020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5020);
  }

  return result;
}

unint64_t sub_1A98E0720()
{
  result = qword_1EB3B5028;
  if (!qword_1EB3B5028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5028);
  }

  return result;
}

unint64_t sub_1A98E0778()
{
  result = qword_1EB3B5030[0];
  if (!qword_1EB3B5030[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3B5030);
  }

  return result;
}

uint64_t sub_1A98E07CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001A99E6F40 == a2;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A99E6F60 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E617254646E6573 && a2 == 0xED00007372656673)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t combineLatest<A, B, C>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v29 = a7;
  v30 = a8;
  v27 = a3;
  v28 = a9;
  v14 = *(a6 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v15);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24);
  (*(v19 + 16))(v22, a2, a5);
  (*(v14 + 16))(v17, v27, a6);
  return sub_1A98E0B20(v24, v22, v17, a4, a5, a6, v29, v30, v28, a10);
}

uint64_t sub_1A98E0B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  (*(*(a4 - 8) + 32))(a9, a1, a4);
  v20[0] = a4;
  v20[1] = a5;
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = a8;
  v20[5] = a10;
  v18 = type metadata accessor for AsyncCombineLatest3Sequence(0, v20);
  (*(*(a5 - 8) + 32))(a9 + *(v18 + 68), a2, a5);
  return (*(*(a6 - 8) + 32))(a9 + *(v18 + 72), a3, a6);
}

uint64_t AsyncCombineLatest3Sequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(a1 + 32);
  v6 = sub_1A99770A0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  v10 = *(a1 + 56);
  v16 = *(a1 + 16);
  v17 = v5;
  v18 = *(a1 + 40);
  v19 = v10;
  type metadata accessor for CombineLatestStorage(0, &v16);
  v12 = *(a1 + 68);
  v11 = *(a1 + 72);
  v13 = *(v5 - 8);
  (*(v13 + 16))(v9, v2 + v11, v5);
  (*(v13 + 56))(v9, 0, 1, v5);
  v14 = sub_1A9861A48(v2, v2 + v12, v9);
  (*(v7 + 8))(v9, v6);
  return sub_1A98E0DE4(v14, a2);
}

uint64_t sub_1A98E0DE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 96);
  v7[0] = *(*a1 + 80);
  v7[1] = v5;
  v7[2] = *(v4 + 112);
  type metadata accessor for AsyncCombineLatest3Sequence.Iterator.InternalClass(0, v7);
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = result;
  return result;
}

uint64_t sub_1A98E0E64(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getAssociatedTypeWitness();
  v2[5] = swift_getAssociatedTypeWitness();
  v2[6] = swift_getAssociatedTypeWitness();
  v2[7] = sub_1A99770A0();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v2[8] = TupleTypeMetadata3;
  v4 = sub_1A99770A0();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = *(TupleTypeMetadata3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98E10B0, 0, 0);
}

uint64_t sub_1A98E10B0()
{
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_1A98E114C;
  v2 = *(v0 + 88);

  return sub_1A9859938(v2);
}

uint64_t sub_1A98E114C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1A98E16BC;
  }

  else
  {
    v2 = sub_1A98E1260;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A98E1260()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[2];
    (*(v0[10] + 8))(v1, v0[9]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    (*(*(TupleTypeMetadata3 - 8) + 56))(v4, 1, 1, TupleTypeMetadata3);
  }

  else
  {
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[13];
    v9 = v0[5];
    v32 = v0[14];
    v35 = v0[6];
    v10 = v0[4];
    v28 = v0[2];
    (*(v2 + 32))(v6, v1, v3);
    v26 = swift_getTupleTypeMetadata3();
    v30 = *(v26 + 48);
    v11 = *(v2 + 16);
    v11(v7, v6, v3);
    v27 = *(v10 - 8);
    (*(v27 + 32))(v28, v7, v10);
    v11(v32, v6, v3);
    v25 = *(v9 - 8);
    (*(v25 + 32))(v28 + v30, v32 + *(v3 + 48), v9);
    v11(v8, v6, v3);
    v12 = *(v35 - 8);
    v31 = *(v3 + 64);
    v33 = v8;
    result = (*(v12 + 48))(v8 + v31, 1);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v29 = v0[15];
    v14 = v0[13];
    v23 = v0[7];
    v24 = v0[14];
    v15 = v0[6];
    v36 = v0[5];
    v16 = v0[2];
    v17 = *(v26 + 64);
    v18 = *(v3 + 48);
    v22 = v0[4];
    (*(v0[12] + 8))(v0[16], v0[8]);
    (*(v12 + 32))(v16 + v17, v33 + v31, v15);
    (*(*(v26 - 8) + 56))(v16, 0, 1, v26);
    v34 = *(v25 + 8);
    v34(v14 + v18, v36);
    v19 = *(v27 + 8);
    v19(v14, v22);
    v20 = *(*(v23 - 8) + 8);
    v20(v24 + v31, v23);
    v19(v24, v22);
    v20(v29 + v31, v23);
    v34(v29 + v18, v36);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_1A98E16BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AsyncCombineLatest3Sequence.Iterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98E1770, 0, 0);
}

uint64_t sub_1A98E1770()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1A97E0474;
  v2 = *(v0 + 16);

  return sub_1A98E0E64(v2);
}

uint64_t sub_1A98E180C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A97B2638;

  return AsyncCombineLatest3Sequence.Iterator.next()(a1);
}

uint64_t sub_1A98E18A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[3] = AssociatedTypeWitness;
  v6[4] = *(AssociatedTypeWitness - 8);
  v6[5] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[6] = v13;
  *v13 = v6;
  v13[1] = sub_1A97FF5F8;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6);
}

uint64_t sub_1A98E19F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  AsyncCombineLatest3Sequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1A98E1A58(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1A98E1B20(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A98E1BC8(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v8 + 80);
  v13 = *(*(a3[3] - 8) + 64);
  v14 = *(v11 + 80);
  if (*(v11 + 84) <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(*(a3[2] - 8) + 64) + v12;
  v17 = a2 - v15;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v18 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 < 2)
    {
LABEL_30:
      if (v15)
      {
LABEL_31:
        if (v6 == v15)
        {
          v25 = *(v5 + 48);

          return v25();
        }

        else
        {
          v27 = (a1 + v16) & ~v12;
          if (v9 == v15)
          {
            v28 = *(v8 + 48);
            v29 = *(v8 + 84);
            v30 = a3[3];
          }

          else
          {
            v28 = *(v11 + 48);
            v27 = (v27 + v13 + v14) & ~v14;
            v29 = *(v11 + 84);
            v30 = a3[4];
          }

          return v28(v27, v29, v30);
        }
      }

      return 0;
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_30;
  }

LABEL_17:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v15 + (v24 | v22) + 1;
}

char *sub_1A98E1E80(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[3];
  v8 = a4[4];
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v6)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(*(a4[2] - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(*(v7 - 8) + 64);
  v16 = *(v12 + 80);
  if (*(v12 + 84) <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = ((v15 + v16 + ((v13 + v14) & ~v14)) & ~v16) + *(*(v8 - 8) + 64);
  v19 = a3 >= v17;
  v20 = a3 - v17;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v17 < a2)
  {
    v22 = ~v17 + a2;
    if (v18 < 4)
    {
      v24 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v27 = v22 & ~(-1 << (8 * v18));
        v28 = result;
        bzero(result, v18);
        result = v28;
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v28 = v27;
            if (v21 > 1)
            {
LABEL_53:
              if (v21 == 2)
              {
                *&result[v18] = v24;
              }

              else
              {
                *&result[v18] = v24;
              }

              return result;
            }
          }

          else
          {
            *v28 = v22;
            if (v21 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *v28 = v27;
        v28[2] = BYTE2(v27);
      }

      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v23 = result;
      bzero(result, v18);
      result = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v21)
    {
      result[v18] = v24;
    }

    return result;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&result[v18] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&result[v18] = 0;
  }

  else if (v21)
  {
    result[v18] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return result;
  }

LABEL_34:
  if (v6 == v17)
  {
    v29 = *(v5 + 56);

    return v29();
  }

  else
  {
    v30 = &result[v13 + v14] & ~v14;
    if (v10 == v17)
    {
      v31 = *(v9 + 56);

      return v31(v30);
    }

    else
    {
      v32 = *(v12 + 56);
      v33 = (v30 + v15 + v16) & ~v16;

      return v32(v33);
    }
  }
}

uint64_t sub_1A98E2204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t _SFAirDropTransferObserverAdaptor.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*_SFAirDropTransferObserverAdaptor.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7Sharing33_SFAirDropTransferObserverAdaptor_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A98E2468;
}

void sub_1A98E2468(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id _SFAirDropTransferObserverAdaptor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _SFAirDropTransferObserverAdaptor.init()()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for SFAirDropClient.Identifier(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SFAirDropClient(0);
  swift_allocObject();
  *&v0[OBJC_IVAR____TtC7Sharing33_SFAirDropTransferObserverAdaptor_client] = SFAirDropClient.init(identifier:)(v4);
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id _SFAirDropTransferObserverAdaptor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_1A98E27A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F48, &qword_1A9999488);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1AF0, &qword_1A9992BB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B54F0, &unk_1A99A5928);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  if ((_s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0() & 1) == 0)
  {
    return 0;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
  if (*(a1 + *(v14 + 52)) != *(a2 + *(v14 + 52)))
  {
    return 0;
  }

  v15 = v14;
  if ((sub_1A99761E0() & 1) == 0 || (sub_1A98E4180((a1 + *(v15 + 60)), (a2 + *(v15 + 60))) & 1) == 0)
  {
    return 0;
  }

  v16 = *(v15 + 64);
  v17 = a1 + v16;
  v18 = *(v11 + 48);
  sub_1A97C13A4(v17, v13, &qword_1EB3B1AF0, &qword_1A9992BB0);
  sub_1A97C13A4(a2 + v16, &v13[v18], &qword_1EB3B1AF0, &qword_1A9992BB0);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_1A97B06FC(v13, &qword_1EB3B1AF0, &qword_1A9992BB0);
      return 1;
    }

    goto LABEL_10;
  }

  sub_1A97C13A4(v13, v10, &qword_1EB3B1AF0, &qword_1A9992BB0);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_1A97B06FC(v10, &qword_1EB3B2F48, &qword_1A9999488);
LABEL_10:
    v21 = &qword_1EB3B54F0;
    v22 = &unk_1A99A5928;
LABEL_11:
    sub_1A97B06FC(v13, v21, v22);
    return 0;
  }

  sub_1A97D8380(&v13[v18], v7, &qword_1EB3B2F48, &qword_1A9999488);
  if ((_s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0() & 1) == 0)
  {
    sub_1A97B06FC(v7, &qword_1EB3B2F48, &qword_1A9999488);
    sub_1A97B06FC(v10, &qword_1EB3B2F48, &qword_1A9999488);
    v21 = &qword_1EB3B1AF0;
    v22 = &qword_1A9992BB0;
    goto LABEL_11;
  }

  v23 = sub_1A98BB25C(*&v10[*(v4 + 52)], *&v7[*(v4 + 52)]);
  sub_1A97B06FC(v7, &qword_1EB3B2F48, &qword_1A9999488);
  sub_1A97B06FC(v10, &qword_1EB3B2F48, &qword_1A9999488);
  sub_1A97B06FC(v13, &qword_1EB3B1AF0, &qword_1A9992BB0);
  return (v23 & 1) != 0;
}

BOOL sub_1A98E2B64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B54B0, &qword_1A99A58C8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B54B8, &qword_1A99A58D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B54C0, &qword_1A99A58D8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  if ((_s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0() & 1) == 0)
  {
    return 0;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1798, &qword_1A99929A8);
  if (*(a1 + *(v14 + 52)) != *(a2 + *(v14 + 52)))
  {
    return 0;
  }

  v15 = v14;
  if ((sub_1A99761E0() & 1) == 0 || (sub_1A98E3698((a1 + *(v15 + 60)), (a2 + *(v15 + 60))) & 1) == 0)
  {
    return 0;
  }

  v16 = *(v15 + 64);
  v17 = a1 + v16;
  v18 = *(v11 + 48);
  sub_1A97C13A4(v17, v13, &qword_1EB3B54B8, &qword_1A99A58D0);
  sub_1A97C13A4(a2 + v16, &v13[v18], &qword_1EB3B54B8, &qword_1A99A58D0);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_1A97B06FC(v13, &qword_1EB3B54B8, &qword_1A99A58D0);
      return 1;
    }

    goto LABEL_10;
  }

  sub_1A97C13A4(v13, v10, &qword_1EB3B54B8, &qword_1A99A58D0);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_1A97B06FC(v10, &qword_1EB3B54B0, &qword_1A99A58C8);
LABEL_10:
    v21 = &qword_1EB3B54C0;
    v22 = &qword_1A99A58D8;
LABEL_11:
    sub_1A97B06FC(v13, v21, v22);
    return 0;
  }

  sub_1A97D8380(&v13[v18], v7, &qword_1EB3B54B0, &qword_1A99A58C8);
  if ((_s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0() & 1) == 0)
  {
    sub_1A97B06FC(v7, &qword_1EB3B54B0, &qword_1A99A58C8);
    sub_1A97B06FC(v10, &qword_1EB3B54B0, &qword_1A99A58C8);
    v21 = &qword_1EB3B54B8;
    v22 = &qword_1A99A58D0;
    goto LABEL_11;
  }

  v23 = sub_1A98BB25C(*&v10[*(v4 + 52)], *&v7[*(v4 + 52)]);
  sub_1A97B06FC(v7, &qword_1EB3B54B0, &qword_1A99A58C8);
  sub_1A97B06FC(v10, &qword_1EB3B54B0, &qword_1A99A58C8);
  sub_1A97B06FC(v13, &qword_1EB3B54B8, &qword_1A99A58D0);
  return (v23 & 1) != 0;
}

BOOL sub_1A98E2F20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5490, &qword_1A99A5898);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5498, &qword_1A99A58A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B54A0, &qword_1A99A58A8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  if ((_s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0() & 1) == 0)
  {
    return 0;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1DF8, &unk_1A9994A30);
  if (*(a1 + *(v14 + 52)) != *(a2 + *(v14 + 52)))
  {
    return 0;
  }

  v15 = v14;
  if ((sub_1A99761E0() & 1) == 0 || (sub_1A98E5750((a1 + *(v15 + 60)), (a2 + *(v15 + 60))) & 1) == 0)
  {
    return 0;
  }

  v16 = *(v15 + 64);
  v17 = a1 + v16;
  v18 = *(v11 + 48);
  sub_1A97C13A4(v17, v13, &qword_1EB3B5498, &qword_1A99A58A0);
  sub_1A97C13A4(a2 + v16, &v13[v18], &qword_1EB3B5498, &qword_1A99A58A0);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_1A97B06FC(v13, &qword_1EB3B5498, &qword_1A99A58A0);
      return 1;
    }

    goto LABEL_10;
  }

  sub_1A97C13A4(v13, v10, &qword_1EB3B5498, &qword_1A99A58A0);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_1A97B06FC(v10, &qword_1EB3B5490, &qword_1A99A5898);
LABEL_10:
    v21 = &qword_1EB3B54A0;
    v22 = &qword_1A99A58A8;
LABEL_11:
    sub_1A97B06FC(v13, v21, v22);
    return 0;
  }

  sub_1A97D8380(&v13[v18], v7, &qword_1EB3B5490, &qword_1A99A5898);
  if ((_s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0() & 1) == 0)
  {
    sub_1A97B06FC(v7, &qword_1EB3B5490, &qword_1A99A5898);
    sub_1A97B06FC(v10, &qword_1EB3B5490, &qword_1A99A5898);
    v21 = &qword_1EB3B5498;
    v22 = &qword_1A99A58A0;
    goto LABEL_11;
  }

  v23 = sub_1A98BB25C(*&v10[*(v4 + 52)], *&v7[*(v4 + 52)]);
  sub_1A97B06FC(v7, &qword_1EB3B5490, &qword_1A99A5898);
  sub_1A97B06FC(v10, &qword_1EB3B5490, &qword_1A99A5898);
  sub_1A97B06FC(v13, &qword_1EB3B5498, &qword_1A99A58A0);
  return (v23 & 1) != 0;
}

BOOL sub_1A98E32DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B54D0, &qword_1A99A58F8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B54D8, &qword_1A99A5900);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B54E0, &unk_1A99A5908);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  if ((_s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0() & 1) == 0)
  {
    return 0;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E20, &qword_1A99A4860);
  if (*(a1 + *(v14 + 52)) != *(a2 + *(v14 + 52)))
  {
    return 0;
  }

  v15 = v14;
  if ((sub_1A99761E0() & 1) == 0 || (sub_1A98E4C68((a1 + *(v15 + 60)), (a2 + *(v15 + 60))) & 1) == 0)
  {
    return 0;
  }

  v16 = *(v15 + 64);
  v17 = a1 + v16;
  v18 = *(v11 + 48);
  sub_1A97C13A4(v17, v13, &qword_1EB3B54D8, &qword_1A99A5900);
  sub_1A97C13A4(a2 + v16, &v13[v18], &qword_1EB3B54D8, &qword_1A99A5900);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_1A97B06FC(v13, &qword_1EB3B54D8, &qword_1A99A5900);
      return 1;
    }

    goto LABEL_10;
  }

  sub_1A97C13A4(v13, v10, &qword_1EB3B54D8, &qword_1A99A5900);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_1A97B06FC(v10, &qword_1EB3B54D0, &qword_1A99A58F8);
LABEL_10:
    v21 = &qword_1EB3B54E0;
    v22 = &unk_1A99A5908;
LABEL_11:
    sub_1A97B06FC(v13, v21, v22);
    return 0;
  }

  sub_1A97D8380(&v13[v18], v7, &qword_1EB3B54D0, &qword_1A99A58F8);
  if ((_s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0() & 1) == 0)
  {
    sub_1A97B06FC(v7, &qword_1EB3B54D0, &qword_1A99A58F8);
    sub_1A97B06FC(v10, &qword_1EB3B54D0, &qword_1A99A58F8);
    v21 = &qword_1EB3B54D8;
    v22 = &qword_1A99A5900;
    goto LABEL_11;
  }

  v23 = sub_1A98BB25C(*&v10[*(v4 + 52)], *&v7[*(v4 + 52)]);
  sub_1A97B06FC(v7, &qword_1EB3B54D0, &qword_1A99A58F8);
  sub_1A97B06FC(v10, &qword_1EB3B54D0, &qword_1A99A58F8);
  sub_1A97B06FC(v13, &qword_1EB3B54D8, &qword_1A99A5900);
  return (v23 & 1) != 0;
}

uint64_t sub_1A98E3698(char *a1, char *a2)
{
  v100 = a1;
  v101 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E60, &qword_1A99A58E0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v96 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v97 = &v94 - v5;
  v6 = type metadata accessor for SFAirDrop.DeclineAction(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v98 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v99 = &v94 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v94 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v94 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17E8, &unk_1A99A4890);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = (&v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v94 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v94 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B54C8, &unk_1A99A58E8);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v94 - v27;
  v29 = (&v94 + *(v26 + 56) - v27);
  sub_1A97C13A4(v100, &v94 - v27, &qword_1EB3B17E8, &unk_1A99A4890);
  sub_1A97C13A4(v101, v29, &qword_1EB3B17E8, &unk_1A99A4890);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v100 = v13;
    v101 = v28;
    v39 = v15;
    sub_1A97C13A4(v28, v24, &qword_1EB3B17E8, &unk_1A99A4890);
    v40 = *v24;
    v41 = v24[1];
    v42 = v24[2];
    v43 = v24[3];
    v44 = v24[4];
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17F8, &qword_1A9992A08) + 80);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1A98E6488(v24 + v45, type metadata accessor for SFAirDrop.DeclineAction);

      v28 = v101;
LABEL_16:
      v58 = &qword_1EB3B54C8;
      v59 = &unk_1A99A58E8;
LABEL_17:
      v60 = v28;
LABEL_63:
      sub_1A97B06FC(v60, v58, v59);
      v87 = 0;
      return v87 & 1;
    }

    v98 = v43;
    v99 = v44;
    v62 = *v29;
    v61 = v29[1];
    v63 = v29[3];
    v94 = v29[2];
    v95 = v42;
    v64 = v29[4];
    v96 = v63;
    v97 = v64;
    v65 = v24 + v45;
    v66 = v39;
    sub_1A98EEE34(v65, v39, type metadata accessor for SFAirDrop.DeclineAction);
    v67 = v29 + v45;
    v56 = v100;
    sub_1A98EEE34(v67, v100, type metadata accessor for SFAirDrop.DeclineAction);
    if (v40 == v62 && v41 == v61)
    {

      v68 = v98;
    }

    else
    {
      v71 = sub_1A99777E0();

      v68 = v98;
      if ((v71 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    v70 = v101;
    v72 = v99;
    if (v95 == v94 && v68 == v96)
    {
    }

    else
    {
      v88 = sub_1A99777E0();

      if ((v88 & 1) == 0)
      {

LABEL_60:
        sub_1A98E6488(v56, type metadata accessor for SFAirDrop.DeclineAction);
        v92 = v66;
        goto LABEL_61;
      }
    }

    v89 = sub_1A99056D4(v72, v97);

    if (v89 & 1) != 0 && (*v66 == *v56 && *(v66 + 8) == *(v56 + 8) || (sub_1A99777E0()))
    {
      v75 = *(v66 + 16);
      v76 = *(v66 + 24);
      v77 = *(v66 + 32);
      v78 = *(v66 + 40);
      v79 = *(v66 + 48);
      v107 = v75;
      v108 = v76;
      v109 = v77;
      v110 = v78;
      v111 = v79;
      v81 = *(v56 + 16);
      v82 = *(v56 + 24);
      v83 = *(v56 + 32);
      v84 = *(v56 + 40);
      v80 = v66;
LABEL_53:
      v90 = *(v56 + 48);
      v102 = v81;
      v103 = v82;
      v104 = v83;
      v105 = v84;
      v106 = v90;
      sub_1A97DC908(v75, v76, v77, v78, v79);
      sub_1A97DC908(v81, v82, v83, v84, v90);
      v91 = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v107, &v102);
      sub_1A97DC96C(v102, v103, v104, v105, v106);
      sub_1A97DC96C(v107, v108, v109, v110, v111);
      sub_1A98E6488(v56, type metadata accessor for SFAirDrop.DeclineAction);
      sub_1A98E6488(v80, type metadata accessor for SFAirDrop.DeclineAction);
      if (v91)
      {
        sub_1A97B06FC(v70, &qword_1EB3B17E8, &unk_1A99A4890);
        v87 = 1;
        return v87 & 1;
      }

      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1A97C13A4(v28, v19, &qword_1EB3B17E8, &unk_1A99A4890);
    v46 = *v19;
    v47 = v19[1];
    v48 = v19[3];
    v100 = v19[2];
    v49 = v19[4];
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17F8, &qword_1A9992A08) + 80);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1A98E6488(v19 + v50, type metadata accessor for SFAirDrop.DeclineAction);

      goto LABEL_16;
    }

    v101 = v28;
    v52 = *v29;
    v51 = v29[1];
    v53 = v29[3];
    v95 = v29[2];
    v96 = v29[4];
    v97 = v49;
    v54 = v19 + v50;
    v39 = v99;
    sub_1A98EEE34(v54, v99, type metadata accessor for SFAirDrop.DeclineAction);
    v55 = v29 + v50;
    v56 = v98;
    sub_1A98EEE34(v55, v98, type metadata accessor for SFAirDrop.DeclineAction);
    if (v46 == v52 && v47 == v51)
    {

      v57 = v97;
LABEL_22:
      v70 = v101;
      if (v100 == v95 && v48 == v53)
      {
      }

      else
      {
        v73 = sub_1A99777E0();

        if ((v73 & 1) == 0)
        {

LABEL_58:
          sub_1A98E6488(v56, type metadata accessor for SFAirDrop.DeclineAction);
          v92 = v39;
LABEL_61:
          sub_1A98E6488(v92, type metadata accessor for SFAirDrop.DeclineAction);
LABEL_62:
          v58 = &qword_1EB3B17E8;
          v59 = &unk_1A99A4890;
          v60 = v70;
          goto LABEL_63;
        }
      }

      v74 = sub_1A99056D4(v57, v96);

      if (v74 & 1) != 0 && (*v39 == *v56 && *(v39 + 8) == *(v56 + 8) || (sub_1A99777E0()))
      {
        v75 = *(v39 + 16);
        v76 = *(v39 + 24);
        v77 = *(v39 + 32);
        v78 = *(v39 + 40);
        v79 = *(v39 + 48);
        v107 = v75;
        v108 = v76;
        v109 = v77;
        v110 = v78;
        v111 = v79;
        v80 = v39;
        v81 = *(v56 + 16);
        v82 = *(v56 + 24);
        v83 = *(v56 + 32);
        v84 = *(v56 + 40);
        goto LABEL_53;
      }

      goto LABEL_58;
    }

    v69 = sub_1A99777E0();

    v57 = v97;
    if (v69)
    {
      goto LABEL_22;
    }

LABEL_56:

    sub_1A98E6488(v56, type metadata accessor for SFAirDrop.DeclineAction);
    sub_1A98E6488(v39, type metadata accessor for SFAirDrop.DeclineAction);
    v58 = &qword_1EB3B17E8;
    v59 = &unk_1A99A4890;
    v60 = v101;
    goto LABEL_63;
  }

  sub_1A97C13A4(v28, v22, &qword_1EB3B17E8, &unk_1A99A4890);
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E58, &unk_1A9994A90) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1A97B06FC(&v22[v31], &qword_1EB3B1E60, &qword_1A99A58E0);
    goto LABEL_16;
  }

  v32 = *v22;
  v33 = *v29;
  v34 = v97;
  sub_1A97D8380(&v22[v31], v97, &qword_1EB3B1E60, &qword_1A99A58E0);
  v35 = v29 + v31;
  v36 = v96;
  sub_1A97D8380(v35, v96, &qword_1EB3B1E60, &qword_1A99A58E0);
  if (v32)
  {
    if (v32 == 1)
    {
      v37 = 0xE700000000000000;
      v38 = 0x65766965636572;
      if (!v33)
      {
LABEL_40:
        v85 = 0xE400000000000000;
        if (v38 != 1684956531)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v37 = 0xE800000000000000;
      v38 = 0x6F666E4965726F6DLL;
      if (!v33)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    v37 = 0xE400000000000000;
    v38 = 1684956531;
    if (!v33)
    {
      goto LABEL_40;
    }
  }

  if (v33 == 1)
  {
    v85 = 0xE700000000000000;
    if (v38 != 0x65766965636572)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v85 = 0xE800000000000000;
    if (v38 != 0x6F666E4965726F6DLL)
    {
LABEL_45:
      v86 = sub_1A99777E0();

      if (v86)
      {
        goto LABEL_46;
      }

      sub_1A97B06FC(v36, &qword_1EB3B1E60, &qword_1A99A58E0);
      sub_1A97B06FC(v34, &qword_1EB3B1E60, &qword_1A99A58E0);
      v58 = &qword_1EB3B17E8;
      v59 = &unk_1A99A4890;
      goto LABEL_17;
    }
  }

LABEL_43:
  if (v37 != v85)
  {
    goto LABEL_45;
  }

LABEL_46:
  v87 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
  sub_1A97B06FC(v36, &qword_1EB3B1E60, &qword_1A99A58E0);
  sub_1A97B06FC(v34, &qword_1EB3B1E60, &qword_1A99A58E0);
  sub_1A97B06FC(v28, &qword_1EB3B17E8, &unk_1A99A4890);
  return v87 & 1;
}

uint64_t sub_1A98E4180(char *a1, char *a2)
{
  v100 = a1;
  v101 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E50, &qword_1A9994A88);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v96 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v97 = &v94 - v5;
  v6 = type metadata accessor for SFAirDrop.DeclineAction(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v98 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v99 = &v94 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v94 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v94 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17F0, &qword_1A9992A00);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = (&v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v94 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v94 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B54F8, &qword_1A99A5938);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v94 - v27;
  v29 = (&v94 + *(v26 + 56) - v27);
  sub_1A97C13A4(v100, &v94 - v27, &qword_1EB3B17F0, &qword_1A9992A00);
  sub_1A97C13A4(v101, v29, &qword_1EB3B17F0, &qword_1A9992A00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v100 = v13;
    v101 = v28;
    v39 = v15;
    sub_1A97C13A4(v28, v24, &qword_1EB3B17F0, &qword_1A9992A00);
    v40 = *v24;
    v41 = v24[1];
    v42 = v24[2];
    v43 = v24[3];
    v44 = v24[4];
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1800, &qword_1A9992A10) + 80);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1A98E6488(v24 + v45, type metadata accessor for SFAirDrop.DeclineAction);

      v28 = v101;
LABEL_16:
      v58 = &qword_1EB3B54F8;
      v59 = &qword_1A99A5938;
LABEL_17:
      v60 = v28;
LABEL_63:
      sub_1A97B06FC(v60, v58, v59);
      v87 = 0;
      return v87 & 1;
    }

    v98 = v43;
    v99 = v44;
    v62 = *v29;
    v61 = v29[1];
    v63 = v29[3];
    v94 = v29[2];
    v95 = v42;
    v64 = v29[4];
    v96 = v63;
    v97 = v64;
    v65 = v24 + v45;
    v66 = v39;
    sub_1A98EEE34(v65, v39, type metadata accessor for SFAirDrop.DeclineAction);
    v67 = v29 + v45;
    v56 = v100;
    sub_1A98EEE34(v67, v100, type metadata accessor for SFAirDrop.DeclineAction);
    if (v40 == v62 && v41 == v61)
    {

      v68 = v98;
    }

    else
    {
      v71 = sub_1A99777E0();

      v68 = v98;
      if ((v71 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    v70 = v101;
    v72 = v99;
    if (v95 == v94 && v68 == v96)
    {
    }

    else
    {
      v88 = sub_1A99777E0();

      if ((v88 & 1) == 0)
      {

LABEL_60:
        sub_1A98E6488(v56, type metadata accessor for SFAirDrop.DeclineAction);
        v92 = v66;
        goto LABEL_61;
      }
    }

    v89 = sub_1A99056FC(v72, v97);

    if (v89 & 1) != 0 && (*v66 == *v56 && *(v66 + 8) == *(v56 + 8) || (sub_1A99777E0()))
    {
      v75 = *(v66 + 16);
      v76 = *(v66 + 24);
      v77 = *(v66 + 32);
      v78 = *(v66 + 40);
      v79 = *(v66 + 48);
      v107 = v75;
      v108 = v76;
      v109 = v77;
      v110 = v78;
      v111 = v79;
      v81 = *(v56 + 16);
      v82 = *(v56 + 24);
      v83 = *(v56 + 32);
      v84 = *(v56 + 40);
      v80 = v66;
LABEL_53:
      v90 = *(v56 + 48);
      v102 = v81;
      v103 = v82;
      v104 = v83;
      v105 = v84;
      v106 = v90;
      sub_1A97DC908(v75, v76, v77, v78, v79);
      sub_1A97DC908(v81, v82, v83, v84, v90);
      v91 = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v107, &v102);
      sub_1A97DC96C(v102, v103, v104, v105, v106);
      sub_1A97DC96C(v107, v108, v109, v110, v111);
      sub_1A98E6488(v56, type metadata accessor for SFAirDrop.DeclineAction);
      sub_1A98E6488(v80, type metadata accessor for SFAirDrop.DeclineAction);
      if (v91)
      {
        sub_1A97B06FC(v70, &qword_1EB3B17F0, &qword_1A9992A00);
        v87 = 1;
        return v87 & 1;
      }

      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1A97C13A4(v28, v19, &qword_1EB3B17F0, &qword_1A9992A00);
    v46 = *v19;
    v47 = v19[1];
    v48 = v19[3];
    v100 = v19[2];
    v49 = v19[4];
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1800, &qword_1A9992A10) + 80);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1A98E6488(v19 + v50, type metadata accessor for SFAirDrop.DeclineAction);

      goto LABEL_16;
    }

    v101 = v28;
    v52 = *v29;
    v51 = v29[1];
    v53 = v29[3];
    v95 = v29[2];
    v96 = v29[4];
    v97 = v49;
    v54 = v19 + v50;
    v39 = v99;
    sub_1A98EEE34(v54, v99, type metadata accessor for SFAirDrop.DeclineAction);
    v55 = v29 + v50;
    v56 = v98;
    sub_1A98EEE34(v55, v98, type metadata accessor for SFAirDrop.DeclineAction);
    if (v46 == v52 && v47 == v51)
    {

      v57 = v97;
LABEL_22:
      v70 = v101;
      if (v100 == v95 && v48 == v53)
      {
      }

      else
      {
        v73 = sub_1A99777E0();

        if ((v73 & 1) == 0)
        {

LABEL_58:
          sub_1A98E6488(v56, type metadata accessor for SFAirDrop.DeclineAction);
          v92 = v39;
LABEL_61:
          sub_1A98E6488(v92, type metadata accessor for SFAirDrop.DeclineAction);
LABEL_62:
          v58 = &qword_1EB3B17F0;
          v59 = &qword_1A9992A00;
          v60 = v70;
          goto LABEL_63;
        }
      }

      v74 = sub_1A99056FC(v57, v96);

      if (v74 & 1) != 0 && (*v39 == *v56 && *(v39 + 8) == *(v56 + 8) || (sub_1A99777E0()))
      {
        v75 = *(v39 + 16);
        v76 = *(v39 + 24);
        v77 = *(v39 + 32);
        v78 = *(v39 + 40);
        v79 = *(v39 + 48);
        v107 = v75;
        v108 = v76;
        v109 = v77;
        v110 = v78;
        v111 = v79;
        v80 = v39;
        v81 = *(v56 + 16);
        v82 = *(v56 + 24);
        v83 = *(v56 + 32);
        v84 = *(v56 + 40);
        goto LABEL_53;
      }

      goto LABEL_58;
    }

    v69 = sub_1A99777E0();

    v57 = v97;
    if (v69)
    {
      goto LABEL_22;
    }

LABEL_56:

    sub_1A98E6488(v56, type metadata accessor for SFAirDrop.DeclineAction);
    sub_1A98E6488(v39, type metadata accessor for SFAirDrop.DeclineAction);
    v58 = &qword_1EB3B17F0;
    v59 = &qword_1A9992A00;
    v60 = v101;
    goto LABEL_63;
  }

  sub_1A97C13A4(v28, v22, &qword_1EB3B17F0, &qword_1A9992A00);
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E48, &qword_1A9994A80) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1A97B06FC(&v22[v31], &qword_1EB3B1E50, &qword_1A9994A88);
    goto LABEL_16;
  }

  v32 = *v22;
  v33 = *v29;
  v34 = v97;
  sub_1A97D8380(&v22[v31], v97, &qword_1EB3B1E50, &qword_1A9994A88);
  v35 = v29 + v31;
  v36 = v96;
  sub_1A97D8380(v35, v96, &qword_1EB3B1E50, &qword_1A9994A88);
  if (v32)
  {
    if (v32 == 1)
    {
      v37 = 0xE700000000000000;
      v38 = 0x65766965636572;
      if (!v33)
      {
LABEL_40:
        v85 = 0xE400000000000000;
        if (v38 != 1684956531)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v37 = 0xE800000000000000;
      v38 = 0x6F666E4965726F6DLL;
      if (!v33)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    v37 = 0xE400000000000000;
    v38 = 1684956531;
    if (!v33)
    {
      goto LABEL_40;
    }
  }

  if (v33 == 1)
  {
    v85 = 0xE700000000000000;
    if (v38 != 0x65766965636572)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v85 = 0xE800000000000000;
    if (v38 != 0x6F666E4965726F6DLL)
    {
LABEL_45:
      v86 = sub_1A99777E0();

      if (v86)
      {
        goto LABEL_46;
      }

      sub_1A97B06FC(v36, &qword_1EB3B1E50, &qword_1A9994A88);
      sub_1A97B06FC(v34, &qword_1EB3B1E50, &qword_1A9994A88);
      v58 = &qword_1EB3B17F0;
      v59 = &qword_1A9992A00;
      goto LABEL_17;
    }
  }

LABEL_43:
  if (v37 != v85)
  {
    goto LABEL_45;
  }

LABEL_46:
  v87 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
  sub_1A97B06FC(v36, &qword_1EB3B1E50, &qword_1A9994A88);
  sub_1A97B06FC(v34, &qword_1EB3B1E50, &qword_1A9994A88);
  sub_1A97B06FC(v28, &qword_1EB3B17F0, &qword_1A9992A00);
  return v87 & 1;
}