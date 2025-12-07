void (*sub_29B0D1D50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void (***a1)(void *, uint64_t), char a2)
{
  v8 = sub_29B0BAF2C(0x28uLL, 19913);
  *a1 = v8;
  v8[4] = sub_29B0D0C60(v8, a2, a3, a4);
  return sub_29B0BA0D0;
}

void sub_29B0D1EE0(void *a1, uint64_t *a2)
{
  v3 = sub_29B0BAF2C(0x28uLL, 36875);
  *a1 = v3;
  sub_29B0D1F5C(v3, *a2);
}

void sub_29B0D1F5C(void *a1, uint64_t a2)
{
  v6 = sub_29B0BAF2C(0x30uLL, 17482);
  *a1 = v6;
  v6[5] = v5;
  v6[4] = a2;
  v2 = sub_29B0DB30C(v5, a2);
  sub_29B0CC3E4(v6, v2);
}

void sub_29B0D2014(void **a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    sub_29B0DB30C(*(v2 + 5), *(v2 + 4));
    sub_29B0CC3E4(v2 + 3, v2);
  }

  sub_29B0CC3E4(v2 + 1, v2);
}

void (*sub_29B0D212C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void (***a1)(void *, uint64_t), char a2)
{
  v8 = sub_29B0BAF2C(0x28uLL, 23825);
  *a1 = v8;
  v8[4] = sub_29B0D0C60(v8, a2, a3, a4);
  return sub_29B0BA0D0;
}

void sub_29B0D2234(void *a1, uint64_t *a2)
{
  v3 = sub_29B0BAF2C(0x28uLL, 15679);
  *a1 = v3;
  sub_29B0D22B0(v3, *a2);
}

void sub_29B0D22B0(void *a1, uint64_t a2)
{
  v6 = sub_29B0BAF2C(0x30uLL, 39408);
  *a1 = v6;
  v6[5] = v5;
  v6[4] = a2;
  v2 = sub_29B0DB30C(v5, a2);
  sub_29B0CC3E4(v6, v2);
}

void (*sub_29B0D2368(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void (***a1)(void *, uint64_t), char a2)
{
  v8 = sub_29B0BAF2C(0x28uLL, 29228);
  *a1 = v8;
  v8[4] = sub_29B0D0C60(v8, a2, a3, a4);
  return sub_29B0BA0D0;
}

float sub_29B0D249C(uint64_t a1, float a2, float a3, float a4, float a5)
{
  v6 = sub_29B0DB0F4(v5, a1);
  result = a2;
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  return result;
}

void (*sub_29B0D24F4(void *a1, uint64_t *a2))(void (***a1)(void *, uint64_t), char a2)
{
  v4 = sub_29B0BAF2C(0x28uLL, 41946);
  *a1 = v4;
  v4[4] = sub_29B0D2570(v4, *a2);
  return sub_29B0BA0D0;
}

uint64_t (*sub_29B0D2570(uint64_t a1, uint64_t a2))()
{
  *(a1 + 8) = v2;
  *a1 = a2;
  v3 = sub_29B0DB0F4(v2, a2);
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *(a1 + 16) = *v3;
  *(a1 + 20) = v4;
  *(a1 + 24) = v5;
  *(a1 + 28) = v6;
  return sub_29B0D2608;
}

float sub_29B0D2608(void *a1, char a2)
{
  if (a2)
  {
    v5 = *(a1 + 4);
    v6 = *(a1 + 5);
    v7 = *(a1 + 6);
    v8 = *(a1 + 7);
    v4 = sub_29B0DB0F4(a1[1], *a1);
    result = v8;
    *v4 = v5;
    *(v4 + 1) = v6;
    *(v4 + 2) = v7;
    v4[3] = v8;
  }

  else
  {
    v9 = *(a1 + 4);
    v10 = *(a1 + 5);
    v11 = *(a1 + 6);
    v12 = *(a1 + 7);
    v2 = sub_29B0DB0F4(a1[1], *a1);
    result = v12;
    *v2 = v9;
    *(v2 + 1) = v10;
    *(v2 + 2) = v11;
    v2[3] = v12;
  }

  return result;
}

void (*sub_29B0D26D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void (***a1)(void *, uint64_t), char a2)
{
  v8 = sub_29B0BAF2C(0x28uLL, 62370);
  *a1 = v8;
  v8[4] = sub_29B0D0C60(v8, a2, a3, a4);
  return sub_29B0BA0D0;
}

uint64_t sub_29B0D27E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_29B0D2814(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_29B0D2814(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  return sub_29B0DADB8(&v4, &v3);
}

void sub_29B0D28B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_29B0DAE04(v2, a2);
  sub_29A58CB08(v5, a1);
  sub_29A5888DC(v3);
  sub_29B0C3BDC(v3, v5);
}

void (*sub_29B0D2918(void *a1, uint64_t *a2))(void (***a1)(void *, uint64_t), char a2)
{
  v4 = sub_29B0BAF2C(0x28uLL, 17876);
  *a1 = v4;
  v4[4] = sub_29B0D2994(v4, *a2);
  return sub_29B0BA0D0;
}

void (*sub_29B0D2994(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v7 = sub_29B0BAF2C(0x90uLL, 4347);
  *a1 = v7;
  v7[17] = v5;
  v7[16] = a2;
  v2 = sub_29B0DAE04(v5, a2);
  sub_29A58CB08(v7, v2);
  return sub_29B0D2A44;
}

void sub_29B0D2A44(uint64_t *a1, char a2)
{
  v6 = *a1;
  if ((a2 & 1) == 0)
  {
    v5 = sub_29B0DAE04(*(v6 + 136), *(v6 + 128));
    sub_29A58CB08(v6 + 96, v6);
    sub_29A5888DC(v5);
    sub_29B0C3BDC(v5, (v6 + 96));
  }

  v2 = *(v6 + 136);
  v3 = *(v6 + 128);
  sub_29A58CB08(v6 + 32, v6);
  v4 = sub_29B0DAE04(v2, v3);
  sub_29A58CB08(v6 + 64, v6 + 32);
  sub_29A5888DC(v4);
  sub_29B0C3BDC(v4, (v6 + 64));
}

void (*sub_29B0D2B38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void (***a1)(void *, uint64_t), char a2)
{
  v8 = sub_29B0BAF2C(0x28uLL, 4465);
  *a1 = v8;
  v8[4] = sub_29B0D0C60(v8, a2, a3, a4);
  return sub_29B0BA0D0;
}

void sub_29B0D2CBC(void *a1, uint64_t *a2)
{
  v3 = sub_29B0BAF2C(0x28uLL, 645);
  *a1 = v3;
  sub_29B0D2D38(v3, *a2);
}

void sub_29B0D2D38(void *a1, uint64_t a2)
{
  v6 = sub_29B0BAF2C(0x90uLL, 29731);
  *a1 = v6;
  v6[17] = v4;
  v6[16] = a2;
  v2 = sub_29B0DAE04(v4, a2);
  sub_29B0CBE80(v6, v2);
}

void sub_29B0D2DE8(void **a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    sub_29B0DAE04(*(v2 + 136), *(v2 + 128));
    sub_29B0CBE80((v2 + 96), v2);
  }

  sub_29B0CBE80((v2 + 32), v2);
}

void (*sub_29B0D2EDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void (***a1)(void *, uint64_t), char a2)
{
  v8 = sub_29B0BAF2C(0x28uLL, 58725);
  *a1 = v8;
  v8[4] = sub_29B0D0C60(v8, a2, a3, a4);
  return sub_29B0BA0D0;
}

uint64_t sub_29B0D2FE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_29B0D3018(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_29B0D3018(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  return sub_29B0DA6D8(&v4, &v3);
}

void sub_29B0D3124(void *a1, uint64_t *a2)
{
  v3 = sub_29B0BAF2C(0x28uLL, 56603);
  *a1 = v3;
  sub_29B0D31A0(v3, *a2);
}

void sub_29B0D31A0(void *a1, uint64_t a2)
{
  v6 = sub_29B0BAF2C(0x230uLL, 10794);
  *a1 = v6;
  v6[69] = v5;
  v6[68] = a2;
  v2 = sub_29B0DABCC(v5, a2);
  sub_29B0CB86C(v6, v2);
}

void sub_29B0D3258(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    sub_29B0DABCC(*(v2 + 552), *(v2 + 544));
    sub_29B0CB86C(v2 + 408, v2);
  }

  sub_29B0CB86C(v2 + 136, v2);
}

void (*sub_29B0D3360(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void (***a1)(void *, uint64_t), char a2)
{
  v8 = sub_29B0BAF2C(0x28uLL, 44017);
  *a1 = v8;
  v8[4] = sub_29B0D0C60(v8, a2, a3, a4);
  return sub_29B0BA0D0;
}

void (*sub_29B0D3468(std::string **a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = sub_29B0BAF2C(0x28uLL, 52867);
  *a1 = v3;
  v3[1].__r_.__value_.__l.__size_ = sub_29B0D34DC(v3, *v1);
  return sub_29B0BA34C;
}

void (*sub_29B0D34DC(std::string *a1, std::string::size_type a2))(std::string *a1)
{
  a1[1].__r_.__value_.__r.__words[0] = a2;
  v2 = sub_29B0BCBCC(&a1[1]);
  std::string::basic_string(a1, v2);
  return sub_29B0D3548;
}

uint64_t sub_29B0D3588@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29B0D35B8(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_29B0D35B8(uint64_t a1)
{
  v2[1] = a1;
  v2[0] = a1;
  sub_29B0DBA6C(v2);
  return v2[0];
}

unint64_t sub_29B0D3668()
{
  v2 = qword_2A14FA9B8;
  if (!qword_2A14FA9B8)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA9B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for std.__1.__wrap_iter_UnsafePointer_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____(uint64_t a1)
{
  v5 = qword_2A14FAF88;
  if (!qword_2A14FAF88)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FAF88);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_29B0D3798()
{
  v2 = qword_2A14FA9C0;
  if (!qword_2A14FA9C0)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA9C0);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0D3818(pxrInternal__aapl__pxrReserved__::TfToken **a1)
{
  v2 = sub_29B0BAF2C(0x28uLL, 5733);
  *a1 = v2;
  sub_29B0D388C(v2, *v1);
}

void sub_29B0D388C(pxrInternal__aapl__pxrReserved__::TfToken *a1, uint64_t a2)
{
  *(a1 + 1) = a2;
  v2 = sub_29B0BCBCC(a1 + 8);
  sub_29B0C1C90(a1, v2);
}

uint64_t sub_29B0D3930@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29B0D3960(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_29B0D3960(uint64_t a1)
{
  v2[1] = a1;
  v2[0] = a1;
  sub_29B0DB438(v2);
  return v2[0];
}

void (*sub_29B0D39E0(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = sub_29B0BAF2C(0x28uLL, 43086);
  *a1 = v3;
  v3[4] = sub_29B0D3A54(v3, *v1);
  return sub_29B0BA34C;
}

uint64_t (*sub_29B0D3A54(void *a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  v2 = sub_29B0BCBCC(a1);
  sub_29B0B975C(a1 + 2, v2);
  return sub_29B0BA42C;
}

void (*sub_29B0D3B00(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v5 = sub_29B0BAF2C(0x38uLL, 40394);
  *a1 = v5;
  v5[6] = sub_29B0D3B80(v5, *v1);
  v5[4] = v2;
  v5[5] = v3;
  return sub_29B0CECA0;
}

void (*sub_29B0D3B80(void *a1, uint64_t a2))()
{
  *a1 = a2;
  sub_29B0BCBCC(a1);
  return sub_29B0BA188;
}

uint64_t sub_29B0D3BD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29B0D3C08(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_29B0D3C08(uint64_t a1)
{
  v2[1] = a1;
  v2[0] = a1;
  sub_29B0DB220(v2);
  return v2[0];
}

void sub_29B0D3C88(void *a1)
{
  v2 = sub_29B0BAF2C(0x28uLL, 51258);
  *a1 = v2;
  sub_29B0D3CFC(v2, *v1);
}

void sub_29B0D3CFC(void *a1, uint64_t a2)
{
  a1[1] = a2;
  v2 = sub_29B0BCBCC((a1 + 1));
  sub_29B0CC3E4(a1, v2);
}

void sub_29B0D3DF0(void *a1)
{
  v2 = sub_29B0BAF2C(0x28uLL, 29244);
  *a1 = v2;
  sub_29B0D3CFC(v2, *v1);
}

void (*sub_29B0D3EAC(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v11 = sub_29B0BAF2C(0x38uLL, 38553);
  *a1 = v11;
  v2 = sub_29B0D3F44(v11, *v1);
  v4 = v3;
  v6 = v5;
  v11[4] = v2;
  v8 = *v7;
  v9 = v7[1];
  *(v11 + 10) = v4;
  *(v11 + 11) = v6;
  *(v11 + 12) = v8;
  *(v11 + 13) = v9;
  return sub_29B0CF800;
}

void (*sub_29B0D3F44(uint64_t a1, uint64_t a2))()
{
  *a1 = a2;
  v2 = sub_29B0BCBCC(a1);
  v3 = *(v2 + 12);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 12) = v3;
  return sub_29B0BA188;
}

void (*sub_29B0D3FF8(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v3 = sub_29B0BAF2C(0x28uLL, 34343);
  *a1 = v3;
  v3[4] = sub_29B0D406C(v3, *v1);
  return sub_29B0BA34C;
}

void (*sub_29B0D406C(void *a1, uint64_t a2))(uint64_t *a1)
{
  v6 = sub_29B0BAF2C(0x28uLL, 44433);
  *a1 = v6;
  v6[4] = a2;
  v2 = sub_29B0BCBCC((v6 + 4));
  sub_29A58CB08(v6, v2);
  return sub_29B0D40FC;
}

void sub_29B0D40FC(uint64_t *a1)
{
  v1 = *a1;
  sub_29A5888DC(*a1);
  free(v1);
}

uint64_t sub_29B0D4148@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29B0D4178(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_29B0D4178(uint64_t a1)
{
  v2[1] = a1;
  v2[0] = a1;
  sub_29B0DAF30(v2);
  return v2[0];
}

void sub_29B0D41F8(void *a1)
{
  v2 = sub_29B0BAF2C(0x28uLL, 58);
  *a1 = v2;
  sub_29B0D426C(v2, *v1);
}

void sub_29B0D426C(void *a1, uint64_t a2)
{
  v5 = sub_29B0BAF2C(0x28uLL, 33191);
  *a1 = v5;
  v5[4] = a2;
  v2 = sub_29B0BCBCC((v5 + 4));
  sub_29B0CBE80(v5, v2);
}

void sub_29B0D42FC(uint64_t *a1)
{
  v1 = *a1;
  sub_29A5B6480(*a1);
  free(v1);
}

void sub_29B0D4390(void *a1)
{
  v2 = sub_29B0BAF2C(0x28uLL, 9247);
  *a1 = v2;
  sub_29B0D4404(v2, *v1);
}

void sub_29B0D4404(void *a1, uint64_t a2)
{
  v5 = sub_29B0BAF2C(0x90uLL, 18660);
  *a1 = v5;
  v5[17] = a2;
  v2 = sub_29B0BCBCC((v5 + 17));
  sub_29B0CB86C(v5, v2);
}

void sub_29B0D449C(uint64_t *a1)
{
  v1 = *a1;
  sub_29B0C5104(*a1);
  free(v1);
}

uint64_t sub_29B0D44E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29B0D4518(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_29B0D4518(uint64_t a1)
{
  v2[1] = a1;
  v2[0] = a1;
  sub_29B0DAD48(v2);
  return v2[0];
}

unint64_t sub_29B0D4610()
{
  v2 = qword_2A14FA9C8;
  if (!qword_2A14FA9C8)
  {
    sub_29B0B7EBC(&qword_2A14FA9A8, "XO)");
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA9C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D46C8()
{
  v2 = qword_2A14FA9D0;
  if (!qword_2A14FA9D0)
  {
    sub_29B0B7EBC(&qword_2A14FA610, &qword_29B7449E0);
    sub_29B0C5E48();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA9D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D4784()
{
  v2 = qword_2A14FA9D8;
  if (!qword_2A14FA9D8)
  {
    sub_29B0B7EBC(&qword_2A14FA9A8, "XO)");
    sub_29B0D481C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA9D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D481C()
{
  v2 = qword_2A14FA9E0;
  if (!qword_2A14FA9E0)
  {
    type metadata accessor for std.__1.vector_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ std.__1.allocator_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA9E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D48B4()
{
  v2 = qword_2A14FA9E8;
  if (!qword_2A14FA9E8)
  {
    type metadata accessor for std.__1.vector_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ std.__1.allocator_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA9E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D494C()
{
  v2 = qword_2A14FA9F0;
  if (!qword_2A14FA9F0)
  {
    sub_29B0B7EBC(&qword_2A14FA9A8, "XO)");
    sub_29B0D49E4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA9F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D49E4()
{
  v2 = qword_2A14FA9F8;
  if (!qword_2A14FA9F8)
  {
    type metadata accessor for std.__1.vector_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ std.__1.allocator_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA9F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D4A7C()
{
  v2 = qword_2A14FAA00;
  if (!qword_2A14FAA00)
  {
    type metadata accessor for std.__1.vector_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ std.__1.allocator_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D4B2C()
{
  v2 = qword_2A14FAA08;
  if (!qword_2A14FAA08)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D4BDC()
{
  v2 = qword_2A14FAA10;
  if (!qword_2A14FAA10)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfToken_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfToken__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D4C74()
{
  v2 = qword_2A14FAA18;
  if (!qword_2A14FAA18)
  {
    sub_29B0B7EBC(&qword_2A14FAA20, &qword_29B745DD8);
    sub_29B0D4D0C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D4D0C()
{
  v2 = qword_2A14FAA28;
  if (!qword_2A14FAA28)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfToken_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfToken__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D4DA4()
{
  v2 = qword_2A14FAA30;
  if (!qword_2A14FAA30)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.TfToken__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA30);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.TfToken__(uint64_t a1)
{
  v5 = qword_2A14FAF80;
  if (!qword_2A14FAF80)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FAF80);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_29B0D4ED4()
{
  v2 = qword_2A14FAA38;
  if (!qword_2A14FAA38)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.TfToken__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D4FB4()
{
  v2 = qword_2A14FAA40;
  if (!qword_2A14FAA40)
  {
    sub_29B0B7EBC(&qword_2A14FAA20, &qword_29B745DD8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D506C()
{
  v2 = qword_2A14FAA48;
  if (!qword_2A14FAA48)
  {
    sub_29B0B7EBC(&qword_2A14FAA20, &qword_29B745DD8);
    sub_29B0D5104();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5104()
{
  v2 = qword_2A14FAA50;
  if (!qword_2A14FAA50)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfToken_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfToken__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D519C()
{
  v2 = qword_2A14FAA58;
  if (!qword_2A14FAA58)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfToken_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfToken__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5234()
{
  v2 = qword_2A14FAA60;
  if (!qword_2A14FAA60)
  {
    sub_29B0B7EBC(&qword_2A14FAA20, &qword_29B745DD8);
    sub_29B0D52CC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D52CC()
{
  v2 = qword_2A14FAA68;
  if (!qword_2A14FAA68)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfToken_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfToken__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5364()
{
  v2 = qword_2A14FAA70;
  if (!qword_2A14FAA70)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfToken_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfToken__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5414()
{
  v2 = qword_2A14FAA78;
  if (!qword_2A14FAA78)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.TfToken__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D54DC()
{
  v2 = qword_2A14FAA80;
  if (!qword_2A14FAA80)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5574()
{
  v2 = qword_2A14FAA88;
  if (!qword_2A14FAA88)
  {
    sub_29B0B7EBC(&qword_2A14FAA90, &qword_29B7461C0);
    sub_29B0D560C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D560C()
{
  v2 = qword_2A14FAA98;
  if (!qword_2A14FAA98)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D56A4()
{
  v2 = qword_2A14FAAA0;
  if (!qword_2A14FAAA0)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfPath__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAAA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfPath__(uint64_t a1)
{
  v5 = qword_2A14FAF78;
  if (!qword_2A14FAF78)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FAF78);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_29B0D57D4()
{
  v2 = qword_2A14FAAA8;
  if (!qword_2A14FAAA8)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfPath__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAAA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D58A8()
{
  v2 = qword_2A14FAAB0;
  if (!qword_2A14FAAB0)
  {
    sub_29B0B7EBC(&qword_2A14FAA90, &qword_29B7461C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAAB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5960()
{
  v2 = qword_2A14FAAB8;
  if (!qword_2A14FAAB8)
  {
    sub_29B0B7EBC(&qword_2A14FAA90, &qword_29B7461C0);
    sub_29B0D59F8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAAB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D59F8()
{
  v2 = qword_2A14FAAC0;
  if (!qword_2A14FAAC0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAAC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5A90()
{
  v2 = qword_2A14FAAC8;
  if (!qword_2A14FAAC8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAAC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5B28()
{
  v2 = qword_2A14FAAD0;
  if (!qword_2A14FAAD0)
  {
    sub_29B0B7EBC(&qword_2A14FAA90, &qword_29B7461C0);
    sub_29B0D5BC0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAAD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5BC0()
{
  v2 = qword_2A14FAAD8;
  if (!qword_2A14FAAD8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAAD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5C58()
{
  v2 = qword_2A14FAAE0;
  if (!qword_2A14FAAE0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAAE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5D08()
{
  v2 = qword_2A14FAAE8;
  if (!qword_2A14FAAE8)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfPath__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAAE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5DB8()
{
  v2 = qword_2A14FAAF0;
  if (!qword_2A14FAAF0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfLayerOffset_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAAF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5E50()
{
  v2 = qword_2A14FAAF8;
  if (!qword_2A14FAAF8)
  {
    sub_29B0B7EBC(&qword_2A14FAB00, &qword_29B7465A8);
    sub_29B0D5EE8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAAF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5EE8()
{
  v2 = qword_2A14FAB08;
  if (!qword_2A14FAB08)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfLayerOffset_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5F80()
{
  v2 = qword_2A14FAB10;
  if (!qword_2A14FAB10)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB10);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__(uint64_t a1)
{
  v5 = qword_2A14FAF70;
  if (!qword_2A14FAF70)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FAF70);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_29B0D60B0()
{
  v2 = qword_2A14FAB18;
  if (!qword_2A14FAB18)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB18);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_29B0D6130(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  return sub_29B0DAD00(&v4, &v3);
}

unint64_t sub_29B0D6198()
{
  v2 = qword_2A14FAB20;
  if (!qword_2A14FAB20)
  {
    sub_29B0B7EBC(&qword_2A14FAB00, &qword_29B7465A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6250()
{
  v2 = qword_2A14FAB28;
  if (!qword_2A14FAB28)
  {
    sub_29B0B7EBC(&qword_2A14FAB00, &qword_29B7465A8);
    sub_29B0D62E8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D62E8()
{
  v2 = qword_2A14FAB30;
  if (!qword_2A14FAB30)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfLayerOffset_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6380()
{
  v2 = qword_2A14FAB38;
  if (!qword_2A14FAB38)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfLayerOffset_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6418()
{
  v2 = qword_2A14FAB40;
  if (!qword_2A14FAB40)
  {
    sub_29B0B7EBC(&qword_2A14FAB00, &qword_29B7465A8);
    sub_29B0D64B0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D64B0()
{
  v2 = qword_2A14FAB48;
  if (!qword_2A14FAB48)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfLayerOffset_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6548()
{
  v2 = qword_2A14FAB50;
  if (!qword_2A14FAB50)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfLayerOffset_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D65F8()
{
  v2 = qword_2A14FAB58;
  if (!qword_2A14FAB58)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D66A8()
{
  v2 = qword_2A14FAB60;
  if (!qword_2A14FAB60)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6740()
{
  v2 = qword_2A14FAB68;
  if (!qword_2A14FAB68)
  {
    sub_29B0B7EBC(&qword_2A14FAB70, &qword_29B746990);
    sub_29B0D67D8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D67D8()
{
  v2 = qword_2A14FAB78;
  if (!qword_2A14FAB78)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6870()
{
  v2 = qword_2A14FAB80;
  if (!qword_2A14FAB80)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB80);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___(uint64_t a1)
{
  v5 = qword_2A14FAF68;
  if (!qword_2A14FAF68)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FAF68);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_29B0D69A0()
{
  v2 = qword_2A14FAB88;
  if (!qword_2A14FAB88)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6A50()
{
  v2 = qword_2A14FAB90;
  if (!qword_2A14FAB90)
  {
    sub_29B0B7EBC(&qword_2A14FAB70, &qword_29B746990);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6B08()
{
  v2 = qword_2A14FAB98;
  if (!qword_2A14FAB98)
  {
    sub_29B0B7EBC(&qword_2A14FAB70, &qword_29B746990);
    sub_29B0D6BA0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6BA0()
{
  v2 = qword_2A14FABA0;
  if (!qword_2A14FABA0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FABA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6C38()
{
  v2 = qword_2A14FABA8;
  if (!qword_2A14FABA8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FABA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6CD0()
{
  v2 = qword_2A14FABB0;
  if (!qword_2A14FABB0)
  {
    sub_29B0B7EBC(&qword_2A14FAB70, &qword_29B746990);
    sub_29B0D6D68();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FABB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6D68()
{
  v2 = qword_2A14FABB8;
  if (!qword_2A14FABB8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FABB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6E00()
{
  v2 = qword_2A14FABC0;
  if (!qword_2A14FABC0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FABC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6EB0()
{
  v2 = qword_2A14FABC8;
  if (!qword_2A14FABC8)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FABC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6F60()
{
  v2 = qword_2A14FABD0;
  if (!qword_2A14FABD0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FABD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6FF8()
{
  v2 = qword_2A14FABD8;
  if (!qword_2A14FABD8)
  {
    sub_29B0B7EBC(&qword_2A14FABE0, &qword_29B746D78);
    sub_29B0D7090();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FABD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7090()
{
  v2 = qword_2A14FABE8;
  if (!qword_2A14FABE8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FABE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7128()
{
  v2 = qword_2A14FABF0;
  if (!qword_2A14FABF0)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FABF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___(uint64_t a1)
{
  v5 = qword_2A14FAF60;
  if (!qword_2A14FAF60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FAF60);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_29B0D7258()
{
  v2 = qword_2A14FABF8;
  if (!qword_2A14FABF8)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FABF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7308()
{
  v2 = qword_2A14FAC00;
  if (!qword_2A14FAC00)
  {
    sub_29B0B7EBC(&qword_2A14FABE0, &qword_29B746D78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D73C0()
{
  v2 = qword_2A14FAC08;
  if (!qword_2A14FAC08)
  {
    sub_29B0B7EBC(&qword_2A14FABE0, &qword_29B746D78);
    sub_29B0D7458();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7458()
{
  v2 = qword_2A14FAC10;
  if (!qword_2A14FAC10)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D74F0()
{
  v2 = qword_2A14FAC18;
  if (!qword_2A14FAC18)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7588()
{
  v2 = qword_2A14FAC20;
  if (!qword_2A14FAC20)
  {
    sub_29B0B7EBC(&qword_2A14FABE0, &qword_29B746D78);
    sub_29B0D7620();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7620()
{
  v2 = qword_2A14FAC28;
  if (!qword_2A14FAC28)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D76B8()
{
  v2 = qword_2A14FAC30;
  if (!qword_2A14FAC30)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7768()
{
  v2 = qword_2A14FAC38;
  if (!qword_2A14FAC38)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7818()
{
  v2 = qword_2A14FAC40;
  if (!qword_2A14FAC40)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfVec4f_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfVec4f__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D78B0()
{
  v2 = qword_2A14FAC48;
  if (!qword_2A14FAC48)
  {
    sub_29B0B7EBC(&qword_2A14FAC50, &qword_29B747160);
    sub_29B0D7948();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7948()
{
  v2 = qword_2A14FAC58;
  if (!qword_2A14FAC58)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfVec4f_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfVec4f__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D79E0()
{
  v2 = qword_2A14FAC60;
  if (!qword_2A14FAC60)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.GfVec4f__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC60);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.GfVec4f__(uint64_t a1)
{
  v5 = qword_2A14FAF58;
  if (!qword_2A14FAF58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FAF58);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_29B0D7B10()
{
  v2 = qword_2A14FAC68;
  if (!qword_2A14FAC68)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.GfVec4f__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7BC0()
{
  v2 = qword_2A14FAC70;
  if (!qword_2A14FAC70)
  {
    sub_29B0B7EBC(&qword_2A14FAC50, &qword_29B747160);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7C78()
{
  v2 = qword_2A14FAC78;
  if (!qword_2A14FAC78)
  {
    sub_29B0B7EBC(&qword_2A14FAC50, &qword_29B747160);
    sub_29B0D7D10();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7D10()
{
  v2 = qword_2A14FAC80;
  if (!qword_2A14FAC80)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfVec4f_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfVec4f__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7DA8()
{
  v2 = qword_2A14FAC88;
  if (!qword_2A14FAC88)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfVec4f_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfVec4f__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7E40()
{
  v2 = qword_2A14FAC90;
  if (!qword_2A14FAC90)
  {
    sub_29B0B7EBC(&qword_2A14FAC50, &qword_29B747160);
    sub_29B0D7ED8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7ED8()
{
  v2 = qword_2A14FAC98;
  if (!qword_2A14FAC98)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfVec4f_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfVec4f__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7F70()
{
  v2 = qword_2A14FACA0;
  if (!qword_2A14FACA0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfVec4f_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfVec4f__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FACA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8020()
{
  v2 = qword_2A14FACA8;
  if (!qword_2A14FACA8)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.GfVec4f__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FACA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D80D0()
{
  v2 = qword_2A14FACB0;
  if (!qword_2A14FACB0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdAttribute_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdAttribute__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FACB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8168()
{
  v2 = qword_2A14FACB8;
  if (!qword_2A14FACB8)
  {
    sub_29B0B7EBC(&qword_2A14FACC0, &qword_29B747548);
    sub_29B0D8200();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FACB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8200()
{
  v2 = qword_2A14FACC8;
  if (!qword_2A14FACC8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdAttribute_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdAttribute__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FACC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8298()
{
  v2 = qword_2A14FACD0;
  if (!qword_2A14FACD0)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.UsdAttribute__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FACD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.UsdAttribute__(uint64_t a1)
{
  v5 = qword_2A14FAF50;
  if (!qword_2A14FAF50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FAF50);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_29B0D83C8()
{
  v2 = qword_2A14FACD8;
  if (!qword_2A14FACD8)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.UsdAttribute__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FACD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8478()
{
  v2 = qword_2A14FACE0;
  if (!qword_2A14FACE0)
  {
    sub_29B0B7EBC(&qword_2A14FACC0, &qword_29B747548);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FACE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8530()
{
  v2 = qword_2A14FACE8;
  if (!qword_2A14FACE8)
  {
    sub_29B0B7EBC(&qword_2A14FACC0, &qword_29B747548);
    sub_29B0D85C8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FACE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D85C8()
{
  v2 = qword_2A14FACF0;
  if (!qword_2A14FACF0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdAttribute_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdAttribute__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FACF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8660()
{
  v2 = qword_2A14FACF8;
  if (!qword_2A14FACF8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdAttribute_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdAttribute__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FACF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D86F8()
{
  v2 = qword_2A14FAD00;
  if (!qword_2A14FAD00)
  {
    sub_29B0B7EBC(&qword_2A14FACC0, &qword_29B747548);
    sub_29B0D8790();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8790()
{
  v2 = qword_2A14FAD08;
  if (!qword_2A14FAD08)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdAttribute_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdAttribute__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8828()
{
  v2 = qword_2A14FAD10;
  if (!qword_2A14FAD10)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdAttribute_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdAttribute__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D88D8()
{
  v2 = qword_2A14FAD18;
  if (!qword_2A14FAD18)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.UsdAttribute__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8988()
{
  v2 = qword_2A14FAD20;
  if (!qword_2A14FAD20)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdRelationship_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdRelationship__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8A20()
{
  v2 = qword_2A14FAD28;
  if (!qword_2A14FAD28)
  {
    sub_29B0B7EBC(&qword_2A14FAD30, &qword_29B747930);
    sub_29B0D8AB8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8AB8()
{
  v2 = qword_2A14FAD38;
  if (!qword_2A14FAD38)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdRelationship_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdRelationship__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8B50()
{
  v2 = qword_2A14FAD40;
  if (!qword_2A14FAD40)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.UsdRelationship__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD40);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.UsdRelationship__(uint64_t a1)
{
  v5 = qword_2A14FAF48;
  if (!qword_2A14FAF48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FAF48);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_29B0D8C80()
{
  v2 = qword_2A14FAD48;
  if (!qword_2A14FAD48)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.UsdRelationship__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8D30()
{
  v2 = qword_2A14FAD50;
  if (!qword_2A14FAD50)
  {
    sub_29B0B7EBC(&qword_2A14FAD30, &qword_29B747930);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8DE8()
{
  v2 = qword_2A14FAD58;
  if (!qword_2A14FAD58)
  {
    sub_29B0B7EBC(&qword_2A14FAD30, &qword_29B747930);
    sub_29B0D8E80();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8E80()
{
  v2 = qword_2A14FAD60;
  if (!qword_2A14FAD60)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdRelationship_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdRelationship__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8F18()
{
  v2 = qword_2A14FAD68;
  if (!qword_2A14FAD68)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdRelationship_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdRelationship__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8FB0()
{
  v2 = qword_2A14FAD70;
  if (!qword_2A14FAD70)
  {
    sub_29B0B7EBC(&qword_2A14FAD30, &qword_29B747930);
    sub_29B0D9048();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9048()
{
  v2 = qword_2A14FAD78;
  if (!qword_2A14FAD78)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdRelationship_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdRelationship__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D90E0()
{
  v2 = qword_2A14FAD80;
  if (!qword_2A14FAD80)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdRelationship_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdRelationship__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9190()
{
  v2 = qword_2A14FAD88;
  if (!qword_2A14FAD88)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.UsdRelationship__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9240()
{
  v2 = qword_2A14FAD90;
  if (!qword_2A14FAD90)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D92D8()
{
  v2 = qword_2A14FAD98;
  if (!qword_2A14FAD98)
  {
    sub_29B0B7EBC(&qword_2A14FADA0, &qword_29B747D18);
    sub_29B0D9370();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9370()
{
  v2 = qword_2A14FADA8;
  if (!qword_2A14FADA8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FADA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9408()
{
  v2 = qword_2A14FADB0;
  if (!qword_2A14FADB0)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FADB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__(uint64_t a1)
{
  v5 = qword_2A14FAF40;
  if (!qword_2A14FAF40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FAF40);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_29B0D9538()
{
  v2 = qword_2A14FADB8;
  if (!qword_2A14FADB8)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FADB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D95E8()
{
  v2 = qword_2A14FADC0;
  if (!qword_2A14FADC0)
  {
    sub_29B0B7EBC(&qword_2A14FADA0, &qword_29B747D18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FADC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D96A0()
{
  v2 = qword_2A14FADC8;
  if (!qword_2A14FADC8)
  {
    sub_29B0B7EBC(&qword_2A14FADA0, &qword_29B747D18);
    sub_29B0D9738();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FADC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9738()
{
  v2 = qword_2A14FADD0;
  if (!qword_2A14FADD0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FADD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D97D0()
{
  v2 = qword_2A14FADD8;
  if (!qword_2A14FADD8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FADD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9868()
{
  v2 = qword_2A14FADE0;
  if (!qword_2A14FADE0)
  {
    sub_29B0B7EBC(&qword_2A14FADA0, &qword_29B747D18);
    sub_29B0D9900();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FADE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9900()
{
  v2 = qword_2A14FADE8;
  if (!qword_2A14FADE8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FADE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9998()
{
  v2 = qword_2A14FADF0;
  if (!qword_2A14FADF0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FADF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9A48()
{
  v2 = qword_2A14FADF8;
  if (!qword_2A14FADF8)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FADF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9AF8()
{
  v2 = qword_2A14FAE00;
  if (!qword_2A14FAE00)
  {
    sub_29B0B7EBC(&qword_2A14FAE08, &qword_29B748100);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAE00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9B98()
{
  v2 = qword_2A14FAE10;
  if (!qword_2A14FAE10)
  {
    sub_29B0B7EBC(&qword_2A14FAE18, &qword_29B7481A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAE10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9C38()
{
  v2 = qword_2A14FAE20;
  if (!qword_2A14FAE20)
  {
    sub_29B0B7EBC(&qword_2A14FAE28, &qword_29B748240);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAE20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9CD8()
{
  v2 = qword_2A14FAE30;
  if (!qword_2A14FAE30)
  {
    sub_29B0B7EBC(&qword_2A14FAE38, &qword_29B7482E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAE30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9D78()
{
  v2 = qword_2A14FAE40;
  if (!qword_2A14FAE40)
  {
    sub_29B0B7EBC(&qword_2A14FAE48, &qword_29B748380);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAE40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9E18()
{
  v2 = qword_2A14FAE50;
  if (!qword_2A14FAE50)
  {
    sub_29B0B7EBC(&qword_2A14FAE58, &qword_29B748420);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAE50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9EB8()
{
  v2 = qword_2A14FAE60;
  if (!qword_2A14FAE60)
  {
    sub_29B0B7EBC(&qword_2A14FAE68, &qword_29B7484C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAE60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9F58()
{
  v2 = qword_2A14FAE70;
  if (!qword_2A14FAE70)
  {
    sub_29B0B7EBC(&qword_2A14FAE78, &qword_29B748560);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAE70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9FF8()
{
  v2 = qword_2A14FAE80;
  if (!qword_2A14FAE80)
  {
    sub_29B0B7EBC(&qword_2A14FAE88, &qword_29B748600);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAE80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DA098()
{
  v2 = qword_2A14FAE90;
  if (!qword_2A14FAE90)
  {
    sub_29B0B7EBC(&qword_2A14FAE98, &qword_29B7486A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAE90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DA120()
{
  v2 = qword_2A14FAEA0;
  if (!qword_2A14FAEA0)
  {
    type metadata accessor for std.__1.vector_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ std.__1.allocator_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAEA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DA1A0()
{
  v2 = qword_2A14FAEA8;
  if (!qword_2A14FAEA8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfToken_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfToken__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAEA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DA220()
{
  v2 = qword_2A14FAEB0;
  if (!qword_2A14FAEB0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAEB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DA2A0()
{
  v2 = qword_2A14FAEB8;
  if (!qword_2A14FAEB8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfLayerOffset_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAEB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DA320()
{
  v2 = qword_2A14FAEC0;
  if (!qword_2A14FAEC0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAEC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DA3A0()
{
  v2 = qword_2A14FAEC8;
  if (!qword_2A14FAEC8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAEC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DA420()
{
  v2 = qword_2A14FAED0;
  if (!qword_2A14FAED0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfVec4f_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfVec4f__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAED0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DA4A0()
{
  v2 = qword_2A14FAED8;
  if (!qword_2A14FAED8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdAttribute_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdAttribute__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAED8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DA520()
{
  v2 = qword_2A14FAEE0;
  if (!qword_2A14FAEE0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdRelationship_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdRelationship__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAEE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DA5A0()
{
  v2 = qword_2A14FAEE8;
  if (!qword_2A14FAEE8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAEE8);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0DA674(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_29B088180(a1);
}

uint64_t sub_29B0DA724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(a3 - 8) + 16);
  v8();
  (v8)(a2 + *(a4 + 36), a1 + *(a4 + 36), a3);
  return a2;
}

uint64_t sub_29B0DA7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a3 - 8) + 16);
  v7();
  (v7)(a2 + *(a5 + 36), a1 + *(a5 + 36), a3);
  (*(*(a4 - 8) + 16))(a2 + *(a5 + 40), a1 + *(a5 + 40));
  return a2;
}

uint64_t sub_29B0DA8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(a3 - 8) + 32);
  v8();
  (v8)(a2 + *(a4 + 36), a1 + *(a4 + 36), a3);
  return a2;
}

uint64_t sub_29B0DA948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a2 - 8) + 8);
  v6();
  (v6)(a1 + *(a3 + 36), a2);
  return a1;
}

uint64_t sub_29B0DA9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a2 - 8) + 8);
  v6();
  (v6)(a1 + *(a4 + 36), a2);
  (*(*(a3 - 8) + 8))(a1 + *(a4 + 40));
  return a1;
}

uint64_t sub_29B0DAA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(a3 - 8) + 16);
  v8();
  (v8)(a2 + *(a4 + 48), a1 + *(a4 + 48), a3);
  return a2;
}

uint64_t sub_29B0DAB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(a3 - 8) + 32);
  v8();
  (v8)(a2 + *(a4 + 48), a1 + *(a4 + 48), a3);
  return a2;
}

unint64_t sub_29B0DAC80()
{
  v2 = qword_2A14FAEF0;
  if (!qword_2A14FAEF0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAEF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DAEB0()
{
  v2 = qword_2A14FAEF8;
  if (!qword_2A14FAEF8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdRelationship_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdRelationship__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAEF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DAFD8()
{
  v2 = qword_2A14FAF00;
  if (!qword_2A14FAF00)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdAttribute_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdAttribute__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAF00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DB1A0()
{
  v2 = qword_2A14FAF08;
  if (!qword_2A14FAF08)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfVec4f_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfVec4f__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAF08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DB3B8()
{
  v2 = qword_2A14FAF10;
  if (!qword_2A14FAF10)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAF10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DB510()
{
  v2 = qword_2A14FAF18;
  if (!qword_2A14FAF18)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAF18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DB618()
{
  v2 = qword_2A14FAF20;
  if (!qword_2A14FAF20)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfLayerOffset_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAF20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DB720()
{
  v2 = qword_2A14FAF28;
  if (!qword_2A14FAF28)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAF28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DB828()
{
  v2 = qword_2A14FAF30;
  if (!qword_2A14FAF30)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfToken_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfToken__(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAF30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_29B0DB900(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  return sub_29B0E481C(&v4, &v3);
}

unint64_t sub_29B0DB9EC()
{
  v2 = qword_2A14FAF38;
  if (!qword_2A14FAF38)
  {
    type metadata accessor for std.__1.vector_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ std.__1.allocator_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAF38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_29B0DBAB8(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::UsdAttributeQuery>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::UsdAttributeQuery>,(std::__variant_detail::_Trait)1> const&>(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v5 = a2;
  sub_29A754560(a1);
  result = sub_29B0C5854(v5);
  if ((result & 1) == 0)
  {
    v4 = sub_29B0C5884(v5);
    v3 = v6;
    result = sub_29B0DBD98(v4, &v3, v5);
    *(v6 + 120) = v4;
  }

  return result;
}

uint64_t sub_29B0DBD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = xmmword_2A20B6098;
  v5 = *sub_29B0DBE84(&v7, a1);
  v6 = v9;
  sub_29B088388();
  return v5(v6, v3);
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::UsdAttributeQuery>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::UsdAttributeQuery>,(std::__variant_detail::_Trait)1>>(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v5 = a2;
  sub_29A754560(a1);
  result = sub_29B0C5854(v5);
  if ((result & 1) == 0)
  {
    v4 = sub_29B0C5884(v5);
    v3 = v6;
    result = sub_29B0DC468(v4, &v3, v5);
    *(v6 + 120) = v4;
  }

  return result;
}

uint64_t sub_29B0DC468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = xmmword_2A20B60A8;
  v5 = *sub_29B0DBE84(&v7, a1);
  v6 = v9;
  sub_29B088388();
  return v5(v6, v3);
}

void **sub_29B0DC8D4(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A7544DC(v3);
  return a1;
}

void sub_29B0DC9A0(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp*,pxrInternal__aapl__pxrReserved__::UsdGeomXformOp*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A754AB4(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__construct_at_end<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp*,pxrInternal__aapl__pxrReserved__::UsdGeomXformOp*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B0DCBCC(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__construct_at_end<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp*,pxrInternal__aapl__pxrReserved__::UsdGeomXformOp*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DCDD0(&v6, a1, a4);
  v7 = sub_29B0DCE10(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B0DCC34(uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = 0;
  return result;
}

void *sub_29B0DCD28(void *a1, void *a2)
{
  if (sub_29B0DCD80(&v6, a2, a1))
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_29B0DCE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29A754AFC(a1, v9, v8, v5);
  return sub_29B0DCF74(a4, v6);
}

void *sub_29B0DCEC4(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 136 * a3;
  return result;
}

uint64_t sub_29B0DCF10(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  sub_29B0C0D80(a1);
  v6 = v2;
  sub_29B0C0D80(v7);
  v5 = v3;
  return sub_29B0DCFB4(&v6, &v5);
}

void *sub_29B0DD030(void *result, void *a2, void *a3)
{
  *result = *a2;
  result[1] = *a3;
  return result;
}

uint64_t sub_29B0DD14C(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A7544DC(a1);
  }

  return a1;
}

void *sub_29B0DD198(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  a2[2] = 0;
  a2[1] = 0;
  *a2 = 0;
  return result;
}

void **sub_29B0DD230(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A5BBBBC(v3);
  return a1;
}

void sub_29B0DD2D0(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdRelationship>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdRelationship>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdRelationship>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdRelationship>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdRelationship*,pxrInternal__aapl__pxrReserved__::UsdRelationship*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29B0DD410(a1, v8);
  }

  sub_29B0DCBB0(v7);
  return sub_29B0DD52C(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__construct_at_end<pxrInternal__aapl__pxrReserved__::UsdRelationship*,pxrInternal__aapl__pxrReserved__::UsdRelationship*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DD5F8(&v6, a1, a4);
  v7 = sub_29B0DD638(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B0DD638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B0DD700(a1, v9, v8, v5);
  return sub_29B0DD7F4(a4, v6);
}

void *sub_29B0DD6BC(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 32 * a3;
  return result;
}

uint64_t sub_29B0DD700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(v6, a1, &v8, &v9);
  sub_29B0DD834(v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdRelationship>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::UsdRelationship&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B0DD920(v7);
  return v5;
}

__n128 *sub_29B0DD834@<X0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v6 = a2;
  v5 = a1;
  v3 = *a1;
  v4 = a1[1].n128_u64[0];
  return sub_29B0DD950(a2, &v3);
}

__n128 sub_29B0DD988(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  a1[1].n128_u8[8] = 0;
  return result;
}

void *sub_29B0DD9B8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  return result;
}

uint64_t sub_29B0DDA78(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A5BBBBC(a1);
  }

  return a1;
}

void **sub_29B0DDAC4(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A5BB908(v3);
  return a1;
}

void sub_29B0DDB3C(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdAttribute>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdAttribute>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdAttribute>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdAttribute>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdAttribute*,pxrInternal__aapl__pxrReserved__::UsdAttribute*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A15A71C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__construct_at_end<pxrInternal__aapl__pxrReserved__::UsdAttribute*,pxrInternal__aapl__pxrReserved__::UsdAttribute*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B0DDD08(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__construct_at_end<pxrInternal__aapl__pxrReserved__::UsdAttribute*,pxrInternal__aapl__pxrReserved__::UsdAttribute*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DD5F8(&v6, a1, a4);
  v7 = sub_29B0DDDC0(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B0DDDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B0DDE44(a1, v9, v8, v5);
  return sub_29B0DDF38(a4, v6);
}

uint64_t sub_29B0DDE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(v6, a1, &v8, &v9);
  sub_29B0DD834(v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdAttribute>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::UsdAttribute&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B0DDFB0(v7);
  return v5;
}

uint64_t sub_29B0DE014(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A5BB908(a1);
  }

  return a1;
}

uint64_t *sub_29B0DE060(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B0DE0A8(v3);
  return a1;
}

void sub_29B0DE0A8(uint64_t **result)
{
  if (**result)
  {
    sub_29B0DE12C(*result);
    sub_29B08850C();
    v3 = *result;
    v2 = **result;
    v1 = sub_29B0DE1B0(*result);
    sub_29B0DE178(v3, v2, v1);
  }
}

void sub_29B0DE12C(uint64_t *a1)
{
  sub_29B0DB058(a1);
  sub_29B0DE1D8(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B0DE1D8(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4f>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4f,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4f>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4f,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B0DE2C0(void *a1, uint64_t a2, unint64_t a3)
{
  if (sub_29B0886D8(a3))
  {
    sub_29B0886F4(a1, a3);
  }

  else
  {
    sub_29B088724(a1);
  }
}

void sub_29B0DE328(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4f>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4f>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4f>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4f>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::GfVec4f>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4f*,pxrInternal__aapl__pxrReserved__::GfVec4f*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A0D0518(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::GfVec4f>::__construct_at_end<pxrInternal__aapl__pxrReserved__::GfVec4f*,pxrInternal__aapl__pxrReserved__::GfVec4f*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B0DE4F4(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::GfVec4f>::__construct_at_end<pxrInternal__aapl__pxrReserved__::GfVec4f*,pxrInternal__aapl__pxrReserved__::GfVec4f*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DE5C0(&v6, a1, a4);
  v7 = sub_29B0DE600(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B0DE600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B0DE6C8(a1, v9, v8, v5);
  return sub_29B0DE704(a4, v6);
}

void *sub_29B0DE684(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 16 * a3;
  return result;
}

uint64_t sub_29B0DE7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80(v15);
  v11 = sub_29B0DE888(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B0DE8D4(v17, v11);
  v8 = sub_29B0DE704(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B0DE904(const void *a1, uint64_t a2, char *a3)
{
  v7[1] = a1;
  v7[0] = a2;
  v6 = a3;
  v5 = (a2 - a1) / 16;
  sub_29B0DE988(a3, a1, v5);
  v4 = &v6[16 * v5];
  return sub_29B0DCFB4(v7, &v4);
}

void *sub_29B0DE988(void *a1, const void *a2, uint64_t a3)
{
  if (a3)
  {
    memmove(a1, a2, 16 * (a3 - 1) + 16);
  }

  return a1;
}

uint64_t sub_29B0DEA40(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B0DE0A8(a1);
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__ **pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::Sdf_Identity>::_IncrementIfValid(pxrInternal__aapl__pxrReserved__ **result, pxrInternal__aapl__pxrReserved__::Sdf_Identity *a2)
{
  if (*result)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountIncrement();
  }

  return result;
}

void **sub_29B0DECA4(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A1F19E8(v3);
  return a1;
}

void sub_29B0DED70(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>*,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29B0DEEB0(a1, v8);
  }

  sub_29B0DCBB0(v7);
  return sub_29B0DEFCC(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>*,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DF098(&v6, a1, a4);
  v7 = sub_29B0DF0D8(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B0DF0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B0DF1A0(a1, v9, v8, v5);
  return sub_29B0DF294(a4, v6);
}

void *sub_29B0DF15C(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 8 * a3;
  return result;
}

uint64_t sub_29B0DF1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(v6, a1, &v8, &v9);
  sub_29B0DD834(v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B0DF30C(v7);
  return v5;
}

uint64_t sub_29B0DF370(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29B0DF3C4(a1);
  }

  return a1;
}

BOOL sub_29B0DF3C4(uint64_t *a1)
{
  v5[2] = a1;
  v3 = *a1;
  sub_29B0DF4A4(v5, *a1[2]);
  sub_29B0DF4A4(v4, *a1[1]);
  return sub_29B0DF430(v3, v5[0], v5[1], v4[0], v4[1]);
}

BOOL sub_29B0DF430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v6[0] = a4;
  v6[1] = a5;
  result = sub_29B0DF4DC(v7, v6);
  if (result)
  {
    sub_29B0DF524(v7);
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>,0>();
  }

  return result;
}

void *sub_29B0DF5F8(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = a2;
  return result;
}

uint64_t sub_29B0DF674(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A1F19E8(a1);
  }

  return a1;
}

void **sub_29B0DF6C0(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A1F19E8(v3);
  return a1;
}

void sub_29B0DF738(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>*,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A00C968(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>*,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B0DEFCC(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>*,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DF098(&v6, a1, a4);
  v7 = sub_29B0DF98C(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B0DF98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B0DFA10(a1, v9, v8, v5);
  return sub_29B0DFB04(a4, v6);
}

uint64_t sub_29B0DFA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(v6, a1, &v8, &v9);
  sub_29B0DD834(v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B0DFB7C(v7);
  return v5;
}

uint64_t sub_29B0DFBE0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29B0DFC34(a1);
  }

  return a1;
}

BOOL sub_29B0DFC34(uint64_t *a1)
{
  v5[2] = a1;
  v3 = *a1;
  sub_29B0DF4A4(v5, *a1[2]);
  sub_29B0DF4A4(v4, *a1[1]);
  return sub_29B0DFCA0(v3, v5[0], v5[1], v4[0], v4[1]);
}

BOOL sub_29B0DFCA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v6[0] = a4;
  v6[1] = a5;
  result = sub_29B0DF4DC(v7, v6);
  if (result)
  {
    sub_29B0DFD14(v7);
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>,0>();
  }

  return result;
}

uint64_t *sub_29B0DFD78(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B0DFDC0(v3);
  return a1;
}

void sub_29B0DFDC0(uint64_t **result)
{
  if (**result)
  {
    sub_29B0DFE44(*result);
    sub_29B08850C();
    v3 = *result;
    v2 = **result;
    v1 = sub_29B0DE1B0(*result);
    sub_29B0DFE90(v3, v2, v1);
  }
}

void sub_29B0DFE44(uint64_t *a1)
{
  sub_29B0DB058(a1);
  sub_29B0DFEC8(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B0DFEC8(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B0DFFB0(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset*,pxrInternal__aapl__pxrReserved__::SdfLayerOffset*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A0D0518(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfLayerOffset*,pxrInternal__aapl__pxrReserved__::SdfLayerOffset*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B0E017C(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfLayerOffset*,pxrInternal__aapl__pxrReserved__::SdfLayerOffset*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DE5C0(&v6, a1, a4);
  v7 = sub_29B0E0234(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B0E0234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B0E02B8(a1, v9, v8, v5);
  return sub_29B0E02F4(a4, v6);
}

uint64_t sub_29B0E03C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80(v15);
  v11 = sub_29B0DE888(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B0E0478(v17, v11);
  v8 = sub_29B0E02F4(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B0E04A8(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B0DFDC0(a1);
  }

  return a1;
}

void sub_29B0E0524(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A00C968(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B0E06F0(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DF098(&v6, a1, a4);
  v7 = sub_29B0E07A8(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B0E07A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29A1E2158(a1, v9, v8, v5);
  return sub_29B0E082C(a4, v6);
}

uint64_t sub_29B0E08D8(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A1E234C(a1);
  }

  return a1;
}

void sub_29B0E0980(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A00C968(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__construct_at_end<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B0E0B4C(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__construct_at_end<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DF098(&v6, a1, a4);
  v7 = sub_29B0E0C04(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B0E0C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29B0E0C88(a1, v9, v8, v5);
  return sub_29B0E0D7C(a4, v6);
}

uint64_t sub_29B0E0C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(v6, a1, &v8, &v9);
  sub_29B0DD834(v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B0E0DF4(v7);
  return v5;
}

uint64_t sub_29B0E0E58(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29B0E0EAC(a1);
  }

  return a1;
}

BOOL sub_29B0E0EAC(uint64_t *a1)
{
  v5[2] = a1;
  v3 = *a1;
  sub_29B0DF4A4(v5, *a1[2]);
  sub_29B0DF4A4(v4, *a1[1]);
  return sub_29B0E0F18(v3, v5[0], v5[1], v4[0], v4[1]);
}

BOOL sub_29B0E0F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v6[0] = a4;
  v6[1] = a5;
  result = sub_29B0DF4DC(v7, v6);
  if (result)
  {
    sub_29B0E0F8C(v7);
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken,0>();
  }

  return result;
}

uint64_t sub_29B0E0FF0(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A124AB0(a1);
  }

  return a1;
}

void sub_29B0E10C0(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<std::string>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::string>,void,0>();
}

void std::allocator_traits<std::allocator<std::string>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::string>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A012BFC(a1, v8);
    std::vector<std::string>::__construct_at_end<std::string*,std::string*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B0E128C(v7);
}

void *std::vector<std::string>::__construct_at_end<std::string*,std::string*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0E135C(&v6, a1, a4);
  v7 = sub_29B0E139C(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B0E139C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80(a4);
  v6 = sub_29A09601C(a1, v9, v8, v5);
  return sub_29B0E146C(a4, v6);
}

void *sub_29B0E1420(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 24 * a3;
  return result;
}

uint64_t sub_29B0E1574(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A012C90(a1);
  }

  return a1;
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::emplace_back<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp const&>();
  }

  std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp const&>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp const&>(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[3] = a2;
  sub_29B0DCDD0(v2, a1, 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp,pxrInternal__aapl__pxrReserved__::UsdGeomXformOp const&,0>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp const&>(void *a1, uint64_t a2)
{
  v5 = a1;
  v4 = a2;
  v2 = sub_29B0DA64C(a1);
  sub_29B0E1814(a1, v2 + 1);
}

void sub_29B0E1908(uint64_t *a1, uint64_t *a2)
{
  sub_29B08850C();
  v8 = a2[1] - 136 * ((a1[1] - *a1) / 136);
  sub_29B088388();
  v5 = v2;
  sub_29B088388();
  v6 = v3;
  sub_29B088388();
  sub_29A7B9D50(a1, v5, v6, v4);
  a2[1] = v8;
  a1[1] = *a1;
  sub_29B0E1B90(a1, a2 + 1);
  sub_29B0E1B90(a1 + 1, a2 + 2);
  sub_29B0E1B90(a1 + 2, a2 + 3);
  *a2 = a2[1];
  sub_29B0DA64C(a1);
  sub_29B088624();
}

void *sub_29B0E1A70(void *a1, void *a2)
{
  if (sub_29B0DCD80(&v6, a1, a2))
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

void **sub_29B0E1AC8(void **a1, unint64_t a2, uint64_t a3, void *a4)
{
  v9 = a2;
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    *a1 = sub_29A58E664(a1[4], a2);
    v9 = v4;
  }

  else
  {
    *a1 = 0;
  }

  v5 = *a1 + 136 * a3;
  a1[2] = v5;
  a1[1] = v5;
  a1[3] = *a1 + 136 * v9;
  return a1;
}

uint64_t *sub_29B0E1B90(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  return result;
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp*,0>()
{
  ;
}

{
    ;
  }
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::emplace_back<pxrInternal__aapl__pxrReserved__::UsdRelationship const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdRelationship const&>();
  }

  std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::UsdRelationship const&>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdRelationship const&>(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[3] = a2;
  sub_29B0DD5F8(v2, a1, 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdRelationship>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::UsdRelationship const&,0>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::UsdRelationship const&>(void *a1, uint64_t a2)
{
  v5 = a1;
  v4 = a2;
  v2 = sub_29B0DAD68(a1);
  sub_29B0E1ED4(a1, v2 + 1);
}

void sub_29B0E1FC8(uint64_t *a1, uint64_t *a2)
{
  sub_29B08850C();
  v8 = a2[1] + 32 * ((a1[1] - *a1) / -32);
  sub_29B088388();
  v5 = v2;
  sub_29B088388();
  v6 = v3;
  sub_29B088388();
  sub_29A5BBCB4(a1, v5, v6, v4);
  a2[1] = v8;
  a1[1] = *a1;
  sub_29B0E1B90(a1, a2 + 1);
  sub_29B0E1B90(a1 + 1, a2 + 2);
  sub_29B0E1B90(a1 + 2, a2 + 3);
  *a2 = a2[1];
  sub_29B0DAD68(a1);
  sub_29B088624();
}

void **sub_29B0E2100(void **a1, unint64_t a2, uint64_t a3, void *a4)
{
  v9 = a2;
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    *a1 = sub_29A10CB10(a1[4], a2);
    v9 = v4;
  }

  else
  {
    *a1 = 0;
  }

  v5 = *a1 + 32 * a3;
  a1[2] = v5;
  a1[1] = v5;
  a1[3] = *a1 + 32 * v9;
  return a1;
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdRelationship*,0>()
{
  ;
}

{
    ;
  }
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::emplace_back<pxrInternal__aapl__pxrReserved__::UsdAttribute const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdAttribute const&>();
  }

  std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::UsdAttribute const&>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdAttribute const&>(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[3] = a2;
  sub_29B0DD5F8(v2, a1, 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdAttribute>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::UsdAttribute const&,0>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::UsdAttribute const&>(void *a1, uint64_t a2)
{
  v5 = a1;
  v4 = a2;
  v2 = sub_29B0DAD68(a1);
  sub_29B0E2490(a1, v2 + 1);
}

void sub_29B0E253C(uint64_t *a1, uint64_t *a2)
{
  sub_29B08850C();
  v8 = a2[1] + 32 * ((a1[1] - *a1) / -32);
  sub_29B088388();
  v5 = v2;
  sub_29B088388();
  v6 = v3;
  sub_29B088388();
  sub_29A5BBA00(a1, v5, v6, v4);
  a2[1] = v8;
  a1[1] = *a1;
  sub_29B0E1B90(a1, a2 + 1);
  sub_29B0E1B90(a1 + 1, a2 + 2);
  sub_29B0E1B90(a1 + 2, a2 + 3);
  *a2 = a2[1];
  sub_29B0DAD68(a1);
  sub_29B088624();
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdAttribute*,0>()
{
  ;
}

{
    ;
  }
}

void std::vector<pxrInternal__aapl__pxrReserved__::GfVec4f>::emplace_back<pxrInternal__aapl__pxrReserved__::GfVec4f const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    std::vector<pxrInternal__aapl__pxrReserved__::GfVec4f>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4f const&>();
  }

  std::vector<pxrInternal__aapl__pxrReserved__::GfVec4f>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::GfVec4f const&>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::GfVec4f>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4f const&>(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[3] = a2;
  sub_29B0DE5C0(v2, a1, 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4f>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4f,pxrInternal__aapl__pxrReserved__::GfVec4f const&,0>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::GfVec4f>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::GfVec4f const&>(void *a1, uint64_t a2)
{
  v5 = a1;
  v4 = a2;
  v2 = sub_29B0DB058(a1);
  sub_29B0E293C(a1, v2 + 1);
}

__n128 std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4f>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4f,pxrInternal__aapl__pxrReserved__::GfVec4f const&>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

void sub_29B0E2A30(uint64_t *a1, uint64_t *a2)
{
  sub_29B08850C();
  v7 = a2[1] + 16 * ((a1[1] - *a1) / -16);
  sub_29B088388();
  v4 = v2;
  sub_29B088388();
  v5 = v3;
  sub_29B088388();
  sub_29B0E2C24(a1, v4, v5);
  a2[1] = v7;
  a1[1] = *a1;
  sub_29B0E1B90(a1, a2 + 1);
  sub_29B0E1B90(a1 + 1, a2 + 2);
  sub_29B0E1B90(a1 + 2, a2 + 3);
  *a2 = a2[1];
  sub_29B0DB058(a1);
  sub_29B088624();
}

void **sub_29B0E2B68(void **a1, unint64_t a2, uint64_t a3, void *a4)
{
  v9 = a2;
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    *a1 = sub_29A017BD4(a1[4], a2);
    v9 = v4;
  }

  else
  {
    *a1 = 0;
  }

  v5 = *a1 + 16 * a3;
  a1[2] = v5;
  a1[1] = v5;
  a1[3] = *a1 + 16 * v9;
  return a1;
}

void *sub_29B0E2C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29B088388();
  __dst = v3;
  sub_29B088388();
  return memcpy(__dst, v4, 16 * ((a3 - a2) / 16));
}

void **sub_29B0E2C88(void **a1)
{
  sub_29B0E2D08(a1);
  if (*a1)
  {
    v2 = a1[4];
    v3 = *a1;
    v4 = sub_29B0E2D34(a1);
    sub_29B0DE178(v2, v3, v4);
  }

  return a1;
}

uint64_t sub_29B0E2D8C(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 16))
  {
    *(result + 16) -= 16;
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4f>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4f,0>();
  }

  return result;
}

void std::vector<pxrInternal__aapl__pxrReserved__::GfVec4f>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4f*,0>()
{
  ;
}

{
    ;
  }
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::emplace_back<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec> const&>();
  }

  std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec> const&>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec> const&>(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[3] = a2;
  sub_29B0DF098(v2, a1, 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec> const&,0>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec> const&>(void *a1, uint64_t a2)
{
  v5 = a1;
  v4 = a2;
  v2 = sub_29B0DB240(a1);
  sub_29B0E3070(a1, v2 + 1);
}

void **sub_29B0E3194(void **a1, unint64_t a2, uint64_t a3, void *a4)
{
  v9 = a2;
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    *a1 = sub_29A00C9BC(a1[4], a2);
    v9 = v4;
  }

  else
  {
    *a1 = 0;
  }

  v5 = *a1 + 8 * a3;
  a1[2] = v5;
  a1[1] = v5;
  a1[3] = *a1 + 8 * v9;
  return a1;
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>*,0>()
{
  ;
}

{
    ;
  }
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>::emplace_back<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec> const&>();
  }

  std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec> const&>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec> const&>(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[3] = a2;
  sub_29B0DF098(v2, a1, 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec> const&,0>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec> const&>(void *a1, uint64_t a2)
{
  v5 = a1;
  v4 = a2;
  v2 = sub_29B0DB240(a1);
  sub_29B0E34B8(a1, v2 + 1);
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>*,0>()
{
  ;
}

{
    ;
  }
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::emplace_back<pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&>();
  }

  std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&>(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[3] = a2;
  sub_29B0DE5C0(v2, a1, 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&,0>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&>(uint64_t *a1, uint64_t a2)
{
  v5 = a1;
  v4 = a2;
  v2 = sub_29B0DB058(a1);
  sub_29B0E37C0(a1, v2 + 1);
}

__n128 std::allocator<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

void **sub_29B0E389C(void **a1)
{
  sub_29B0E391C(a1);
  if (*a1)
  {
    v2 = a1[4];
    v3 = *a1;
    v4 = sub_29B0E2D34(a1);
    sub_29B0DFE90(v2, v3, v4);
  }

  return a1;
}

uint64_t sub_29B0E3978(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 16))
  {
    *(result + 16) -= 16;
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,0>();
  }

  return result;
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset*,0>()
{
  ;
}

{
    ;
  }
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::emplace_back<pxrInternal__aapl__pxrReserved__::SdfPath const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath const&>();
  }

  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath const&>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath const&>(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[3] = a2;
  sub_29B0DF098(v2, a1, 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&,0>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath const&>(void *a1, uint64_t a2)
{
  v5 = a1;
  v4 = a2;
  v2 = sub_29B0DB240(a1);
  sub_29B0E3C5C(a1, v2 + 1);
}

void sub_29B0E3D08(uint64_t *a1, uint64_t *a2)
{
  sub_29B08850C();
  v8 = a2[1] + 8 * ((a1[1] - *a1) / -8);
  sub_29B088388();
  v5 = v2;
  sub_29B088388();
  v6 = v3;
  sub_29B088388();
  sub_29A1E291C(a1, v5, v6, v4);
  a2[1] = v8;
  a1[1] = *a1;
  sub_29B0E1B90(a1, a2 + 1);
  sub_29B0E1B90(a1 + 1, a2 + 2);
  sub_29B0E1B90(a1 + 2, a2 + 3);
  *a2 = a2[1];
  sub_29B0DB240(a1);
  sub_29B088624();
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,0>()
{
  ;
}

{
    ;
  }
}

void std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::emplace_back<pxrInternal__aapl__pxrReserved__::TfToken const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const&>();
  }

  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::TfToken const&>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const&>(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[3] = a2;
  sub_29B0DF098(v2, a1, 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&,0>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::TfToken const&>(void *a1, uint64_t a2)
{
  v5 = a1;
  v4 = a2;
  v2 = sub_29B0DB240(a1);
  sub_29B0E4114(a1, v2 + 1);
}

void std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,0>()
{
  ;
}

{
    ;
  }
}

void std::vector<std::string>::emplace_back<std::string const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>();
  }

  std::vector<std::string>::__emplace_back_slow_path<std::string const&>();
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[3] = a2;
  sub_29B0E135C(v2, a1, 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<std::string>>::construct[abi:ne200100]<std::string,std::string const&,0>();
}

void std::vector<std::string>::__emplace_back_slow_path<std::string const&>(void *a1, uint64_t a2)
{
  v5 = a1;
  v4 = a2;
  v2 = sub_29B0DB8A8(a1);
  sub_29B0E44C4(a1, v2 + 1);
}

void sub_29B0E45B8(uint64_t *a1, uint64_t *a2)
{
  sub_29B08850C();
  v7 = a2[1] - 24 * ((a1[1] - *a1) / 24);
  sub_29B088388();
  v4 = v2;
  sub_29B088388();
  v5 = v3;
  sub_29B088388();
  sub_29B0E47B8(a1, v4, v5);
  a2[1] = v7;
  a1[1] = *a1;
  sub_29B0E1B90(a1, a2 + 1);
  sub_29B0E1B90(a1 + 1, a2 + 2);
  sub_29B0E1B90(a1 + 2, a2 + 3);
  *a2 = a2[1];
  sub_29B0DB8A8(a1);
  sub_29B088624();
}

void **sub_29B0E46F0(void **a1, unint64_t a2, uint64_t a3, void *a4)
{
  v9 = a2;
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    *a1 = sub_29A012C48(a1[4], a2);
    v9 = v4;
  }

  else
  {
    *a1 = 0;
  }

  v5 = *a1 + 24 * a3;
  a1[2] = v5;
  a1[1] = v5;
  a1[3] = *a1 + 24 * v9;
  return a1;
}

void *sub_29B0E47B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29B088388();
  __dst = v3;
  sub_29B088388();
  return memcpy(__dst, v4, 24 * ((a3 - a2) / 24));
}

void std::vector<std::string>::__add_alignment_assumption[abi:ne200100]<std::string*,0>()
{
  ;
}

{
    ;
  }
}

uint64_t sub_29B0E48F4(uint64_t a1)
{
  v9 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = AssociatedTypeWitness - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v4 = &v2 - v3;
  (*(v6 + 16))();
  (*(v6 + 40))(v5, v4, AssociatedTypeWitness);
  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

uint64_t sub_29B0E4A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a2, v2 + v5);
}

uint64_t sub_29B0E4AA4(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v6 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = AssociatedTypeWitness - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v7 = &v4 - v5;
  (*(v8 + 16))();
  (*(v8 + 40))(v2 + *(v6 + 36), v7, AssociatedTypeWitness);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_29B0E4C38(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v6 = a2;
  v10 = *(a2 + 16);
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](a1);
  v7 = &v4 - v5;
  (*(v8 + 16))();
  (*(v8 + 40))(v2 + *(v6 + 40), v7, v10);
  return (*(v8 + 8))(v11, v10);
}

uint64_t sub_29B0E4D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a6;
  v31 = a1;
  v30 = a2;
  v27 = a3;
  v36 = a4;
  v15 = a5;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v42 = a4;
  v25 = *(a4 - 8);
  v26 = a4 - 8;
  v14 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](a1);
  v23 = &v13 - v14;
  v16 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v29 = AssociatedTypeWitness - 8;
  v17 = (v28[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x2A1C7C4A8](v16);
  v20 = &v13 - v17;
  v37 = type metadata accessor for _OpenUSD_Iterator(v6, v7, v8, &v13 - v17);
  v9 = MEMORY[0x2A1C7C4A8](v20);
  v34 = &v13 - v10;
  v41 = &v13 - v10;
  v40 = v11;
  v39 = v30;
  v38 = v27;
  v19 = v28[2];
  v18 = v28 + 2;
  v19(v9);
  v22 = v28[4];
  v21 = v28 + 4;
  v22(v34, v20, AssociatedTypeWitness);
  (v19)(v20, v30, AssociatedTypeWitness);
  v22(v34 + *(v37 + 36), v20, AssociatedTypeWitness);
  (*(v25 + 16))(v23, v27, v36);
  (*(v25 + 32))(v34 + *(v37 + 40), v23, v36);
  sub_29B0DA7C0(v34, v24, AssociatedTypeWitness, v36, v37);
  (*(v25 + 8))(v27, v36);
  v33 = v28[1];
  v32 = v28 + 1;
  v33(v30, AssociatedTypeWitness);
  v33(v31, AssociatedTypeWitness);
  return sub_29B0DA9CC(v34, AssociatedTypeWitness, v36, v37);
}

uint64_t _OpenUSD_Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a2;
  v16 = a1;
  v21 = &protocol descriptor for _OpenUSD_Sequence;
  v33 = 0;
  v32 = 0;
  v22 = *(a1 + 24);
  v19 = *(a1 + 16);
  v34 = v19;
  v7 = 0;
  v20 = &protocol requirements base descriptor for _OpenUSD_Sequence;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = AssociatedTypeWitness - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](0);
  v12 = &v5 - v11;
  v33 = &v5 - v11;
  v28 = swift_getAssociatedTypeWitness();
  v24 = *(v28 - 8);
  v25 = v28 - 8;
  v14 = *(v24 + 64);
  v13 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](v28);
  v26 = &v5 - v13;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](&v5 - v13);
  v27 = &v5 - v15;
  v32 = v2;
  v18 = *(v24 + 16);
  v17 = v24 + 16;
  v18();
  (v18)(v26, v2 + *(v16 + 36), v28);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  v30 = *(v24 + 8);
  v29 = v24 + 8;
  v30(v26, v28);
  v30(v27, v28);
  if (v31)
  {
    return (*(v9 + 56))(v5, 1, 1, AssociatedTypeWitness);
  }

  (v18)(v27, v6, v28);
  (*(AssociatedConformanceWitness + 24))(v28);
  v4 = v26;
  v30(v27, v28);
  (v18)(v4, v6, v28);
  (*(AssociatedConformanceWitness + 32))(v28);
  v30(v26, v28);
  (*(v24 + 40))(v6, v27, v28);
  (*(v9 + 16))(v5, v12, AssociatedTypeWitness);
  (*(v9 + 56))(v5, 0, 1, AssociatedTypeWitness);
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

uint64_t _OpenUSD_Sequence<>.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a3;
  v18 = a1;
  v19 = a2;
  v21 = 0;
  v22 = a1;
  v12 = *(a1 - 8);
  v13 = a1 - 8;
  v9 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](a1);
  v17 = &v9 - v9;
  v10 = (*(*(swift_getAssociatedTypeWitness() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x2A1C7C4A8](v18);
  v16 = &v9 - v10;
  v11 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v20 = &v9 - v11;
  v21 = v3;
  (*(v7 + 40))(v6);
  (*(v19 + 48))(v18);
  (*(v12 + 16))(v17, v14, v18);
  return sub_29B0E4D50(v20, v16, v17, v18, v19, v15);
}

_DWORD *sub_29B0E5788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = sub_29B0E973C();
  _OpenUSD_Sequence<>.makeIterator()(a1, v2, a2);
  return sub_29A5AAB1C(v6);
}

void sub_29B0E5850()
{
  v4 = v1;
  sub_29B0E8D90(v2, v1);
  sub_29B0E8E34(v3, v2);
  sub_29A5AAAE4(v2);
  pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::operator++();
}

_DWORD *sub_29B0E591C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = sub_29B0E95E0();
  _OpenUSD_Sequence<>.makeIterator()(a1, v2, a2);
  return sub_29A5B8A54(v6);
}

void sub_29B0E59B4()
{
  v4 = v1;
  sub_29B0E8D90(v2, v1);
  sub_29B0E8E34(v3, v2);
  sub_29A5B8A1C(v2);
  pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::operator++();
}

uint64_t pxrInternal__aapl__pxrReserved__.VtDictionary.__insertUnsafe(_:)(uint64_t a1)
{
  v5 = a1;
  v4 = v1;
  Overlay::_insert(v1, a1, &v3);
  return v3;
}

uint64_t sub_29B0E5C8C@<X0>(const void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__.VtDictionary.__findUnsafe(_:)(a1);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_29B0E5CCC@<X0>(const void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__.VtDictionary.__findMutatingUnsafe(_:)(a1);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_29B0E5D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__.VtDictionary.__insertUnsafe(_:)(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v3 & 1;
  return result;
}

uint64_t **sub_29B0E5D60@<X0>(uint64_t ***a1@<X8>, const void **a2@<X0>)
{
  result = pxrInternal__aapl__pxrReserved__::VtDictionary::erase(v2, a2);
  *a1 = result;
  return result;
}

uint64_t *sub_29B0E5DA4@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__.VtDictionary.__eraseUnsafe(_:)(*a1, a1[1]);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_29B0E5DFC@<X0>(uint64_t *a1@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_29B0E5E68@<X0>(uint64_t *a1@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::VtDictionary::end(v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_29B0E5ED4@<X0>(uint64_t *a1@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::VtDictionary::end(v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_29B0E5F40(void *a1)
{
  v2 = sub_29B0BAF2C(0x28uLL, 48494);
  *a1 = v2;
  sub_29B0E6044(v2, *v1, v1[1]);
}

void sub_29B0E5FC8(void (***a1)(void *, uint64_t), char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

void sub_29B0E6044(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29B0BAF2C(0x38uLL, 28188);
  *a1 = v6;
  v6[5] = a2;
  v6[6] = a3;
  pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> const*,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::operator*();
}

void sub_29B0E610C(uint64_t *a1)
{
  v1 = *a1;
  sub_29A1855F0(*a1);
  free(v1);
}

void sub_29B0E62D0(void *a1)
{
  v2 = sub_29B0BAF2C(0x28uLL, 53874);
  *a1 = v2;
  sub_29B0E63D4(v2, *v1, v1[1]);
}

void sub_29B0E6358(void (***a1)(void *, uint64_t), char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

void sub_29B0E63D4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29B0BAF2C(0xE0uLL, 32150);
  *a1 = v6;
  v6[26] = a2;
  v6[27] = a3;
  v6[20] = a2;
  v6[21] = a3;
  pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> *,std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::operator*();
}

void sub_29B0E6494(void **a1, char a2)
{
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    v2 = *(v4 + 27);
    *(v4 + 24) = *(v4 + 26);
    *(v4 + 25) = v2;
    pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> *,std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::operator*();
  }

  sub_29B0E87A4(v4 + 40, v4);
  v3 = *(v4 + 27);
  *(v4 + 22) = *(v4 + 26);
  *(v4 + 23) = v3;
  pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> *,std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::operator*();
}

void sub_29B0E65D4(void *a1)
{
  v2 = sub_29B0BAF2C(0x28uLL, 1381);
  *a1 = v2;
  sub_29B0E665C(v2, *v1, v1[1]);
}

void sub_29B0E665C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29B0BAF2C(0x38uLL, 47332);
  *a1 = v6;
  v6[5] = a2;
  v6[6] = a3;
  pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> *,std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::operator*();
}

uint64_t std.__1.map<pxrInternal__aapl__pxrReserved__.TfToken, pxrInternal__aapl__pxrReserved__.VtValue, pxrInternal__aapl__pxrReserved__.TfDictionaryLessThan, std.__1.allocator<std.__1.pair<__cxxConst<pxrInternal__aapl__pxrReserved__.TfToken>, pxrInternal__aapl__pxrReserved__.VtValue>>>.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v8[2] = *MEMORY[0x29EDCA608];
  v8[0] = 0;
  v8[1] = 0;
  v7 = a1;
  v6 = v2;
  v5 = 0;
  Overlay::_operatorSubscript(v2, &v5, v8, a1);
  if (v5)
  {
    sub_29B0C04A4(a2, v8);
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  return sub_29A3D65BC(v8);
}

void sub_29B0E68CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x29B0E68E0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29B0E692C@<X0>(std::string *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29B0C0434(a3, a1);
  std::string::~string(a1);
  sub_29B0C046C((a3 + 24), a2);
  return sub_29A3D65BC(a2);
}

void sub_29B0E69E0(std::string *__str)
{
  std::string::basic_string(&v3, __str);
  std::string::~string(v2);
  sub_29B0C0434(v2, &v3);
  std::string::~string(&v3);
  std::string::~string(__str);
}

void (*protocol witness for CxxPair.first.modify in conformance std.__1.pair<__cxxConst<std.__1.basic_string<CChar, std.__1.char_traits<CChar>, std.__1.allocator<CChar>>>, pxrInternal__aapl__pxrReserved__.VtValue>(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = sub_29B0BAF2C(0x28uLL, 22953);
  *a1 = v2;
  v2[4] = sub_29B0BA14C();
  return sub_29B0BA0D0;
}

unint64_t sub_29B0E6AC8()
{
  v2 = qword_2A14FAF90;
  if (!qword_2A14FAF90)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimSubtreeIterator(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAF90);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimSubtreeIterator(uint64_t a1)
{
  v5 = qword_2A14FB050;
  if (!qword_2A14FB050)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FB050);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_29B0E6BE0(uint64_t a1)
{
  result = sub_29B0E6C0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0E6C0C()
{
  v2 = qword_2A14FAF98;
  if (!qword_2A14FAF98)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimSubtreeRange(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAF98);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimSubtreeRange(uint64_t a1)
{
  v5 = qword_2A14FB048;
  if (!qword_2A14FB048)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FB048);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_29B0E6D3C()
{
  v2 = qword_2A14FAFA0;
  if (!qword_2A14FAFA0)
  {
    sub_29B0B7EBC(&qword_2A14FAFA8, &unk_29B748B40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAFA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0E6DC4(uint64_t a1)
{
  result = sub_29B0E6DF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0E6DF0()
{
  v2 = qword_2A14FAFB0;
  if (!qword_2A14FAFB0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimSubtreeIterator(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAFB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0E6E88()
{
  v2 = qword_2A14FAFB8;
  if (!qword_2A14FAFB8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimSiblingIterator(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAFB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimSiblingIterator(uint64_t a1)
{
  v5 = qword_2A14FB040;
  if (!qword_2A14FB040)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FB040);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_29B0E6FA0(uint64_t a1)
{
  result = sub_29B0E6FCC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0E6FCC()
{
  v2 = qword_2A14FAFC0;
  if (!qword_2A14FAFC0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimSiblingRange(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAFC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimSiblingRange(uint64_t a1)
{
  v5 = qword_2A14FB038;
  if (!qword_2A14FB038)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FB038);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_29B0E70FC()
{
  v2 = qword_2A14FAFC8;
  if (!qword_2A14FAFC8)
  {
    sub_29B0B7EBC(&qword_2A14FAFD0, &qword_29B748BF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAFC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0E7184(uint64_t a1)
{
  result = sub_29B0E71B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0E71B0()
{
  v2 = qword_2A14FAFD8;
  if (!qword_2A14FAFD8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimSiblingIterator(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAFD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0E7248()
{
  v2 = qword_2A14FAFE0;
  if (!qword_2A14FAFE0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtDictionary(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAFE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0E72E0()
{
  v2 = qword_2A14FAFE8;
  if (!qword_2A14FAFE8)
  {
    type metadata accessor for std.__1.pair___cxxConst_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____ pxrInternal__aapl__pxrReserved__.VtValue_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAFE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for std.__1.pair___cxxConst_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____ pxrInternal__aapl__pxrReserved__.VtValue_(uint64_t a1)
{
  v5 = qword_2A14FB030;
  if (!qword_2A14FB030)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FB030);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_29B0E7410()
{
  v2 = qword_2A14FAFF0;
  if (!qword_2A14FAFF0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtDictionary.Iterator_UnsafePointer_std.__1.map_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue_ std.__1.less_Void__ std.__1.allocator_std.__1.pair___cxxConst_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____ pxrInternal__aapl__pxrReserved__.VtValue_____ std.__1.__map_const_iterator_std.__1.__tree_const_iterator_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_std.__1.__tree_node_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_Void____ CLong___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAFF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtDictionary.Iterator_UnsafePointer_std.__1.map_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue_ std.__1.less_Void__ std.__1.allocator_std.__1.pair___cxxConst_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____ pxrInternal__aapl__pxrReserved__.VtValue_____ std.__1.__map_const_iterator_std.__1.__tree_const_iterator_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_std.__1.__tree_node_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_Void____ CLong___(uint64_t a1)
{
  v5 = qword_2A14FB028;
  if (!qword_2A14FB028)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FB028);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_29B0E7540()
{
  v2 = qword_2A14FAFF8;
  if (!qword_2A14FAFF8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtDictionary.Iterator_UnsafeMutablePointer_std.__1.map_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue_ std.__1.less_Void__ std.__1.allocator_std.__1.pair___cxxConst_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____ pxrInternal__aapl__pxrReserved__.VtValue_____ std.__1.__map_iterator_std.__1.__tree_iterator_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_std.__1.__tree_node_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_Void____ CLong___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAFF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtDictionary.Iterator_UnsafeMutablePointer_std.__1.map_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue_ std.__1.less_Void__ std.__1.allocator_std.__1.pair___cxxConst_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____ pxrInternal__aapl__pxrReserved__.VtValue_____ std.__1.__map_iterator_std.__1.__tree_iterator_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_std.__1.__tree_node_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_Void____ CLong___(uint64_t a1)
{
  v5 = qword_2A14FB020;
  if (!qword_2A14FB020)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FB020);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_29B0E7670()
{
  v2 = qword_2A14FB000;
  if (!qword_2A14FB000)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtDictionary.Iterator_UnsafePointer_std.__1.map_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue_ std.__1.less_Void__ std.__1.allocator_std.__1.pair___cxxConst_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____ pxrInternal__aapl__pxrReserved__.VtValue_____ std.__1.__map_const_iterator_std.__1.__tree_const_iterator_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_std.__1.__tree_node_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_Void____ CLong___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB000);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0E7708()
{
  v2 = qword_2A14FB008;
  if (!qword_2A14FB008)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtDictionary.Iterator_UnsafeMutablePointer_std.__1.map_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue_ std.__1.less_Void__ std.__1.allocator_std.__1.pair___cxxConst_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____ pxrInternal__aapl__pxrReserved__.VtValue_____ std.__1.__map_iterator_std.__1.__tree_iterator_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_std.__1.__tree_node_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_Void____ CLong___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB008);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0E77A0()
{
  v2 = qword_2A14FB010;
  if (!qword_2A14FB010)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtDictionary.Iterator_UnsafeMutablePointer_std.__1.map_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue_ std.__1.less_Void__ std.__1.allocator_std.__1.pair___cxxConst_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____ pxrInternal__aapl__pxrReserved__.VtValue_____ std.__1.__map_iterator_std.__1.__tree_iterator_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_std.__1.__tree_node_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_Void____ CLong___(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB010);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_29B0E7850(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    AssociatedTypeWitness = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return AssociatedTypeWitness;
}

char *sub_29B0E7998(char *a1, char *a2, uint64_t a3)
{
  v12 = *(*(a3 - 8) + 80);
  if ((v12 & 0x20000) != 0)
  {
    v7 = *a2;

    *a1 = v7;
    return (*a1 + ((v12 + 16) & ~v12));
  }

  else
  {
    v6 = *(a3 + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = *(*(AssociatedTypeWitness - 8) + 16);
    v5(a1, a2);
    (v5)(&a1[*(a3 + 36)], &a2[*(a3 + 36)], AssociatedTypeWitness);
    (*(*(v6 - 8) + 16))(&a1[*(a3 + 40)], &a2[*(a3 + 40)]);
    return a1;
  }
}

uint64_t sub_29B0E7B2C(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);
  v4(a1);
  (v4)(a1 + *(a2 + 36), AssociatedTypeWitness);
  return (*(*(v7 - 8) + 8))(a1 + *(a2 + 40));
}

uint64_t sub_29B0E7C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);
  v5(a1, a2);
  (v5)(a1 + *(a3 + 36), a2 + *(a3 + 36), AssociatedTypeWitness);
  (*(*(v8 - 8) + 16))(a1 + *(a3 + 40), a2 + *(a3 + 40));
  return a1;
}

uint64_t sub_29B0E7D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 24);
  v5(a1, a2);
  (v5)(a1 + *(a3 + 36), a2 + *(a3 + 36), AssociatedTypeWitness);
  (*(*(v8 - 8) + 24))(a1 + *(a3 + 40), a2 + *(a3 + 40));
  return a1;
}

uint64_t sub_29B0E7E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 32);
  v5(a1, a2);
  (v5)(a1 + *(a3 + 36), a2 + *(a3 + 36), AssociatedTypeWitness);
  (*(*(v8 - 8) + 32))(a1 + *(a3 + 40), a2 + *(a3 + 40));
  return a1;
}

uint64_t sub_29B0E7F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 40);
  v5(a1, a2);
  (v5)(a1 + *(a3 + 36), a2 + *(a3 + 36), AssociatedTypeWitness);
  (*(*(v8 - 8) + 40))(a1 + *(a3 + 40), a2 + *(a3 + 40));
  return a1;
}

uint64_t sub_29B0E8098(uint64_t a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (a2 == *(*(AssociatedTypeWitness - 8) + 84))
  {
    return (*(*(AssociatedTypeWitness - 8) + 48))(a1, a2, AssociatedTypeWitness);
  }

  else
  {
    v4 = *(a3 + 16);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 40), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_29B0E8238(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = swift_getAssociatedTypeWitness();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  v5 = *(a4 + 16);
  if (a3 == *(*(v5 - 8) + 84))
  {
    return (*(*(v5 - 8) + 56))(a1 + *(a4 + 40), a2, a2, v5);
  }

  __break(1u);
  return result;
}

__n128 sub_29B0E83B0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t sub_29B0E83C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 24))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 16) & 0xFE) != 0)
      {
        v3 = (*(a1 + 16) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B0E84E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for std.__1.pair_pxrInternal__aapl__pxrReserved__.VtDictionary.Iterator_UnsafeMutablePointer_std.__1.map_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue_ std.__1.less_Void__ std.__1.allocator_std.__1.pair___cxxConst_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____ pxrInternal__aapl__pxrReserved__.VtValue_____ std.__1.__map_iterator_std.__1.__tree_iterator_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_std.__1.__tree_node_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_Void____ CLong____ CBool_(uint64_t a1)
{
  v5 = qword_2A14FB018;
  if (!qword_2A14FB018)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FB018);
      return v2;
    }
  }

  return v5;
}

char *sub_29B0E87DC(char *a1, __int128 *a2)
{
  sub_29A1855F0(a1);
  sub_29B0E87A4(a1, a2);
  return a1;
}

std::string *sub_29B0E8890(std::string *a1, const std::string *a2)
{
  sub_29A1855F0(a1);
  sub_29B0E8858(a1, a2);
  sub_29A1855F0(a2);
  return a1;
}

_DWORD *sub_29B0E8950(_DWORD *a1, uint64_t a2)
{
  sub_29A5B8A54(a1);
  sub_29B0E8918(a1, a2);
  return a1;
}

_DWORD *sub_29B0E89F4(_DWORD *a1, _DWORD *a2)
{
  sub_29A5B8A54(a1);
  sub_29B0E89BC(a1, a2);
  sub_29A5B8A54(a2);
  return a1;
}

uint64_t sub_29B0E8A34(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 80))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 32) & 0xFE) != 0)
      {
        v3 = (*(a1 + 32) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B0E8B58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3 > 0xFE)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 32) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

__n128 *sub_29B0E8DC8(__n128 *a1, __n128 *a2)
{
  sub_29A5B8A1C(a1);
  sub_29B0E8D90(a1, a2);
  return a1;
}

__n128 *sub_29B0E8E6C(__n128 *a1, __n128 *a2)
{
  sub_29A5B8A1C(a1);
  sub_29B0E8E34(a1, a2);
  sub_29A5B8A1C(a2);
  return a1;
}

uint64_t sub_29B0E8EAC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 40))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 32) & 0xFE) != 0)
      {
        v3 = (*(a1 + 32) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B0E8FD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

_DWORD *sub_29B0E91CC(_DWORD *a1, uint64_t a2)
{
  sub_29A5AAB1C(a1);
  sub_29B0E8918(a1, a2);
  return a1;
}

_DWORD *sub_29B0E9238(_DWORD *a1, _DWORD *a2)
{
  sub_29A5AAB1C(a1);
  sub_29B0E89BC(a1, a2);
  sub_29A5AAB1C(a2);
  return a1;
}

__n128 *sub_29B0E9290(__n128 *a1, __n128 *a2)
{
  sub_29A5AAAE4(a1);
  sub_29B0E8D90(a1, a2);
  return a1;
}

__n128 *sub_29B0E92FC(__n128 *a1, __n128 *a2)
{
  sub_29A5AAAE4(a1);
  sub_29B0E8E34(a1, a2);
  sub_29A5AAAE4(a2);
  return a1;
}

uint64_t sub_29B0E9394(void *a1)
{
  sub_29B0C04A4(v4, a1);
  sub_29A3D65BC(v3 + 24);
  sub_29B0C046C((v3 + 24), v4);
  sub_29A3D65BC(v4);
  return sub_29A3D65BC(a1);
}

void (*sub_29B0E93FC(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = sub_29B0BAF2C(0x28uLL, 673);
  *a1 = v2;
  v2[4] = sub_29B0E946C();
  return sub_29B0BA0D0;
}

void pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::operator*()
{
  pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::dereference();
}

{
    ;
  }
}

unint64_t sub_29B0E95E0()
{
  v2 = qword_2A14FB058;
  if (!qword_2A14FB058)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimSiblingRange(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB058);
    return WitnessTable;
  }

  return v2;
}

void pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::operator*()
{
  pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::dereference();
}

{
    ;
  }
}

unint64_t sub_29B0E973C()
{
  v2 = qword_2A14FB060;
  if (!qword_2A14FB060)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimSubtreeRange(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB060);
    return WitnessTable;
  }

  return v2;
}

std::string *sub_29B0E9874(std::string *a1, const std::string *a2)
{
  std::string::basic_string(a1, a2);
  sub_29B0C046C(a1[1].__r_.__value_.__r.__words, a2[1].__r_.__value_.__r.__words);
  return a1;
}

uint64_t sub_29B0E98C0(uint64_t a1, uint64_t a2)
{
  sub_29B0E8D90(a1, a2);
  sub_29B0E8D90((a1 + 40), (a2 + 40));
  return a1;
}

uint64_t sub_29B0E990C(uint64_t a1, uint64_t a2)
{
  sub_29B0E8E34(a1, a2);
  sub_29B0E8E34((a1 + 40), (a2 + 40));
  return a1;
}

__n128 sub_29B0E9958(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = a2->n128_u64[0];
  sub_29B0B975C(&a1->n128_u32[2], &a2->n128_u32[2]);
  result = a2[1];
  a1[1] = result;
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  return result;
}

__n128 sub_29B0E99B8(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = a2->n128_u64[0];
  sub_29B0B82B8(&a1->n128_u32[2], &a2->n128_u32[2]);
  result = a2[1];
  a1[1] = result;
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> *,std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment(uint64_t *a1)
{
  v5[12] = a1;
  if (!a1[1])
  {
    v1 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/vt/dictionary.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/vt/dictionary.h", v1, 0x2F);
  }

  v3 = sub_29B0E9B2C(a1);
  v5[0] = sub_29B0E9B5C();
  result = sub_29B0E9AFC(v3, v5);
  if (result)
  {
    a1[1] = 0;
  }

  return result;
}

uint64_t sub_29B0E9B5C()
{
  v1 = sub_29B0BCC78();
  sub_29B0BCCB0(&v2, v1);
  return v2;
}

BOOL pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> const*,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment(uint64_t *a1)
{
  v5[12] = a1;
  if (!a1[1])
  {
    v1 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/vt/dictionary.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/vt/dictionary.h", v1, 0x2F);
  }

  v3 = sub_29B0E9B2C(a1);
  v5[0] = sub_29B0E9B5C();
  result = sub_29B0E9AFC(v3, v5);
  if (result)
  {
    a1[1] = 0;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::increment(pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator *this)
{
  pxrInternal__aapl__pxrReserved__::Usd_MoveToNextSiblingOrParent<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Usd_MoveToNextSiblingOrParent<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(pxrInternal__aapl__pxrReserved__::Usd_PrimData **a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::Usd_PrimData *a3, uint64_t a4)
{
  v7 = a1;
  v6 = a2;
  v5 = a3;
  v4 = a4;
  pxrInternal__aapl__pxrReserved__::Usd_IsInstanceProxy<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>();
}

void pxrInternal__aapl__pxrReserved__::Usd_PrimData::GetNextSibling(pxrInternal__aapl__pxrReserved__::Usd_PrimData *this)
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::Usd_PrimData>::BitsAs<BOOL>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Usd_PrimData::GetParentLink(pxrInternal__aapl__pxrReserved__::Usd_PrimData *this)
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::Usd_PrimData>::BitsAs<BOOL>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfPath::IsEmpty(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator BOOL();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Usd_PrimData::GetName(pxrInternal__aapl__pxrReserved__::Usd_PrimData *this)
{
  pxrInternal__aapl__pxrReserved__::Usd_PrimData::GetPath(this);
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Usd_PrimData::IsPrototype(pxrInternal__aapl__pxrReserved__::Usd_PrimData *this)
{
  pxrInternal__aapl__pxrReserved__::Usd_PrimData::IsInPrototype(this);
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::Usd_PrimData>::GetMaxValue()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::Usd_PrimData>::_GetAlign();
}

{
    ;
  }
}

uint64_t sub_29B0EA5F0(uint64_t a1, unint64_t a2, char a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  if (a2 >= 0xF)
  {
    sub_29A0F26E4("bitset set argument out of range");
  }

  v6[0] = sub_29B0C54F4(a1, v8);
  v6[1] = v3;
  sub_29B0EA7C8(v6, v7 & 1);
  return a1;
}

uint64_t sub_29B0EA670(uint64_t *a1, void *a2)
{
  v3 = *a1;
  sub_29B0EA82C(&v3, a2);
  return v3;
}

uint64_t sub_29B0EA6B0(uint64_t a1, uint64_t a2)
{
  v13 = sub_29B0EA970(a1, 0);
  LODWORD(v9) = v2;
  v12 = sub_29B0EA970(a1, 0xFuLL);
  LODWORD(v8) = v3;
  v11 = sub_29B0EA970(a2, 0);
  LODWORD(v7) = v4;
  return sub_29B0EA890(v13, v9, v12, v8, v11, v7);
}

void sub_29B0EA7A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29B0EA7C8(uint64_t result, char a2)
{
  if (a2)
  {
    **result |= *(result + 8);
  }

  else
  {
    **result &= ~*(result + 8);
  }

  return result;
}

uint64_t sub_29B0EA890(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (a2 == a6)
  {
    v7 = sub_29A58C574(a1, a2, a3, a4, a5) & 1;
  }

  else
  {
    v7 = sub_29B0EA9CC(a1, a2, a3, a4, a5, a6) & 1;
  }

  return v7 & 1;
}

uint64_t sub_29B0EA9CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v27 = a1;
  v28 = a2;
  v26[0] = a3;
  v26[1] = a4;
  v24 = a5;
  v25 = a6;
  v23 = 64;
  v22 = sub_29B0EAF00(v26, &v27);
  if (v22 <= 0)
  {
    goto LABEL_27;
  }

  if (!v28)
  {
LABEL_14:
    v12 = 64 - v25;
    v11 = -1 << v25;
    while (v22 >= 64)
    {
      v10 = *v27;
      if ((*v24 & v11) != v10 << v25)
      {
        v29 = 0;
        return v29 & 1;
      }

      if ((*++v24 & ~v11) != v10 >> v12)
      {
        v29 = 0;
        return v29 & 1;
      }

      v22 -= 64;
      ++v27;
    }

    if (v22 > 0)
    {
      v11 = 0xFFFFFFFFFFFFFFFFLL >> (64 - v22);
      v9 = *v27 & v11;
      v7 = v12;
      v8 = *sub_29B0EAF48(&v22, &v7);
      v11 = (-1 << v25) & (0xFFFFFFFFFFFFFFFFLL >> (v12 - v8));
      if ((*v24 & v11) != v9 << v25)
      {
        v29 = 0;
        return v29 & 1;
      }

      v24 += (v8 + v25) / 0x40;
      LODWORD(v25) = (v8 + v25) % 0x40;
      v22 -= v8;
      if (v22 > 0)
      {
        v11 = 0xFFFFFFFFFFFFFFFFLL >> (64 - v22);
        if ((*v24 & v11) != v9 >> v8)
        {
          v29 = 0;
          return v29 & 1;
        }
      }
    }

LABEL_27:
    v29 = 1;
    return v29 & 1;
  }

  v21 = 64 - v28;
  v19 = (64 - v28);
  v20 = *sub_29B0EAF48(&v19, &v22);
  v22 -= v20;
  v18 = (-1 << v28) & (0xFFFFFFFFFFFFFFFFLL >> (v21 - v20));
  v17 = *v27 & v18;
  v16 = 64 - v25;
  v14 = v20;
  v13 = (64 - v25);
  v15 = *sub_29B0DCCB8(&v14, &v13);
  v18 = (-1 << v25) & (0xFFFFFFFFFFFFFFFFLL >> (v16 - v15));
  if (v25 <= v28)
  {
    if ((*v24 & v18) != v17 >> (v28 - v25))
    {
      v29 = 0;
      return v29 & 1;
    }

    goto LABEL_9;
  }

  if ((*v24 & v18) == v17 << (v25 - v28))
  {
LABEL_9:
    v24 += (v15 + v25) / 0x40;
    LODWORD(v25) = (v15 + v25) % 0x40;
    v20 -= v15;
    if (v20 > 0)
    {
      v18 = 0xFFFFFFFFFFFFFFFFLL >> (64 - v20);
      if ((*v24 & v18) != v17 >> (v28 + v15))
      {
        v29 = 0;
        return v29 & 1;
      }

      LODWORD(v25) = v20;
    }

    ++v27;
    goto LABEL_14;
  }

  v29 = 0;
  return v29 & 1;
}

void *sub_29B0EAF78(void *a1, void *a2)
{
  if (sub_29B0EAFD0(&v6, a2, a1))
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_29B0EB040(uint64_t result, uint64_t a2, int a3)
{
  *result = a2;
  *(result + 8) = a3;
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::Usd_PrimData::IsInPrototype(pxrInternal__aapl__pxrReserved__::Usd_PrimData *this)
{
  v3[2] = this;
  v3[0] = sub_29B0C54F4(this + 56, 12);
  v3[1] = v1;
  return sub_29B0C5534(v3);
}

void pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(uint64_t a1, _DWORD *a2)
{
  v4 = a1;
  v3 = a2;
  sub_29B0BD6A4(&v2, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::swap();
}

void pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(uint64_t a1, _DWORD *a2)
{
  v4 = a1;
  v3 = a2;
  sub_29B0BD6DC(&v2, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::swap();
}

void pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::dereference(pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator *this@<X0>, uint64_t a2@<X8>)
{
  v2[2] = a2;
  v2[1] = this;
  sub_29B0EB238(v2, *this);
}

void pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::increment(pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator *this)
{
  pxrInternal__aapl__pxrReserved__::Usd_MoveToChild<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Usd_MoveToChild<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(pxrInternal__aapl__pxrReserved__::Usd_PrimData **a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v6 = a2;
  v5 = a3;
  v4 = a4;
  pxrInternal__aapl__pxrReserved__::Usd_IsInstanceProxy<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>();
}

BOOL pxrInternal__aapl__pxrReserved__::Usd_PrimData::IsInstance(pxrInternal__aapl__pxrReserved__::Usd_PrimData *this)
{
  v3[2] = this;
  v3[0] = sub_29B0C54F4(this + 56, 8);
  v3[1] = v1;
  return sub_29B0C5534(v3);
}

void pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::dereference(pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator *this@<X0>, uint64_t a2@<X8>)
{
  v2[2] = a2;
  v2[1] = this;
  sub_29B0EB238(v2, *this);
}

void __swiftcall pxrInternal__aapl__pxrReserved__.SdfPath.init(_:)(Swift::String a1)
{
  v2 = v1;
  v6 = 0;
  v5 = a1;
  sub_29B0C1740(a1._countAndFlagsBits, a1._object, &v3);
  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(v4, &v3);
  std::string::~string(&v3);
  sub_29B0B82B8(&v6, v4);
  sub_29A1DCEA8(v4);
  sub_29B0B975C(v2, &v6);
  sub_29A1DCEA8(&v6);
}

uint64_t String.init(_:)(pxrInternal__aapl__pxrReserved__::SdfPath *a1)
{
  v8 = 0;
  v9 = 0;
  v7 = a1;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString(&v6, a1);
  v4 = sub_29B0EB85C(&v6);
  v3 = v1;

  v8 = v4;
  v9 = v3;
  sub_29A1DCEA8(a1);
  sub_29B0C2DBC(&v8);
  return v4;
}

uint64_t sub_29B0EB85C(std::string *a1)
{
  sub_29B0EB9FC(a1);
  v5 = v1;
  v2 = sub_29B0C0EF0(a1);
  v3.value._rawValue = v5;
  v7 = sub_29B0EBABC(sub_29B0EBA24, 0, v3, v2);
  std::string::~string(a1);
  return v7;
}

uint64_t sub_29B0EBA24@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  sub_29B0EBC88(a2, a3);
  result = static String._fromUTF8Repairing(_:)();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_29B0EBABC(void (*a1)(uint64_t *__return_ptr, void *, uint64_t), uint64_t a2, Swift::OpaquePointer_optional a3, uint64_t a4)
{
  if (!a3.value._rawValue)
  {
    a1(&v9, 0, 0);
    if (!v8)
    {
      return v9;
    }

    goto LABEL_7;
  }

  Int.init(bitPattern:)(a3);
  if ((a4 & 0x8000000000000000) == 0)
  {
    a1(&v9, a3.value._rawValue, a4);
    if (!v8)
    {
      return v9;
    }

LABEL_7:
    __break(1u);
    return v9;
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_29B0EBC88(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
  }

  else
  {
    v2 = 0;
  }

  if ((a2 * 1) >> 64 != a2 >> 63)
  {
    goto LABEL_11;
  }

  if (a2 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (a2)
  {
    if (!v2)
    {
      _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return v2;
}

void pxrInternal__aapl__pxrReserved__::TfToken::GetString(pxrInternal__aapl__pxrReserved__::TfToken *this)
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const>::Get();
}

{
    ;
  }
}

uint64_t sub_29B0EBEE4(uint64_t a1)
{
  if (sub_29B0C0ECC(a1))
  {
    return sub_29B0BCBCC(a1);
  }

  sub_29B0C0DA8();
  return v1;
}

void __swiftcall pxrInternal__aapl__pxrReserved__.UsdPrimRange.makeIterator()()
{
  v2 = v0;
  v4 = v1;
  sub_29B0EC0D8(v3, v1);
  Overlay::UsdPrimRangeIteratorWrapper::UsdPrimRangeIteratorWrapper(v2);
  sub_29A58BD10(v3);
}

__C::pxrInternal__aapl__pxrReserved__::UsdPrim_optional __swiftcall Overlay.UsdPrimRangeIteratorWrapper.next()()
{
  memset(v2, 0, sizeof(v2));
  v3 = v0;
  Overlay::UsdPrimRangeIteratorWrapper::advanceAndGetCurrent(v0, v2);
  sub_29B0C4E0C();
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdPrimRange.withIterator()()
{
  v3 = v0;
  sub_29B0EC0D8(v2, v0);
  return sub_29B0ED804(v2);
}

unint64_t sub_29B0EC26C()
{
  v2 = qword_2A14FB068;
  if (!qword_2A14FB068)
  {
    type metadata accessor for Overlay.UsdPrimRangeIteratorWrapper(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB068);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for Overlay.UsdPrimRangeIteratorWrapper(uint64_t a1)
{
  v5 = qword_2A14FB080;
  if (!qword_2A14FB080)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FB080);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B0EC3C4(uint64_t a1, uint64_t a2)
{
  sub_29A58BD10(a1);
  sub_29B0EC0D8(a1, a2);
  return a1;
}

uint64_t sub_29B0EC468(uint64_t a1, uint64_t a2)
{
  sub_29A58BD10(a1);
  sub_29B0EC430(a1, a2);
  sub_29A58BD10(a2);
  return a1;
}

uint64_t sub_29B0EC4A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 56))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 40) & 0xFE) != 0)
      {
        v3 = (*(a1 + 40) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B0EC5CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    if (a3 > 0xFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimRange(uint64_t a1)
{
  v5 = qword_2A14FB070;
  if (!qword_2A14FB070)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FB070);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for Overlay(uint64_t a1)
{
  v5 = qword_2A14FB078;
  if (!qword_2A14FB078)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FB078);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B0EC990(uint64_t a1, uint64_t a2)
{
  sub_29B0EC900(a1);
  sub_29B0EC958(a1, a2);
  return a1;
}

uint64_t sub_29B0ECA34(uint64_t a1, uint64_t a2)
{
  sub_29B0EC900(a1);
  sub_29B0EC9FC(a1, a2);
  sub_29B0EC900(a2);
  return a1;
}

uint64_t sub_29B0ECA74(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 56))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 44) & 0xFE) != 0)
      {
        v3 = (*(a1 + 44) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B0ECB98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    if (a3 > 0xFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 44) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

__n128 sub_29B0ECD84(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_29B0B975C((a1 + 16), (a2 + 16));
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 37);
  *(a1 + 37) = result;
  return result;
}

__n128 sub_29B0ECDE4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_29B0B82B8((a1 + 16), (a2 + 16));
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 37);
  *(a1 + 37) = result;
  return result;
}

uint64_t sub_29B0ECE44(uint64_t a1)
{
  sub_29A58BBB4(a1 + 16);
  sub_29B0882A0(a1);
  return a1;
}

uint64_t sub_29B0ECE80(uint64_t a1, uint64_t a2)
{
  sub_29B0ECEDC(a1, a2);
  sub_29B0ECF14(a1 + 16, a2 + 16);
  result = a1;
  *(a1 + 48) = *(a2 + 48) & 1;
  return result;
}

void *sub_29B0ECF4C(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  if (a1[1])
  {
    sub_29B0ECFB8(a1[1]);
  }

  return a1;
}

uint64_t sub_29B0ED03C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_29B0B975C((a1 + 16), (a2 + 16));
  result = a1;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  return result;
}

uint64_t sub_29B0ED09C(uint64_t a1, uint64_t a2)
{
  sub_29B0ED0F8(a1, a2);
  sub_29B0ED130(a1 + 16, a2 + 16);
  result = a1;
  *(a1 + 48) = *(a2 + 48) & 1;
  return result;
}

void *sub_29B0ED168(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_29B0ED1A8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_29B0B82B8((a1 + 16), (a2 + 16));
  result = a1;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  return result;
}

uint64_t sub_29B0ED208@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = v1 + *(*v1 + 88);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, v5);
  return swift_endAccess();
}

uint64_t sub_29B0ED2C8(uint64_t a1)
{
  v10 = a1;
  v11 = *(*v1 + 80);
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](a1);
  v6 = &v3 - v4;
  (*(v8 + 16))();
  v5 = v1 + *(*v1 + 88);
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_29B0ED528(uint64_t a1)
{
  v9 = a1;
  v12 = 0;
  v11 = 0;
  v8 = *(*v1 + 80);
  v13 = v8;
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](a1);
  v5 = &v4 - v4;
  v12 = v2;
  v11 = v1;
  (*(v6 + 16))();
  (*(v6 + 32))(v1 + *(*v1 + 88), v5, v8);
  (*(v6 + 8))(v9, v8);
  return v10;
}

uint64_t sub_29B0ED7C8(uint64_t a1)
{

  *v1 = a1;
}

uint64_t sub_29B0ED804(uint64_t a1)
{
  v6 = 0;
  v5 = a1;
  sub_29B0B7DC8(&qword_2A14FB088, &qword_29B749BE0);
  pxrInternal__aapl__pxrReserved__.UsdPrimRange.makeIterator()();
  v3 = sub_29B0ED4DC(v4);

  v6 = v3;
  sub_29A58BD10(a1);
  sub_29B0DBA8C(&v6);
  return v3;
}

uint64_t Overlay.UsdPrimRangeIteratedSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v13 = v1;
  v5 = *v1;

  v4 = (*(*v5 + 112))();
  Overlay.UsdPrimRangeIteratorWrapper.next()();
  v4();

  v11 = v6;
  v8 = sub_29B0B7DC8(&qword_2A14FB090, &qword_29B749BE8);
  v2 = sub_29B0B7DC8(&qword_2A14FB098, &qword_29B749BF0);
  sub_29B0EDABC(sub_29B0EDA90, v10, v8, MEMORY[0x29EDC9F80], v2, v9, a1);
  return sub_29B0EDDF8(v12);
}

uint64_t sub_29B0EDA28@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{

  nullsub_1();
  *a3 = v3;
  return sub_29A58CB08((a3 + 1), a1);
}

uint64_t sub_29B0EDABC@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v18 = a7;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v25 = a6;
  v39 = a4;
  v38 = a5;
  v26 = *(a4 - 8);
  v27 = a4 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x2A1C7C4A8](v7);
  v29 = v17 - v28;
  v35 = *(v9 + 16);
  v37 = v35;
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v30 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v31 = v17 - v30;
  v32 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v36 = v17 - v32;
  sub_29B0EE1D0(v12, v17 - v32, v13, v14);
  if ((*(v33 + 48))(v36, 1, v35) == 1)
  {
    result = (*(*(v23 - 8) + 56))(v18, 1);
    v17[1] = v24;
  }

  else
  {
    (*(v33 + 32))(v31, v36, v35);
    v16 = v24;
    v19(v31, v29);
    v17[0] = v16;
    (*(v33 + 8))(v31, v35);
    if (v16)
    {
      return (*(v26 + 32))(v25, v29, v22);
    }

    else
    {
      (*(*(v23 - 8) + 56))(v18, 0, 1);
      return v17[0];
    }
  }

  return result;
}

uint64_t sub_29B0EDDF8(uint64_t a1)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    sub_29A57F434(a1);
  }

  return a1;
}

Swift::Bool __swiftcall Overlay.UsdPrimRangeIteratedSequence.Iterator.View.IsPostVisit()()
{
  v1 = v0;
  v5 = v0;

  (*(*v1 + 96))(v1);

  IsPostVisit = Overlay::UsdPrimRangeIteratorWrapper::IsPostVisit(v4);
  sub_29B0EC900(v4);
  return IsPostVisit;
}

Swift::Void __swiftcall Overlay.UsdPrimRangeIteratedSequence.Iterator.View.PruneChildren()()
{
  v1 = v0;
  v5 = v0;

  v3 = (*(*v1 + 112))(v4);
  Overlay::UsdPrimRangeIteratorWrapper::PruneChildren(v2);
  v3();
}

unint64_t sub_29B0EDFA4()
{
  v2 = qword_2A14FB0A0;
  if (!qword_2A14FB0A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB0A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_29B0EE020@<X0>(void *a1@<X8>)
{
  Overlay.UsdPrimRangeIteratedSequence.makeIterator()();
  *a1 = v1;
}

uint64_t sub_29B0EE088(uint64_t a1)
{
  inited = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    inited = swift_initClassMetadata2();
    if (!inited)
    {
      return 0;
    }
  }

  return inited;
}

void *sub_29B0EE1D0(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

double pxrInternal__aapl__pxrReserved__.UsdTimeCode.init(from:)(void *a1)
{
  v25 = 0.0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v24[5] = a1;
  sub_29B0EE810(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v18)
  {

    v14 = 0;
    v15 = 1;
  }

  else
  {
    sub_29B0EE810(v24, v24[3]);
    dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v16 = v1;
    sub_29B0EE914(v24);
    v14 = v16;
    v15 = 0;
  }

  if (v15)
  {
    sub_29B0EE810(a1, a1[3]);
    dispatch thunk of Decoder.singleValueContainer()();
    sub_29B0EE810(v23, v23[3]);
    v12 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v13 = v3;
    sub_29B0EE914(v23);
    if (v13)
    {
      v21 = v12;
      v22 = v13;
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nan", 3uLL, 1)._countAndFlagsBits;
      v11 = MEMORY[0x29C2B97C0](v12, v13, countAndFlagsBits);

      if (v11)
      {
        pxrInternal__aapl__pxrReserved__::UsdTimeCode::Default(v11);
      }
    }

    v9 = type metadata accessor for DecodingError();
    swift_allocError();
    v8 = v5;
    sub_29B0B7DC8(&qword_2A14FB0A8, &qword_29B749D00);
    *v8 = type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdTimeCode(0);
    sub_29B0B7DC8(&qword_2A14FB0B0, &unk_29B749D08);
    _allocateUninitializedArray<A>(_:)();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v9 - 8) + 104))(v8, *MEMORY[0x29EDC9DB8]);
    swift_willThrow();
    sub_29B0EE914(a1);
    return v10;
  }

  else
  {
    v20 = v14;
    v19 = 0.0;
    v2.n128_u64[0] = v14;
    sub_29B0EE9E0(&v19, v2);
    v25 = v19;
    v7 = v19;
    sub_29B0EE914(a1);
    return v7;
  }
}

void *sub_29B0EE810(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdTimeCode(uint64_t a1)
{
  v5 = qword_2A14FB118;
  if (!qword_2A14FB118)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FB118);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_29B0EE914(void *a1)
{
  v2 = a1[3];
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

double pxrInternal__aapl__pxrReserved__::UsdTimeCode::Default(pxrInternal__aapl__pxrReserved__::UsdTimeCode *this)
{
  v1.n128_f64[0] = sub_29B0F1FF4();
  sub_29B0EE9E0(&v3, v1);
  return v3;
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.encode(to:)(void *a1, double a2)
{
  v3[7] = a1;
  *&v3[6] = a2;
  sub_29B0EE810(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  *v3 = a2;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v3);
}

void pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(pxrInternal__aapl__pxrReserved__::UsdTimeCode *this)
{
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::IsDefault(this);
}

{
    ;
  }
}

uint64_t sub_29B0EEC7C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void sub_29B0EECFC(void *a1@<X0>, double *a2@<X8>)
{
  v4 = pxrInternal__aapl__pxrReserved__.UsdTimeCode.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

void __swiftcall pxrInternal__aapl__pxrReserved__.UsdTimeCode.init(integerLiteral:)(Swift::Int integerLiteral)
{
  v2[2] = 0.0;
  *&v2[1] = integerLiteral;
  v1.n128_f64[0] = integerLiteral;
  v2[0] = 0.0;
  sub_29B0EE9E0(v2, v1);
}

void __swiftcall pxrInternal__aapl__pxrReserved__.UsdTimeCode.init(floatLiteral:)(Swift::Double floatLiteral)
{
  v1[2] = 0.0;
  v1[1] = floatLiteral;
  v1[0] = 0.0;
  sub_29B0EE9E0(v1, *&floatLiteral);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdTimeCode.init<A>(exactly:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v16 = a2;
  v17 = a3;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v24 = a2;
  v15 = *(a2 - 8);
  v13 = a2 - 8;
  v14 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](a3);
  v18 = &v7 - v14;
  v22 = v3;
  (*(v15 + 16))();
  v19 = sub_29B0EF04C(v18, v16, v17);
  if (v5)
  {
    (*(v15 + 8))(v12, v16);
    v9 = 0;
    v10 = 1;
  }

  else
  {
    v11 = v19;
    v21 = v19;
    v20 = 0;
    v4.n128_u64[0] = v19;
    sub_29B0EE9E0(&v20, v4);
    v8 = v20;
    v23 = v20;
    (*(v15 + 8))(v12, v16);
    v9 = v8;
    v10 = 0;
  }

  return v9;
}

uint64_t sub_29B0EF04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    sub_29B0F1F04();
    sub_29B0F1F7C();
    v6 = static BinaryFloatingPoint<>._convert<A>(from:)();
    (*(*(a2 - 8) + 8))(a1);
    if ((v6 & 1) == 0)
    {
      return 0;
    }

    v9 = v14;
    return *&v9;
  }

  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    v7 = dispatch thunk of BinaryInteger._lowWord.getter();
    v3.n128_f64[0] = v7;
    v8 = v7;
    if (v7 >= 9.22337204e18)
    {
      goto LABEL_4;
    }

    if (((*&v8 >> 52) & 0x7FFLL) == 0x7FF)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v3.n128_u64[0] = 0xC3E0000000000001;
    if (v8 <= -9.22337204e18)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    (*(*(a2 - 8) + 8))(a1, v3);
    if (v8 != v7)
    {
      return 0;
    }

    v9 = v7;
    return *&v9;
  }

  v10 = dispatch thunk of BinaryInteger._lowWord.getter();
  v3.n128_f64[0] = v10;
  v11 = v10;
  if (v10 < 1.84467441e19)
  {
    if (((*&v11 >> 52) & 0x7FFLL) == 0x7FF)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v3.n128_u64[0] = -1.0;
    if (v11 <= -1.0)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    (*(*(a2 - 8) + 8))(a1, v3);
    if (v11 != v10)
    {
      return 0;
    }

    v9 = v10;
    return *&v9;
  }

LABEL_4:
  (*(*(a2 - 8) + 8))(a1, v3.n128_f64[0]);
  return 0;
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.magnitude.getter(double a1)
{
  *&v1[2] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

void static pxrInternal__aapl__pxrReserved__.UsdTimeCode.* infix(_:_:)(double a1, double a2)
{
  *&v2[3] = a1;
  *&v2[2] = a2;
  *v2 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v2);
}

uint64_t sub_29B0EF5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__.UsdTimeCode.init<A>(exactly:)(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v5 & 1;
  return result;
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.round(_:)(uint64_t a1)
{
  v3 = a1;
  v2[3] = "Fatal error";
  v2[4] = "Unexpectedly found nil while unwrapping an Optional value";
  v2[5] = "Swift/FloatingPointTypes.swift";
  v11 = 0;
  v10 = 0;
  v9[1] = 0;
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  v6 = v4 - 8;
  v7 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = v2 - v7;
  v11 = MEMORY[0x2A1C7C4A8](v3);
  v10 = v1;
  v9[0] = *v1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v9);
}

void static pxrInternal__aapl__pxrReserved__.UsdTimeCode./ infix(_:_:)(double a1, double a2)
{
  *&v2[3] = a1;
  *&v2[2] = a2;
  *v2 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v2);
}

void static pxrInternal__aapl__pxrReserved__.UsdTimeCode.- infix(_:_:)(double a1, double a2)
{
  *&v2[3] = a1;
  *&v2[2] = a2;
  *v2 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v2);
}

void static pxrInternal__aapl__pxrReserved__.UsdTimeCode.+ infix(_:_:)(double a1, double a2)
{
  *&v2[3] = a1;
  *&v2[2] = a2;
  *v2 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v2);
}

double pxrInternal__aapl__pxrReserved__.UsdTimeCode.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  v10 = a2;
  v6[1] = a3;
  v14 = 0.0;
  v13 = 0;
  v15 = a2;
  v8 = *(a2 - 8);
  v9 = a2 - 8;
  v6[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](a3);
  v6[2] = v6 - v6[0];
  v13 = v3;
  (*(v8 + 16))();
  Double.init<A>(_:)();
  v12 = 0.0;
  sub_29B0EE9E0(&v12, v4);
  v11 = v12;
  v14 = v12;
  (*(v8 + 8))(v7, v10);
  return v11;
}

void __swiftcall pxrInternal__aapl__pxrReserved__.UsdTimeCode.init(_:)(Swift::Int a1)
{
  v2[2] = 0.0;
  *&v2[1] = a1;
  v1.n128_f64[0] = a1;
  v2[0] = 0.0;
  sub_29B0EE9E0(v2, v1);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.init(sign:exponent:significand:)(char a1, uint64_t a2, double a3)
{
  v5 = 0;
  v4 = a1 & 1;
  v3[3] = a2;
  *&v3[2] = a3;
  *v3 = a3;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v3);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.exponent.getter(double a1)
{
  *&v1[1] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

double static pxrInternal__aapl__pxrReserved__.UsdTimeCode.signalingNaN.getter()
{
  static Double.signalingNaN.getter();
  v2 = 0.0;
  sub_29B0EE9E0(&v2, v0);
  return v2;
}

double static pxrInternal__aapl__pxrReserved__.UsdTimeCode.infinity.getter()
{
  static Double.infinity.getter();
  v2 = 0.0;
  sub_29B0EE9E0(&v2, v0);
  return v2;
}

double static pxrInternal__aapl__pxrReserved__.UsdTimeCode.greatestFiniteMagnitude.getter()
{
  static Double.greatestFiniteMagnitude.getter();
  v2 = 0.0;
  sub_29B0EE9E0(&v2, v0);
  return v2;
}

double static pxrInternal__aapl__pxrReserved__.UsdTimeCode.pi.getter()
{
  static Double.pi.getter();
  v2 = 0.0;
  sub_29B0EE9E0(&v2, v0);
  return v2;
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.ulp.getter(double a1)
{
  *&v1[2] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

double static pxrInternal__aapl__pxrReserved__.UsdTimeCode.leastNormalMagnitude.getter()
{
  static Double.leastNormalMagnitude.getter();
  v2 = 0.0;
  sub_29B0EE9E0(&v2, v0);
  return v2;
}

double static pxrInternal__aapl__pxrReserved__.UsdTimeCode.leastNonzeroMagnitude.getter()
{
  static Double.leastNonzeroMagnitude.getter();
  v2 = 0.0;
  sub_29B0EE9E0(&v2, v0);
  return v2;
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.sign.getter(double a1)
{
  *&v1[1] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.significand.getter(double a1)
{
  *&v1[2] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

double pxrInternal__aapl__pxrReserved__.UsdTimeCode.formRemainder(dividingBy:)(double a1)
{
  v3[1] = 0;
  v5 = a1;
  v4 = v1;
  v3[0] = *v1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v3);
}

double pxrInternal__aapl__pxrReserved__.UsdTimeCode.formTruncatingRemainder(dividingBy:)(double a1)
{
  v3[1] = 0;
  v5 = a1;
  v4 = v1;
  v3[0] = *v1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v3);
}

Swift::Void __swiftcall pxrInternal__aapl__pxrReserved__.UsdTimeCode.formSquareRoot()()
{
  v1[1] = 0;
  v2 = v0;
  v1[0] = *v0;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

double pxrInternal__aapl__pxrReserved__.UsdTimeCode.addProduct(_:_:)(double a1, double a2)
{
  v4[1] = 0;
  v7 = a1;
  v6 = a2;
  v5 = v2;
  v4[0] = *v2;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v4);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.nextUp.getter(double a1)
{
  *&v1[2] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

BOOL pxrInternal__aapl__pxrReserved__.UsdTimeCode.isLess(than:)(double a1, double a2, uint64_t a3, uint64_t a4, const pxrInternal__aapl__pxrReserved__::UsdTimeCode *a5)
{
  *&v7[2] = a1;
  *&v7[1] = a2;
  *v7 = a2;
  v6 = a1;
  return Overlay::__operatorLess(v7, &v6, a5);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdTimeCode.isLessThanOrEqualTo(_:)(double a1, double a2, uint64_t a3, uint64_t a4, const pxrInternal__aapl__pxrReserved__::UsdTimeCode *a5)
{
  *&v13[2] = a1;
  *&v13[1] = a2;
  *v13 = a2;
  v12 = a1;
  if (Overlay::__operatorLess(v13, &v12, a5))
  {
    v7 = 1;
  }

  else
  {
    v11 = a2;
    v10 = a1;
    v7 = Overlay::__operatorEqualsEquals(&v11, &v10, v5);
  }

  return v7 & 1;
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.isNormal.getter(double a1)
{
  *&v1[1] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.isFinite.getter(double a1)
{
  *&v1[1] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.isZero.getter(double a1)
{
  *&v1[1] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.isSubnormal.getter(double a1)
{
  *&v1[1] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.isInfinite.getter(double a1)
{
  *&v1[1] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.isNaN.getter(double a1)
{
  *&v1[1] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.isSignalingNaN.getter(double a1)
{
  *&v1[1] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.isCanonical.getter(double a1)
{
  *&v1[1] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

double pxrInternal__aapl__pxrReserved__.UsdTimeCode.init(sign:exponentBitPattern:significandBitPattern:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v6 = a1 & 1;
  *&v5[2] = a2;
  *&v5[1] = a3;
  Double.init(sign:exponentBitPattern:significandBitPattern:)();
  v5[0] = 0.0;
  sub_29B0EE9E0(v5, v3);
  return v5[0];
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.exponentBitPattern.getter(double a1)
{
  *&v1[1] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.significandBitPattern.getter(double a1)
{
  *&v1[1] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.binade.getter(double a1)
{
  *&v1[2] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.significandWidth.getter(double a1)
{
  *&v1[1] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

void __swiftcall pxrInternal__aapl__pxrReserved__.UsdTimeCode.distance(to:)()
{
  v4 = v0;
  v3 = v1;
  v2 = v1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(&v2);
}

void __swiftcall pxrInternal__aapl__pxrReserved__.UsdTimeCode.advanced(by:)()
{
  v4 = v0;
  v3 = v1;
  v2 = v1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(&v2);
}

unint64_t sub_29B0F1344()
{
  v2 = qword_2A14FB0B8;
  if (!qword_2A14FB0B8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdTimeCode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB0B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F13DC()
{
  v2 = qword_2A14FB0C0;
  if (!qword_2A14FB0C0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdTimeCode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB0C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F1474()
{
  v2 = qword_2A14FB0C8;
  if (!qword_2A14FB0C8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdTimeCode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB0C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F150C()
{
  v2 = qword_2A14FB0D0;
  if (!qword_2A14FB0D0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdTimeCode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB0D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F15A4()
{
  v2 = qword_2A14FB0D8;
  if (!qword_2A14FB0D8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdTimeCode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB0D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F163C()
{
  v2 = qword_2A14FB0E0;
  if (!qword_2A14FB0E0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdTimeCode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB0E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F16D4()
{
  v2 = qword_2A14FB0E8;
  if (!qword_2A14FB0E8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdTimeCode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB0E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F1784()
{
  v2 = qword_2A14FB0F0;
  if (!qword_2A14FB0F0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdTimeCode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB0F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F181C()
{
  v2 = qword_2A14FB0F8;
  if (!qword_2A14FB0F8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdTimeCode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB0F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F18B4()
{
  v2 = qword_2A14FB100;
  if (!qword_2A14FB100)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB100);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F1944()
{
  v2 = qword_2A14FB108;
  if (!qword_2A14FB108)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB108);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F1AA4()
{
  v2 = qword_2A14FB110;
  if (!qword_2A14FB110)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdTimeCode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB110);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_29B0F1BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v13 = a3;
  v9 = a4;
  v14 = a3;
  v10 = *(a3 - 8);
  v11 = a3 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](a2);
  v12 = &v5 - v6;
  (*(v10 + 32))();
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_29B0F1D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v13 = a3;
  v9 = a4;
  v14 = a3;
  v10 = *(a3 - 8);
  v11 = a3 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](a2);
  v12 = &v5 - v6;
  (*(v10 + 32))();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  return (*(v10 + 8))(v12, v13);
}

unint64_t sub_29B0F1E0C()
{
  v2 = qword_2A14FB120;
  if (!qword_2A14FB120)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB120);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F1E84()
{
  v2 = qword_2A14FB128;
  if (!qword_2A14FB128)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdTimeCode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB128);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F1F04()
{
  v2 = qword_2A14FB130;
  if (!qword_2A14FB130)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB130);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F1F7C()
{
  v2 = qword_2A14FB138;
  if (!qword_2A14FB138)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB138);
    return WitnessTable;
  }

  return v2;
}

uint64_t static _VtArray_Equatable.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v36 = a2;
  v38 = a3;
  v37 = a4;
  v5 = v4;
  v6 = v23;
  v27 = v5;
  v24 = "Fatal error";
  v25 = "Range requires lowerBound <= upperBound";
  v26 = "Swift/Range.swift";
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v40 = 0;
  v51 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  v30 = AssociatedTypeWitness - 8;
  v32 = *(v29 + 64);
  v31 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x2A1C7C4A8](v38);
  v33 = &v13[-v31];
  v34 = v31;
  v8 = MEMORY[0x2A1C7C4A8](v7);
  v35 = &v13[-v34];
  v50 = v6;
  v49 = v36;
  v48 = v9;
  v39 = (*(v10 + 32))(v8);
  v11 = (*(v37 + 32))(v38);
  if (v39 == v11)
  {
    v22 = (*(v37 + 32))(v38);
    if (v22 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v43 = 0;
    v44 = v22;
    v21 = sub_29B0B7DC8(&qword_2A14FA610, &qword_29B7449E0);
    sub_29B0C5DA4();
    Collection<>.makeIterator()();
    while (1)
    {
      sub_29B0B7DC8(&qword_2A14FA628, &qword_29B7449E8);
      IndexingIterator.next()();
      v20 = v41;
      if (v42)
      {
        break;
      }

      v19 = v20;
      v15 = v20;
      v40 = v20;
      (*(v37 + 40))();
      (*(v37 + 40))(v15, v38);
      swift_getAssociatedConformanceWitness();
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v17 = *(v29 + 8);
      v16 = v29 + 8;
      v17(v33, AssociatedTypeWitness);
      v17(v35, AssociatedTypeWitness);
      if ((v18 & 1) == 0)
      {
        v14 = 0;
        return v14 & 1;
      }
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t _VtArray_ExpressibleByArrayLiteral<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = a4;
  v27 = a1;
  v25 = a2;
  v15 = a3;
  v29 = MEMORY[0x29EDC9A88];
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v30 = v34;
  v34[0] = 0;
  v34[1] = 0;
  v38 = a2;
  v26 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = AssociatedTypeWitness - 8;
  v13 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](0);
  v14 = &v9 - v13;
  v37 = &v9 - v13;
  v16 = (*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x2A1C7C4A8](v25);
  v17 = &v9 - v16;
  v21 = *(v4 - 8);
  v22 = v4 - 8;
  v19 = *(v21 + 64);
  v18 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x2A1C7C4A8](v4);
  v24 = &v9 - v18;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x2A1C7C4A8](v5);
  v23 = &v9 - v20;
  v36 = &v9 - v20;
  v35 = v27;
  (*(v7 + 24))(v6);
  (*(v21 + 32))(v23, v24, v25);

  v33 = v27;
  v31 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  Collection<>.makeIterator()();
  while (1)
  {
    type metadata accessor for IndexingIterator();
    IndexingIterator.next()();
    if ((*(v11 + 48))(v17, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    (*(v11 + 32))(v14, v17, AssociatedTypeWitness);
    (*(v15 + 32))(v14, v25);
    (*(v11 + 8))(v14, AssociatedTypeWitness);
  }

  sub_29B0B7F30(v34);
  (*(v21 + 16))(v10, v23, v25);

  return (*(v21 + 8))(v23, v25);
}

uint64_t _VtArray_CustomStringConvertible.description.getter(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v20 = v2;
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("[", 1uLL, 1);
  v17 = a1;
  v18 = a2;
  v19 = sub_29B0C6190(sub_29B0F2B2C, v16, a1, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9F80], *(a2 + 16), MEMORY[0x29EDC9F90], v15);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", ", 2uLL, 1);
  sub_29B0B7DC8(&qword_2A14FA630, &qword_29B7449F0);
  sub_29B0C6D54();
  v8 = BidirectionalCollection<>.joined(separator:)();
  v9 = v4;

  sub_29B0B7F30(&v19);
  v10 = MEMORY[0x29C2B97A0](v3._countAndFlagsBits, v3._object, v8, v9);
  v11 = v5;

  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("]", 1uLL, 1)._countAndFlagsBits;
  v12 = MEMORY[0x29C2B97A0](v10, v11, countAndFlagsBits);

  return v12;
}

uint64_t sub_29B0F2A7C@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of CustomStringConvertible.description.getter();
  *a3 = result;
  a3[1] = v4;
  return result;
}

uint64_t sub_29B0F2B90(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v6 = a2;
  v10 = *(a2 + 16);
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](a1);
  v7 = &v4 - v5;
  (*(v8 + 16))();
  (*(v8 + 40))(v2 + *(v6 + 40), v7, v10);
  return (*(v8 + 8))(v11, v10);
}

uint64_t sub_29B0F2CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v21 = a6;
  v18 = a1;
  v19 = a2;
  v24 = a3;
  v26 = a4;
  v15[2] = a5;
  v15[1] = &protocol descriptor for _VtArray_Sequence;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v32 = a4;
  v22 = *(a4 - 8);
  v23 = a4 - 8;
  v15[0] = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](a1);
  v20 = v15 - v15[0];
  v16 = 0;
  v27 = type metadata accessor for _VtArray_Sequence_Iterator(0, v6, v7, v8);
  v17 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](v16);
  v25 = v15 - v17;
  v31 = v15 - v17;
  v30 = v18;
  swift_getAssociatedTypeWitness();
  v9 = v18;
  v10 = v19;
  v11 = v22;
  v12 = v25;
  v13 = v20;
  v29 = v19;
  v28 = v24;
  *v25 = 0;
  *(v12 + 1) = 0;
  *v12 = v9;
  *(v12 + 1) = v10;
  (*(v11 + 16))(v13);
  (*(v22 + 32))(&v25[*(v27 + 40)], v20, v26);
  sub_29B0F2F00(v25, v21, v26, v27);
  (*(v22 + 8))(v24, v26);
  return sub_29B0F2F78(v25, v26, v27);
}

char *sub_29B0F2F00(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  (*(*(a3 - 8) + 16))(&a2[*(a4 + 40)], &a1[*(a4 + 40)]);
  return a2;
}

uint64_t _VtArray_Sequence_Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v26 = 0;
  v25 = 0;
  v27 = *(a1 + 16);
  v16 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for Optional();
  v19 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](v18);
  v20 = &v10 - v19;
  v26 = &v10 - v19;
  v25 = v2;
  v21 = *v2;
  v3 = v2[1];
  v23 = v21;
  v24 = v3;
  if (v21)
  {
    v22 = v21;
    if (v24)
    {
      v13 = v22 == v24;
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (v24)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_7;
  }

  v13 = 1;
LABEL_7:
  if (v13)
  {
    return (*(*(AssociatedTypeWitness - 8) + 56))(v14, 1);
  }

  if (*v15)
  {
    v5 = *v15;
    v11 = *(AssociatedTypeWitness - 8);
    v12 = AssociatedTypeWitness - 8;
    (*(v11 + 16))(v20, v5);
    (*(v11 + 56))(v20, 0, 1, AssociatedTypeWitness);
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 56))(v20, 1);
  }

  if (*v15)
  {
    v10 = *v15 + *(*(AssociatedTypeWitness - 8) + 72);
  }

  else
  {
    v10 = 0;
  }

  v6 = v18;
  v7 = AssociatedTypeWitness;
  v8 = v20;
  v9 = v14;
  *v15 = v10;
  sub_29B0F32A4(v8, v9, v7, v6);
  return sub_29B0DBAB8(v20, AssociatedTypeWitness);
}

void *sub_29B0F32A4(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t _VtArray_Sequence<>.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v11 = a3;
  v14 = a1;
  v15 = a2;
  v17 = 0;
  v18 = a1;
  v8 = *(a1 - 8);
  v9 = a1 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x2A1C7C4A8](a1);
  v13 = &v7 - v7;
  v17 = v3;
  v16 = (*(v5 + 24))(v4);
  v12 = (*(v15 + 32))(v14);
  (*(v8 + 16))(v13, v10, v14);
  return sub_29B0F2CA8(v16, v12, v13, v14, v15, v11);
}

unint64_t sub_29B0F3564(uint64_t a1)
{
  result = sub_29B0F3590();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F3590()
{
  v2 = qword_2A14FB140;
  if (!qword_2A14FB140)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CBool_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB140);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F36B8(uint64_t a1)
{
  result = sub_29B0F36E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F36E4()
{
  v2 = qword_2A14FB148;
  if (!qword_2A14FB148)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CBool_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB148);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F3770(uint64_t a1)
{
  *(a1 + 8) = sub_29B0F37A8();
  result = sub_29B0F36E4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0F37A8()
{
  v2 = qword_2A14FB150;
  if (!qword_2A14FB150)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CBool_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB150);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F3840()
{
  v2 = qword_2A14FB158;
  if (!qword_2A14FB158)
  {
    sub_29B0B7EBC(&qword_2A14FB160, &unk_29B74A2A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB158);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0F38C8(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B10ED44();
  _VtArray_Sequence<>.makeIterator()(a1, v2, a2);
  sub_29B0B7D98(v5);
}

unint64_t sub_29B0F390C(void *a1)
{
  a1[1] = sub_29B0F3950();
  a1[2] = sub_29B0F3A68();
  result = sub_29B0F3AE8();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0F3950()
{
  v2 = qword_2A14FB168;
  if (!qword_2A14FB168)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CDouble_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB168);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CDouble_(uint64_t a1)
{
  v5 = qword_2A14FC040;
  if (!qword_2A14FC040)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC040);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_29B0F3A68()
{
  v2 = qword_2A14FB170;
  if (!qword_2A14FB170)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CDouble_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB170);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F3AE8()
{
  v2 = qword_2A14FB178;
  if (!qword_2A14FB178)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CDouble_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB178);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F3BD4(uint64_t a1)
{
  result = sub_29B0F3C00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F3C00()
{
  v2 = qword_2A14FB180;
  if (!qword_2A14FB180)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CDouble_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB180);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F3D24(uint64_t a1)
{
  result = sub_29B0F3D50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F3D50()
{
  v2 = qword_2A14FB188;
  if (!qword_2A14FB188)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CDouble_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB188);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F3DDC(uint64_t a1)
{
  *(a1 + 8) = sub_29B0F3E14();
  result = sub_29B0F3D50();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0F3E14()
{
  v2 = qword_2A14FB190;
  if (!qword_2A14FB190)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CDouble_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB190);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F3EAC()
{
  v2 = qword_2A14FB198;
  if (!qword_2A14FB198)
  {
    sub_29B0B7EBC(&qword_2A14FB1A0, &qword_29B74A390);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB198);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0F3F34(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0F3AE8();
  _VtArray_Sequence<>.makeIterator()(a1, v2, a2);
  sub_29B10CC2C(v5);
}

unint64_t sub_29B0F3F78(void *a1)
{
  a1[1] = sub_29B0F3FBC();
  a1[2] = sub_29B0F40D4();
  result = sub_29B0F4154();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0F3FBC()
{
  v2 = qword_2A14FB1A8;
  if (!qword_2A14FB1A8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CFloat_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB1A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CFloat_(uint64_t a1)
{
  v5 = qword_2A14FC038;
  if (!qword_2A14FC038)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC038);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_29B0F40D4()
{
  v2 = qword_2A14FB1B0;
  if (!qword_2A14FB1B0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CFloat_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB1B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F4154()
{
  v2 = qword_2A14FB1B8;
  if (!qword_2A14FB1B8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CFloat_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB1B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F4240(uint64_t a1)
{
  result = sub_29B0F426C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F426C()
{
  v2 = qword_2A14FB1C0;
  if (!qword_2A14FB1C0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CFloat_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB1C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F4390(uint64_t a1)
{
  result = sub_29B0F43BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F43BC()
{
  v2 = qword_2A14FB1C8;
  if (!qword_2A14FB1C8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CFloat_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB1C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F4448(uint64_t a1)
{
  *(a1 + 8) = sub_29B0F4480();
  result = sub_29B0F43BC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0F4480()
{
  v2 = qword_2A14FB1D0;
  if (!qword_2A14FB1D0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CFloat_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB1D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F4518()
{
  v2 = qword_2A14FB1D8;
  if (!qword_2A14FB1D8)
  {
    sub_29B0B7EBC(&qword_2A14FB1E0, &qword_29B74A478);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB1D8);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0F45A0(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0F4154();
  _VtArray_Sequence<>.makeIterator()(a1, v2, a2);
  sub_29B10CB20(v5);
}

unint64_t sub_29B0F45E4(void *a1)
{
  a1[1] = sub_29B0F4628();
  a1[2] = sub_29B0F4740();
  result = sub_29B0F47C0();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0F4628()
{
  v2 = qword_2A14FB1E8;
  if (!qword_2A14FB1E8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.pxr_half.half_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB1E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.pxr_half.half_(uint64_t a1)
{
  v5 = qword_2A14FC030;
  if (!qword_2A14FC030)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC030);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_29B0F4740()
{
  v2 = qword_2A14FB1F0;
  if (!qword_2A14FB1F0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.pxr_half.half_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB1F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F47C0()
{
  v2 = qword_2A14FB1F8;
  if (!qword_2A14FB1F8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.pxr_half.half_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB1F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F4858()
{
  v2 = qword_2A14FB200;
  if (!qword_2A14FB200)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.pxr_half.half(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB200);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F4938(uint64_t a1)
{
  result = sub_29B0F4964();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F4964()
{
  v2 = qword_2A14FB208;
  if (!qword_2A14FB208)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.pxr_half.half_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB208);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F4A88(uint64_t a1)
{
  result = sub_29B0F4AB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F4AB4()
{
  v2 = qword_2A14FB210;
  if (!qword_2A14FB210)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.pxr_half.half_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB210);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F4B4C()
{
  v2 = qword_2A14FB218;
  if (!qword_2A14FB218)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.pxr_half.half(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB218);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F4BCC(uint64_t a1)
{
  *(a1 + 8) = sub_29B0F4C04();
  result = sub_29B0F4AB4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0F4C04()
{
  v2 = qword_2A14FB220;
  if (!qword_2A14FB220)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_pxrInternal__aapl__pxrReserved__.pxr_half.half_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB220);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F4C9C()
{
  v2 = qword_2A14FB228;
  if (!qword_2A14FB228)
  {
    sub_29B0B7EBC(&qword_2A14FB230, &qword_29B74A560);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB228);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0F4D24(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0F47C0();
  _VtArray_Sequence<>.makeIterator()(a1, v2, a2);
  sub_29B10CA14(v5);
}

unint64_t sub_29B0F4D68(void *a1)
{
  a1[1] = sub_29B0F4DAC();
  a1[2] = sub_29B0F4EC4();
  result = sub_29B0F4F44();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0F4DAC()
{
  v2 = qword_2A14FB238;
  if (!qword_2A14FB238)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CChar_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB238);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CChar_(uint64_t a1)
{
  v5 = qword_2A14FC028;
  if (!qword_2A14FC028)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC028);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_29B0F4EC4()
{
  v2 = qword_2A14FB240;
  if (!qword_2A14FB240)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CChar_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB240);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F4F44()
{
  v2 = qword_2A14FB248;
  if (!qword_2A14FB248)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CChar_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB248);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F5030(uint64_t a1)
{
  result = sub_29B0F505C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F505C()
{
  v2 = qword_2A14FB250;
  if (!qword_2A14FB250)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CChar_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB250);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F5180(uint64_t a1)
{
  result = sub_29B0F51AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F51AC()
{
  v2 = qword_2A14FB258;
  if (!qword_2A14FB258)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CChar_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB258);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F5238(uint64_t a1)
{
  *(a1 + 8) = sub_29B0F5270();
  result = sub_29B0F51AC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0F5270()
{
  v2 = qword_2A14FB260;
  if (!qword_2A14FB260)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CChar_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB260);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F5308()
{
  v2 = qword_2A14FB268;
  if (!qword_2A14FB268)
  {
    sub_29B0B7EBC(&qword_2A14FB270, &qword_29B74A648);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB268);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0F5390(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0F4F44();
  _VtArray_Sequence<>.makeIterator()(a1, v2, a2);
  sub_29B10C908(v5);
}

unint64_t sub_29B0F53D4(void *a1)
{
  a1[1] = sub_29B0F5418();
  a1[2] = sub_29B0F5530();
  result = sub_29B0F55B0();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0F5418()
{
  v2 = qword_2A14FB278;
  if (!qword_2A14FB278)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedChar_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB278);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedChar_(uint64_t a1)
{
  v5 = qword_2A14FC020;
  if (!qword_2A14FC020)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC020);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_29B0F5530()
{
  v2 = qword_2A14FB280;
  if (!qword_2A14FB280)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedChar_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB280);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F55B0()
{
  v2 = qword_2A14FB288;
  if (!qword_2A14FB288)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedChar_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB288);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F569C(uint64_t a1)
{
  result = sub_29B0F56C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F56C8()
{
  v2 = qword_2A14FB290;
  if (!qword_2A14FB290)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedChar_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB290);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F57EC(uint64_t a1)
{
  result = sub_29B0F5818();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F5818()
{
  v2 = qword_2A14FB298;
  if (!qword_2A14FB298)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedChar_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB298);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F58A4(uint64_t a1)
{
  *(a1 + 8) = sub_29B0F58DC();
  result = sub_29B0F5818();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0F58DC()
{
  v2 = qword_2A14FB2A0;
  if (!qword_2A14FB2A0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedChar_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB2A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F5974()
{
  v2 = qword_2A14FB2A8;
  if (!qword_2A14FB2A8)
  {
    sub_29B0B7EBC(&qword_2A14FB2B0, &qword_29B74A730);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB2A8);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0F59FC(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0F55B0();
  _VtArray_Sequence<>.makeIterator()(a1, v2, a2);
  sub_29B10C7FC(v5);
}

unint64_t sub_29B0F5A40(void *a1)
{
  a1[1] = sub_29B0F5A84();
  a1[2] = sub_29B0F5B9C();
  result = sub_29B0F5C1C();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0F5A84()
{
  v2 = qword_2A14FB2B8;
  if (!qword_2A14FB2B8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CShort_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB2B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CShort_(uint64_t a1)
{
  v5 = qword_2A14FC018;
  if (!qword_2A14FC018)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC018);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_29B0F5B9C()
{
  v2 = qword_2A14FB2C0;
  if (!qword_2A14FB2C0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CShort_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB2C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F5C1C()
{
  v2 = qword_2A14FB2C8;
  if (!qword_2A14FB2C8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CShort_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB2C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F5D08(uint64_t a1)
{
  result = sub_29B0F5D34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F5D34()
{
  v2 = qword_2A14FB2D0;
  if (!qword_2A14FB2D0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CShort_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB2D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F5E58(uint64_t a1)
{
  result = sub_29B0F5E84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F5E84()
{
  v2 = qword_2A14FB2D8;
  if (!qword_2A14FB2D8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CShort_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB2D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F5F10(uint64_t a1)
{
  *(a1 + 8) = sub_29B0F5F48();
  result = sub_29B0F5E84();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29B0F5F48()
{
  v2 = qword_2A14FB2E0;
  if (!qword_2A14FB2E0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CShort_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB2E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F5FE0()
{
  v2 = qword_2A14FB2E8;
  if (!qword_2A14FB2E8)
  {
    sub_29B0B7EBC(&qword_2A14FB2F0, &qword_29B74A818);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB2E8);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0F6068(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = sub_29B0F5C1C();
  _VtArray_Sequence<>.makeIterator()(a1, v2, a2);
  sub_29B10C6F0(v5);
}

unint64_t sub_29B0F60AC(void *a1)
{
  a1[1] = sub_29B0F60F0();
  a1[2] = sub_29B0F6208();
  result = sub_29B0F6288();
  a1[3] = result;
  return result;
}

unint64_t sub_29B0F60F0()
{
  v2 = qword_2A14FB2F8;
  if (!qword_2A14FB2F8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedShort_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB2F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedShort_(uint64_t a1)
{
  v5 = qword_2A14FC010;
  if (!qword_2A14FC010)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FC010);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_29B0F6208()
{
  v2 = qword_2A14FB300;
  if (!qword_2A14FB300)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedShort_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB300);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F6288()
{
  v2 = qword_2A14FB308;
  if (!qword_2A14FB308)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedShort_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB308);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F6374(uint64_t a1)
{
  result = sub_29B0F63A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0F63A0()
{
  v2 = qword_2A14FB310;
  if (!qword_2A14FB310)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtArray_CUnsignedShort_(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB310);
    return WitnessTable;
  }

  return v2;
}